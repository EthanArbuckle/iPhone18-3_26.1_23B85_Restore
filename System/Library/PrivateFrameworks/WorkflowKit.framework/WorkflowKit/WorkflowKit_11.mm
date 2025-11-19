unint64_t sub_1CA36D628()
{
  result = qword_1EC444808;
  if (!qword_1EC444808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444808);
  }

  return result;
}

unint64_t sub_1CA36D680()
{
  result = qword_1EC444810;
  if (!qword_1EC444810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444810);
  }

  return result;
}

uint64_t sub_1CA36D71C(uint64_t a1, uint64_t a2)
{
  v4 = _s17ControlFlowBranchVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CA36D780(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a5)
  {

    a1 = a4;
    v5 = vars8;
  }
}

unint64_t sub_1CA36D7CC()
{
  result = qword_1EC441B00;
  if (!qword_1EC441B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444838, &unk_1CA984300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B00);
  }

  return result;
}

uint64_t sub_1CA36D830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444840, &qword_1CA984310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA36D8F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_1CA36D94C(id result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 < 2)
  {
    sub_1CA94C218();
    sub_1CA94C218();
    result = a4;

    return result;
  }

  if (!a6)
  {

    return result;
  }

  return result;
}

void sub_1CA36D9BC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 < 2)
  {

    a1 = a4;

LABEL_4:

    return;
  }

  if (!a6)
  {

    goto LABEL_4;
  }
}

id sub_1CA36DA2C(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a5)
  {
    sub_1CA94C218();
    sub_1CA94C218();
    a1 = a4;
    v5 = vars8;
  }

  return a1;
}

uint64_t sub_1CA36DA78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA36DABC(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_47_3()
{
  v5 = *(v4 - 184);
  *(v5 + 16) = v1;
  v6 = v5 + 16 * v3;
  *(v6 + 32) = v0;
  *(v6 + 40) = v2;
}

id sub_1CA36DB74()
{
  v156 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9AA120;
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
  v165 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v166 = v12;
  v13 = &v143 - v165;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v161 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v163 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v164 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v143 - v164;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v160 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  *&v159 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v155 = xmmword_1CA97EDF0;
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionAttribution";
  v22 = @"Description";
  v23 = @"DescriptionAttribution";
  v157 = sub_1CA94C438();
  v154 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v158 = &v143;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v143 - v165;
  sub_1CA948D98();
  v29 = v161;
  v30 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v162 = inited;
  v31 = v164;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v157, v154, v25, v27, 0, 0, v28, &v143 - v31);
  v33 = v160;
  *(v21 + 64) = v160;
  *(v21 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v157 = sub_1CA94C438();
  v154 = v35;
  v36 = sub_1CA94C438();
  v38 = v37;
  v158 = &v143;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v143 - v165;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v157, v154, v36, v38, 0, 0, v39, &v143 - v31);
  *(v21 + 104) = v33;
  *(v21 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v43 = v159;
  v44 = sub_1CA6B3784();
  v45 = v162;
  v162[15] = v44;
  v45[18] = v43;
  v45[19] = @"IconName";
  v45[20] = 0x6D617A616853;
  v45[21] = 0xE600000000000000;
  v45[23] = MEMORY[0x1E69E6158];
  v45[24] = @"InputPassthrough";
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 200) = 0;
  v45[28] = v46;
  v45[29] = @"Name";
  v47 = @"IconName";
  v48 = @"InputPassthrough";
  v49 = @"Name";
  v50 = sub_1CA94C438();
  v52 = v51;
  v53 = sub_1CA94C438();
  v55 = v54;
  *&v159 = &v143;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v143 - v165;
  sub_1CA948D98();
  v57 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v143 - v164;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  v61 = v162;
  v162[30] = v60;
  v61[33] = v160;
  v61[34] = @"Output";
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v159 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  *(v62 + 96) = 0;
  *(v62 + 120) = MEMORY[0x1E69E6370];
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v63 = @"Output";
  v64 = sub_1CA94C438();
  v157 = v65;
  v66 = sub_1CA94C438();
  v68 = v67;
  v158 = &v143;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v143 - v165;
  sub_1CA948D98();
  v70 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v143 - v164;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v64, v157, v66, v68, 0, 0, v69, v71);
  *(v62 + 168) = v160;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 192) = &unk_1F49F64B8;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v153 = v75;
  v76 = v162;
  v162[35] = v74;
  v76[38] = v75;
  v76[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v158 = swift_allocObject();
  *(v158 + 1) = xmmword_1CA981360;
  v157 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_initStackObject();
  *(v77 + 16) = v159;
  v149 = 0x80000001CA99E620;
  *(v77 + 32) = @"Class";
  *(v77 + 40) = 0xD000000000000011;
  *(v77 + 48) = 0x80000001CA99E620;
  *(v77 + 64) = v73;
  *(v77 + 72) = @"DefaultValue";
  *(v77 + 80) = 1;
  *(v77 + 104) = MEMORY[0x1E69E6370];
  *(v77 + 112) = @"Key";
  v151 = 0xD00000000000001ELL;
  v152 = 0x80000001CA99E640;
  *(v77 + 120) = 0xD00000000000001ELL;
  *(v77 + 128) = 0x80000001CA99E640;
  *(v77 + 144) = v73;
  *(v77 + 152) = @"Label";
  v78 = @"Class";
  v79 = @"DefaultValue";
  v80 = @"Key";
  v81 = @"Label";
  v147 = v78;
  v146 = v79;
  v145 = v80;
  v148 = v81;
  v82 = @"Parameters";
  v83 = sub_1CA94C438();
  v143 = v84;
  v85 = sub_1CA94C438();
  v87 = v86;
  v144 = &v143;
  MEMORY[0x1EEE9AC00](v85);
  v88 = v165;
  sub_1CA948D98();
  v89 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v143 - v164;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v83, v143, v85, v87, 0, 0, &v143 - v88, v90);
  *(v77 + 184) = v160;
  *(v77 + 160) = v92;
  _s3__C3KeyVMa_0(0);
  v144 = v93;
  v143 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v158[4] = sub_1CA2F864C();
  v94 = swift_allocObject();
  *(v94 + 16) = v159;
  *(v94 + 32) = v147;
  *(v94 + 40) = 0xD000000000000011;
  *(v94 + 48) = v149;
  v95 = MEMORY[0x1E69E6158];
  v96 = v146;
  *(v94 + 64) = MEMORY[0x1E69E6158];
  *(v94 + 72) = v96;
  *(v94 + 80) = 1;
  v97 = v145;
  *(v94 + 104) = MEMORY[0x1E69E6370];
  *(v94 + 112) = v97;
  *(v94 + 120) = 0xD000000000000027;
  *(v94 + 128) = 0x80000001CA99E690;
  v98 = v148;
  *(v94 + 144) = v95;
  *(v94 + 152) = v98;
  v99 = sub_1CA94C438();
  v150 = v100;
  v101 = sub_1CA94C438();
  v103 = v102;
  *&v159 = &v143;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v143 - v88;
  sub_1CA948D98();
  v105 = v161;
  v106 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v143 - v164;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v150, v101, v103, 0, 0, v104, v107);
  *(v94 + 184) = v160;
  *(v94 + 160) = v109;
  sub_1CA94C1E8();
  v110 = sub_1CA2F864C();
  v111 = v158;
  v158[5] = v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v113 = v162;
  v162[40] = v111;
  v113[43] = v112;
  v113[44] = @"ParameterSummary";
  v114 = @"ParameterSummary";
  v115 = sub_1CA94C438();
  v117 = v116;
  v118 = sub_1CA94C438();
  v120 = v119;
  v160 = &v143;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v143 - v165;
  sub_1CA948D98();
  v122 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v143 - v164;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v115, v117, v118, v120, 0, 0, v121, v123);
  v126 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v127 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v128 = v162;
  v162[45] = v126;
  v128[48] = v127;
  v128[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v129 = swift_allocObject();
  v166 = xmmword_1CA9813C0;
  *(v129 + 16) = xmmword_1CA9813C0;
  *(v129 + 32) = 0xD00000000000001ALL;
  *(v129 + 40) = 0x80000001CA993FA0;
  v130 = MEMORY[0x1E69E6158];
  *(v129 + 88) = MEMORY[0x1E69E6158];
  *(v129 + 56) = v130;
  *(v129 + 64) = 0xD00000000000001CLL;
  *(v129 + 72) = 0x80000001CA993620;
  v131 = swift_allocObject();
  *(v131 + 16) = v155;
  *(v131 + 32) = 0xD000000000000011;
  *(v131 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1CA981310;
  v133 = swift_allocObject();
  *(v133 + 16) = v166;
  strcpy((v133 + 32), "WFParameterKey");
  *(v133 + 47) = -18;
  v134 = v152;
  *(v133 + 48) = v151;
  *(v133 + 56) = v134;
  *(v133 + 72) = v130;
  *(v133 + 80) = 0xD000000000000010;
  *(v133 + 88) = 0x80000001CA993570;
  *(v133 + 96) = 1;
  *(v133 + 120) = MEMORY[0x1E69E6370];
  *(v133 + 128) = 0x72756F7365524657;
  *(v133 + 168) = v130;
  *(v133 + 136) = 0xEF7373616C436563;
  *(v133 + 144) = 0xD00000000000001BLL;
  *(v133 + 152) = 0x80000001CA993590;
  v135 = @"RequiredResources";
  *(v132 + 32) = sub_1CA94C1E8();
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v131 + 48) = v132;
  *(v131 + 72) = v136;
  *(v131 + 80) = 0x72756F7365524657;
  *(v131 + 120) = v130;
  *(v131 + 88) = 0xEF7373616C436563;
  *(v131 + 96) = 0xD000000000000019;
  *(v131 + 104) = 0x80000001CA9932D0;
  v137 = sub_1CA94C1E8();
  *(v129 + 120) = v153;
  *(v129 + 96) = v137;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v139 = v162;
  v162[50] = v129;
  v139[53] = v138;
  v139[54] = @"UserInterfaceClasses";
  v140 = @"UserInterfaceClasses";
  v141 = sub_1CA94C1E8();
  v139[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v139[55] = v141;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA36EE1C()
{
  v69 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9AA1B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v71 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v11;
  v12 = &v65 - v74;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v72 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = v15;
  v73 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v65 - v73;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v71, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v71 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v68 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v66 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v67 = &v65;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v65 - v74;
  sub_1CA948D98();
  v29 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v65 - v73;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v66, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v71;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v33 = v68;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v33;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD00000000000001BLL;
  *(inited + 208) = 0x80000001CA9AA310;
  *(inited + 224) = v34;
  *(inited + 232) = @"InputPassthrough";
  v35 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v35;
  *(inited + 272) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"InputPassthrough";
  v39 = @"Name";
  v40 = sub_1CA94C438();
  v67 = v41;
  v42 = sub_1CA94C438();
  v44 = v43;
  v68 = &v65;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v65 - v74;
  sub_1CA948D98();
  v46 = v72;
  v47 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v65 - v73;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v40, v67, v42, v44, 0, 0, v45, v48);
  *(inited + 304) = v71;
  *(inited + 312) = @"ParameterSummary";
  v50 = @"ParameterSummary";
  v51 = sub_1CA94C438();
  v68 = v52;
  v53 = sub_1CA94C438();
  v55 = v54;
  v71 = &v65;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v65 - v74;
  sub_1CA948D98();
  v57 = [v46 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v65 - v73;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v51, v68, v53, v55, 0, 0, v56, v58);
  v61 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v62 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v61;
  *(inited + 344) = v62;
  *(inited + 352) = @"RequiredResources";
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 360) = &unk_1F49F6568;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v63 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA36F65C()
{
  v208 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9AA3B0;
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
  v223 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v224 = v12;
  v13 = &v197 - v223;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v221 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v225 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v222 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v197 - v222;
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
  v207 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v218 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v215 = v28;
  v216 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v217 = &v197;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v197 - v223;
  sub_1CA948D98();
  v33 = v221;
  v34 = [v221 bundleURL];
  v219 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v222;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v216, v215, v29, v31, 0, 0, v32, &v197 - v36);
  v38 = v220;
  *(v24 + 64) = v220;
  *(v24 + 72) = @"DescriptionSummary";
  v39 = @"DescriptionSummary";
  v40 = sub_1CA94C438();
  v215 = v41;
  v216 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  v217 = &v197;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v197 - v223;
  sub_1CA948D98();
  v46 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v48 = sub_1CA2F9F14(v216, v215, v42, v44, 0, 0, v45, &v197 - v36);
  *(v24 + 104) = v38;
  *(v24 + 80) = v48;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v49 = v218;
  v50 = sub_1CA6B3784();
  v51 = v219;
  v219[20] = v50;
  v51[23] = v49;
  v51[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA9813C0;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  v54 = v53;
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  strcpy((v52 + 96), "WFMediaItems");
  *(v52 + 109) = 0;
  *(v52 + 110) = -5120;
  *(v52 + 120) = MEMORY[0x1E69E6158];
  *(v52 + 128) = 0x7365707954;
  *(v52 + 136) = 0xE500000000000000;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 168) = v206;
  *(v52 + 144) = &unk_1F49F65D8;
  v55 = @"Input";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v51[25] = v56;
  v51[28] = v57;
  v51[29] = @"InputPassthrough";
  *(v51 + 240) = 1;
  v51[33] = v54;
  v51[34] = @"Name";
  v58 = @"InputPassthrough";
  v59 = @"Name";
  v60 = sub_1CA94C438();
  v62 = v61;
  v63 = sub_1CA94C438();
  v65 = v64;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v197 - v223;
  sub_1CA948D98();
  v67 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v197 - v222;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v60, v62, v63, v65, 0, 0, v66, v68);
  v71 = v219;
  v219[35] = v70;
  v71[38] = v220;
  v71[39] = @"Parameters";
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v218 = swift_allocObject();
  v205 = xmmword_1CA981470;
  *(v218 + 16) = xmmword_1CA981470;
  v217 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_1CA981370;
  *(v72 + 32) = @"AlwaysShowsButton";
  *(v72 + 40) = 1;
  *(v72 + 64) = MEMORY[0x1E69E6370];
  *(v72 + 72) = @"Class";
  *(v72 + 80) = 0xD000000000000016;
  *(v72 + 88) = 0x80000001CA9AA480;
  *(v72 + 104) = MEMORY[0x1E69E6158];
  *(v72 + 112) = @"Description";
  v210 = @"Class";
  v73 = @"Parameters";
  v74 = @"AlwaysShowsButton";
  v75 = @"Description";
  v76 = sub_1CA94C438();
  v78 = v77;
  v79 = sub_1CA94C438();
  v81 = v80;
  v215 = &v197;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v197 - v223;
  sub_1CA948D98();
  v83 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v197 - v222;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 120) = sub_1CA2F9F14(v76, v78, v79, v81, 0, 0, v82, v84);
  v86 = v220;
  *(v72 + 144) = v220;
  *(v72 + 152) = @"Key";
  strcpy((v72 + 160), "WFMediaItems");
  *(v72 + 173) = 0;
  *(v72 + 174) = -5120;
  *(v72 + 184) = MEMORY[0x1E69E6158];
  *(v72 + 192) = @"Label";
  v87 = @"Key";
  v88 = @"Label";
  v89 = v87;
  v90 = v88;
  v214 = v89;
  v215 = v90;
  v212 = sub_1CA94C438();
  v92 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v213 = &v197;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v197 - v223;
  sub_1CA948D98();
  v97 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v197 - v222;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v212, v92, v93, v95, 0, 0, v96, v98);
  *(v72 + 224) = v86;
  *(v72 + 200) = v100;
  _s3__C3KeyVMa_0(0);
  v213 = v101;
  v212 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v218 + 32) = sub_1CA2F864C();
  v102 = swift_allocObject();
  v203 = xmmword_1CA981350;
  *(v102 + 16) = xmmword_1CA981350;
  v202 = 0x80000001CA99C4A0;
  *(v102 + 32) = v210;
  *(v102 + 40) = 0xD000000000000016;
  *(v102 + 48) = 0x80000001CA99C4A0;
  *(v102 + 64) = MEMORY[0x1E69E6158];
  *(v102 + 72) = @"Items";
  v209 = swift_allocObject();
  *(v209 + 1) = xmmword_1CA981360;
  v201 = @"Items";
  v103 = sub_1CA94C438();
  v199 = v104;
  v200 = v103;
  v105 = sub_1CA94C438();
  v198 = v106;
  v204 = &v197;
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v197 - v223;
  sub_1CA948D98();
  v108 = v221;
  v109 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v197 - v222;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v200, v199, v105, v198, 0, 0, v107, v110);
  v209[4] = v112;
  v113 = sub_1CA94C438();
  v199 = v114;
  v200 = v113;
  v198 = sub_1CA94C438();
  v116 = v115;
  v204 = &v197;
  MEMORY[0x1EEE9AC00](v198);
  v117 = v223;
  sub_1CA948D98();
  v118 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = v222;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v200, v199, v198, v116, 0, 0, &v197 - v117, &v197 - v119);
  v122 = v209;
  v209[5] = v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v204 = v123;
  *(v102 + 80) = v122;
  v124 = v214;
  *(v102 + 104) = v123;
  *(v102 + 112) = v124;
  *(v102 + 120) = 0xD000000000000018;
  *(v102 + 128) = 0x80000001CA9AA570;
  v125 = v215;
  *(v102 + 144) = MEMORY[0x1E69E6158];
  *(v102 + 152) = v125;
  v126 = sub_1CA94C438();
  v199 = v127;
  v200 = v126;
  v128 = sub_1CA94C438();
  v130 = v129;
  v209 = &v197;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v131 = v221;
  v132 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v200, v199, v128, v130, 0, 0, &v197 - v117, &v197 - v119);
  *(v102 + 184) = v220;
  *(v102 + 160) = v134;
  sub_1CA94C1E8();
  *(v218 + 40) = sub_1CA2F864C();
  v135 = swift_allocObject();
  *(v135 + 16) = v203;
  *(v135 + 32) = v210;
  *(v135 + 40) = 0xD000000000000016;
  *(v135 + 48) = v202;
  v136 = v201;
  *(v135 + 64) = MEMORY[0x1E69E6158];
  *(v135 + 72) = v136;
  v216 = swift_allocObject();
  *(v216 + 1) = v205;
  v137 = sub_1CA94C438();
  v209 = v138;
  v210 = v137;
  v139 = sub_1CA94C438();
  *&v205 = v140;
  v211 = &v197;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v223;
  sub_1CA948D98();
  v142 = [v131 bundleURL];
  *&v203 = &v197;
  MEMORY[0x1EEE9AC00](v142);
  v143 = v222;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v210, v209, v139, v205, 0, 0, &v197 - v141, &v197 - v143);
  v216[4] = v145;
  v146 = sub_1CA94C438();
  v209 = v147;
  v210 = v146;
  v148 = sub_1CA94C438();
  *&v205 = v149;
  v211 = &v197;
  MEMORY[0x1EEE9AC00](v148);
  v150 = &v197 - v141;
  sub_1CA948D98();
  v151 = v221;
  v152 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v210, v209, v148, v205, 0, 0, v150, &v197 - v143);
  v216[5] = v154;
  v155 = sub_1CA94C438();
  v209 = v156;
  v210 = v155;
  v157 = sub_1CA94C438();
  *&v205 = v158;
  v211 = &v197;
  MEMORY[0x1EEE9AC00](v157);
  v159 = v223;
  sub_1CA948D98();
  v160 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = v222;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v210, v209, v157, v205, 0, 0, &v197 - v159, &v197 - v161);
  v164 = v216;
  v216[6] = v163;
  *(v135 + 80) = v164;
  v165 = v214;
  *(v135 + 104) = v204;
  *(v135 + 112) = v165;
  *(v135 + 120) = 0xD000000000000017;
  *(v135 + 128) = 0x80000001CA9AA640;
  v166 = v215;
  *(v135 + 144) = MEMORY[0x1E69E6158];
  *(v135 + 152) = v166;
  v167 = sub_1CA94C438();
  v214 = v168;
  v215 = v167;
  v169 = sub_1CA94C438();
  v171 = v170;
  v216 = &v197;
  MEMORY[0x1EEE9AC00](v169);
  sub_1CA948D98();
  v172 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174 = sub_1CA2F9F14(v215, v214, v169, v171, 0, 0, &v197 - v159, &v197 - v161);
  *(v135 + 184) = v220;
  *(v135 + 160) = v174;
  sub_1CA94C1E8();
  v175 = sub_1CA2F864C();
  v176 = v218;
  *(v218 + 48) = v175;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v178 = v219;
  v219[40] = v176;
  v178[43] = v177;
  v178[44] = @"ParameterSummary";
  v179 = @"ParameterSummary";
  v180 = sub_1CA94C438();
  v182 = v181;
  v183 = sub_1CA94C438();
  v185 = v184;
  MEMORY[0x1EEE9AC00](v183);
  sub_1CA948D98();
  v186 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v197 - v222;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v180, v182, v183, v185, 0, 0, &v197 - v159, v187);
  v190 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v191 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v192 = v219;
  v219[45] = v190;
  v192[48] = v191;
  v192[49] = @"RequiredResources";
  v192[50] = &unk_1F49F6618;
  v192[53] = v206;
  v192[54] = @"SessionConfiguration";
  v193 = @"RequiredResources";
  v194 = @"SessionConfiguration";
  v195 = sub_1CA94C1E8();
  v192[58] = v207;
  v192[55] = v195;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA370DD8()
{
  v97 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9AA6F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v96 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438();
  v99 = v10;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v103 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = v16;
  v17 = &v90 - v103;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v101 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v102 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v100 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v90 - v100;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v99, v11, v13, 0, 0, v17, v21);
  v98 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v98;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v24 = v96;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v24;
  *(inited + 152) = @"Input";
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v25 = swift_initStackObject();
  v94 = xmmword_1CA981350;
  *(v25 + 16) = xmmword_1CA981350;
  *(v25 + 32) = 0x656C7069746C754DLL;
  *(v25 + 40) = 0xE800000000000000;
  v26 = MEMORY[0x1E69E6370];
  *(v25 + 48) = 1;
  *(v25 + 72) = v26;
  strcpy((v25 + 80), "ParameterKey");
  *(v25 + 93) = 0;
  *(v25 + 94) = -5120;
  *(v25 + 96) = 0x7475706E494657;
  *(v25 + 104) = 0xE700000000000000;
  *(v25 + 120) = MEMORY[0x1E69E6158];
  *(v25 + 128) = 0x6465726975716552;
  *(v25 + 136) = 0xE800000000000000;
  *(v25 + 144) = 1;
  *(v25 + 168) = v26;
  *(v25 + 176) = 0x7365707954;
  *(v25 + 184) = 0xE500000000000000;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v25 + 216) = v99;
  *(v25 + 192) = &unk_1F49F66F8;
  v27 = @"Input";
  v28 = sub_1CA94C1E8();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v96 = v29;
  *(inited + 160) = v28;
  *(inited + 184) = v29;
  *(inited + 192) = @"Name";
  v30 = @"Name";
  v31 = sub_1CA94C438();
  v91 = v32;
  v92 = v31;
  v33 = sub_1CA94C438();
  v35 = v34;
  v93 = &v90;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v90 - v103;
  sub_1CA948D98();
  v37 = v101;
  v38 = [v101 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  v39 = v100;
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v92, v91, v33, v35, 0, 0, v36, &v90 - v39);
  v41 = v98;
  *(inited + 224) = v98;
  *(inited + 232) = @"Output";
  v42 = swift_initStackObject();
  *(v42 + 16) = v94;
  *(v42 + 32) = 0x75736F6C63736944;
  *(v42 + 40) = 0xEF6C6576654C6572;
  *(v42 + 48) = 0x63696C627550;
  *(v42 + 56) = 0xE600000000000000;
  *(v42 + 72) = MEMORY[0x1E69E6158];
  *(v42 + 80) = 0x656C7069746C754DLL;
  *(v42 + 88) = 0xE800000000000000;
  *(v42 + 96) = 1;
  *(v42 + 120) = MEMORY[0x1E69E6370];
  *(v42 + 128) = 0x614E74757074754FLL;
  *(v42 + 136) = 0xEA0000000000656DLL;
  v43 = @"Output";
  v44 = sub_1CA94C438();
  v93 = v45;
  *&v94 = v44;
  v92 = sub_1CA94C438();
  v47 = v46;
  v95 = &v90;
  MEMORY[0x1EEE9AC00](v92);
  v48 = &v90 - v103;
  sub_1CA948D98();
  v49 = [v37 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v42 + 144) = sub_1CA2F9F14(v94, v93, v92, v47, 0, 0, v48, &v90 - v39);
  *(v42 + 168) = v41;
  *(v42 + 176) = 0x7365707954;
  *(v42 + 216) = v99;
  *(v42 + 184) = 0xE500000000000000;
  *(v42 + 192) = &unk_1F49F6728;
  v51 = MEMORY[0x1E69E6158];
  *(inited + 240) = sub_1CA94C1E8();
  *(inited + 264) = v96;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1CA9813B0;
  v95 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CA981400;
  *(v52 + 32) = @"AutocapitalizationType";
  *(v52 + 40) = 1701736270;
  *(v52 + 48) = 0xE400000000000000;
  *(v52 + 64) = v51;
  *(v52 + 72) = @"Class";
  *(v52 + 80) = 0xD000000000000014;
  *(v52 + 88) = 0x80000001CA99B500;
  *(v52 + 104) = v51;
  *(v52 + 112) = @"DisableAutocorrection";
  *(v52 + 120) = 1;
  *(v52 + 144) = MEMORY[0x1E69E6370];
  *(v52 + 152) = @"Key";
  *(v52 + 160) = 0x7475706E494657;
  *(v52 + 168) = 0xE700000000000000;
  *(v52 + 184) = v51;
  *(v52 + 192) = @"KeyboardType";
  *(v52 + 200) = 5001813;
  *(v52 + 208) = 0xE300000000000000;
  *(v52 + 224) = v51;
  *(v52 + 232) = @"Label";
  v53 = @"Parameters";
  v54 = @"AutocapitalizationType";
  v55 = @"Class";
  v56 = @"DisableAutocorrection";
  v57 = @"Key";
  v58 = @"KeyboardType";
  v59 = @"Label";
  v60 = sub_1CA94C438();
  v93 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  *&v94 = &v90;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v90 - v103;
  sub_1CA948D98();
  v66 = [v101 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v90 - v100;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 240) = sub_1CA2F9F14(v60, v93, v62, v64, 0, 0, v65, v67);
  *(v52 + 264) = v98;
  *(v52 + 272) = @"TextContentType";
  *(v52 + 304) = MEMORY[0x1E69E6158];
  *(v52 + 280) = 5001813;
  *(v52 + 288) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v69 = @"TextContentType";
  sub_1CA94C1E8();
  v70 = sub_1CA2F864C();
  v71 = v96;
  *(v96 + 32) = v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v71;
  *(inited + 304) = v72;
  *(inited + 312) = @"ParameterSummary";
  v73 = @"ParameterSummary";
  v74 = sub_1CA94C438();
  v76 = v75;
  v77 = sub_1CA94C438();
  v79 = v78;
  v98 = &v90;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v90 - v103;
  sub_1CA948D98();
  v81 = [v101 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v90 - v100;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v74, v76, v77, v79, 0, 0, v80, v82);
  v85 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v86 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v85;
  *(inited + 344) = v86;
  *(inited + 352) = @"RequiredResources";
  *(inited + 360) = &unk_1F49F6758;
  *(inited + 384) = v99;
  *(inited + 392) = @"ResidentCompatible";
  *(inited + 424) = MEMORY[0x1E69E6370];
  *(inited + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v87 = @"RequiredResources";
  v88 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA371B68()
{
  v153 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9AA880;
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
  v161 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = v12;
  v13 = &v143 - v161;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v160 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v159 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v158 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v143 - v158;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v157 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v155 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionResult";
  v22 = @"Description";
  v23 = @"DescriptionResult";
  *&v152 = sub_1CA94C438();
  *&v151 = v24;
  v150 = sub_1CA94C438();
  v26 = v25;
  v154 = &v143;
  MEMORY[0x1EEE9AC00](v150);
  v27 = &v143 - v161;
  sub_1CA948D98();
  v28 = v160;
  v29 = [v160 bundleURL];
  v156 = inited;
  MEMORY[0x1EEE9AC00](v29);
  v30 = v158;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v152, v151, v150, v26, 0, 0, v27, &v143 - v30);
  v32 = v157;
  *(v21 + 64) = v157;
  *(v21 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  *&v152 = sub_1CA94C438();
  *&v151 = v34;
  v150 = sub_1CA94C438();
  v36 = v35;
  v154 = &v143;
  MEMORY[0x1EEE9AC00](v150);
  v37 = &v143 - v161;
  sub_1CA948D98();
  v38 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v40 = sub_1CA2F9F14(v152, v151, v150, v36, 0, 0, v37, &v143 - v30);
  *(v21 + 104) = v32;
  *(v21 + 80) = v40;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v41 = v155;
  v42 = sub_1CA6B3784();
  v43 = v156;
  v156[15] = v42;
  v43[18] = v41;
  v43[19] = @"IconName";
  v43[20] = 0x656C626169726156;
  v43[21] = 0xE800000000000000;
  v44 = MEMORY[0x1E69E6158];
  v43[23] = MEMORY[0x1E69E6158];
  v43[24] = @"Input";
  v45 = v44;
  *&v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v151 = xmmword_1CA981370;
  *(v46 + 16) = xmmword_1CA981370;
  *(v46 + 32) = 0xD00000000000001DLL;
  *(v46 + 40) = 0x80000001CA9A3ED0;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 48) = 1;
  *(v46 + 72) = v47;
  *(v46 + 80) = 0x656C7069746C754DLL;
  *(v46 + 88) = 0xE800000000000000;
  *(v46 + 96) = 1;
  *(v46 + 120) = v47;
  strcpy((v46 + 128), "ParameterKey");
  *(v46 + 141) = 0;
  *(v46 + 142) = -5120;
  *(v46 + 144) = 0x7475706E494657;
  *(v46 + 152) = 0xE700000000000000;
  *(v46 + 168) = v45;
  *(v46 + 176) = 0x6465726975716552;
  *(v46 + 184) = 0xE800000000000000;
  *(v46 + 192) = 1;
  *(v46 + 216) = v47;
  *(v46 + 224) = 0x7365707954;
  *(v46 + 232) = 0xE500000000000000;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 264) = v155;
  *(v46 + 240) = &unk_1F49F6788;
  v48 = @"IconName";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v154 = v51;
  v43[25] = v50;
  v43[28] = v51;
  v43[29] = @"Name";
  v52 = @"Name";
  v53 = sub_1CA94C438();
  v149 = v54;
  v55 = sub_1CA94C438();
  v57 = v56;
  v150 = &v143;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v143 - v161;
  sub_1CA948D98();
  v59 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v143 - v158;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43[30] = sub_1CA2F9F14(v53, v149, v55, v57, 0, 0, v58, v60);
  v62 = v157;
  v43[33] = v157;
  v43[34] = @"Output";
  v63 = swift_allocObject();
  v152 = xmmword_1CA981350;
  *(v63 + 16) = xmmword_1CA981350;
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
  v149 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v150 = &v143;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v143 - v161;
  sub_1CA948D98();
  v71 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v143 - v158;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v65, v149, v67, v69, 0, 0, v70, v72);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v155;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F49F67B8;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = v156;
  v156[35] = v75;
  v76[38] = v154;
  v76[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_1CA981360;
  v154 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  *(v77 + 16) = v151;
  *(v77 + 32) = @"Class";
  *(v77 + 40) = 0xD000000000000018;
  *(v77 + 48) = 0x80000001CA9A3F20;
  *(v77 + 64) = v74;
  *(v77 + 72) = @"Key";
  strcpy((v77 + 80), "WFVariableName");
  *(v77 + 95) = -18;
  *(v77 + 104) = v74;
  *(v77 + 112) = @"Label";
  v78 = @"Class";
  v79 = @"Key";
  v80 = @"Label";
  *&v151 = v78;
  v149 = v79;
  v148 = v80;
  v81 = @"Parameters";
  v82 = sub_1CA94C438();
  v145 = v83;
  v146 = v82;
  v84 = sub_1CA94C438();
  v144 = v85;
  v147 = &v143;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v161;
  sub_1CA948D98();
  v87 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v158;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 120) = sub_1CA2F9F14(v146, v145, v84, v144, 0, 0, &v143 - v86, &v143 - v88);
  *(v77 + 144) = v157;
  *(v77 + 152) = @"Placeholder";
  v147 = @"Placeholder";
  v90 = sub_1CA94C438();
  v144 = v91;
  v145 = v90;
  v92 = sub_1CA94C438();
  v143 = v93;
  v146 = &v143;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v143 - v86;
  sub_1CA948D98();
  v95 = v160;
  v96 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 160) = sub_1CA2F9F14(v145, v144, v92, v143, 0, 0, v94, &v143 - v88);
  *(v77 + 184) = v157;
  *(v77 + 192) = @"TextAlignment";
  v98 = MEMORY[0x1E69E6158];
  *(v77 + 224) = MEMORY[0x1E69E6158];
  *(v77 + 200) = 0x7468676952;
  *(v77 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v146 = v99;
  v145 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v100 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v155 + 32) = sub_1CA2F864C();
  v101 = swift_initStackObject();
  *(v101 + 16) = v152;
  *(v101 + 32) = v151;
  *(v101 + 40) = 0xD000000000000019;
  *(v101 + 48) = 0x80000001CA99B030;
  v102 = v149;
  *(v101 + 64) = v98;
  *(v101 + 72) = v102;
  *(v101 + 80) = 0x7475706E494657;
  *(v101 + 88) = 0xE700000000000000;
  v103 = v148;
  *(v101 + 104) = v98;
  *(v101 + 112) = v103;
  v104 = sub_1CA94C438();
  v150 = v105;
  *&v151 = v104;
  v149 = sub_1CA94C438();
  v107 = v106;
  *&v152 = &v143;
  MEMORY[0x1EEE9AC00](v149);
  v108 = v161;
  sub_1CA948D98();
  v109 = v95;
  v110 = [v95 bundleURL];
  v148 = &v143;
  MEMORY[0x1EEE9AC00](v110);
  v111 = v158;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 120) = sub_1CA2F9F14(v151, v150, v149, v107, 0, 0, &v143 - v108, &v143 - v111);
  v113 = v157;
  v114 = v147;
  *(v101 + 144) = v157;
  *(v101 + 152) = v114;
  v115 = sub_1CA94C438();
  v150 = v116;
  *&v151 = v115;
  v149 = sub_1CA94C438();
  v118 = v117;
  *&v152 = &v143;
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948D98();
  v119 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v151, v150, v149, v118, 0, 0, &v143 - v108, &v143 - v111);
  *(v101 + 184) = v113;
  *(v101 + 160) = v121;
  sub_1CA94C1E8();
  v122 = sub_1CA2F864C();
  v123 = v155;
  *(v155 + 40) = v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v125 = v156;
  v156[40] = v123;
  v125[43] = v124;
  v125[44] = @"ParameterSummary";
  v126 = @"ParameterSummary";
  v127 = sub_1CA94C438();
  v129 = v128;
  v130 = sub_1CA94C438();
  v132 = v131;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v143 - v161;
  sub_1CA948D98();
  v134 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v143 - v158;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v127, v129, v130, v132, 0, 0, v133, v135);
  v138 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v139 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v140 = v156;
  v156[45] = v138;
  v140[48] = v139;
  v140[49] = @"ResidentCompatible";
  v140[53] = MEMORY[0x1E69E6370];
  *(v140 + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v141 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t ToolKitValueTransformError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA372F04()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

unint64_t sub_1CA372F4C()
{
  result = qword_1EC444928;
  if (!qword_1EC444928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444928);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolKitValueTransformError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t SharedTagged_2<>.shortcutRef.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);

  return sub_1CA94BE28();
}

uint64_t WeakRef<>.recoveredStringIdentifier<A>(in:)()
{
  v0 = sub_1CA94C168();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  sub_1CA2D9B68();
  sub_1CA94BD48();
  if (v10)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
    sub_1CA94C068();
    CRKeyPath.recoveredStringIdentifier.getter();
    (*(v3 + 8))(v8, v0);
  }

  return OUTLINED_FUNCTION_52_0();
}

uint64_t Ref<>.recoveredStringIdentifier.getter()
{
  return sub_1CA3738A4(&qword_1EC443BC0, &unk_1CA983B20);
}

{
  return sub_1CA3738A4(&qword_1EC443BD8, &qword_1CA982068);
}

void sub_1CA373210()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v38 = *(v0 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v35 = v8 - v7;
  v36 = v6;
  v9 = _s10ParentNodeOMa();
  OUTLINED_FUNCTION_1_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_0(TupleTypeMetadata2);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = *(v23 + 48);
  v37 = v11;
  v27 = *(v11 + 16);
  v27(&v34 - v24, v3, v9);
  v27(&v25[v26], v39, v9);
  OUTLINED_FUNCTION_49(v25, 1, v1);
  if (v28)
  {
    OUTLINED_FUNCTION_49(&v25[v26], 1, v1);
    if (v28)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v27(v16, v25, v9);
    OUTLINED_FUNCTION_49(&v25[v26], 1, v1);
    if (!v28)
    {
      v29 = v38;
      v30 = &v25[v26];
      v31 = v35;
      (*(v38 + 32))(v35, v30, v1);
      v32 = *(v36 + 8);
      sub_1CA94C358();
      v33 = *(v29 + 8);
      v33(v31, v1);
      v33(v16, v1);
LABEL_10:
      v19 = v37;
      goto LABEL_11;
    }

    (*(v38 + 8))(v16, v1);
  }

  v9 = TupleTypeMetadata2;
LABEL_11:
  (*(v19 + 8))(v25, v9);
  OUTLINED_FUNCTION_36();
}

void LibraryModel.FolderCollection.init(name:glyphCharacter:)()
{
  OUTLINED_FUNCTION_37_0();
  v31 = v0;
  v28 = v1;
  v29 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v30 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v28 - v24;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1CA94B838();
  v26 = type metadata accessor for LibraryModel.FolderCollection(0);
  v27 = *(v26 + 20);
  v32 = 0;
  sub_1CA94B838();
  *(v4 + *(v26 + 24)) = MEMORY[0x1E69E7CC8];
  type metadata accessor for LibraryClock();
  sub_1CA374F5C();
  v32 = v28;
  v33 = v29;
  sub_1CA94B8A8();
  (*(v18 + 16))(v23, v25, v15);
  sub_1CA94B888();
  (*(v18 + 8))(v25, v15);
  v32 = v31;
  sub_1CA94B8A8();
  (*(v8 + 16))(v30, v14, v5);
  sub_1CA94B888();
  (*(v8 + 8))(v14, v5);
  OUTLINED_FUNCTION_36();
}

uint64_t SharedTagged_2<>.folderRef.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);

  return sub_1CA94BE38();
}

uint64_t LibraryModel.FolderCollection.glyphCharacter.setter()
{
  v0 = *(type metadata accessor for LibraryModel.FolderCollection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  return sub_1CA94B868();
}

uint64_t sub_1CA3738A4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1CA94C168();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1CA94BE88();
  CRKeyPath.recoveredStringIdentifier.getter();
  (*(v7 + 8))(v12, v4);
  return OUTLINED_FUNCTION_23();
}

uint64_t LibraryModel.CategoryCollection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_52_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_14_0();
  sub_1CA25C3BC(v4, v5, v6);
  OUTLINED_FUNCTION_14_0();
  sub_1CA25C3BC(v7, v8, v9);
  sub_1CA94BD28();
  result = type metadata accessor for LibraryModel.CategoryCollection(0);
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CC8];
  return result;
}

void static Capsule<>.newLibraryCapsule()()
{
  OUTLINED_FUNCTION_37_0();
  v0 = sub_1CA94C168();
  v1 = OUTLINED_FUNCTION_18_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v4 = type metadata accessor for LibraryModel(0);
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_31_6(v13);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_31_6(v14);
  sub_1CA94BC78();
  v15 = *(v4 + 20);
  v16 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_31_6(v18);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_31_6(v19);
  sub_1CA94BDC8();
  *(v10 + *(v4 + 24)) = MEMORY[0x1E69E7CC8];
  sub_1CA94C178();
  sub_1CA25C5A0(&qword_1EC442AA8, type metadata accessor for LibraryModel);
  OUTLINED_FUNCTION_14_0();
  sub_1CA94C038();
  OUTLINED_FUNCTION_36();
}

uint64_t LibraryModel.FolderCollection.name.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  sub_1CA94B858();
  return v1;
}

uint64_t LibraryModel.FolderCollection.glyphCharacter.getter()
{
  v0 = *(type metadata accessor for LibraryModel.FolderCollection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  sub_1CA94B858();
  return v2;
}

uint64_t LibraryModel.Shortcut.Partial.visitReferences(_:)()
{
  v2 = *v0;
  sub_1CA378058();
  sub_1CA94C218();
  sub_1CA94B8B8();
}

uint64_t LibraryModel.Shortcut.Partial.init(from:)@<X0>(void *a1@<X8>)
{
  sub_1CA378058();
  result = sub_1CA94B938();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t LibraryModel.Shortcut.Partial.encode(to:)()
{
  v2 = *v0;
  sub_1CA378058();
  sub_1CA94C218();
  sub_1CA94B978();
}

uint64_t LibraryModel.Shortcut.additionalFields.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1CA373E88()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA94BC48();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v11 = *v0;
  sub_1CA378058();
  sub_1CA94C218();
  sub_1CA94B958();

  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_69();
  v9(v8);
  return 1;
}

uint64_t sub_1CA373FE8(uint64_t a1)
{
  v2 = sub_1CA378384();

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1CA374024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4570](a1, a2, v4);
}

uint64_t sub_1CA374070@<X0>(_BYTE *a1@<X8>)
{
  sub_1CA378058();
  result = sub_1CA94B8F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA3740BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4548](a1, a2, v4);
}

uint64_t sub_1CA374108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4578](a1, a2, v4);
}

uint64_t sub_1CA374158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4538](a1, a2, v4);
}

uint64_t sub_1CA3741AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4530](a1, a2, v4);
}

uint64_t sub_1CA374200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA378058();

  return MEMORY[0x1EEDF4518](a1, a2, a3, v6);
}

uint64_t sub_1CA374264(uint64_t a1)
{
  v2 = sub_1CA378058();

  return MEMORY[0x1EEDF4528](a1, v2);
}

uint64_t sub_1CA3742A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4508](a1, a2, v4);
}

uint64_t sub_1CA3742EC()
{
  sub_1CA378058();

  return sub_1CA94B958();
}

uint64_t sub_1CA374340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA378058();

  return MEMORY[0x1EEDF4558](a1, a2, v4);
}

uint64_t sub_1CA37443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA2D9B68();

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1CA3744D8(uint64_t a1)
{
  v2 = sub_1CA378058();

  return MEMORY[0x1EEDF4510](a1, v2);
}

uint64_t sub_1CA374524(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1CA94C218();
  return LibraryModel.FolderCollection.name.setter();
}

uint64_t (*LibraryModel.FolderCollection.name.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_24_8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  *(v0 + 32) = sub_1CA94B848();
  return sub_1CA379A7C;
}

uint64_t LibraryModel.FolderCollection.$name.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);

  return sub_1CA94B878();
}

uint64_t LibraryModel.FolderCollection.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27();
  v6 = OUTLINED_FUNCTION_18_13();
  v7(v6);
  OUTLINED_FUNCTION_69();
  sub_1CA94B888();
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_20_0();
  return v10(v9);
}

void (*LibraryModel.FolderCollection.$name.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *OUTLINED_FUNCTION_24_8(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  v1[1] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = __swift_coroFrameAllocStub(v6);
  v1[5] = __swift_coroFrameAllocStub(v6);
  sub_1CA94B878();
  return sub_1CA3747DC;
}

void sub_1CA3747DC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = *v2;
  v4 = *((*v2)[2] + 16);
  v4((*v2)[4], v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = *v3;
  v10 = v3[1];
  if (v1)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_1CA94B888();
    v11 = *(v8 + 8);
    v12 = OUTLINED_FUNCTION_29_7();
    v11(v12);
    v13 = OUTLINED_FUNCTION_70();
    v11(v13);
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
    sub_1CA94B888();
    v14 = *(v8 + 8);
    v15 = OUTLINED_FUNCTION_70();
    v16(v15);
  }

  free(v6);
  free(v5);
  free(v7);
  OUTLINED_FUNCTION_36();

  free(v17);
}

uint64_t (*LibraryModel.FolderCollection.glyphCharacter.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_24_8(v1);
  v2 = *(type metadata accessor for LibraryModel.FolderCollection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  *(v0 + 32) = sub_1CA94B848();
  return sub_1CA374950;
}

uint64_t LibraryModel.FolderCollection.$glyphCharacter.getter()
{
  v0 = *(type metadata accessor for LibraryModel.FolderCollection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  return sub_1CA94B878();
}

uint64_t sub_1CA3749A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27();
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  return a7(v7);
}

uint64_t LibraryModel.FolderCollection.$glyphCharacter.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27();
  v7 = OUTLINED_FUNCTION_18_13();
  v8(v7);
  v9 = v0 + *(type metadata accessor for LibraryModel.FolderCollection(0) + 20);
  OUTLINED_FUNCTION_69();
  sub_1CA94B888();
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_20_0();
  return v12(v11);
}

void (*LibraryModel.FolderCollection.$glyphCharacter.modify())(int **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *OUTLINED_FUNCTION_24_8(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  *(v1 + 8) = v3;
  OUTLINED_FUNCTION_1_0(v3);
  *(v1 + 16) = v4;
  v6 = *(v5 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v6);
  *(v1 + 32) = __swift_coroFrameAllocStub(v6);
  *(v1 + 40) = __swift_coroFrameAllocStub(v6);
  *(v1 + 48) = *(type metadata accessor for LibraryModel.FolderCollection(0) + 20);
  sub_1CA94B878();
  return sub_1CA374C3C;
}

void sub_1CA374C3C(int **a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 2) + 16);
  v4(*(*a1 + 4), v3[5], v3[1]);
  v5 = *(v3 + 12);
  v6 = v3[4];
  v14 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = *v3;
  v10 = v3[1];
  if (a2)
  {
    v4(v3[3], v6, v3[1]);
    OUTLINED_FUNCTION_70();
    sub_1CA94B888();
    v11 = *(v8 + 1);
    v12 = OUTLINED_FUNCTION_29_7();
    v11(v12);
    v13 = v14;
    (v11)(v14, v10);
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
    sub_1CA94B888();
    v13 = v14;
    (*(v8 + 1))(v14, v10);
  }

  free(v13);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t LibraryModel.FolderCollection.additionalFields.modify()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = *(type metadata accessor for LibraryModel.FolderCollection(v0) + 24);
  return OUTLINED_FUNCTION_25_6();
}

uint64_t sub_1CA374DD0()
{
  qword_1EC442C20 = 1701667182;
  *algn_1EC442C28 = 0xE400000000000000;
  qword_1EC442C30 = swift_getKeyPath();
  strcpy(byte_1EC442C38, "glyphCharacter");
  HIBYTE(qword_1EC442C40) = -18;
  result = swift_getKeyPath();
  qword_1EC442C48 = result;
  return result;
}

uint64_t static LibraryModel.FolderCollection.fields.getter()
{
  if (qword_1EC442C18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_15_5(&qword_1EC442C20);

  sub_1CA94C218();
}

uint64_t LibraryModel.FolderCollection.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1CA94B838();
  v2 = type metadata accessor for LibraryModel.FolderCollection(0);
  v3 = *(v2 + 20);
  result = sub_1CA94B838();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1CA374F5C()
{
  v0 = sub_1CA948CB8();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  sub_1CA948CA8();
  sub_1CA948C68();
  v10 = v9;
  result = (*(v3 + 8))(v8, v0);
  v12 = floor(v10);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 9.22337204e18)
  {
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static LibraryModel.FolderCollection.== infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  sub_1CA94B858();
  sub_1CA94B858();

  return 1;
}

uint64_t sub_1CA37512C(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t (*sub_1CA3751A0(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1CA3751C8(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442BE0, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1CA375234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1CA3752B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1CA375334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1CA3753B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF46A8](a1, a2, v4);
}

uint64_t sub_1CA37542C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1CA3754C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1CA37553C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1CA3755B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1CA37563C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1CA3756C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1CA375754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

uint64_t sub_1CA3757D0(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1CA37583C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1CA3758B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4680](a1, a2, v4);
}

void sub_1CA37593C()
{
  sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  JUMPOUT(0x1CCAA0A20);
}

uint64_t sub_1CA375BC4(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&unk_1EC442C08, type metadata accessor for LibraryModel.FolderCollection);

  return MEMORY[0x1EEDF4630](a1, v2);
}

uint64_t LibraryModel.CategoryCollection.additionalFields.getter()
{
  v1 = *(v0 + *(type metadata accessor for LibraryModel.CategoryCollection(0) + 20));

  return sub_1CA94C218();
}

uint64_t LibraryModel.CategoryCollection.additionalFields.setter()
{
  v2 = OUTLINED_FUNCTION_30();
  v3 = *(type metadata accessor for LibraryModel.CategoryCollection(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t LibraryModel.CategoryCollection.additionalFields.modify()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = *(type metadata accessor for LibraryModel.CategoryCollection(v0) + 20);
  return OUTLINED_FUNCTION_25_6();
}

uint64_t sub_1CA375D38()
{
  qword_1EC442BA8 = 0x74756374726F6873;
  unk_1EC442BB0 = 0xE900000000000073;
  result = swift_getKeyPath();
  qword_1EC442BB8 = result;
  return result;
}

void static LibraryModel.CategoryCollection.fields.getter()
{
  if (qword_1EC442BA0 != -1)
  {
    swift_once();
  }

  sub_1CA94C218();

  OUTLINED_FUNCTION_14_0();
}

uint64_t sub_1CA375E08(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4618](a1, v2);
}

uint64_t (*sub_1CA375E7C(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1CA375EA4(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442B70, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1CA375F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4600](a1, a2, v4);
}

uint64_t sub_1CA375F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45A8](a1, a2, v4);
}

uint64_t sub_1CA376010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45D0](a1, a2, v4);
}

uint64_t sub_1CA37608C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4610](a1, a2, v4);
}

uint64_t sub_1CA376108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45D8](a1, a2, a3, v6);
}

uint64_t sub_1CA37619C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4608](a1, a2, v4);
}

uint64_t sub_1CA376218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45E0](a1, a2, v4);
}

uint64_t sub_1CA376294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45C0](a1, a2, v4);
}

uint64_t sub_1CA376318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45B8](a1, a2, v4);
}

uint64_t sub_1CA37639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45A0](a1, a2, a3, v6);
}

uint64_t sub_1CA376430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4588](a1, a2, v4);
}

uint64_t sub_1CA3764AC(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45B0](a1, v2);
}

uint64_t sub_1CA376518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4590](a1, a2, v4);
}

uint64_t sub_1CA376594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF45E8](a1, a2, v4);
}

void sub_1CA376618()
{
  sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  JUMPOUT(0x1CCAA08F0);
}

uint64_t sub_1CA3767A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442B78, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1CA376920(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442B98, type metadata accessor for LibraryModel.CategoryCollection);

  return MEMORY[0x1EEDF4598](a1, v2);
}

uint64_t sub_1CA3769C0(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_23();

  return v6(v5);
}

uint64_t sub_1CA376A2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = OUTLINED_FUNCTION_52(v5);
  v8 = *(v7 + 40);

  return v8(v3, a1, v6);
}

uint64_t LibraryModel.shortcutsAndFolders.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryModel(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t LibraryModel.shortcutsAndFolders.setter()
{
  v2 = OUTLINED_FUNCTION_30();
  v3 = *(type metadata accessor for LibraryModel(v2) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_52(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t LibraryModel.shortcutsAndFolders.modify()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = *(type metadata accessor for LibraryModel(v0) + 20);
  return OUTLINED_FUNCTION_25_6();
}

uint64_t sub_1CA376BEC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return sub_1CA94C218();
}

uint64_t sub_1CA376C40()
{
  v2 = OUTLINED_FUNCTION_30();
  v4 = *(v3(v2) + 24);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t LibraryModel.additionalFields.modify()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = *(type metadata accessor for LibraryModel(v0) + 24);
  return OUTLINED_FUNCTION_25_6();
}

uint64_t static LibraryModel.fields.getter()
{
  if (qword_1EC442B18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_15_5(&qword_1EC442B20);

  sub_1CA94C218();
}

__n128 sub_1CA376D48@<Q0>(void (*a1)(uint64_t *__return_ptr)@<X2>, uint64_t a2@<X8>)
{
  a1(&v6);
  v3 = v8;
  result = v7;
  v5 = v9;
  *a2 = v6;
  *(a2 + 8) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_1CA376DA0(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442AA0, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1CA376E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1CA376E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1CA376F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1CA376F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF46A8](a1, a2, v4);
}

uint64_t sub_1CA377004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1CA377098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1CA377114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1CA377190(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1CA377214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1CA377298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1CA37732C(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1CA377398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1CA377414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4680](a1, a2, v4);
}

void sub_1CA377498()
{
  sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  JUMPOUT(0x1CCAA0A20);
}

uint64_t sub_1CA377624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25C5A0(&qword_1EC442AA8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1CA377720(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4630](a1, v2);
}

void SharedTagged_2<>.description.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  OUTLINED_FUNCTION_18_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v50 = v7;
  v51 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v48 - v11;
  v12 = sub_1CA94C168();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  OUTLINED_FUNCTION_18_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  OUTLINED_FUNCTION_1_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v48 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  OUTLINED_FUNCTION_49(v26, 1, v27);
  if (v35)
  {
    sub_1CA27080C(v26, &qword_1EC443BB0, &qword_1CA982060);
    sub_1CA94BE38();
    v36 = v51;
    OUTLINED_FUNCTION_49(v0, 1, v51);
    if (v35)
    {
      sub_1CA27080C(v0, &off_1EC443BD0, &unk_1CA983B10);
    }

    else
    {
      v41 = v49;
      v40 = v50;
      (*(v50 + 32))(v49, v0, v36);
      v52 = 0x5F7265646C6F46;
      v53 = 0xE700000000000000;
      sub_1CA94BE88();
      OUTLINED_FUNCTION_4_20();
      sub_1CA25C5A0(v42, v43);
      v44 = sub_1CA94D798();
      MEMORY[0x1CCAA1300](v44);

      v45 = *(v15 + 8);
      v46 = OUTLINED_FUNCTION_69();
      v47(v46);
      (*(v40 + 8))(v41, v36);
    }
  }

  else
  {
    (*(v29 + 32))(v34, v26, v27);
    v52 = 0x74756374726F6853;
    v53 = 0xE90000000000005FLL;
    sub_1CA94BE88();
    OUTLINED_FUNCTION_4_20();
    sub_1CA25C5A0(v37, v38);
    v39 = sub_1CA94D798();
    MEMORY[0x1CCAA1300](v39);

    (*(v15 + 8))(v20, v12);
    (*(v29 + 8))(v34, v27);
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA377BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  OUTLINED_FUNCTION_49(v12, 1, v3);
  if (v15)
  {
    return MEMORY[0x1CCAA2780](0);
  }

  (*(v4 + 32))(v8, v12, v3);
  MEMORY[0x1CCAA2780](1);
  v16 = *(a2 + 32);
  sub_1CA94C298();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1CA377D68(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA377BC0(v3, a1);
  return sub_1CA94D968();
}

void sub_1CA377DB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  sub_1CA373210();
}

uint64_t sub_1CA377DCC(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  sub_1CA377BC0(v4, a2);
  return sub_1CA94D968();
}

uint64_t CRKeyPath.recoveredStringIdentifier.getter()
{
  v1 = sub_1CA948D28();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  OUTLINED_FUNCTION_18_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27();
  sub_1CA94C148();
  OUTLINED_FUNCTION_49(v0, 1, v1);
  if (v14)
  {
    sub_1CA27080C(v0, &qword_1EC443BC8, &qword_1CA9834A0);
    v15 = sub_1CA94C158();
    sub_1CA3780AC(1, v15, v16, &v25);
    v17 = sub_1CA94C3E8();
    v18 = OUTLINED_FUNCTION_18_0(v17);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_6_0();
    sub_1CA94C3D8();
    OUTLINED_FUNCTION_20_0();
    v23 = sub_1CA94C3B8();
    v21 = OUTLINED_FUNCTION_20_0();
    sub_1CA266F2C(v21, v22);
  }

  else
  {
    (*(v4 + 32))(v9, v0, v1);
    v23 = sub_1CA948CC8();
    (*(v4 + 8))(v9, v1);
  }

  return v23;
}

unint64_t sub_1CA378058()
{
  result = qword_1EC442B08;
  if (!qword_1EC442B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442B08);
  }

  return result;
}

uint64_t sub_1CA3780AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = BYTE6(a3);
    switch(a3 >> 62)
    {
      case 2uLL:
        v11 = *(a2 + 16);
        v10 = *(a2 + 24);
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_30_6();
    v16 = sub_1CA2D9A24(v12, v13, v14, v15);
    if (v7 && v16 < v7)
    {
      switch(v5)
      {
        case 2:
          goto LABEL_13;
        default:
          break;
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_6();
      v21 = sub_1CA2D99BC(v17, v18, v19, v20);
      v22 = 0;
      switch(v5)
      {
        case 1:
          v22 = a2 >> 32;
          break;
        case 2:
          v22 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v22 = v9;
          break;
      }

      if (v22 < v21)
      {
        __break(1u);
LABEL_13:
        v23 = *(a2 + 24);
      }
    }

    OUTLINED_FUNCTION_30_6();
    v24 = sub_1CA948BE8();
    v26 = v25;
    result = sub_1CA266F2C(a2, a3);
    *a4 = v24;
    a4[1] = v26;
  }

  return result;
}

unint64_t sub_1CA37822C()
{
  result = qword_1EC444938;
  if (!qword_1EC444938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444938);
  }

  return result;
}

unint64_t sub_1CA378284()
{
  result = qword_1EC442AF8;
  if (!qword_1EC442AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AF8);
  }

  return result;
}

unint64_t sub_1CA3782DC()
{
  result = qword_1EC442AD8;
  if (!qword_1EC442AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AD8);
  }

  return result;
}

unint64_t sub_1CA378330()
{
  result = qword_1EC442B00;
  if (!qword_1EC442B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442B00);
  }

  return result;
}

unint64_t sub_1CA378384()
{
  result = qword_1EC442AE8;
  if (!qword_1EC442AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AE8);
  }

  return result;
}

unint64_t sub_1CA3783D8()
{
  result = qword_1EC442AD0;
  if (!qword_1EC442AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AD0);
  }

  return result;
}

unint64_t sub_1CA378430()
{
  result = qword_1EC444940;
  if (!qword_1EC444940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444940);
  }

  return result;
}

unint64_t sub_1CA378484()
{
  result = qword_1EC442AE0;
  if (!qword_1EC442AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AE0);
  }

  return result;
}

unint64_t sub_1CA3789D8()
{
  result = qword_1EC444968;
  if (!qword_1EC444968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444968);
  }

  return result;
}

void sub_1CA378AB8()
{
  if (!qword_1EC441C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443BA0, &unk_1CA9844D0);
    sub_1CA25C3BC(&qword_1EC441BC0, &qword_1EC443BA0, &unk_1CA9844D0);
    sub_1CA25C3BC(&qword_1EC441BB8, &qword_1EC443BA0, &unk_1CA9844D0);
    v0 = sub_1CA94BC88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441C90);
    }
  }
}

void sub_1CA378BF0()
{
  sub_1CA25C270(319, &qword_1EC441CC0);
  if (v0 <= 0x3F)
  {
    sub_1CA25C270(319, &qword_1EC441CB0);
    if (v1 <= 0x3F)
    {
      sub_1CA25C174();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA378CE4()
{
  sub_1CA25C2C0();
  if (v0 <= 0x3F)
  {
    sub_1CA25C174();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LibraryModel.InnerLibraryNode(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LibraryModel.InnerLibraryNode.Enum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1CA378ED0()
{
  OUTLINED_FUNCTION_37_0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v46 = v1;
    v3 = sub_1CA9490E8();
    v4 = OUTLINED_FUNCTION_1_0(v3);
    v53 = v5;
    v7 = *(v6 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v52 = &v42 - v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444988, &qword_1CA9852B0);
    v50 = &v42;
    v10 = OUTLINED_FUNCTION_18_0(v9);
    v12 = *(v11 + 64);
    v13 = MEMORY[0x1EEE9AC00](v10);
    v14 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = &v42;
    v49 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v13);
    v15 = sub_1CA9491F8();
    v16 = sub_1CA37994C(&qword_1EC4447F8, MEMORY[0x1EEE78B30]);
    OUTLINED_FUNCTION_27_9();
    v17 = sub_1CA94C9F8();
    v47 = &v42;
    v51 = v7;
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_27_9();
    sub_1CA94CA58();
    sub_1CA94CA38();
    v18 = v53 + 1;
    v19 = v53[1];
    v19(&v42 - v8, v3);
    v44 = v19;
    v45 = v18;
    v20 = (v19)(&v42 - v8, v3);
    MEMORY[0x1EEE9AC00](v20);
    v21 = &v42 - v49;
    sub_1CA379A04(v14, &v42 - v49, &qword_1EC444988, &qword_1CA9852B0);
    OUTLINED_FUNCTION_49(v21, 1, v3);
    if (v22)
    {
      OUTLINED_FUNCTION_27_9();
      sub_1CA94CA58();
      sub_1CA27080C(v21, &qword_1EC444988, &qword_1CA9852B0);
    }

    else
    {
      (v53[4])(v52, v21, v3);
    }

    v23 = v0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444990, &qword_1CA9852B8);
    OUTLINED_FUNCTION_52(v24);
    v26 = *(v25 + 64);
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v27);
    OUTLINED_FUNCTION_27();
    v52 = &v42;
    MEMORY[0x1EEE9AC00](v28);
    v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    OUTLINED_FUNCTION_27_9();
    sub_1CA94CA58();
    sub_1CA37994C(&qword_1EC444998, MEMORY[0x1EEE78AD0]);
    if (sub_1CA94C318())
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4449A0, &qword_1CA9852C0);
      v50 = &v42;
      v32 = v31 - 8;
      v33 = *(*(v31 - 8) + 64);
      MEMORY[0x1EEE9AC00](v31);
      v47 = v23;
      v48 = v15;
      v49 = v16;
      v51 = &v42;
      v34 = &v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = v24;
      v35 = v53[4];
      v35(v34);
      v36 = (v35)(&v34[*(v32 + 56)], v30, v3);
      v53 = &v42;
      MEMORY[0x1EEE9AC00](v36);
      sub_1CA379994(v34, v34);
      v37 = *(v32 + 56);
      (v35)(v3, v34, v3);
      v38 = v44;
      v39 = (v44)(&v34[v37], v3);
      v53 = &v42;
      MEMORY[0x1EEE9AC00](v39);
      sub_1CA379A04(v34, v34, &qword_1EC4449A0, &qword_1CA9852C0);
      (v35)(v3 + *(v43 + 36), &v34[*(v32 + 56)], v3);
      v38(v34, v3);
      v40 = v47;
      v41 = v48;
      sub_1CA94CB18();
      (*(*(v41 - 1) + 8))(v40, v41);
      sub_1CA27080C(v3, &qword_1EC444990, &qword_1CA9852B8);
      OUTLINED_FUNCTION_36();
      return;
    }
  }

  __break(1u);
}

unint64_t sub_1CA379458(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    OUTLINED_FUNCTION_30_6();
    result = sub_1CA94C478();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1CA94C588();

      return OUTLINED_FUNCTION_52_0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA379524(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1CA379580(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1CA3796F8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA37994C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA379994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4449A0, &qword_1CA9852C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA379A04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

id sub_1CA379AD8()
{
  v304 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9AAB10;
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
  v319 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v320 = v12;
  v13 = &v293 - v319;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v316 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v321 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v318 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v293 - v318;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v317 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v315 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
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
  v314 = &v293;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v293 - v319;
  sub_1CA948D98();
  v34 = [v316 bundleURL];
  v310 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v293 - v318;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v317;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v315;
  v40 = sub_1CA6B3784();
  v41 = v310;
  v310[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconName";
  v41[25] = 0x68746C616548;
  v41[26] = 0xE600000000000000;
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"Name";
  v42 = @"IconName";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v315 = &v293;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v293 - v319;
  sub_1CA948D98();
  v51 = v316;
  v52 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v293 - v318;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v53);
  v56 = v310;
  v310[30] = v55;
  v57 = v317;
  v56[33] = v317;
  v56[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA9813C0;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 48) = 0;
  *(v58 + 72) = v59;
  *(v58 + 80) = 0x614E74757074754FLL;
  *(v58 + 88) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v314 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  v315 = &v293;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v293 - v319;
  sub_1CA948D98();
  v67 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v293 - v318;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 96) = sub_1CA2F9F14(v61, v314, v63, v65, 0, 0, v66, v68);
  *(v58 + 120) = v57;
  *(v58 + 128) = 0x7365707954;
  *(v58 + 136) = 0xE500000000000000;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 168) = v70;
  v71 = v70;
  v309 = v70;
  *(v58 + 144) = &unk_1F49F6828;
  v72 = MEMORY[0x1E69E6158];
  v73 = sub_1CA94C1E8();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v75 = v310;
  v310[35] = v73;
  v75[38] = v74;
  v75[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v315 = swift_allocObject();
  *(v315 + 1) = xmmword_1CA985370;
  v314 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_1CA981380;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD00000000000001DLL;
  *(v76 + 48) = 0x80000001CA9AAC90;
  *(v76 + 64) = v72;
  *(v76 + 72) = @"DisallowedVariableTypes";
  *(v76 + 80) = &unk_1F49F6858;
  *(v76 + 104) = v71;
  *(v76 + 112) = @"Key";
  v307 = 0x80000001CA9AACB0;
  *(v76 + 120) = 0xD000000000000014;
  *(v76 + 128) = 0x80000001CA9AACB0;
  *(v76 + 144) = v72;
  *(v76 + 152) = @"Label";
  v77 = @"Class";
  v78 = @"DisallowedVariableTypes";
  v79 = @"Key";
  v80 = @"Label";
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v84 = v80;
  *&v302 = v81;
  v305 = v82;
  v300 = v83;
  *&v306 = v84;
  v85 = @"Parameters";
  v311 = sub_1CA94C438();
  v308 = v86;
  v87 = sub_1CA94C438();
  v303 = v88;
  v312 = &v293;
  MEMORY[0x1EEE9AC00](v87);
  v89 = v319;
  sub_1CA948D98();
  v90 = v316;
  v91 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v293 - v318;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 160) = sub_1CA2F9F14(v311, v308, v87, v303, 0, 0, &v293 - v89, v92);
  *(v76 + 184) = v317;
  *(v76 + 192) = @"Placeholder";
  v308 = @"Placeholder";
  v311 = sub_1CA94C438();
  v303 = v94;
  v95 = sub_1CA94C438();
  v97 = v96;
  v312 = &v293;
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v293 - v89;
  sub_1CA948D98();
  v99 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v318;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 200) = sub_1CA2F9F14(v311, v303, v95, v97, 0, 0, v98, &v293 - v100);
  v102 = v317;
  *(v76 + 224) = v317;
  *(v76 + 232) = @"Prompt";
  v303 = @"Prompt";
  v311 = sub_1CA94C438();
  *&v301 = v103;
  v104 = sub_1CA94C438();
  v299 = v105;
  v312 = &v293;
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v293 - v319;
  sub_1CA948D98();
  v107 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v311, v301, v104, v299, 0, 0, v106, &v293 - v100);
  *(v76 + 264) = v102;
  *(v76 + 240) = v109;
  _s3__C3KeyVMa_0(0);
  v312 = v110;
  v311 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v315[4] = sub_1CA2F864C();
  v111 = swift_allocObject();
  v301 = xmmword_1CA981300;
  *(v111 + 16) = xmmword_1CA981300;
  *(v111 + 32) = @"AutocapitalizationType";
  *(v111 + 40) = 1701736270;
  *(v111 + 48) = 0xE400000000000000;
  v112 = MEMORY[0x1E69E6158];
  v113 = v302;
  *(v111 + 64) = MEMORY[0x1E69E6158];
  *(v111 + 72) = v113;
  *(v111 + 80) = 0xD00000000000001ELL;
  *(v111 + 88) = 0x80000001CA9AAD70;
  v114 = v300;
  *(v111 + 104) = v112;
  *(v111 + 112) = v114;
  *(v111 + 120) = 0xD000000000000018;
  *(v111 + 128) = 0x80000001CA9AAD90;
  *(v111 + 144) = v112;
  *(v111 + 152) = @"KeyboardType";
  *(v111 + 160) = 0x506C616D69636544;
  *(v111 + 168) = 0xEA00000000006461;
  v115 = v306;
  *(v111 + 184) = v112;
  *(v111 + 192) = v115;
  v116 = @"AutocapitalizationType";
  v117 = @"KeyboardType";
  v297 = v113;
  v298 = v114;
  v299 = v115;
  v300 = v116;
  *&v306 = v117;
  v118 = sub_1CA94C438();
  v295 = v119;
  v296 = v118;
  v120 = sub_1CA94C438();
  v294 = v121;
  *&v302 = &v293;
  MEMORY[0x1EEE9AC00](v120);
  v122 = v319;
  sub_1CA948D98();
  v123 = v316;
  v124 = [v316 bundleURL];
  v293 = &v293;
  MEMORY[0x1EEE9AC00](v124);
  v125 = v318;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v111 + 200) = sub_1CA2F9F14(v296, v295, v120, v294, 0, 0, &v293 - v122, &v293 - v125);
  v127 = v317;
  v128 = v308;
  *(v111 + 224) = v317;
  *(v111 + 232) = v128;
  v308 = v128;
  v129 = sub_1CA94C438();
  v295 = v130;
  v296 = v129;
  v131 = sub_1CA94C438();
  v294 = v132;
  *&v302 = &v293;
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948D98();
  v133 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v296, v295, v131, v294, 0, 0, &v293 - v122, &v293 - v125);
  *(v111 + 264) = v127;
  *(v111 + 240) = v135;
  *(v111 + 272) = sub_1CA94C368();
  *(v111 + 280) = 0xD000000000000014;
  *(v111 + 288) = v307;
  v136 = MEMORY[0x1E69E6158];
  *(v111 + 304) = MEMORY[0x1E69E6158];
  *(v111 + 312) = @"TextAlignment";
  *(v111 + 344) = v136;
  v137 = v136;
  *(v111 + 320) = 0x7468676952;
  *(v111 + 328) = 0xE500000000000000;
  v296 = @"TextAlignment";
  sub_1CA94C1E8();
  v315[5] = sub_1CA2F864C();
  v138 = swift_allocObject();
  v302 = xmmword_1CA981400;
  *(v138 + 16) = xmmword_1CA981400;
  *(v138 + 32) = v300;
  *(v138 + 40) = 1701736270;
  *(v138 + 48) = 0xE400000000000000;
  v139 = v297;
  v140 = v298;
  *(v138 + 64) = v137;
  *(v138 + 72) = v139;
  v300 = 0xD000000000000028;
  *(v138 + 80) = 0xD000000000000028;
  *(v138 + 88) = 0x80000001CA9AAE20;
  *(v138 + 104) = v137;
  *(v138 + 112) = v140;
  *(v138 + 120) = 0xD000000000000022;
  *(v138 + 128) = 0x80000001CA9AAE50;
  v141 = v306;
  *(v138 + 144) = v137;
  *(v138 + 152) = v141;
  *(v138 + 160) = 0x506C616D69636544;
  *(v138 + 168) = 0xEA00000000006461;
  v142 = v308;
  *(v138 + 184) = v137;
  *(v138 + 192) = v142;
  v294 = v139;
  v295 = v140;
  v308 = v142;
  v143 = sub_1CA94C438();
  v145 = v144;
  v146 = sub_1CA94C438();
  v148 = v147;
  *&v306 = &v293;
  MEMORY[0x1EEE9AC00](v146);
  v149 = &v293 - v319;
  sub_1CA948D98();
  v150 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v293 - v318;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v143, v145, v146, v148, 0, 0, v149, v151);
  *(v138 + 224) = v317;
  *(v138 + 200) = v153;
  *(v138 + 232) = sub_1CA94C368();
  *(v138 + 240) = 0xD000000000000014;
  *(v138 + 248) = v307;
  v154 = MEMORY[0x1E69E6158];
  v155 = v296;
  *(v138 + 264) = MEMORY[0x1E69E6158];
  *(v138 + 272) = v155;
  *(v138 + 304) = v154;
  v156 = v154;
  *(v138 + 280) = 0x7468676952;
  *(v138 + 288) = 0xE500000000000000;
  v307 = v155;
  sub_1CA94C1E8();
  v315[6] = sub_1CA2F864C();
  v157 = swift_allocObject();
  v306 = xmmword_1CA981350;
  *(v157 + 16) = xmmword_1CA981350;
  v158 = v294;
  v159 = v295;
  *(v157 + 32) = v294;
  *(v157 + 40) = 0xD000000000000029;
  *(v157 + 48) = 0x80000001CA9AAEB0;
  v160 = v305;
  *(v157 + 64) = v156;
  *(v157 + 72) = v160;
  *(v157 + 80) = &unk_1F49F6888;
  *(v157 + 104) = v309;
  *(v157 + 112) = v159;
  v297 = 0xD000000000000029;
  v298 = 0xD000000000000025;
  *(v157 + 120) = 0xD000000000000025;
  *(v157 + 128) = 0x80000001CA9AAEE0;
  *(v157 + 144) = v156;
  v161 = v299;
  *(v157 + 152) = v299;
  v296 = v158;
  v305 = v160;
  v295 = v159;
  v299 = v161;
  v162 = sub_1CA94C438();
  v164 = v163;
  v165 = sub_1CA94C438();
  v167 = v166;
  v294 = &v293;
  MEMORY[0x1EEE9AC00](v165);
  v168 = &v293 - v319;
  sub_1CA948D98();
  v169 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = &v293 - v318;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v172 = sub_1CA2F9F14(v162, v164, v165, v167, 0, 0, v168, v170);
  *(v157 + 184) = v317;
  *(v157 + 160) = v172;
  sub_1CA94C1E8();
  v315[7] = sub_1CA2F864C();
  v173 = swift_allocObject();
  *(v173 + 16) = v306;
  v175 = v295;
  v174 = v296;
  *(v173 + 32) = v296;
  *(v173 + 40) = 0xD00000000000001FLL;
  *(v173 + 48) = 0x80000001CA9AAF50;
  v176 = MEMORY[0x1E69E6158];
  v177 = v305;
  *(v173 + 64) = MEMORY[0x1E69E6158];
  *(v173 + 72) = v177;
  *(v173 + 80) = &unk_1F49F68B8;
  *(v173 + 104) = v309;
  *(v173 + 112) = v175;
  *(v173 + 120) = 0xD00000000000001BLL;
  *(v173 + 128) = 0x80000001CA9AAF70;
  v178 = v299;
  *(v173 + 144) = v176;
  *(v173 + 152) = v178;
  v294 = v174;
  v296 = v175;
  v299 = v178;
  v179 = sub_1CA94C438();
  v181 = v180;
  v182 = sub_1CA94C438();
  v184 = v183;
  v295 = &v293;
  MEMORY[0x1EEE9AC00](v182);
  v185 = &v293 - v319;
  sub_1CA948D98();
  v186 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v293 - v318;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v179, v181, v182, v184, 0, 0, v185, v187);
  *(v173 + 184) = v317;
  *(v173 + 160) = v189;
  sub_1CA94C1E8();
  v315[8] = sub_1CA2F864C();
  v190 = swift_allocObject();
  *(v190 + 16) = v306;
  v191 = v294;
  v193 = v296;
  v192 = v297;
  *(v190 + 32) = v294;
  *(v190 + 40) = v192;
  *(v190 + 48) = 0x80000001CA9AAFC0;
  v194 = MEMORY[0x1E69E6158];
  v195 = v305;
  *(v190 + 64) = MEMORY[0x1E69E6158];
  *(v190 + 72) = v195;
  *(v190 + 80) = &unk_1F49F68E8;
  *(v190 + 104) = v309;
  *(v190 + 112) = v193;
  v196 = v299;
  *(v190 + 120) = v300;
  *(v190 + 128) = 0x80000001CA9AAFF0;
  *(v190 + 144) = v194;
  *(v190 + 152) = v196;
  v305 = v191;
  *&v306 = v193;
  v309 = v196;
  v197 = sub_1CA94C438();
  v199 = v198;
  v200 = sub_1CA94C438();
  v202 = v201;
  v300 = &v293;
  MEMORY[0x1EEE9AC00](v200);
  v203 = &v293 - v319;
  sub_1CA948D98();
  v204 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v204);
  v205 = &v293 - v318;
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v207 = sub_1CA2F9F14(v197, v199, v200, v202, 0, 0, v203, v205);
  *(v190 + 184) = v317;
  *(v190 + 160) = v207;
  sub_1CA94C1E8();
  v315[9] = sub_1CA2F864C();
  v208 = swift_allocObject();
  *(v208 + 16) = v301;
  v209 = v298;
  *(v208 + 32) = v305;
  *(v208 + 40) = v209;
  *(v208 + 48) = 0x80000001CA9AB060;
  *(v208 + 64) = MEMORY[0x1E69E6158];
  *(v208 + 72) = @"Description";
  *&v301 = @"Description";
  v210 = sub_1CA94C438();
  v298 = v211;
  v299 = v210;
  v212 = sub_1CA94C438();
  v297 = v213;
  v300 = &v293;
  MEMORY[0x1EEE9AC00](v212);
  v214 = &v293 - v319;
  sub_1CA948D98();
  v215 = v316;
  v216 = [v316 bundleURL];
  v296 = &v293;
  MEMORY[0x1EEE9AC00](v216);
  v217 = v318;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v208 + 80) = sub_1CA2F9F14(v299, v298, v212, v297, 0, 0, v214, &v293 - v217);
  v219 = v306;
  *(v208 + 104) = v317;
  *(v208 + 112) = v219;
  *(v208 + 120) = 0xD000000000000014;
  *(v208 + 128) = 0x80000001CA9AB170;
  v220 = v309;
  *(v208 + 144) = MEMORY[0x1E69E6158];
  *(v208 + 152) = v220;
  v221 = sub_1CA94C438();
  v298 = v222;
  v299 = v221;
  v223 = sub_1CA94C438();
  v297 = v224;
  v300 = &v293;
  MEMORY[0x1EEE9AC00](v223);
  v225 = v319;
  sub_1CA948D98();
  v226 = [v215 bundleURL];
  MEMORY[0x1EEE9AC00](v226);
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v208 + 160) = sub_1CA2F9F14(v299, v298, v223, v297, 0, 0, &v293 - v225, &v293 - v217);
  v228 = v317;
  v229 = v308;
  *(v208 + 184) = v317;
  *(v208 + 192) = v229;
  v230 = sub_1CA94C438();
  v298 = v231;
  v299 = v230;
  v232 = sub_1CA94C438();
  v297 = v233;
  v300 = &v293;
  MEMORY[0x1EEE9AC00](v232);
  v234 = &v293 - v225;
  sub_1CA948D98();
  v235 = v316;
  v236 = [v316 bundleURL];
  v296 = &v293;
  MEMORY[0x1EEE9AC00](v236);
  v237 = v318;
  sub_1CA948B68();

  v238 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v208 + 200) = sub_1CA2F9F14(v299, v298, v232, v297, 0, 0, v234, &v293 - v237);
  v239 = v303;
  *(v208 + 224) = v228;
  *(v208 + 232) = v239;
  v240 = sub_1CA94C438();
  v299 = v241;
  v300 = v240;
  v242 = sub_1CA94C438();
  v298 = v243;
  v303 = &v293;
  MEMORY[0x1EEE9AC00](v242);
  v244 = &v293 - v319;
  sub_1CA948D98();
  v245 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v245);
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v208 + 240) = sub_1CA2F9F14(v300, v299, v242, v298, 0, 0, v244, &v293 - v237);
  *(v208 + 264) = v228;
  *(v208 + 272) = @"ResultType";
  *(v208 + 280) = 0x676E69727453;
  *(v208 + 288) = 0xE600000000000000;
  v247 = MEMORY[0x1E69E6158];
  v248 = v307;
  *(v208 + 304) = MEMORY[0x1E69E6158];
  *(v208 + 312) = v248;
  *(v208 + 344) = v247;
  v249 = v247;
  *(v208 + 320) = 0x7468676952;
  *(v208 + 328) = 0xE500000000000000;
  v303 = @"ResultType";
  sub_1CA94C1E8();
  v315[10] = sub_1CA2F864C();
  v250 = swift_allocObject();
  *(v250 + 16) = v302;
  *(v250 + 32) = v305;
  *(v250 + 40) = 0xD000000000000023;
  *(v250 + 48) = 0x80000001CA9AB250;
  v251 = v301;
  *(v250 + 64) = v249;
  *(v250 + 72) = v251;
  v305 = sub_1CA94C438();
  *&v302 = v252;
  v253 = sub_1CA94C438();
  v255 = v254;
  v313 = &v293;
  MEMORY[0x1EEE9AC00](v253);
  v256 = &v293 - v319;
  sub_1CA948D98();
  v257 = v316;
  v258 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v258);
  v259 = &v293 - v318;
  sub_1CA948B68();

  v260 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v250 + 80) = sub_1CA2F9F14(v305, v302, v253, v255, 0, 0, v256, v259);
  v261 = v317;
  v262 = v306;
  *(v250 + 104) = v317;
  *(v250 + 112) = v262;
  *(v250 + 120) = 0x656C706D61534657;
  *(v250 + 128) = 0xEF65746144646E45;
  v263 = v309;
  *(v250 + 144) = MEMORY[0x1E69E6158];
  *(v250 + 152) = v263;
  v309 = sub_1CA94C438();
  *&v306 = v264;
  v265 = sub_1CA94C438();
  v305 = v266;
  v313 = &v293;
  MEMORY[0x1EEE9AC00](v265);
  v267 = v319;
  sub_1CA948D98();
  v268 = [v257 bundleURL];
  MEMORY[0x1EEE9AC00](v268);
  v269 = v318;
  sub_1CA948B68();

  v270 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v250 + 160) = sub_1CA2F9F14(v309, v306, v265, v305, 0, 0, &v293 - v267, &v293 - v269);
  v271 = v308;
  *(v250 + 184) = v261;
  *(v250 + 192) = v271;
  v272 = sub_1CA94C438();
  v308 = v273;
  v309 = v272;
  v274 = sub_1CA94C438();
  v276 = v275;
  v313 = &v293;
  MEMORY[0x1EEE9AC00](v274);
  sub_1CA948D98();
  v277 = [v316 bundleURL];
  MEMORY[0x1EEE9AC00](v277);
  sub_1CA948B68();

  v278 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v250 + 200) = sub_1CA2F9F14(v309, v308, v274, v276, 0, 0, &v293 - v267, &v293 - v269);
  v279 = v303;
  *(v250 + 224) = v317;
  *(v250 + 232) = v279;
  *(v250 + 240) = 0x676E69727453;
  *(v250 + 248) = 0xE600000000000000;
  v280 = MEMORY[0x1E69E6158];
  v281 = v307;
  *(v250 + 264) = MEMORY[0x1E69E6158];
  *(v250 + 272) = v281;
  *(v250 + 304) = v280;
  v282 = v280;
  *(v250 + 280) = 0x7468676952;
  *(v250 + 288) = 0xE500000000000000;
  sub_1CA94C1E8();
  v283 = sub_1CA2F864C();
  v284 = v315;
  v315[11] = v283;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v286 = v310;
  v310[40] = v284;
  v286[43] = v285;
  v286[44] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_1CA97EDF0;
  *(v287 + 56) = v282;
  *(v287 + 32) = 0xD000000000000013;
  *(v287 + 40) = 0x80000001CA99A9A0;
  v322 = 2;
  v323 = 1;
  v288 = type metadata accessor for WFDeviceIdiomResource();
  v289 = objc_allocWithZone(v288);
  v290 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v322);
  *(v287 + 88) = v288;
  *(v287 + 64) = v291;
  v286[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v286[45] = v287;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA37BE80()
{
  v115 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9AB3D0;
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
  v120 = v12;
  v121 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v107 - v121;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v118 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v116 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v117 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v107 - v117;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v119 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v114 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v112 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v113 = v107;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v107 - v121;
  sub_1CA948D98();
  v30 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v107 - v117;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v112, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v119;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v114;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 0x656C626169726156;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Name";
  v35 = @"IconName";
  v36 = @"Name";
  v37 = sub_1CA94C438();
  v39 = v38;
  v40 = sub_1CA94C438();
  v42 = v41;
  v114 = v107;
  MEMORY[0x1EEE9AC00](v40);
  v43 = v107 - v121;
  sub_1CA948D98();
  v44 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = v107 - v117;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v37, v39, v40, v42, 0, 0, v43, v45);
  *(inited + 224) = v119;
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
  *(v47 + 96) = 1;
  *(v47 + 120) = v48;
  *(v47 + 128) = 0x614E74757074754FLL;
  *(v47 + 136) = 0xEA0000000000656DLL;
  v49 = @"Output";
  v50 = sub_1CA94C438();
  v113 = v51;
  v52 = sub_1CA94C438();
  v54 = v53;
  v114 = v107;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v107 - v121;
  sub_1CA948D98();
  v56 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v107 - v117;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 144) = sub_1CA2F9F14(v50, v113, v52, v54, 0, 0, v55, v57);
  *(v47 + 168) = v119;
  *(v47 + 176) = 0x7365707954;
  *(v47 + 184) = 0xE500000000000000;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 216) = v59;
  *(v47 + 192) = &unk_1F49F6918;
  v60 = MEMORY[0x1E69E6158];
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v61;
  *(inited + 264) = v62;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v114 = swift_allocObject();
  *(v114 + 1) = xmmword_1CA9813B0;
  v113 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_1CA981370;
  *(v63 + 32) = @"Class";
  *(v63 + 40) = 0xD000000000000019;
  *(v63 + 48) = 0x80000001CA99B030;
  *(v63 + 80) = &unk_1F49F6948;
  *(v63 + 64) = v60;
  *(v63 + 72) = @"DisallowedVariableTypes";
  *(v63 + 104) = v59;
  *(v63 + 112) = @"Key";
  *(v63 + 120) = 0x6261697261564657;
  *(v63 + 128) = 0xEA0000000000656CLL;
  *(v63 + 144) = v60;
  *(v63 + 152) = @"Label";
  v64 = @"Parameters";
  v65 = @"Class";
  v66 = @"DisallowedVariableTypes";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438();
  v109 = v70;
  v110 = v69;
  v71 = sub_1CA94C438();
  v108 = v72;
  v111 = v107;
  MEMORY[0x1EEE9AC00](v71);
  v73 = v107 - v121;
  sub_1CA948D98();
  v74 = v118;
  v75 = [v118 bundleURL];
  v107[1] = v107;
  v112 = inited;
  MEMORY[0x1EEE9AC00](v75);
  v76 = v117;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 160) = sub_1CA2F9F14(v110, v109, v71, v108, 0, 0, v73, v107 - v76);
  *(v63 + 184) = v119;
  *(v63 + 192) = @"Placeholder";
  v78 = @"Placeholder";
  v79 = sub_1CA94C438();
  v109 = v80;
  v110 = v79;
  v81 = sub_1CA94C438();
  v108 = v82;
  v111 = v107;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v107 - v121;
  sub_1CA948D98();
  v84 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v110, v109, v81, v108, 0, 0, v83, v107 - v76);
  *(v63 + 224) = v119;
  *(v63 + 200) = v86;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v87 = sub_1CA2F864C();
  v88 = v114;
  v114[4] = v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v90 = v112;
  *(v112 + 280) = v88;
  *(v90 + 304) = v89;
  *(v90 + 312) = @"ParameterSummary";
  v91 = @"ParameterSummary";
  v92 = sub_1CA94C438();
  v94 = v93;
  v95 = sub_1CA94C438();
  v97 = v96;
  v119 = v107;
  MEMORY[0x1EEE9AC00](v95);
  v98 = v107 - v121;
  sub_1CA948D98();
  v99 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v107 - v117;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v92, v94, v95, v97, 0, 0, v98, v100);
  v103 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v104 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v90 + 320) = v103;
  *(v90 + 344) = v104;
  *(v90 + 352) = @"ResidentCompatible";
  *(v90 + 384) = MEMORY[0x1E69E6370];
  *(v90 + 360) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v105 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA37CC8C()
{
  v40 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  *(inited + 112) = @"Input";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 120) = v7;
  *(inited + 144) = v8;
  *(inited + 152) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v9;
  *(inited + 192) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v39 = 0x80000001CA9941F0;
  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v27 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v28 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v21, v26);
  v29 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v28;
  *(inited + 224) = v29;
  *(inited + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CA9813B0;
  v41 = 2;
  v42 = 0;
  v31 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v32 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v41);
  *(v30 + 32) = v33;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 240) = v30;
  v34 = sub_1CA94C368();
  v35 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v34;
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = v39;
  v36 = sub_1CA94C368();
  *(inited + 344) = v35;
  *(inited + 312) = v36;
  *(inited + 320) = 0x656D614E20707041;
  *(inited + 328) = 0xE800000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA37D15C()
{
  v359 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9AB550;
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
  v373 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v374 = v12;
  v13 = &v345 - v373;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v376 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v375 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v377 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v345 - v377;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v372 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v358 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v370 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v371 = xmmword_1CA9813C0;
  *(v24 + 16) = xmmword_1CA9813C0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v368 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v369 = &v345;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v345 - v373;
  sub_1CA948D98();
  v33 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v366 = inited;
  v34 = &v345 - v377;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v27, v368, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v372;
  *(v24 + 72) = @"DescriptionResult";
  v36 = @"DescriptionResult";
  v37 = sub_1CA94C438();
  v367 = v38;
  v368 = v37;
  v365 = sub_1CA94C438();
  v40 = v39;
  v369 = &v345;
  MEMORY[0x1EEE9AC00](v365);
  v41 = v373;
  sub_1CA948D98();
  v42 = v376;
  v43 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v345 - v377;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v368, v367, v365, v40, 0, 0, &v345 - v41, v44);
  *(v24 + 104) = v372;
  *(v24 + 112) = @"DescriptionSummary";
  v46 = @"DescriptionSummary";
  v47 = sub_1CA94C438();
  v367 = v48;
  v368 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v369 = &v345;
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948D98();
  v52 = [v42 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v345 - v377;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v368, v367, v49, v51, 0, 0, &v345 - v41, v53);
  *(v24 + 144) = v372;
  *(v24 + 120) = v55;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v56 = v370;
  v57 = sub_1CA6B3784();
  v58 = v366;
  v366[20] = v57;
  v58[23] = v56;
  v58[24] = @"Discontinued";
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 200) = 1;
  v58[28] = v59;
  v58[29] = @"Input";
  v60 = v59;
  v61 = v58;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v364 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  *(v62 + 48) = 1;
  *(v62 + 72) = v60;
  strcpy((v62 + 80), "ParameterKey");
  *(v62 + 93) = 0;
  *(v62 + 94) = -5120;
  strcpy((v62 + 96), "WFTodoistFile");
  *(v62 + 110) = -4864;
  *(v62 + 120) = MEMORY[0x1E69E6158];
  *(v62 + 128) = 0x6465726975716552;
  *(v62 + 136) = 0xE800000000000000;
  *(v62 + 144) = 0;
  *(v62 + 168) = v60;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 216) = v370;
  *(v62 + 192) = &unk_1F49F6AA0;
  v63 = @"Discontinued";
  v64 = @"Input";
  v65 = sub_1CA94C1E8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v369 = v66;
  v61[30] = v65;
  v61[33] = v66;
  v61[34] = @"Name";
  v67 = @"Name";
  v365 = sub_1CA94C438();
  *&v363 = v68;
  v69 = sub_1CA94C438();
  v71 = v70;
  v367 = &v345;
  MEMORY[0x1EEE9AC00](v69);
  v72 = v373;
  sub_1CA948D98();
  v73 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = v377;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v365, v363, v69, v71, 0, 0, &v345 - v72, &v345 - v74);
  v77 = v366;
  v366[35] = v76;
  v78 = v372;
  v77[38] = v372;
  v77[39] = @"Output";
  v79 = swift_initStackObject();
  *(v79 + 16) = v371;
  *(v79 + 32) = 0x656C7069746C754DLL;
  *(v79 + 40) = 0xE800000000000000;
  *(v79 + 48) = 0;
  *(v79 + 72) = MEMORY[0x1E69E6370];
  *(v79 + 80) = 0x614E74757074754FLL;
  *(v79 + 88) = 0xEA0000000000656DLL;
  v80 = @"Output";
  v81 = sub_1CA94C438();
  v367 = v82;
  v368 = v81;
  v83 = sub_1CA94C438();
  v85 = v84;
  *&v371 = &v345;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v345 - v72;
  sub_1CA948D98();
  v87 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 96) = sub_1CA2F9F14(v368, v367, v83, v85, 0, 0, v86, &v345 - v74);
  *(v79 + 120) = v78;
  *(v79 + 128) = 0x7365707954;
  *(v79 + 168) = v370;
  *(v79 + 136) = 0xE500000000000000;
  *(v79 + 144) = &unk_1F49F6AD0;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v366;
  v366[40] = v90;
  v91[43] = v369;
  v91[44] = @"Parameters";
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v371 = swift_allocObject();
  *(v371 + 16) = xmmword_1CA985370;
  v370 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = v364;
  v357 = 0x80000001CA99B500;
  *(v92 + 32) = @"Class";
  *(v92 + 40) = 0xD000000000000014;
  *(v92 + 48) = 0x80000001CA99B500;
  *(v92 + 64) = v89;
  *(v92 + 72) = @"Key";
  v361 = 0xD000000000000010;
  *(v92 + 80) = 0xD000000000000010;
  *(v92 + 88) = 0x80000001CA9AB670;
  *(v92 + 104) = v89;
  *(v92 + 112) = @"Label";
  v93 = @"Class";
  v94 = @"Key";
  v95 = @"Label";
  v96 = v93;
  v97 = v94;
  v98 = v95;
  v355 = v96;
  v356 = v97;
  v360 = v98;
  v99 = @"Parameters";
  v100 = sub_1CA94C438();
  v102 = v101;
  v103 = sub_1CA94C438();
  v105 = v104;
  v368 = &v345;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v345 - v373;
  sub_1CA948D98();
  v107 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v345 - v377;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 120) = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  *(v92 + 144) = v372;
  *(v92 + 152) = @"TextAlignment";
  v110 = MEMORY[0x1E69E6158];
  *(v92 + 184) = MEMORY[0x1E69E6158];
  *(v92 + 160) = 0x7468676952;
  *(v92 + 168) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v368 = v111;
  v367 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v365 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v371 + 32) = sub_1CA2F864C();
  v112 = swift_allocObject();
  v363 = xmmword_1CA981370;
  *(v112 + 16) = xmmword_1CA981370;
  *(v112 + 32) = @"AlwaysShowsButton";
  *(v112 + 40) = 1;
  v113 = v355;
  *(v112 + 64) = MEMORY[0x1E69E6370];
  *(v112 + 72) = v113;
  *(v112 + 80) = 0xD00000000000001FLL;
  *(v112 + 88) = 0x80000001CA9AB6B0;
  *(v112 + 104) = v110;
  *(v112 + 112) = @"DefaultValue";
  *(v112 + 120) = 0x786F626E49;
  *(v112 + 128) = 0xE500000000000000;
  v114 = v356;
  *(v112 + 144) = v110;
  *(v112 + 152) = v114;
  *(v112 + 160) = v361;
  *(v112 + 168) = 0x80000001CA9AB6D0;
  *(v112 + 184) = v110;
  v115 = v360;
  *(v112 + 192) = v360;
  v116 = @"DefaultValue";
  v355 = v113;
  v354 = v114;
  v353 = v115;
  v360 = v116;
  v117 = @"AlwaysShowsButton";
  v118 = sub_1CA94C438();
  v120 = v119;
  v121 = sub_1CA94C438();
  v123 = v122;
  v356 = &v345;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v345 - v373;
  sub_1CA948D98();
  v125 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v345 - v377;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, v126);
  *(v112 + 224) = v372;
  *(v112 + 200) = v128;
  sub_1CA94C1E8();
  *(v371 + 40) = sub_1CA2F864C();
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1CA981400;
  v130 = MEMORY[0x1E69E6158];
  *(v129 + 64) = MEMORY[0x1E69E6158];
  v356 = 0x80000001CA9AB710;
  v131 = v355;
  *(v129 + 32) = v355;
  *(v129 + 40) = 0xD000000000000014;
  *(v129 + 48) = 0x80000001CA9AB710;
  v355 = v131;
  *(v129 + 72) = sub_1CA94C368();
  *(v129 + 80) = 1702125892;
  *(v129 + 88) = 0xE400000000000000;
  v132 = v354;
  *(v129 + 104) = v130;
  *(v129 + 112) = v132;
  *(v129 + 120) = v361;
  *(v129 + 128) = 0x80000001CA9AB730;
  *(v129 + 144) = v130;
  v133 = v353;
  *(v129 + 152) = v353;
  v354 = v132;
  v361 = v133;
  v352 = sub_1CA94C438();
  *&v351 = v134;
  v135 = sub_1CA94C438();
  v137 = v136;
  v353 = &v345;
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v345 - v373;
  sub_1CA948D98();
  v139 = v376;
  v140 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v345 - v377;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 160) = sub_1CA2F9F14(v352, v351, v135, v137, 0, 0, v138, v141);
  v143 = v372;
  *(v129 + 184) = v372;
  *(v129 + 192) = @"Placeholder";
  v352 = @"Placeholder";
  v144 = sub_1CA94C438();
  v350 = v145;
  *&v351 = v144;
  v146 = sub_1CA94C438();
  v148 = v147;
  v353 = &v345;
  MEMORY[0x1EEE9AC00](v146);
  v149 = &v345 - v373;
  sub_1CA948D98();
  v150 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v345 - v377;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 200) = sub_1CA2F9F14(v351, v350, v146, v148, 0, 0, v149, v151);
  *(v129 + 224) = v143;
  *(v129 + 232) = @"ResultType";
  *(v129 + 240) = 0x676E69727453;
  *(v129 + 248) = 0xE600000000000000;
  v153 = MEMORY[0x1E69E6158];
  v154 = v365;
  *(v129 + 264) = MEMORY[0x1E69E6158];
  *(v129 + 272) = v154;
  *(v129 + 304) = v153;
  v155 = v153;
  *(v129 + 280) = 0x7468676952;
  *(v129 + 288) = 0xE500000000000000;
  v350 = @"ResultType";
  sub_1CA94C1E8();
  *(v371 + 48) = sub_1CA2F864C();
  v156 = swift_allocObject();
  v351 = xmmword_1CA981380;
  *(v156 + 16) = xmmword_1CA981380;
  v158 = v355;
  v157 = v356;
  *(v156 + 32) = v355;
  *(v156 + 40) = 0xD000000000000014;
  *(v156 + 48) = v157;
  v159 = v354;
  *(v156 + 64) = v155;
  *(v156 + 72) = v159;
  v356 = 0xD000000000000011;
  *(v156 + 80) = 0xD000000000000011;
  *(v156 + 88) = 0x80000001CA994210;
  *(v156 + 104) = v155;
  v160 = v361;
  *(v156 + 112) = v361;
  v355 = v158;
  v353 = v159;
  v354 = v160;
  v161 = sub_1CA94C438();
  v348 = v162;
  v349 = v161;
  v163 = sub_1CA94C438();
  v347 = v164;
  v361 = &v345;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v373;
  sub_1CA948D98();
  v166 = v376;
  v167 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v345 - v377;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v156 + 120) = sub_1CA2F9F14(v349, v348, v163, v347, 0, 0, &v345 - v165, v168);
  v170 = v372;
  v171 = v352;
  *(v156 + 144) = v372;
  *(v156 + 152) = v171;
  v361 = v171;
  v172 = sub_1CA94C438();
  v348 = v173;
  v349 = v172;
  v174 = sub_1CA94C438();
  v176 = v175;
  v352 = &v345;
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948D98();
  v177 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v345 - v377;
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v156 + 160) = sub_1CA2F9F14(v349, v348, v174, v176, 0, 0, &v345 - v165, v178);
  v180 = v350;
  *(v156 + 184) = v170;
  *(v156 + 192) = v180;
  *(v156 + 200) = 0x676E69727453;
  *(v156 + 208) = 0xE600000000000000;
  v181 = MEMORY[0x1E69E6158];
  v182 = v365;
  *(v156 + 224) = MEMORY[0x1E69E6158];
  *(v156 + 232) = v182;
  *(v156 + 264) = v181;
  v183 = v181;
  *(v156 + 240) = 0x7468676952;
  *(v156 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v371 + 56) = sub_1CA2F864C();
  v184 = swift_allocObject();
  *(v184 + 16) = v351;
  v352 = 0x80000001CA99C4A0;
  *&v351 = 0xD000000000000016;
  v185 = v355;
  *(v184 + 32) = v355;
  *(v184 + 40) = 0xD000000000000016;
  *(v184 + 48) = 0x80000001CA99C4A0;
  v186 = v360;
  *(v184 + 64) = v183;
  *(v184 + 72) = v186;
  *(v184 + 80) = 0x6C69616D45;
  *(v184 + 88) = 0xE500000000000000;
  *(v184 + 104) = v183;
  *(v184 + 112) = @"Items";
  v365 = swift_allocObject();
  *&v365->data = xmmword_1CA981470;
  v187 = @"Items";
  v349 = v185;
  v350 = v187;
  v188 = sub_1CA94C438();
  v347 = v189;
  v348 = v188;
  v190 = sub_1CA94C438();
  v346 = v191;
  v355 = &v345;
  MEMORY[0x1EEE9AC00](v190);
  v192 = v373;
  sub_1CA948D98();
  v193 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  v194 = &v345 - v377;
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v348, v347, v190, v346, 0, 0, &v345 - v192, v194);
  v365[1].isa = v196;
  v197 = sub_1CA94C438();
  v347 = v198;
  v348 = v197;
  v199 = sub_1CA94C438();
  v346 = v200;
  v355 = &v345;
  MEMORY[0x1EEE9AC00](v199);
  sub_1CA948D98();
  v201 = v376;
  v202 = [v376 bundleURL];
  v345 = &v345;
  MEMORY[0x1EEE9AC00](v202);
  v203 = v377;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v205 = sub_1CA2F9F14(v348, v347, v199, v346, 0, 0, &v345 - v192, &v345 - v203);
  v365[1].info = v205;
  v206 = sub_1CA94C438();
  v347 = v207;
  v348 = v206;
  v208 = sub_1CA94C438();
  v346 = v209;
  v355 = &v345;
  MEMORY[0x1EEE9AC00](v208);
  sub_1CA948D98();
  v210 = [v201 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v212 = sub_1CA2F9F14(v348, v347, v208, v346, 0, 0, &v345 - v192, &v345 - v203);
  v213 = v365;
  v365[1].data = v212;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v355 = v214;
  *(v184 + 120) = v213;
  v215 = v353;
  v216 = v354;
  *(v184 + 144) = v214;
  *(v184 + 152) = v215;
  *(v184 + 160) = 0xD000000000000015;
  *(v184 + 168) = 0x80000001CA9AB8D0;
  *(v184 + 184) = MEMORY[0x1E69E6158];
  *(v184 + 192) = v216;
  v353 = v215;
  v354 = v216;
  v348 = sub_1CA94C438();
  v218 = v217;
  v219 = sub_1CA94C438();
  v221 = v220;
  v365 = &v345;
  MEMORY[0x1EEE9AC00](v219);
  v222 = &v345 - v373;
  sub_1CA948D98();
  v223 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v345 - v377;
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v184 + 200) = sub_1CA2F9F14(v348, v218, v219, v221, 0, 0, v222, v224);
  *(v184 + 224) = v372;
  *(v184 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_1CA981310;
  v227 = @"RequiredResources";
  v228 = MEMORY[0x1E69E6158];
  *(v226 + 32) = sub_1CA94C1E8();
  *(v184 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v184 + 240) = v226;
  sub_1CA94C1E8();
  *(v371 + 64) = sub_1CA2F864C();
  v229 = swift_allocObject();
  *(v229 + 16) = v363;
  v230 = v349;
  v231 = v351;
  *(v229 + 32) = v349;
  *(v229 + 40) = v231;
  *(v229 + 48) = v352;
  v232 = v360;
  *(v229 + 64) = v228;
  *(v229 + 72) = v232;
  *(v229 + 80) = 52;
  *(v229 + 88) = 0xE100000000000000;
  v233 = v350;
  *(v229 + 104) = v228;
  *(v229 + 112) = v233;
  v365 = swift_allocObject();
  *&v365->data = xmmword_1CA981570;
  v362 = v230;
  v352 = sub_1CA94C438();
  *&v351 = v234;
  v235 = sub_1CA94C438();
  v350 = v236;
  v360 = &v345;
  MEMORY[0x1EEE9AC00](v235);
  v237 = v373;
  sub_1CA948D98();
  v238 = v376;
  v239 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v345 - v377;
  sub_1CA948B68();

  v241 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v242 = sub_1CA2F9F14(v352, v351, v235, v350, 0, 0, &v345 - v237, v240);
  v365[1].isa = v242;
  v352 = sub_1CA94C438();
  *&v351 = v243;
  v244 = sub_1CA94C438();
  v350 = v245;
  v360 = &v345;
  MEMORY[0x1EEE9AC00](v244);
  sub_1CA948D98();
  v246 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v246);
  v247 = v377;
  sub_1CA948B68();

  v248 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v249 = sub_1CA2F9F14(v352, v351, v244, v350, 0, 0, &v345 - v237, &v345 - v247);
  v250 = v365;
  v365[1].info = v249;
  v352 = sub_1CA94C438();
  *&v351 = v251;
  v252 = sub_1CA94C438();
  v350 = v253;
  v360 = &v345;
  MEMORY[0x1EEE9AC00](v252);
  v254 = &v345 - v237;
  sub_1CA948D98();
  v255 = v376;
  v256 = [v376 bundleURL];
  v349 = &v345;
  MEMORY[0x1EEE9AC00](v256);
  sub_1CA948B68();

  v257 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v250 + 48) = sub_1CA2F9F14(v352, v351, v252, v350, 0, 0, v254, &v345 - v247);
  v352 = sub_1CA94C438();
  *&v351 = v258;
  v350 = sub_1CA94C438();
  v260 = v259;
  v360 = &v345;
  MEMORY[0x1EEE9AC00](v350);
  v261 = v373;
  sub_1CA948D98();
  v262 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v262);
  v263 = v377;
  sub_1CA948B68();

  v264 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v265 = sub_1CA2F9F14(v352, v351, v350, v260, 0, 0, &v345 - v261, &v345 - v263);
  v266 = v365;
  v365[1].length = v265;
  *(v229 + 120) = v266;
  v267 = v356;
  v268 = v353;
  v269 = v354;
  *(v229 + 144) = v355;
  *(v229 + 152) = v268;
  *(v229 + 160) = v267;
  *(v229 + 168) = 0x80000001CA9AB9B0;
  *(v229 + 184) = MEMORY[0x1E69E6158];
  *(v229 + 192) = v269;
  v365 = v268;
  v360 = v269;
  v270 = sub_1CA94C438();
  v354 = v271;
  v355 = v270;
  v272 = sub_1CA94C438();
  v274 = v273;
  v356 = &v345;
  MEMORY[0x1EEE9AC00](v272);
  sub_1CA948D98();
  v275 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v275);
  sub_1CA948B68();

  v276 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v277 = sub_1CA2F9F14(v355, v354, v272, v274, 0, 0, &v345 - v261, &v345 - v263);
  *(v229 + 224) = v372;
  *(v229 + 200) = v277;
  sub_1CA94C1E8();
  *(v371 + 72) = sub_1CA2F864C();
  v278 = swift_allocObject();
  *(v278 + 16) = v363;
  *(v278 + 32) = v362;
  *(v278 + 40) = 0xD000000000000014;
  *(v278 + 48) = v357;
  v279 = MEMORY[0x1E69E6158];
  v280 = v365;
  *(v278 + 64) = MEMORY[0x1E69E6158];
  *(v278 + 72) = v280;
  strcpy((v278 + 80), "WFTodoistNotes");
  *(v278 + 95) = -18;
  v281 = v360;
  *(v278 + 104) = v279;
  *(v278 + 112) = v281;
  v282 = sub_1CA94C438();
  v356 = v283;
  v357 = v282;
  v284 = sub_1CA94C438();
  v355 = v285;
  *&v363 = &v345;
  MEMORY[0x1EEE9AC00](v284);
  v286 = &v345 - v261;
  sub_1CA948D98();
  v287 = v376;
  v288 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v288);
  v289 = &v345 - v377;
  sub_1CA948B68();

  v290 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v278 + 120) = sub_1CA2F9F14(v357, v356, v284, v355, 0, 0, v286, v289);
  v291 = v372;
  *(v278 + 144) = v372;
  *(v278 + 152) = @"Multiline";
  *(v278 + 160) = 1;
  v292 = v361;
  *(v278 + 184) = MEMORY[0x1E69E6370];
  *(v278 + 192) = v292;
  v293 = @"Multiline";
  v294 = sub_1CA94C438();
  v356 = v295;
  v357 = v294;
  v296 = sub_1CA94C438();
  v355 = v297;
  *&v363 = &v345;
  MEMORY[0x1EEE9AC00](v296);
  v298 = &v345 - v373;
  sub_1CA948D98();
  v299 = [v287 bundleURL];
  MEMORY[0x1EEE9AC00](v299);
  v300 = &v345 - v377;
  sub_1CA948B68();

  v301 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v302 = sub_1CA2F9F14(v357, v356, v296, v355, 0, 0, v298, v300);
  *(v278 + 224) = v291;
  *(v278 + 200) = v302;
  sub_1CA94C1E8();
  *(v371 + 80) = sub_1CA2F864C();
  v303 = swift_allocObject();
  *(v303 + 16) = v364;
  *(v303 + 32) = v362;
  *(v303 + 40) = 0xD000000000000019;
  *(v303 + 48) = 0x80000001CA99B030;
  v304 = MEMORY[0x1E69E6158];
  v305 = v365;
  *(v303 + 64) = MEMORY[0x1E69E6158];
  *(v303 + 72) = v305;
  strcpy((v303 + 80), "WFTodoistFile");
  *(v303 + 94) = -4864;
  v306 = v360;
  *(v303 + 104) = v304;
  *(v303 + 112) = v306;
  v365 = sub_1CA94C438();
  *&v364 = v307;
  v308 = sub_1CA94C438();
  *&v363 = v309;
  v369 = &v345;
  MEMORY[0x1EEE9AC00](v308);
  v310 = v373;
  sub_1CA948D98();
  v311 = [v376 bundleURL];
  v362 = &v345;
  MEMORY[0x1EEE9AC00](v311);
  v312 = v377;
  sub_1CA948B68();

  v313 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v303 + 120) = sub_1CA2F9F14(v365, v364, v308, v363, 0, 0, &v345 - v310, &v345 - v312);
  v314 = v361;
  *(v303 + 144) = v372;
  *(v303 + 152) = v314;
  v365 = sub_1CA94C438();
  *&v364 = v315;
  v316 = sub_1CA94C438();
  *&v363 = v317;
  v369 = &v345;
  MEMORY[0x1EEE9AC00](v316);
  sub_1CA948D98();
  v318 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v318);
  sub_1CA948B68();

  v319 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v320 = sub_1CA2F9F14(v365, v364, v316, v363, 0, 0, &v345 - v310, &v345 - v312);
  *(v303 + 184) = v372;
  *(v303 + 160) = v320;
  sub_1CA94C1E8();
  v321 = sub_1CA2F864C();
  v322 = v371;
  *(v371 + 88) = v321;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v324 = v366;
  v366[45] = v322;
  v324[48] = v323;
  v324[49] = @"ParameterSummary";
  v325 = @"ParameterSummary";
  v326 = sub_1CA94C438();
  v328 = v327;
  v329 = sub_1CA94C438();
  v331 = v330;
  MEMORY[0x1EEE9AC00](v329);
  v332 = &v345 - v373;
  sub_1CA948D98();
  v333 = [v376 bundleURL];
  MEMORY[0x1EEE9AC00](v333);
  v334 = &v345 - v377;
  sub_1CA948B68();

  v335 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v336 = sub_1CA2F9F14(v326, v328, v329, v331, 0, 0, v332, v334);
  v337 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v338 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v339 = v366;
  v366[50] = v337;
  v339[53] = v338;
  v339[54] = @"RequiredResources";
  v340 = v339;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v341 = swift_allocObject();
  *(v341 + 16) = xmmword_1CA97EDF0;
  v342 = @"RequiredResources";
  v343 = MEMORY[0x1E69E6158];
  *(v341 + 32) = sub_1CA94C1E8();
  *(v341 + 88) = v343;
  *(v341 + 56) = v358;
  *(v341 + 64) = 0xD00000000000001CLL;
  *(v341 + 72) = 0x80000001CA993620;
  v340[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v340[55] = v341;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t LNValue.ValueResolutionContext.sourceContainer.getter()
{
  OUTLINED_FUNCTION_11_0();
  v2 = sub_1CA94B1C8();
  v3 = OUTLINED_FUNCTION_52(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t LNValue.ValueResolutionContext.preferredCoercion.getter()
{
  OUTLINED_FUNCTION_11_0();
  v2 = *(type metadata accessor for LNValue.ValueResolutionContext() + 20);
  v3 = sub_1CA94B668();
  v4 = OUTLINED_FUNCTION_52(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t type metadata accessor for LNValue.ValueResolutionContext()
{
  result = qword_1EC441728;
  if (!qword_1EC441728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LNValue.ValueResolutionContext.displayRepresentationConfig.getter()
{
  OUTLINED_FUNCTION_11_0();
  v2 = *(type metadata accessor for LNValue.ValueResolutionContext() + 24);
  v3 = sub_1CA94B728();
  v4 = OUTLINED_FUNCTION_52(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t LNValue.ValueResolutionContext.enumerationCases.getter()
{
  v1 = *(v0 + *(type metadata accessor for LNValue.ValueResolutionContext() + 28));

  return sub_1CA94C218();
}

uint64_t LNValue.ValueResolutionContext.init(sourceContainer:preferredCoercion:displayRepresentationConfig:enumerationCases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_0_1(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for LNValue.ValueResolutionContext();
  v13 = v12[5];
  v14 = sub_1CA94B668();
  OUTLINED_FUNCTION_0_1(v14);
  (*(v15 + 32))(a5 + v13, a2);
  v16 = v12[6];
  v17 = sub_1CA94B728();
  OUTLINED_FUNCTION_0_1(v17);
  result = (*(v18 + 32))(a5 + v16, a3);
  *(a5 + v12[7]) = a4;
  return result;
}

uint64_t LNValue.ValueResolutionContext.init(sourceContainer:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_0();
  v3 = sub_1CA94B1C8();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, a1, v3);
  v5 = type metadata accessor for LNValue.ValueResolutionContext();
  v6 = v5[5];
  v7 = *MEMORY[0x1E69DB488];
  v8 = sub_1CA94B668();
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 104))(v1 + v6, v7);
  v10 = v1 + v5[6];
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  result = (*(v4 + 8))(a1, v3);
  *(v1 + v5[7]) = 0;
  return result;
}

uint64_t LNValue.resolve(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for LinkValueTransformContext(0);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA380060()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v2[5];
  v6 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(&v1[v5], v3);
  v8 = type metadata accessor for LNValue.ValueResolutionContext();
  v9 = *(v8 + 24);
  v10 = v2[6];
  v11 = sub_1CA94B728();
  OUTLINED_FUNCTION_0_1(v11);
  (*(v12 + 16))(&v1[v10], v3 + v9);
  v13 = [objc_opt_self() defaultContext];
  v14 = *(v3 + *(v8 + 28));
  *v1 = v4;
  *&v1[v2[7]] = v13;
  *&v1[v2[8]] = v14;
  sub_1CA94C218();
  v15 = v4;
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_1CA3801E4;
  v17 = v0[6];
  v18 = v0[4];
  v19 = v0[2];

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA3801E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA3802E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_19();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA380344()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_19();

  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t static LNValue.produceValuesFromEncodedTypedValues(encodedTypedValues:variableDataSource:associatedParameter:)()
{
  OUTLINED_FUNCTION_0();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = sub_1CA94AC88();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v7 = type metadata accessor for ContentGraphRepresentationContext(0);
  v0[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v0[11] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1CA38049C()
{
  v1 = v0;
  v2 = v0[3];
  v3 = sub_1CA9489C8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[12] = sub_1CA9489B8();
  v6 = sub_1CA25B410(v2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8E18();
    if (v8 < 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v7 = 0;
    v9 = v1[3];
    v48 = v8;
    v49 = v9 & 0xC000000000000001;
    v10 = v50;
    v45 = v9 + 32;
    v46 = v9 & 0xFFFFFFFFFFFFFF8;
    v47 = v1[7];
    while (1)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v49)
      {
        v12 = MEMORY[0x1CCAA22D0](v7, v1[3]);
      }

      else
      {
        if (v7 >= *(v46 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(v45 + 8 * v7);
      }

      v13 = v12;
      v14 = v1[8];
      v8 = v1;
      v15 = v1[6];
      v16 = [v12 data];
      v17 = sub_1CA948C08();
      v19 = v18;

      sub_1CA381204();
      sub_1CA9489A8();
      sub_1CA266F2C(v17, v19);

      v20 = *(v50 + 16);
      if (v20 >= *(v50 + 24) >> 1)
      {
        sub_1CA2B8E18();
      }

      v1 = v8;
      v21 = *(v8 + 64);
      v22 = *(v8 + 48);
      *(v50 + 16) = v20 + 1;
      (*(v47 + 32))(v50 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20, v21, v22);
      ++v7;
      if (v11 == v48)
      {
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v1[13] = v10;
  v23 = v1[11];
  v8 = v1[5];
  v24 = *(v1[10] + 24);
  v25 = sub_1CA94B258();
  __swift_storeEnumTagSinglePayload(v23 + v24, 1, 1, v25);
  if (qword_1EC442008 != -1)
  {
LABEL_25:
    swift_once();
  }

  v26 = v1[11];
  v27 = v1[4];
  v28 = v1[5];
  v29 = qword_1EC442010;
  v26[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
  v26[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
  *v26 = v29;
  v26[5] = v8;
  v26[6] = v27;
  v1[2] = v7;
  v30 = *(v10 + 16);
  v1[15] = 0;
  v1[16] = v7;
  v1[14] = v30;

  v31 = v28;
  swift_unknownObjectRetain();
  v32 = v1[13];
  if (!v30)
  {
    v37 = v1[11];
    v38 = v1[12];
    v40 = v1[8];
    v39 = v1[9];

    OUTLINED_FUNCTION_0_20();
    sub_1CA38125C(v37, v41);

    v42 = v1[1];
    OUTLINED_FUNCTION_53();

    __asm { BRAA            X2, X16 }
  }

  if (!*(v32 + 16))
  {
    goto LABEL_27;
  }

  (*(v1[7] + 16))(v1[9], v32 + ((*(v1[7] + 80) + 32) & ~*(v1[7] + 80)), v1[6]);
  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v33 = swift_task_alloc();
  v1[17] = v33;
  *v33 = v1;
  OUTLINED_FUNCTION_4_21(v33);
  v34 = v1[11];
  v35 = v1[9];
  OUTLINED_FUNCTION_53();

  TypedValue.resolve(to:in:)();
}

uint64_t sub_1CA3808FC(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = v4[17];
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[18] = v1;

  if (v1)
  {
    v9 = v5[16];
    v10 = v5[13];
    (*(v5[7] + 8))(v5[9], v5[6]);
  }

  else
  {
    v11 = v5[9];
    v12 = v5[6];
    v13 = v5[7];
    v5[19] = a1;
    (*(v13 + 8))(v11, v12);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1CA380A58()
{
  v1 = v0[19];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  MEMORY[0x1CCAA1490]();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  sub_1CA94C6E8();

  v3 = v0[2];
  v4 = v0[14];
  v5 = v0[15] + 1;
  v0[15] = v5;
  v0[16] = v3;
  result = v0[13];
  if (v5 == v4)
  {
    v8 = v0[11];
    v7 = v0[12];
    v10 = v0[8];
    v9 = v0[9];

    OUTLINED_FUNCTION_0_20();
    sub_1CA38125C(v8, v11);

    v12 = v0[1];

    return v12(v3);
  }

  else if (v5 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v0[7] + 16))(v0[9], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)) + *(v0[7] + 72) * v5, v0[6]);
    sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_4_21();
    v14 = v0[11];
    v15 = v0[9];

    return TypedValue.resolve(to:in:)();
  }

  return result;
}

uint64_t sub_1CA380C60()
{
  v2 = v0[11];
  v1 = v0[12];

  OUTLINED_FUNCTION_0_20();
  sub_1CA38125C(v2, v3);
  v4 = v0[18];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];

  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA380CF0(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;

  return sub_1CA67052C(&unk_1CA985470, v11);
}

uint64_t sub_1CA380D94(int a1, uint64_t a2, void *a3, void *aBlock)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = _Block_copy(aBlock);
  sub_1CA25B3D0(0, &qword_1EC4449C8, 0x1E69E0AD8);
  v4[5] = sub_1CA94C658();
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1CA380E90;

  return static LNValue.produceValuesFromEncodedTypedValues(encodedTypedValues:variableDataSource:associatedParameter:)();
}

uint64_t sub_1CA380E90()
{
  v2 = v0;
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v5 = v3[6];
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  swift_unknownObjectRelease();

  if (v2)
  {
    v11 = sub_1CA948AC8();

    v12 = 0;
    v13 = v11;
  }

  else
  {
    sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
    v12 = sub_1CA94C648();

    v11 = 0;
    v13 = v12;
  }

  v14 = v4[4];
  v14[2](v14, v12, v11);

  _Block_release(v14);
  OUTLINED_FUNCTION_5();

  return v15();
}

uint64_t sub_1CA381060()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2DF78C;

  return LNValue.resolve(with:)();
}

uint64_t sub_1CA38110C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69DB368] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v8 = sub_1CA3812E8(qword_1EC4449D0);
  *v6 = v2;
  v6[1] = sub_1CA2E9390;

  return MEMORY[0x1EEE4B290](a1, a2, v7, v8);
}

unint64_t sub_1CA381204()
{
  result = qword_1EC4449A8;
  if (!qword_1EC4449A8)
  {
    sub_1CA94AC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4449A8);
  }

  return result;
}

uint64_t sub_1CA38125C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA3812E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, &unk_1EDB9F6B0, 0x1E69ACA90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CA381364()
{
  sub_1CA94B1C8();
  if (v0 <= 0x3F)
  {
    sub_1CA94B668();
    if (v1 <= 0x3F)
    {
      sub_1CA94B728();
      if (v2 <= 0x3F)
      {
        sub_1CA381418();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CA381418()
{
  if (!qword_1EC4449B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4449C0, &unk_1CA990660);
    v0 = sub_1CA94D098();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4449B8);
    }
  }
}

uint64_t sub_1CA38147C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1CA2DF78C;

  return sub_1CA380D94(v2, v3, v4, v5);
}

uint64_t sub_1CA381544()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA381580(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1CA3815C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1CA381654()
{
  v134 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9ABB70;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v140 = inited;
  v2 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1CA981310;
  *(v3 + 32) = @"DescriptionSummary";
  v4 = @"ActionClass";
  v5 = @"Description";
  v6 = @"DescriptionSummary";
  v7 = sub_1CA94C438();
  *&v139 = v8;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v143 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = v14;
  v15 = &v125 - v143;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v142 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v141 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v138 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v125 - v138;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v7, v139, v9, v11, 0, 0, v15, v19);
  v137 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v3 + 64) = v137;
  *(v3 + 40) = v21;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v22 = v2;
  v23 = sub_1CA6B3784();
  v24 = v140;
  v140[10] = v23;
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
  v26 = v25;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v27 = swift_initStackObject();
  v139 = xmmword_1CA981350;
  *(v27 + 16) = xmmword_1CA981350;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 48) = 1;
  *(v27 + 72) = v28;
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x7475706E49;
  *(v27 + 104) = 0xE500000000000000;
  *(v27 + 120) = v26;
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  v29 = v28;
  *(v27 + 184) = 0xE500000000000000;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 216) = v136;
  *(v27 + 192) = &unk_1F49F6C00;
  v30 = @"IconColor";
  v31 = @"IconSymbol";
  v32 = @"Input";
  v33 = sub_1CA94C1E8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v135 = v34;
  v24[25] = v33;
  v24[28] = v34;
  v24[29] = @"Discoverable";
  *(v24 + 240) = 0;
  v24[33] = v29;
  v24[34] = @"Name";
  v35 = @"Discoverable";
  v36 = @"Name";
  v37 = sub_1CA94C438();
  v130 = v38;
  v131 = v37;
  v39 = sub_1CA94C438();
  v41 = v40;
  v132 = &v125;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v125 - v143;
  sub_1CA948D98();
  v43 = v142;
  v44 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = v138;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v131, v130, v39, v41, 0, 0, v42, &v125 - v45);
  v48 = v140;
  v140[35] = v47;
  v49 = v137;
  v48[38] = v137;
  v48[39] = @"Output";
  v50 = swift_initStackObject();
  *(v50 + 16) = v139;
  *(v50 + 32) = 0x75736F6C63736944;
  *(v50 + 40) = 0xEF6C6576654C6572;
  *(v50 + 48) = 0x63696C627550;
  *(v50 + 56) = 0xE600000000000000;
  *(v50 + 72) = MEMORY[0x1E69E6158];
  *(v50 + 80) = 0x656C7069746C754DLL;
  *(v50 + 88) = 0xE800000000000000;
  *(v50 + 96) = 1;
  *(v50 + 120) = MEMORY[0x1E69E6370];
  *(v50 + 128) = 0x614E74757074754FLL;
  *(v50 + 136) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438();
  v131 = v53;
  v132 = v52;
  v130 = sub_1CA94C438();
  v55 = v54;
  v133 = &v125;
  MEMORY[0x1EEE9AC00](v130);
  v56 = &v125 - v143;
  sub_1CA948D98();
  v57 = [v43 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v50 + 144) = sub_1CA2F9F14(v132, v131, v130, v55, 0, 0, v56, &v125 - v45);
  *(v50 + 168) = v49;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 216) = v136;
  *(v50 + 184) = 0xE500000000000000;
  *(v50 + 192) = &unk_1F49F6C30;
  v59 = MEMORY[0x1E69E6158];
  v60 = sub_1CA94C1E8();
  v61 = v140;
  v140[40] = v60;
  v61[43] = v135;
  v61[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1CA981360;
  v135 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v62 = swift_allocObject();
  *(v62 + 16) = v139;
  *(v62 + 32) = @"Class";
  *(v62 + 40) = 0xD000000000000014;
  *(v62 + 48) = 0x80000001CA99B500;
  *(v62 + 64) = v59;
  *(v62 + 72) = @"Key";
  *(v62 + 80) = 0x7373616C43;
  *(v62 + 88) = 0xE500000000000000;
  *(v62 + 104) = v59;
  *(v62 + 112) = @"Label";
  v63 = @"Class";
  v64 = @"Key";
  v65 = @"Label";
  v132 = v63;
  v131 = v64;
  v130 = v65;
  v66 = @"Parameters";
  v67 = sub_1CA94C438();
  v127 = v68;
  v128 = v67;
  v69 = sub_1CA94C438();
  v71 = v70;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v125 - v143;
  sub_1CA948D98();
  v73 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = v138;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 120) = sub_1CA2F9F14(v128, v127, v69, v71, 0, 0, v72, &v125 - v74);
  v76 = v137;
  *(v62 + 144) = v137;
  *(v62 + 152) = @"Placeholder";
  v129 = @"Placeholder";
  v77 = sub_1CA94C438();
  v126 = v78;
  v127 = v77;
  v79 = sub_1CA94C438();
  v125 = v80;
  v128 = &v125;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v125 - v143;
  sub_1CA948D98();
  v82 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v127, v126, v79, v125, 0, 0, v81, &v125 - v74);
  *(v62 + 184) = v76;
  *(v62 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  v128 = v85;
  v127 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v136 + 32) = sub_1CA2F864C();
  v86 = swift_allocObject();
  *(v86 + 16) = v139;
  *(v86 + 32) = v132;
  *(v86 + 40) = 0xD000000000000019;
  *(v86 + 48) = 0x80000001CA99B030;
  v87 = MEMORY[0x1E69E6158];
  v88 = v131;
  *(v86 + 64) = MEMORY[0x1E69E6158];
  *(v86 + 72) = v88;
  *(v86 + 80) = 0x7475706E49;
  *(v86 + 88) = 0xE500000000000000;
  v89 = v130;
  *(v86 + 104) = v87;
  *(v86 + 112) = v89;
  v90 = sub_1CA94C438();
  v132 = v91;
  v133 = v90;
  v131 = sub_1CA94C438();
  v93 = v92;
  *&v139 = &v125;
  MEMORY[0x1EEE9AC00](v131);
  v94 = v143;
  sub_1CA948D98();
  v95 = v142;
  v96 = [v142 bundleURL];
  v130 = &v125;
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 120) = sub_1CA2F9F14(v133, v132, v131, v93, 0, 0, &v125 - v94, &v125 - v74);
  v98 = v137;
  v99 = v129;
  *(v86 + 144) = v137;
  *(v86 + 152) = v99;
  v100 = sub_1CA94C438();
  v132 = v101;
  v133 = v100;
  v131 = sub_1CA94C438();
  v103 = v102;
  *&v139 = &v125;
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948D98();
  v104 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v133, v132, v131, v103, 0, 0, &v125 - v94, &v125 - v74);
  *(v86 + 184) = v98;
  *(v86 + 160) = v106;
  sub_1CA94C1E8();
  v107 = sub_1CA2F864C();
  v108 = v136;
  *(v136 + 40) = v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v110 = v140;
  v140[45] = v108;
  v110[48] = v109;
  v110[49] = @"ParameterSummary";
  v111 = @"ParameterSummary";
  v112 = sub_1CA94C438();
  v114 = v113;
  v115 = sub_1CA94C438();
  v117 = v116;
  *&v139 = &v125;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v125 - v143;
  sub_1CA948D98();
  v119 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v125 - v138;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v112, v114, v115, v117, 0, 0, v118, v120);
  v123 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v110[53] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v110[50] = v123;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA382700()
{
  v0 = sub_1CA949D18();
  v313 = *(v0 - 8);
  v314 = v0;
  v1 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v312 = v305 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  v324 = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9ABD30;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v335 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v337 = v14;
  v340 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v305 - v340;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v338 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v336 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v339 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v305 - v339;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v335, v8, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v335 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v334 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionNote";
  v25 = @"Description";
  v26 = @"DescriptionNote";
  v27 = sub_1CA94C438();
  v330 = v28;
  *&v331 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v333 = v305;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v305 - v340;
  sub_1CA948D98();
  v33 = [v16 bundleURL];
  v332 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v339;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v331, v330, v29, v31, 0, 0, v32, v305 - v35);
  v37 = v335;
  *(v24 + 64) = v335;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v330 = v40;
  *&v331 = v39;
  v329 = sub_1CA94C438();
  v42 = v41;
  v333 = v305;
  MEMORY[0x1EEE9AC00](v329);
  v43 = v305 - v340;
  sub_1CA948D98();
  v44 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v331, v330, v329, v42, 0, 0, v43, v305 - v35);
  *(v24 + 104) = v37;
  *(v24 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v47 = v334;
  v48 = sub_1CA6B3784();
  v49 = v332;
  v332[15] = v48;
  v49[18] = v47;
  v49[19] = @"IconColor";
  v49[20] = 1702194242;
  v49[21] = 0xE400000000000000;
  v50 = MEMORY[0x1E69E6158];
  v49[23] = MEMORY[0x1E69E6158];
  v49[24] = @"IconSymbol";
  v49[25] = 0xD00000000000003DLL;
  v49[26] = 0x80000001CA9ABE40;
  v49[28] = v50;
  v49[29] = @"Input";
  v51 = v49;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v331 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 0x6567616D494657;
  *(v52 + 104) = 0xE700000000000000;
  *(v52 + 120) = v50;
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  v54 = v53;
  *(v52 + 184) = 0xE500000000000000;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v323;
  *(v52 + 192) = &unk_1F49F6C60;
  v55 = @"IconColor";
  v56 = @"IconSymbol";
  v57 = @"Input";
  v58 = sub_1CA94C1E8();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v334 = v59;
  v51[30] = v58;
  v51[33] = v59;
  v51[34] = @"InputPassthrough";
  *(v51 + 280) = 0;
  v51[38] = v54;
  v51[39] = @"Name";
  v60 = @"InputPassthrough";
  v61 = @"Name";
  v62 = sub_1CA94C438();
  v64 = v63;
  v65 = sub_1CA94C438();
  v67 = v66;
  v330 = v305;
  MEMORY[0x1EEE9AC00](v65);
  v68 = v305 - v340;
  sub_1CA948D98();
  v69 = v338;
  v70 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = v305 - v339;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v73 = sub_1CA2F9F14(v62, v64, v65, v67, 0, 0, v68, v71);
  v74 = v332;
  v332[40] = v73;
  v75 = v335;
  v74[43] = v335;
  v74[44] = @"Output";
  v76 = swift_allocObject();
  *(v76 + 16) = v331;
  *(v76 + 32) = 0x75736F6C63736944;
  *(v76 + 40) = 0xEF6C6576654C6572;
  *(v76 + 48) = 0x63696C627550;
  *(v76 + 56) = 0xE600000000000000;
  *(v76 + 72) = MEMORY[0x1E69E6158];
  *(v76 + 80) = 0x656C7069746C754DLL;
  *(v76 + 88) = 0xE800000000000000;
  *(v76 + 96) = 1;
  *(v76 + 120) = MEMORY[0x1E69E6370];
  *(v76 + 128) = 0x614E74757074754FLL;
  *(v76 + 136) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438();
  *&v331 = v79;
  v80 = sub_1CA94C438();
  v82 = v81;
  v333 = v305;
  MEMORY[0x1EEE9AC00](v80);
  v83 = v305 - v340;
  sub_1CA948D98();
  v84 = [v69 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = v305 - v339;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 144) = sub_1CA2F9F14(v78, v331, v80, v82, 0, 0, v83, v85);
  *(v76 + 168) = v75;
  *(v76 + 176) = 0x7365707954;
  *(v76 + 216) = v323;
  *(v76 + 184) = 0xE500000000000000;
  *(v76 + 192) = &unk_1F49F6C90;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v332;
  v332[45] = v88;
  v89[48] = v334;
  v89[49] = @"Parameters";
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v334 = swift_allocObject();
  *(v334 + 16) = xmmword_1CA981410;
  v333 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  v322 = xmmword_1CA981370;
  *(v90 + 16) = xmmword_1CA981370;
  *(v90 + 32) = @"Class";
  *(v90 + 40) = 0xD000000000000016;
  *(v90 + 48) = 0x80000001CA99C4A0;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"DefaultValue";
  *(v90 + 80) = 1702521171;
  *(v90 + 88) = 0xE400000000000000;
  *(v90 + 104) = v87;
  *(v90 + 112) = @"Items";
  v330 = swift_allocObject();
  v310 = xmmword_1CA981470;
  *(v330 + 1) = xmmword_1CA981470;
  v91 = @"Class";
  v92 = @"DefaultValue";
  v326 = v91;
  *&v328 = v92;
  v93 = @"Parameters";
  v94 = @"Items";
  v327 = sub_1CA94C438();
  v325 = v95;
  v96 = sub_1CA94C438();
  *&v321 = v97;
  v329 = v305;
  MEMORY[0x1EEE9AC00](v96);
  v98 = v340;
  sub_1CA948D98();
  v99 = v338;
  v100 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v305 - v339;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v327, v325, v96, v321, 0, 0, v305 - v98, v101);
  v330[4] = v103;
  v327 = sub_1CA94C438();
  v325 = v104;
  v105 = sub_1CA94C438();
  *&v321 = v106;
  v329 = v305;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948D98();
  v107 = [v99 bundleURL];
  v320 = v305;
  MEMORY[0x1EEE9AC00](v107);
  v108 = v339;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v327, v325, v105, v321, 0, 0, v305 - v98, v305 - v108);
  v330[5] = v110;
  v327 = sub_1CA94C438();
  v325 = v111;
  v112 = sub_1CA94C438();
  *&v321 = v113;
  v329 = v305;
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948D98();
  v114 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v327, v325, v112, v321, 0, 0, v305 - v98, v305 - v108);
  v117 = v330;
  v330[6] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v90 + 120) = v117;
  *(v90 + 144) = v118;
  *(v90 + 152) = @"Key";
  *(v90 + 160) = 0xD000000000000010;
  *(v90 + 168) = 0x80000001CA994250;
  *(v90 + 184) = MEMORY[0x1E69E6158];
  *(v90 + 192) = @"Label";
  v119 = @"Key";
  v120 = @"Label";
  v121 = v119;
  v122 = v120;
  v320 = v121;
  v325 = v122;
  v123 = sub_1CA94C438();
  v125 = v124;
  v126 = sub_1CA94C438();
  v128 = v127;
  v330 = v305;
  MEMORY[0x1EEE9AC00](v126);
  v129 = v305 - v340;
  sub_1CA948D98();
  v130 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = v305 - v339;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v123, v125, v126, v128, 0, 0, v129, v131);
  *(v90 + 224) = v335;
  *(v90 + 200) = v133;
  _s3__C3KeyVMa_0(0);
  v330 = v134;
  v329 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v334 + 32) = sub_1CA2F864C();
  v135 = swift_allocObject();
  v321 = xmmword_1CA981380;
  *(v135 + 16) = xmmword_1CA981380;
  v327 = 0x80000001CA99C180;
  v136 = v326;
  *(v135 + 32) = v326;
  *(v135 + 40) = 0xD000000000000016;
  *(v135 + 48) = 0x80000001CA99C180;
  v137 = MEMORY[0x1E69E6158];
  v138 = v328;
  *(v135 + 64) = MEMORY[0x1E69E6158];
  *(v135 + 72) = v138;
  v139 = MEMORY[0x1E69E6530];
  *(v135 + 80) = 640;
  v140 = v320;
  *(v135 + 104) = v139;
  *(v135 + 112) = v140;
  *(v135 + 120) = 0xD000000000000012;
  *(v135 + 128) = 0x80000001CA9ABF90;
  v141 = v325;
  *(v135 + 144) = v137;
  *(v135 + 152) = v141;
  v318 = v136;
  v317 = v140;
  v320 = v141;
  v142 = sub_1CA94C438();
  v325 = v143;
  v326 = v142;
  v144 = sub_1CA94C438();
  v146 = v145;
  *&v328 = v305;
  MEMORY[0x1EEE9AC00](v144);
  v147 = v305 - v340;
  sub_1CA948D98();
  v148 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = v305 - v339;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 160) = sub_1CA2F9F14(v326, v325, v144, v146, 0, 0, v147, v149);
  v151 = v335;
  *(v135 + 184) = v335;
  *(v135 + 192) = @"Placeholder";
  v319 = @"Placeholder";
  v152 = sub_1CA94C438();
  v325 = v153;
  v326 = v152;
  v154 = sub_1CA94C438();
  v156 = v155;
  *&v328 = v305;
  MEMORY[0x1EEE9AC00](v154);
  v157 = v305 - v340;
  sub_1CA948D98();
  v158 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = v305 - v339;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 200) = sub_1CA2F9F14(v326, v325, v154, v156, 0, 0, v157, v159);
  *(v135 + 224) = v151;
  *(v135 + 232) = @"RequiredResources";
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v161 = swift_allocObject();
  v328 = xmmword_1CA981310;
  *(v161 + 16) = xmmword_1CA981310;
  v316 = @"RequiredResources";
  v162 = MEMORY[0x1E69E6158];
  *(v161 + 32) = sub_1CA94C1E8();
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v135 + 264) = v325;
  *(v135 + 240) = v161;
  sub_1CA94C1E8();
  *(v334 + 40) = sub_1CA2F864C();
  v163 = swift_allocObject();
  *(v163 + 16) = v322;
  v165 = v317;
  v164 = v318;
  *(v163 + 32) = v318;
  *(v163 + 40) = 0xD000000000000016;
  *(v163 + 48) = v327;
  *(v163 + 64) = v162;
  *(v163 + 72) = v165;
  *(v163 + 80) = v324;
  *(v163 + 88) = 0x80000001CA9AC000;
  v166 = v320;
  *(v163 + 104) = v162;
  *(v163 + 112) = v166;
  v318 = v164;
  v308 = v165;
  v317 = v166;
  v309 = sub_1CA94C438();
  v307 = v167;
  v168 = sub_1CA94C438();
  v306 = v169;
  v320 = v305;
  MEMORY[0x1EEE9AC00](v168);
  v170 = v340;
  sub_1CA948D98();
  v171 = v338;
  v172 = [v338 bundleURL];
  v305[1] = v305;
  MEMORY[0x1EEE9AC00](v172);
  v173 = v339;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 120) = sub_1CA2F9F14(v309, v307, v168, v306, 0, 0, v305 - v170, v305 - v173);
  v175 = v335;
  v176 = v319;
  *(v163 + 144) = v335;
  *(v163 + 152) = v176;
  v309 = v176;
  v319 = sub_1CA94C438();
  v307 = v177;
  v178 = sub_1CA94C438();
  v306 = v179;
  v320 = v305;
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948D98();
  v180 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 160) = sub_1CA2F9F14(v319, v307, v178, v306, 0, 0, v305 - v170, v305 - v173);
  *(v163 + 184) = v175;
  v182 = v316;
  *(v163 + 192) = v316;
  v183 = swift_allocObject();
  *(v183 + 16) = v328;
  v320 = v182;
  v184 = MEMORY[0x1E69E6158];
  *(v183 + 32) = sub_1CA94C1E8();
  *(v163 + 224) = v325;
  *(v163 + 200) = v183;
  sub_1CA94C1E8();
  *(v334 + 48) = sub_1CA2F864C();
  v185 = swift_allocObject();
  *(v185 + 16) = v321;
  v186 = v318;
  *(v185 + 32) = v318;
  *(v185 + 40) = 0xD000000000000016;
  *(v185 + 48) = v327;
  v187 = v308;
  *(v185 + 64) = v184;
  *(v185 + 72) = v187;
  *(v185 + 80) = 0xD000000000000017;
  *(v185 + 88) = 0x80000001CA9AC070;
  *(v185 + 104) = v184;
  v188 = v317;
  *(v185 + 112) = v317;
  v319 = v186;
  v318 = v187;
  v317 = v188;
  v189 = sub_1CA94C438();
  v307 = v190;
  v308 = v189;
  v191 = sub_1CA94C438();
  v306 = v192;
  v316 = v305;
  MEMORY[0x1EEE9AC00](v191);
  v193 = v340;
  sub_1CA948D98();
  v194 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v305 - v339;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v185 + 120) = sub_1CA2F9F14(v308, v307, v191, v306, 0, 0, v305 - v193, v195);
  v197 = v335;
  v198 = v309;
  *(v185 + 144) = v335;
  *(v185 + 152) = v198;
  v316 = v198;
  v199 = sub_1CA94C438();
  v307 = v200;
  v308 = v199;
  v201 = sub_1CA94C438();
  v306 = v202;
  v309 = v305;
  MEMORY[0x1EEE9AC00](v201);
  v203 = v305 - v193;
  sub_1CA948D98();
  v204 = v338;
  v205 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  v206 = v305 - v339;
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v185 + 160) = sub_1CA2F9F14(v308, v307, v201, v306, 0, 0, v203, v206);
  v208 = v320;
  *(v185 + 184) = v197;
  *(v185 + 192) = v208;
  v209 = swift_allocObject();
  *(v209 + 16) = v328;
  v210 = MEMORY[0x1E69E6158];
  *(v209 + 32) = sub_1CA94C1E8();
  *(v185 + 200) = v209;
  *(v185 + 224) = v325;
  *(v185 + 232) = @"TextAlignment";
  *(v185 + 264) = v210;
  *(v185 + 240) = 0x7468676952;
  *(v185 + 248) = 0xE500000000000000;
  v309 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v334 + 56) = sub_1CA2F864C();
  v211 = swift_allocObject();
  *(v211 + 16) = v321;
  *(v211 + 32) = v319;
  *(v211 + 40) = 0xD000000000000016;
  *(v211 + 48) = v327;
  v212 = v318;
  *(v211 + 64) = v210;
  *(v211 + 72) = v212;
  *(v211 + 80) = v324;
  *(v211 + 88) = 0x80000001CA9AC0F0;
  v213 = v317;
  *(v211 + 104) = v210;
  *(v211 + 112) = v213;
  v324 = sub_1CA94C438();
  *&v321 = v214;
  v215 = sub_1CA94C438();
  v308 = v216;
  v327 = v305;
  MEMORY[0x1EEE9AC00](v215);
  v217 = v305 - v340;
  sub_1CA948D98();
  v218 = [v204 bundleURL];
  MEMORY[0x1EEE9AC00](v218);
  v219 = v305 - v339;
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 120) = sub_1CA2F9F14(v324, v321, v215, v308, 0, 0, v217, v219);
  v221 = v335;
  v222 = v316;
  *(v211 + 144) = v335;
  *(v211 + 152) = v222;
  v324 = sub_1CA94C438();
  *&v321 = v223;
  v224 = sub_1CA94C438();
  v308 = v225;
  v327 = v305;
  MEMORY[0x1EEE9AC00](v224);
  v226 = v305 - v340;
  sub_1CA948D98();
  v227 = [v204 bundleURL];
  MEMORY[0x1EEE9AC00](v227);
  v228 = v339;
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 160) = sub_1CA2F9F14(v324, v321, v224, v308, 0, 0, v226, v305 - v228);
  v230 = v320;
  *(v211 + 184) = v221;
  *(v211 + 192) = v230;
  v231 = swift_allocObject();
  *(v231 + 16) = v328;
  v232 = MEMORY[0x1E69E6158];
  *(v231 + 32) = sub_1CA94C1E8();
  *(v211 + 200) = v231;
  v233 = v309;
  *(v211 + 224) = v325;
  *(v211 + 232) = v233;
  *(v211 + 264) = v232;
  *(v211 + 240) = 0x7468676952;
  *(v211 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v334 + 64) = sub_1CA2F864C();
  v234 = swift_allocObject();
  *(v234 + 16) = v322;
  *(v234 + 32) = v319;
  *(v234 + 40) = 0xD000000000000019;
  *(v234 + 48) = 0x80000001CA99B030;
  v235 = v318;
  *(v234 + 64) = v232;
  *(v234 + 72) = v235;
  *(v234 + 80) = 0x6567616D494657;
  *(v234 + 88) = 0xE700000000000000;
  v236 = v317;
  *(v234 + 104) = v232;
  *(v234 + 112) = v236;
  v237 = sub_1CA94C438();
  v326 = v238;
  v327 = v237;
  v239 = sub_1CA94C438();
  v325 = v240;
  *&v331 = v305;
  MEMORY[0x1EEE9AC00](v239);
  v241 = v340;
  sub_1CA948D98();
  v242 = v338;
  v243 = [v338 bundleURL];
  v324 = v305;
  MEMORY[0x1EEE9AC00](v243);
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v234 + 120) = sub_1CA2F9F14(v327, v326, v239, v325, 0, 0, v305 - v241, v305 - v228);
  v245 = v335;
  v246 = v316;
  *(v234 + 144) = v335;
  *(v234 + 152) = v246;
  v247 = sub_1CA94C438();
  v326 = v248;
  v327 = v247;
  v249 = sub_1CA94C438();
  v325 = v250;
  *&v331 = v305;
  MEMORY[0x1EEE9AC00](v249);
  sub_1CA948D98();
  v251 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v234 + 160) = sub_1CA2F9F14(v327, v326, v249, v325, 0, 0, v305 - v241, v305 - v228);
  *(v234 + 184) = v245;
  *(v234 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v253 = swift_allocObject();
  *(v253 + 16) = v328;
  v254 = @"PreferredTypes";
  v255 = v312;
  sub_1CA949CB8();
  v256 = sub_1CA949C68();
  v258 = v257;
  (*(v313 + 8))(v255, v314);
  *(v253 + 32) = v256;
  *(v253 + 40) = v258;
  *(v234 + 224) = v323;
  *(v234 + 200) = v253;
  sub_1CA94C1E8();
  v259 = sub_1CA2F864C();
  v260 = v334;
  *(v334 + 72) = v259;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v262 = v332;
  v332[50] = v260;
  v262[53] = v261;
  v262[54] = @"ParameterSummary";
  v334 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v335 = swift_allocObject();
  *(v335 + 16) = v310;
  v333 = "640 (WFImageResizeLength)";
  v263 = @"ParameterSummary";
  v264 = sub_1CA94C438();
  v329 = v265;
  v330 = v264;
  v266 = sub_1CA94C438();
  v268 = v267;
  *&v331 = v305;
  MEMORY[0x1EEE9AC00](v266);
  v269 = v305 - v340;
  sub_1CA948D98();
  v270 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v270);
  v271 = v339;
  sub_1CA948B68();

  v272 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v273 = sub_1CA2F9F14(v330, v329, v266, v268, 0, 0, v269, v305 - v271);
  v274 = objc_allocWithZone(WFActionParameterSummaryValue);
  v275 = sub_1CA65DD78(0xD00000000000003FLL, v333 | 0x8000000000000000, v273);
  *(v335 + 32) = v275;
  v333 = "\x97 ${WFImageResizeHeight}";
  v276 = sub_1CA94C438();
  v329 = v277;
  v330 = v276;
  v278 = sub_1CA94C438();
  v280 = v279;
  *&v331 = v305;
  MEMORY[0x1EEE9AC00](v278);
  v281 = v305 - v340;
  sub_1CA948D98();
  v282 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v282);
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v284 = sub_1CA2F9F14(v330, v329, v278, v280, 0, 0, v281, v305 - v271);
  v285 = objc_allocWithZone(WFActionParameterSummaryValue);
  v286 = sub_1CA65DD78(0xD00000000000002CLL, v333 | 0x8000000000000000, v284);
  v287 = v335;
  *(v335 + 40) = v286;
  v333 = "sizeKey} ${WFImageResizeLength}";
  v288 = sub_1CA94C438();
  v290 = v289;
  v291 = sub_1CA94C438();
  v293 = v292;
  *&v331 = v305;
  MEMORY[0x1EEE9AC00](v291);
  v294 = v305 - v340;
  sub_1CA948D98();
  v295 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v295);
  v296 = v305 - v339;
  sub_1CA948B68();

  v297 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v298 = sub_1CA2F9F14(v288, v290, v291, v293, 0, 0, v294, v296);
  v299 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v287 + 48) = sub_1CA65DD78(0xD000000000000030, v333 | 0x8000000000000000, v298);
  v300 = v334;
  v301 = sub_1CA65AF90();
  v302 = v332;
  v332[55] = v301;
  v302[58] = v300;
  v302[59] = @"ResidentCompatible";
  v302[63] = MEMORY[0x1E69E6370];
  *(v302 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v303 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA384D88()
{
  v208 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA985520;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFOpenInAction");
  *(inited + 55) = -18;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v215 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v224 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v226 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v227 = v11;
  v12 = &v197 - v226;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v225 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v228 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v229 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v197 - v229;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v224, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v224 = v20;
  v21 = v215;
  *(v215 + 80) = v19;
  *(v21 + 104) = v20;
  *(v21 + 112) = @"Description";
  v223 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v222 = xmmword_1CA981310;
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438();
  v220 = v26;
  v27 = sub_1CA94C438();
  v29 = v28;
  v221 = &v197;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v197 - v226;
  sub_1CA948D98();
  v31 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v197 - v229;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v25, v220, v27, v29, 0, 0, v30, v32);
  *(v22 + 64) = v224;
  *(v22 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v223;
  *(v21 + 120) = sub_1CA6B3784();
  *(v21 + 144) = v35;
  *(v21 + 152) = @"IconColor";
  *(v21 + 160) = 1953392980;
  *(v21 + 168) = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(v21 + 184) = MEMORY[0x1E69E6158];
  *(v21 + 192) = @"IconSymbol";
  *(v21 + 200) = 0xD000000000000010;
  *(v21 + 208) = 0x80000001CA9AC3B0;
  *(v21 + 224) = v36;
  *(v21 + 232) = @"IconSymbolColor";
  *(v21 + 240) = 1702194242;
  *(v21 + 248) = 0xE400000000000000;
  *(v21 + 264) = v36;
  *(v21 + 272) = @"Input";
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v212 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 0;
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
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v221;
  *(v37 + 192) = &unk_1F49F6EC0;
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"IconSymbolColor";
  v43 = @"Input";
  v44 = sub_1CA94C1E8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v21 + 280) = v44;
  *(v21 + 304) = v45;
  *(v21 + 312) = @"InputPassthrough";
  *(v21 + 320) = 1;
  *(v21 + 344) = v39;
  *(v21 + 352) = @"Name";
  v46 = @"InputPassthrough";
  v47 = @"Name";
  v48 = sub_1CA94C438();
  v50 = v49;
  v51 = sub_1CA94C438();
  v53 = v52;
  v223 = &v197;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v197 - v226;
  sub_1CA948D98();
  v55 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v197 - v229;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 360) = sub_1CA2F9F14(v48, v50, v51, v53, 0, 0, v54, v56);
  *(v21 + 384) = v224;
  *(v21 + 392) = @"ParameterCollapsingBehavior";
  *(v21 + 400) = 0x726576654ELL;
  *(v21 + 408) = 0xE500000000000000;
  v58 = MEMORY[0x1E69E6158];
  *(v21 + 424) = MEMORY[0x1E69E6158];
  *(v21 + 432) = @"Parameters";
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_1CA981570;
  v223 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  *(v59 + 16) = v212;
  v207 = 0xD000000000000011;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD000000000000011;
  *(v59 + 48) = 0x80000001CA99E620;
  *(v59 + 64) = v58;
  *(v59 + 72) = @"DefaultValue";
  *(v59 + 80) = 0;
  *(v59 + 104) = MEMORY[0x1E69E6370];
  *(v59 + 112) = @"Key";
  v213 = 0xD000000000000012;
  v214 = 0x80000001CA9AC400;
  *(v59 + 120) = 0xD000000000000012;
  *(v59 + 128) = 0x80000001CA9AC400;
  *(v59 + 144) = v58;
  *(v59 + 152) = @"Label";
  v60 = @"Class";
  v61 = @"Key";
  v62 = @"Label";
  v63 = v60;
  v64 = v61;
  v65 = v62;
  v209 = v63;
  v211 = v64;
  v210 = v65;
  v66 = @"ParameterCollapsingBehavior";
  v67 = @"Parameters";
  v68 = @"DefaultValue";
  v69 = sub_1CA94C438();
  v219 = v70;
  v71 = sub_1CA94C438();
  v73 = v72;
  v220 = &v197;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v197 - v226;
  sub_1CA948D98();
  v75 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v197 - v229;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v69, v219, v71, v73, 0, 0, v74, v76);
  *(v59 + 184) = v224;
  *(v59 + 160) = v78;
  _s3__C3KeyVMa_0(0);
  v220 = v79;
  v219 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v217 + 32) = sub_1CA2F864C();
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1CA981400;
  *(v80 + 32) = @"AppSearchType";
  *(v80 + 40) = 0x6E496E65704FLL;
  *(v80 + 48) = 0xE600000000000000;
  v81 = MEMORY[0x1E69E6158];
  v82 = v209;
  *(v80 + 64) = MEMORY[0x1E69E6158];
  *(v80 + 72) = v82;
  v198 = 0xD000000000000014;
  *(v80 + 80) = 0xD000000000000014;
  *(v80 + 88) = 0x80000001CA99B070;
  v84 = v210;
  v83 = v211;
  *(v80 + 104) = v81;
  *(v80 + 112) = v83;
  strcpy((v80 + 120), "WFSelectedApp");
  *(v80 + 134) = -4864;
  *(v80 + 144) = v81;
  *(v80 + 152) = v84;
  v209 = v82;
  v211 = v83;
  v210 = v84;
  v85 = @"AppSearchType";
  v86 = sub_1CA94C438();
  v203 = v87;
  v204 = v86;
  v88 = sub_1CA94C438();
  v202 = v89;
  *&v205 = &v197;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v226;
  sub_1CA948D98();
  v91 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v197 - v229;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 160) = sub_1CA2F9F14(v204, v203, v88, v202, 0, 0, &v197 - v90, v92);
  v94 = v224;
  *(v80 + 184) = v224;
  *(v80 + 192) = @"Placeholder";
  v199 = @"Placeholder";
  v95 = sub_1CA94C438();
  v203 = v96;
  v204 = v95;
  v97 = sub_1CA94C438();
  v202 = v98;
  *&v205 = &v197;
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948D98();
  v99 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v197 - v229;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 200) = sub_1CA2F9F14(v204, v203, v97, v202, 0, 0, &v197 - v90, v100);
  *(v80 + 224) = v94;
  *(v80 + 232) = @"RequiredResources";
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v102 = swift_allocObject();
  *(v102 + 16) = v222;
  v103 = swift_allocObject();
  v205 = xmmword_1CA9813C0;
  *(v103 + 16) = xmmword_1CA9813C0;
  strcpy((v103 + 32), "WFParameterKey");
  *(v103 + 47) = -18;
  v104 = v214;
  *(v103 + 48) = v213;
  *(v103 + 56) = v104;
  v204 = 0x80000001CA993570;
  v105 = MEMORY[0x1E69E6158];
  *(v103 + 72) = MEMORY[0x1E69E6158];
  *(v103 + 80) = 0xD000000000000010;
  *(v103 + 88) = 0x80000001CA993570;
  *(v103 + 96) = 0;
  v106 = MEMORY[0x1E69E6370];
  *(v103 + 120) = MEMORY[0x1E69E6370];
  *(v103 + 128) = 0x72756F7365524657;
  *(v103 + 168) = v105;
  v202 = 0xD00000000000001BLL;
  v203 = 0x80000001CA993590;
  *(v103 + 136) = 0xEF7373616C436563;
  *(v103 + 144) = 0xD00000000000001BLL;
  *(v103 + 152) = 0x80000001CA993590;
  v107 = @"RequiredResources";
  *(v102 + 32) = sub_1CA94C1E8();
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v80 + 264) = v201;
  *(v80 + 240) = v102;
  v108 = v198;
  *(v80 + 272) = sub_1CA94C368();
  *(v80 + 304) = v106;
  *(v80 + 280) = 1;
  sub_1CA94C1E8();
  v109 = sub_1CA2F864C();
  v110 = v217;
  *(v217 + 40) = v109;
  v111 = swift_allocObject();
  *(v111 + 16) = v212;
  *(v111 + 32) = v209;
  *(v111 + 40) = v108;
  *(v111 + 48) = 0x80000001CA99B500;
  *(v111 + 64) = v105;
  *(v111 + 72) = @"Hidden";
  *(v111 + 80) = 1;
  v112 = v211;
  *(v111 + 104) = v106;
  *(v111 + 112) = v112;
  *(v111 + 120) = 0x6D614E7070414657;
  *(v111 + 128) = 0xE900000000000065;
  v113 = v210;
  *(v111 + 144) = v105;
  *(v111 + 152) = v113;
  v114 = @"Hidden";
  v115 = sub_1CA94C438();
  v198 = v116;
  v117 = sub_1CA94C438();
  v119 = v118;
  *&v212 = &v197;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v197 - v226;
  sub_1CA948D98();
  v121 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v197 - v229;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v115, v198, v117, v119, 0, 0, v120, v122);
  *(v111 + 184) = v224;
  *(v111 + 160) = v124;
  sub_1CA94C1E8();
  *(v110 + 48) = sub_1CA2F864C();
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1CA981370;
  *(v125 + 32) = v209;
  *(v125 + 40) = 0xD000000000000015;
  *(v125 + 48) = 0x80000001CA99B1E0;
  v126 = MEMORY[0x1E69E6158];
  *(v125 + 64) = MEMORY[0x1E69E6158];
  *(v125 + 72) = @"FilePickerSupportedTypes";
  *(v125 + 80) = &unk_1F49F6EF0;
  v127 = v211;
  *(v125 + 104) = v221;
  *(v125 + 112) = v127;
  *(v125 + 120) = 0x7475706E494657;
  *(v125 + 128) = 0xE700000000000000;
  v128 = v210;
  *(v125 + 144) = v126;
  *(v125 + 152) = v128;
  v129 = @"FilePickerSupportedTypes";
  v130 = sub_1CA94C438();
  v211 = v131;
  *&v212 = v130;
  v132 = sub_1CA94C438();
  v210 = v133;
  v218 = &v197;
  MEMORY[0x1EEE9AC00](v132);
  v134 = v226;
  sub_1CA948D98();
  v135 = v225;
  v136 = [v225 bundleURL];
  v209 = &v197;
  MEMORY[0x1EEE9AC00](v136);
  v137 = v215;
  v138 = &v197 - v229;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v125 + 160) = sub_1CA2F9F14(v212, v211, v132, v210, 0, 0, &v197 - v134, v138);
  v140 = v224;
  v141 = v199;
  *(v125 + 184) = v224;
  *(v125 + 192) = v141;
  v142 = sub_1CA94C438();
  v211 = v143;
  *&v212 = v142;
  v144 = sub_1CA94C438();
  v210 = v145;
  v218 = &v197;
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v197 - v134;
  sub_1CA948D98();
  v147 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v197 - v229;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v212, v211, v144, v210, 0, 0, v146, v148);
  *(v125 + 224) = v140;
  *(v125 + 200) = v150;
  sub_1CA94C1E8();
  v151 = sub_1CA2F864C();
  v152 = v217;
  *(v217 + 56) = v151;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(v137 + 440) = v152;
  *(v137 + 464) = v153;
  *(v137 + 472) = @"ParameterSummary";
  v223 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_1CA981360;
  v220 = "App Name (WFAppName)";
  v154 = @"ParameterSummary";
  v155 = sub_1CA94C438();
  v157 = v156;
  v158 = sub_1CA94C438();
  v160 = v159;
  v219 = &v197;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v197 - v226;
  sub_1CA948D98();
  v162 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v197 - v229;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v155, v157, v158, v160, 0, 0, v161, v163);
  v166 = objc_allocWithZone(WFActionParameterSummaryValue);
  v167 = sub_1CA65DD78(0xD00000000000002BLL, v220 | 0x8000000000000000, v165);
  *(v224 + 32) = v167;
  v220 = "in ${WFSelectedApp}";
  v168 = sub_1CA94C438();
  v170 = v169;
  v171 = sub_1CA94C438();
  v173 = v172;
  v219 = &v197;
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v197 - v226;
  sub_1CA948D98();
  v175 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v197 - v229;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v168, v170, v171, v173, 0, 0, v174, v176);
  v179 = objc_allocWithZone(WFActionParameterSummaryValue);
  v180 = sub_1CA65DD78(0xD00000000000001DLL, v220 | 0x8000000000000000, v178);
  v181 = v223;
  *(v224 + 40) = v180;
  *(v137 + 480) = sub_1CA65AF90();
  *(v137 + 504) = v181;
  *(v137 + 512) = @"RemoteExecuteOnPlatforms";
  *(v137 + 544) = v221;
  *(v137 + 520) = &unk_1F49F6F20;
  *(v137 + 552) = @"RequiredResources";
  v182 = swift_allocObject();
  *(v182 + 16) = v222;
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_1CA97EDF0;
  *(v183 + 32) = v207;
  *(v183 + 40) = 0x80000001CA99B240;
  v184 = swift_allocObject();
  *(v184 + 16) = v222;
  v185 = swift_allocObject();
  *(v185 + 16) = v205;
  strcpy((v185 + 32), "WFParameterKey");
  *(v185 + 47) = -18;
  v186 = v214;
  *(v185 + 48) = v213;
  *(v185 + 56) = v186;
  v187 = MEMORY[0x1E69E6158];
  *(v185 + 72) = MEMORY[0x1E69E6158];
  *(v185 + 80) = 0xD000000000000010;
  *(v185 + 88) = v204;
  *(v185 + 96) = 1;
  *(v185 + 120) = MEMORY[0x1E69E6370];
  *(v185 + 128) = 0x72756F7365524657;
  *(v185 + 168) = v187;
  *(v185 + 136) = 0xEF7373616C436563;
  v188 = v203;
  *(v185 + 144) = v202;
  *(v185 + 152) = v188;
  v189 = @"RemoteExecuteOnPlatforms";
  v190 = @"RequiredResources";
  *(v184 + 32) = sub_1CA94C1E8();
  *(v183 + 48) = v184;
  v191 = v201;
  *(v183 + 72) = v201;
  *(v183 + 80) = 0x72756F7365524657;
  *(v183 + 120) = v187;
  *(v183 + 88) = 0xEF7373616C436563;
  *(v183 + 96) = 0xD000000000000019;
  *(v183 + 104) = 0x80000001CA9932D0;
  *(v182 + 32) = sub_1CA94C1E8();
  *(v137 + 584) = v191;
  *(v137 + 560) = v182;
  *(v137 + 592) = @"RequiresUnlock";
  *(v137 + 624) = MEMORY[0x1E69E6370];
  *(v137 + 600) = 1;
  *(v137 + 632) = @"UserInterfaceClasses";
  v192 = @"RequiresUnlock";
  v193 = @"UserInterfaceClasses";
  v194 = sub_1CA94C1E8();
  *(v137 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v137 + 640) = v194;
  *(v137 + 672) = @"UserInterfaces";
  *(v137 + 704) = v221;
  *(v137 + 680) = &unk_1F49F6FB0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v195 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA386750()
{
  v212 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9AC590;
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
  v229 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v206 - v229;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v225 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v228 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v226 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v206 - v226;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v224 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v222 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v219 = v28;
  v220 = v27;
  v218 = sub_1CA94C438();
  v30 = v29;
  v221 = &v206;
  MEMORY[0x1EEE9AC00](v218);
  v31 = &v206 - v229;
  sub_1CA948D98();
  v32 = v225;
  v33 = [v225 bundleURL];
  v223 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v226;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v220, v219, v218, v30, 0, 0, v31, &v206 - v35);
  v37 = v224;
  *(v24 + 64) = v224;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v219 = v40;
  v220 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v221 = &v206;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v206 - v229;
  sub_1CA948D98();
  v45 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v220, v219, v41, v43, 0, 0, v44, &v206 - v35);
  *(v24 + 104) = v37;
  *(v24 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v222;
  v49 = sub_1CA6B3784();
  v50 = v223;
  v223[20] = v49;
  v50[23] = v48;
  v50[24] = @"Input";
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
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
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v222;
  *(v51 + 192) = &unk_1F49F7030;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v221 = v55;
  v50[25] = v54;
  v50[28] = v55;
  v50[29] = @"Name";
  v56 = @"Name";
  v219 = sub_1CA94C438();
  v58 = v57;
  v59 = sub_1CA94C438();
  v61 = v60;
  v220 = &v206;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v206 - v229;
  sub_1CA948D98();
  v63 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v226;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v219, v58, v59, v61, 0, 0, v62, &v206 - v64);
  v67 = v223;
  v68 = v224;
  v223[30] = v66;
  v67[33] = v68;
  v67[34] = @"Output";
  v69 = swift_initStackObject();
  *(v69 + 16) = v217;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 0;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438();
  v218 = v72;
  v219 = v71;
  v73 = sub_1CA94C438();
  v75 = v74;
  v220 = &v206;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v206 - v229;
  sub_1CA948D98();
  v77 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v219, v218, v73, v75, 0, 0, v76, &v206 - v64);
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v222;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F49F7060;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v223;
  v223[35] = v80;
  v81[38] = v221;
  v81[39] = @"Parameters";
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_1CA981560;
  v222 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  *(v82 + 16) = v217;
  *(v82 + 32) = @"AllowsMultipleValues";
  *(v82 + 40) = 1;
  *(v82 + 64) = MEMORY[0x1E69E6370];
  *(v82 + 72) = @"Class";
  *(v82 + 80) = 0xD000000000000015;
  *(v82 + 88) = 0x80000001CA99B1E0;
  *(v82 + 104) = v79;
  *(v82 + 112) = @"Key";
  *(v82 + 120) = 0x7475706E494657;
  *(v82 + 128) = 0xE700000000000000;
  *(v82 + 144) = v79;
  *(v82 + 152) = @"Label";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v83;
  v87 = v84;
  v88 = v85;
  v214 = v86;
  v213 = v87;
  v215 = v88;
  v89 = @"Parameters";
  v90 = @"AllowsMultipleValues";
  v91 = sub_1CA94C438();
  v93 = v92;
  v94 = sub_1CA94C438();
  v96 = v95;
  v221 = &v206;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v206 - v229;
  sub_1CA948D98();
  v98 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v206 - v226;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v99);
  *(v82 + 184) = v224;
  *(v82 + 160) = v101;
  _s3__C3KeyVMa_0(0);
  v221 = v102;
  v220 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v218 + 32) = sub_1CA2F864C();
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_1CA981370;
  v105 = v213;
  v104 = v214;
  *(v103 + 32) = v214;
  *(v103 + 40) = 0xD000000000000014;
  *(v103 + 48) = 0x80000001CA99B500;
  v106 = MEMORY[0x1E69E6158];
  *(v103 + 64) = MEMORY[0x1E69E6158];
  *(v103 + 72) = v105;
  *(v103 + 80) = 0x614E656D756C6F56;
  *(v103 + 88) = 0xEA0000000000656DLL;
  v107 = v215;
  *(v103 + 104) = v106;
  *(v103 + 112) = v107;
  v214 = v104;
  v209 = v105;
  v215 = v107;
  *&v210 = sub_1CA94C438();
  v208 = v108;
  v109 = sub_1CA94C438();
  v207 = v110;
  v213 = &v206;
  MEMORY[0x1EEE9AC00](v109);
  v111 = v229;
  sub_1CA948D98();
  v112 = v225;
  v113 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v206 - v226;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 120) = sub_1CA2F9F14(v210, v208, v109, v207, 0, 0, &v206 - v111, v114);
  v116 = v224;
  *(v103 + 144) = v224;
  *(v103 + 152) = @"Placeholder";
  v117 = @"Placeholder";
  *&v210 = sub_1CA94C438();
  v208 = v118;
  v119 = sub_1CA94C438();
  v121 = v120;
  v213 = &v206;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v206 - v111;
  sub_1CA948D98();
  v123 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v206 - v226;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 160) = sub_1CA2F9F14(v210, v208, v119, v121, 0, 0, v122, v124);
  *(v103 + 184) = v116;
  *(v103 + 192) = @"TextAlignment";
  v126 = MEMORY[0x1E69E6158];
  *(v103 + 224) = MEMORY[0x1E69E6158];
  *(v103 + 200) = 0x7468676952;
  *(v103 + 208) = 0xE500000000000000;
  v127 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v218 + 40) = sub_1CA2F864C();
  v128 = swift_allocObject();
  v210 = xmmword_1CA9813C0;
  *(v128 + 16) = xmmword_1CA9813C0;
  v208 = 0x80000001CA99E620;
  v129 = v214;
  *(v128 + 32) = v214;
  *(v128 + 40) = 0xD000000000000011;
  *(v128 + 48) = 0x80000001CA99E620;
  v130 = v209;
  *(v128 + 64) = v126;
  *(v128 + 72) = v130;
  strcpy((v128 + 80), "EncryptImage");
  *(v128 + 93) = 0;
  *(v128 + 94) = -5120;
  *(v128 + 104) = v126;
  v131 = v215;
  *(v128 + 112) = v215;
  v213 = v129;
  v214 = v130;
  v215 = v131;
  v132 = sub_1CA94C438();
  v134 = v133;
  v135 = sub_1CA94C438();
  v137 = v136;
  v209 = &v206;
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v206 - v229;
  sub_1CA948D98();
  v139 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v206 - v226;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v132, v134, v135, v137, 0, 0, v138, v140);
  *(v128 + 144) = v224;
  *(v128 + 120) = v142;
  sub_1CA94C1E8();
  v143 = sub_1CA2F864C();
  v144 = v218;
  *(v218 + 48) = v143;
  v145 = swift_allocObject();
  *(v145 + 16) = v217;
  *(v145 + 32) = v213;
  *(v145 + 40) = 0xD000000000000011;
  *(v145 + 48) = v208;
  v146 = MEMORY[0x1E69E6158];
  *(v145 + 64) = MEMORY[0x1E69E6158];
  *(v145 + 72) = @"DefaultValue";
  *(v145 + 80) = 0;
  v147 = v214;
  *(v145 + 104) = MEMORY[0x1E69E6370];
  *(v145 + 112) = v147;
  *(v145 + 120) = 0x69466F54657A6953;
  *(v145 + 128) = 0xE900000000000074;
  v148 = v215;
  *(v145 + 144) = v146;
  *(v145 + 152) = v148;
  *&v217 = @"DefaultValue";
  v149 = sub_1CA94C438();
  v208 = v150;
  v151 = sub_1CA94C438();
  v153 = v152;
  v209 = &v206;
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v206 - v229;
  sub_1CA948D98();
  v155 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v206 - v226;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158 = sub_1CA2F9F14(v149, v208, v151, v153, 0, 0, v154, v156);
  *(v145 + 184) = v224;
  *(v145 + 160) = v158;
  sub_1CA94C1E8();
  *(v144 + 56) = sub_1CA2F864C();
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_1CA981400;
  *(v159 + 32) = v213;
  *(v159 + 40) = 0xD00000000000001CLL;
  *(v159 + 48) = 0x80000001CA9AC750;
  v160 = MEMORY[0x1E69E6158];
  *(v159 + 64) = MEMORY[0x1E69E6158];
  *(v159 + 72) = @"DefaultUnit";
  *(v159 + 80) = 16967;
  *(v159 + 88) = 0xE200000000000000;
  v161 = v217;
  *(v159 + 104) = v160;
  *(v159 + 112) = v161;
  v162 = MEMORY[0x1E69E6530];
  *(v159 + 120) = 1;
  *(v159 + 144) = v162;
  *(v159 + 152) = v214;
  *(v159 + 160) = 0x7A69536567616D49;
  *(v159 + 168) = 0xE900000000000065;
  v163 = v215;
  *(v159 + 184) = v160;
  *(v159 + 192) = v163;
  v164 = @"DefaultUnit";
  v165 = sub_1CA94C438();
  v167 = v166;
  v168 = sub_1CA94C438();
  v170 = v169;
  v219 = &v206;
  MEMORY[0x1EEE9AC00](v168);
  v171 = &v206 - v229;
  sub_1CA948D98();
  v172 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v206 - v226;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v159 + 200) = sub_1CA2F9F14(v165, v167, v168, v170, 0, 0, v171, v173);
  *(v159 + 224) = v224;
  *(v159 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_1CA981310;
  v176 = swift_allocObject();
  *(v176 + 16) = v210;
  strcpy((v176 + 32), "WFParameterKey");
  *(v176 + 47) = -18;
  *(v176 + 48) = 0x69466F54657A6953;
  *(v176 + 56) = 0xE900000000000074;
  v177 = MEMORY[0x1E69E6158];
  *(v176 + 72) = MEMORY[0x1E69E6158];
  *(v176 + 80) = 0xD000000000000010;
  *(v176 + 88) = 0x80000001CA993570;
  *(v176 + 96) = 0;
  *(v176 + 120) = MEMORY[0x1E69E6370];
  *(v176 + 128) = 0x72756F7365524657;
  *(v176 + 168) = v177;
  *(v176 + 136) = 0xEF7373616C436563;
  *(v176 + 144) = 0xD00000000000001BLL;
  *(v176 + 152) = 0x80000001CA993590;
  v178 = @"RequiredResources";
  *(v175 + 32) = sub_1CA94C1E8();
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v159 + 240) = v175;
  *(v159 + 264) = v179;
  *(v159 + 272) = @"WFUnitType";
  *(v159 + 304) = v177;
  *(v159 + 280) = 0xD000000000000013;
  *(v159 + 288) = 0x80000001CA9AC790;
  v180 = @"WFUnitType";
  sub_1CA94C1E8();
  v181 = sub_1CA2F864C();
  v182 = v218;
  *(v218 + 64) = v181;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v184 = v223;
  v223[40] = v182;
  v184[43] = v183;
  v184[44] = @"ParameterSummary";
  v185 = @"ParameterSummary";
  v186 = sub_1CA94C438();
  v188 = v187;
  v189 = sub_1CA94C438();
  v191 = v190;
  MEMORY[0x1EEE9AC00](v189);
  v192 = &v206 - v229;
  sub_1CA948D98();
  v193 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  v194 = &v206 - v226;
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v186, v188, v189, v191, 0, 0, v192, v194);
  v197 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v198 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v199 = v223;
  v223[45] = v197;
  v199[48] = v198;
  v199[49] = @"RequiredResources";
  v200 = v199;
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_1CA9813B0;
  v230 = 2;
  v231 = 0;
  v202 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v203 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v230);
  *(v201 + 32) = v204;
  v200[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v200[50] = v201;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3880DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppEnumContentItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA388134(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFRemoteAppEnumContentItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1CA3881C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppEnumContentItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WFImagePlaygroundAvailabilityResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFImagePlaygroundAvailabilityResource.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v11, sel_initWithDefinition_enableDistributedNotifications_, 0, 1);
  v7 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v9 = v6;
  sub_1CA30C708();

  return v9;
}

uint64_t sub_1CA388364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1CA949F78();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_1CA9494F8();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443888, &unk_1CA981640) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = sub_1CA949568();
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v15 = sub_1CA949558();
  v4[15] = v15;
  v16 = *(v15 - 8);
  v4[16] = v16;
  v17 = *(v16 + 64) + 15;
  v4[17] = swift_task_alloc();
  v18 = sub_1CA949478();
  v4[18] = v18;
  v19 = *(v18 - 8);
  v4[19] = v19;
  v20 = *(v19 + 64) + 15;
  v4[20] = swift_task_alloc();
  v21 = sub_1CA9495A8();
  v4[21] = v21;
  v22 = *(v21 - 8);
  v4[22] = v22;
  v23 = *(v22 + 64) + 15;
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA388634, 0, 0);
}

uint64_t sub_1CA388634()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  sub_1CA949488();
  (*(v3 + 104))(v2, *MEMORY[0x1E696E430], v4);
  sub_1CA949468();
  (*(v3 + 8))(v2, v4);
  sub_1CA949588();
  sub_1CA949548();
  (*(v7 + 8))(v6, v8);
  v0[24] = *MEMORY[0x1E69E1078];
  OUTLINED_FUNCTION_10();
  sub_1CA2AD9B4(v9, v10);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_1_20(v12);

  return MEMORY[0x1EEE6D8C8](v13);
}

uint64_t sub_1CA3887A0()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1CA388C84;
  }

  else
  {
    v3 = sub_1CA3888B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CA3888D0()
{
  v47 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 112);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v44 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    (*(v4 + 8))(v3, v5);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 192);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);
    (*(v15 + 32))(v13, v1, v2);
    sub_1CA949C58();
    (*(v15 + 16))(v14, v13, v2);
    v17 = sub_1CA949F68();
    v18 = sub_1CA94CC08();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 32);
    v24 = *(v0 + 40);
    if (v19)
    {
      v45 = *(v0 + 32);
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v26 = 136315138;
      sub_1CA2AD9B4(&unk_1EC4438A0, MEMORY[0x1E69A11A8]);
      v27 = sub_1CA94D798();
      v42 = v22;
      v29 = v28;
      v41 = v18;
      v30 = *(v21 + 8);
      v30(v20, v23);
      v31 = sub_1CA26B54C(v27, v29, &v46);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1CA256000, v17, v41, "ImagePlayground availability changed: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1CCAA4BF0](v43, -1, -1);
      MEMORY[0x1CCAA4BF0](v26, -1, -1);

      (*(v24 + 8))(v42, v45);
    }

    else
    {

      v30 = *(v21 + 8);
      v30(v20, v23);
      (*(v24 + 8))(v22, v25);
    }

    v32 = *(v0 + 80);
    v33 = *(v0 + 56);
    v34 = *(v0 + 64) + 8;
    [*(v0 + 24) refreshAvailabilityWithNotification];
    v35 = OUTLINED_FUNCTION_3_3();
    (v30)(v35);
    OUTLINED_FUNCTION_10();
    sub_1CA2AD9B4(v36, v37);
    v38 = *(MEMORY[0x1E69E85A8] + 4);
    v39 = swift_task_alloc();
    *(v0 + 200) = v39;
    *v39 = v0;
    v40 = OUTLINED_FUNCTION_1_20();

    return MEMORY[0x1EEE6D8C8](v40);
  }
}

uint64_t sub_1CA388C84()
{
  *(v0 + 16) = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1CA388D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CA3601B4;

  return sub_1CA388364(a1, v4, v5, v6);
}

uint64_t WFImagePlaygroundAvailabilityResource.name.getter()
{
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_3_3();
  v0 = sub_1CA94C368();
  OUTLINED_FUNCTION_3_3();
  v1 = sub_1CA94C368();

  v3 = OUTLINED_FUNCTION_2(v2, sel_localizedStringForKey_value_table_);

  v4 = sub_1CA94C3A8();
  return v4;
}

Swift::Void __swiftcall WFImagePlaygroundAvailabilityResource.refreshAvailability()()
{
  v1 = v0;
  sub_1CA949488();
  if (sub_1CA949458())
  {

    [v0 updateAvailability:1 withError:0];
  }

  else
  {
    v2 = sub_1CA94C3A8();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA97EDF0;
    v6 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v7;
    sub_1CA94C438();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v8 = qword_1EDB9F690;
    v9 = sub_1CA94C368();
    v10 = sub_1CA94C368();

    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    v12 = sub_1CA94C3A8();
    v14 = v13;

    v15 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    v16 = *MEMORY[0x1E696A588];
    *(inited + 80) = sub_1CA94C3A8();
    *(inited + 88) = v17;
    sub_1CA94C438();
    v18 = sub_1CA94C368();
    v19 = sub_1CA94C368();

    v20 = [v8 localizedStringForKey:v18 value:v19 table:0];

    v21 = sub_1CA94C3A8();
    v23 = v22;

    *(inited + 120) = v15;
    *(inited + 96) = v21;
    *(inited + 104) = v23;
    v24 = sub_1CA94C1E8();
    v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v26 = sub_1CA298568(v2, v4, 1, v24);
    v27 = sub_1CA948AC8();

    [v1 updateAvailability:0 withError:v27];
  }
}

uint64_t WFImagePlaygroundAvailabilityResource.localizedErrorReason(for:)(uint64_t a1)
{
  if (a1 == 1 || a1 == 4)
  {
    return 0;
  }

  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_3_3();
  v3 = sub_1CA94C368();
  OUTLINED_FUNCTION_3_3();
  v4 = sub_1CA94C368();

  v6 = OUTLINED_FUNCTION_2(v5, sel_localizedStringForKey_value_table_);

  v2 = sub_1CA94C3A8();
  return v2;
}

id WFImagePlaygroundAvailabilityResource.__allocating_init(definition:enableDistributedNotifications:)(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = sub_1CA94C1A8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithDefinition:v4 enableDistributedNotifications:a2 & 1];

  return v5;
}

id WFImagePlaygroundAvailabilityResource.__allocating_init(definition:)(uint64_t a1)
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

id WFImagePlaygroundAvailabilityResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA3895FC()
{
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v440 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = sub_1CA94C1E8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000011;
  v439 = 0xD000000000000011;
  *(inited + 88) = 0x80000001CA9AC960;
  *(inited + 96) = sub_1CA94C1E8();
  v421 = v2;
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
  v454 = v11;
  v458 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v410 - v458;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v457 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v455 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v456 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v410 - v456;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v453 = v19;
  *(inited + 144) = v18;
  *(inited + 168) = v19;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v425 = swift_allocObject();
  v450 = xmmword_1CA97EDF0;
  *(v425 + 16) = xmmword_1CA97EDF0;
  v20 = swift_initStackObject();
  v424 = v20;
  v438 = xmmword_1CA9813C0;
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = 0x736E6F69746341;
  *(v20 + 40) = 0xE700000000000000;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v423 = swift_allocObject();
  v441 = xmmword_1CA981310;
  *(v423 + 16) = xmmword_1CA981310;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA9813E0;
  strcpy((v21 + 32), "ActionKeywords");
  *(v21 + 47) = -18;
  v22 = sub_1CA94C438();
  v449 = v23;
  v24 = sub_1CA94C438();
  v26 = v25;
  v451 = &v410;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v410 - v458;
  sub_1CA948D98();
  v28 = v457;
  v29 = [v457 bundleURL];
  v422 = inited;
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v410 - v456;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v22, v449, v24, v26, 0, 0, v27, v30);
  v435 = v21;
  *(v21 + 48) = v32;
  *(v21 + 72) = v453;
  *(v21 + 80) = 0x7470697263736544;
  *(v21 + 88) = 0xEB000000006E6F69;
  v451 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v33 = swift_initStackObject();
  *(v33 + 16) = v450;
  *(v33 + 32) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438();
  v448 = v36;
  v449 = v35;
  v37 = sub_1CA94C438();
  v447 = v38;
  *&v450 = &v410;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v410 - v458;
  sub_1CA948D98();
  v40 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = v456;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v33 + 40) = sub_1CA2F9F14(v449, v448, v37, v447, 0, 0, v39, &v410 - v41);
  v43 = v453;
  *(v33 + 64) = v453;
  *(v33 + 72) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438();
  v448 = v46;
  v449 = v45;
  v447 = sub_1CA94C438();
  v48 = v47;
  *&v450 = &v410;
  MEMORY[0x1EEE9AC00](v447);
  v49 = &v410 - v458;
  sub_1CA948D98();
  v50 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v449, v448, v447, v48, 0, 0, v49, &v410 - v41);
  *(v33 + 104) = v43;
  *(v33 + 80) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v53 = v451;
  v54 = sub_1CA6B3784();
  v55 = v435;
  *(v435 + 96) = v54;
  *(v55 + 120) = v53;
  strcpy((v55 + 128), "Discoverable");
  *(v55 + 141) = 0;
  *(v55 + 142) = -5120;
  v56 = MEMORY[0x1E69E6370];
  *(v55 + 144) = 0;
  *(v55 + 168) = v56;
  *(v55 + 176) = 0x74616D726F46;
  *(v55 + 184) = 0xE600000000000000;
  *(v55 + 192) = 0xD00000000000001CLL;
  *(v55 + 200) = 0x80000001CA9ACA00;
  v57 = MEMORY[0x1E69E6158];
  *(v55 + 216) = MEMORY[0x1E69E6158];
  *(v55 + 224) = 0x696669746E656449;
  v58 = v57;
  *(v55 + 232) = 0xEA00000000007265;
  *(v55 + 240) = 0x6B736174646461;
  *(v55 + 248) = 0xE700000000000000;
  *(v55 + 264) = v57;
  strcpy((v55 + 272), "InputMapping");
  *(v55 + 285) = 0;
  *(v55 + 286) = -5120;
  v451 = swift_allocObject();
  *(v451 + 1) = xmmword_1CA981420;
  v59 = swift_allocObject();
  v444 = xmmword_1CA981380;
  *(v59 + 16) = xmmword_1CA981380;
  strcpy((v59 + 32), "DestinationKey");
  *(v59 + 47) = -18;
  *(v59 + 48) = 1802723700;
  *(v59 + 56) = 0xE400000000000000;
  *(v59 + 72) = v58;
  *(v59 + 80) = 0x74616E6974736544;
  *(v59 + 88) = 0xEF657079546E6F69;
  *(v59 + 96) = 0x74736275534C5255;
  *(v59 + 104) = 0xEF6E6F6974757469;
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x73616C436D657449;
  v449 = 0xE900000000000073;
  v442 = 0x80000001CA993390;
  v443 = 0xD000000000000013;
  *(v59 + 136) = 0xE900000000000073;
  *(v59 + 144) = 0xD000000000000013;
  *(v59 + 152) = 0x80000001CA993390;
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x6574656D61726150;
  *(v59 + 184) = 0xEB00000000495572;
  *&v450 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v60 = swift_allocObject();
  *(v60 + 16) = v438;
  v437 = 0x80000001CA99B500;
  *(v60 + 32) = @"Class";
  *(v60 + 40) = 0xD000000000000014;
  *(v60 + 48) = 0x80000001CA99B500;
  *(v60 + 64) = v58;
  *(v60 + 72) = @"Label";
  v61 = @"Class";
  v62 = @"Label";
  v63 = v61;
  v64 = v62;
  v436 = v63;
  v434 = v64;
  v65 = sub_1CA94C438();
  v447 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v448 = &v410;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v410 - v458;
  sub_1CA948D98();
  v71 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v410 - v456;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 80) = sub_1CA2F9F14(v65, v447, v67, v69, 0, 0, v70, v72);
  *(v60 + 104) = v453;
  *(v60 + 112) = @"TextAlignment";
  v74 = MEMORY[0x1E69E6158];
  *(v60 + 144) = MEMORY[0x1E69E6158];
  *(v60 + 120) = 0x7468676952;
  *(v60 + 128) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v448 = v75;
  v447 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v433 = @"TextAlignment";
  sub_1CA94C1E8();
  v76 = v450;
  *(v59 + 192) = sub_1CA2F864C();
  *(v59 + 216) = v76;
  *(v59 + 224) = 0x654B656372756F53;
  v446 = 0xE900000000000079;
  *(v59 + 232) = 0xE900000000000079;
  *(v59 + 240) = 0x615473676E696874;
  *(v59 + 248) = 0xEA00000000006B73;
  *(v59 + 264) = v74;
  *(v59 + 272) = 0x7954656372756F53;
  *(v59 + 312) = v74;
  *(v59 + 280) = 0xEA00000000006570;
  *(v59 + 288) = 0x6574656D61726150;
  *(v59 + 296) = 0xE900000000000072;
  v451[4] = sub_1CA94C1E8();
  v77 = swift_allocObject();
  *(v77 + 16) = v444;
  strcpy((v77 + 32), "DestinationKey");
  *(v77 + 47) = -18;
  *(v77 + 48) = 1953720684;
  *(v77 + 56) = 0xE400000000000000;
  *(v77 + 72) = v74;
  *(v77 + 80) = 0x74616E6974736544;
  *(v77 + 88) = 0xEF657079546E6F69;
  strcpy((v77 + 96), "URLQueryValue");
  *(v77 + 110) = -4864;
  *(v77 + 120) = v74;
  *(v77 + 128) = 0x73616C436D657449;
  v78 = v442;
  v79 = v443;
  *(v77 + 136) = v449;
  *(v77 + 144) = v79;
  *(v77 + 152) = v78;
  *(v77 + 168) = v74;
  *(v77 + 176) = 0x6574656D61726150;
  *(v77 + 184) = 0xEB00000000495572;
  v80 = swift_allocObject();
  *(v80 + 16) = v438;
  v81 = v436;
  *(v80 + 32) = v436;
  *(v80 + 40) = 0xD000000000000014;
  *(v80 + 48) = v437;
  v82 = v434;
  *(v80 + 64) = v74;
  *(v80 + 72) = v82;
  v432 = v81;
  v434 = v82;
  v83 = sub_1CA94C438();
  v430 = v84;
  v85 = sub_1CA94C438();
  v87 = v86;
  v436 = &v410;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v410 - v458;
  sub_1CA948D98();
  v89 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v410 - v456;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 80) = sub_1CA2F9F14(v83, v430, v85, v87, 0, 0, v88, v90);
  v92 = v433;
  *(v80 + 104) = v453;
  *(v80 + 112) = v92;
  v93 = MEMORY[0x1E69E6158];
  *(v80 + 144) = MEMORY[0x1E69E6158];
  *(v80 + 120) = 0x7468676952;
  *(v80 + 128) = 0xE500000000000000;
  v436 = v92;
  sub_1CA94C1E8();
  v94 = v450;
  *(v77 + 192) = sub_1CA2F864C();
  *(v77 + 216) = v94;
  *(v77 + 224) = 0x654B656372756F53;
  *(v77 + 232) = v446;
  *(v77 + 240) = 0x694C73676E696874;
  *(v77 + 248) = 0xEA00000000007473;
  v95 = v93;
  *(v77 + 264) = v93;
  *(v77 + 272) = 0x7954656372756F53;
  *(v77 + 312) = v93;
  *(v77 + 280) = 0xEA00000000006570;
  *(v77 + 288) = 0x6574656D61726150;
  *(v77 + 296) = 0xE900000000000072;
  v451[5] = sub_1CA94C1E8();
  v96 = swift_allocObject();
  *(v96 + 16) = v444;
  strcpy((v96 + 32), "DestinationKey");
  *(v96 + 47) = -18;
  *(v96 + 48) = 0x676E6964616568;
  *(v96 + 56) = 0xE700000000000000;
  *(v96 + 72) = v93;
  *(v96 + 80) = 0x74616E6974736544;
  *(v96 + 88) = 0xEF657079546E6F69;
  strcpy((v96 + 96), "URLQueryValue");
  *(v96 + 110) = -4864;
  *(v96 + 120) = v93;
  *(v96 + 128) = 0x73616C436D657449;
  v97 = v442;
  v98 = v443;
  *(v96 + 136) = v449;
  *(v96 + 144) = v98;
  *(v96 + 152) = v97;
  *(v96 + 168) = v93;
  *(v96 + 176) = 0x6574656D61726150;
  *(v96 + 184) = 0xEB00000000495572;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1CA981370;
  v100 = v432;
  *(v99 + 32) = v432;
  *(v99 + 40) = 0xD000000000000014;
  *(v99 + 48) = v437;
  v101 = v434;
  *(v99 + 64) = v95;
  *(v99 + 72) = v101;
  v416 = v100;
  v428 = v101;
  v102 = sub_1CA94C438();
  v432 = v103;
  v433 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  v434 = &v410;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v410 - v458;
  sub_1CA948D98();
  v108 = v457;
  v109 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v410 - v456;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 80) = sub_1CA2F9F14(v433, v432, v104, v106, 0, 0, v107, v110);
  v112 = v453;
  *(v99 + 104) = v453;
  *(v99 + 112) = @"Placeholder";
  v426 = @"Placeholder";
  v113 = sub_1CA94C438();
  v432 = v114;
  v433 = v113;
  v115 = sub_1CA94C438();
  v430 = v116;
  v434 = &v410;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v410 - v458;
  sub_1CA948D98();
  v118 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v410 - v456;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 120) = sub_1CA2F9F14(v433, v432, v115, v430, 0, 0, v117, v119);
  *(v99 + 144) = v112;
  *(v99 + 152) = @"RequiredResources";
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v121 = swift_allocObject();
  *(v121 + 16) = v441;
  *&v420 = 0x80000001CA993590;
  v430 = @"RequiredResources";
  v122 = MEMORY[0x1E69E6158];
  *(v121 + 32) = sub_1CA94C1E8();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v433 = v123;
  *(v99 + 160) = v121;
  v124 = v436;
  *(v99 + 184) = v123;
  *(v99 + 192) = v124;
  *(v99 + 224) = v122;
  *(v99 + 200) = 0x7468676952;
  *(v99 + 208) = 0xE500000000000000;
  v417 = v124;
  sub_1CA94C1E8();
  v125 = v450;
  *(v96 + 192) = sub_1CA2F864C();
  *(v96 + 216) = v125;
  *(v96 + 224) = 0x654B656372756F53;
  *(v96 + 232) = v446;
  *(v96 + 240) = 0xD000000000000014;
  *(v96 + 248) = 0x80000001CA9ACAD0;
  *(v96 + 264) = v122;
  *(v96 + 272) = 0x7954656372756F53;
  *(v96 + 312) = v122;
  *(v96 + 280) = 0xEA00000000006570;
  *(v96 + 288) = 0x6574656D61726150;
  *(v96 + 296) = 0xE900000000000072;
  v451[6] = sub_1CA94C1E8();
  v126 = swift_allocObject();
  v429 = xmmword_1CA981400;
  *(v126 + 16) = xmmword_1CA981400;
  v419 = 0x80000001CA9ACAF0;
  v127 = v443;
  *(v126 + 32) = v443;
  *(v126 + 40) = 0x80000001CA9ACAF0;
  *(v126 + 48) = 0xD00000000000001ALL;
  *(v126 + 56) = 0x80000001CA9ACB10;
  *(v126 + 72) = v122;
  strcpy((v126 + 80), "DestinationKey");
  *(v126 + 95) = -18;
  *(v126 + 96) = 1852139639;
  *(v126 + 104) = 0xE400000000000000;
  *(v126 + 120) = v122;
  *(v126 + 128) = 0x74616E6974736544;
  *(v126 + 136) = 0xEF657079546E6F69;
  strcpy((v126 + 144), "URLQueryValue");
  *(v126 + 158) = -4864;
  *(v126 + 168) = v122;
  *(v126 + 176) = 0x73616C436D657449;
  *(v126 + 184) = v449;
  *(v126 + 192) = v127;
  *(v126 + 200) = v442;
  *(v126 + 216) = v122;
  *(v126 + 224) = 0x6574656D61726150;
  *(v126 + 232) = 0xEB00000000495572;
  v128 = swift_allocObject();
  *(v128 + 16) = v440;
  v418 = 0xD000000000000016;
  v129 = v416;
  *(v128 + 32) = v416;
  *(v128 + 40) = 0xD000000000000016;
  *(v128 + 48) = 0x80000001CA99C4A0;
  *(v128 + 64) = v122;
  *(v128 + 72) = @"DisallowedVariableTypes";
  v130 = v128;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v432 = v131;
  v427 = v130;
  v130[2].data = &unk_1F49F71D0;
  v130[3].info = v131;
  v130[3].data = @"Items";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v436 = swift_allocObject();
  *&v436->data = xmmword_1CA981560;
  v416 = v129;
  v132 = @"DisallowedVariableTypes";
  v133 = @"Items";
  v134 = sub_1CA94C438();
  v413 = v135;
  v414 = v134;
  v136 = sub_1CA94C438();
  v412 = v137;
  v415 = &v410;
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v410 - v458;
  sub_1CA948D98();
  v139 = v457;
  v140 = [v457 bundleURL];
  v411 = &v410;
  MEMORY[0x1EEE9AC00](v140);
  v141 = v456;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v414, v413, v136, v412, 0, 0, v138, &v410 - v141);
  v436[1].isa = v143;
  v144 = sub_1CA94C438();
  v413 = v145;
  v414 = v144;
  v146 = sub_1CA94C438();
  v412 = v147;
  v415 = &v410;
  MEMORY[0x1EEE9AC00](v146);
  v148 = v458;
  sub_1CA948D98();
  v149 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v414, v413, v146, v412, 0, 0, &v410 - v148, &v410 - v141);
  v152 = v436;
  v436[1].info = v151;
  v153 = sub_1CA94C438();
  v413 = v154;
  v414 = v153;
  v155 = sub_1CA94C438();
  v412 = v156;
  v415 = &v410;
  MEMORY[0x1EEE9AC00](v155);
  sub_1CA948D98();
  v157 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v410 - v456;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v152[1].data = sub_1CA2F9F14(v414, v413, v155, v412, 0, 0, &v410 - v148, v158);
  v160 = sub_1CA94C438();
  v413 = v161;
  v414 = v160;
  v162 = sub_1CA94C438();
  v412 = v163;
  v415 = &v410;
  MEMORY[0x1EEE9AC00](v162);
  sub_1CA948D98();
  v164 = v457;
  v165 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = v456;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v414, v413, v162, v412, 0, 0, &v410 - v148, &v410 - v166);
  v436[1].length = v168;
  v169 = sub_1CA94C438();
  v413 = v170;
  v414 = v169;
  v171 = sub_1CA94C438();
  v412 = v172;
  v415 = &v410;
  MEMORY[0x1EEE9AC00](v171);
  v173 = &v410 - v458;
  sub_1CA948D98();
  v174 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v414, v413, v171, v412, 0, 0, v173, &v410 - v166);
  v177 = v436;
  v436[2].isa = v176;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v180 = v427;
  v179 = v428;
  v427[3].length = v177;
  v180[4].data = v178;
  v180[4].length = v179;
  v415 = v179;
  v181 = sub_1CA94C438();
  v428 = v182;
  v183 = sub_1CA94C438();
  v185 = v184;
  v436 = &v410;
  MEMORY[0x1EEE9AC00](v183);
  v186 = &v410 - v458;
  sub_1CA948D98();
  v187 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v181, v428, v183, v185, 0, 0, v186, &v410 - v166);
  v180[5].length = v453;
  v180[5].isa = v189;
  sub_1CA94C1E8();
  v190 = v450;
  *(v126 + 240) = sub_1CA2F864C();
  *(v126 + 264) = v190;
  *(v126 + 272) = 0x654B656372756F53;
  *(v126 + 280) = v446;
  *(v126 + 288) = 0x685773676E696874;
  v436 = 0xEA00000000006E65;
  *(v126 + 296) = 0xEA00000000006E65;
  v191 = MEMORY[0x1E69E6158];
  *(v126 + 312) = MEMORY[0x1E69E6158];
  *(v126 + 320) = 0x7954656372756F53;
  *(v126 + 360) = v191;
  *(v126 + 328) = 0xEA00000000006570;
  *(v126 + 336) = 0x6574656D61726150;
  *(v126 + 344) = 0xE900000000000072;
  v192 = v191;
  v451[7] = sub_1CA94C1E8();
  v193 = swift_allocObject();
  *(v193 + 16) = v440;
  *(v193 + 32) = 0x73616C436D657449;
  v428 = 0x80000001CA993AC0;
  v194 = v439;
  *(v193 + 40) = v449;
  *(v193 + 48) = v194;
  *(v193 + 56) = 0x80000001CA993AC0;
  *(v193 + 72) = v192;
  *(v193 + 80) = 0x6574656D61726150;
  *(v193 + 88) = 0xEB00000000495572;
  v195 = swift_allocObject();
  *(v195 + 16) = v429;
  *(v195 + 64) = v192;
  v427 = 0x80000001CA9AB710;
  v196 = v416;
  *(v195 + 32) = v416;
  *(v195 + 40) = 0xD000000000000014;
  *(v195 + 48) = 0x80000001CA9AB710;
  v414 = v196;
  *(v195 + 72) = sub_1CA94C368();
  *(v195 + 80) = 1702125892;
  *(v195 + 88) = 0xE400000000000000;
  v197 = v415;
  *(v195 + 104) = v192;
  *(v195 + 112) = v197;
  v413 = v197;
  v415 = sub_1CA94C438();
  v412 = v198;
  v411 = sub_1CA94C438();
  v200 = v199;
  v416 = &v410;
  MEMORY[0x1EEE9AC00](v411);
  v201 = &v410 - v458;
  sub_1CA948D98();
  v202 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v410 - v456;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v195 + 120) = sub_1CA2F9F14(v415, v412, v411, v200, 0, 0, v201, v203);
  v205 = v453;
  v206 = v426;
  *(v195 + 144) = v453;
  *(v195 + 152) = v206;
  v416 = v206;
  v415 = sub_1CA94C438();
  v412 = v207;
  v208 = sub_1CA94C438();
  v210 = v209;
  v426 = &v410;
  MEMORY[0x1EEE9AC00](v208);
  v211 = &v410 - v458;
  sub_1CA948D98();
  v212 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v410 - v456;
  sub_1CA948B68();

  v214 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v195 + 160) = sub_1CA2F9F14(v415, v412, v208, v210, 0, 0, v211, v213);
  v215 = v430;
  *(v195 + 184) = v205;
  *(v195 + 192) = v215;
  v216 = swift_allocObject();
  *(v216 + 16) = v441;
  v217 = MEMORY[0x1E69E6158];
  *(v216 + 32) = sub_1CA94C1E8();
  *(v195 + 200) = v216;
  *(v195 + 224) = v433;
  *(v195 + 232) = @"ResultType";
  *(v195 + 240) = 0x676E69727453;
  *(v195 + 248) = 0xE600000000000000;
  v218 = v217;
  *(v195 + 264) = v217;
  v219 = v417;
  *(v195 + 304) = v218;
  v220 = v218;
  *(v195 + 272) = v219;
  *(v195 + 280) = 0x7468676952;
  *(v195 + 288) = 0xE500000000000000;
  v221 = @"ResultType";
  v415 = v219;
  v426 = v221;
  sub_1CA94C1E8();
  v222 = v450;
  *(v193 + 96) = sub_1CA2F864C();
  *(v193 + 120) = v222;
  *(v193 + 128) = 0x654B656372756F53;
  *(v193 + 136) = v446;
  *(v193 + 144) = 0xD000000000000014;
  *(v193 + 152) = 0x80000001CA9ACC50;
  *(v193 + 168) = v220;
  *(v193 + 176) = 0x7954656372756F53;
  *(v193 + 216) = v220;
  *(v193 + 184) = 0xEA00000000006570;
  *(v193 + 192) = 0x6574656D61726150;
  *(v193 + 200) = 0xE900000000000072;
  v451[8] = sub_1CA94C1E8();
  v223 = swift_allocObject();
  *(v223 + 16) = v440;
  *(v223 + 32) = 0x73616C436D657449;
  v224 = v439;
  *(v223 + 40) = v449;
  *(v223 + 48) = v224;
  *(v223 + 56) = v428;
  *(v223 + 72) = v220;
  *(v223 + 80) = 0x6574656D61726150;
  *(v223 + 88) = 0xEB00000000495572;
  v225 = swift_allocObject();
  *(v225 + 16) = v429;
  *(v225 + 64) = v220;
  v226 = v414;
  *(v225 + 32) = v414;
  *(v225 + 40) = 0xD000000000000014;
  *(v225 + 48) = v427;
  *&v429 = v226;
  *(v225 + 72) = sub_1CA94C368();
  *(v225 + 80) = 1701669204;
  *(v225 + 88) = 0xE400000000000000;
  v227 = v413;
  *(v225 + 104) = v220;
  *(v225 + 112) = v227;
  v417 = v227;
  v228 = sub_1CA94C438();
  v412 = v229;
  v413 = v228;
  v230 = sub_1CA94C438();
  v411 = v231;
  v414 = &v410;
  MEMORY[0x1EEE9AC00](v230);
  v232 = v458;
  sub_1CA948D98();
  v233 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v410 - v456;
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v225 + 120) = sub_1CA2F9F14(v413, v412, v230, v411, 0, 0, &v410 - v232, v234);
  v236 = v453;
  v237 = v416;
  *(v225 + 144) = v453;
  *(v225 + 152) = v237;
  v416 = v237;
  v238 = sub_1CA94C438();
  v412 = v239;
  v413 = v238;
  v240 = sub_1CA94C438();
  v242 = v241;
  v414 = &v410;
  MEMORY[0x1EEE9AC00](v240);
  v243 = &v410 - v232;
  sub_1CA948D98();
  v244 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v244);
  v245 = &v410 - v456;
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v225 + 160) = sub_1CA2F9F14(v413, v412, v240, v242, 0, 0, v243, v245);
  v247 = v430;
  *(v225 + 184) = v236;
  *(v225 + 192) = v247;
  v248 = swift_allocObject();
  *(v248 + 16) = v441;
  v249 = swift_allocObject();
  *(v249 + 16) = v438;
  strcpy((v249 + 32), "WFParameterKey");
  *(v249 + 47) = -18;
  *(v249 + 48) = 0x685773676E696874;
  *(v249 + 56) = v436;
  v250 = MEMORY[0x1E69E6158];
  v251 = v439;
  *(v249 + 72) = MEMORY[0x1E69E6158];
  *(v249 + 80) = v251;
  *(v249 + 88) = 0x80000001CA9A2F30;
  *(v249 + 96) = &unk_1F49F7280;
  *(v249 + 120) = v432;
  *(v249 + 128) = 0x72756F7365524657;
  *(v249 + 168) = v250;
  *(v249 + 136) = 0xEF7373616C436563;
  *(v249 + 144) = 0xD00000000000001BLL;
  *(v249 + 152) = v420;
  *(v248 + 32) = sub_1CA94C1E8();
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v436 = v252;
  *(v225 + 200) = v248;
  v253 = v426;
  *(v225 + 224) = v252;
  *(v225 + 232) = v253;
  *(v225 + 240) = 0x676E69727453;
  *(v225 + 248) = 0xE600000000000000;
  v254 = v415;
  *(v225 + 264) = v250;
  *(v225 + 272) = v254;
  *(v225 + 304) = v250;
  *(v225 + 280) = 0x7468676952;
  *(v225 + 288) = 0xE500000000000000;
  v430 = v254;
  sub_1CA94C1E8();
  v255 = v450;
  *(v223 + 96) = sub_1CA2F864C();
  *(v223 + 120) = v255;
  *(v223 + 128) = 0x654B656372756F53;
  v256 = v418;
  *(v223 + 136) = v446;
  *(v223 + 144) = v256;
  *(v223 + 152) = 0x80000001CA9ACCD0;
  *(v223 + 168) = v250;
  *(v223 + 176) = 0x7954656372756F53;
  *(v223 + 216) = v250;
  *(v223 + 184) = 0xEA00000000006570;
  *(v223 + 192) = 0x6574656D61726150;
  *(v223 + 200) = 0xE900000000000072;
  v451[9] = sub_1CA94C1E8();
  v257 = swift_allocObject();
  v420 = xmmword_1CA981300;
  *(v257 + 16) = xmmword_1CA981300;
  v258 = v419;
  *(v257 + 32) = v443;
  *(v257 + 40) = v258;
  *(v257 + 48) = 0xD000000000000014;
  *(v257 + 56) = 0x80000001CA9ACCF0;
  *(v257 + 72) = v250;
  *(v257 + 80) = 0x6D726F4665746144;
  *(v257 + 88) = 0xEA00000000007461;
  *(v257 + 96) = 0x2D4D4D2D79797979;
  *(v257 + 104) = 0xEA00000000006464;
  *(v257 + 120) = v250;
  strcpy((v257 + 128), "DestinationKey");
  *(v257 + 143) = -18;
  *(v257 + 144) = 0x65746144657564;
  *(v257 + 152) = 0xE700000000000000;
  *(v257 + 168) = v250;
  *(v257 + 176) = 0x74616E6974736544;
  *(v257 + 184) = 0xEF657079546E6F69;
  strcpy((v257 + 192), "URLQueryValue");
  *(v257 + 206) = -4864;
  *(v257 + 216) = v250;
  *(v257 + 224) = 0x73616C436D657449;
  *(v257 + 232) = v449;
  *(v257 + 240) = v251;
  *(v257 + 248) = v428;
  *(v257 + 264) = v250;
  *(v257 + 272) = 0x6574656D61726150;
  *(v257 + 280) = 0xEB00000000495572;
  v259 = swift_allocObject();
  *(v259 + 16) = v444;
  *(v259 + 64) = v250;
  v260 = v429;
  *(v259 + 32) = v429;
  *(v259 + 40) = 0xD000000000000014;
  *(v259 + 48) = v427;
  *&v429 = v260;
  *(v259 + 72) = sub_1CA94C368();
  *(v259 + 80) = 1702125892;
  *(v259 + 88) = 0xE400000000000000;
  v261 = v417;
  *(v259 + 104) = v250;
  *(v259 + 112) = v261;
  v428 = v261;
  v427 = sub_1CA94C438();
  v419 = v262;
  v418 = sub_1CA94C438();
  v264 = v263;
  v431 = &v410;
  MEMORY[0x1EEE9AC00](v418);
  v265 = &v410 - v458;
  sub_1CA948D98();
  v266 = v457;
  v267 = [v457 bundleURL];
  v417 = &v410;
  MEMORY[0x1EEE9AC00](v267);
  v268 = v456;
  sub_1CA948B68();

  v269 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v259 + 120) = sub_1CA2F9F14(v427, v419, v418, v264, 0, 0, v265, &v410 - v268);
  v270 = v416;
  *(v259 + 144) = v453;
  *(v259 + 152) = v270;
  v431 = v270;
  v271 = sub_1CA94C438();
  v418 = v272;
  v419 = v271;
  v273 = sub_1CA94C438();
  v417 = v274;
  v427 = &v410;
  MEMORY[0x1EEE9AC00](v273);
  v275 = &v410 - v458;
  sub_1CA948D98();
  v276 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v276);
  sub_1CA948B68();

  v277 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v259 + 160) = sub_1CA2F9F14(v419, v418, v273, v417, 0, 0, v275, &v410 - v268);
  v278 = v426;
  *(v259 + 184) = v453;
  *(v259 + 192) = v278;
  *(v259 + 200) = 0x676E69727453;
  *(v259 + 208) = 0xE600000000000000;
  v279 = MEMORY[0x1E69E6158];
  v280 = v430;
  *(v259 + 224) = MEMORY[0x1E69E6158];
  *(v259 + 232) = v280;
  *(v259 + 264) = v279;
  *(v259 + 240) = 0x7468676952;
  *(v259 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  v281 = v450;
  *(v257 + 288) = sub_1CA2F864C();
  *(v257 + 312) = v281;
  *(v257 + 320) = 0x654B656372756F53;
  *(v257 + 328) = v446;
  strcpy((v257 + 336), "thingsDueDate");
  *(v257 + 350) = -4864;
  *(v257 + 360) = v279;
  *(v257 + 368) = 0x7954656372756F53;
  *(v257 + 408) = v279;
  *(v257 + 376) = 0xEA00000000006570;
  *(v257 + 384) = 0x6574656D61726150;
  *(v257 + 392) = 0xE900000000000072;
  v451[10] = sub_1CA94C1E8();
  v282 = swift_allocObject();
  *(v282 + 16) = v444;
  strcpy((v282 + 32), "DestinationKey");
  *(v282 + 47) = -18;
  *(v282 + 48) = 1936154996;
  *(v282 + 56) = 0xE400000000000000;
  *(v282 + 72) = v279;
  *(v282 + 80) = 0x74616E6974736544;
  *(v282 + 88) = 0xEF657079546E6F69;
  strcpy((v282 + 96), "URLQueryValue");
  *(v282 + 110) = -4864;
  *(v282 + 120) = v279;
  *(v282 + 128) = 0x73616C436D657449;
  v283 = v442;
  v284 = v443;
  *(v282 + 136) = v449;
  *(v282 + 144) = v284;
  *(v282 + 152) = v283;
  *(v282 + 168) = v279;
  *(v282 + 176) = 0x6574656D61726150;
  *(v282 + 184) = 0xEB00000000495572;
  v285 = swift_allocObject();
  *(v285 + 16) = v444;
  *(v285 + 32) = @"AutocapitalizationType";
  *(v285 + 40) = 1701736270;
  *(v285 + 48) = 0xE400000000000000;
  v286 = v429;
  *(v285 + 64) = v279;
  *(v285 + 72) = v286;
  *(v285 + 80) = 0xD000000000000014;
  *(v285 + 88) = v437;
  *(v285 + 104) = v279;
  *(v285 + 112) = @"Description";
  v287 = @"Description";
  *&v429 = v286;
  v427 = v287;
  v288 = @"AutocapitalizationType";
  v289 = sub_1CA94C438();
  v418 = v290;
  v419 = v289;
  v291 = sub_1CA94C438();
  v417 = v292;
  v426 = &v410;
  MEMORY[0x1EEE9AC00](v291);
  v293 = v458;
  sub_1CA948D98();
  v294 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v294);
  v295 = v456;
  sub_1CA948B68();

  v296 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v285 + 120) = sub_1CA2F9F14(v419, v418, v291, v417, 0, 0, &v410 - v293, &v410 - v295);
  v297 = v428;
  *(v285 + 144) = v453;
  *(v285 + 152) = v297;
  v428 = v297;
  v298 = sub_1CA94C438();
  v418 = v299;
  v419 = v298;
  v417 = sub_1CA94C438();
  v301 = v300;
  v426 = &v410;
  MEMORY[0x1EEE9AC00](v417);
  v302 = &v410 - v293;
  sub_1CA948D98();
  v303 = v457;
  v304 = [v457 bundleURL];
  v416 = &v410;
  MEMORY[0x1EEE9AC00](v304);
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v285 + 160) = sub_1CA2F9F14(v419, v418, v417, v301, 0, 0, v302, &v410 - v295);
  v306 = v453;
  v307 = v431;
  *(v285 + 184) = v453;
  *(v285 + 192) = v307;
  v308 = sub_1CA94C438();
  v418 = v309;
  v419 = v308;
  v310 = sub_1CA94C438();
  v417 = v311;
  v426 = &v410;
  MEMORY[0x1EEE9AC00](v310);
  v312 = &v410 - v458;
  sub_1CA948D98();
  v313 = [v303 bundleURL];
  MEMORY[0x1EEE9AC00](v313);
  v314 = &v410 - v456;
  sub_1CA948B68();

  v315 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v285 + 200) = sub_1CA2F9F14(v419, v418, v310, v417, 0, 0, v312, v314);
  v316 = v430;
  *(v285 + 224) = v306;
  *(v285 + 232) = v316;
  v317 = MEMORY[0x1E69E6158];
  *(v285 + 264) = MEMORY[0x1E69E6158];
  *(v285 + 240) = 0x7468676952;
  *(v285 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  v318 = v450;
  *(v282 + 192) = sub_1CA2F864C();
  *(v282 + 216) = v318;
  *(v282 + 224) = 0x654B656372756F53;
  *(v282 + 232) = v446;
  *(v282 + 240) = 0x615473676E696874;
  *(v282 + 248) = 0xEA00000000007367;
  *(v282 + 264) = v317;
  *(v282 + 272) = 0x7954656372756F53;
  *(v282 + 312) = v317;
  *(v282 + 280) = 0xEA00000000006570;
  *(v282 + 288) = 0x6574656D61726150;
  *(v282 + 296) = 0xE900000000000072;
  v451[11] = sub_1CA94C1E8();
  v319 = swift_allocObject();
  *(v319 + 16) = v420;
  strcpy((v319 + 32), "DestinationKey");
  *(v319 + 47) = -18;
  *(v319 + 48) = 0xD000000000000010;
  *(v319 + 56) = 0x80000001CA9ACE20;
  v430 = 0xD000000000000010;
  *(v319 + 72) = v317;
  *(v319 + 80) = 0x74616E6974736544;
  *(v319 + 88) = 0xEF657079546E6F69;
  strcpy((v319 + 96), "URLQueryValue");
  *(v319 + 110) = -4864;
  *(v319 + 120) = v317;
  *(v319 + 128) = 0x73616C436D657449;
  *(v319 + 136) = v449;
  *(v319 + 144) = 0xD000000000000014;
  *(v319 + 152) = 0x80000001CA993A60;
  *(v319 + 168) = v317;
  *(v319 + 176) = 0xD000000000000010;
  *(v319 + 184) = 0x80000001CA9A8C50;
  *(v319 + 192) = 1;
  *(v319 + 216) = MEMORY[0x1E69E6370];
  *(v319 + 224) = 0x6574656D61726150;
  *(v319 + 232) = 0xEB00000000495572;
  v320 = swift_allocObject();
  *(v320 + 16) = v438;
  v321 = v439;
  *(v320 + 32) = v429;
  *(v320 + 40) = v321;
  *(v320 + 48) = 0x80000001CA99E620;
  v322 = v427;
  *(v320 + 64) = v317;
  *(v320 + 72) = v322;
  *&v438 = sub_1CA94C438();
  v427 = v323;
  v426 = sub_1CA94C438();
  v325 = v324;
  v439 = &v410;
  MEMORY[0x1EEE9AC00](v426);
  v326 = &v410 - v458;
  sub_1CA948D98();
  v327 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v327);
  v328 = v456;
  sub_1CA948B68();

  v329 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v320 + 80) = sub_1CA2F9F14(v438, v427, v426, v325, 0, 0, v326, &v410 - v328);
  v330 = v453;
  v331 = v428;
  *(v320 + 104) = v453;
  *(v320 + 112) = v331;
  *&v438 = sub_1CA94C438();
  v427 = v332;
  v333 = sub_1CA94C438();
  v426 = v334;
  v439 = &v410;
  MEMORY[0x1EEE9AC00](v333);
  v335 = &v410 - v458;
  sub_1CA948D98();
  v336 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v336);
  sub_1CA948B68();

  v337 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v338 = sub_1CA2F9F14(v438, v427, v333, v426, 0, 0, v335, &v410 - v328);
  *(v320 + 144) = v330;
  *(v320 + 120) = v338;
  sub_1CA94C1E8();
  v339 = v450;
  *(v319 + 240) = sub_1CA2F864C();
  *(v319 + 264) = v339;
  *(v319 + 272) = 0x654B656372756F53;
  *(v319 + 280) = v446;
  *(v319 + 288) = 0xD000000000000014;
  *(v319 + 296) = 0x80000001CA9ACEC0;
  v340 = MEMORY[0x1E69E6158];
  *(v319 + 312) = MEMORY[0x1E69E6158];
  *(v319 + 320) = 0x7954656372756F53;
  *(v319 + 328) = 0xEA00000000006570;
  *(v319 + 336) = 0x6574656D61726150;
  *(v319 + 344) = 0xE900000000000072;
  *(v319 + 360) = v340;
  strcpy((v319 + 368), "ValueMapping");
  *(v319 + 381) = 0;
  *(v319 + 382) = -5120;
  v341 = v340;
  v342 = sub_1CA94C1E8();
  *(v319 + 408) = v421;
  *(v319 + 384) = v342;
  v451[12] = sub_1CA94C1E8();
  v343 = swift_allocObject();
  *(v343 + 16) = v444;
  strcpy((v343 + 32), "DestinationKey");
  *(v343 + 47) = -18;
  *(v343 + 48) = 0x7365746F6ELL;
  *(v343 + 56) = 0xE500000000000000;
  *(v343 + 72) = v341;
  *(v343 + 80) = 0x74616E6974736544;
  *(v343 + 88) = 0xEF657079546E6F69;
  strcpy((v343 + 96), "URLQueryValue");
  *(v343 + 110) = -4864;
  *(v343 + 120) = v341;
  *(v343 + 128) = 0x73616C436D657449;
  v344 = v442;
  v345 = v443;
  *(v343 + 136) = v449;
  *(v343 + 144) = v345;
  *(v343 + 152) = v344;
  *(v343 + 168) = v341;
  *(v343 + 176) = 0x6574656D61726150;
  v346 = v341;
  *(v343 + 184) = 0xEB00000000495572;
  v347 = swift_allocObject();
  *(v347 + 16) = v440;
  *(v347 + 32) = v429;
  *(v347 + 40) = 0xD000000000000014;
  *(v347 + 48) = v437;
  v348 = v428;
  *(v347 + 64) = v346;
  *(v347 + 72) = v348;
  v449 = sub_1CA94C438();
  v445 = v349;
  v350 = sub_1CA94C438();
  *&v444 = v351;
  v452 = &v410;
  MEMORY[0x1EEE9AC00](v350);
  v352 = &v410 - v458;
  sub_1CA948D98();
  v353 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v353);
  v354 = &v410 - v456;
  sub_1CA948B68();

  v355 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v356 = sub_1CA2F9F14(v449, v445, v350, v444, 0, 0, v352, v354);
  v357 = v453;
  *(v347 + 80) = v356;
  *(v347 + 104) = v357;
  *(v347 + 112) = @"Multiline";
  *(v347 + 120) = 1;
  v358 = v431;
  *(v347 + 144) = MEMORY[0x1E69E6370];
  *(v347 + 152) = v358;
  v359 = @"Multiline";
  v449 = sub_1CA94C438();
  v445 = v360;
  v361 = sub_1CA94C438();
  *&v444 = v362;
  v452 = &v410;
  MEMORY[0x1EEE9AC00](v361);
  v363 = &v410 - v458;
  sub_1CA948D98();
  v364 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v364);
  v365 = &v410 - v456;
  sub_1CA948B68();

  v366 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v367 = sub_1CA2F9F14(v449, v445, v361, v444, 0, 0, v363, v365);
  *(v347 + 184) = v357;
  *(v347 + 160) = v367;
  sub_1CA94C1E8();
  v368 = v450;
  *(v343 + 192) = sub_1CA2F864C();
  *(v343 + 216) = v368;
  *(v343 + 224) = 0x654B656372756F53;
  *(v343 + 232) = v446;
  *(v343 + 240) = 0x6F4E73676E696874;
  *(v343 + 248) = 0xEA00000000006574;
  v369 = MEMORY[0x1E69E6158];
  *(v343 + 264) = MEMORY[0x1E69E6158];
  *(v343 + 272) = 0x7954656372756F53;
  *(v343 + 312) = v369;
  *(v343 + 280) = 0xEA00000000006570;
  *(v343 + 288) = 0x6574656D61726150;
  *(v343 + 296) = 0xE900000000000072;
  v370 = sub_1CA94C1E8();
  v371 = v451;
  v451[13] = v370;
  v372 = v435;
  *(v435 + 288) = v371;
  *(v372 + 312) = v436;
  *(v372 + 320) = 1701667150;
  *(v372 + 328) = 0xE400000000000000;
  v373 = sub_1CA94C438();
  v375 = v374;
  v376 = sub_1CA94C438();
  v378 = v377;
  v452 = &v410;
  MEMORY[0x1EEE9AC00](v376);
  v379 = &v410 - v458;
  sub_1CA948D98();
  v380 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v380);
  v381 = &v410 - v456;
  sub_1CA948B68();

  v382 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v383 = sub_1CA2F9F14(v373, v375, v376, v378, 0, 0, v379, v381);
  v384 = v453;
  *(v372 + 336) = v383;
  *(v372 + 360) = v384;
  strcpy((v372 + 368), "OutputMapping");
  *(v372 + 382) = -4864;
  v385 = swift_allocObject();
  *(v385 + 16) = v441;
  *(v385 + 32) = sub_1CA94C1E8();
  *(v372 + 384) = v385;
  v386 = v430;
  *(v372 + 408) = v433;
  *(v372 + 416) = v386;
  *(v372 + 424) = 0x80000001CA9A8F60;
  v387 = sub_1CA94C438();
  v389 = v388;
  v390 = sub_1CA94C438();
  v392 = v391;
  v453 = &v410;
  MEMORY[0x1EEE9AC00](v390);
  v393 = &v410 - v458;
  sub_1CA948D98();
  v394 = [v457 bundleURL];
  MEMORY[0x1EEE9AC00](v394);
  v395 = &v410 - v456;
  sub_1CA948B68();

  v396 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v397 = sub_1CA2F9F14(v387, v389, v390, v392, 0, 0, v393, v395);
  v398 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v372 + 456) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v372 + 432) = v398;
  v399 = MEMORY[0x1E69E6158];
  v400 = sub_1CA94C1E8();
  v401 = v423;
  *(v423 + 32) = v400;
  v402 = v424;
  *(v424 + 48) = v401;
  *(v402 + 72) = v436;
  strcpy((v402 + 80), "Capabilities");
  *(v402 + 93) = 0;
  *(v402 + 94) = -5120;
  *(v402 + 96) = &unk_1F49F73D0;
  *(v402 + 120) = v432;
  *(v402 + 128) = 0x656D65686353;
  *(v402 + 168) = v399;
  *(v402 + 136) = 0xE600000000000000;
  *(v402 + 144) = 0x73676E696874;
  *(v402 + 152) = 0xE600000000000000;
  v403 = sub_1CA94C1E8();
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v405 = v425;
  *(v425 + 32) = v403;
  v405[11] = v399;
  v405[7] = v404;
  v405[8] = 0xD000000000000017;
  v405[9] = 0x80000001CA9ACFD0;
  v406 = v405;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v408 = v422;
  *(v422 + 216) = v407;
  *(v408 + 192) = v406;
  return sub_1CA94C1E8();
}