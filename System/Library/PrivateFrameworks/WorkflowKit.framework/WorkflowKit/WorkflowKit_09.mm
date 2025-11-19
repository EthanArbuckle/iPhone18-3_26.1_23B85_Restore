uint64_t sub_1CA339294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA339304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WFDictionaryParameterKeyValuePair.key.getter@<X0>(void *a1@<X8>)
{
  result = [v1 key];
  *a1 = result;
  return result;
}

id sub_1CA3393DC()
{
  v139 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A4E80;
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
  v146 = v12;
  v144 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v130 - v144;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v143 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v147 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v148 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v130 - v148;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v145 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v142 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  *&v140 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v141 = &v130;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v130 - v144;
  sub_1CA948D98();
  v30 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v130 - v148;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v140, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v145;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v142;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "textformat.alt");
  *(inited + 215) = -18;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v140 = xmmword_1CA981350;
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
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v142;
  *(v37 + 192) = &unk_1F49F4A68;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v141 = v43;
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v135 = v46;
  v136 = v45;
  v47 = sub_1CA94C438();
  v134 = v48;
  v137 = &v130;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v144;
  sub_1CA948D98();
  v50 = v143;
  v51 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v130 - v148;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v136, v135, v47, v134, 0, 0, &v130 - v49, v52);
  v54 = v145;
  *(inited + 304) = v145;
  *(inited + 312) = @"Output";
  v55 = swift_initStackObject();
  *(v55 + 16) = v140;
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
  v136 = v58;
  v137 = v57;
  v59 = sub_1CA94C438();
  v135 = v60;
  v138 = &v130;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v130 - v49;
  sub_1CA948D98();
  v62 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v130 - v148;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v137, v136, v59, v135, 0, 0, v61, v63);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v142;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F49F4A98;
  v65 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v141;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1CA981360;
  v141 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = v140;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x80000001CA99B030;
  *(v66 + 64) = v65;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0x7475706E494657;
  *(v66 + 88) = 0xE700000000000000;
  *(v66 + 104) = v65;
  *(v66 + 112) = @"Label";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v135 = v67;
  v137 = v68;
  v138 = v69;
  v70 = @"Parameters";
  v71 = sub_1CA94C438();
  v132 = v72;
  v133 = v71;
  v131 = sub_1CA94C438();
  v74 = v73;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v131);
  v75 = v144;
  sub_1CA948D98();
  v76 = v143;
  v77 = [v143 bundleURL];
  v130 = &v130;
  *&v140 = inited;
  MEMORY[0x1EEE9AC00](v77);
  v78 = v148;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 120) = sub_1CA2F9F14(v133, v132, v131, v74, 0, 0, &v130 - v75, &v130 - v78);
  *(v66 + 144) = v145;
  *(v66 + 152) = @"Placeholder";
  v80 = @"Placeholder";
  v81 = sub_1CA94C438();
  v132 = v82;
  v133 = v81;
  v83 = sub_1CA94C438();
  v131 = v84;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948D98();
  v85 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v133, v132, v83, v131, 0, 0, &v130 - v75, &v130 - v78);
  *(v66 + 184) = v145;
  *(v66 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  v134 = v88;
  v133 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v142 + 32) = sub_1CA2F864C();
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1CA981370;
  *(v89 + 32) = v135;
  *(v89 + 40) = 0xD000000000000011;
  *(v89 + 48) = 0x80000001CA99E620;
  *(v89 + 64) = MEMORY[0x1E69E6158];
  *(v89 + 72) = @"DefaultValue";
  *(v89 + 80) = 1;
  *(v89 + 104) = MEMORY[0x1E69E6370];
  *(v89 + 112) = @"Description";
  v90 = @"DefaultValue";
  v91 = @"Description";
  v135 = sub_1CA94C438();
  v132 = v92;
  v93 = sub_1CA94C438();
  v131 = v94;
  v136 = &v130;
  MEMORY[0x1EEE9AC00](v93);
  v95 = v144;
  sub_1CA948D98();
  v96 = v143;
  v97 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v130 - v148;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 120) = sub_1CA2F9F14(v135, v132, v93, v131, 0, 0, &v130 - v95, v98);
  v100 = v137;
  *(v89 + 144) = v145;
  *(v89 + 152) = v100;
  *(v89 + 160) = 0x6150626557746547;
  *(v89 + 168) = 0xEF656C7469546567;
  v101 = v138;
  *(v89 + 184) = MEMORY[0x1E69E6158];
  *(v89 + 192) = v101;
  v102 = sub_1CA94C438();
  v136 = v103;
  v137 = v102;
  v104 = sub_1CA94C438();
  v135 = v105;
  v138 = &v130;
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948D98();
  v106 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v130 - v148;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v137, v136, v104, v135, 0, 0, &v130 - v95, v107);
  *(v89 + 224) = v145;
  *(v89 + 200) = v109;
  sub_1CA94C1E8();
  v110 = sub_1CA2F864C();
  v111 = v142;
  *(v142 + 40) = v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v113 = v140;
  *(v140 + 360) = v111;
  *(v113 + 384) = v112;
  *(v113 + 392) = @"ParameterSummary";
  v114 = @"ParameterSummary";
  v115 = sub_1CA94C438();
  v117 = v116;
  v118 = sub_1CA94C438();
  v120 = v119;
  v145 = &v130;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v130 - v144;
  sub_1CA948D98();
  v122 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v130 - v148;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v115, v117, v118, v120, 0, 0, v121, v123);
  v126 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v127 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v113 + 400) = v126;
  *(v113 + 424) = v127;
  *(v113 + 432) = @"ResidentCompatible";
  *(v113 + 464) = MEMORY[0x1E69E6370];
  *(v113 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v128 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id WFLinkContentItemFilterAction.propertyQuery.getter()
{
  v3 = sub_1CA949F78();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_18();
  v9 = sub_1CA94C3A8();
  v11 = sub_1CA33A8B4(v9, v10, &unk_1EC445A50, &unk_1CA989900);

  if (v11)
  {
    v12 = [v1 queryMetadata];
    v13 = [v1 identifier];
    v14 = sub_1CA94C3A8();
    v16 = v15;

    v17 = TableTemplateValue<>.propertyQuery(metadata:actionIdentifier:)(v12, v14, v16);

    return v17;
  }

  else
  {
    v19 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    v20 = sub_1CA949F68();
    v21 = sub_1CA94CC18();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      OUTLINED_FUNCTION_3_14(&dword_1CA256000, v23, v24, "Unable to find processed table template value for content item filter");
      MEMORY[0x1CCAA4BF0](v22, -1, -1);
    }

    (*(v6 + 8))(v2, v0);
    sub_1CA25B3D0(0, &qword_1EC444668, 0x1E69AC770);
    return sub_1CA33A808();
  }
}

id sub_1CA33A808()
{
  sub_1CA25B3D0(0, &qword_1EC444678, 0x1E69AC760);
  v0 = sub_1CA94C648();

  v1 = [swift_getObjCClassFromMetadata() andComparisons_];

  return v1;
}

uint64_t sub_1CA33A8B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = [v4 parameterValueForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

  if (v8)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (OUTLINED_FUNCTION_2_18())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CA2C0A74(v13);
    return 0;
  }
}

uint64_t sub_1CA33A988()
{
  v1 = sub_1CA94C368();
  sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
  v2 = [v0 parameterValueForKey:v1 ofClass:swift_getObjCClassFromMetadata()];

  if (v2)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (OUTLINED_FUNCTION_2_18())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CA2C0A74(v7);
    return 0;
  }
}

uint64_t WFLinkContentItemFilterAction.spotlightQuery.getter()
{
  v3 = sub_1CA949F78();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_18();
  v9 = sub_1CA94C3A8();
  v11 = sub_1CA33A8B4(v9, v10, &unk_1EC445A50, &unk_1CA989900);

  if (v11)
  {
    v12 = [v1 identifier];
    v13 = sub_1CA94C3A8();
    v15 = v14;

    v16 = [v1 entityMetadata];
    v17 = TableTemplateValue<>.spotlightQuery(actionIdentifier:metadata:)(v13, v15, v16);

    sub_1CA440D44();
    v19 = v18;
  }

  else
  {
    v20 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    v21 = sub_1CA949F68();
    v22 = sub_1CA94CC18();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      OUTLINED_FUNCTION_3_14(&dword_1CA256000, v24, v25, "Unable to find processed table template value for content item filter");
      MEMORY[0x1CCAA4BF0](v23, -1, -1);
    }

    (*(v6 + 8))(v2, v0);
    return 0;
  }

  return v19;
}

id sub_1CA33ACE0()
{
  v30[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A51B0;
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
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"RequiredResources";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4B08;
  *(inited + 184) = v25;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v26 = @"RequiredResources";
  v27 = @"ResidentCompatible";
  v28 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v28;
  *(inited + 240) = 0xD000000000000015;
  *(inited + 248) = 0x80000001CA993900;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA33B0C4()
{
  v78 = sub_1CA94B4D8();
  v76 = *(v78 - 8);
  v0 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v80 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v74 = v13;
  v75 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v68 - v75;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB9F690;
  v72 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v81 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  *&v82 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v68 - v82;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v80, v7, v8, v10, 0, 0, v14, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v73 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = @"AppDefinition";
  v23 = @"AppDefinition";
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"Description";
  v80 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1CA97EDF0;
  *(v26 + 32) = @"DescriptionNote";
  v27 = @"Description";
  v28 = @"DescriptionNote";
  v29 = sub_1CA94C438();
  v69 = v30;
  v70 = v29;
  v68 = sub_1CA94C438();
  v32 = v31;
  v71 = &v68;
  MEMORY[0x1EEE9AC00](v68);
  v33 = v75;
  sub_1CA948D98();
  v34 = [v15 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v68 - v82;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v26 + 40) = sub_1CA2F9F14(v70, v69, v68, v32, 0, 0, &v68 - v33, v35);
  v37 = v73;
  *(v26 + 64) = v73;
  *(v26 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v69 = v40;
  v70 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v71 = &v68;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v68 - v33;
  sub_1CA948D98();
  v45 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v68 - v82;
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v48 = sub_1CA2F9F14(v70, v69, v41, v43, 0, 0, v44, v46);
  *(v26 + 104) = v37;
  *(v26 + 80) = v48;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v49 = v80;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v49;
  *(inited + 192) = @"DisabledOnPlatforms";
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F49F4B78;
  *(inited + 224) = v50;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v51 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x6C616E6F73726570;
  *(inited + 288) = 0xEF746F7073746F68;
  *(inited + 304) = v51;
  *(inited + 312) = @"InputPassthrough";
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
  *(inited + 368) = 0x80000001CA9A5350;
  *(inited + 392) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v57 = swift_initStackObject();
  v82 = xmmword_1CA981310;
  *(v57 + 16) = xmmword_1CA981310;
  *(v57 + 32) = 0x6574617473;
  *(v57 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v58 = swift_initStackObject();
  *(v58 + 16) = v82;
  *(v58 + 64) = v51;
  *(v58 + 32) = @"Key";
  *(v58 + 40) = 0x65756C61566E4FLL;
  *(v58 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v59 = @"Key";
  sub_1CA94C1E8();
  *(v57 + 48) = sub_1CA2F864C();
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 400) = v60;
  *(inited + 424) = v61;
  *(inited + 432) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1CA9813B0;
  v63 = v77;
  (*(v76 + 104))(v77, *MEMORY[0x1E69DB3E0], v78);
  v64 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource());
  v65 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v63);
  *(v62 + 32) = v66;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  *(inited + 440) = v62;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static ActionAvailabilityRequestResolver.isActionAvailable(for:)()
{
  v1 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v41 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA949AA8();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_16(v14, v39[0]);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v39 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_15();
  v19 = *(v0 + 16);
  v20 = OUTLINED_FUNCTION_3_15();
  v19(v20);
  v21 = OUTLINED_FUNCTION_4_17();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x1E69E0700])
  {
    v24 = WFWritingToolsAvailabilityResource;
LABEL_5:
    v25 = v18;
    goto LABEL_6;
  }

  if (v23 == *MEMORY[0x1E69E0720])
  {
    v24 = WFLLMActionAvailabilityResource;
    goto LABEL_5;
  }

  v25 = v18;
  if (v23 == *MEMORY[0x1E69E0708])
  {
    v24 = type metadata accessor for WFPhotosMemoryCreationAvailabilityResource();
  }

  else if (v23 == *MEMORY[0x1E69E0710])
  {
    v24 = type metadata accessor for WFImagePlaygroundAvailabilityResource();
  }

  else
  {
    if (v23 != *MEMORY[0x1E69E0718])
    {
      result = sub_1CA94D7E8();
      __break(1u);
      return result;
    }

    v24 = type metadata accessor for WFVisualIntelligenceCameraAvailabilityResource();
  }

LABEL_6:
  v26 = [objc_allocWithZone(v24) init];
  v40 = [v26 isAvailable];

  v27 = *MEMORY[0x1E69E10E8];
  v28 = v7;
  sub_1CA949C58();
  v29 = OUTLINED_FUNCTION_3_15();
  v19(v29);
  v30 = sub_1CA949F68();
  v31 = sub_1CA94CC38();
  if (os_log_type_enabled(v30, v31))
  {
    swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_7_11();
    v42 = v32;
    *v1 = 136315394;
    (v19)(v39[2], v25, v8);
    v33 = sub_1CA94C408();
    v35 = v34;
    (*(v11 + 8))(v25, v8);
    v36 = sub_1CA26B54C(v33, v35, &v42);

    *(v1 + 4) = v36;
    *(v1 + 12) = 1024;
    v37 = v40;
    *(v1 + 14) = v40;
    _os_log_impl(&dword_1CA256000, v30, v31, "Resolved action availability request %s %{BOOL}d", v1, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    (*(v41 + 8))(v28, v39[1]);
    return v37;
  }

  else
  {

    (*(v11 + 8))(v25, v8);
    (*(v41 + 8))(v7, v1);
    return v40;
  }
}

uint64_t static ActionAvailabilityRequestResolver.isActionAvailable(for:)(uint64_t a1)
{
  v4 = sub_1CA949F78();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CA94B018();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_16(v18, v48[0]);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_15();
  v23 = *(v1 + 16);
  v24 = OUTLINED_FUNCTION_3_15();
  v26 = v25;
  (v25)(v24);
  v27 = OUTLINED_FUNCTION_4_17();
  v29 = v28(v27);
  v30 = *MEMORY[0x1E69DB1F8];
  v48[3] = v15;
  if (v29 == v30)
  {
    v49 = 1;
  }

  else
  {
    if (v29 == *MEMORY[0x1E69DB1D8])
    {
      v2 = v11;
      v11 = v22;
      v31 = WFWritingToolsAvailabilityResource;
    }

    else if (v29 == *MEMORY[0x1E69DB1D0])
    {
      v2 = v11;
      v11 = v22;
      v31 = WFLLMActionAvailabilityResource;
    }

    else if (v29 == *MEMORY[0x1E69DB1E0])
    {
      OUTLINED_FUNCTION_2_19();
      v31 = type metadata accessor for WFPhotosMemoryCreationAvailabilityResource();
    }

    else if (v29 == *MEMORY[0x1E69DB1E8])
    {
      OUTLINED_FUNCTION_2_19();
      v31 = type metadata accessor for WFImagePlaygroundAvailabilityResource();
    }

    else
    {
      if (v29 != *MEMORY[0x1E69DB1F0])
      {
        result = sub_1CA94D7E8();
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_2_19();
      v31 = type metadata accessor for WFVisualIntelligenceCameraAvailabilityResource();
    }

    v32 = [objc_allocWithZone(v31) init];
    v49 = [v32 isAvailable];

    v22 = v11;
    v11 = v2;
  }

  v33 = *MEMORY[0x1E69E10E8];
  sub_1CA949C58();
  v26(v22, a1, v12);
  v34 = sub_1CA949F68();
  v35 = sub_1CA94CC38();
  if (os_log_type_enabled(v34, v35))
  {
    swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_7_11();
    v48[0] = v7;
    v37 = v36;
    v50 = v36;
    *v4 = 136315394;
    v26(v48[2], v22, v12);
    v38 = sub_1CA94C408();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_5_16();
    v42(v41);
    v43 = sub_1CA26B54C(v38, v40, &v50);

    *(v4 + 4) = v43;
    *(v4 + 12) = 1024;
    v44 = v49;
    *(v4 + 14) = v49;
    _os_log_impl(&dword_1CA256000, v34, v35, "Resolved action availability request %s %{BOOL}d", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    (*(v48[0] + 8))(v11, v48[1]);
  }

  else
  {

    v45 = OUTLINED_FUNCTION_5_16();
    v46(v45);
    (*(v7 + 8))(v11, v4);
    return v49;
  }

  return v44;
}

id sub_1CA33C2F0(void *a1)
{
  v3 = sub_1CA948898();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21[-v13];
  if (!a1)
  {
    OUTLINED_FUNCTION_1_17(&v21[-v13]);
    goto LABEL_5;
  }

  v15 = [a1 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v16 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v14, v16 ^ 1u, 1, v1);
  OUTLINED_FUNCTION_41(v14);
  if (v17)
  {
LABEL_5:
    sub_1CA30F7DC(v14, &qword_1EC444690, &unk_1CA983A20);
    return 0;
  }

  (*(v6 + 32))(v10, v14, v1);
  v18 = sub_1CA948878();
  v19 = [objc_allocWithZone(WFDateIntervalParameterState) initWithValue_];

  (*(v6 + 8))(v10, v1);
  return v19;
}

id sub_1CA33C540(uint64_t a1)
{
  v3 = sub_1CA948898();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - v12;
  sub_1CA33C7B4(a1, v23);
  if (!v24)
  {
    sub_1CA30F7DC(v23, &unk_1EC444650, &unk_1CA981C70);
    OUTLINED_FUNCTION_1_17(v13);
    goto LABEL_5;
  }

  v14 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v14 ^ 1u, 1, v1);
  OUTLINED_FUNCTION_41(v13);
  if (v15)
  {
LABEL_5:
    sub_1CA30F7DC(v13, &qword_1EC444690, &unk_1CA983A20);
    return 0;
  }

  (*(v6 + 32))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v1);
  v16 = sub_1CA94CC88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v17, v9, v1);
  v18 = MEMORY[0x1CCAA1AA0](v17);
  v24 = v16;
  v23[0] = v18;
  sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
  v19 = sub_1CA94CDA8();
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v21 = sub_1CA320AB4(v23, v19);
  (*(v6 + 8))(v9, v1);
  return v21;
}

uint64_t sub_1CA33C7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444650, &unk_1CA981C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA33C8BC(uint64_t a1)
{
  v3 = sub_1CA948898();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v10 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - v11;
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    return 0;
  }

  v14 = [v13 value];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v29 - v18;
  OUTLINED_FUNCTION_1_17(v29 - v18);
  sub_1CA33CD10();
  sub_1CA94D6D8();

  OUTLINED_FUNCTION_41(v19);
  if (v20)
  {
    return 0;
  }

  v22 = *(v6 + 32);
  v22(v12, v19, v1);
  v22(v10, v12, v1);
  v23 = sub_1CA94CC88();
  MEMORY[0x1EEE9AC00](v23);
  v24 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v24, v10, v1);
  v25 = MEMORY[0x1CCAA1AA0](v24);
  v29[3] = v23;
  v29[0] = v25;
  sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
  v26 = sub_1CA94CDA8();
  v27 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v28 = sub_1CA320AB4(v29, v26);
  (*(v6 + 8))(v10, v1);
  return v28;
}

id WFLinkActionDateIntervalParameterDefinition.__allocating_init(valueType:parameterMetadata:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithValueType:a1 parameterMetadata:a2];

  return v5;
}

id WFLinkActionDateIntervalParameterDefinition.init(valueType:parameterMetadata:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFLinkActionDateIntervalParameterDefinition();
  v5 = objc_msgSendSuper2(&v7, sel_initWithValueType_parameterMetadata_, a1, a2);

  return v5;
}

id WFLinkActionDateIntervalParameterDefinition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFLinkActionDateIntervalParameterDefinition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CA33CD10()
{
  result = qword_1EC4446A0;
  if (!qword_1EC4446A0)
  {
    sub_1CA948898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4446A0);
  }

  return result;
}

id sub_1CA33CDB4()
{
  v0 = sub_1CA949D18();
  v122 = *(v0 - 8);
  v123 = v0;
  v1 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v121 = v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFShareAction");
  *(inited + 54) = -4864;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v128 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = v14;
  v131 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v113 - v131;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v127 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v129 = v18;
  v126 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v113 - v126;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v128, v8, v9, v11, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v128 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = @"Description";
  v125 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v120 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438();
  v118 = v27;
  v28 = sub_1CA94C438();
  v30 = v29;
  v119 = v113;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v113 - v131;
  sub_1CA948D98();
  v32 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v113 - v126;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v118, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v128;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v125;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v36;
  *(inited + 152) = @"DisabledOnPlatforms";
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4BB8;
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  v125 = v37;
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000013;
  *(inited + 248) = 0x80000001CA99AFE0;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
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
  *(v39 + 216) = v37;
  *(v39 + 184) = 0xE500000000000000;
  *(v39 + 192) = &unk_1F49F4BE8;
  v41 = @"DisabledOnPlatforms";
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v46;
  *(inited + 344) = v47;
  *(inited + 352) = @"InputPassthrough";
  *(inited + 360) = 1;
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 392) = @"Name";
  v48 = @"InputPassthrough";
  v49 = @"Name";
  v50 = sub_1CA94C438();
  v52 = v51;
  v53 = sub_1CA94C438();
  v55 = v54;
  v119 = v113;
  MEMORY[0x1EEE9AC00](v53);
  v56 = v113 - v131;
  sub_1CA948D98();
  v57 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v113 - v126;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  *(inited + 424) = v128;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
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
  v115 = v67;
  v116 = v66;
  v68 = sub_1CA94C438();
  v114 = v69;
  v117 = v113;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v113 - v131;
  sub_1CA948D98();
  v71 = v127;
  v72 = [v127 bundleURL];
  v113[1] = v113;
  MEMORY[0x1EEE9AC00](v72);
  v73 = v126;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 120) = sub_1CA2F9F14(v116, v115, v68, v114, 0, 0, v70, v113 - v73);
  *(v60 + 144) = v128;
  *(v60 + 152) = @"Placeholder";
  v75 = @"Placeholder";
  v76 = sub_1CA94C438();
  v115 = v77;
  v116 = v76;
  v78 = sub_1CA94C438();
  v80 = v79;
  v117 = v113;
  MEMORY[0x1EEE9AC00](v78);
  v81 = v113 - v131;
  sub_1CA948D98();
  v82 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 160) = sub_1CA2F9F14(v116, v115, v78, v80, 0, 0, v81, v113 - v73);
  *(v60 + 184) = v128;
  *(v60 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v84 = swift_allocObject();
  *(v84 + 16) = v120;
  v85 = @"PreferredTypes";
  v86 = v121;
  sub_1CA949CA8();
  v87 = sub_1CA949C68();
  v89 = v88;
  (*(v122 + 8))(v86, v123);
  *(v84 + 32) = v87;
  *(v84 + 40) = v89;
  *(v60 + 224) = v125;
  *(v60 + 200) = v84;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v90 = sub_1CA2F864C();
  v91 = v119;
  v119[4] = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v91;
  *(inited + 464) = v92;
  *(inited + 472) = @"ParameterSummary";
  v93 = @"ParameterSummary";
  v94 = sub_1CA94C438();
  v96 = v95;
  v97 = sub_1CA94C438();
  v99 = v98;
  v128 = v113;
  MEMORY[0x1EEE9AC00](v97);
  v100 = v113 - v131;
  sub_1CA948D98();
  v101 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = v113 - v126;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v105;
  *(inited + 504) = v106;
  *(inited + 512) = @"RequiredResources";
  v107 = v125;
  *(inited + 544) = v125;
  *(inited + 520) = &unk_1F49F4C18;
  *(inited + 552) = @"UserInterfaceClasses";
  v108 = @"RequiredResources";
  v109 = @"UserInterfaceClasses";
  v110 = sub_1CA94C1E8();
  *(inited + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 560) = v110;
  *(inited + 592) = @"UserInterfaces";
  *(inited + 624) = v107;
  *(inited + 600) = &unk_1F49F4CA8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v111 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA33DC8C()
{
  v242 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9A5520;
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
  v256 = v12;
  v259 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v233 - v259;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v258 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v260 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v257 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v233 - v257;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v255 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v253 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
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
  v252 = &v233;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v233 - v259;
  sub_1CA948D98();
  v31 = [v258 bundleURL];
  v254 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v233 - v257;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v255;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v253;
  v37 = sub_1CA6B3784();
  v38 = v254;
  v254[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconName";
  v38[20] = 1954047316;
  v38[21] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"Input";
  v40 = v39;
  v41 = v38;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v42 = swift_initStackObject();
  v248 = xmmword_1CA981350;
  *(v42 + 16) = xmmword_1CA981350;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  v43 = MEMORY[0x1E69E6370];
  *(v42 + 48) = 0;
  *(v42 + 72) = v43;
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x7475706E494657;
  *(v42 + 104) = 0xE700000000000000;
  *(v42 + 120) = v40;
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v43;
  *(v42 + 176) = 0x7365707954;
  *(v42 + 184) = 0xE500000000000000;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v42 + 216) = v247;
  *(v42 + 192) = &unk_1F49F4CE8;
  v44 = @"IconName";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v253 = v47;
  v41[25] = v46;
  v41[28] = v47;
  v41[29] = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v249 = v50;
  v250 = v49;
  v51 = sub_1CA94C438();
  v246 = v52;
  v251 = &v233;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v233 - v259;
  sub_1CA948D98();
  v54 = v258;
  v55 = [v258 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v257;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v58 = sub_1CA2F9F14(v250, v249, v51, v246, 0, 0, v53, &v233 - v56);
  v59 = v254;
  v60 = v255;
  v254[30] = v58;
  v59[33] = v60;
  v59[34] = @"Output";
  v61 = swift_initStackObject();
  *(v61 + 16) = v248;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x63696C627550;
  *(v61 + 56) = 0xE600000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  *(v61 + 96) = 1;
  *(v61 + 120) = MEMORY[0x1E69E6370];
  *(v61 + 128) = 0x614E74757074754FLL;
  *(v61 + 136) = 0xEA0000000000656DLL;
  v62 = @"Output";
  v63 = sub_1CA94C438();
  v250 = v64;
  v251 = v63;
  v249 = sub_1CA94C438();
  v66 = v65;
  v252 = &v233;
  MEMORY[0x1EEE9AC00](v249);
  v67 = &v233 - v259;
  sub_1CA948D98();
  v68 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 144) = sub_1CA2F9F14(v251, v250, v249, v66, 0, 0, v67, &v233 - v56);
  *(v61 + 168) = v60;
  *(v61 + 176) = 0x7365707954;
  v70 = v247;
  *(v61 + 216) = v247;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 192) = &unk_1F49F4D18;
  v71 = MEMORY[0x1E69E6158];
  v72 = sub_1CA94C1E8();
  v73 = v254;
  v254[35] = v72;
  v73[38] = v253;
  v73[39] = @"Parameters";
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_1CA981560;
  v252 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  v241 = xmmword_1CA981370;
  *(v74 + 16) = xmmword_1CA981370;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000015;
  *(v74 + 48) = 0x80000001CA99B1E0;
  *(v74 + 64) = v71;
  *(v74 + 72) = @"FilePickerSupportedTypes";
  *(v74 + 80) = &unk_1F49F4D58;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Key";
  *(v74 + 120) = 0x7475706E494657;
  *(v74 + 128) = 0xE700000000000000;
  *(v74 + 144) = v71;
  *(v74 + 152) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v240 = v78;
  v244 = v79;
  v245 = v80;
  v81 = @"Parameters";
  v82 = @"FilePickerSupportedTypes";
  v249 = sub_1CA94C438();
  v243 = v83;
  v84 = sub_1CA94C438();
  v86 = v85;
  v250 = &v233;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v233 - v259;
  sub_1CA948D98();
  v88 = v258;
  v89 = [v258 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v233 - v257;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v249, v243, v84, v86, 0, 0, v87, v90);
  v92 = v255;
  *(v74 + 184) = v255;
  *(v74 + 192) = @"Placeholder";
  v243 = @"Placeholder";
  v249 = sub_1CA94C438();
  v239 = v93;
  v94 = sub_1CA94C438();
  v238 = v95;
  v250 = &v233;
  MEMORY[0x1EEE9AC00](v94);
  v96 = v259;
  sub_1CA948D98();
  v97 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v257;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v249, v239, v94, v238, 0, 0, &v233 - v96, &v233 - v98);
  *(v74 + 224) = v92;
  *(v74 + 200) = v100;
  _s3__C3KeyVMa_0(0);
  v250 = v101;
  v249 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v253 + 32) = sub_1CA2F864C();
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1CA981380;
  v103 = v240;
  *(v102 + 32) = v240;
  *(v102 + 40) = 0xD000000000000016;
  *(v102 + 48) = 0x80000001CA99C4A0;
  v104 = MEMORY[0x1E69E6158];
  *(v102 + 64) = MEMORY[0x1E69E6158];
  *(v102 + 72) = @"DefaultValue";
  *(v102 + 80) = 1954047316;
  *(v102 + 88) = 0xE400000000000000;
  *(v102 + 104) = v104;
  *(v102 + 112) = @"Items";
  v246 = swift_allocObject();
  *&v246->data = xmmword_1CA981360;
  v105 = @"DefaultValue";
  v239 = v103;
  v240 = v105;
  v106 = @"Items";
  v107 = sub_1CA94C438();
  v236 = v108;
  v237 = v107;
  v109 = sub_1CA94C438();
  v235 = v110;
  v238 = &v233;
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948D98();
  v111 = [v258 bundleURL];
  v234 = &v233;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v237, v236, v109, v235, 0, 0, &v233 - v96, &v233 - v98);
  v246[1].isa = v113;
  v114 = sub_1CA94C438();
  v236 = v115;
  v237 = v114;
  v116 = sub_1CA94C438();
  v235 = v117;
  v238 = &v233;
  MEMORY[0x1EEE9AC00](v116);
  sub_1CA948D98();
  v118 = v258;
  v119 = [v258 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v237, v236, v116, v235, 0, 0, &v233 - v96, &v233 - v98);
  v122 = v246;
  v246[1].info = v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v102 + 120) = v122;
  v124 = v244;
  v125 = v245;
  *(v102 + 144) = v123;
  *(v102 + 152) = v124;
  *(v102 + 160) = 0xD000000000000018;
  *(v102 + 168) = 0x80000001CA9A5620;
  *(v102 + 184) = MEMORY[0x1E69E6158];
  *(v102 + 192) = v125;
  v236 = v124;
  v246 = v125;
  v244 = sub_1CA94C438();
  v238 = v126;
  v127 = sub_1CA94C438();
  v237 = v128;
  v245 = &v233;
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v233 - v259;
  sub_1CA948D98();
  v130 = v118;
  v131 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = v257;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v102 + 200) = sub_1CA2F9F14(v244, v238, v127, v237, 0, 0, v129, &v233 - v132);
  v134 = v255;
  v135 = v243;
  *(v102 + 224) = v255;
  *(v102 + 232) = v135;
  v243 = v135;
  v244 = sub_1CA94C438();
  v238 = v136;
  v137 = sub_1CA94C438();
  v237 = v138;
  v245 = &v233;
  MEMORY[0x1EEE9AC00](v137);
  v139 = v259;
  sub_1CA948D98();
  v140 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v244, v238, v137, v237, 0, 0, &v233 - v139, &v233 - v132);
  *(v102 + 264) = v134;
  *(v102 + 240) = v142;
  sub_1CA94C1E8();
  *(v253 + 40) = sub_1CA2F864C();
  v143 = swift_allocObject();
  *(v143 + 16) = v248;
  v238 = 0x80000001CA99B500;
  v144 = v239;
  *(v143 + 32) = v239;
  *(v143 + 40) = 0xD000000000000014;
  *(v143 + 48) = 0x80000001CA99B500;
  v145 = MEMORY[0x1E69E6158];
  v146 = v236;
  *(v143 + 64) = MEMORY[0x1E69E6158];
  *(v143 + 72) = v146;
  v237 = 0xD00000000000001ALL;
  *(v143 + 80) = 0xD00000000000001ALL;
  *(v143 + 88) = 0x80000001CA9A5670;
  v147 = v246;
  *(v143 + 104) = v145;
  *(v143 + 112) = v147;
  v244 = v144;
  v245 = v146;
  v246 = v147;
  v148 = sub_1CA94C438();
  v235 = v149;
  v236 = v148;
  v150 = sub_1CA94C438();
  v234 = v151;
  v239 = &v233;
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948D98();
  v152 = [v258 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v257;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v143 + 120) = sub_1CA2F9F14(v236, v235, v150, v234, 0, 0, &v233 - v139, &v233 - v153);
  v155 = v255;
  v156 = v243;
  *(v143 + 144) = v255;
  *(v143 + 152) = v156;
  v243 = v156;
  v157 = sub_1CA94C438();
  v235 = v158;
  v236 = v157;
  v159 = sub_1CA94C438();
  v234 = v160;
  v239 = &v233;
  MEMORY[0x1EEE9AC00](v159);
  v161 = &v233 - v259;
  sub_1CA948D98();
  v162 = [v258 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v236, v235, v159, v234, 0, 0, v161, &v233 - v153);
  *(v143 + 184) = v155;
  *(v143 + 160) = v164;
  sub_1CA94C1E8();
  *(v253 + 48) = sub_1CA2F864C();
  v165 = swift_allocObject();
  *(v165 + 16) = v248;
  *(v165 + 32) = v244;
  *(v165 + 40) = 0xD000000000000014;
  v166 = v237;
  *(v165 + 48) = v238;
  v167 = MEMORY[0x1E69E6158];
  v168 = v245;
  *(v165 + 64) = MEMORY[0x1E69E6158];
  *(v165 + 72) = v168;
  *(v165 + 80) = v166;
  *(v165 + 88) = 0x80000001CA9A5720;
  v169 = v246;
  *(v165 + 104) = v167;
  *(v165 + 112) = v169;
  v170 = sub_1CA94C438();
  v238 = v171;
  v239 = v170;
  v172 = sub_1CA94C438();
  v237 = v173;
  *&v248 = &v233;
  MEMORY[0x1EEE9AC00](v172);
  v174 = v259;
  sub_1CA948D98();
  v175 = [v258 bundleURL];
  v236 = &v233;
  MEMORY[0x1EEE9AC00](v175);
  v176 = v257;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 120) = sub_1CA2F9F14(v239, v238, v172, v237, 0, 0, &v233 - v174, &v233 - v176);
  v178 = v243;
  *(v165 + 144) = v255;
  *(v165 + 152) = v178;
  v179 = sub_1CA94C438();
  v238 = v180;
  v239 = v179;
  v181 = sub_1CA94C438();
  v237 = v182;
  *&v248 = &v233;
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v233 - v174;
  sub_1CA948D98();
  v184 = v258;
  v185 = [v258 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v239, v238, v181, v237, 0, 0, v183, &v233 - v176);
  *(v165 + 184) = v255;
  *(v165 + 160) = v187;
  sub_1CA94C1E8();
  *(v253 + 56) = sub_1CA2F864C();
  v188 = swift_allocObject();
  *(v188 + 16) = v241;
  *(v188 + 32) = v244;
  *(v188 + 40) = 0xD000000000000011;
  *(v188 + 48) = 0x80000001CA99E620;
  v189 = MEMORY[0x1E69E6158];
  v190 = v240;
  *(v188 + 64) = MEMORY[0x1E69E6158];
  *(v188 + 72) = v190;
  *(v188 + 80) = 1;
  v191 = v245;
  *(v188 + 104) = MEMORY[0x1E69E6370];
  *(v188 + 112) = v191;
  strcpy((v188 + 120), "WFCombinePages");
  *(v188 + 135) = -18;
  v192 = v246;
  *(v188 + 144) = v189;
  *(v188 + 152) = v192;
  *&v248 = sub_1CA94C438();
  v246 = v193;
  v194 = sub_1CA94C438();
  v245 = v195;
  v251 = &v233;
  MEMORY[0x1EEE9AC00](v194);
  v196 = v259;
  sub_1CA948D98();
  v197 = v184;
  v198 = [v184 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v233 - v257;
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v188 + 160) = sub_1CA2F9F14(v248, v246, v194, v245, 0, 0, &v233 - v196, v199);
  v201 = v255;
  v202 = v243;
  *(v188 + 184) = v255;
  *(v188 + 192) = v202;
  *&v248 = sub_1CA94C438();
  v246 = v203;
  v204 = sub_1CA94C438();
  v206 = v205;
  v251 = &v233;
  MEMORY[0x1EEE9AC00](v204);
  v207 = &v233 - v196;
  sub_1CA948D98();
  v208 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v233 - v257;
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211 = sub_1CA2F9F14(v248, v246, v204, v206, 0, 0, v207, v209);
  *(v188 + 224) = v201;
  *(v188 + 200) = v211;
  sub_1CA94C1E8();
  v212 = sub_1CA2F864C();
  v213 = v253;
  *(v253 + 64) = v212;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v215 = v254;
  v254[40] = v213;
  v215[43] = v214;
  v215[44] = @"ParameterSummary";
  v216 = @"ParameterSummary";
  v217 = sub_1CA94C438();
  v219 = v218;
  v220 = sub_1CA94C438();
  v222 = v221;
  MEMORY[0x1EEE9AC00](v220);
  v223 = &v233 - v259;
  sub_1CA948D98();
  v224 = [v258 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  v225 = &v233 - v257;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v227 = sub_1CA2F9F14(v217, v219, v220, v222, 0, 0, v223, v225);
  v228 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v229 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v230 = v254;
  v254[45] = v228;
  v230[48] = v229;
  v230[49] = @"RemoteExecuteOnPlatforms";
  v230[53] = v247;
  v230[50] = &unk_1F49F4D88;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v231 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA33F944(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1CA94D4D8();
      v12 = *(v14 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t LibraryDebugNode.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t LibraryDebugNode.type.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t LibraryDebugNode.name.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA33FB20()
{
  v1 = v0;
  v3 = v0[5];
  v4 = v0[6];
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](8250, 0xE200000000000000);
  MEMORY[0x1CCAA1300](v1[7], v1[8]);
  MEMORY[0x1CCAA1300](10272, 0xE200000000000000);
  MEMORY[0x1CCAA1300](v1[3], v1[4]);
  MEMORY[0x1CCAA1300](41, 0xE100000000000000);
  return v3;
}

void sub_1CA33FBA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    v4 = sub_1CA25B410(v2);
    v29 = a1;
    v30 = v2;
    if (v4)
    {
      v32 = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      if (v4 < 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      do
      {
        if (v6)
        {
          MEMORY[0x1CCAA22D0](v5, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v5 + 32);
        }

        v8 = sub_1CA33FB20();
        MEMORY[0x1CCAA1300](v8);

        MEMORY[0x1CCAA1300](0x22203E2D2022, 0xE600000000000000);
        v9 = sub_1CA33FB20();
        MEMORY[0x1CCAA1300](v9);

        MEMORY[0x1CCAA1300](34, 0xE100000000000000);

        v10 = *(v32 + 16);
        if (v10 >= *(v32 + 24) >> 1)
        {
          sub_1CA271524();
        }

        ++v5;
        *(v32 + 16) = v10 + 1;
        v11 = v32 + 16 * v10;
        *(v11 + 32) = 34;
        *(v11 + 40) = 0xE100000000000000;
        v2 = v30;
      }

      while (v4 != v5);
      a1 = v29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    sub_1CA26E4D4();
    OUTLINED_FUNCTION_4_18();
    v12 = sub_1CA94C308();
    v14 = v13;

    MEMORY[0x1CCAA1300](v12, v14);

    MEMORY[0x1CCAA1300](10, 0xE100000000000000);
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_4_18();
      v24 = sub_1CA94C308();
      v26 = v25;

      MEMORY[0x1CCAA1300](v24, v26);

      v27 = v33[0];
      v28 = v33[1];
      if (!a1)
      {
        sub_1CA94D408();

        strcpy(v33, "digraph R {\n");
        BYTE5(v33[1]) = 0;
        HIWORD(v33[1]) = -5120;
        MEMORY[0x1CCAA1300](v27, v28);

        MEMORY[0x1CCAA1300](32010, 0xE200000000000000);
      }

      return;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v15 = a1 + 1;
      if (a1 != -1)
      {
        v16 = 0;
        v17 = v2 & 0xC000000000000001;
        do
        {
          if (v17)
          {
            MEMORY[0x1CCAA22D0](v16, v2);
          }

          else
          {
            v18 = *(v2 + 8 * v16 + 32);
          }

          v19 = sub_1CA33FBA0(v15);
          v21 = v20;

          v22 = *(v31 + 16);
          if (v22 >= *(v31 + 24) >> 1)
          {
            sub_1CA271524();
          }

          ++v16;
          *(v31 + 16) = v22 + 1;
          v23 = v31 + 16 * v22;
          *(v23 + 32) = v19;
          *(v23 + 40) = v21;
          v2 = v30;
        }

        while (v4 != v16);
        a1 = v29;
        goto LABEL_23;
      }

LABEL_28:
      __break(1u);
      return;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }
}

void *LibraryDebugNode.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return v0;
}

uint64_t LibraryDebugNode.__deallocating_deinit()
{
  LibraryDebugNode.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1CA33FFB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - v6;
  v7 = sub_1CA94C168();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_1CA94BE88();
    v24 = sub_1CA94C138();
    (*(v8 + 8))(v11, v7);
    (*(v17 + 8))(v20, v16);
    return v24;
  }

  sub_1CA27080C(v15, &qword_1EC443BB0, &qword_1CA982060);
  sub_1CA94BE38();
  v21 = v29;
  if (__swift_getEnumTagSinglePayload(v3, 1, v29) != 1)
  {
    v23 = v27;
    v22 = v28;
    (*(v28 + 32))(v27, v3, v21);
    sub_1CA94BE88();
    v24 = sub_1CA94C138();
    (*(v8 + 8))(v11, v7);
    (*(v22 + 8))(v23, v21);
    return v24;
  }

  sub_1CA27080C(v3, &off_1EC443BD0, &unk_1CA983B10);
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA3403D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  sub_1CA27080C(v7, &qword_1EC443BB0, &qword_1CA982060);
  if (EnumTagSinglePayload != 1)
  {
    return 0x74756374726F6853;
  }

  sub_1CA94BE38();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  v11 = __swift_getEnumTagSinglePayload(v3, 1, v10);
  sub_1CA27080C(v3, &off_1EC443BD0, &unk_1CA983B10);
  if (v11 != 1)
  {
    return 0x7265646C6F46;
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA3405E0(uint64_t a1)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - v5;
  v6 = type metadata accessor for LibraryModel.FolderCollection(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v39 - v10;
  v11 = sub_1CA94C168();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v24, v19, v20);
    sub_1CA94BE88();
    v31 = CRKeyPath.recoveredStringIdentifier.getter();
    v33 = v32;
    (*(v12 + 8))(v15, v11);
    if (!v33)
    {
      v31 = 0x474E495353494D3CLL;
    }

    (*(v21 + 8))(v24, v20);
    return v31;
  }

  v40 = v15;
  v41 = v11;
  sub_1CA27080C(v19, &qword_1EC443BB0, &qword_1CA982060);
  v25 = v43;
  sub_1CA94BE38();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
  {
    type metadata accessor for LibraryModel(0);
    sub_1CA34137C();
    v27 = v42;
    sub_1CA94BEC8();
    v28 = *(*(v26 - 8) + 8);
    v28(v25, v26);
    v29 = v46;
    sub_1CA3413D4(v27, v46);
    v49 = 0;
    v50 = 0xE000000000000000;
    v30 = v45;
    sub_1CA94BE38();
    if (__swift_getEnumTagSinglePayload(v30, 1, v26) == 1)
    {
      sub_1CA27080C(v30, &off_1EC443BD0, &unk_1CA983B10);
    }

    else
    {
      v34 = v40;
      sub_1CA94BE88();
      v35 = CRKeyPath.recoveredStringIdentifier.getter();
      v37 = v36;
      (*(v12 + 8))(v34, v41);
      v28(v30, v26);
      if (v37)
      {
LABEL_10:
        MEMORY[0x1CCAA1300](v35, v37);

        MEMORY[0x1CCAA1300](572534048, 0xE400000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
        sub_1CA94B858();
        MEMORY[0x1CCAA1300](v47, v48);

        MEMORY[0x1CCAA1300](34, 0xE100000000000000);
        v31 = v49;
        sub_1CA26F860(v29, type metadata accessor for LibraryModel.FolderCollection);
        return v31;
      }
    }

    v35 = 0x474E495353494D3CLL;

    v37 = 0xEC0000003E444920;
    goto LABEL_10;
  }

  sub_1CA27080C(v25, &off_1EC443BD0, &unk_1CA983B10);
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

void *sub_1CA340BC4(uint64_t a1, uint64_t a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v24 = sub_1CA33FFB0();
  v10 = v9;
  v11 = sub_1CA3403D8();
  v13 = v12;
  v14 = sub_1CA3405E0(a2);
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_52(v17);
  (*(v18 + 16))(v8, v2, v17);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  v19 = sub_1CA94BDB8();
  sub_1CA27080C(v8, &qword_1EC443BB8, &unk_1CA983A70);
  v26 = a1;
  v27 = a2;
  v20 = sub_1CA33F944(sub_1CA341338, v25, v19);

  type metadata accessor for LibraryDebugNode();
  result = swift_allocObject();
  result[4] = v10;
  result[5] = v11;
  result[6] = v13;
  result[7] = v14;
  result[8] = v16;
  v22 = v24;
  result[2] = v20;
  result[3] = v22;
  return result;
}

void *Library.debugNode.getter()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - v4;
  v6 = type metadata accessor for LibraryModel(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0(v37);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  v26 = OBJC_IVAR___WFLibrary_capsule;
  swift_beginAccess();
  (*(v13 + 16))(v18, v1 + v26, v11);
  sub_1CA94BFD8();
  (*(v13 + 8))(v18, v11);
  v27 = v37;
  (*(v20 + 16))(v25, &v10[*(v7 + 28)], v37);
  sub_1CA26F860(v10, type metadata accessor for LibraryModel);
  v28 = sub_1CA94C3A8();
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v31);
  v32 = sub_1CA94BDB8();
  sub_1CA27080C(v5, &qword_1EC443BB8, &unk_1CA983A70);
  v39 = v25;
  v40 = v1;
  v33 = sub_1CA33F944(sub_1CA341208, v38, v32);

  type metadata accessor for LibraryDebugNode();
  v34 = swift_allocObject();
  v34[4] = v30;
  v34[5] = 1953460050;
  v34[6] = 0xE400000000000000;
  v34[7] = 1953460050;
  v34[8] = 0xE400000000000000;
  v34[2] = v33;
  v34[3] = v28;
  (*(v20 + 8))(v25, v27);
  return v34;
}

uint64_t sub_1CA3410BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR___WFLibrary_capsule;
  swift_beginAccess();
  (*(v7 + 16))(v10, a2 + v11, v6);
  v12 = sub_1CA340BC4(a1, v10);
  result = (*(v7 + 8))(v10, v6);
  *a3 = v12;
  return result;
}

uint64_t Library.dotRepresentation.getter()
{
  if (Library.debugNode.getter())
  {
    sub_1CA33FBA0(0);
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA341338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA340BC4(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

unint64_t sub_1CA34137C()
{
  result = qword_1EC442AA8;
  if (!qword_1EC442AA8)
  {
    type metadata accessor for LibraryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AA8);
  }

  return result;
}

uint64_t sub_1CA3413D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryModel.FolderCollection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1CA34146C()
{
  v43 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9A5970;
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
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  *(inited + 152) = @"DisabledOnPlatforms";
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4DF8;
  *(inited + 184) = v26;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 6579538;
  *(inited + 208) = 0xE300000000000000;
  *(inited + 224) = v23;
  *(inited + 232) = @"IconSymbol";
  strcpy((inited + 240), "lock.rotation");
  *(inited + 254) = -4864;
  *(inited + 264) = v23;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v27 = @"DisabledOnPlatforms";
  v28 = @"IconColor";
  v29 = @"IconSymbol";
  v30 = @"InputPassthrough";
  v31 = sub_1CA94C368();
  *(inited + 344) = v23;
  *(inited + 312) = v31;
  *(inited + 320) = 0xD00000000000005ALL;
  *(inited + 328) = 0x80000001CA9A59A0;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v32 = swift_initStackObject();
  v42 = xmmword_1CA981310;
  *(v32 + 16) = xmmword_1CA981310;
  *(v32 + 32) = 0x6574617473;
  *(v32 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v42;
  *(v33 + 64) = v23;
  *(v33 + 32) = @"Key";
  *(v33 + 40) = 0x65756C61566E4FLL;
  *(v33 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v34 = @"Key";
  sub_1CA94C1E8();
  *(v32 + 48) = sub_1CA2F864C();
  v35 = sub_1CA94C1E8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v35;
  *(inited + 384) = v36;
  *(inited + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CA9813B0;
  v44 = 2;
  v45 = 1;
  v38 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v39 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v44);
  *(v37 + 32) = v40;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 400) = v37;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA341AD4()
{
  v109 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  v113 = v12;
  v115 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v97 - v115;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v112 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v114 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v111 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v97 - v111;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v110 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v107 = 0x80000001CA993290;
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v108 = v24;
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"DisabledOnPlatforms";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4E68;
  *(inited + 184) = v25;
  *(inited + 192) = @"Input";
  v26 = v25;
  v105 = v25;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v27 = swift_initStackObject();
  v101 = xmmword_1CA981350;
  *(v27 + 16) = xmmword_1CA981350;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 48) = 1;
  *(v27 + 72) = v28;
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x706E496567616D49;
  *(v27 + 104) = 0xEA00000000007475;
  *(v27 + 120) = v22;
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  *(v27 + 216) = v26;
  *(v27 + 184) = 0xE500000000000000;
  *(v27 + 192) = &unk_1F49F4E98;
  v29 = @"DisabledOnPlatforms";
  v30 = @"Input";
  v31 = sub_1CA94C1E8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v104 = v32;
  *(inited + 200) = v31;
  *(inited + 224) = v32;
  *(inited + 232) = @"Name";
  v33 = @"Name";
  v34 = sub_1CA94C438();
  v36 = v35;
  v37 = sub_1CA94C438();
  v39 = v38;
  v103 = &v97;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v97 - v115;
  sub_1CA948D98();
  v41 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v97 - v111;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v34, v36, v37, v39, 0, 0, v40, v42);
  *(inited + 264) = v110;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  *(v103 + 1) = xmmword_1CA9813B0;
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v44 = swift_initStackObject();
  *(v44 + 16) = v101;
  *(v44 + 32) = @"Class";
  *(v44 + 40) = 0xD000000000000019;
  *(v44 + 48) = 0x80000001CA99B030;
  v45 = MEMORY[0x1E69E6158];
  *(v44 + 64) = MEMORY[0x1E69E6158];
  *(v44 + 72) = @"Key";
  *(v44 + 80) = 0x706E496567616D49;
  *(v44 + 88) = 0xEA00000000007475;
  *(v44 + 104) = v45;
  *(v44 + 112) = @"Label";
  v46 = @"Parameters";
  v47 = @"Class";
  v48 = @"Key";
  v49 = @"Label";
  v50 = sub_1CA94C438();
  v99 = v51;
  v100 = v50;
  v52 = sub_1CA94C438();
  v98 = v53;
  *&v101 = &v97;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v97 - v115;
  sub_1CA948D98();
  v55 = v112;
  v56 = [v112 bundleURL];
  v97 = &v97;
  MEMORY[0x1EEE9AC00](v56);
  v57 = v111;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v44 + 120) = sub_1CA2F9F14(v100, v99, v52, v98, 0, 0, v54, &v97 - v57);
  v59 = v110;
  *(v44 + 144) = v110;
  *(v44 + 152) = @"Placeholder";
  v60 = @"Placeholder";
  v61 = sub_1CA94C438();
  v99 = v62;
  v100 = v61;
  v63 = sub_1CA94C438();
  v98 = v64;
  *&v101 = &v97;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v97 - v115;
  sub_1CA948D98();
  v66 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v100, v99, v63, v98, 0, 0, v65, &v97 - v57);
  *(v44 + 184) = v59;
  *(v44 + 160) = v68;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v69 = sub_1CA2F864C();
  v70 = v103;
  v103[4] = v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v70;
  *(inited + 304) = v71;
  *(inited + 312) = @"ParameterSummary";
  v72 = @"ParameterSummary";
  v73 = sub_1CA94C438();
  v75 = v74;
  v76 = sub_1CA94C438();
  v78 = v77;
  v110 = &v97;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v97 - v115;
  sub_1CA948D98();
  v80 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v97 - v111;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v73, v75, v76, v78, 0, 0, v79, v81);
  v84 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v85 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v84;
  *(inited + 344) = v85;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CA97EDF0;
  v87 = MEMORY[0x1E69E6158];
  *(v86 + 56) = MEMORY[0x1E69E6158];
  *(v86 + 32) = 0xD000000000000019;
  *(v86 + 40) = 0x80000001CA9932D0;
  v116 = 2;
  v117 = 1;
  v88 = type metadata accessor for WFDeviceIdiomResource();
  v89 = objc_allocWithZone(v88);
  v90 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v116);
  *(v86 + 88) = v88;
  *(v86 + 64) = v91;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = v86;
  *(inited + 392) = sub_1CA94C368();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1CA9813C0;
  v93 = v107;
  *(v92 + 32) = 0xD000000000000010;
  *(v92 + 40) = v93;
  *(v92 + 48) = 0xD00000000000002CLL;
  *(v92 + 56) = 0x80000001CA996C20;
  *(v92 + 72) = v87;
  *(v92 + 80) = 0x7079547475706E49;
  *(v92 + 88) = 0xE900000000000065;
  *(v92 + 96) = 0x73657079544C53;
  *(v92 + 104) = 0xE700000000000000;
  *(v92 + 120) = v87;
  *(v92 + 128) = 0x73657079544C53;
  *(v92 + 168) = v105;
  *(v92 + 136) = 0xE700000000000000;
  *(v92 + 144) = &unk_1F49F4ED8;
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v104;
  *(inited + 432) = @"UserInterfaceClasses";
  v94 = @"UserInterfaceClasses";
  v95 = sub_1CA94C1E8();
  *(inited + 464) = v108;
  *(inited + 440) = v95;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA342798(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    sub_1CA94C218();
    sub_1CA368948(&v7, v6, v5);

    v4 += 2;
  }
}

void sub_1CA342840(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1CA94D2F8();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    sub_1CA94C948();
    v1 = v13[1];
    v2 = v13[2];
    v3 = v13[3];
    v4 = v13[4];
    v5 = v13[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    if (!*(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10))))))
    {
LABEL_18:
      sub_1CA28A224();
      return;
    }

    while (1)
    {
      sub_1CA368D08(v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1CA94D358())
      {
        type metadata accessor for WFUserVisibleString();
        swift_dynamicCast();
        v11 = v4;
        v12 = v5;
        if (v13[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1CA342A00(uint64_t a1)
{
  v2 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v11 = v2;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];
      sub_1CA94C218();
      sub_1CA368948(&v16, v14, v15);

      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }
}

void sub_1CA342AF0(uint64_t a1)
{
  v2 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v11 = v2;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_1CA369200(&v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }
}

void WFDictionaryParameter.userVisibleStrings(in:for:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA949F78();
  v6 = OUTLINED_FUNCTION_2_20(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    swift_unknownObjectRetain();
    v13 = [v12 keyValuePairs];
    sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
    v14 = sub_1CA94C658();

    v15 = sub_1CA25B410(v14);
    if (v15)
    {
      v16 = v15;
      if (v15 < 1)
      {
        __break(1u);
      }

      else
      {
        v17 = 0;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1CCAA22D0](v17, v14);
          }

          else
          {
            v18 = *(v14 + 8 * v17 + 32);
          }

          v19 = v18;
          ++v17;
          sub_1CA342E28(a2);
          sub_1CA342840(v20);
        }

        while (v16 != v17);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v21 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v22 = sub_1CA949F68();
    v23 = sub_1CA94CC28();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CA256000, v22, v23, "Incorrect parameter state class", v24, 2u);
      MEMORY[0x1CCAA4BF0](v24, -1, -1);
    }

    (*(v8 + 8))(v2, v3);
    if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      sub_1CA2E85F8();
    }
  }
}

void sub_1CA342E28(uint64_t a1)
{
  v3 = [v1 key];
  v4 = [v3 userVisibleStringsForUseCase_];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8F8();

  v6 = [v1 value];
  sub_1CA575728();
  v8 = v7;

  sub_1CA553F18(v8, v5);
}

uint64_t WFDictionaryParameter.rewrite(_:withStrings:)()
{
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_2_20(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 keyValuePairs];
    sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
    v11 = sub_1CA94C658();

    v12 = sub_1CA25B410(v11);
    if (!v12)
    {
LABEL_13:

      sub_1CA25B3D0(0, &qword_1EC4446B0, off_1E836E260);
      v23 = sub_1CA3433C0();
      swift_unknownObjectRelease();
      return v23;
    }

    v13 = v12;
    v24 = MEMORY[0x1E69E7CC0];
    result = sub_1CA94D508();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1CCAA22D0](v15, v11);
        }

        else
        {
          v16 = *(v11 + 8 * v15 + 32);
        }

        v17 = v16;
        ++v15;
        sub_1CA343248();

        sub_1CA94D4D8();
        v18 = *(v24 + 16);
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      while (v13 != v15);
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
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

    (*(v5 + 8))(v0, v1);
    return swift_unknownObjectRetain();
  }

  return result;
}

id sub_1CA343248()
{
  sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
  v1 = [v0 key];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v2 = sub_1CA94C1A8();
  v3 = [v1 rewrittenWithStrings_];

  v13 = v3;
  v4 = [v0 value];
  v5 = sub_1CA575AFC();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  v10 = sub_1CA948D28();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  return WFDictionaryParameterKeyValuePair.init(key:value:identity:)(&v13, v5, v9);
}

id sub_1CA3433C0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
  v1 = sub_1CA94C648();

  v2 = [v0 initWithKeyValuePairs_];

  return v2;
}

unint64_t sub_1CA3434EC()
{
  result = qword_1EC4463C0;
  if (!qword_1EC4463C0)
  {
    type metadata accessor for WFUserVisibleString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4463C0);
  }

  return result;
}

id AppIntentShortcutsMetadata.init(displayedAppDescriptor:category:discoverable:iconSymbol:additions:)(_OWORD *a1, void *a2, char a3, _OWORD *a4, uint64_t a5)
{
  v7 = OBJC_IVAR___WFAppIntentShortcutsMetadata_category;
  *&v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_category] = 0;
  v8 = OBJC_IVAR___WFAppIntentShortcutsMetadata_discoverable;
  v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_discoverable] = 2;
  v9 = &v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_iconSymbol];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *&v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor] = *a1;
  *&v5[v7] = a2;
  v5[v8] = a3;
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  v14 = *(v9 + 4);
  v15 = *(v9 + 5);
  v16 = a4[1];
  *v9 = *a4;
  *(v9 + 1) = v16;
  *(v9 + 2) = a4[2];
  v17 = a2;
  sub_1CA3436AC(v10, v11);
  *&v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_additions] = a5;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for AppIntentShortcutsMetadata();
  v18 = objc_msgSendSuper2(&v20, sel_init);

  return v18;
}

uint64_t sub_1CA3436AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return v1;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.backgroundColorName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CA94C218();
  return v1;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.backgroundColorName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.foregroundColorName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1CA94C218();
  return v1;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.foregroundColorName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall AppIntentShortcutsMetadata.IconSymbol.init(_:backgroundColorName:foregroundColorName:)(WorkflowKit::AppIntentShortcutsMetadata::IconSymbol *__return_ptr retstr, Swift::String _, Swift::String backgroundColorName, Swift::String_optional foregroundColorName)
{
  retstr->name = _;
  retstr->backgroundColorName = backgroundColorName;
  retstr->foregroundColorName = foregroundColorName;
}

unint64_t sub_1CA3438C8(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor);
  v3 = *(v1 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor + 8);
  v4 = v3;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor);
    v5 = *(v1 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor + 8);
    if (v3 == 1)
    {
      sub_1CA94C218();
      v4 = a1;
    }
  }

  sub_1CA343954(v2, v3);
  return v4;
}

uint64_t sub_1CA343954(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_1CA94C218();
  }

  return result;
}

id AppIntentShortcutsMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AppIntentShortcutsMetadata.dictionaryRepresentation()()
{
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  v1 = sub_1CA94C1E8();
  v160 = v1;
  v9 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor + 8);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_6;
    }

    v10 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A38, &qword_1CA981B20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    v12 = *MEMORY[0x1E69E0908];
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v13;
    *(inited + 48) = v10;
    *(inited + 56) = v9;
    sub_1CA343954(v10, v9);
    v14 = @"LinkActionDisplayedAppDescriptor";
    v15 = sub_1CA94C1E8();
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
    *&v154 = v15;
    OUTLINED_FUNCTION_2_21(v158, v16, v17, v18, v19, v20, v21, v22, v106, v113, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154);
  }

  else
  {
    LOBYTE(v154) = 1;
    OUTLINED_FUNCTION_2_21(v1, v2, v3, v4, v5, v6, v7, v8, v106, v113, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154);
    v14 = @"LinkActionDisableDisplayedAppDescriptor";
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_19();
  sub_1CA3224DC(v23, v14);

  OUTLINED_FUNCTION_3_16(v24, v25, v26, v27, v28, v29, v30, v31, v107, v114);
LABEL_6:
  v32 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_category);
  if (v32)
  {
    v159 = sub_1CA344264();
    *&v154 = v32;
    OUTLINED_FUNCTION_2_21(v159, v33, v34, v35, v36, v37, v38, v39, v106, v113, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154);
    v40 = v32;
    v41 = @"Category";
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_19();
    sub_1CA3224DC(v42, v41);

    OUTLINED_FUNCTION_3_16(v43, v44, v45, v46, v47, v48, v49, v50, v108, v115);
  }

  v51 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_discoverable);
  if (v51 != 2)
  {
    LOBYTE(v154) = v51 & 1;
    OUTLINED_FUNCTION_2_21(v1, v2, v3, v4, v5, v6, v7, v8, v106, v113, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154);
    v52 = @"Discoverable";
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_19();
    sub_1CA3224DC(v53, v52);

    OUTLINED_FUNCTION_3_16(v54, v55, v56, v57, v58, v59, v60, v61, v109, v116);
  }

  v62 = (v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_iconSymbol);
  if (*(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_iconSymbol + 8))
  {
    v64 = v62[2];
    v63 = v62[3];
    v65 = v62[4];
    v66 = v62[5];
    *&v155 = *v62;
    *(&v155 + 1) = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_iconSymbol + 8);
    OUTLINED_FUNCTION_2_21(v1, v2, v3, v4, v5, v6, v7, v8, v106, v113, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v155);
    v67 = @"IconSymbol";
    sub_1CA94C218();
    v68 = OUTLINED_FUNCTION_1_18();
    sub_1CA344214(v68, v69);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_19();
    sub_1CA3224DC(v70, v67);

    *&v156 = v64;
    *(&v156 + 1) = v63;
    OUTLINED_FUNCTION_2_21(v71, v72, v73, v74, v75, v76, v77, v78, v110, v117, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v156);
    v79 = @"IconColor";
    sub_1CA94C218();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_19();
    sub_1CA3224DC(v80, v79);

    OUTLINED_FUNCTION_3_16(v81, v82, v83, v84, v85, v86, v87, v88, v111, v118);
    if (v66)
    {
      sub_1CA94C218();
      v89 = OUTLINED_FUNCTION_1_18();
      v91 = sub_1CA3436AC(v89, v90);
      *&v157 = v65;
      *(&v157 + 1) = v66;
      OUTLINED_FUNCTION_2_21(v91, v92, v93, v94, v95, v96, v97, v98, v112, v119, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v157);
      v99 = @"IconSymbolColor";
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_19();
      sub_1CA3224DC(v100, v99);

      v160 = v120;
    }

    else
    {
      v101 = OUTLINED_FUNCTION_1_18();
      sub_1CA3436AC(v101, v102);
    }
  }

  v103 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_additions);
  v104 = sub_1CA94C218();
  sub_1CA343E90(v104, &v160);

  return v160;
}

uint64_t sub_1CA343E90(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  sub_1CA94C218();
  v8 = 0;
  v29 = v3;
  v30 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = *(*(a1 + 48) + 8 * v10);
      sub_1CA25B374(*(a1 + 56) + 32 * v10, &v38);
      v37 = v11;
      sub_1CA344510(&v37, &v35);
      v12 = v35;
      sub_1CA344510(&v37, &v33);
      v13 = v33;
      v14 = v11;

      sub_1CA2C0A20(&v34, v32);
      v15 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v39 = *a2;
      v16 = v39;
      v17 = sub_1CA323E24(v12);
      if (__OFADD__(v16[2], (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443E0, &qword_1CA983488);
      if (sub_1CA94D588())
      {
        v21 = sub_1CA323E24(v12);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      v23 = v39;
      if (v20)
      {
        v24 = (v39[7] + 32 * v19);
        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_1CA2C0A20(v32, v24);
      }

      else
      {
        v39[(v19 >> 6) + 8] |= 1 << v19;
        *(v23[6] + 8 * v19) = v12;
        sub_1CA2C0A20(v32, (v23[7] + 32 * v19));
        v25 = v23[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_21;
        }

        v23[2] = v27;
      }

      v6 &= v6 - 1;
      a2 = v30;
      *v30 = v23;
      __swift_destroy_boxed_opaque_existential_0(v36);
      sub_1CA344580(&v37);
      v3 = v29;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for Key(0);
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

id LinkMetadataRegistrationHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkMetadataRegistrationHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA3441DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1CA344214(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1CA94C218();
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

unint64_t sub_1CA344264()
{
  result = qword_1EDB9F6E0;
  if (!qword_1EDB9F6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB9F6E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit26AppIntentShortcutsMetadataC09DisplayedC10DescriptorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA34436C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA3443C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1CA34441C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1CA344460(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1CA3444A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA3444FC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1CA344510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4446C8, &qword_1CA983CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA344580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4446C8, &qword_1CA983CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA3445EC()
{
  OUTLINED_FUNCTION_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1CA94ADC8();
  v0[4] = v3;
  v4 = *(v3 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA3446A4()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[6];
  v2 = v0[2];
  sub_1CA94A8B8();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1CA344744;
  v4 = v0[6];
  v5 = v0[3];

  return sub_1CA2FD878();
}

uint64_t sub_1CA344744()
{
  OUTLINED_FUNCTION_14();
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA3448A8()
{
  v14 = v0;
  v1 = v0[9];
  v2 = v0[2];
  v3 = sub_1CA344A04();
  v4 = v0[8];
  if (v1)
  {

    v5 = v0[6];

    OUTLINED_FUNCTION_5();

    return v6();
  }

  else
  {
    v8 = v3;
    v9 = v0[6];
    v13[3] = sub_1CA34554C();
    v13[0] = v8;
    v10 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v11 = sub_1CA320AB4(v13, v4);

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_1CA3449A8()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_5();

  return v3();
}

id sub_1CA344A04()
{
  v0 = sub_1CA94AD88();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA94ADC8();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA94A8B8();
  v16 = v11[11];
  v17 = OUTLINED_FUNCTION_204();
  v19 = v18(v17);
  if (v19 == *MEMORY[0x1E69DB0B0] || v19 == *MEMORY[0x1E69DB0A0])
  {
    goto LABEL_6;
  }

  if (v19 == *MEMORY[0x1E69DB098])
  {
    v26 = v11[12];
    v27 = OUTLINED_FUNCTION_204();
    v28(v27);
    v29 = *v15;
    v30 = *(*v15 + 32);
    v31 = *(v29 + 40);
    sub_1CA94C218();
LABEL_11:

    sub_1CA94A898();
    v37 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    return sub_1CA320B2C();
  }

  if (v19 == *MEMORY[0x1E69DB088])
  {
    v32 = v11[12];
    v33 = OUTLINED_FUNCTION_204();
    v34(v33);
    v35 = *v15;
    v36 = swift_projectBox();
    (*(v3 + 16))(v7, v36, v0);
    sub_1CA94AD78();
    (*(v3 + 8))(v7, v0);
    goto LABEL_11;
  }

  if (v19 == *MEMORY[0x1E69DB0A8])
  {
LABEL_6:
    v21 = v11[1];
    v22 = OUTLINED_FUNCTION_204();
    v23(v22);
    sub_1CA2FFC58();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

uint64_t sub_1CA344CD4()
{
  OUTLINED_FUNCTION_0();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00) - 8) + 64) + 15;
  v0[11] = swift_task_alloc();
  v5 = sub_1CA94ADC8();
  v0[12] = v5;
  v6 = *(v5 - 8);
  v0[13] = v6;
  v7 = *(v6 + 64) + 15;
  v0[14] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA344DC8()
{
  OUTLINED_FUNCTION_14();
  v1 = [*(v0 + 72) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  *(v0 + 120) = sub_1CA55BCD4(v0 + 16);
  v2 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 128) = [v2 valueType];
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1CA344F24;
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);

  return sub_1CA2FF3B4();
}

uint64_t sub_1CA344F24()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA345050()
{
  v3 = *(v0 + 72);
  v4 = [*(v0 + 120) instanceIdentifier];
  v5 = sub_1CA94C3A8();
  v7 = v6;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;

  *(v0 + 152) = v7;
  v8 = [v3 displayRepresentation];
  *(v0 + 160) = v8;
  if (v8)
  {
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1CA345244;
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);

    return (sub_1CA3BC4F4)(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    v13 = sub_1CA94B458();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v13);
    OUTLINED_FUNCTION_6_16();

    OUTLINED_FUNCTION_5();

    return v14();
  }
}

uint64_t sub_1CA3451D4()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA345244()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[21];
  *v4 = *v1;
  v3[22] = v0;

  v6 = v2[20];
  if (v0)
  {
    v7 = v3[19];
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA345390()
{
  OUTLINED_FUNCTION_5_17();
  v2 = sub_1CA94B458();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  OUTLINED_FUNCTION_6_16();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA345430()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA3454A0()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1CA30A15C;

  return sub_1CA344CD4();
}

unint64_t sub_1CA34554C()
{
  result = qword_1EC445B70;
  if (!qword_1EC445B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC445B70);
  }

  return result;
}

uint64_t sub_1CA345590()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA34562C;

  return sub_1CA3445EC();
}

uint64_t sub_1CA34562C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

id sub_1CA345764()
{
  v115 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
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
  v120 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v121 = v12;
  v13 = v109 - v120;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v119 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v122 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v118 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v109 - v118;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v117;
  *(inited + 80) = v19;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000011;
  *(inited + 128) = 0x80000001CA993AC0;
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
  v114 = v109;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v109 - v120;
  sub_1CA948D98();
  v29 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v109 - v118;
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
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x7261646E656C6163;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v34;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 6579538;
  *(inited + 288) = 0xE300000000000000;
  *(inited + 304) = v34;
  *(inited + 312) = @"Input";
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
  *(v36 + 192) = &unk_1F49F4F48;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"IconSymbolColor";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v113 = v43;
  *(inited + 320) = v42;
  *(inited + 344) = v43;
  *(inited + 352) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v110 = v46;
  v47 = sub_1CA94C438();
  v49 = v48;
  v111 = v109;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v109 - v120;
  sub_1CA948D98();
  v51 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v109 - v118;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v45, v110, v47, v49, 0, 0, v50, v52);
  v54 = v117;
  *(inited + 384) = v117;
  *(inited + 392) = @"Output";
  v55 = swift_allocObject();
  *(v55 + 16) = v116;
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
  v110 = v58;
  v111 = v57;
  v59 = sub_1CA94C438();
  v61 = v60;
  v112 = v109;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v109 - v120;
  sub_1CA948D98();
  v63 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v109 - v118;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v111, v110, v59, v61, 0, 0, v62, v64);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v114;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F49F4F78;
  v66 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v113;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v114 = swift_allocObject();
  *(v114 + 1) = xmmword_1CA9813B0;
  v113 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  *(v67 + 16) = v116;
  *(v67 + 32) = @"Class";
  *(v67 + 40) = 0xD000000000000019;
  *(v67 + 48) = 0x80000001CA99B030;
  *(v67 + 64) = v66;
  *(v67 + 72) = @"Key";
  *(v67 + 80) = 0x7475706E494657;
  *(v67 + 88) = 0xE700000000000000;
  *(v67 + 104) = v66;
  *(v67 + 112) = @"Label";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"Key";
  v71 = @"Label";
  v72 = sub_1CA94C438();
  v111 = v73;
  v112 = v72;
  v74 = sub_1CA94C438();
  v110 = v75;
  *&v116 = v109;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v120;
  sub_1CA948D98();
  v77 = v119;
  v78 = [v119 bundleURL];
  v109[1] = v109;
  MEMORY[0x1EEE9AC00](v78);
  v79 = v118;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v112, v111, v74, v110, 0, 0, v109 - v76, v109 - v79);
  v81 = v117;
  *(v67 + 144) = v117;
  *(v67 + 152) = @"Placeholder";
  v82 = @"Placeholder";
  v83 = sub_1CA94C438();
  v111 = v84;
  v112 = v83;
  v110 = sub_1CA94C438();
  v86 = v85;
  *&v116 = v109;
  MEMORY[0x1EEE9AC00](v110);
  v87 = v109 - v76;
  sub_1CA948D98();
  v88 = [v77 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v112, v111, v110, v86, 0, 0, v87, v109 - v79);
  *(v67 + 184) = v81;
  *(v67 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v91 = sub_1CA2F864C();
  v92 = v114;
  v114[4] = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v92;
  *(inited + 464) = v93;
  *(inited + 472) = @"ParameterSummary";
  v94 = @"ParameterSummary";
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v117 = v109;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v109 - v120;
  sub_1CA948D98();
  v102 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v109 - v79);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v105;
  *(inited + 504) = v106;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v107 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void WFTextInputParameter.userVisibleStrings(in:for:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA949F78();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
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
  }

  else
  {
    v15 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v16 = sub_1CA949F68();
    v17 = sub_1CA94CC28();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1CA256000, v16, v17, "Incorrect parameter state class", v18, 2u);
      MEMORY[0x1CCAA4BF0](v18, -1, -1);
    }

    (*(v6 + 8))(v10, v3);
    if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      sub_1CA2E85F8();
    }
  }
}

unint64_t WFTextInputParameter.rewrite(_:withStrings:)(uint64_t a1)
{
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    sub_1CA346BF4();
    swift_unknownObjectRetain();
    v12 = [v11 variableString];
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    v13 = sub_1CA94C1A8();
    v14 = [v12 rewrittenWithStrings_];

    v23 = v14;
    v15.variableString.super.isa = &v23;
    v16 = WFVariableStringParameterState.init(variableString:)(v15);
    swift_unknownObjectRelease();
    return v16;
  }

  else
  {
    v17 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v18 = sub_1CA949F68();
    v19 = sub_1CA94CC28();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CA256000, v18, v19, "Incorrect parameter state class", v20, 2u);
      MEMORY[0x1CCAA4BF0](v20, -1, -1);
    }

    (*(v5 + 8))(v9, v2);
    swift_unknownObjectRetain();
  }

  return a1;
}

unint64_t sub_1CA346BF4()
{
  result = qword_1EC441788;
  if (!qword_1EC441788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441788);
  }

  return result;
}

id sub_1CA346C6C()
{
  v123 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9A5D80;
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
  v126 = v12;
  v130 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v115 - v130;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v129 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v127 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v128 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v115 - v128;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v125 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v124 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v121 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v122 = v115;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v115 - v130;
  sub_1CA948D98();
  v30 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v115 - v128;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v121, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v125;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v124;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x65676E61724FLL;
  *(inited + 168) = 0xE600000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000019;
  *(inited + 208) = 0x80000001CA9A5E00;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v120 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x734C52554657;
  *(v37 + 104) = 0xE600000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v124;
  *(v37 + 192) = &unk_1F49F4FA8;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v122 = v43;
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v117 = v46;
  v118 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v119 = v115;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v130;
  sub_1CA948D98();
  v51 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v115 - v128;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v118, v117, v47, v49, 0, 0, v115 - v50, v52);
  v54 = v125;
  *(inited + 304) = v125;
  *(inited + 312) = @"Output";
  v55 = swift_allocObject();
  *(v55 + 16) = v120;
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
  v119 = v58;
  *&v120 = v57;
  v59 = sub_1CA94C438();
  v118 = v60;
  v121 = v115;
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948D98();
  v61 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = v115 - v128;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v120, v119, v59, v118, 0, 0, v115 - v50, v62);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v124;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F49F4FE8;
  v64 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *&v120 = @"Parameters";
  *(inited + 344) = v122;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v122 = swift_allocObject();
  *(v122 + 1) = xmmword_1CA9813B0;
  v121 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1CA9813E0;
  *(v65 + 32) = @"AllowsMultipleValues";
  *(v65 + 40) = 0;
  v66 = MEMORY[0x1E69E6370];
  *(v65 + 64) = MEMORY[0x1E69E6370];
  *(v65 + 72) = @"AutocapitalizationType";
  *(v65 + 80) = 1701736270;
  *(v65 + 88) = 0xE400000000000000;
  *(v65 + 104) = v64;
  *(v65 + 112) = @"Class";
  *(v65 + 120) = 0xD000000000000014;
  *(v65 + 128) = 0x80000001CA99B500;
  *(v65 + 144) = v64;
  *(v65 + 152) = @"DisableAutocorrection";
  *(v65 + 160) = 1;
  *(v65 + 184) = v66;
  *(v65 + 192) = @"Key";
  *(v65 + 200) = 0x734C52554657;
  *(v65 + 208) = 0xE600000000000000;
  *(v65 + 224) = v64;
  *(v65 + 232) = @"KeyboardType";
  *(v65 + 240) = 5001813;
  *(v65 + 248) = 0xE300000000000000;
  *(v65 + 264) = v64;
  *(v65 + 272) = @"Label";
  v67 = v120;
  v68 = @"AllowsMultipleValues";
  v69 = @"AutocapitalizationType";
  v70 = @"Class";
  v71 = @"DisableAutocorrection";
  v72 = @"Key";
  v73 = @"KeyboardType";
  v74 = @"Label";
  v75 = sub_1CA94C438();
  v117 = v76;
  v118 = v75;
  v77 = sub_1CA94C438();
  v116 = v78;
  v119 = v115;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v115 - v130;
  sub_1CA948D98();
  v80 = v129;
  v81 = [v129 bundleURL];
  v115[1] = v115;
  MEMORY[0x1EEE9AC00](v81);
  *&v120 = inited;
  v82 = v128;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 280) = sub_1CA2F9F14(v118, v117, v77, v116, 0, 0, v79, v115 - v82);
  *(v65 + 304) = v125;
  *(v65 + 312) = @"Placeholder";
  v84 = @"Placeholder";
  v85 = sub_1CA94C438();
  v117 = v86;
  v118 = v85;
  v87 = sub_1CA94C438();
  v89 = v88;
  v119 = v115;
  MEMORY[0x1EEE9AC00](v87);
  v90 = v115 - v130;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 320) = sub_1CA2F9F14(v118, v117, v87, v89, 0, 0, v90, v115 - v82);
  *(v65 + 344) = v125;
  *(v65 + 352) = @"TextContentType";
  *(v65 + 384) = MEMORY[0x1E69E6158];
  *(v65 + 360) = 5001813;
  *(v65 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v93 = @"TextContentType";
  sub_1CA94C1E8();
  v94 = sub_1CA2F864C();
  v95 = v122;
  v122[4] = v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v97 = v120;
  *(v120 + 360) = v95;
  *(v97 + 384) = v96;
  *(v97 + 392) = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v125 = v115;
  MEMORY[0x1EEE9AC00](v102);
  v105 = v115 - v130;
  sub_1CA948D98();
  v106 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v115 - v128;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  v110 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v111 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v97 + 400) = v110;
  *(v97 + 424) = v111;
  *(v97 + 432) = @"RequiredResources";
  *(v97 + 440) = &unk_1F49F5018;
  *(v97 + 464) = v124;
  *(v97 + 472) = @"ResidentCompatible";
  *(v97 + 504) = MEMORY[0x1E69E6370];
  *(v97 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v112 = @"RequiredResources";
  v113 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA347C3C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  static WFActionDefinitionRegistry.register(_:_:)(0xD00000000000001FLL, 0x80000001CA995930, sub_1CA34FBBC, v1);
}

id sub_1CA347CC4(uint64_t a1)
{
  v323 = a1;
  v324 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A5F40;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v328 = v13;
  v331 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v316 - v331;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v327 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v329 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v330 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v316 - v330;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v326 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v321 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v322 = xmmword_1CA9813C0;
  *(v22 + 16) = xmmword_1CA9813C0;
  *(v22 + 32) = @"DescriptionInput";
  v23 = @"Description";
  v24 = @"DescriptionInput";
  v25 = sub_1CA94C438();
  v318 = v26;
  v319 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v320 = &v316;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v316 - v331;
  sub_1CA948D98();
  v31 = v327;
  v32 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v325 = inited;
  v33 = &v316 - v330;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v319, v318, v27, v29, 0, 0, v30, v33);
  *(v22 + 64) = v326;
  *(v22 + 72) = @"DescriptionResult";
  v35 = @"DescriptionResult";
  v36 = sub_1CA94C438();
  v318 = v37;
  v319 = v36;
  v317 = sub_1CA94C438();
  v39 = v38;
  v320 = &v316;
  MEMORY[0x1EEE9AC00](v317);
  v40 = v331;
  sub_1CA948D98();
  v41 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = v330;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 80) = sub_1CA2F9F14(v319, v318, v317, v39, 0, 0, &v316 - v40, &v316 - v42);
  *(v22 + 104) = v326;
  *(v22 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438();
  v318 = v46;
  v319 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v320 = &v316;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v319, v318, v47, v49, 0, 0, &v316 - v40, &v316 - v42);
  *(v22 + 144) = v326;
  *(v22 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA34FBC4(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v53 = v321;
  v54 = sub_1CA6B3784();
  v55 = v325;
  *(v325 + 120) = v54;
  *(v55 + 144) = v53;
  *(v55 + 152) = @"IconName";
  *(v55 + 160) = 0x6567616D49;
  *(v55 + 168) = 0xE500000000000000;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Input";
  v57 = v56;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = v322;
  strcpy((v58 + 32), "ParameterKey");
  *(v58 + 45) = 0;
  *(v58 + 46) = -5120;
  *(v58 + 48) = 0x6567616D494657;
  *(v58 + 56) = 0xE700000000000000;
  *(v58 + 72) = v57;
  *(v58 + 80) = 0x6465726975716552;
  *(v58 + 88) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 96) = 1;
  *(v58 + 120) = v59;
  *(v58 + 128) = 0x7365707954;
  v60 = v59;
  *(v58 + 136) = 0xE500000000000000;
  *&v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 168) = v322;
  *(v58 + 144) = &unk_1F49F5BC8;
  v61 = @"IconName";
  v62 = @"Input";
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v321 = v64;
  *(v55 + 200) = v63;
  *(v55 + 224) = v64;
  *(v55 + 232) = @"InputPassthrough";
  *(v55 + 240) = 0;
  *(v55 + 264) = v60;
  *(v55 + 272) = @"Name";
  v65 = @"InputPassthrough";
  v66 = @"Name";
  v67 = sub_1CA94C438();
  v318 = v68;
  v69 = sub_1CA94C438();
  v71 = v70;
  v319 = &v316;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v316 - v331;
  sub_1CA948D98();
  v73 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v316 - v330;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 280) = sub_1CA2F9F14(v67, v318, v69, v71, 0, 0, v72, v74);
  *(v55 + 304) = v326;
  *(v55 + 312) = @"Output";
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_1CA981350;
  *(v76 + 32) = 0x75736F6C63736944;
  *(v76 + 40) = 0xEF6C6576654C6572;
  *(v76 + 48) = 0x63696C627550;
  *(v76 + 56) = 0xE600000000000000;
  *(v76 + 72) = MEMORY[0x1E69E6158];
  *(v76 + 80) = 0x656C7069746C754DLL;
  *(v76 + 88) = 0xE800000000000000;
  *(v76 + 96) = 0;
  *(v76 + 120) = MEMORY[0x1E69E6370];
  *(v76 + 128) = 0x614E74757074754FLL;
  *(v76 + 136) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438();
  v319 = v79;
  v80 = sub_1CA94C438();
  v82 = v81;
  v320 = &v316;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v316 - v331;
  sub_1CA948D98();
  v84 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v316 - v330;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 144) = sub_1CA2F9F14(v78, v319, v80, v82, 0, 0, v83, v85);
  *(v76 + 168) = v326;
  *(v76 + 176) = 0x7365707954;
  *(v76 + 216) = v322;
  *(v76 + 184) = 0xE500000000000000;
  *(v76 + 192) = &unk_1F49F5BF8;
  *(v55 + 320) = sub_1CA94C1E8();
  *(v55 + 344) = v321;
  *(v55 + 352) = @"Parameters";
  v87 = @"Parameters";
  v88 = sub_1CA34A0CC();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(v55 + 360) = v88;
  *(v55 + 384) = v89;
  *(v55 + 392) = @"ParameterSummary";
  v323 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v326 = swift_allocObject();
  *(v326 + 16) = xmmword_1CA983CD0;
  *&v322 = "Name)";
  v90 = @"ParameterSummary";
  v320 = sub_1CA94C438();
  v92 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v316 - v331;
  sub_1CA948D98();
  v97 = v327;
  v98 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v316 - v330;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v320, v92, v93, v95, 0, 0, v96, v99);
  v102 = objc_allocWithZone(WFActionParameterSummaryValue);
  v103 = sub_1CA65DD78(0xD000000000000043, v322 | 0x8000000000000000, v101);
  *(v326 + 32) = v103;
  *&v322 = "{WFPercentageTextOffset}";
  v104 = sub_1CA94C438();
  v319 = v105;
  v320 = v104;
  v106 = sub_1CA94C438();
  v108 = v107;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v106);
  v109 = v331;
  sub_1CA948D98();
  v110 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v316 - v330;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v320, v319, v106, v108, 0, 0, &v316 - v109, v111);
  v114 = objc_allocWithZone(WFActionParameterSummaryValue);
  v115 = sub_1CA65DD78(0xD000000000000039, v322 | 0x8000000000000000, v113);
  v116 = v326;
  *(v326 + 40) = v115;
  *&v322 = "{WFTextOffset} points";
  v117 = sub_1CA94C438();
  v319 = v118;
  v320 = v117;
  v119 = sub_1CA94C438();
  v318 = v120;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v316 - v109;
  sub_1CA948D98();
  v122 = v327;
  v123 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v330;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v320, v319, v119, v318, 0, 0, v121, &v316 - v124);
  v127 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v116 + 48) = sub_1CA65DD78(0xD000000000000041, v322 | 0x8000000000000000, v126);
  *&v322 = "centageTextOffset";
  v128 = sub_1CA94C438();
  v319 = v129;
  v320 = v128;
  v130 = sub_1CA94C438();
  v132 = v131;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v316 - v331;
  sub_1CA948D98();
  v134 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v320, v319, v130, v132, 0, 0, v133, &v316 - v124);
  v137 = objc_allocWithZone(WFActionParameterSummaryValue);
  v138 = sub_1CA65DD78(0xD000000000000037, v322 | 0x8000000000000000, v136);
  *(v326 + 56) = v138;
  *&v322 = "ttom Left),WFTextOffset";
  v139 = sub_1CA94C438();
  v319 = v140;
  v320 = v139;
  v318 = sub_1CA94C438();
  v142 = v141;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v318);
  v143 = v331;
  sub_1CA948D98();
  v144 = v327;
  v145 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v316 - v330;
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v320, v319, v318, v142, 0, 0, &v316 - v143, v146);
  v149 = objc_allocWithZone(WFActionParameterSummaryValue);
  v150 = sub_1CA65DD78(0xD000000000000042, v322 | 0x8000000000000000, v148);
  v151 = v326;
  *(v326 + 64) = v150;
  *&v322 = "rcentageTextOffset";
  v152 = sub_1CA94C438();
  v319 = v153;
  v320 = v152;
  v318 = sub_1CA94C438();
  v155 = v154;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v318);
  sub_1CA948D98();
  v156 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = v330;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v320, v319, v318, v155, 0, 0, &v316 - v143, &v316 - v157);
  v160 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v151 + 72) = sub_1CA65DD78(0xD000000000000038, v322 | 0x8000000000000000, v159);
  *&v322 = "ttom Right),WFTextOffset";
  v161 = sub_1CA94C438();
  v320 = v162;
  v163 = sub_1CA94C438();
  v165 = v164;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v316 - v331;
  sub_1CA948D98();
  v167 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v161, v320, v163, v165, 0, 0, v166, &v316 - v157);
  v170 = objc_allocWithZone(WFActionParameterSummaryValue);
  v171 = sub_1CA65DD78(0xD000000000000025, v322 | 0x8000000000000000, v169);
  v172 = v326;
  *(v326 + 80) = v171;
  *&v322 = "at ${WFTextPosition}";
  v173 = sub_1CA94C438();
  v319 = v174;
  v320 = v173;
  v175 = sub_1CA94C438();
  v177 = v176;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v175);
  v178 = v331;
  sub_1CA948D98();
  v179 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v316 - v330;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v320, v319, v175, v177, 0, 0, &v316 - v178, v180);
  v183 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v172 + 88) = sub_1CA65DD78(0xD000000000000052, v322 | 0x8000000000000000, v182);
  *&v322 = "ageTextX}, ${WFPercentageTextY}";
  v184 = sub_1CA94C438();
  v319 = v185;
  v320 = v184;
  v186 = sub_1CA94C438();
  v188 = v187;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v186);
  v189 = &v316 - v178;
  sub_1CA948D98();
  v190 = v327;
  v191 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v316 - v330;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v320, v319, v186, v188, 0, 0, v189, v192);
  v195 = objc_allocWithZone(WFActionParameterSummaryValue);
  v196 = sub_1CA65DD78(0xD00000000000003ELL, v322 | 0x8000000000000000, v194);
  *(v326 + 96) = v196;
  *&v322 = "ion} ${WFTextX}, ${WFTextY}";
  v197 = sub_1CA94C438();
  v319 = v198;
  v320 = v197;
  v199 = sub_1CA94C438();
  v201 = v200;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v199);
  v202 = v331;
  sub_1CA948D98();
  v203 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v316 - v330;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v206 = sub_1CA2F9F14(v320, v319, v199, v201, 0, 0, &v316 - v202, v204);
  v207 = objc_allocWithZone(WFActionParameterSummaryValue);
  v208 = sub_1CA65DD78(0xD000000000000041, v322 | 0x8000000000000000, v206);
  *(v326 + 104) = v208;
  *&v322 = "centageTextOffset";
  v209 = sub_1CA94C438();
  v319 = v210;
  v320 = v209;
  v211 = sub_1CA94C438();
  v213 = v212;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948D98();
  v214 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v214);
  v215 = v330;
  sub_1CA948B68();

  v216 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v217 = sub_1CA2F9F14(v320, v319, v211, v213, 0, 0, &v316 - v202, &v316 - v215);
  v218 = objc_allocWithZone(WFActionParameterSummaryValue);
  v219 = sub_1CA65DD78(0xD000000000000037, v322 | 0x8000000000000000, v217);
  *(v326 + 112) = v219;
  *&v322 = "ddle Left),WFTextOffset";
  v220 = sub_1CA94C438();
  v319 = v221;
  v320 = v220;
  v222 = sub_1CA94C438();
  v224 = v223;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v222);
  v225 = &v316 - v331;
  sub_1CA948D98();
  v226 = v327;
  v227 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v229 = sub_1CA2F9F14(v320, v319, v222, v224, 0, 0, v225, &v316 - v215);
  v230 = objc_allocWithZone(WFActionParameterSummaryValue);
  v231 = sub_1CA65DD78(0xD000000000000042, v322 | 0x8000000000000000, v229);
  *(v326 + 120) = v231;
  *&v322 = "rcentageTextOffset";
  v232 = sub_1CA94C438();
  v319 = v233;
  v320 = v232;
  v234 = sub_1CA94C438();
  v236 = v235;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v234);
  v237 = &v316 - v331;
  sub_1CA948D98();
  v238 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v238);
  sub_1CA948B68();

  v239 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v240 = sub_1CA2F9F14(v320, v319, v234, v236, 0, 0, v237, &v316 - v215);
  v241 = objc_allocWithZone(WFActionParameterSummaryValue);
  v242 = sub_1CA65DD78(0xD000000000000038, v322 | 0x8000000000000000, v240);
  v243 = v326;
  *(v326 + 128) = v242;
  *&v322 = "ddle Right),WFTextOffset";
  v244 = sub_1CA94C438();
  v319 = v245;
  v320 = v244;
  v246 = sub_1CA94C438();
  v248 = v247;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v246);
  v249 = &v316 - v331;
  sub_1CA948D98();
  v250 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v250);
  v251 = v330;
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253 = sub_1CA2F9F14(v320, v319, v246, v248, 0, 0, v249, &v316 - v251);
  v254 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v243 + 136) = sub_1CA65DD78(0xD000000000000040, v322 | 0x8000000000000000, v253);
  *&v322 = "entageTextOffset";
  v255 = sub_1CA94C438();
  v320 = v256;
  v257 = sub_1CA94C438();
  v259 = v258;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v257);
  v260 = &v316 - v331;
  sub_1CA948D98();
  v261 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v261);
  sub_1CA948B68();

  v262 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v263 = sub_1CA2F9F14(v255, v320, v257, v259, 0, 0, v260, &v316 - v251);
  v264 = objc_allocWithZone(WFActionParameterSummaryValue);
  v265 = sub_1CA65DD78(0xD000000000000036, v322 | 0x8000000000000000, v263);
  v266 = v326;
  *(v326 + 144) = v265;
  *&v322 = "p Center),WFTextOffset";
  v267 = sub_1CA94C438();
  v319 = v268;
  v320 = v267;
  v269 = sub_1CA94C438();
  v271 = v270;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v269);
  v272 = &v316 - v331;
  sub_1CA948D98();
  v273 = v327;
  v274 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v274);
  v275 = &v316 - v330;
  sub_1CA948B68();

  v276 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v277 = sub_1CA2F9F14(v320, v319, v269, v271, 0, 0, v272, v275);
  v278 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v266 + 152) = sub_1CA65DD78(0xD00000000000003ELL, v322 | 0x8000000000000000, v277);
  *&v322 = "p Left),WFPercentageTextOffset";
  v279 = sub_1CA94C438();
  v319 = v280;
  v320 = v279;
  v318 = sub_1CA94C438();
  v282 = v281;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v318);
  v283 = v331;
  sub_1CA948D98();
  v284 = [v273 bundleURL];
  MEMORY[0x1EEE9AC00](v284);
  v285 = v330;
  sub_1CA948B68();

  v286 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v287 = sub_1CA2F9F14(v320, v319, v318, v282, 0, 0, &v316 - v283, &v316 - v285);
  v288 = objc_allocWithZone(WFActionParameterSummaryValue);
  v289 = sub_1CA65DD78(0xD000000000000034, v322 | 0x8000000000000000, v287);
  v290 = v326;
  *(v326 + 160) = v289;
  *&v322 = "p Left),WFTextOffset";
  v291 = sub_1CA94C438();
  v319 = v292;
  v320 = v291;
  v293 = sub_1CA94C438();
  v318 = v294;
  v321 = &v316;
  MEMORY[0x1EEE9AC00](v293);
  sub_1CA948D98();
  v295 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v295);
  sub_1CA948B68();

  v296 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v297 = sub_1CA2F9F14(v320, v319, v293, v318, 0, 0, &v316 - v283, &v316 - v285);
  v298 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v290 + 168) = sub_1CA65DD78(0xD00000000000003FLL, v322 | 0x8000000000000000, v297);
  *&v322 = "p Right),WFPercentageTextOffset";
  v299 = sub_1CA94C438();
  v301 = v300;
  v302 = sub_1CA94C438();
  v304 = v303;
  MEMORY[0x1EEE9AC00](v302);
  v305 = &v316 - v331;
  sub_1CA948D98();
  v306 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v306);
  v307 = &v316 - v330;
  sub_1CA948B68();

  v308 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v309 = sub_1CA2F9F14(v299, v301, v302, v304, 0, 0, v305, v307);
  v310 = objc_allocWithZone(WFActionParameterSummaryValue);
  v311 = sub_1CA65DD78(0xD000000000000035, v322 | 0x8000000000000000, v309);
  *(v326 + 176) = v311;
  v312 = v323;
  v313 = sub_1CA65AF90();
  v314 = v325;
  *(v325 + 424) = v312;
  *(v314 + 400) = v313;
  type metadata accessor for Key(0);
  sub_1CA34FBC4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA34A0CC()
{
  v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v762 = swift_allocObject();
  *(v762 + 16) = xmmword_1CA983CE0;
  v761 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v758 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  v750 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"AutocapitalizationType";
  *(inited + 40) = 0x7364726F57;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 64) = v1;
  *(inited + 72) = @"Class";
  v751 = 0xD000000000000014;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CA99B500;
  *(inited + 104) = v1;
  *(inited + 112) = @"Key";
  *(inited + 120) = 0x747865544657;
  *(inited + 128) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"Label";
  v2 = @"AutocapitalizationType";
  v757 = @"Class";
  v756 = @"Key";
  v755 = @"Label";
  v3 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v764 = v11;
  v768 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v722 - v768;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v766 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v765 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v767 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v722 - v767;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v12, v16);
  v763 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 184) = v763;
  *(inited + 160) = v18;
  _s3__C3KeyVMa_0(0);
  v760 = v19;
  v759 = sub_1CA34FBC4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v762 + 32) = sub_1CA2F864C();
  v20 = swift_initStackObject();
  *(v20 + 16) = v750;
  v22 = v756;
  v21 = v757;
  *(v20 + 32) = v757;
  *(v20 + 40) = 0xD000000000000019;
  *(v20 + 48) = 0x80000001CA99B030;
  v23 = MEMORY[0x1E69E6158];
  *(v20 + 64) = MEMORY[0x1E69E6158];
  *(v20 + 72) = v22;
  *(v20 + 80) = 0x6567616D494657;
  *(v20 + 88) = 0xE700000000000000;
  v24 = v755;
  *(v20 + 104) = v23;
  *(v20 + 112) = v24;
  v25 = v24;
  v749 = v21;
  v753 = v22;
  v755 = v25;
  v756 = sub_1CA94C438();
  *&v754 = v26;
  v27 = sub_1CA94C438();
  v29 = v28;
  v757 = &v722;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v722 - v768;
  sub_1CA948D98();
  v31 = v766;
  v32 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v722 - v767;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 120) = sub_1CA2F9F14(v756, v754, v27, v29, 0, 0, v30, v33);
  v35 = v763;
  *(v20 + 144) = v763;
  *(v20 + 152) = @"Placeholder";
  v756 = @"Placeholder";
  v36 = sub_1CA94C438();
  *&v754 = v37;
  v38 = sub_1CA94C438();
  v40 = v39;
  v757 = &v722;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v722 - v768;
  sub_1CA948D98();
  v42 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v722 - v767;
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v36, v754, v38, v40, 0, 0, v41, v43);
  *(v20 + 184) = v35;
  *(v20 + 160) = v45;
  sub_1CA94C1E8();
  *(v762 + 40) = sub_1CA2F864C();
  v46 = swift_initStackObject();
  v754 = xmmword_1CA981380;
  *(v46 + 16) = xmmword_1CA981380;
  v739 = 0x80000001CA99C4A0;
  v47 = v749;
  *(v46 + 32) = v749;
  *(v46 + 40) = 0xD000000000000016;
  *(v46 + 48) = 0x80000001CA99C4A0;
  v48 = MEMORY[0x1E69E6158];
  *(v46 + 64) = MEMORY[0x1E69E6158];
  *(v46 + 72) = @"DefaultValue";
  *(v46 + 80) = 0x7265746E6543;
  *(v46 + 88) = 0xE600000000000000;
  *(v46 + 104) = v48;
  *(v46 + 112) = @"ItemIconNames";
  v49 = v46;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *&v752 = v49;
  v49[15] = &unk_1F49F5048;
  v49[18] = v50;
  v49[19] = @"Items";
  v757 = swift_allocObject();
  *(v757 + 1) = xmmword_1CA983CF0;
  v51 = v47;
  v52 = @"DefaultValue";
  v53 = @"Items";
  v54 = v51;
  v55 = v52;
  v56 = v53;
  v57 = @"ItemIconNames";
  v749 = v54;
  v741 = v55;
  v740 = v56;
  *&v747 = sub_1CA94C438();
  *&v746 = v58;
  v59 = sub_1CA94C438();
  v61 = v60;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v768;
  sub_1CA948D98();
  v63 = v766;
  v64 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v722 - v767;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v747, v746, v59, v61, 0, 0, &v722 - v62, v65);
  v68 = v757;
  v757[4] = v67;
  *&v747 = sub_1CA94C438();
  *&v746 = v69;
  v70 = sub_1CA94C438();
  v744 = v71;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v722 - v62;
  sub_1CA948D98();
  v73 = v63;
  v74 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = v767;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 40) = sub_1CA2F9F14(v747, v746, v70, v744, 0, 0, v72, &v722 - v75);
  *&v747 = sub_1CA94C438();
  *&v746 = v77;
  v78 = sub_1CA94C438();
  v744 = v79;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v78);
  v80 = v768;
  sub_1CA948D98();
  v81 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v747, v746, v78, v744, 0, 0, &v722 - v80, &v722 - v75);
  v757[6] = v83;
  *&v747 = sub_1CA94C438();
  *&v746 = v84;
  v85 = sub_1CA94C438();
  v744 = v86;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948D98();
  v87 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v767;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v747, v746, v85, v744, 0, 0, &v722 - v80, &v722 - v88);
  v91 = v757;
  v757[7] = v90;
  *&v747 = sub_1CA94C438();
  *&v746 = v92;
  v93 = sub_1CA94C438();
  v744 = v94;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v93);
  v95 = v768;
  sub_1CA948D98();
  v96 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v91 + 64) = sub_1CA2F9F14(v747, v746, v93, v744, 0, 0, &v722 - v95, &v722 - v88);
  *&v747 = sub_1CA94C438();
  *&v746 = v98;
  v99 = sub_1CA94C438();
  v744 = v100;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v722 - v95;
  sub_1CA948D98();
  v102 = v766;
  v103 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v747, v746, v99, v744, 0, 0, v101, &v722 - v88);
  v106 = v757;
  v757[9] = v105;
  *&v747 = sub_1CA94C438();
  *&v746 = v107;
  v108 = sub_1CA94C438();
  v744 = v109;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v108);
  v110 = v768;
  sub_1CA948D98();
  v111 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 80) = sub_1CA2F9F14(v747, v746, v108, v744, 0, 0, &v722 - v110, &v722 - v88);
  *&v747 = sub_1CA94C438();
  *&v746 = v113;
  v114 = sub_1CA94C438();
  v744 = v115;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v722 - v110;
  sub_1CA948D98();
  v117 = v766;
  v118 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v747, v746, v114, v744, 0, 0, v116, &v722 - v88);
  v121 = v757;
  v757[11] = v120;
  *&v747 = sub_1CA94C438();
  *&v746 = v122;
  v123 = sub_1CA94C438();
  v744 = v124;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v123);
  v125 = v768;
  sub_1CA948D98();
  v126 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v767;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 96) = sub_1CA2F9F14(v747, v746, v123, v744, 0, 0, &v722 - v125, &v722 - v127);
  *&v747 = sub_1CA94C438();
  *&v746 = v129;
  v130 = sub_1CA94C438();
  v744 = v131;
  *&v748 = &v722;
  MEMORY[0x1EEE9AC00](v130);
  v132 = &v722 - v125;
  sub_1CA948D98();
  v133 = v766;
  v134 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v747, v746, v130, v744, 0, 0, v132, &v722 - v127);
  v137 = v757;
  v757[13] = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v738 = v138;
  v139 = v752;
  *(v752 + 160) = v137;
  v140 = v753;
  *(v139 + 184) = v138;
  *(v139 + 192) = v140;
  strcpy((v139 + 200), "WFTextPosition");
  *(v139 + 215) = -18;
  v141 = v755;
  *(v139 + 224) = MEMORY[0x1E69E6158];
  *(v139 + 232) = v141;
  *&v748 = v140;
  v757 = v141;
  v753 = sub_1CA94C438();
  v143 = v142;
  v144 = sub_1CA94C438();
  v146 = v145;
  v755 = &v722;
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v722 - v768;
  sub_1CA948D98();
  v148 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v722 - v767;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v753, v143, v144, v146, 0, 0, v147, v149);
  *(v139 + 264) = v763;
  *(v139 + 240) = v151;
  sub_1CA94C1E8();
  *(v762 + 48) = sub_1CA2F864C();
  v152 = swift_initStackObject();
  v752 = xmmword_1CA981300;
  *(v152 + 16) = xmmword_1CA981300;
  *(v152 + 32) = @"AllowsDecimalNumbers";
  v153 = MEMORY[0x1E69E6370];
  *(v152 + 40) = 1;
  v154 = v749;
  *(v152 + 64) = v153;
  *(v152 + 72) = v154;
  v753 = 0x80000001CA99C180;
  *(v152 + 80) = 0xD000000000000016;
  *(v152 + 88) = 0x80000001CA99C180;
  *(v152 + 104) = MEMORY[0x1E69E6158];
  *(v152 + 112) = @"Description";
  v155 = @"AllowsDecimalNumbers";
  v156 = @"Description";
  v157 = v155;
  v158 = v156;
  v742 = v154;
  v732 = v157;
  v733 = v158;
  v749 = sub_1CA94C438();
  *&v747 = v159;
  v160 = sub_1CA94C438();
  *&v746 = v161;
  v755 = &v722;
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v722 - v768;
  sub_1CA948D98();
  v163 = v766;
  v164 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = v767;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v152 + 120) = sub_1CA2F9F14(v749, v747, v160, v746, 0, 0, v162, &v722 - v165);
  v167 = v748;
  *(v152 + 144) = v763;
  *(v152 + 152) = v167;
  *(v152 + 160) = 0x58747865544657;
  *(v152 + 168) = 0xE700000000000000;
  v168 = v757;
  *(v152 + 184) = MEMORY[0x1E69E6158];
  *(v152 + 192) = v168;
  v734 = v167;
  v735 = v168;
  v755 = sub_1CA94C438();
  v749 = v169;
  v170 = sub_1CA94C438();
  *&v748 = v171;
  v757 = &v722;
  MEMORY[0x1EEE9AC00](v170);
  v172 = v768;
  sub_1CA948D98();
  v173 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v152 + 200) = sub_1CA2F9F14(v755, v749, v170, v748, 0, 0, &v722 - v172, &v722 - v165);
  v175 = v763;
  v176 = v756;
  *(v152 + 224) = v763;
  *(v152 + 232) = v176;
  *&v746 = v176;
  v177 = sub_1CA94C438();
  v755 = v178;
  v756 = v177;
  v179 = sub_1CA94C438();
  v749 = v180;
  v757 = &v722;
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948D98();
  v181 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v722 - v767;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v152 + 240) = sub_1CA2F9F14(v756, v755, v179, v749, 0, 0, &v722 - v172, v182);
  *(v152 + 264) = v175;
  *(v152 + 272) = @"RequiredResources";
  v757 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v184 = swift_allocObject();
  v748 = xmmword_1CA97EDF0;
  *(v184 + 16) = xmmword_1CA97EDF0;
  v737 = 0x80000001CA9939F0;
  v743 = 0x80000001CA993570;
  v744 = 0x80000001CA993590;
  v731 = @"RequiredResources";
  v185 = MEMORY[0x1E69E6158];
  *(v184 + 32) = sub_1CA94C1E8();
  *(v184 + 40) = sub_1CA94C1E8();
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v756 = v186;
  *(v152 + 280) = v184;
  *(v152 + 304) = v186;
  *(v152 + 312) = @"TextAlignment";
  *(v152 + 344) = v185;
  *(v152 + 320) = 0x7468676952;
  *(v152 + 328) = 0xE500000000000000;
  v736 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v762 + 56) = sub_1CA2F864C();
  v187 = swift_allocObject();
  v747 = xmmword_1CA981400;
  *(v187 + 16) = xmmword_1CA981400;
  v188 = v732;
  *(v187 + 32) = v732;
  *(v187 + 40) = 1;
  v189 = v742;
  *(v187 + 64) = MEMORY[0x1E69E6370];
  *(v187 + 72) = v189;
  v749 = 0x80000001CA9A0B80;
  v755 = 0xD000000000000011;
  *(v187 + 80) = 0xD000000000000011;
  *(v187 + 88) = 0x80000001CA9A0B80;
  v190 = v733;
  *(v187 + 104) = v185;
  *(v187 + 112) = v190;
  v730 = v189;
  v742 = v188;
  v733 = v190;
  v191 = sub_1CA94C438();
  v728 = v192;
  v729 = v191;
  v727 = sub_1CA94C438();
  v194 = v193;
  v732 = &v722;
  MEMORY[0x1EEE9AC00](v727);
  v195 = v768;
  sub_1CA948D98();
  v196 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = v767;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v187 + 120) = sub_1CA2F9F14(v729, v728, v727, v194, 0, 0, &v722 - v195, &v722 - v197);
  v199 = v734;
  v200 = v735;
  *(v187 + 144) = v763;
  *(v187 + 152) = v199;
  *(v187 + 160) = v755;
  *(v187 + 168) = 0x80000001CA9A6B50;
  *(v187 + 184) = MEMORY[0x1E69E6158];
  *(v187 + 192) = v200;
  v732 = v199;
  v734 = v200;
  v201 = sub_1CA94C438();
  v728 = v202;
  v729 = v201;
  v203 = sub_1CA94C438();
  v727 = v204;
  v735 = &v722;
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948D98();
  v205 = v766;
  v206 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v187 + 200) = sub_1CA2F9F14(v729, v728, v203, v727, 0, 0, &v722 - v195, &v722 - v197);
  v208 = v763;
  v209 = v746;
  *(v187 + 224) = v763;
  *(v187 + 232) = v209;
  *&v746 = v209;
  v210 = sub_1CA94C438();
  v728 = v211;
  v729 = v210;
  v212 = sub_1CA94C438();
  v214 = v213;
  v735 = &v722;
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v722 - v768;
  sub_1CA948D98();
  v216 = [v205 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v722 - v767;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v187 + 240) = sub_1CA2F9F14(v729, v728, v212, v214, 0, 0, v215, v217);
  v219 = v731;
  *(v187 + 264) = v208;
  *(v187 + 272) = v219;
  v220 = swift_allocObject();
  *(v220 + 16) = v748;
  v731 = v219;
  v221 = MEMORY[0x1E69E6158];
  *(v220 + 32) = sub_1CA94C1E8();
  *(v220 + 40) = sub_1CA94C1E8();
  *(v187 + 304) = v756;
  *(v187 + 280) = v220;
  sub_1CA94C1E8();
  *(v762 + 64) = sub_1CA2F864C();
  v222 = swift_allocObject();
  *(v222 + 16) = v752;
  *(v222 + 32) = v742;
  *(v222 + 40) = 1;
  v223 = v730;
  *(v222 + 64) = MEMORY[0x1E69E6370];
  *(v222 + 72) = v223;
  *(v222 + 80) = 0xD000000000000016;
  *(v222 + 88) = v753;
  v224 = v733;
  *(v222 + 104) = v221;
  *(v222 + 112) = v224;
  v735 = v223;
  v733 = v224;
  v225 = sub_1CA94C438();
  v729 = v226;
  v227 = sub_1CA94C438();
  v229 = v228;
  v730 = &v722;
  MEMORY[0x1EEE9AC00](v227);
  v230 = v768;
  sub_1CA948D98();
  v231 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v231);
  v232 = &v722 - v767;
  sub_1CA948B68();

  v233 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v222 + 120) = sub_1CA2F9F14(v225, v729, v227, v229, 0, 0, &v722 - v230, v232);
  v234 = v732;
  *(v222 + 144) = v763;
  *(v222 + 152) = v234;
  *(v222 + 160) = 0x59747865544657;
  *(v222 + 168) = 0xE700000000000000;
  v235 = v734;
  *(v222 + 184) = MEMORY[0x1E69E6158];
  *(v222 + 192) = v235;
  v732 = v234;
  v734 = v235;
  v236 = sub_1CA94C438();
  v728 = v237;
  v729 = v236;
  v238 = sub_1CA94C438();
  v727 = v239;
  v730 = &v722;
  MEMORY[0x1EEE9AC00](v238);
  v240 = &v722 - v230;
  sub_1CA948D98();
  v241 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v241);
  v242 = v767;
  sub_1CA948B68();

  v243 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v222 + 200) = sub_1CA2F9F14(v729, v728, v238, v727, 0, 0, v240, &v722 - v242);
  v244 = v763;
  v245 = v746;
  *(v222 + 224) = v763;
  *(v222 + 232) = v245;
  v246 = sub_1CA94C438();
  v728 = v247;
  v729 = v246;
  v248 = sub_1CA94C438();
  v727 = v249;
  v730 = &v722;
  MEMORY[0x1EEE9AC00](v248);
  v250 = &v722 - v768;
  sub_1CA948D98();
  v251 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253 = sub_1CA2F9F14(v729, v728, v248, v727, 0, 0, v250, &v722 - v242);
  v254 = v731;
  *(v222 + 240) = v253;
  *(v222 + 264) = v244;
  *(v222 + 272) = v254;
  v255 = swift_allocObject();
  *(v255 + 16) = v748;
  v731 = v254;
  v256 = MEMORY[0x1E69E6158];
  *(v255 + 32) = sub_1CA94C1E8();
  *(v255 + 40) = sub_1CA94C1E8();
  *(v222 + 280) = v255;
  v257 = v736;
  *(v222 + 304) = v756;
  *(v222 + 312) = v257;
  *(v222 + 344) = v256;
  v258 = v256;
  *(v222 + 320) = 0x7468676952;
  *(v222 + 328) = 0xE500000000000000;
  v736 = v257;
  sub_1CA94C1E8();
  *(v762 + 72) = sub_1CA2F864C();
  v259 = swift_allocObject();
  *(v259 + 16) = v752;
  *(v259 + 32) = v742;
  *(v259 + 40) = 1;
  v260 = v735;
  *(v259 + 64) = MEMORY[0x1E69E6370];
  *(v259 + 72) = v260;
  v261 = v755;
  v262 = v749;
  *(v259 + 80) = v755;
  *(v259 + 88) = v262;
  v263 = v733;
  *(v259 + 104) = v258;
  *(v259 + 112) = v263;
  v730 = v260;
  v735 = v263;
  v742 = sub_1CA94C438();
  v733 = v264;
  v265 = sub_1CA94C438();
  v267 = v266;
  *&v752 = &v722;
  MEMORY[0x1EEE9AC00](v265);
  v268 = &v722 - v768;
  sub_1CA948D98();
  v269 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v269);
  v270 = &v722 - v767;
  sub_1CA948B68();

  v271 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v259 + 120) = sub_1CA2F9F14(v742, v733, v265, v267, 0, 0, v268, v270);
  v272 = v732;
  *(v259 + 144) = v763;
  *(v259 + 152) = v272;
  *(v259 + 160) = v261;
  *(v259 + 168) = 0x80000001CA9A6DF0;
  v273 = v734;
  *(v259 + 184) = MEMORY[0x1E69E6158];
  *(v259 + 192) = v273;
  v742 = v272;
  *&v752 = v273;
  v274 = sub_1CA94C438();
  v732 = v275;
  v733 = v274;
  v276 = sub_1CA94C438();
  v729 = v277;
  v734 = &v722;
  MEMORY[0x1EEE9AC00](v276);
  v278 = &v722 - v768;
  sub_1CA948D98();
  v279 = v766;
  v280 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v280);
  v281 = v767;
  sub_1CA948B68();

  v282 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v259 + 200) = sub_1CA2F9F14(v733, v732, v276, v729, 0, 0, v278, &v722 - v281);
  v283 = v763;
  v284 = v746;
  *(v259 + 224) = v763;
  *(v259 + 232) = v284;
  v285 = sub_1CA94C438();
  v733 = v286;
  v734 = v285;
  v287 = sub_1CA94C438();
  v732 = v288;
  *&v746 = &v722;
  MEMORY[0x1EEE9AC00](v287);
  v289 = &v722 - v768;
  sub_1CA948D98();
  v290 = [v279 bundleURL];
  MEMORY[0x1EEE9AC00](v290);
  sub_1CA948B68();

  v291 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v259 + 240) = sub_1CA2F9F14(v734, v733, v287, v732, 0, 0, v289, &v722 - v281);
  v292 = v731;
  *(v259 + 264) = v283;
  *(v259 + 272) = v292;
  v293 = swift_allocObject();
  *(v293 + 16) = v748;
  v732 = v292;
  v294 = MEMORY[0x1E69E6158];
  *(v293 + 32) = sub_1CA94C1E8();
  *(v293 + 40) = sub_1CA94C1E8();
  *(v259 + 280) = v293;
  v295 = v736;
  *(v259 + 304) = v756;
  *(v259 + 312) = v295;
  *(v259 + 344) = v294;
  *(v259 + 320) = 0x7468676952;
  *(v259 + 328) = 0xE500000000000000;
  *&v746 = v295;
  sub_1CA94C1E8();
  *(v762 + 80) = sub_1CA2F864C();
  v296 = swift_allocObject();
  *(v296 + 16) = v747;
  v297 = v730;
  *(v296 + 32) = v730;
  *(v296 + 40) = 0xD000000000000016;
  *(v296 + 48) = v753;
  v298 = v741;
  *(v296 + 64) = v294;
  *(v296 + 72) = v298;
  v299 = MEMORY[0x1E69E6530];
  *(v296 + 80) = 0;
  v300 = v735;
  *(v296 + 104) = v299;
  *(v296 + 112) = v300;
  v731 = v297;
  v741 = v298;
  v733 = v300;
  v301 = sub_1CA94C438();
  v734 = v302;
  v735 = v301;
  v303 = sub_1CA94C438();
  v730 = v304;
  v736 = &v722;
  MEMORY[0x1EEE9AC00](v303);
  v305 = v768;
  sub_1CA948D98();
  v306 = v766;
  v307 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v307);
  v308 = &v722 - v767;
  sub_1CA948B68();

  v309 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v296 + 120) = sub_1CA2F9F14(v735, v734, v303, v730, 0, 0, &v722 - v305, v308);
  v310 = v763;
  v311 = v742;
  *(v296 + 144) = v763;
  *(v296 + 152) = v311;
  strcpy((v296 + 160), "WFTextOffset");
  *(v296 + 173) = 0;
  *(v296 + 174) = -5120;
  v312 = v752;
  *(v296 + 184) = MEMORY[0x1E69E6158];
  *(v296 + 192) = v312;
  v734 = v311;
  v742 = v312;
  v313 = sub_1CA94C438();
  v735 = v314;
  v736 = v313;
  v315 = sub_1CA94C438();
  v317 = v316;
  *&v752 = &v722;
  MEMORY[0x1EEE9AC00](v315);
  v318 = &v722 - v305;
  sub_1CA948D98();
  v319 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v319);
  v320 = &v722 - v767;
  sub_1CA948B68();

  v321 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v296 + 200) = sub_1CA2F9F14(v736, v735, v315, v317, 0, 0, v318, v320);
  v322 = v732;
  *(v296 + 224) = v310;
  *(v296 + 232) = v322;
  v323 = swift_allocObject();
  v752 = xmmword_1CA9813C0;
  *(v323 + 16) = xmmword_1CA9813C0;
  v732 = v322;
  v324 = MEMORY[0x1E69E6158];
  *(v323 + 32) = sub_1CA94C1E8();
  *(v323 + 40) = sub_1CA94C1E8();
  *(v323 + 48) = sub_1CA94C1E8();
  *(v296 + 240) = v323;
  v325 = v746;
  *(v296 + 264) = v756;
  *(v296 + 272) = v325;
  *(v296 + 304) = v324;
  *(v296 + 280) = 0x7468676952;
  *(v296 + 288) = 0xE500000000000000;
  v736 = v325;
  sub_1CA94C1E8();
  *(v762 + 88) = sub_1CA2F864C();
  v326 = swift_allocObject();
  *(v326 + 16) = v747;
  v327 = v731;
  v328 = v755;
  *(v326 + 32) = v731;
  *(v326 + 40) = v328;
  *(v326 + 48) = v749;
  v329 = v741;
  *(v326 + 64) = v324;
  *(v326 + 72) = v329;
  v330 = MEMORY[0x1E69E63B0];
  *(v326 + 80) = 0x3FB999999999999ALL;
  v331 = v733;
  *(v326 + 104) = v330;
  *(v326 + 112) = v331;
  v735 = v327;
  v741 = v329;
  *&v746 = v331;
  v332 = sub_1CA94C438();
  v730 = v333;
  v731 = v332;
  v334 = sub_1CA94C438();
  v729 = v335;
  v733 = &v722;
  MEMORY[0x1EEE9AC00](v334);
  v336 = v768;
  sub_1CA948D98();
  v337 = v766;
  v338 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v338);
  v339 = &v722 - v767;
  sub_1CA948B68();

  v340 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v341 = sub_1CA2F9F14(v731, v730, v334, v729, 0, 0, &v722 - v336, v339);
  v342 = v734;
  *(v326 + 120) = v341;
  v343 = v763;
  *(v326 + 144) = v763;
  *(v326 + 152) = v342;
  *(v326 + 160) = 0xD000000000000016;
  *(v326 + 168) = 0x80000001CA9A7310;
  v344 = v742;
  *(v326 + 184) = MEMORY[0x1E69E6158];
  *(v326 + 192) = v344;
  v733 = v342;
  v734 = v344;
  v345 = sub_1CA94C438();
  v730 = v346;
  v731 = v345;
  v347 = sub_1CA94C438();
  v349 = v348;
  v742 = &v722;
  MEMORY[0x1EEE9AC00](v347);
  v350 = &v722 - v336;
  sub_1CA948D98();
  v351 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v351);
  v352 = &v722 - v767;
  sub_1CA948B68();

  v353 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v326 + 200) = sub_1CA2F9F14(v731, v730, v347, v349, 0, 0, v350, v352);
  *(v326 + 224) = v343;
  v354 = v732;
  *(v326 + 232) = v732;
  v355 = swift_allocObject();
  *(v355 + 16) = v752;
  v742 = v354;
  v356 = MEMORY[0x1E69E6158];
  *(v355 + 32) = sub_1CA94C1E8();
  *(v355 + 40) = sub_1CA94C1E8();
  *(v355 + 48) = sub_1CA94C1E8();
  *(v326 + 240) = v355;
  v357 = v736;
  *(v326 + 264) = v756;
  *(v326 + 272) = v357;
  *(v326 + 304) = v356;
  *(v326 + 280) = 0x7468676952;
  *(v326 + 288) = 0xE500000000000000;
  v736 = v357;
  sub_1CA94C1E8();
  *(v762 + 96) = sub_1CA2F864C();
  v358 = swift_allocObject();
  *(v358 + 16) = v752;
  v360 = v734;
  v359 = v735;
  *(v358 + 32) = v735;
  *(v358 + 40) = 0xD000000000000015;
  *(v358 + 48) = 0x80000001CA9A7350;
  v361 = v733;
  *(v358 + 64) = v356;
  *(v358 + 72) = v361;
  *(v358 + 80) = 0x746E6F464657;
  *(v358 + 88) = 0xE600000000000000;
  *(v358 + 104) = v356;
  *(v358 + 112) = v360;
  v732 = v359;
  v735 = v361;
  v731 = v360;
  v362 = sub_1CA94C438();
  v733 = v363;
  v364 = sub_1CA94C438();
  v366 = v365;
  v734 = &v722;
  MEMORY[0x1EEE9AC00](v364);
  v367 = &v722 - v768;
  sub_1CA948D98();
  v368 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v368);
  v369 = &v722 - v767;
  sub_1CA948B68();

  v370 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v371 = sub_1CA2F9F14(v362, v733, v364, v366, 0, 0, v367, v369);
  *(v358 + 144) = v763;
  *(v358 + 120) = v371;
  sub_1CA94C1E8();
  *(v762 + 104) = sub_1CA2F864C();
  v372 = swift_allocObject();
  *(v372 + 16) = v747;
  v373 = v732;
  *(v372 + 32) = v732;
  *(v372 + 40) = 0xD000000000000016;
  *(v372 + 48) = v753;
  v374 = v741;
  *(v372 + 64) = MEMORY[0x1E69E6158];
  *(v372 + 72) = v374;
  *(v372 + 80) = 36;
  v375 = v746;
  *(v372 + 104) = MEMORY[0x1E69E6530];
  *(v372 + 112) = v375;
  v734 = v373;
  v733 = v374;
  v732 = v375;
  v741 = sub_1CA94C438();
  v730 = v376;
  v377 = sub_1CA94C438();
  v379 = v378;
  *&v746 = &v722;
  MEMORY[0x1EEE9AC00](v377);
  v380 = &v722 - v768;
  sub_1CA948D98();
  v381 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v381);
  v382 = v767;
  sub_1CA948B68();

  v383 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v372 + 120) = sub_1CA2F9F14(v741, v730, v377, v379, 0, 0, v380, &v722 - v382);
  v384 = v763;
  v385 = v735;
  *(v372 + 144) = v763;
  *(v372 + 152) = v385;
  *(v372 + 160) = 0x6953746E6F464657;
  *(v372 + 168) = 0xEA0000000000657ALL;
  v386 = v731;
  *(v372 + 184) = MEMORY[0x1E69E6158];
  *(v372 + 192) = v386;
  v735 = v385;
  v741 = v386;
  v387 = sub_1CA94C438();
  v730 = v388;
  v731 = v387;
  v389 = sub_1CA94C438();
  v391 = v390;
  *&v746 = &v722;
  MEMORY[0x1EEE9AC00](v389);
  v392 = &v722 - v768;
  sub_1CA948D98();
  v393 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v393);
  sub_1CA948B68();

  v394 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v372 + 200) = sub_1CA2F9F14(v731, v730, v389, v391, 0, 0, v392, &v722 - v382);
  *(v372 + 224) = v384;
  v395 = v742;
  *(v372 + 232) = v742;
  v396 = swift_allocObject();
  v746 = xmmword_1CA981310;
  *(v396 + 16) = xmmword_1CA981310;
  v730 = v395;
  v397 = MEMORY[0x1E69E6158];
  *(v396 + 32) = sub_1CA94C1E8();
  *(v372 + 240) = v396;
  v398 = v736;
  *(v372 + 264) = v756;
  *(v372 + 272) = v398;
  *(v372 + 304) = v397;
  *(v372 + 280) = 0x7468676952;
  *(v372 + 288) = 0xE500000000000000;
  v742 = v398;
  sub_1CA94C1E8();
  *(v762 + 112) = sub_1CA2F864C();
  v399 = swift_allocObject();
  *(v399 + 16) = v747;
  v401 = v733;
  v400 = v734;
  v402 = v755;
  *(v399 + 32) = v734;
  *(v399 + 40) = v402;
  *(v399 + 48) = v749;
  *(v399 + 64) = v397;
  *(v399 + 72) = v401;
  *(v399 + 80) = 0x3FB999999999999ALL;
  v403 = v732;
  *(v399 + 104) = MEMORY[0x1E69E63B0];
  *(v399 + 112) = v403;
  v736 = v400;
  v731 = v401;
  v734 = v403;
  v732 = sub_1CA94C438();
  v729 = v404;
  v405 = sub_1CA94C438();
  v407 = v406;
  v733 = &v722;
  MEMORY[0x1EEE9AC00](v405);
  v408 = &v722 - v768;
  sub_1CA948D98();
  v409 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v409);
  v410 = v767;
  sub_1CA948B68();

  v411 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v399 + 120) = sub_1CA2F9F14(v732, v729, v405, v407, 0, 0, v408, &v722 - v410);
  v412 = v763;
  v413 = v735;
  *(v399 + 144) = v763;
  *(v399 + 152) = v413;
  *(v399 + 160) = v751;
  *(v399 + 168) = 0x80000001CA9A7530;
  v414 = v741;
  *(v399 + 184) = MEMORY[0x1E69E6158];
  *(v399 + 192) = v414;
  v732 = v413;
  v733 = v414;
  v735 = sub_1CA94C438();
  v729 = v415;
  v416 = sub_1CA94C438();
  v418 = v417;
  v741 = &v722;
  MEMORY[0x1EEE9AC00](v416);
  v419 = &v722 - v768;
  sub_1CA948D98();
  v420 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v420);
  sub_1CA948B68();

  v421 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v399 + 200) = sub_1CA2F9F14(v735, v729, v416, v418, 0, 0, v419, &v722 - v410);
  v422 = v730;
  *(v399 + 224) = v412;
  *(v399 + 232) = v422;
  v423 = swift_allocObject();
  *(v423 + 16) = v746;
  v735 = v422;
  v424 = MEMORY[0x1E69E6158];
  *(v423 + 32) = sub_1CA94C1E8();
  *(v399 + 240) = v423;
  v425 = v742;
  *(v399 + 264) = v756;
  *(v399 + 272) = v425;
  *(v399 + 304) = v424;
  *(v399 + 280) = 0x7468676952;
  *(v399 + 288) = 0xE500000000000000;
  v741 = v425;
  sub_1CA94C1E8();
  *(v762 + 120) = sub_1CA2F864C();
  v426 = swift_allocObject();
  *(v426 + 16) = v754;
  v427 = v736;
  *(v426 + 32) = v736;
  *(v426 + 40) = 0xD000000000000016;
  *(v426 + 48) = v739;
  v428 = v731;
  *(v426 + 64) = v424;
  *(v426 + 72) = v428;
  *(v426 + 80) = 0x7265746E6543;
  *(v426 + 88) = 0xE600000000000000;
  v429 = v734;
  *(v426 + 104) = v424;
  *(v426 + 112) = v429;
  v730 = v427;
  v736 = v428;
  v734 = v429;
  v731 = sub_1CA94C438();
  v729 = v430;
  v431 = sub_1CA94C438();
  v433 = v432;
  v742 = &v722;
  MEMORY[0x1EEE9AC00](v431);
  v434 = v768;
  sub_1CA948D98();
  v435 = v766;
  v436 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v436);
  v437 = &v722 - v767;
  sub_1CA948B68();

  v438 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v426 + 120) = sub_1CA2F9F14(v731, v729, v431, v433, 0, 0, &v722 - v434, v437);
  v439 = v740;
  *(v426 + 144) = v763;
  *(v426 + 152) = v439;
  v742 = swift_allocObject();
  *(v742 + 1) = xmmword_1CA981470;
  v440 = sub_1CA94C438();
  v728 = v441;
  v729 = v440;
  v442 = sub_1CA94C438();
  v444 = v443;
  v731 = &v722;
  MEMORY[0x1EEE9AC00](v442);
  sub_1CA948D98();
  v445 = [v435 bundleURL];
  MEMORY[0x1EEE9AC00](v445);
  v446 = &v722 - v767;
  sub_1CA948B68();

  v447 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v448 = sub_1CA2F9F14(v729, v728, v442, v444, 0, 0, &v722 - v434, v446);
  v449 = v742;
  v742[4] = v448;
  v450 = sub_1CA94C438();
  v728 = v451;
  v729 = v450;
  v452 = sub_1CA94C438();
  v727 = v453;
  v731 = &v722;
  MEMORY[0x1EEE9AC00](v452);
  v454 = v768;
  sub_1CA948D98();
  v455 = v766;
  v456 = [v766 bundleURL];
  v726 = &v722;
  MEMORY[0x1EEE9AC00](v456);
  v457 = v767;
  sub_1CA948B68();

  v458 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v449 + 40) = sub_1CA2F9F14(v729, v728, v452, v727, 0, 0, &v722 - v454, &v722 - v457);
  v459 = sub_1CA94C438();
  v728 = v460;
  v729 = v459;
  v461 = sub_1CA94C438();
  v727 = v462;
  v731 = &v722;
  MEMORY[0x1EEE9AC00](v461);
  sub_1CA948D98();
  v463 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v463);
  sub_1CA948B68();

  v464 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v465 = sub_1CA2F9F14(v729, v728, v461, v727, 0, 0, &v722 - v454, &v722 - v457);
  v466 = v732;
  v467 = v742;
  v742[6] = v465;
  *(v426 + 160) = v467;
  *(v426 + 184) = v738;
  *(v426 + 192) = v466;
  *(v426 + 200) = 0x6C41747865544657;
  *(v426 + 208) = 0xEF746E656D6E6769;
  v468 = v733;
  *(v426 + 224) = MEMORY[0x1E69E6158];
  *(v426 + 232) = v468;
  v732 = v466;
  v742 = v468;
  v731 = sub_1CA94C438();
  v729 = v469;
  v470 = sub_1CA94C438();
  v472 = v471;
  v733 = &v722;
  MEMORY[0x1EEE9AC00](v470);
  v473 = &v722 - v768;
  sub_1CA948D98();
  v474 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v474);
  v475 = &v722 - v767;
  sub_1CA948B68();

  v476 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v477 = sub_1CA2F9F14(v731, v729, v470, v472, 0, 0, v473, v475);
  *(v426 + 264) = v763;
  *(v426 + 240) = v477;
  sub_1CA94C1E8();
  *(v762 + 128) = sub_1CA2F864C();
  v478 = swift_allocObject();
  *(v478 + 16) = v752;
  v731 = 0x80000001CA9A7720;
  v479 = v730;
  *(v478 + 32) = v730;
  *(v478 + 40) = 0xD000000000000016;
  *(v478 + 48) = 0x80000001CA9A7720;
  v480 = MEMORY[0x1E69E6158];
  v481 = v732;
  *(v478 + 64) = MEMORY[0x1E69E6158];
  *(v478 + 72) = v481;
  *(v478 + 80) = 0x6F43747865544657;
  *(v478 + 88) = 0xEB00000000726F6CLL;
  v482 = v742;
  *(v478 + 104) = v480;
  *(v478 + 112) = v482;
  v733 = v479;
  v730 = v481;
  v742 = v482;
  v483 = sub_1CA94C438();
  v729 = v484;
  v485 = sub_1CA94C438();
  v487 = v486;
  v732 = &v722;
  MEMORY[0x1EEE9AC00](v485);
  v488 = v768;
  sub_1CA948D98();
  v489 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v489);
  v490 = &v722 - v767;
  sub_1CA948B68();

  v491 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v492 = sub_1CA2F9F14(v483, v729, v485, v487, 0, 0, &v722 - v488, v490);
  *(v478 + 144) = v763;
  *(v478 + 120) = v492;
  sub_1CA94C1E8();
  *(v762 + 136) = sub_1CA2F864C();
  v493 = swift_allocObject();
  *(v493 + 16) = v754;
  v494 = v733;
  v495 = v734;
  *(v493 + 32) = v733;
  *(v493 + 40) = 0xD000000000000016;
  *(v493 + 48) = v753;
  v496 = v736;
  *(v493 + 64) = MEMORY[0x1E69E6158];
  *(v493 + 72) = v496;
  *(v493 + 80) = 0;
  *(v493 + 104) = MEMORY[0x1E69E6530];
  *(v493 + 112) = v495;
  v732 = v494;
  v733 = v496;
  v734 = v495;
  v497 = sub_1CA94C438();
  v728 = v498;
  v729 = v497;
  v499 = sub_1CA94C438();
  v501 = v500;
  v736 = &v722;
  MEMORY[0x1EEE9AC00](v499);
  v502 = &v722 - v488;
  sub_1CA948D98();
  v503 = v766;
  v504 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v504);
  v505 = &v722 - v767;
  sub_1CA948B68();

  v506 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v493 + 120) = sub_1CA2F9F14(v729, v728, v499, v501, 0, 0, v502, v505);
  v507 = v763;
  v508 = v730;
  *(v493 + 144) = v763;
  *(v493 + 152) = v508;
  strcpy((v493 + 160), "WFTextRotation");
  *(v493 + 175) = -18;
  v509 = v742;
  *(v493 + 184) = MEMORY[0x1E69E6158];
  *(v493 + 192) = v509;
  v729 = v508;
  v730 = v509;
  v510 = sub_1CA94C438();
  v736 = v511;
  v512 = sub_1CA94C438();
  v514 = v513;
  v742 = &v722;
  MEMORY[0x1EEE9AC00](v512);
  v515 = &v722 - v768;
  sub_1CA948D98();
  v516 = [v503 bundleURL];
  MEMORY[0x1EEE9AC00](v516);
  v517 = &v722 - v767;
  sub_1CA948B68();

  v518 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v519 = sub_1CA2F9F14(v510, v736, v512, v514, 0, 0, v515, v517);
  v520 = v741;
  *(v493 + 200) = v519;
  *(v493 + 224) = v507;
  *(v493 + 232) = v520;
  v521 = MEMORY[0x1E69E6158];
  *(v493 + 264) = MEMORY[0x1E69E6158];
  *(v493 + 240) = 0x7468676952;
  *(v493 + 248) = 0xE500000000000000;
  v736 = v520;
  sub_1CA94C1E8();
  *(v762 + 144) = sub_1CA2F864C();
  v522 = swift_allocObject();
  *(v522 + 16) = v750;
  v523 = v732;
  v524 = v733;
  v525 = v755;
  *(v522 + 32) = v732;
  *(v522 + 40) = v525;
  *(v522 + 48) = 0x80000001CA99E620;
  v526 = v521;
  *(v522 + 64) = v521;
  *(v522 + 72) = v524;
  *(v522 + 80) = 0;
  v527 = v729;
  v528 = v730;
  *(v522 + 104) = MEMORY[0x1E69E6370];
  *(v522 + 112) = v527;
  v742 = 0x80000001CA9A7890;
  *(v522 + 120) = v751;
  *(v522 + 128) = 0x80000001CA9A7890;
  *(v522 + 144) = v526;
  *(v522 + 152) = v528;
  v728 = v523;
  v732 = v527;
  v741 = v528;
  v733 = v524;
  v529 = sub_1CA94C438();
  v531 = v530;
  v532 = sub_1CA94C438();
  v534 = v533;
  v730 = &v722;
  MEMORY[0x1EEE9AC00](v532);
  v535 = &v722 - v768;
  sub_1CA948D98();
  v536 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v536);
  v537 = &v722 - v767;
  sub_1CA948B68();

  v538 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v539 = sub_1CA2F9F14(v529, v531, v532, v534, 0, 0, v535, v537);
  *(v522 + 184) = v763;
  *(v522 + 160) = v539;
  sub_1CA94C1E8();
  *(v762 + 152) = sub_1CA2F864C();
  v540 = swift_allocObject();
  *(v540 + 16) = v747;
  v541 = v728;
  *(v540 + 32) = v728;
  *(v540 + 40) = 0xD000000000000016;
  *(v540 + 48) = v753;
  v543 = v733;
  v542 = v734;
  *(v540 + 64) = MEMORY[0x1E69E6158];
  *(v540 + 72) = v543;
  *(v540 + 80) = 0;
  *(v540 + 104) = MEMORY[0x1E69E6530];
  *(v540 + 112) = v542;
  v730 = v541;
  v727 = v543;
  v726 = v542;
  v544 = sub_1CA94C438();
  v733 = v545;
  v734 = v544;
  v546 = sub_1CA94C438();
  v729 = v547;
  *&v747 = &v722;
  MEMORY[0x1EEE9AC00](v546);
  v548 = v768;
  sub_1CA948D98();
  v549 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v549);
  v550 = v767;
  sub_1CA948B68();

  v551 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v540 + 120) = sub_1CA2F9F14(v734, v733, v546, v729, 0, 0, &v722 - v548, &v722 - v550);
  v552 = v732;
  *(v540 + 144) = v763;
  *(v540 + 152) = v552;
  *(v540 + 160) = v755;
  *(v540 + 168) = 0x80000001CA9A7990;
  v553 = v741;
  *(v540 + 184) = MEMORY[0x1E69E6158];
  *(v540 + 192) = v553;
  v728 = v552;
  v729 = v553;
  v741 = sub_1CA94C438();
  v734 = v554;
  v555 = sub_1CA94C438();
  v733 = v556;
  *&v747 = &v722;
  MEMORY[0x1EEE9AC00](v555);
  sub_1CA948D98();
  v557 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v557);
  sub_1CA948B68();

  v558 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v540 + 200) = sub_1CA2F9F14(v741, v734, v555, v733, 0, 0, &v722 - v548, &v722 - v550);
  v559 = v735;
  *(v540 + 224) = v763;
  *(v540 + 232) = v559;
  v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v560 = swift_allocObject();
  *(v560 + 16) = v748;
  v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v561 = swift_allocObject();
  *(v561 + 16) = v750;
  strcpy((v561 + 32), "WFParameterKey");
  *(v561 + 47) = -18;
  strcpy((v561 + 48), "WFSizingMethod");
  *(v561 + 63) = -18;
  v725 = 0xD000000000000013;
  v562 = MEMORY[0x1E69E6158];
  *(v561 + 72) = MEMORY[0x1E69E6158];
  *(v561 + 80) = 0xD000000000000013;
  *(v561 + 88) = v737;
  *(v561 + 96) = 61;
  *(v561 + 104) = 0xE100000000000000;
  *(v561 + 120) = v562;
  *(v561 + 128) = 0xD000000000000010;
  v732 = 0xD000000000000010;
  v563 = v743;
  *(v561 + 136) = v743;
  *(v561 + 144) = 0x6574756C6F736241;
  *(v561 + 152) = 0xE800000000000000;
  *(v561 + 168) = v562;
  *(v561 + 176) = 0x72756F7365524657;
  *(v561 + 216) = v562;
  *(v561 + 184) = 0xEF7373616C436563;
  *(v561 + 192) = 0xD00000000000001BLL;
  *&v747 = 0xD00000000000001BLL;
  v564 = v744;
  *(v561 + 200) = v744;
  v723 = v559;
  *(v560 + 32) = sub_1CA94C1E8();
  v565 = swift_allocObject();
  *(v565 + 16) = v752;
  strcpy((v565 + 32), "WFParameterKey");
  *(v565 + 47) = -18;
  v566 = v742;
  *(v565 + 48) = v751;
  *(v565 + 56) = v566;
  *(v565 + 72) = v562;
  *(v565 + 80) = 0xD000000000000010;
  *(v565 + 88) = v563;
  *(v565 + 96) = 1;
  *(v565 + 120) = MEMORY[0x1E69E6370];
  *(v565 + 128) = 0x72756F7365524657;
  *(v565 + 168) = v562;
  *(v565 + 136) = 0xEF7373616C436563;
  *(v565 + 144) = 0xD00000000000001BLL;
  *(v565 + 152) = v564;
  *(v560 + 40) = sub_1CA94C1E8();
  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v733 = v567;
  *(v540 + 240) = v560;
  v568 = v736;
  *(v540 + 264) = v567;
  *(v540 + 272) = v568;
  *(v540 + 304) = v562;
  *(v540 + 280) = 0x7468676952;
  *(v540 + 288) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v762 + 160) = sub_1CA2F864C();
  v569 = swift_allocObject();
  *(v569 + 16) = v754;
  v570 = v730;
  v571 = v755;
  *(v569 + 32) = v730;
  *(v569 + 40) = v571;
  *(v569 + 48) = v749;
  v573 = v726;
  v572 = v727;
  *(v569 + 64) = v562;
  *(v569 + 72) = v572;
  *(v569 + 80) = 0x3FB999999999999ALL;
  *(v569 + 104) = MEMORY[0x1E69E63B0];
  *(v569 + 112) = v573;
  v724 = v570;
  v735 = v572;
  v730 = v573;
  v726 = sub_1CA94C438();
  v722 = v574;
  v575 = sub_1CA94C438();
  v577 = v576;
  v727 = &v722;
  MEMORY[0x1EEE9AC00](v575);
  v578 = v768;
  sub_1CA948D98();
  v579 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v579);
  v580 = &v722 - v767;
  sub_1CA948B68();

  v581 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v582 = sub_1CA2F9F14(v726, v722, v575, v577, 0, 0, &v722 - v578, v580);
  v583 = v728;
  *(v569 + 120) = v582;
  v584 = v763;
  *(v569 + 144) = v763;
  *(v569 + 152) = v583;
  *(v569 + 160) = v747;
  *(v569 + 168) = 0x80000001CA9A7AE0;
  v585 = v729;
  *(v569 + 184) = MEMORY[0x1E69E6158];
  *(v569 + 192) = v585;
  v728 = v583;
  v729 = v585;
  v586 = sub_1CA94C438();
  v726 = v587;
  v588 = sub_1CA94C438();
  v590 = v589;
  v727 = &v722;
  MEMORY[0x1EEE9AC00](v588);
  sub_1CA948D98();
  v591 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v591);
  v592 = &v722 - v767;
  sub_1CA948B68();

  v593 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v569 + 200) = sub_1CA2F9F14(v586, v726, v588, v590, 0, 0, &v722 - v578, v592);
  v594 = v723;
  *(v569 + 224) = v584;
  *(v569 + 232) = v594;
  v595 = swift_allocObject();
  *(v595 + 16) = v748;
  v596 = swift_allocObject();
  *(v596 + 16) = v750;
  strcpy((v596 + 32), "WFParameterKey");
  *(v596 + 47) = -18;
  strcpy((v596 + 48), "WFSizingMethod");
  *(v596 + 63) = -18;
  v597 = MEMORY[0x1E69E6158];
  v598 = v725;
  *(v596 + 72) = MEMORY[0x1E69E6158];
  *(v596 + 80) = v598;
  *(v596 + 88) = v737;
  *(v596 + 96) = 61;
  *(v596 + 104) = 0xE100000000000000;
  v599 = v732;
  *(v596 + 120) = v597;
  *(v596 + 128) = v599;
  v600 = v743;
  *(v596 + 136) = v743;
  strcpy((v596 + 144), "Proportional");
  *(v596 + 157) = 0;
  *(v596 + 158) = -5120;
  *(v596 + 168) = v597;
  *(v596 + 176) = 0x72756F7365524657;
  *(v596 + 216) = v597;
  v601 = v747;
  *(v596 + 184) = 0xEF7373616C436563;
  *(v596 + 192) = v601;
  v602 = v744;
  *(v596 + 200) = v744;
  *&v748 = v594;
  v603 = MEMORY[0x1E69E6158];
  *(v595 + 32) = sub_1CA94C1E8();
  v604 = swift_allocObject();
  *(v604 + 16) = v752;
  strcpy((v604 + 32), "WFParameterKey");
  *(v604 + 47) = -18;
  v605 = v742;
  *(v604 + 48) = v751;
  *(v604 + 56) = v605;
  *(v604 + 72) = v603;
  *(v604 + 80) = v599;
  *(v604 + 88) = v600;
  *(v604 + 96) = 1;
  *(v604 + 120) = MEMORY[0x1E69E6370];
  *(v604 + 128) = 0x72756F7365524657;
  *(v604 + 168) = v603;
  *(v604 + 136) = 0xEF7373616C436563;
  *(v604 + 144) = v601;
  *(v604 + 152) = v602;
  v606 = v603;
  *(v595 + 40) = sub_1CA94C1E8();
  *(v569 + 264) = v733;
  *(v569 + 240) = v595;
  sub_1CA94C1E8();
  *(v762 + 168) = sub_1CA2F864C();
  v607 = swift_allocObject();
  *(v607 + 16) = v750;
  v608 = v724;
  *(v607 + 32) = v724;
  *(v607 + 40) = 0xD000000000000016;
  *(v607 + 48) = v731;
  v609 = v728;
  v610 = v729;
  *(v607 + 64) = v606;
  *(v607 + 72) = v609;
  *(v607 + 80) = v755;
  *(v607 + 88) = 0x80000001CA9A7B30;
  *(v607 + 104) = v606;
  *(v607 + 112) = v610;
  v727 = v608;
  v731 = v609;
  v737 = v610;
  v611 = sub_1CA94C438();
  v613 = v612;
  v614 = sub_1CA94C438();
  v616 = v615;
  *&v750 = &v722;
  MEMORY[0x1EEE9AC00](v614);
  v617 = &v722 - v768;
  sub_1CA948D98();
  v618 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v618);
  v619 = &v722 - v767;
  sub_1CA948B68();

  v620 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v607 + 120) = sub_1CA2F9F14(v611, v613, v614, v616, 0, 0, v617, v619);
  v621 = v748;
  *(v607 + 144) = v763;
  *(v607 + 152) = v621;
  v622 = swift_allocObject();
  *(v622 + 16) = v746;
  v623 = swift_allocObject();
  *(v623 + 16) = v752;
  strcpy((v623 + 32), "WFParameterKey");
  *(v623 + 47) = -18;
  v624 = v742;
  *(v623 + 48) = v751;
  *(v623 + 56) = v624;
  v625 = MEMORY[0x1E69E6158];
  v626 = v732;
  *(v623 + 72) = MEMORY[0x1E69E6158];
  *(v623 + 80) = v626;
  *(v623 + 88) = v743;
  *(v623 + 96) = 1;
  *(v623 + 120) = MEMORY[0x1E69E6370];
  *(v623 + 128) = 0x72756F7365524657;
  *(v623 + 168) = v625;
  *(v623 + 136) = 0xEF7373616C436563;
  v627 = v744;
  *(v623 + 144) = v747;
  *(v623 + 152) = v627;
  *&v750 = v621;
  *(v622 + 32) = sub_1CA94C1E8();
  *(v607 + 184) = v733;
  *(v607 + 160) = v622;
  sub_1CA94C1E8();
  *(v762 + 176) = sub_1CA2F864C();
  v628 = swift_allocObject();
  *(v628 + 16) = v754;
  v629 = v727;
  *(v628 + 32) = v727;
  *(v628 + 40) = 0xD000000000000016;
  *(v628 + 48) = v753;
  v630 = v730;
  *(v628 + 64) = v625;
  *(v628 + 72) = v630;
  *&v748 = v629;
  v751 = v630;
  *&v752 = sub_1CA94C438();
  *&v747 = v631;
  v744 = sub_1CA94C438();
  v633 = v632;
  v753 = &v722;
  MEMORY[0x1EEE9AC00](v744);
  v634 = &v722 - v768;
  sub_1CA948D98();
  v635 = v766;
  v636 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v636);
  v637 = v767;
  sub_1CA948B68();

  v638 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v628 + 80) = sub_1CA2F9F14(v752, v747, v744, v633, 0, 0, v634, &v722 - v637);
  v639 = v763;
  v640 = v731;
  *(v628 + 104) = v763;
  *(v628 + 112) = v640;
  strcpy((v628 + 120), "WFTextBoxWidth");
  *(v628 + 135) = -18;
  v641 = v737;
  *(v628 + 144) = MEMORY[0x1E69E6158];
  *(v628 + 152) = v641;
  v753 = v640;
  *&v752 = v641;
  v642 = sub_1CA94C438();
  v743 = v643;
  v744 = v642;
  v742 = sub_1CA94C438();
  v645 = v644;
  *&v747 = &v722;
  MEMORY[0x1EEE9AC00](v742);
  v646 = &v722 - v768;
  sub_1CA948D98();
  v647 = [v635 bundleURL];
  MEMORY[0x1EEE9AC00](v647);
  sub_1CA948B68();

  v648 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v628 + 160) = sub_1CA2F9F14(v744, v743, v742, v645, 0, 0, v646, &v722 - v637);
  v649 = v750;
  *(v628 + 184) = v639;
  *(v628 + 192) = v649;
  v650 = swift_allocObject();
  *(v650 + 16) = v746;
  v651 = MEMORY[0x1E69E6158];
  *(v650 + 32) = sub_1CA94C1E8();
  *(v628 + 200) = v650;
  v652 = v736;
  *(v628 + 224) = v756;
  *(v628 + 232) = v652;
  *(v628 + 264) = v651;
  *(v628 + 240) = 0x7468676952;
  *(v628 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v762 + 184) = sub_1CA2F864C();
  v653 = swift_allocObject();
  *(v653 + 16) = v754;
  v654 = v755;
  *(v653 + 32) = v748;
  *(v653 + 40) = v654;
  *(v653 + 48) = v749;
  v655 = v735;
  *(v653 + 64) = v651;
  *(v653 + 72) = v655;
  *(v653 + 80) = 0x3FE999999999999ALL;
  v656 = v751;
  *(v653 + 104) = MEMORY[0x1E69E63B0];
  *(v653 + 112) = v656;
  v749 = sub_1CA94C438();
  *&v747 = v657;
  v658 = sub_1CA94C438();
  v744 = v659;
  v755 = &v722;
  MEMORY[0x1EEE9AC00](v658);
  v660 = &v722 - v768;
  sub_1CA948D98();
  v661 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v661);
  v662 = v767;
  sub_1CA948B68();

  v663 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v653 + 120) = sub_1CA2F9F14(v749, v747, v658, v744, 0, 0, v660, &v722 - v662);
  v664 = v763;
  v665 = v753;
  *(v653 + 144) = v763;
  *(v653 + 152) = v665;
  *(v653 + 160) = 0xD000000000000018;
  *(v653 + 168) = 0x80000001CA9A7FC0;
  v666 = v752;
  *(v653 + 184) = MEMORY[0x1E69E6158];
  *(v653 + 192) = v666;
  v749 = sub_1CA94C438();
  *&v747 = v667;
  v668 = sub_1CA94C438();
  v744 = v669;
  v755 = &v722;
  MEMORY[0x1EEE9AC00](v668);
  v670 = &v722 - v768;
  sub_1CA948D98();
  v671 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v671);
  sub_1CA948B68();

  v672 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v653 + 200) = sub_1CA2F9F14(v749, v747, v668, v744, 0, 0, v670, &v722 - v662);
  v673 = v750;
  *(v653 + 224) = v664;
  *(v653 + 232) = v673;
  v674 = swift_allocObject();
  *(v674 + 16) = v746;
  v675 = MEMORY[0x1E69E6158];
  *(v674 + 32) = sub_1CA94C1E8();
  *(v653 + 264) = v756;
  *(v653 + 240) = v674;
  sub_1CA94C1E8();
  *(v762 + 192) = sub_1CA2F864C();
  v676 = swift_allocObject();
  *(v676 + 16) = v754;
  *(v676 + 32) = v748;
  *(v676 + 40) = 0xD000000000000016;
  *(v676 + 48) = v739;
  v677 = v735;
  *(v676 + 64) = v675;
  *(v676 + 72) = v677;
  strcpy((v676 + 80), "Proportional");
  *(v676 + 93) = 0;
  *(v676 + 94) = -5120;
  v678 = v751;
  *(v676 + 104) = v675;
  *(v676 + 112) = v678;
  v679 = sub_1CA94C438();
  v757 = v680;
  v681 = sub_1CA94C438();
  v683 = v682;
  v758 = &v722;
  MEMORY[0x1EEE9AC00](v681);
  v684 = v768;
  sub_1CA948D98();
  v685 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v685);
  v686 = &v722 - v767;
  sub_1CA948B68();

  v687 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v676 + 120) = sub_1CA2F9F14(v679, v757, v681, v683, 0, 0, &v722 - v684, v686);
  v688 = v740;
  *(v676 + 144) = v763;
  *(v676 + 152) = v688;
  v758 = swift_allocObject();
  *(v758 + 1) = xmmword_1CA981360;
  v689 = sub_1CA94C438();
  v755 = v690;
  v756 = v689;
  v691 = sub_1CA94C438();
  *&v754 = v692;
  v757 = &v722;
  MEMORY[0x1EEE9AC00](v691);
  sub_1CA948D98();
  v693 = v766;
  v694 = [v766 bundleURL];
  v751 = &v722;
  MEMORY[0x1EEE9AC00](v694);
  v695 = v767;
  sub_1CA948B68();

  v696 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v697 = sub_1CA2F9F14(v756, v755, v691, v754, 0, 0, &v722 - v684, &v722 - v695);
  v758[4] = v697;
  v698 = sub_1CA94C438();
  v755 = v699;
  v756 = v698;
  v700 = sub_1CA94C438();
  *&v754 = v701;
  v757 = &v722;
  MEMORY[0x1EEE9AC00](v700);
  v702 = v768;
  sub_1CA948D98();
  v703 = [v693 bundleURL];
  MEMORY[0x1EEE9AC00](v703);
  sub_1CA948B68();

  v704 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v705 = sub_1CA2F9F14(v756, v755, v700, v754, 0, 0, &v722 - v702, &v722 - v695);
  v706 = v758;
  v758[5] = v705;
  *(v676 + 160) = v706;
  v707 = v753;
  *(v676 + 184) = v738;
  *(v676 + 192) = v707;
  strcpy((v676 + 200), "WFSizingMethod");
  *(v676 + 215) = -18;
  v708 = v752;
  *(v676 + 224) = MEMORY[0x1E69E6158];
  *(v676 + 232) = v708;
  v709 = sub_1CA94C438();
  v711 = v710;
  v712 = sub_1CA94C438();
  v714 = v713;
  v758 = &v722;
  MEMORY[0x1EEE9AC00](v712);
  sub_1CA948D98();
  v715 = [v766 bundleURL];
  MEMORY[0x1EEE9AC00](v715);
  v716 = &v722 - v767;
  sub_1CA948B68();

  v717 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v718 = sub_1CA2F9F14(v709, v711, v712, v714, 0, 0, &v722 - v702, v716);
  *(v676 + 264) = v763;
  *(v676 + 240) = v718;
  sub_1CA94C1E8();
  v719 = sub_1CA2F864C();
  v720 = v762;
  *(v762 + 200) = v719;
  return v720;
}

uint64_t sub_1CA34FBC4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA34FC40()
{
  v162 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A81F0;
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
  v170 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v171 = v12;
  v13 = &v151 - v170;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v168 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v167 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v169 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v151 - v169;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v166 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v165 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v163 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v164 = &v151;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v151 - v170;
  sub_1CA948D98();
  v30 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v151 - v169;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v163, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v166;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v165;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1851881795;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6C6C69662E63696DLL;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"Name";
  v39 = sub_1CA94C438();
  v41 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  v165 = &v151;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v151 - v170;
  sub_1CA948D98();
  v46 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v151 - v169;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 264) = v166;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x63696C627550;
  *(v49 + 56) = 0xE600000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 96) = 0;
  *(v49 + 120) = v50;
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438();
  v164 = v53;
  v54 = sub_1CA94C438();
  v56 = v55;
  v165 = &v151;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v151 - v170;
  sub_1CA948D98();
  v58 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v151 - v169;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v52, v164, v54, v56, 0, 0, v57, v59);
  v62 = v166;
  *(v49 + 144) = v61;
  *(v49 + 168) = v62;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v161;
  *(v49 + 192) = &unk_1F49F5C28;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v64;
  *(inited + 304) = v65;
  *(inited + 312) = @"Parameters";
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v165 = swift_allocObject();
  *(v165 + 1) = xmmword_1CA981360;
  v164 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_1CA9813C0;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000024;
  *(v66 + 48) = 0x80000001CA9A8340;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0xD000000000000010;
  *(v66 + 88) = 0x80000001CA9A8370;
  *(v66 + 104) = v63;
  *(v66 + 112) = @"Label";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v155 = v67;
  v159 = v68;
  v160 = v69;
  v70 = @"Parameters";
  v71 = sub_1CA94C438();
  v157 = v72;
  v73 = sub_1CA94C438();
  v75 = v74;
  v158 = &v151;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v151 - v170;
  sub_1CA948D98();
  v77 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v151 - v169;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v71, v157, v73, v75, 0, 0, v76, v78);
  *(v66 + 144) = v166;
  *(v66 + 120) = v80;
  _s3__C3KeyVMa_0(0);
  v158 = v81;
  v157 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v165[4] = sub_1CA2F864C();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1CA981370;
  *(v82 + 32) = v155;
  *(v82 + 40) = 0xD000000000000016;
  *(v82 + 48) = 0x80000001CA99C4A0;
  v83 = MEMORY[0x1E69E6158];
  *(v82 + 64) = MEMORY[0x1E69E6158];
  *(v82 + 72) = @"DefaultValue";
  *(v82 + 80) = 0x6150207265746641;
  *(v82 + 88) = 0xEB00000000657375;
  *(v82 + 104) = v83;
  *(v82 + 112) = @"Items";
  v163 = swift_allocObject();
  *(v163 + 1) = xmmword_1CA981470;
  v84 = @"DefaultValue";
  v85 = @"Items";
  v86 = sub_1CA94C438();
  v154 = v87;
  v155 = v86;
  v88 = sub_1CA94C438();
  v153 = v89;
  v156 = &v151;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v151 - v170;
  sub_1CA948D98();
  v91 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v151 - v169;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v155, v154, v88, v153, 0, 0, v90, v92);
  v95 = v163;
  v163[4] = v94;
  v96 = sub_1CA94C438();
  v153 = v97;
  v154 = v96;
  v98 = sub_1CA94C438();
  v152 = v99;
  v155 = &v151;
  MEMORY[0x1EEE9AC00](v98);
  v156 = inited;
  v100 = v170;
  sub_1CA948D98();
  v101 = v168;
  v102 = [v168 bundleURL];
  v151 = &v151;
  MEMORY[0x1EEE9AC00](v102);
  v103 = v169;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 40) = sub_1CA2F9F14(v154, v153, v98, v152, 0, 0, &v151 - v100, &v151 - v103);
  v105 = sub_1CA94C438();
  v153 = v106;
  v154 = v105;
  v107 = sub_1CA94C438();
  v152 = v108;
  v155 = &v151;
  MEMORY[0x1EEE9AC00](v107);
  sub_1CA948D98();
  v109 = [v101 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v154, v153, v107, v152, 0, 0, &v151 - v100, &v151 - v103);
  v112 = v163;
  v163[6] = v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v82 + 120) = v112;
  v114 = v159;
  *(v82 + 144) = v113;
  *(v82 + 152) = v114;
  *(v82 + 160) = 0xD00000000000001ALL;
  *(v82 + 168) = 0x80000001CA9A8480;
  v115 = v160;
  *(v82 + 184) = MEMORY[0x1E69E6158];
  *(v82 + 192) = v115;
  v116 = sub_1CA94C438();
  v160 = v117;
  v118 = sub_1CA94C438();
  v120 = v119;
  v163 = &v151;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v151 - v170;
  sub_1CA948D98();
  v122 = [v101 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v151 - v169;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v116, v160, v118, v120, 0, 0, v121, v123);
  *(v82 + 224) = v166;
  *(v82 + 200) = v125;
  sub_1CA94C1E8();
  v126 = sub_1CA2F864C();
  v127 = v165;
  v165[5] = v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v129 = v156;
  v156[40] = v127;
  v129[43] = v128;
  v129[44] = @"ParameterSummary";
  v130 = @"ParameterSummary";
  v131 = sub_1CA94C438();
  v133 = v132;
  v134 = sub_1CA94C438();
  v136 = v135;
  v166 = &v151;
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v151 - v170;
  sub_1CA948D98();
  v138 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v151 - v169;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v141 = sub_1CA2F9F14(v131, v133, v134, v136, 0, 0, v137, v139);
  v142 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v143 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v129[45] = v142;
  v129[48] = v143;
  v129[49] = @"RequiredResources";
  v129[50] = &unk_1F49F5C58;
  v144 = v161;
  v129[53] = v161;
  v129[54] = @"UserInterfaceClasses";
  v145 = @"RequiredResources";
  v146 = @"UserInterfaceClasses";
  v147 = sub_1CA94C1E8();
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v129[55] = v147;
  v129[58] = v148;
  v129[59] = @"UserInterfaces";
  v129[63] = v144;
  v129[60] = &unk_1F49F5D38;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v149 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA350F28(void *a1)
{
  v3 = sub_1CA948A48();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21[-v13];
  if (!a1)
  {
    OUTLINED_FUNCTION_1_17(&v21[-v13]);
    goto LABEL_5;
  }

  v15 = [a1 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v16 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v14, v16 ^ 1u, 1, v1);
  OUTLINED_FUNCTION_41(v14);
  if (v17)
  {
LABEL_5:
    sub_1CA30F7DC(v14, &qword_1EC447940, &unk_1CA983D00);
    return 0;
  }

  (*(v6 + 32))(v10, v14, v1);
  v18 = sub_1CA948A18();
  v19 = [objc_allocWithZone(WFPersonNameComponentsParameterState) initWithValue_];

  (*(v6 + 8))(v10, v1);
  return v19;
}

id sub_1CA351178(uint64_t a1)
{
  v3 = sub_1CA948A48();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - v12;
  sub_1CA33C7B4(a1, v23);
  if (!v24)
  {
    sub_1CA30F7DC(v23, &unk_1EC444650, &unk_1CA981C70);
    OUTLINED_FUNCTION_1_17(v13);
    goto LABEL_5;
  }

  v14 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v14 ^ 1u, 1, v1);
  OUTLINED_FUNCTION_41(v13);
  if (v15)
  {
LABEL_5:
    sub_1CA30F7DC(v13, &qword_1EC447940, &unk_1CA983D00);
    return 0;
  }

  (*(v6 + 32))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v1);
  v16 = sub_1CA94CC88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v17, v9, v1);
  v18 = MEMORY[0x1CCAA1AB0](v17);
  v24 = v16;
  v23[0] = v18;
  sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
  v19 = sub_1CA94CDB8();
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v21 = sub_1CA320AB4(v23, v19);
  (*(v6 + 8))(v9, v1);
  return v21;
}

id sub_1CA351484(uint64_t a1)
{
  v3 = sub_1CA948A48();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v10 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - v11;
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    return 0;
  }

  v14 = [v13 value];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v29 - v18;
  OUTLINED_FUNCTION_1_17(v29 - v18);
  sub_1CA3518D8();
  sub_1CA94D6D8();

  OUTLINED_FUNCTION_41(v19);
  if (v20)
  {
    return 0;
  }

  v22 = *(v6 + 32);
  v22(v12, v19, v1);
  v22(v10, v12, v1);
  v23 = sub_1CA94CC88();
  MEMORY[0x1EEE9AC00](v23);
  v24 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v24, v10, v1);
  v25 = MEMORY[0x1CCAA1AB0](v24);
  v29[3] = v23;
  v29[0] = v25;
  sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
  v26 = sub_1CA94CDB8();
  v27 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v28 = sub_1CA320AB4(v29, v26);
  (*(v6 + 8))(v10, v1);
  return v28;
}

id WFLinkActionPersonNameComponentsParameterDefinition.__allocating_init(valueType:parameterMetadata:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithValueType:a1 parameterMetadata:a2];

  return v5;
}

id WFLinkActionPersonNameComponentsParameterDefinition.init(valueType:parameterMetadata:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFLinkActionPersonNameComponentsParameterDefinition();
  v5 = objc_msgSendSuper2(&v7, sel_initWithValueType_parameterMetadata_, a1, a2);

  return v5;
}

id WFLinkActionPersonNameComponentsParameterDefinition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFLinkActionPersonNameComponentsParameterDefinition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CA3518D8()
{
  result = qword_1EC4446D8[0];
  if (!qword_1EC4446D8[0])
  {
    sub_1CA948A48();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4446D8);
  }

  return result;
}

id sub_1CA35197C()
{
  v0 = sub_1CA949D18();
  v217 = *(v0 - 8);
  v218 = v0;
  v1 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v216 = &v205 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9A8570;
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
  v235 = v15;
  v237 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v205 - v237;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v236 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v238 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v234 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v205 - v234;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v233 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v231 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v228 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v230 = &v205;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v205 - v237;
  sub_1CA948D98();
  v34 = [v236 bundleURL];
  v232 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v205 - v234;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v233;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v231;
  v40 = sub_1CA6B3784();
  v41 = v232;
  v232[15] = v40;
  v41[18] = v39;
  v41[19] = @"IconColor";
  v41[20] = 1702194242;
  v41[21] = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  v41[23] = MEMORY[0x1E69E6158];
  v41[24] = @"IconSymbol";
  v41[25] = 0x69662E6F746F6870;
  v41[26] = 0xEA00000000006C6CLL;
  v41[28] = v42;
  v41[29] = @"Input";
  v43 = v41;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v226 = xmmword_1CA981350;
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
  v46 = v45;
  *(v44 + 184) = 0xE500000000000000;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v44 + 216) = v231;
  *(v44 + 192) = &unk_1F49F5D88;
  v47 = @"IconColor";
  v48 = @"IconSymbol";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v230 = v51;
  v43[30] = v50;
  v43[33] = v51;
  v43[34] = @"InputPassthrough";
  *(v43 + 280) = 0;
  v43[38] = v46;
  v43[39] = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v56 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  v229 = &v205;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v205 - v237;
  sub_1CA948D98();
  v61 = [v236 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v205 - v234;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  v65 = v232;
  v66 = v233;
  v232[40] = v64;
  v65[43] = v66;
  v65[44] = @"Output";
  v67 = swift_allocObject();
  *(v67 + 16) = v226;
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
  v225 = v70;
  v71 = sub_1CA94C438();
  v73 = v72;
  v229 = &v205;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v205 - v237;
  sub_1CA948D98();
  v75 = [v236 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v205 - v234;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 144) = sub_1CA2F9F14(v69, v225, v71, v73, 0, 0, v74, v76);
  *(v67 + 168) = v66;
  *(v67 + 176) = 0x7365707954;
  *(v67 + 216) = v231;
  *(v67 + 184) = 0xE500000000000000;
  *(v67 + 192) = &unk_1F49F5DB8;
  v78 = MEMORY[0x1E69E6158];
  v79 = sub_1CA94C1E8();
  v80 = v232;
  v232[45] = v79;
  v80[48] = v230;
  v80[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v230 = swift_allocObject();
  *(v230 + 1) = xmmword_1CA981570;
  v229 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = v226;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD000000000000023;
  *(v81 + 48) = 0x80000001CA9A8690;
  *(v81 + 64) = v78;
  *(v81 + 72) = @"DefaultValue";
  *(v81 + 80) = 1195724874;
  *(v81 + 88) = 0xE400000000000000;
  *(v81 + 104) = v78;
  *(v81 + 112) = @"Key";
  strcpy((v81 + 120), "WFImageFormat");
  *(v81 + 134) = -4864;
  *(v81 + 144) = v78;
  *(v81 + 152) = @"Label";
  v82 = @"Class";
  v83 = @"DefaultValue";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v82;
  v87 = v83;
  v88 = v84;
  v89 = v85;
  v223 = v86;
  v222 = v87;
  v221 = v88;
  v220 = v89;
  v90 = @"Parameters";
  v91 = sub_1CA94C438();
  v93 = v92;
  v94 = sub_1CA94C438();
  v96 = v95;
  *&v226 = &v205;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v205 - v237;
  sub_1CA948D98();
  v98 = [v236 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v205 - v234;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v99);
  *(v81 + 184) = v233;
  *(v81 + 160) = v101;
  _s3__C3KeyVMa_0(0);
  *&v226 = v102;
  v225 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v230[4] = sub_1CA2F864C();
  v103 = swift_allocObject();
  v214 = xmmword_1CA981380;
  *(v103 + 16) = xmmword_1CA981380;
  v104 = v223;
  *(v103 + 32) = v223;
  *(v103 + 40) = 0xD000000000000011;
  *(v103 + 48) = 0x80000001CA9A0B80;
  v105 = v222;
  *(v103 + 64) = MEMORY[0x1E69E6158];
  *(v103 + 72) = v105;
  v106 = MEMORY[0x1E69E63B0];
  *(v103 + 80) = 0x3FE8000000000000;
  *(v103 + 104) = v106;
  *(v103 + 112) = @"Description";
  v107 = @"Description";
  v223 = v104;
  v213 = v107;
  v212 = sub_1CA94C438();
  *&v211 = v108;
  v109 = sub_1CA94C438();
  v210 = v110;
  v215 = &v205;
  MEMORY[0x1EEE9AC00](v109);
  v111 = v237;
  sub_1CA948D98();
  v112 = v236;
  v113 = [v236 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v234;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 120) = sub_1CA2F9F14(v212, v211, v109, v210, 0, 0, &v205 - v111, &v205 - v114);
  v117 = v220;
  v116 = v221;
  *(v103 + 144) = v233;
  *(v103 + 152) = v116;
  v215 = 0xD000000000000019;
  *(v103 + 160) = 0xD000000000000019;
  *(v103 + 168) = 0x80000001CA9A8830;
  *(v103 + 184) = MEMORY[0x1E69E6158];
  *(v103 + 192) = v117;
  v221 = v116;
  v220 = v117;
  v118 = sub_1CA94C438();
  v210 = v119;
  *&v211 = v118;
  v120 = sub_1CA94C438();
  v209 = v121;
  v212 = &v205;
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948D98();
  v122 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 200) = sub_1CA2F9F14(v211, v210, v120, v209, 0, 0, &v205 - v111, &v205 - v114);
  *(v103 + 224) = v233;
  *(v103 + 232) = @"RequiredResources";
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v124 = swift_allocObject();
  *(v124 + 16) = v228;
  v125 = swift_allocObject();
  v211 = xmmword_1CA9813C0;
  *(v125 + 16) = xmmword_1CA9813C0;
  strcpy((v125 + 32), "WFParameterKey");
  *(v125 + 47) = -18;
  strcpy((v125 + 48), "WFImageFormat");
  *(v125 + 62) = -4864;
  v210 = 0x80000001CA9A2F30;
  v126 = MEMORY[0x1E69E6158];
  *(v125 + 72) = MEMORY[0x1E69E6158];
  *(v125 + 80) = 0xD000000000000011;
  *(v125 + 88) = 0x80000001CA9A2F30;
  *(v125 + 96) = &unk_1F49F5DE8;
  *(v125 + 120) = v231;
  *(v125 + 128) = 0x72756F7365524657;
  *(v125 + 168) = v126;
  v208 = 0xD00000000000001BLL;
  v209 = 0x80000001CA993590;
  *(v125 + 136) = 0xEF7373616C436563;
  *(v125 + 144) = 0xD00000000000001BLL;
  *(v125 + 152) = 0x80000001CA993590;
  v206 = @"RequiredResources";
  *(v124 + 32) = sub_1CA94C1E8();
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v103 + 264) = v207;
  *(v103 + 240) = v124;
  sub_1CA94C1E8();
  v230[5] = sub_1CA2F864C();
  v127 = swift_allocObject();
  *(v127 + 16) = v214;
  *(v127 + 32) = v223;
  *(v127 + 40) = 0xD000000000000011;
  *(v127 + 48) = 0x80000001CA99E620;
  v128 = v222;
  *(v127 + 64) = v126;
  *(v127 + 72) = v128;
  *(v127 + 80) = 1;
  v129 = v213;
  *(v127 + 104) = MEMORY[0x1E69E6370];
  *(v127 + 112) = v129;
  v130 = sub_1CA94C438();
  v213 = v131;
  *&v214 = v130;
  v205 = sub_1CA94C438();
  v133 = v132;
  v222 = &v205;
  MEMORY[0x1EEE9AC00](v205);
  v134 = &v205 - v237;
  sub_1CA948D98();
  v135 = [v236 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = v234;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 120) = sub_1CA2F9F14(v214, v213, v205, v133, 0, 0, v134, &v205 - v136);
  v138 = v233;
  v139 = v221;
  *(v127 + 144) = v233;
  *(v127 + 152) = v139;
  *(v127 + 160) = 0xD000000000000017;
  *(v127 + 168) = 0x80000001CA9A89D0;
  v140 = v220;
  *(v127 + 184) = MEMORY[0x1E69E6158];
  *(v127 + 192) = v140;
  v141 = sub_1CA94C438();
  v213 = v142;
  *&v214 = v141;
  v143 = sub_1CA94C438();
  v145 = v144;
  v222 = &v205;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v205 - v237;
  sub_1CA948D98();
  v147 = [v236 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 200) = sub_1CA2F9F14(v214, v213, v143, v145, 0, 0, v146, &v205 - v136);
  v149 = v206;
  *(v127 + 224) = v138;
  *(v127 + 232) = v149;
  v150 = swift_allocObject();
  *(v150 + 16) = v228;
  v151 = swift_allocObject();
  *(v151 + 16) = v211;
  strcpy((v151 + 32), "WFParameterKey");
  *(v151 + 47) = -18;
  strcpy((v151 + 48), "WFImageFormat");
  *(v151 + 62) = -4864;
  v152 = MEMORY[0x1E69E6158];
  *(v151 + 72) = MEMORY[0x1E69E6158];
  *(v151 + 80) = 0xD000000000000011;
  *(v151 + 88) = v210;
  *(v151 + 96) = &unk_1F49F5E18;
  *(v151 + 120) = v231;
  *(v151 + 128) = 0x72756F7365524657;
  *(v151 + 168) = v152;
  *(v151 + 136) = 0xEF7373616C436563;
  v153 = v209;
  *(v151 + 144) = v208;
  *(v151 + 152) = v153;
  v154 = v152;
  *(v150 + 32) = sub_1CA94C1E8();
  *(v127 + 264) = v207;
  *(v127 + 240) = v150;
  sub_1CA94C1E8();
  v230[6] = sub_1CA2F864C();
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_1CA981370;
  v156 = v215;
  *(v155 + 32) = v223;
  *(v155 + 40) = v156;
  *(v155 + 48) = 0x80000001CA99B030;
  v157 = v221;
  *(v155 + 64) = v154;
  *(v155 + 72) = v157;
  *(v155 + 80) = 0x7475706E494657;
  *(v155 + 88) = 0xE700000000000000;
  v158 = v220;
  *(v155 + 104) = v154;
  *(v155 + 112) = v158;
  v159 = sub_1CA94C438();
  v223 = v160;
  v224 = v159;
  v161 = sub_1CA94C438();
  v222 = v162;
  v227 = &v205;
  MEMORY[0x1EEE9AC00](v161);
  v163 = v237;
  sub_1CA948D98();
  v164 = v236;
  v165 = [v236 bundleURL];
  v221 = &v205;
  MEMORY[0x1EEE9AC00](v165);
  v166 = v234;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v155 + 120) = sub_1CA2F9F14(v224, v223, v161, v222, 0, 0, &v205 - v163, &v205 - v166);
  v168 = v233;
  *(v155 + 144) = v233;
  *(v155 + 152) = @"Placeholder";
  v169 = @"Placeholder";
  v170 = sub_1CA94C438();
  v223 = v171;
  v224 = v170;
  v172 = sub_1CA94C438();
  v174 = v173;
  v227 = &v205;
  MEMORY[0x1EEE9AC00](v172);
  v175 = &v205 - v163;
  sub_1CA948D98();
  v176 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v155 + 160) = sub_1CA2F9F14(v224, v223, v172, v174, 0, 0, v175, &v205 - v166);
  *(v155 + 184) = v168;
  *(v155 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v178 = swift_allocObject();
  *(v178 + 16) = v228;
  v179 = @"PreferredTypes";
  v180 = v216;
  sub_1CA949CB8();
  v181 = sub_1CA949C68();
  v183 = v182;
  (*(v217 + 8))(v180, v218);
  *(v178 + 32) = v181;
  *(v178 + 40) = v183;
  *(v155 + 224) = v231;
  *(v155 + 200) = v178;
  sub_1CA94C1E8();
  v184 = sub_1CA2F864C();
  v185 = v230;
  v230[7] = v184;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v187 = v232;
  v232[50] = v185;
  v187[53] = v186;
  v187[54] = @"ParameterSummary";
  v188 = @"ParameterSummary";
  v189 = sub_1CA94C438();
  v191 = v190;
  v192 = sub_1CA94C438();
  v194 = v193;
  MEMORY[0x1EEE9AC00](v192);
  v195 = &v205 - v237;
  sub_1CA948D98();
  v196 = [v236 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = &v205 - v234;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v189, v191, v192, v194, 0, 0, v195, v197);
  v200 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v201 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v202 = v232;
  v232[55] = v200;
  v202[58] = v201;
  v202[59] = @"ResidentCompatible";
  v202[63] = MEMORY[0x1E69E6370];
  *(v202 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v203 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA35340C()
{
  v926 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v909 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  v901 = 0xD000000000000011;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = MEMORY[0x1E69E6158];
  v2 = sub_1CA94C1E8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v2;
  v891 = v3;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000010;
  v919 = 0xD000000000000010;
  *(inited + 88) = 0x80000001CA9A8AF0;
  *(inited + 96) = 0x3936373333353039;
  *(inited + 104) = 0xE900000000000031;
  *(inited + 120) = v1;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v931 = v12;
  v930 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v859 - v930;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v929 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v928 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v932 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v859 - v932;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v927 = v20;
  *(inited + 144) = v19;
  *(inited + 168) = v20;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v878 = swift_allocObject();
  v918 = xmmword_1CA9813C0;
  *(v878 + 16) = xmmword_1CA9813C0;
  v21 = swift_initStackObject();
  v877 = v21;
  *(v21 + 16) = v918;
  *(v21 + 32) = 0x736E6F69746341;
  *(v21 + 40) = 0xE700000000000000;
  v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v902 = swift_allocObject();
  *(v902 + 16) = v909;
  v22 = swift_initStackObject();
  v899 = xmmword_1CA9813E0;
  *(v22 + 16) = xmmword_1CA9813E0;
  strcpy((v22 + 32), "ActionKeywords");
  *(v22 + 47) = -18;
  v23 = sub_1CA94C438();
  v925 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v859 - v930;
  sub_1CA948D98();
  v29 = [v929 bundleURL];
  v876 = inited;
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v859 - v932;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 48) = sub_1CA2F9F14(v23, v925, v25, v27, 0, 0, v28, v30);
  *(v22 + 72) = v927;
  *(v22 + 80) = 0x79726F6765746143;
  *(v22 + 88) = 0xE800000000000000;
  v32 = *MEMORY[0x1E6996FC8];
  type metadata accessor for WFContentCategory(0);
  v898 = v33;
  *(v22 + 96) = v32;
  *(v22 + 120) = v33;
  *(v22 + 128) = 0x7470697263736544;
  *(v22 + 136) = 0xEB000000006E6F69;
  v900 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  v897 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v34 = swift_initStackObject();
  v915 = xmmword_1CA981310;
  *(v34 + 16) = xmmword_1CA981310;
  *(v34 + 32) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = v32;
  v37 = v35;
  v38 = v36;
  v886 = v37;
  v885 = v38;
  v924 = sub_1CA94C438();
  v40 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v925 = &v859;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v859 - v930;
  sub_1CA948D98();
  v45 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v859 - v932;
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v48 = sub_1CA2F9F14(v924, v40, v41, v43, 0, 0, v44, v46);
  *(v34 + 64) = v927;
  *(v34 + 40) = v48;
  type metadata accessor for DescriptionKey(0);
  v896 = v49;
  v895 = sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v50 = v900;
  v51 = sub_1CA6B3784();
  v884 = v22;
  *(v22 + 144) = v51;
  *(v22 + 168) = v50;
  strcpy((v22 + 176), "Discoverable");
  *(v22 + 189) = 0;
  *(v22 + 190) = -5120;
  v52 = MEMORY[0x1E69E6370];
  *(v22 + 192) = 0;
  *(v22 + 216) = v52;
  *(v22 + 224) = 0x74616D726F46;
  *(v22 + 232) = 0xE600000000000000;
  *(v22 + 240) = 0xD00000000000002DLL;
  *(v22 + 248) = 0x80000001CA9A8BC0;
  v53 = MEMORY[0x1E69E6158];
  *(v22 + 264) = MEMORY[0x1E69E6158];
  *(v22 + 272) = 0x696669746E656449;
  v54 = v53;
  v894 = 0xEA00000000007265;
  *(v22 + 280) = 0xEA00000000007265;
  *(v22 + 288) = 1852141679;
  *(v22 + 296) = 0xE400000000000000;
  *(v22 + 312) = v53;
  strcpy((v22 + 320), "InputMapping");
  *(v22 + 333) = 0;
  *(v22 + 334) = -5120;
  v910 = swift_allocObject();
  v912 = xmmword_1CA981380;
  *(v910 + 1) = xmmword_1CA981380;
  v55 = swift_allocObject();
  *(v55 + 16) = v912;
  strcpy((v55 + 32), "DestinationKey");
  *(v55 + 47) = -18;
  *(v55 + 48) = 1684632949;
  *(v55 + 56) = 0xE400000000000000;
  *(v55 + 72) = v54;
  *(v55 + 80) = 0x74616E6974736544;
  *(v55 + 88) = 0xEF657079546E6F69;
  *(v55 + 96) = 0x74736275534C5255;
  *(v55 + 104) = 0xEF6E6F6974757469;
  *(v55 + 120) = v54;
  *(v55 + 128) = 0x73616C436D657449;
  v920 = 0xE900000000000073;
  v917 = 0x80000001CA993390;
  *(v55 + 136) = 0xE900000000000073;
  *(v55 + 144) = 0xD000000000000013;
  *(v55 + 152) = 0x80000001CA993390;
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x6574656D61726150;
  *(v55 + 184) = 0xEB00000000495572;
  v925 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v924 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = v918;
  v914 = 0x80000001CA99B500;
  v916 = 0xD000000000000014;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  *(v56 + 64) = v54;
  *(v56 + 72) = @"Description";
  v57 = @"Class";
  v58 = @"Description";
  v59 = v57;
  v60 = v58;
  v911 = v59;
  *&v908 = v60;
  v922 = sub_1CA94C438();
  v921 = v61;
  v62 = sub_1CA94C438();
  v907 = v63;
  v923 = &v859;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v859 - v930;
  sub_1CA948D98();
  v65 = v929;
  v66 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v859 - v932;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 80) = sub_1CA2F9F14(v922, v921, v62, v907, 0, 0, v64, v67);
  v69 = v927;
  *(v56 + 104) = v927;
  *(v56 + 112) = @"Label";
  v907 = @"Label";
  v922 = sub_1CA94C438();
  v921 = v70;
  v71 = sub_1CA94C438();
  v906 = v72;
  v923 = &v859;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v859 - v930;
  sub_1CA948D98();
  v74 = [v65 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v859 - v932;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v922, v921, v71, v906, 0, 0, v73, v75);
  *(v56 + 144) = v69;
  *(v56 + 120) = v77;
  _s3__C3KeyVMa_0(0);
  v923 = v78;
  v922 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v79 = v925;
  *(v55 + 192) = sub_1CA2F864C();
  *(v55 + 216) = v79;
  *(v55 + 224) = 0x654B656372756F53;
  *(v55 + 232) = 0xE900000000000079;
  *(v55 + 240) = 0x5555737466617244;
  *(v55 + 248) = 0xEA00000000004449;
  v80 = MEMORY[0x1E69E6158];
  *(v55 + 264) = MEMORY[0x1E69E6158];
  *(v55 + 272) = 0x7954656372756F53;
  *(v55 + 312) = v80;
  *(v55 + 280) = 0xEA00000000006570;
  *(v55 + 288) = 0x6574656D61726150;
  v921 = 0xE900000000000072;
  *(v55 + 296) = 0xE900000000000072;
  v910[4] = sub_1CA94C1E8();
  v81 = swift_allocObject();
  v890 = xmmword_1CA981400;
  *(v81 + 16) = xmmword_1CA981400;
  *(v81 + 32) = 0x74616E6974736544;
  *(v81 + 40) = 0xEF657079546E6F69;
  *(v81 + 48) = 0x43656C6261736944;
  *(v81 + 56) = 0xEF6B6361626C6C61;
  *(v81 + 72) = v80;
  *(v81 + 80) = 0x73616C436D657449;
  v875 = 0x80000001CA993A60;
  v82 = v916;
  *(v81 + 88) = v920;
  *(v81 + 96) = v82;
  *(v81 + 104) = 0x80000001CA993A60;
  v906 = 0x80000001CA9A8C50;
  v83 = v919;
  *(v81 + 120) = v80;
  *(v81 + 128) = v83;
  *(v81 + 136) = 0x80000001CA9A8C50;
  *(v81 + 144) = 1;
  *(v81 + 168) = MEMORY[0x1E69E6370];
  *(v81 + 176) = 0x6574656D61726150;
  *(v81 + 184) = 0xEB00000000495572;
  v84 = swift_allocObject();
  *(v84 + 16) = v918;
  v887 = 0x80000001CA99E620;
  v85 = v911;
  v86 = v901;
  *(v84 + 32) = v911;
  *(v84 + 40) = v86;
  *(v84 + 48) = 0x80000001CA99E620;
  v87 = v908;
  *(v84 + 64) = v80;
  *(v84 + 72) = v87;
  v905 = v85;
  v911 = v87;
  v88 = sub_1CA94C438();
  v903 = v89;
  v904 = v88;
  *&v893 = sub_1CA94C438();
  v91 = v90;
  *&v908 = &v859;
  MEMORY[0x1EEE9AC00](v893);
  v92 = v930;
  sub_1CA948D98();
  v93 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v859 - v932;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 80) = sub_1CA2F9F14(v904, v903, v893, v91, 0, 0, &v859 - v92, v94);
  v96 = v927;
  v97 = v907;
  *(v84 + 104) = v927;
  *(v84 + 112) = v97;
  *&v908 = v97;
  v98 = sub_1CA94C438();
  v903 = v99;
  v904 = v98;
  v100 = sub_1CA94C438();
  v102 = v101;
  v907 = &v859;
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948D98();
  v103 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v859 - v932;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v904, v903, v100, v102, 0, 0, &v859 - v92, v104);
  *(v84 + 144) = v96;
  *(v84 + 120) = v106;
  sub_1CA94C1E8();
  v107 = v925;
  *(v81 + 192) = sub_1CA2F864C();
  *(v81 + 216) = v107;
  *(v81 + 224) = 0x654B656372756F53;
  *(v81 + 232) = 0xE900000000000079;
  strcpy((v81 + 240), "DraftsReturn");
  *(v81 + 253) = 0;
  *(v81 + 254) = -5120;
  v108 = MEMORY[0x1E69E6158];
  *(v81 + 264) = MEMORY[0x1E69E6158];
  *(v81 + 272) = 0x7954656372756F53;
  *(v81 + 280) = 0xEA00000000006570;
  *(v81 + 288) = 0x6574656D61726150;
  *(v81 + 296) = v921;
  *(v81 + 312) = v108;
  strcpy((v81 + 320), "ValueMapping");
  *(v81 + 333) = 0;
  *(v81 + 334) = -5120;
  v109 = v108;
  v110 = sub_1CA94C1E8();
  *(v81 + 360) = v891;
  *(v81 + 336) = v110;
  v910[5] = sub_1CA94C1E8();
  v111 = swift_allocObject();
  *(v111 + 16) = v918;
  *(v111 + 32) = 0x6574656D61726150;
  *(v111 + 40) = 0xEB00000000495572;
  v112 = swift_allocObject();
  v893 = xmmword_1CA97EDF0;
  *(v112 + 16) = xmmword_1CA97EDF0;
  v113 = v905;
  v114 = v901;
  *(v112 + 32) = v905;
  *(v112 + 40) = v114;
  *(v112 + 48) = v887;
  v115 = v908;
  *(v112 + 64) = v109;
  *(v112 + 72) = v115;
  v904 = v113;
  v905 = v115;
  v116 = sub_1CA94C438();
  v907 = v117;
  v118 = sub_1CA94C438();
  v120 = v119;
  *&v908 = &v859;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v859 - v930;
  sub_1CA948D98();
  v122 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v859 - v932;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v116, v907, v118, v120, 0, 0, v121, v123);
  *(v112 + 104) = v927;
  *(v112 + 80) = v125;
  sub_1CA94C1E8();
  v126 = v925;
  *(v111 + 48) = sub_1CA2F864C();
  *(v111 + 72) = v126;
  *(v111 + 80) = 0x654B656372756F53;
  v907 = 0x80000001CA9A8D20;
  *(v111 + 88) = 0xE900000000000079;
  *(v111 + 96) = 0xD000000000000013;
  *(v111 + 104) = 0x80000001CA9A8D20;
  v127 = MEMORY[0x1E69E6158];
  *(v111 + 120) = MEMORY[0x1E69E6158];
  *(v111 + 128) = 0x7954656372756F53;
  *(v111 + 168) = v127;
  *(v111 + 136) = 0xEA00000000006570;
  *(v111 + 144) = 0x6574656D61726150;
  *(v111 + 152) = v921;
  v910[6] = sub_1CA94C1E8();
  v128 = swift_allocObject();
  *(v128 + 16) = v912;
  strcpy((v128 + 32), "DestinationKey");
  *(v128 + 47) = -18;
  *(v128 + 48) = 0x6E6F69746361;
  *(v128 + 56) = 0xE600000000000000;
  *(v128 + 72) = v127;
  *(v128 + 80) = 0x74616E6974736544;
  *(v128 + 88) = 0xEF657079546E6F69;
  strcpy((v128 + 96), "URLQueryValue");
  *(v128 + 110) = -4864;
  *(v128 + 120) = v127;
  *(v128 + 128) = 0x73616C436D657449;
  *(v128 + 136) = v920;
  *(v128 + 144) = 0xD000000000000013;
  *(v128 + 152) = v917;
  *(v128 + 168) = v127;
  *(v128 + 176) = 0x6574656D61726150;
  *(v128 + 184) = 0xEB00000000495572;
  v129 = swift_allocObject();
  v908 = xmmword_1CA981370;
  *(v129 + 16) = xmmword_1CA981370;
  v130 = v904;
  v131 = v916;
  *(v129 + 32) = v904;
  *(v129 + 40) = v131;
  *(v129 + 48) = v914;
  v132 = v911;
  *(v129 + 64) = v127;
  *(v129 + 72) = v132;
  v889 = v130;
  v888 = v132;
  v133 = sub_1CA94C438();
  v903 = v134;
  v904 = v133;
  v135 = sub_1CA94C438();
  v892 = v136;
  v911 = &v859;
  MEMORY[0x1EEE9AC00](v135);
  v137 = &v859 - v930;
  sub_1CA948D98();
  v138 = [v929 bundleURL];
  v883 = &v859;
  MEMORY[0x1EEE9AC00](v138);
  v139 = v932;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 80) = sub_1CA2F9F14(v904, v903, v135, v892, 0, 0, v137, &v859 - v139);
  v141 = v905;
  *(v129 + 104) = v927;
  *(v129 + 112) = v141;
  v892 = v141;
  v142 = sub_1CA94C438();
  v904 = v143;
  v905 = v142;
  v144 = sub_1CA94C438();
  v903 = v145;
  v911 = &v859;
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v859 - v930;
  sub_1CA948D98();
  v147 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 120) = sub_1CA2F9F14(v905, v904, v144, v903, 0, 0, v146, &v859 - v139);
  v149 = v927;
  *(v129 + 144) = v927;
  *(v129 + 152) = @"Placeholder";
  v883 = @"Placeholder";
  v150 = sub_1CA94C438();
  v904 = v151;
  v905 = v150;
  v152 = sub_1CA94C438();
  v154 = v153;
  v911 = &v859;
  MEMORY[0x1EEE9AC00](v152);
  v155 = &v859 - v930;
  sub_1CA948D98();
  v156 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v859 - v932;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 160) = sub_1CA2F9F14(v905, v904, v152, v154, 0, 0, v155, v157);
  *(v129 + 184) = v149;
  *(v129 + 192) = @"RequiredResources";
  v159 = swift_allocObject();
  *(v159 + 16) = v915;
  v160 = swift_allocObject();
  *(v160 + 16) = v918;
  strcpy((v160 + 32), "WFParameterKey");
  *(v160 + 47) = -18;
  v161 = v907;
  *(v160 + 48) = 0xD000000000000013;
  *(v160 + 56) = v161;
  v905 = 0x80000001CA993570;
  v162 = MEMORY[0x1E69E6158];
  v163 = v919;
  *(v160 + 72) = MEMORY[0x1E69E6158];
  *(v160 + 80) = v163;
  *(v160 + 88) = 0x80000001CA993570;
  *(v160 + 96) = 1;
  *(v160 + 120) = MEMORY[0x1E69E6370];
  *(v160 + 128) = 0x72756F7365524657;
  *(v160 + 168) = v162;
  v903 = 0xD00000000000001BLL;
  v904 = 0x80000001CA993590;
  *(v160 + 136) = 0xEF7373616C436563;
  *(v160 + 144) = 0xD00000000000001BLL;
  *(v160 + 152) = 0x80000001CA993590;
  v882 = @"RequiredResources";
  *(v159 + 32) = sub_1CA94C1E8();
  v911 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v129 + 224) = v911;
  *(v129 + 200) = v159;
  sub_1CA94C1E8();
  v164 = v925;
  *(v128 + 192) = sub_1CA2F864C();
  *(v128 + 216) = v164;
  *(v128 + 224) = 0x654B656372756F53;
  *(v128 + 232) = 0xE900000000000079;
  strcpy((v128 + 240), "DraftsAction");
  *(v128 + 253) = 0;
  *(v128 + 254) = -5120;
  *(v128 + 264) = v162;
  *(v128 + 272) = 0x7954656372756F53;
  *(v128 + 312) = v162;
  *(v128 + 280) = 0xEA00000000006570;
  *(v128 + 288) = 0x6574656D61726150;
  *(v128 + 296) = v921;
  v910[7] = sub_1CA94C1E8();
  v165 = swift_allocObject();
  *(v165 + 16) = v912;
  strcpy((v165 + 32), "DestinationKey");
  *(v165 + 47) = -18;
  *(v165 + 48) = 7955819;
  *(v165 + 56) = 0xE300000000000000;
  *(v165 + 72) = v162;
  *(v165 + 80) = 0x74616E6974736544;
  *(v165 + 88) = 0xEF657079546E6F69;
  strcpy((v165 + 96), "URLQueryValue");
  *(v165 + 110) = -4864;
  *(v165 + 120) = v162;
  *(v165 + 128) = 0x73616C436D657449;
  *(v165 + 136) = v920;
  *(v165 + 144) = 0xD000000000000013;
  *(v165 + 152) = v917;
  *(v165 + 168) = v162;
  *(v165 + 176) = 0x6574656D61726150;
  *(v165 + 184) = 0xEB00000000495572;
  v166 = swift_allocObject();
  *(v166 + 16) = v908;
  v168 = v888;
  v167 = v889;
  v169 = v916;
  *(v166 + 32) = v889;
  *(v166 + 40) = v169;
  *(v166 + 48) = v914;
  *(v166 + 64) = v162;
  *(v166 + 72) = v168;
  v889 = v167;
  *&v881 = v168;
  v170 = sub_1CA94C438();
  v879 = v171;
  v880 = v170;
  v172 = sub_1CA94C438();
  v874 = v173;
  v888 = &v859;
  MEMORY[0x1EEE9AC00](v172);
  v174 = v930;
  sub_1CA948D98();
  v175 = v929;
  v176 = [v929 bundleURL];
  v873 = &v859;
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v859 - v932;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 80) = sub_1CA2F9F14(v880, v879, v172, v874, 0, 0, &v859 - v174, v177);
  v179 = v927;
  v180 = v892;
  *(v166 + 104) = v927;
  *(v166 + 112) = v180;
  v892 = v180;
  v181 = sub_1CA94C438();
  v879 = v182;
  v880 = v181;
  v183 = sub_1CA94C438();
  v874 = v184;
  v888 = &v859;
  MEMORY[0x1EEE9AC00](v183);
  sub_1CA948D98();
  v185 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  v186 = &v859 - v932;
  sub_1CA948B68();

  v187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 120) = sub_1CA2F9F14(v880, v879, v183, v874, 0, 0, &v859 - v174, v186);
  v189 = v882;
  v188 = v883;
  *(v166 + 144) = v179;
  *(v166 + 152) = v188;
  *(v166 + 160) = 0x504C4B595A33;
  *(v166 + 168) = 0xE600000000000000;
  v190 = MEMORY[0x1E69E6158];
  *(v166 + 184) = MEMORY[0x1E69E6158];
  *(v166 + 192) = v189;
  v191 = swift_allocObject();
  *(v191 + 16) = v915;
  v192 = swift_allocObject();
  *(v192 + 16) = v918;
  strcpy((v192 + 32), "WFParameterKey");
  *(v192 + 47) = -18;
  *(v192 + 48) = 0xD000000000000013;
  *(v192 + 56) = v907;
  v193 = v919;
  *(v192 + 72) = v190;
  *(v192 + 80) = v193;
  *(v192 + 88) = v905;
  *(v192 + 96) = 1;
  *(v192 + 120) = MEMORY[0x1E69E6370];
  *(v192 + 128) = 0x72756F7365524657;
  *(v192 + 168) = v190;
  *(v192 + 136) = 0xEF7373616C436563;
  v194 = v904;
  *(v192 + 144) = v903;
  *(v192 + 152) = v194;
  v871 = v188;
  v888 = v189;
  *(v191 + 32) = sub_1CA94C1E8();
  *(v166 + 224) = v911;
  *(v166 + 200) = v191;
  sub_1CA94C1E8();
  v195 = v925;
  *(v165 + 192) = sub_1CA2F864C();
  *(v165 + 216) = v195;
  *(v165 + 224) = 0x654B656372756F53;
  *(v165 + 232) = 0xE900000000000079;
  *(v165 + 240) = 0x6341737466617244;
  *(v165 + 248) = 0xEF79654B6E6F6974;
  *(v165 + 264) = v190;
  *(v165 + 272) = 0x7954656372756F53;
  *(v165 + 312) = v190;
  *(v165 + 280) = 0xEA00000000006570;
  *(v165 + 288) = 0x6574656D61726150;
  *(v165 + 296) = v921;
  v910[8] = sub_1CA94C1E8();
  v196 = swift_allocObject();
  *(v196 + 16) = v890;
  strcpy((v196 + 32), "DestinationKey");
  *(v196 + 47) = -18;
  strcpy((v196 + 48), "afterSuccess");
  *(v196 + 61) = 0;
  *(v196 + 62) = -5120;
  *(v196 + 72) = v190;
  *(v196 + 80) = 0x74616E6974736544;
  *(v196 + 88) = 0xEF657079546E6F69;
  strcpy((v196 + 96), "URLQueryValue");
  *(v196 + 110) = -4864;
  *(v196 + 120) = v190;
  *(v196 + 128) = 0x73616C436D657449;
  *(v196 + 136) = v920;
  *(v196 + 144) = 0xD000000000000013;
  *(v196 + 152) = v917;
  *(v196 + 168) = v190;
  *(v196 + 176) = v193;
  *(v196 + 184) = v906;
  *(v196 + 192) = 0x676E6968746F4ELL;
  *(v196 + 200) = 0xE700000000000000;
  *(v196 + 216) = v190;
  *(v196 + 224) = 0x6574656D61726150;
  *(v196 + 232) = 0xEB00000000495572;
  v197 = swift_allocObject();
  *(v197 + 16) = v908;
  v198 = v889;
  *(v197 + 32) = v889;
  *(v197 + 40) = 0xD000000000000016;
  v882 = 0x80000001CA99C4A0;
  v883 = 0xD000000000000016;
  *(v197 + 48) = 0x80000001CA99C4A0;
  v199 = v881;
  *(v197 + 64) = v190;
  *(v197 + 72) = v199;
  v200 = v197;
  v870 = v198;
  v869 = v199;
  v201 = sub_1CA94C438();
  *&v881 = v202;
  v203 = sub_1CA94C438();
  v205 = v204;
  v889 = &v859;
  MEMORY[0x1EEE9AC00](v203);
  v206 = &v859 - v930;
  sub_1CA948D98();
  v207 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v207);
  v208 = &v859 - v932;
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v210 = sub_1CA2F9F14(v201, v881, v203, v205, 0, 0, v206, v208);
  v874 = v200;
  v200[10] = v210;
  v200[13] = v927;
  v200[14] = @"Items";
  v889 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v211 = swift_allocObject();
  v881 = xmmword_1CA981470;
  *(v211 + 16) = xmmword_1CA981470;
  v880 = @"Items";
  v212 = sub_1CA94C438();
  v872 = v213;
  v873 = v212;
  v214 = sub_1CA94C438();
  v868 = v215;
  v879 = &v859;
  MEMORY[0x1EEE9AC00](v214);
  v216 = v930;
  sub_1CA948D98();
  v217 = v929;
  v218 = [v929 bundleURL];
  v867 = &v859;
  MEMORY[0x1EEE9AC00](v218);
  v219 = &v859 - v932;
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 32) = sub_1CA2F9F14(v873, v872, v214, v868, 0, 0, &v859 - v216, v219);
  v221 = sub_1CA94C438();
  v872 = v222;
  v873 = v221;
  v223 = sub_1CA94C438();
  v868 = v224;
  v879 = &v859;
  MEMORY[0x1EEE9AC00](v223);
  v225 = &v859 - v216;
  sub_1CA948D98();
  v226 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v226);
  v227 = v932;
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 40) = sub_1CA2F9F14(v873, v872, v223, v868, 0, 0, v225, &v859 - v227);
  v229 = sub_1CA94C438();
  v872 = v230;
  v873 = v229;
  v231 = sub_1CA94C438();
  v868 = v232;
  v879 = &v859;
  MEMORY[0x1EEE9AC00](v231);
  v233 = &v859 - v930;
  sub_1CA948D98();
  v234 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v234);
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v236 = sub_1CA2F9F14(v873, v872, v231, v868, 0, 0, v233, &v859 - v227);
  v237 = v211;
  *(v211 + 48) = v236;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v879 = v238;
  v239 = v874;
  v874[15] = v237;
  v240 = v892;
  v239[18] = v238;
  v239[19] = v240;
  v868 = v240;
  v241 = sub_1CA94C438();
  v873 = v242;
  v243 = sub_1CA94C438();
  v245 = v244;
  v892 = &v859;
  MEMORY[0x1EEE9AC00](v243);
  v246 = &v859 - v930;
  sub_1CA948D98();
  v247 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v247);
  v248 = &v859 - v932;
  sub_1CA948B68();

  v249 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v239[20] = sub_1CA2F9F14(v241, v873, v243, v245, 0, 0, v246, v248);
  v250 = v888;
  v239[23] = v927;
  v239[24] = v250;
  v251 = swift_allocObject();
  *(v251 + 16) = v915;
  v252 = swift_allocObject();
  *(v252 + 16) = v918;
  strcpy((v252 + 32), "WFParameterKey");
  *(v252 + 47) = -18;
  *(v252 + 48) = 0xD000000000000013;
  *(v252 + 56) = v907;
  v253 = MEMORY[0x1E69E6158];
  v254 = v919;
  *(v252 + 72) = MEMORY[0x1E69E6158];
  *(v252 + 80) = v254;
  *(v252 + 88) = v905;
  *(v252 + 96) = 1;
  *(v252 + 120) = MEMORY[0x1E69E6370];
  *(v252 + 128) = 0x72756F7365524657;
  *(v252 + 168) = v253;
  *(v252 + 136) = 0xEF7373616C436563;
  v255 = v904;
  *(v252 + 144) = v903;
  *(v252 + 152) = v255;
  v872 = v250;
  *(v251 + 32) = sub_1CA94C1E8();
  v256 = v911;
  v239[28] = v911;
  v239[25] = v251;
  sub_1CA94C1E8();
  v257 = v925;
  *(v196 + 240) = sub_1CA2F864C();
  *(v196 + 264) = v257;
  *(v196 + 272) = 0x654B656372756F53;
  v873 = 0xD000000000000012;
  v874 = 0x80000001CA9A8F10;
  *(v196 + 280) = 0xE900000000000079;
  *(v196 + 288) = 0xD000000000000012;
  *(v196 + 296) = 0x80000001CA9A8F10;
  *(v196 + 312) = v253;
  *(v196 + 320) = 0x7954656372756F53;
  *(v196 + 360) = v253;
  *(v196 + 328) = 0xEA00000000006570;
  *(v196 + 336) = 0x6574656D61726150;
  *(v196 + 344) = v921;
  v258 = sub_1CA94C1E8();
  v259 = v910;
  v910[9] = v258;
  v260 = v884;
  v884[10].data = v259;
  v260[11].info = v256;
  v260[11].data = 1701667150;
  v260[11].length = 0xE400000000000000;
  v892 = sub_1CA94C438();
  v888 = v261;
  v867 = sub_1CA94C438();
  v263 = v262;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v867);
  v264 = v930;
  sub_1CA948D98();
  v265 = v929;
  v266 = [v929 bundleURL];
  v866 = &v859;
  MEMORY[0x1EEE9AC00](v266);
  v267 = v932;
  sub_1CA948B68();

  v268 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v260[12].isa = sub_1CA2F9F14(v892, v888, v867, v263, 0, 0, &v859 - v264, &v859 - v267);
  v892 = 0x80000001CA9A8F60;
  v269 = v919;
  v260[12].length = v927;
  v260[13].isa = v269;
  v260[13].info = 0x80000001CA9A8F60;
  v888 = sub_1CA94C438();
  v867 = v270;
  v866 = sub_1CA94C438();
  v272 = v271;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v866);
  sub_1CA948D98();
  v273 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v273);
  sub_1CA948B68();

  v274 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v275 = sub_1CA2F9F14(v888, v867, v866, v272, 0, 0, &v859 - v264, &v859 - v267);
  v276 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v888 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v260[14].info = v888;
  v260[13].data = v276;
  *(v902 + 32) = sub_1CA94C1E8();
  v277 = swift_allocObject();
  *(v277 + 16) = xmmword_1CA981420;
  strcpy((v277 + 32), "ActionKeywords");
  *(v277 + 47) = -18;
  v884 = sub_1CA94C438();
  v279 = v278;
  v280 = sub_1CA94C438();
  v282 = v281;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v280);
  v283 = v930;
  sub_1CA948D98();
  v284 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v284);
  v285 = &v859 - v932;
  sub_1CA948B68();

  v286 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v277 + 48) = sub_1CA2F9F14(v884, v279, v280, v282, 0, 0, &v859 - v283, v285);
  v287 = v927;
  *(v277 + 72) = v927;
  *(v277 + 80) = 0x79726F6765746143;
  v288 = v885;
  *(v277 + 88) = 0xE800000000000000;
  *(v277 + 96) = v288;
  *(v277 + 120) = v898;
  *(v277 + 128) = 0x7470697263736544;
  *(v277 + 136) = 0xEB000000006E6F69;
  v289 = swift_initStackObject();
  *(v289 + 16) = v915;
  v290 = v886;
  *(v289 + 32) = v886;
  v884 = v288;
  v885 = v290;
  v886 = sub_1CA94C438();
  v867 = v291;
  v292 = sub_1CA94C438();
  v294 = v293;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v292);
  sub_1CA948D98();
  v295 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v295);
  v296 = &v859 - v932;
  sub_1CA948B68();

  v297 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v298 = sub_1CA2F9F14(v886, v867, v292, v294, 0, 0, &v859 - v283, v296);
  *(v289 + 64) = v287;
  *(v289 + 40) = v298;
  sub_1CA94C1E8();
  v299 = v900;
  *(v277 + 144) = sub_1CA6B3784();
  *(v277 + 168) = v299;
  strcpy((v277 + 176), "Discoverable");
  *(v277 + 189) = 0;
  *(v277 + 190) = -5120;
  *(v277 + 192) = 0;
  *(v277 + 216) = MEMORY[0x1E69E6370];
  *(v277 + 224) = 0x74616D726F46;
  *(v277 + 232) = 0xE600000000000000;
  *(v277 + 240) = 0xD00000000000002CLL;
  *(v277 + 248) = 0x80000001CA9A9020;
  v300 = MEMORY[0x1E69E6158];
  *(v277 + 264) = MEMORY[0x1E69E6158];
  *(v277 + 272) = 0x696669746E656449;
  *(v277 + 280) = v894;
  *(v277 + 288) = 7628135;
  *(v277 + 296) = 0xE300000000000000;
  *(v277 + 312) = v300;
  strcpy((v277 + 320), "InputMapping");
  *(v277 + 333) = 0;
  *(v277 + 334) = -5120;
  v910 = swift_allocObject();
  *(v910 + 1) = v915;
  v301 = swift_allocObject();
  *(v301 + 16) = v912;
  strcpy((v301 + 32), "DestinationKey");
  *(v301 + 47) = -18;
  *(v301 + 48) = 1684632949;
  *(v301 + 56) = 0xE400000000000000;
  *(v301 + 72) = v300;
  *(v301 + 80) = 0x74616E6974736544;
  *(v301 + 88) = 0xEF657079546E6F69;
  *(v301 + 96) = 0x74736275534C5255;
  *(v301 + 104) = 0xEF6E6F6974757469;
  *(v301 + 120) = v300;
  *(v301 + 128) = 0x73616C436D657449;
  *(v301 + 136) = v920;
  *(v301 + 144) = 0xD000000000000013;
  *(v301 + 152) = v917;
  *(v301 + 168) = v300;
  *(v301 + 176) = 0x6574656D61726150;
  *(v301 + 184) = 0xEB00000000495572;
  v302 = swift_allocObject();
  *(v302 + 16) = v909;
  v304 = v869;
  v303 = v870;
  v305 = v916;
  *(v302 + 32) = v870;
  *(v302 + 40) = v305;
  *(v302 + 48) = v914;
  *(v302 + 64) = v300;
  *(v302 + 72) = v304;
  v867 = v303;
  v870 = v304;
  v869 = sub_1CA94C438();
  v866 = v306;
  v307 = sub_1CA94C438();
  v864 = v308;
  v865 = v307;
  v886 = &v859;
  MEMORY[0x1EEE9AC00](v307);
  v309 = &v859 - v930;
  sub_1CA948D98();
  v310 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v310);
  v311 = v932;
  sub_1CA948B68();

  v312 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v302 + 80) = sub_1CA2F9F14(v869, v866, v865, v864, 0, 0, v309, &v859 - v311);
  v313 = v927;
  v314 = v868;
  *(v302 + 104) = v927;
  *(v302 + 112) = v314;
  v866 = v314;
  v315 = sub_1CA94C438();
  v868 = v316;
  v869 = v315;
  v317 = sub_1CA94C438();
  v864 = v318;
  v865 = v317;
  v886 = &v859;
  MEMORY[0x1EEE9AC00](v317);
  v319 = &v859 - v930;
  sub_1CA948D98();
  v320 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v320);
  sub_1CA948B68();

  v321 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v302 + 120) = sub_1CA2F9F14(v869, v868, v865, v864, 0, 0, v319, &v859 - v311);
  v322 = v871;
  *(v302 + 144) = v313;
  *(v302 + 152) = v322;
  v323 = MEMORY[0x1E69E6158];
  *(v302 + 184) = MEMORY[0x1E69E6158];
  *(v302 + 160) = 0xD000000000000024;
  *(v302 + 168) = 0x80000001CA9A9080;
  v871 = v322;
  sub_1CA94C1E8();
  v324 = v925;
  *(v301 + 192) = sub_1CA2F864C();
  *(v301 + 216) = v324;
  *(v301 + 224) = 0x654B656372756F53;
  *(v301 + 232) = 0xE900000000000079;
  *(v301 + 240) = 0x5555737466617244;
  *(v301 + 248) = 0xEA00000000004449;
  *(v301 + 264) = v323;
  *(v301 + 272) = 0x7954656372756F53;
  *(v301 + 312) = v323;
  *(v301 + 280) = 0xEA00000000006570;
  *(v301 + 288) = 0x6574656D61726150;
  *(v301 + 296) = v921;
  v325 = sub_1CA94C1E8();
  v326 = v910;
  v327 = v911;
  v910[4] = v325;
  *(v277 + 336) = v326;
  *(v277 + 360) = v327;
  *(v277 + 368) = 1701667150;
  *(v277 + 376) = 0xE400000000000000;
  v328 = sub_1CA94C438();
  v886 = v329;
  v330 = sub_1CA94C438();
  v332 = v331;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v330);
  v333 = &v859 - v930;
  sub_1CA948D98();
  v334 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v334);
  v335 = &v859 - v932;
  sub_1CA948B68();

  v336 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v277 + 384) = sub_1CA2F9F14(v328, v886, v330, v332, 0, 0, v333, v335);
  *(v277 + 408) = v927;
  strcpy((v277 + 416), "OutputMapping");
  *(v277 + 430) = -4864;
  v869 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v337 = swift_allocObject();
  *(v337 + 16) = v915;
  *(v337 + 32) = sub_1CA94C1E8();
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v868 = v338;
  *(v277 + 432) = v337;
  v339 = v919;
  *(v277 + 456) = v338;
  *(v277 + 464) = v339;
  *(v277 + 472) = v892;
  v340 = sub_1CA94C438();
  v886 = v341;
  v342 = sub_1CA94C438();
  v344 = v343;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v342);
  v345 = &v859 - v930;
  sub_1CA948D98();
  v346 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v346);
  v347 = &v859 - v932;
  sub_1CA948B68();

  v348 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v349 = sub_1CA2F9F14(v340, v886, v342, v344, 0, 0, v345, v347);
  v350 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v277 + 504) = v888;
  *(v277 + 480) = v350;
  *(v902 + 40) = sub_1CA94C1E8();
  v351 = swift_allocObject();
  *(v351 + 16) = v899;
  strcpy((v351 + 32), "ActionKeywords");
  *(v351 + 47) = -18;
  v865 = sub_1CA94C438();
  v353 = v352;
  v354 = sub_1CA94C438();
  v356 = v355;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v354);
  v357 = &v859 - v930;
  sub_1CA948D98();
  v358 = v929;
  v359 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v359);
  v360 = &v859 - v932;
  sub_1CA948B68();

  v361 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v351 + 48) = sub_1CA2F9F14(v865, v353, v354, v356, 0, 0, v357, v360);
  v362 = v927;
  *(v351 + 72) = v927;
  *(v351 + 80) = 0x79726F6765746143;
  v363 = v884;
  *(v351 + 88) = 0xE800000000000000;
  *(v351 + 96) = v363;
  *(v351 + 120) = v898;
  *(v351 + 128) = 0x7470697263736544;
  *(v351 + 136) = 0xEB000000006E6F69;
  v364 = swift_allocObject();
  *(v364 + 16) = v915;
  *(v364 + 32) = v885;
  v365 = sub_1CA94C438();
  v864 = v366;
  v865 = v365;
  v367 = sub_1CA94C438();
  v369 = v368;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v367);
  v370 = &v859 - v930;
  sub_1CA948D98();
  v371 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v371);
  v372 = &v859 - v932;
  sub_1CA948B68();

  v373 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v374 = sub_1CA2F9F14(v865, v864, v367, v369, 0, 0, v370, v372);
  *(v364 + 64) = v362;
  *(v364 + 40) = v374;
  sub_1CA94C1E8();
  v375 = v900;
  v376 = sub_1CA6B3784();
  v886 = v351;
  *(v351 + 144) = v376;
  *(v351 + 168) = v375;
  strcpy((v351 + 176), "Discoverable");
  *(v351 + 189) = 0;
  *(v351 + 190) = -5120;
  *(v351 + 192) = 0;
  *(v351 + 216) = MEMORY[0x1E69E6370];
  *(v351 + 224) = 0x74616D726F46;
  *(v351 + 232) = 0xE600000000000000;
  *(v351 + 240) = 0xD000000000000031;
  *(v351 + 248) = 0x80000001CA9A91E0;
  v377 = MEMORY[0x1E69E6158];
  *(v351 + 264) = MEMORY[0x1E69E6158];
  *(v351 + 272) = 0x696669746E656449;
  *(v351 + 280) = v894;
  *(v351 + 288) = 0x6F74646461;
  *(v351 + 296) = 0xE500000000000000;
  *(v351 + 312) = v377;
  strcpy((v351 + 320), "InputMapping");
  *(v351 + 333) = 0;
  *(v351 + 334) = -5120;
  v378 = swift_allocObject();
  *(v378 + 16) = v899;
  v379 = v378;
  v910 = v378;
  v380 = swift_allocObject();
  *(v380 + 16) = v908;
  strcpy((v380 + 32), "DestinationKey");
  *(v380 + 47) = -18;
  *(v380 + 48) = 1954047348;
  *(v380 + 56) = 0xE400000000000000;
  *(v380 + 72) = v377;
  *(v380 + 80) = 0x74616E6974736544;
  *(v380 + 88) = 0xEF657079546E6F69;
  *(v380 + 96) = 0x74736275534C5255;
  *(v380 + 104) = 0xEF6E6F6974757469;
  *(v380 + 120) = v377;
  *(v380 + 128) = 0x73616C436D657449;
  *(v380 + 136) = v920;
  *(v380 + 144) = 0xD000000000000013;
  *(v380 + 152) = v917;
  *(v380 + 168) = v377;
  *(v380 + 176) = 0x654B656372756F53;
  *(v380 + 184) = 0xE900000000000079;
  *(v380 + 192) = 0x6E49737466617244;
  *(v380 + 200) = 0xEB00000000747570;
  *(v380 + 216) = v377;
  *(v380 + 224) = 0x7954656372756F53;
  *(v380 + 264) = v377;
  *(v380 + 232) = 0xEA00000000006570;
  *(v380 + 240) = 0x7475706E49;
  *(v380 + 248) = 0xE500000000000000;
  *(v379 + 32) = sub_1CA94C1E8();
  v381 = swift_allocObject();
  *(v381 + 16) = v918;
  *(v381 + 32) = 0x6574656D61726150;
  *(v381 + 40) = 0xEB00000000495572;
  v382 = swift_allocObject();
  *(v382 + 16) = v893;
  v384 = v866;
  v383 = v867;
  v385 = v916;
  *(v382 + 32) = v867;
  *(v382 + 40) = v385;
  *(v382 + 48) = v914;
  *(v382 + 64) = v377;
  *(v382 + 72) = v384;
  v865 = v383;
  v867 = v384;
  v386 = sub_1CA94C438();
  v864 = v387;
  v388 = sub_1CA94C438();
  v390 = v389;
  v866 = &v859;
  MEMORY[0x1EEE9AC00](v388);
  v391 = &v859 - v930;
  sub_1CA948D98();
  v392 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v392);
  v393 = &v859 - v932;
  sub_1CA948B68();

  v394 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v395 = sub_1CA2F9F14(v386, v864, v388, v390, 0, 0, v391, v393);
  *(v382 + 104) = v927;
  *(v382 + 80) = v395;
  sub_1CA94C1E8();
  v396 = v925;
  *(v381 + 48) = sub_1CA2F864C();
  *(v381 + 72) = v396;
  *(v381 + 80) = 0x654B656372756F53;
  *(v381 + 88) = 0xE900000000000079;
  *(v381 + 96) = 0x6E49737466617244;
  *(v381 + 104) = 0xEB00000000747570;
  v397 = MEMORY[0x1E69E6158];
  *(v381 + 120) = MEMORY[0x1E69E6158];
  *(v381 + 128) = 0x7954656372756F53;
  *(v381 + 168) = v397;
  *(v381 + 136) = 0xEA00000000006570;
  *(v381 + 144) = 0x6574656D61726150;
  *(v381 + 152) = v921;
  v910[5] = sub_1CA94C1E8();
  v398 = swift_allocObject();
  *(v398 + 16) = xmmword_1CA981300;
  strcpy((v398 + 32), "DestinationKey");
  *(v398 + 47) = -18;
  *(v398 + 48) = 1701080941;
  *(v398 + 56) = 0xE400000000000000;
  *(v398 + 72) = v397;
  *(v398 + 80) = 0x74616E6974736544;
  *(v398 + 88) = 0xEF657079546E6F69;
  *(v398 + 96) = 0x74736275534C5255;
  *(v398 + 104) = 0xEF6E6F6974757469;
  *(v398 + 120) = v397;
  *(v398 + 128) = 0x73616C436D657449;
  *(v398 + 136) = v920;
  *(v398 + 144) = 0xD000000000000013;
  *(v398 + 152) = v917;
  v399 = v919;
  *(v398 + 168) = v397;
  *(v398 + 176) = v399;
  *(v398 + 184) = v906;
  *(v398 + 192) = 0x657461657243;
  *(v398 + 200) = 0xE600000000000000;
  *(v398 + 216) = v397;
  *(v398 + 224) = 0x6574656D61726150;
  *(v398 + 232) = 0xEB00000000495572;
  v400 = swift_allocObject();
  v864 = v400;
  *(v400 + 16) = v918;
  v401 = v865;
  v402 = v882;
  v403 = v883;
  *(v400 + 32) = v865;
  *(v400 + 40) = v403;
  *(v400 + 48) = v402;
  v404 = v880;
  *(v400 + 64) = v397;
  *(v400 + 72) = v404;
  v405 = swift_allocObject();
  *(v405 + 16) = v881;
  v866 = v401;
  v406 = sub_1CA94C438();
  v862 = v407;
  v863 = v406;
  v408 = sub_1CA94C438();
  v861 = v409;
  v865 = &v859;
  MEMORY[0x1EEE9AC00](v408);
  v410 = &v859 - v930;
  sub_1CA948D98();
  v411 = v929;
  v412 = [v929 bundleURL];
  v860 = &v859;
  MEMORY[0x1EEE9AC00](v412);
  v413 = &v859 - v932;
  sub_1CA948B68();

  v414 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v405 + 32) = sub_1CA2F9F14(v863, v862, v408, v861, 0, 0, v410, v413);
  v415 = sub_1CA94C438();
  v862 = v416;
  v863 = v415;
  v417 = sub_1CA94C438();
  v861 = v418;
  v865 = &v859;
  MEMORY[0x1EEE9AC00](v417);
  v419 = v930;
  sub_1CA948D98();
  v420 = [v411 bundleURL];
  MEMORY[0x1EEE9AC00](v420);
  v421 = v932;
  sub_1CA948B68();

  v422 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v405 + 40) = sub_1CA2F9F14(v863, v862, v417, v861, 0, 0, &v859 - v419, &v859 - v421);
  v423 = sub_1CA94C438();
  v862 = v424;
  v863 = v423;
  v425 = sub_1CA94C438();
  v861 = v426;
  v865 = &v859;
  MEMORY[0x1EEE9AC00](v425);
  v427 = &v859 - v419;
  sub_1CA948D98();
  v428 = v929;
  v429 = [v929 bundleURL];
  v860 = &v859;
  MEMORY[0x1EEE9AC00](v429);
  sub_1CA948B68();

  v430 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v431 = sub_1CA2F9F14(v863, v862, v425, v861, 0, 0, v427, &v859 - v421);
  v432 = v405;
  *(v405 + 48) = v431;
  v433 = v864;
  v864[10] = v432;
  v434 = v867;
  v433[13] = v879;
  v433[14] = v434;
  v865 = v434;
  v435 = sub_1CA94C438();
  v862 = v436;
  v863 = v435;
  v437 = sub_1CA94C438();
  v439 = v438;
  v867 = &v859;
  MEMORY[0x1EEE9AC00](v437);
  v440 = &v859 - v930;
  sub_1CA948D98();
  v441 = [v428 bundleURL];
  MEMORY[0x1EEE9AC00](v441);
  v442 = &v859 - v932;
  sub_1CA948B68();

  v443 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v444 = sub_1CA2F9F14(v863, v862, v437, v439, 0, 0, v440, v442);
  v433[18] = v927;
  v433[15] = v444;
  sub_1CA94C1E8();
  v445 = v925;
  *(v398 + 240) = sub_1CA2F864C();
  *(v398 + 264) = v445;
  *(v398 + 272) = 0x654B656372756F53;
  *(v398 + 280) = 0xE900000000000079;
  strcpy((v398 + 288), "DraftsAddMode");
  *(v398 + 302) = -4864;
  v446 = MEMORY[0x1E69E6158];
  *(v398 + 312) = MEMORY[0x1E69E6158];
  *(v398 + 320) = 0x7954656372756F53;
  *(v398 + 328) = 0xEA00000000006570;
  *(v398 + 336) = 0x6574656D61726150;
  *(v398 + 344) = v921;
  *(v398 + 360) = v446;
  strcpy((v398 + 368), "ValueMapping");
  *(v398 + 381) = 0;
  *(v398 + 382) = -5120;
  v447 = v446;
  v448 = sub_1CA94C1E8();
  *(v398 + 408) = v891;
  *(v398 + 384) = v448;
  v910[6] = sub_1CA94C1E8();
  v449 = swift_allocObject();
  *(v449 + 16) = v912;
  strcpy((v449 + 32), "DestinationKey");
  *(v449 + 47) = -18;
  *(v449 + 48) = 1684632949;
  *(v449 + 56) = 0xE400000000000000;
  *(v449 + 72) = v447;
  *(v449 + 80) = 0x74616E6974736544;
  *(v449 + 88) = 0xEF657079546E6F69;
  strcpy((v449 + 96), "URLQueryValue");
  *(v449 + 110) = -4864;
  *(v449 + 120) = v447;
  *(v449 + 128) = 0x73616C436D657449;
  *(v449 + 136) = v920;
  *(v449 + 144) = 0xD000000000000013;
  *(v449 + 152) = v917;
  *(v449 + 168) = v447;
  *(v449 + 176) = 0x6574656D61726150;
  *(v449 + 184) = 0xEB00000000495572;
  v450 = swift_allocObject();
  *(v450 + 16) = v909;
  v451 = v866;
  v452 = v916;
  *(v450 + 32) = v866;
  *(v450 + 40) = v452;
  *(v450 + 48) = v914;
  v453 = v870;
  *(v450 + 64) = v447;
  *(v450 + 72) = v453;
  v867 = v451;
  v866 = v453;
  v454 = sub_1CA94C438();
  v863 = v455;
  v864 = v454;
  v456 = sub_1CA94C438();
  v862 = v457;
  v870 = &v859;
  MEMORY[0x1EEE9AC00](v456);
  v458 = &v859 - v930;
  sub_1CA948D98();
  v459 = [v929 bundleURL];
  v861 = &v859;
  MEMORY[0x1EEE9AC00](v459);
  v460 = v932;
  sub_1CA948B68();

  v461 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v450 + 80) = sub_1CA2F9F14(v864, v863, v456, v862, 0, 0, v458, &v859 - v460);
  v462 = v927;
  v463 = v865;
  *(v450 + 104) = v927;
  *(v450 + 112) = v463;
  v870 = v463;
  v464 = sub_1CA94C438();
  v863 = v465;
  v864 = v464;
  v466 = sub_1CA94C438();
  v862 = v467;
  v865 = &v859;
  MEMORY[0x1EEE9AC00](v466);
  v468 = &v859 - v930;
  sub_1CA948D98();
  v469 = [v929 bundleURL];
  v861 = &v859;
  MEMORY[0x1EEE9AC00](v469);
  sub_1CA948B68();

  v470 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v450 + 120) = sub_1CA2F9F14(v864, v863, v466, v862, 0, 0, v468, &v859 - v460);
  *(v450 + 144) = v462;
  v471 = v872;
  *(v450 + 152) = v872;
  v472 = swift_allocObject();
  *(v472 + 16) = v915;
  v872 = v471;
  v473 = MEMORY[0x1E69E6158];
  *(v472 + 32) = sub_1CA94C1E8();
  *(v450 + 184) = v868;
  *(v450 + 160) = v472;
  sub_1CA94C1E8();
  v474 = v925;
  *(v449 + 192) = sub_1CA2F864C();
  *(v449 + 216) = v474;
  *(v449 + 224) = 0x654B656372756F53;
  *(v449 + 232) = 0xE900000000000079;
  *(v449 + 240) = 0x5555737466617244;
  *(v449 + 248) = 0xEA00000000004449;
  *(v449 + 264) = v473;
  *(v449 + 272) = 0x7954656372756F53;
  *(v449 + 312) = v473;
  *(v449 + 280) = 0xEA00000000006570;
  *(v449 + 288) = 0x6574656D61726150;
  *(v449 + 296) = v921;
  v910[7] = sub_1CA94C1E8();
  v475 = swift_allocObject();
  *(v475 + 16) = v890;
  *(v475 + 32) = 0x74616E6974736544;
  *(v475 + 40) = 0xEF657079546E6F69;
  *(v475 + 48) = 0x43656C6261736944;
  *(v475 + 56) = 0xEF6B6361626C6C61;
  *(v475 + 72) = v473;
  *(v475 + 80) = 0x73616C436D657449;
  v476 = v916;
  *(v475 + 88) = v920;
  *(v475 + 96) = v476;
  *(v475 + 104) = v875;
  v477 = v919;
  *(v475 + 120) = v473;
  *(v475 + 128) = v477;
  *(v475 + 136) = v906;
  *(v475 + 144) = 1;
  *(v475 + 168) = MEMORY[0x1E69E6370];
  *(v475 + 176) = 0x6574656D61726150;
  *(v475 + 184) = 0xEB00000000495572;
  v478 = swift_allocObject();
  *(v478 + 16) = v918;
  v480 = v866;
  v479 = v867;
  v481 = v901;
  *(v478 + 32) = v867;
  *(v478 + 40) = v481;
  *(v478 + 48) = v887;
  *(v478 + 64) = v473;
  *(v478 + 72) = v480;
  v869 = v479;
  v875 = v480;
  v482 = sub_1CA94C438();
  v866 = v483;
  v867 = v482;
  v484 = sub_1CA94C438();
  v865 = v485;
  v868 = &v859;
  MEMORY[0x1EEE9AC00](v484);
  v486 = v930;
  sub_1CA948D98();
  v487 = v929;
  v488 = [v929 bundleURL];
  v864 = &v859;
  MEMORY[0x1EEE9AC00](v488);
  v489 = &v859 - v932;
  sub_1CA948B68();

  v490 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v478 + 80) = sub_1CA2F9F14(v867, v866, v484, v865, 0, 0, &v859 - v486, v489);
  v491 = v927;
  v492 = v870;
  *(v478 + 104) = v927;
  *(v478 + 112) = v492;
  v870 = v492;
  v493 = sub_1CA94C438();
  v866 = v494;
  v867 = v493;
  v495 = sub_1CA94C438();
  v865 = v496;
  v868 = &v859;
  MEMORY[0x1EEE9AC00](v495);
  sub_1CA948D98();
  v497 = [v487 bundleURL];
  MEMORY[0x1EEE9AC00](v497);
  v498 = &v859 - v932;
  sub_1CA948B68();

  v499 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v500 = sub_1CA2F9F14(v867, v866, v495, v865, 0, 0, &v859 - v486, v498);
  *(v478 + 144) = v491;
  *(v478 + 120) = v500;
  sub_1CA94C1E8();
  v501 = v925;
  *(v475 + 192) = sub_1CA2F864C();
  *(v475 + 216) = v501;
  *(v475 + 224) = 0x654B656372756F53;
  *(v475 + 232) = 0xE900000000000079;
  strcpy((v475 + 240), "DraftsReturn");
  *(v475 + 253) = 0;
  *(v475 + 254) = -5120;
  v502 = MEMORY[0x1E69E6158];
  *(v475 + 264) = MEMORY[0x1E69E6158];
  *(v475 + 272) = 0x7954656372756F53;
  *(v475 + 280) = 0xEA00000000006570;
  *(v475 + 288) = 0x6574656D61726150;
  *(v475 + 296) = v921;
  *(v475 + 312) = v502;
  strcpy((v475 + 320), "ValueMapping");
  *(v475 + 333) = 0;
  *(v475 + 334) = -5120;
  v503 = v502;
  v504 = sub_1CA94C1E8();
  *(v475 + 360) = v891;
  *(v475 + 336) = v504;
  v910[8] = sub_1CA94C1E8();
  v505 = swift_allocObject();
  *(v505 + 16) = v909;
  v506 = v906;
  *(v505 + 32) = v919;
  *(v505 + 40) = v506;
  *(v505 + 48) = 0;
  *(v505 + 72) = MEMORY[0x1E69E6370];
  *(v505 + 80) = 0x6574656D61726150;
  *(v505 + 88) = 0xEB00000000495572;
  v507 = swift_allocObject();
  *(v507 + 16) = v893;
  v508 = v869;
  v509 = v870;
  v510 = v901;
  *(v507 + 32) = v869;
  *(v507 + 40) = v510;
  *(v507 + 48) = v887;
  *(v507 + 64) = v503;
  *(v507 + 72) = v509;
  v891 = v508;
  v901 = v509;
  v511 = sub_1CA94C438();
  v870 = v512;
  v513 = sub_1CA94C438();
  v515 = v514;
  v887 = &v859;
  MEMORY[0x1EEE9AC00](v513);
  v516 = &v859 - v930;
  sub_1CA948D98();
  v517 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v517);
  v518 = &v859 - v932;
  sub_1CA948B68();

  v519 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v520 = sub_1CA2F9F14(v511, v870, v513, v515, 0, 0, v516, v518);
  *(v507 + 104) = v927;
  *(v507 + 80) = v520;
  sub_1CA94C1E8();
  v521 = v925;
  *(v505 + 96) = sub_1CA2F864C();
  *(v505 + 120) = v521;
  *(v505 + 128) = 0x654B656372756F53;
  *(v505 + 136) = 0xE900000000000079;
  *(v505 + 144) = 0xD000000000000013;
  *(v505 + 152) = v907;
  v522 = MEMORY[0x1E69E6158];
  *(v505 + 168) = MEMORY[0x1E69E6158];
  *(v505 + 176) = 0x7954656372756F53;
  *(v505 + 216) = v522;
  *(v505 + 184) = 0xEA00000000006570;
  *(v505 + 192) = 0x6574656D61726150;
  *(v505 + 200) = v921;
  v910[9] = sub_1CA94C1E8();
  v523 = swift_allocObject();
  *(v523 + 16) = v912;
  strcpy((v523 + 32), "DestinationKey");
  *(v523 + 47) = -18;
  *(v523 + 48) = 0x6E6F69746361;
  *(v523 + 56) = 0xE600000000000000;
  *(v523 + 72) = v522;
  *(v523 + 80) = 0x74616E6974736544;
  *(v523 + 88) = 0xEF657079546E6F69;
  strcpy((v523 + 96), "URLQueryValue");
  *(v523 + 110) = -4864;
  *(v523 + 120) = v522;
  *(v523 + 128) = 0x73616C436D657449;
  *(v523 + 136) = v920;
  *(v523 + 144) = 0xD000000000000013;
  *(v523 + 152) = v917;
  *(v523 + 168) = v522;
  *(v523 + 176) = 0x6574656D61726150;
  *(v523 + 184) = 0xEB00000000495572;
  v524 = swift_allocObject();
  *(v524 + 16) = v908;
  v525 = v891;
  v526 = v916;
  *(v524 + 32) = v891;
  *(v524 + 40) = v526;
  *(v524 + 48) = v914;
  v527 = v875;
  *(v524 + 64) = v522;
  *(v524 + 72) = v527;
  v870 = v525;
  v875 = v527;
  v887 = sub_1CA94C438();
  v869 = v528;
  v529 = sub_1CA94C438();
  v868 = v530;
  v891 = &v859;
  MEMORY[0x1EEE9AC00](v529);
  v531 = v930;
  sub_1CA948D98();
  v532 = v929;
  v533 = [v929 bundleURL];
  v867 = &v859;
  MEMORY[0x1EEE9AC00](v533);
  v534 = &v859 - v932;
  sub_1CA948B68();

  v535 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v524 + 80) = sub_1CA2F9F14(v887, v869, v529, v868, 0, 0, &v859 - v531, v534);
  v536 = v901;
  *(v524 + 104) = v927;
  *(v524 + 112) = v536;
  v891 = v536;
  v887 = sub_1CA94C438();
  v869 = v537;
  v538 = sub_1CA94C438();
  v868 = v539;
  v901 = &v859;
  MEMORY[0x1EEE9AC00](v538);
  sub_1CA948D98();
  v540 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v540);
  v541 = v932;
  sub_1CA948B68();

  v542 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v524 + 120) = sub_1CA2F9F14(v887, v869, v538, v868, 0, 0, &v859 - v531, &v859 - v541);
  v543 = v927;
  v544 = v871;
  *(v524 + 144) = v927;
  *(v524 + 152) = v544;
  v901 = v544;
  v871 = sub_1CA94C438();
  v869 = v545;
  v546 = sub_1CA94C438();
  v868 = v547;
  v887 = &v859;
  MEMORY[0x1EEE9AC00](v546);
  v548 = &v859 - v930;
  sub_1CA948D98();
  v549 = [v929 bundleURL];
  v867 = &v859;
  MEMORY[0x1EEE9AC00](v549);
  sub_1CA948B68();

  v550 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v524 + 160) = sub_1CA2F9F14(v871, v869, v546, v868, 0, 0, v548, &v859 - v541);
  v551 = v872;
  *(v524 + 184) = v543;
  *(v524 + 192) = v551;
  v552 = swift_allocObject();
  *(v552 + 16) = v915;
  v553 = swift_allocObject();
  *(v553 + 16) = v918;
  strcpy((v553 + 32), "WFParameterKey");
  *(v553 + 47) = -18;
  *(v553 + 48) = 0xD000000000000013;
  *(v553 + 56) = v907;
  v554 = MEMORY[0x1E69E6158];
  v555 = v919;
  *(v553 + 72) = MEMORY[0x1E69E6158];
  *(v553 + 80) = v555;
  *(v553 + 88) = v905;
  *(v553 + 96) = 1;
  *(v553 + 120) = MEMORY[0x1E69E6370];
  *(v553 + 128) = 0x72756F7365524657;
  *(v553 + 168) = v554;
  *(v553 + 136) = 0xEF7373616C436563;
  v556 = v904;
  *(v553 + 144) = v903;
  *(v553 + 152) = v556;
  v887 = v551;
  *(v552 + 32) = sub_1CA94C1E8();
  *(v524 + 224) = v911;
  *(v524 + 200) = v552;
  sub_1CA94C1E8();
  v557 = v925;
  *(v523 + 192) = sub_1CA2F864C();
  *(v523 + 216) = v557;
  *(v523 + 224) = 0x654B656372756F53;
  *(v523 + 232) = 0xE900000000000079;
  strcpy((v523 + 240), "DraftsAction");
  *(v523 + 253) = 0;
  *(v523 + 254) = -5120;
  *(v523 + 264) = v554;
  *(v523 + 272) = 0x7954656372756F53;
  *(v523 + 312) = v554;
  *(v523 + 280) = 0xEA00000000006570;
  *(v523 + 288) = 0x6574656D61726150;
  *(v523 + 296) = v921;
  v910[10] = sub_1CA94C1E8();
  v558 = swift_allocObject();
  *(v558 + 16) = v912;
  strcpy((v558 + 32), "DestinationKey");
  *(v558 + 47) = -18;
  *(v558 + 48) = 7955819;
  *(v558 + 56) = 0xE300000000000000;
  *(v558 + 72) = v554;
  *(v558 + 80) = 0x74616E6974736544;
  *(v558 + 88) = 0xEF657079546E6F69;
  strcpy((v558 + 96), "URLQueryValue");
  *(v558 + 110) = -4864;
  *(v558 + 120) = v554;
  *(v558 + 128) = 0x73616C436D657449;
  *(v558 + 136) = v920;
  *(v558 + 144) = 0xD000000000000013;
  *(v558 + 152) = v917;
  *(v558 + 168) = v554;
  *(v558 + 176) = 0x6574656D61726150;
  *(v558 + 184) = 0xEB00000000495572;
  v559 = swift_allocObject();
  *(v559 + 16) = v908;
  v560 = v870;
  v561 = v916;
  *(v559 + 32) = v870;
  *(v559 + 40) = v561;
  *(v559 + 48) = v914;
  v562 = v875;
  *(v559 + 64) = v554;
  *(v559 + 72) = v562;
  v871 = v560;
  v872 = v562;
  v563 = sub_1CA94C438();
  v869 = v564;
  v870 = v563;
  v868 = sub_1CA94C438();
  v566 = v565;
  v875 = &v859;
  MEMORY[0x1EEE9AC00](v868);
  v567 = v930;
  sub_1CA948D98();
  v568 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v568);
  v569 = &v859 - v932;
  sub_1CA948B68();

  v570 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v559 + 80) = sub_1CA2F9F14(v870, v869, v868, v566, 0, 0, &v859 - v567, v569);
  v571 = v927;
  v572 = v891;
  *(v559 + 104) = v927;
  *(v559 + 112) = v572;
  v875 = v572;
  v573 = sub_1CA94C438();
  v869 = v574;
  v870 = v573;
  v575 = sub_1CA94C438();
  v577 = v576;
  v891 = &v859;
  MEMORY[0x1EEE9AC00](v575);
  sub_1CA948D98();
  v578 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v578);
  v579 = &v859 - v932;
  sub_1CA948B68();

  v580 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v559 + 120) = sub_1CA2F9F14(v870, v869, v575, v577, 0, 0, &v859 - v567, v579);
  v581 = v901;
  *(v559 + 144) = v571;
  *(v559 + 152) = v581;
  *(v559 + 160) = 0x504C4B595A33;
  *(v559 + 168) = 0xE600000000000000;
  v582 = MEMORY[0x1E69E6158];
  v583 = v887;
  *(v559 + 184) = MEMORY[0x1E69E6158];
  *(v559 + 192) = v583;
  v584 = swift_allocObject();
  *(v584 + 16) = v915;
  v585 = swift_allocObject();
  *(v585 + 16) = v918;
  strcpy((v585 + 32), "WFParameterKey");
  *(v585 + 47) = -18;
  *(v585 + 48) = 0xD000000000000013;
  *(v585 + 56) = v907;
  v586 = v919;
  *(v585 + 72) = v582;
  *(v585 + 80) = v586;
  *(v585 + 88) = v905;
  *(v585 + 96) = 1;
  *(v585 + 120) = MEMORY[0x1E69E6370];
  *(v585 + 128) = 0x72756F7365524657;
  *(v585 + 168) = v582;
  *(v585 + 136) = 0xEF7373616C436563;
  v587 = v904;
  *(v585 + 144) = v903;
  *(v585 + 152) = v587;
  *(v584 + 32) = sub_1CA94C1E8();
  *(v559 + 224) = v911;
  *(v559 + 200) = v584;
  sub_1CA94C1E8();
  v588 = v925;
  *(v558 + 192) = sub_1CA2F864C();
  *(v558 + 216) = v588;
  *(v558 + 224) = 0x654B656372756F53;
  *(v558 + 232) = 0xE900000000000079;
  *(v558 + 240) = 0x6341737466617244;
  *(v558 + 248) = 0xEF79654B6E6F6974;
  *(v558 + 264) = v582;
  *(v558 + 272) = 0x7954656372756F53;
  *(v558 + 312) = v582;
  *(v558 + 280) = 0xEA00000000006570;
  *(v558 + 288) = 0x6574656D61726150;
  *(v558 + 296) = v921;
  v910[11] = sub_1CA94C1E8();
  v589 = swift_allocObject();
  *(v589 + 16) = v890;
  strcpy((v589 + 32), "DestinationKey");
  *(v589 + 47) = -18;
  strcpy((v589 + 48), "afterSuccess");
  *(v589 + 61) = 0;
  *(v589 + 62) = -5120;
  *(v589 + 72) = v582;
  *(v589 + 80) = 0x74616E6974736544;
  *(v589 + 88) = 0xEF657079546E6F69;
  strcpy((v589 + 96), "URLQueryValue");
  *(v589 + 110) = -4864;
  *(v589 + 120) = v582;
  *(v589 + 128) = 0x73616C436D657449;
  *(v589 + 136) = v920;
  *(v589 + 144) = 0xD000000000000013;
  *(v589 + 152) = v917;
  *(v589 + 168) = v582;
  *(v589 + 176) = v586;
  *(v589 + 184) = v906;
  *(v589 + 192) = 0x676E6968746F4ELL;
  *(v589 + 200) = 0xE700000000000000;
  *(v589 + 216) = v582;
  *(v589 + 224) = 0x6574656D61726150;
  *(v589 + 232) = 0xEB00000000495572;
  v590 = swift_allocObject();
  *(v590 + 16) = v908;
  v591 = v871;
  v592 = v872;
  v593 = v882;
  v594 = v883;
  *(v590 + 32) = v871;
  *(v590 + 40) = v594;
  *(v590 + 48) = v593;
  *(v590 + 64) = v582;
  *(v590 + 72) = v592;
  *&v890 = v591;
  v891 = v592;
  v595 = sub_1CA94C438();
  v882 = v596;
  v883 = v595;
  v872 = sub_1CA94C438();
  v598 = v597;
  v906 = &v859;
  MEMORY[0x1EEE9AC00](v872);
  v599 = v930;
  sub_1CA948D98();
  v600 = v929;
  v601 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v601);
  v602 = &v859 - v932;
  sub_1CA948B68();

  v603 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v590 + 80) = sub_1CA2F9F14(v883, v882, v872, v598, 0, 0, &v859 - v599, v602);
  v604 = v880;
  *(v590 + 104) = v927;
  *(v590 + 112) = v604;
  v906 = swift_allocObject();
  *(v906 + 1) = v881;
  v882 = sub_1CA94C438();
  *&v881 = v605;
  v606 = sub_1CA94C438();
  v880 = v607;
  v883 = &v859;
  MEMORY[0x1EEE9AC00](v606);
  v608 = &v859 - v599;
  sub_1CA948D98();
  v609 = [v600 bundleURL];
  MEMORY[0x1EEE9AC00](v609);
  v610 = &v859 - v932;
  sub_1CA948B68();

  v611 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v612 = sub_1CA2F9F14(v882, v881, v606, v880, 0, 0, v608, v610);
  v906[4] = v612;
  v882 = sub_1CA94C438();
  *&v881 = v613;
  v614 = sub_1CA94C438();
  v880 = v615;
  v883 = &v859;
  MEMORY[0x1EEE9AC00](v614);
  v616 = &v859 - v930;
  sub_1CA948D98();
  v617 = v929;
  v618 = [v929 bundleURL];
  v872 = &v859;
  MEMORY[0x1EEE9AC00](v618);
  v619 = v932;
  sub_1CA948B68();

  v620 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v621 = sub_1CA2F9F14(v882, v881, v614, v880, 0, 0, v616, &v859 - v619);
  v906[5] = v621;
  v882 = sub_1CA94C438();
  *&v881 = v622;
  v623 = sub_1CA94C438();
  v880 = v624;
  v883 = &v859;
  MEMORY[0x1EEE9AC00](v623);
  v625 = v930;
  sub_1CA948D98();
  v626 = [v617 bundleURL];
  v872 = &v859;
  MEMORY[0x1EEE9AC00](v626);
  sub_1CA948B68();

  v627 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v628 = sub_1CA2F9F14(v882, v881, v623, v880, 0, 0, &v859 - v625, &v859 - v619);
  v629 = v906;
  v906[6] = v628;
  *(v590 + 120) = v629;
  v630 = v875;
  *(v590 + 144) = v879;
  *(v590 + 152) = v630;
  v906 = v630;
  v882 = sub_1CA94C438();
  *&v881 = v631;
  v632 = sub_1CA94C438();
  v880 = v633;
  v883 = &v859;
  MEMORY[0x1EEE9AC00](v632);
  sub_1CA948D98();
  v634 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v634);
  v635 = &v859 - v932;
  sub_1CA948B68();

  v636 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v590 + 160) = sub_1CA2F9F14(v882, v881, v632, v880, 0, 0, &v859 - v625, v635);
  v637 = v887;
  *(v590 + 184) = v927;
  *(v590 + 192) = v637;
  v638 = swift_allocObject();
  *(v638 + 16) = v915;
  v639 = swift_allocObject();
  *(v639 + 16) = v918;
  strcpy((v639 + 32), "WFParameterKey");
  *(v639 + 47) = -18;
  *(v639 + 48) = 0xD000000000000013;
  *(v639 + 56) = v907;
  v640 = MEMORY[0x1E69E6158];
  v641 = v919;
  *(v639 + 72) = MEMORY[0x1E69E6158];
  *(v639 + 80) = v641;
  *(v639 + 88) = v905;
  *(v639 + 96) = 1;
  *(v639 + 120) = MEMORY[0x1E69E6370];
  *(v639 + 128) = 0x72756F7365524657;
  *(v639 + 168) = v640;
  *(v639 + 136) = 0xEF7373616C436563;
  v642 = v904;
  *(v639 + 144) = v903;
  *(v639 + 152) = v642;
  v643 = v640;
  *(v638 + 32) = sub_1CA94C1E8();
  v644 = v911;
  *(v590 + 224) = v911;
  *(v590 + 200) = v638;
  sub_1CA94C1E8();
  v645 = v925;
  *(v589 + 240) = sub_1CA2F864C();
  *(v589 + 264) = v645;
  *(v589 + 272) = 0x654B656372756F53;
  *(v589 + 280) = 0xE900000000000079;
  v646 = v874;
  *(v589 + 288) = v873;
  *(v589 + 296) = v646;
  *(v589 + 312) = v643;
  *(v589 + 320) = 0x7954656372756F53;
  *(v589 + 360) = v643;
  *(v589 + 328) = 0xEA00000000006570;
  *(v589 + 336) = 0x6574656D61726150;
  *(v589 + 344) = v921;
  v647 = sub_1CA94C1E8();
  v648 = v910;
  v910[12] = v647;
  v649 = v886;
  v886[10].data = v648;
  v649[11].info = v644;
  v649[11].data = 1701667150;
  v649[11].length = 0xE400000000000000;
  v650 = sub_1CA94C438();
  v907 = v651;
  v652 = sub_1CA94C438();
  v654 = v653;
  v910 = &v859;
  MEMORY[0x1EEE9AC00](v652);
  v655 = v930;
  sub_1CA948D98();
  v656 = v929;
  v657 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v657);
  v658 = &v859 - v932;
  sub_1CA948B68();

  v659 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v660 = sub_1CA2F9F14(v650, v907, v652, v654, 0, 0, &v859 - v655, v658);
  v661 = v886;
  v886[12].isa = v660;
  v662 = v919;
  v661[12].length = v927;
  v661[13].isa = v662;
  v661[13].info = v892;
  v910 = swift_allocObject();
  *(v910 + 1) = xmmword_1CA981410;
  v907 = "tion Name)";
  v663 = sub_1CA94C438();
  v903 = v664;
  v904 = v663;
  v665 = sub_1CA94C438();
  v667 = v666;
  v905 = &v859;
  MEMORY[0x1EEE9AC00](v665);
  sub_1CA948D98();
  v668 = [v656 bundleURL];
  MEMORY[0x1EEE9AC00](v668);
  v669 = v932;
  sub_1CA948B68();

  v670 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v671 = sub_1CA2F9F14(v904, v903, v665, v667, 0, 0, &v859 - v655, &v859 - v669);
  v672 = objc_allocWithZone(WFActionParameterSummaryValue);
  v673 = sub_1CA65DD78(0xD00000000000004DLL, v907 | 0x8000000000000000, v671);
  v674 = v910;
  v910[4] = v673;
  v907 = "to draft ${DraftsUUID}";
  v675 = sub_1CA94C438();
  v903 = v676;
  v904 = v675;
  v677 = sub_1CA94C438();
  v889 = v678;
  v905 = &v859;
  MEMORY[0x1EEE9AC00](v677);
  v679 = &v859 - v930;
  sub_1CA948D98();
  v680 = v929;
  v681 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v681);
  sub_1CA948B68();

  v682 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v683 = sub_1CA2F9F14(v904, v903, v677, v889, 0, 0, v679, &v859 - v669);
  v684 = objc_allocWithZone(WFActionParameterSummaryValue);
  v674[5] = sub_1CA65DD78(0xD000000000000080, v907 | 0x8000000000000000, v683);
  v907 = "aftsAfterSuccess";
  v685 = sub_1CA94C438();
  v903 = v686;
  v904 = v685;
  v687 = sub_1CA94C438();
  v689 = v688;
  v905 = &v859;
  MEMORY[0x1EEE9AC00](v687);
  v690 = &v859 - v930;
  sub_1CA948D98();
  v691 = [v680 bundleURL];
  MEMORY[0x1EEE9AC00](v691);
  sub_1CA948B68();

  v692 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v693 = sub_1CA2F9F14(v904, v903, v687, v689, 0, 0, v690, &v859 - v669);
  v694 = objc_allocWithZone(WFActionParameterSummaryValue);
  v695 = sub_1CA65DD78(0xD000000000000042, v907 | 0x8000000000000000, v693);
  v696 = v910;
  v910[6] = v695;
  v907 = " draft with ${DraftsInput}";
  v697 = sub_1CA94C438();
  v903 = v698;
  v904 = v697;
  v699 = sub_1CA94C438();
  v889 = v700;
  v905 = &v859;
  MEMORY[0x1EEE9AC00](v699);
  v701 = v930;
  sub_1CA948D98();
  v702 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v702);
  sub_1CA948B68();

  v703 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v704 = sub_1CA2F9F14(v904, v903, v699, v889, 0, 0, &v859 - v701, &v859 - v669);
  v705 = objc_allocWithZone(WFActionParameterSummaryValue);
  v696[7] = sub_1CA65DD78(0xD000000000000075, v907 | 0x8000000000000000, v704);
  v907 = "ey,DraftsAfterSuccess";
  v706 = sub_1CA94C438();
  v903 = v707;
  v904 = v706;
  v708 = sub_1CA94C438();
  v889 = v709;
  v905 = &v859;
  MEMORY[0x1EEE9AC00](v708);
  sub_1CA948D98();
  v710 = v929;
  v711 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v711);
  v712 = v932;
  sub_1CA948B68();

  v713 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v714 = sub_1CA2F9F14(v904, v903, v708, v889, 0, 0, &v859 - v701, &v859 - v712);
  v715 = objc_allocWithZone(WFActionParameterSummaryValue);
  v716 = sub_1CA65DD78(0xD00000000000004ELL, v907 | 0x8000000000000000, v714);
  v910[8] = v716;
  v907 = "aftsReturn,DraftsActionEnabled";
  v717 = sub_1CA94C438();
  v903 = v718;
  v904 = v717;
  v719 = sub_1CA94C438();
  v889 = v720;
  v905 = &v859;
  MEMORY[0x1EEE9AC00](v719);
  v721 = v930;
  sub_1CA948D98();
  v722 = [v710 bundleURL];
  MEMORY[0x1EEE9AC00](v722);
  sub_1CA948B68();

  v723 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v724 = sub_1CA2F9F14(v904, v903, v719, v889, 0, 0, &v859 - v721, &v859 - v712);
  v725 = objc_allocWithZone(WFActionParameterSummaryValue);
  v726 = sub_1CA65DD78(0xD000000000000081, v907 | 0x8000000000000000, v724);
  v910[9] = v726;
  v727 = v888;
  v728 = sub_1CA65AF90();
  v729 = v886;
  v886[14].info = v727;
  *(v729 + 432) = v728;
  *(v902 + 48) = sub_1CA94C1E8();
  v730 = swift_allocObject();
  *(v730 + 16) = v899;
  strcpy((v730 + 32), "ActionKeywords");
  *(v730 + 47) = -18;
  v731 = sub_1CA94C438();
  v904 = v732;
  v905 = v731;
  v733 = sub_1CA94C438();
  v735 = v734;
  v907 = &v859;
  MEMORY[0x1EEE9AC00](v733);
  sub_1CA948D98();
  v736 = [v710 bundleURL];
  MEMORY[0x1EEE9AC00](v736);
  v737 = &v859 - v932;
  sub_1CA948B68();

  v738 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v730 + 48) = sub_1CA2F9F14(v905, v904, v733, v735, 0, 0, &v859 - v721, v737);
  v739 = v927;
  *(v730 + 72) = v927;
  *(v730 + 80) = 0x79726F6765746143;
  v740 = v884;
  *(v730 + 88) = 0xE800000000000000;
  *(v730 + 96) = v740;
  *(v730 + 120) = v898;
  *(v730 + 128) = 0x7470697263736544;
  *(v730 + 136) = 0xEB000000006E6F69;
  v741 = swift_allocObject();
  *(v741 + 16) = v915;
  *(v741 + 32) = v885;
  v907 = sub_1CA94C438();
  v905 = v742;
  v743 = sub_1CA94C438();
  v745 = v744;
  *&v915 = &v859;
  MEMORY[0x1EEE9AC00](v743);
  v746 = &v859 - v930;
  sub_1CA948D98();
  v747 = [v710 bundleURL];
  MEMORY[0x1EEE9AC00](v747);
  v748 = &v859 - v932;
  sub_1CA948B68();

  v749 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v750 = sub_1CA2F9F14(v907, v905, v743, v745, 0, 0, v746, v748);
  *(v741 + 64) = v739;
  *(v741 + 40) = v750;
  sub_1CA94C1E8();
  v751 = v900;
  v752 = sub_1CA6B3784();
  v910 = v730;
  *(v730 + 144) = v752;
  *(v730 + 168) = v751;
  strcpy((v730 + 176), "Discoverable");
  *(v730 + 189) = 0;
  *(v730 + 190) = -5120;
  *(v730 + 192) = 0;
  *(v730 + 216) = MEMORY[0x1E69E6370];
  *(v730 + 224) = 0x74616D726F46;
  *(v730 + 232) = 0xE600000000000000;
  *(v730 + 240) = 0xD000000000000032;
  *(v730 + 248) = 0x80000001CA9A9640;
  v753 = MEMORY[0x1E69E6158];
  *(v730 + 264) = MEMORY[0x1E69E6158];
  *(v730 + 272) = 0x696669746E656449;
  *(v730 + 280) = v894;
  *(v730 + 288) = 0x6F697463416E7572;
  *(v730 + 296) = 0xE90000000000006ELL;
  *(v730 + 312) = v753;
  strcpy((v730 + 320), "InputMapping");
  *(v730 + 333) = 0;
  *(v730 + 334) = -5120;
  v754 = swift_allocObject();
  *(v754 + 16) = v909;
  v755 = v754;
  *&v915 = v754;
  v756 = swift_allocObject();
  *(v756 + 16) = v908;
  strcpy((v756 + 32), "DestinationKey");
  *(v756 + 47) = -18;
  *(v756 + 48) = 1954047348;
  *(v756 + 56) = 0xE400000000000000;
  *(v756 + 72) = v753;
  *(v756 + 80) = 0x74616E6974736544;
  *(v756 + 88) = 0xEF657079546E6F69;
  *(v756 + 96) = 0x74736275534C5255;
  *(v756 + 104) = 0xEF6E6F6974757469;
  *(v756 + 120) = v753;
  v757 = v920;
  *(v756 + 128) = 0x73616C436D657449;
  *(v756 + 136) = v757;
  v758 = v917;
  *(v756 + 144) = 0xD000000000000013;
  *(v756 + 152) = v758;
  *(v756 + 168) = v753;
  *(v756 + 176) = 0x654B656372756F53;
  *(v756 + 184) = 0xE900000000000079;
  *(v756 + 192) = 0x6E49737466617244;
  *(v756 + 200) = 0xEB00000000747570;
  *(v756 + 216) = v753;
  *(v756 + 224) = 0x7954656372756F53;
  *(v756 + 264) = v753;
  *(v756 + 232) = 0xEA00000000006570;
  *(v756 + 240) = 0x7475706E49;
  *(v756 + 248) = 0xE500000000000000;
  *(v755 + 32) = sub_1CA94C1E8();
  v759 = swift_allocObject();
  *(v759 + 16) = v909;
  *(v759 + 32) = 0x73616C436D657449;
  *(v759 + 40) = v757;
  *(v759 + 48) = 0xD000000000000013;
  *(v759 + 56) = v758;
  *(v759 + 72) = v753;
  *(v759 + 80) = 0x6574656D61726150;
  *(v759 + 88) = 0xEB00000000495572;
  v760 = swift_allocObject();
  *(v760 + 16) = v893;
  v761 = v890;
  v762 = v916;
  *(v760 + 32) = v890;
  *(v760 + 40) = v762;
  *(v760 + 48) = v914;
  v763 = v906;
  *(v760 + 64) = v753;
  *(v760 + 72) = v763;
  *&v908 = v761;
  v913 = v763;
  v764 = sub_1CA94C438();
  v905 = v765;
  v906 = v764;
  v766 = sub_1CA94C438();
  v768 = v767;
  v907 = &v859;
  MEMORY[0x1EEE9AC00](v766);
  v769 = &v859 - v930;
  sub_1CA948D98();
  v770 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v770);
  v771 = &v859 - v932;
  sub_1CA948B68();

  v772 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v773 = sub_1CA2F9F14(v906, v905, v766, v768, 0, 0, v769, v771);
  *(v760 + 104) = v927;
  *(v760 + 80) = v773;
  sub_1CA94C1E8();
  v774 = v925;
  *(v759 + 96) = sub_1CA2F864C();
  *(v759 + 120) = v774;
  *(v759 + 128) = 0x654B656372756F53;
  *(v759 + 136) = 0xE900000000000079;
  *(v759 + 144) = 0x6E49737466617244;
  *(v759 + 152) = 0xEB00000000747570;
  v775 = MEMORY[0x1E69E6158];
  *(v759 + 168) = MEMORY[0x1E69E6158];
  *(v759 + 176) = 0x7954656372756F53;
  *(v759 + 216) = v775;
  *(v759 + 184) = 0xEA00000000006570;
  *(v759 + 192) = 0x6574656D61726150;
  *(v759 + 200) = v921;
  *(v915 + 40) = sub_1CA94C1E8();
  v776 = swift_allocObject();
  *(v776 + 16) = v912;
  strcpy((v776 + 32), "DestinationKey");
  *(v776 + 47) = -18;
  *(v776 + 48) = 0x6E6F69746361;
  *(v776 + 56) = 0xE600000000000000;
  *(v776 + 72) = v775;
  *(v776 + 80) = 0x74616E6974736544;
  *(v776 + 88) = 0xEF657079546E6F69;
  strcpy((v776 + 96), "URLQueryValue");
  *(v776 + 110) = -4864;
  *(v776 + 120) = v775;
  *(v776 + 128) = 0x73616C436D657449;
  *(v776 + 136) = v920;
  *(v776 + 144) = 0xD000000000000013;
  *(v776 + 152) = v917;
  *(v776 + 168) = v775;
  *(v776 + 176) = 0x6574656D61726150;
  *(v776 + 184) = 0xEB00000000495572;
  v777 = swift_allocObject();
  *(v777 + 16) = v918;
  v778 = v916;
  *(v777 + 32) = v908;
  *(v777 + 40) = v778;
  *(v777 + 48) = v914;
  v779 = v891;
  *(v777 + 64) = v775;
  *(v777 + 72) = v779;
  v780 = sub_1CA94C438();
  v906 = v781;
  v907 = v780;
  v782 = sub_1CA94C438();
  v904 = v783;
  v905 = v782;
  *&v918 = &v859;
  MEMORY[0x1EEE9AC00](v782);
  v784 = v930;
  sub_1CA948D98();
  v785 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v785);
  v786 = v932;
  sub_1CA948B68();

  v787 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v777 + 80) = sub_1CA2F9F14(v907, v906, v905, v904, 0, 0, &v859 - v784, &v859 - v786);
  v788 = v927;
  v789 = v913;
  *(v777 + 104) = v927;
  *(v777 + 112) = v789;
  v790 = sub_1CA94C438();
  v906 = v791;
  v907 = v790;
  v792 = sub_1CA94C438();
  v904 = v793;
  v905 = v792;
  *&v918 = &v859;
  MEMORY[0x1EEE9AC00](v792);
  v794 = &v859 - v784;
  sub_1CA948D98();
  v795 = v929;
  v796 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v796);
  sub_1CA948B68();

  v797 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v798 = sub_1CA2F9F14(v907, v906, v905, v904, 0, 0, v794, &v859 - v786);
  *(v777 + 144) = v788;
  *(v777 + 120) = v798;
  sub_1CA94C1E8();
  v799 = v925;
  *(v776 + 192) = sub_1CA2F864C();
  *(v776 + 216) = v799;
  *(v776 + 224) = 0x654B656372756F53;
  *(v776 + 232) = 0xE900000000000079;
  strcpy((v776 + 240), "DraftsAction");
  *(v776 + 253) = 0;
  *(v776 + 254) = -5120;
  v800 = MEMORY[0x1E69E6158];
  *(v776 + 264) = MEMORY[0x1E69E6158];
  *(v776 + 272) = 0x7954656372756F53;
  *(v776 + 312) = v800;
  *(v776 + 280) = 0xEA00000000006570;
  *(v776 + 288) = 0x6574656D61726150;
  *(v776 + 296) = v921;
  *(v915 + 48) = sub_1CA94C1E8();
  v801 = swift_allocObject();
  *(v801 + 16) = v912;
  strcpy((v801 + 32), "DestinationKey");
  *(v801 + 47) = -18;
  *(v801 + 48) = 7955819;
  *(v801 + 56) = 0xE300000000000000;
  *(v801 + 72) = v800;
  *(v801 + 80) = 0x74616E6974736544;
  *(v801 + 88) = 0xEF657079546E6F69;
  strcpy((v801 + 96), "URLQueryValue");
  *(v801 + 110) = -4864;
  *(v801 + 120) = v800;
  *(v801 + 128) = 0x73616C436D657449;
  *(v801 + 136) = v920;
  *(v801 + 144) = 0xD000000000000013;
  *(v801 + 152) = v917;
  *(v801 + 168) = v800;
  *(v801 + 176) = 0x6574656D61726150;
  *(v801 + 184) = 0xEB00000000495572;
  v802 = swift_allocObject();
  *(v802 + 16) = v909;
  v803 = v916;
  *(v802 + 32) = v908;
  *(v802 + 40) = v803;
  *(v802 + 48) = v914;
  v804 = v891;
  *(v802 + 64) = v800;
  *(v802 + 72) = v804;
  v924 = sub_1CA94C438();
  v920 = v805;
  *&v918 = sub_1CA94C438();
  v917 = v806;
  v926 = &v859;
  MEMORY[0x1EEE9AC00](v918);
  v807 = v930;
  sub_1CA948D98();
  v808 = [v795 bundleURL];
  v916 = &v859;
  MEMORY[0x1EEE9AC00](v808);
  v809 = v932;
  sub_1CA948B68();

  v810 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v802 + 80) = sub_1CA2F9F14(v924, v920, v918, v917, 0, 0, &v859 - v807, &v859 - v809);
  v811 = v913;
  *(v802 + 104) = v927;
  *(v802 + 112) = v811;
  v924 = sub_1CA94C438();
  v920 = v812;
  *&v918 = sub_1CA94C438();
  v917 = v813;
  v926 = &v859;
  MEMORY[0x1EEE9AC00](v918);
  sub_1CA948D98();
  v814 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v814);
  sub_1CA948B68();

  v815 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v802 + 120) = sub_1CA2F9F14(v924, v920, v918, v917, 0, 0, &v859 - v807, &v859 - v809);
  v816 = v901;
  *(v802 + 144) = v927;
  *(v802 + 152) = v816;
  v817 = MEMORY[0x1E69E6158];
  *(v802 + 184) = MEMORY[0x1E69E6158];
  *(v802 + 160) = 0x504C4B595A33;
  *(v802 + 168) = 0xE600000000000000;
  sub_1CA94C1E8();
  v818 = v925;
  *(v801 + 192) = sub_1CA2F864C();
  *(v801 + 216) = v818;
  *(v801 + 224) = 0x654B656372756F53;
  *(v801 + 232) = 0xE900000000000079;
  *(v801 + 240) = 0x6341737466617244;
  *(v801 + 248) = 0xEF79654B6E6F6974;
  *(v801 + 264) = v817;
  *(v801 + 272) = 0x7954656372756F53;
  *(v801 + 312) = v817;
  *(v801 + 280) = 0xEA00000000006570;
  *(v801 + 288) = 0x6574656D61726150;
  *(v801 + 296) = v921;
  v819 = sub_1CA94C1E8();
  v820 = v915;
  *(v915 + 56) = v819;
  v821 = v910;
  v910[42] = v820;
  v821[45] = v911;
  v821[46] = 1701667150;
  v821[47] = 0xE400000000000000;
  v822 = sub_1CA94C438();
  v824 = v823;
  v825 = sub_1CA94C438();
  v827 = v826;
  v926 = &v859;
  MEMORY[0x1EEE9AC00](v825);
  v828 = &v859 - v930;
  sub_1CA948D98();
  v829 = v929;
  v830 = [v929 bundleURL];
  MEMORY[0x1EEE9AC00](v830);
  v831 = &v859 - v932;
  sub_1CA948B68();

  v832 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v833 = sub_1CA2F9F14(v822, v824, v825, v827, 0, 0, v828, v831);
  v834 = v910;
  v910[48] = v833;
  v835 = v919;
  v834[51] = v927;
  v834[52] = v835;
  v834[53] = v892;
  v836 = sub_1CA94C438();
  v926 = v837;
  v838 = sub_1CA94C438();
  v840 = v839;
  v927 = &v859;
  MEMORY[0x1EEE9AC00](v838);
  v841 = &v859 - v930;
  sub_1CA948D98();
  v842 = [v829 bundleURL];
  MEMORY[0x1EEE9AC00](v842);
  v843 = &v859 - v932;
  sub_1CA948B68();

  v844 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v845 = sub_1CA2F9F14(v836, v926, v838, v840, 0, 0, v841, v843);
  v846 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v834[57] = v888;
  v834[54] = v846;
  v847 = MEMORY[0x1E69E6158];
  v848 = sub_1CA94C1E8();
  v849 = v902;
  *(v902 + 56) = v848;
  v850 = v877;
  *(v877 + 48) = v849;
  *(v850 + 72) = v911;
  strcpy((v850 + 80), "Capabilities");
  *(v850 + 93) = 0;
  *(v850 + 94) = -5120;
  v851 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v850 + 96) = &unk_1F49F6168;
  *(v850 + 120) = v851;
  *(v850 + 128) = 0x656D65686353;
  *(v850 + 168) = v847;
  *(v850 + 136) = 0xE600000000000000;
  *(v850 + 144) = 0x7374666172642D78;
  *(v850 + 152) = 0xE900000000000035;
  v852 = sub_1CA94C1E8();
  v853 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v854 = v878;
  *(v878 + 32) = v852;
  v854[7] = v853;
  v854[8] = 0x35737466617264;
  v854[9] = 0xE700000000000000;
  v854[15] = v847;
  v854[11] = v847;
  v854[12] = 0x34737466617264;
  v854[13] = 0xE700000000000000;
  v855 = v854;
  v856 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v857 = v876;
  *(v876 + 216) = v856;
  *(v857 + 192) = v855;
  return sub_1CA94C1E8();
}