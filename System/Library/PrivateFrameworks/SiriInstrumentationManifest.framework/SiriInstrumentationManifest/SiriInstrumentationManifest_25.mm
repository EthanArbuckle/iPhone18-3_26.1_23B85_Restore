uint64_t sub_2672C946C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C94D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationEndPointCancel.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDictationEndPointType(0);
  sub_2672C9864(&qword_2800FA040, type metadata accessor for SISchemaDictationEndPointType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267491D50);
  return v5(v7, 0);
}

uint64_t sub_2672C9758(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C97BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672C9864(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672C98AC()
{
  result = qword_2800F9BA8;
  if (!qword_2800F9BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9BA8);
  }

  return result;
}

uint64_t static SISchemaDictationEndPointStop.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDictationEndPointType(0);
  sub_2672C9BE8(&qword_2800FA040, type metadata accessor for SISchemaDictationEndPointType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267491D50);
  return v5(v7, 0);
}

uint64_t sub_2672C9ADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C9B40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672C9BE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672C9C30()
{
  result = qword_2800F9B98;
  if (!qword_2800F9B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B98);
  }

  return result;
}

uint64_t static SISchemaDictationEndPointType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000035, 0x8000000267491DD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v152;

  v1(v177, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267491E10, v11);
  v12 = *v9;
  *v9 = v153;

  v7(v177, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267491E30, v17);
  v18 = *v15;
  *v15 = v154;

  v13(v177, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267491E50, v23);
  v24 = *v21;
  *v21 = v155;

  v19(v177, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x8000000267491E80, v29);
  v30 = *v27;
  *v27 = v156;

  v25(v177, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x8000000267491EB0, v35);
  v36 = *v33;
  *v33 = v157;

  v31(v177, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x8000000267491EE0, v41);
  v42 = *v39;
  *v39 = v158;

  v37(v177, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000029, 0x8000000267491F10, v47);
  v48 = *v45;
  *v45 = v159;

  v43(v177, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x8000000267491F40, v53);
  v54 = *v51;
  *v51 = v160;

  v49(v177, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x8000000267491F70, v59);
  v60 = *v57;
  *v57 = v161;

  v55(v177, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000028, 0x8000000267491FA0, v65);
  v66 = *v63;
  *v63 = v162;

  v61(v177, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000029, 0x8000000267491FD0, v71);
  v72 = *v69;
  *v69 = v163;

  v67(v177, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000027, 0x8000000267492000, v77);
  v78 = *v75;
  *v75 = v164;

  v73(v177, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000039, 0x8000000267492030, v83);
  v84 = *v81;
  *v81 = v165;

  v79(v177, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000035, 0x8000000267492070, v89);
  v90 = *v87;
  *v87 = v166;

  v85(v177, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000003ELL, 0x80000002674920B0, v95);
  v96 = *v93;
  *v93 = v167;

  v91(v177, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000046, 0x80000002674920F0, v101);
  v102 = *v99;
  *v99 = v168;

  v97(v177, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000003ELL, 0x8000000267492140, v107);
  v108 = *v105;
  *v105 = v169;

  v103(v177, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000002BLL, 0x8000000267492180, v113);
  v114 = *v111;
  *v111 = v170;

  v109(v177, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000035, 0x80000002674921B0, v119);
  v120 = *v117;
  *v117 = v171;

  v115(v177, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000028, 0x80000002674921F0, v125);
  v126 = *v123;
  *v123 = v172;

  v121(v177, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001BLL, 0x8000000267492220, v131);
  v132 = *v129;
  *v129 = v173;

  v127(v177, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001ALL, 0x8000000267492240, v137);
  v138 = *v135;
  *v135 = v174;

  v133(v177, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000026, 0x8000000267492260, v143);
  v144 = *v141;
  *v141 = v175;

  v139(v177, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002DLL, 0x8000000267492290, v149);
  v150 = *v147;
  *v147 = v176;

  return v145(v177, 0);
}

uint64_t sub_2672CA844(uint64_t a1)
{
  v2 = sub_2672CA948(&qword_2800FA048);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CA8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CA948(&qword_2800FA048);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CA948(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDictationEndPointType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDictationEuclidAlternativesEventType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267492300, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x8000000267492330, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003CLL, 0x8000000267492360, v17);
  v18 = *v15;
  *v15 = v22;

  v13(v23, 0);
  sub_266ECB128(&unk_287891FD0);
  return sub_26738112C();
}

uint64_t sub_2672CABB4(uint64_t a1)
{
  v2 = sub_2672CACB8(&qword_2800FA058);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CAC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CACB8(&qword_2800FA058);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CACB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDictationEuclidAlternativesEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDictationEuclidSpeechAlternativesType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002DLL, 0x80000002674923E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x8000000267492410, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000048, 0x8000000267492450, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672CAF10(uint64_t a1)
{
  v2 = sub_2672CB014(&qword_2800FA068);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CAF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CB014(&qword_2800FA068);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CB014(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDictationEuclidSpeechAlternativesType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDictationModelSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002DLL, 0x80000002674924D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267492500, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267492520, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672CB270(uint64_t a1)
{
  v2 = sub_2672CB374(&qword_2800FA078);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CB2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CB374(&qword_2800FA078);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CB374(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDictationModelSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDictationTranscriptionMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15[1] = a1;
  v15[0] = sub_26738113C();
  v1 = *(v15[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v15[0]);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDictationModelSource(0);
  sub_2672CB858();
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F69746174636964, 0xEE006C65646F4D6ELL);
  v11(v16, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v15[0]);
  v16[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267492580);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800FA038, 0x277D5A868);
  sub_266ECAF2C(&qword_2800FA030, &qword_2800FA038, 0x277D5A868);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x80000002674925A0);
  return v13(v16, 0);
}

uint64_t sub_2672CB794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672CB7F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672CB858()
{
  result = qword_2800FA070;
  if (!qword_2800FA070)
  {
    type metadata accessor for SISchemaDictationModelSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA070);
  }

  return result;
}

uint64_t static SISchemaDismissalReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v290 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000028, 0x80000002674925F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v290;

  v1(v338, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v291 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267492620, v11);
  v12 = *v9;
  *v9 = v291;

  v7(v338, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v292 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267492640, v17);
  v18 = *v15;
  *v15 = v292;

  v13(v338, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v293 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267492670, v23);
  v24 = *v21;
  *v21 = v293;

  v19(v338, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v294 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x80000002674926A0, v29);
  v30 = *v27;
  *v27 = v294;

  v25(v338, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v295 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674926D0, v35);
  v36 = *v33;
  *v33 = v295;

  v31(v338, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x8000000267492700, v41);
  v42 = *v39;
  *v39 = v296;

  v37(v338, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v297 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x8000000267492730, v47);
  v48 = *v45;
  *v45 = v297;

  v43(v338, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v298 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x8000000267492760, v53);
  v54 = *v51;
  *v51 = v298;

  v49(v338, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v299 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x8000000267492790, v59);
  v60 = *v57;
  *v57 = v299;

  v55(v338, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v300 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002BLL, 0x80000002674927B0, v65);
  v66 = *v63;
  *v63 = v300;

  v61(v338, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v301 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x80000002674927E0, v71);
  v72 = *v69;
  *v69 = v301;

  v67(v338, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v302 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001BLL, 0x8000000267492810, v77);
  v78 = *v75;
  *v75 = v302;

  v73(v338, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v303 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x8000000267492830, v83);
  v84 = *v81;
  *v81 = v303;

  v79(v338, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v304 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001FLL, 0x8000000267492850, v89);
  v90 = *v87;
  *v87 = v304;

  v85(v338, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v305 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ELL, 0x8000000267492870, v95);
  v96 = *v93;
  *v93 = v305;

  v91(v338, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v306 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000024, 0x8000000267492890, v101);
  v102 = *v99;
  *v99 = v306;

  v97(v338, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v307 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000026, 0x80000002674928C0, v107);
  v108 = *v105;
  *v105 = v307;

  v103(v338, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v308 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000027, 0x80000002674928F0, v113);
  v114 = *v111;
  *v111 = v308;

  v109(v338, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v309 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000027, 0x8000000267492920, v119);
  v120 = *v117;
  *v117 = v309;

  v115(v338, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v310 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000024, 0x8000000267492950, v125);
  v126 = *v123;
  *v123 = v310;

  v121(v338, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v311 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000028, 0x8000000267492980, v131);
  v132 = *v129;
  *v129 = v311;

  v127(v338, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v312 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000002ALL, 0x80000002674929B0, v137);
  v138 = *v135;
  *v135 = v312;

  v133(v338, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v313 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000002ALL, 0x80000002674929E0, v143);
  v144 = *v141;
  *v141 = v313;

  v139(v338, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v314 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002ALL, 0x8000000267492A10, v149);
  v150 = *v147;
  *v147 = v314;

  v145(v338, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v315 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000002DLL, 0x8000000267492A40, v155);
  v156 = *v153;
  *v153 = v315;

  v151(v338, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v316 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000002CLL, 0x8000000267492A70, v161);
  v162 = *v159;
  *v159 = v316;

  v157(v338, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v317 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000035, 0x8000000267492AA0, v167);
  v168 = *v165;
  *v165 = v317;

  v163(v338, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v318 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001FLL, 0x8000000267492AE0, v173);
  v174 = *v171;
  *v171 = v318;

  v169(v338, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v319 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000002ELL, 0x8000000267492B00, v179);
  v180 = *v177;
  *v177 = v319;

  v175(v338, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v320 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000032, 0x8000000267492B30, v185);
  v186 = *v183;
  *v183 = v320;

  v181(v338, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v321 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000002BLL, 0x8000000267492B70, v191);
  v192 = *v189;
  *v189 = v321;

  v187(v338, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v322 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000002ALL, 0x8000000267492BA0, v197);
  v198 = *v195;
  *v195 = v322;

  v193(v338, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v323 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000037, 0x8000000267492BD0, v203);
  v204 = *v201;
  *v201 = v323;

  v199(v338, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v324 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000024, 0x8000000267492C10, v209);
  v210 = *v207;
  *v207 = v324;

  v205(v338, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v325 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000020, 0x8000000267492C40, v215);
  v216 = *v213;
  *v213 = v325;

  v211(v338, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v326 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000028, 0x8000000267492C70, v221);
  v222 = *v219;
  *v219 = v326;

  v217(v338, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v327 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000035, 0x8000000267492CA0, v227);
  v228 = *v225;
  *v225 = v327;

  v223(v338, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v328 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000022, 0x8000000267492CE0, v233);
  v234 = *v231;
  *v231 = v328;

  v229(v338, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v329 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000022, 0x8000000267492D10, v239);
  v240 = *v237;
  *v237 = v329;

  v235(v338, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v330 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001DLL, 0x8000000267492D40, v245);
  v246 = *v243;
  *v243 = v330;

  v241(v338, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v331 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000001DLL, 0x8000000267492D60, v251);
  v252 = *v249;
  *v249 = v331;

  v247(v338, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000002ALL, 0x8000000267492D80, v257);
  v258 = *v255;
  *v255 = v332;

  v253(v338, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v333 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000021, 0x8000000267492DB0, v263);
  v264 = *v261;
  *v261 = v333;

  v259(v338, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v334 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(45, 0xD00000000000002FLL, 0x8000000267492DE0, v269);
  v270 = *v267;
  *v267 = v334;

  v265(v338, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v335 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000031, 0x8000000267492E10, v275);
  v276 = *v273;
  *v273 = v335;

  v271(v338, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v336 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000032, 0x8000000267492E50, v281);
  v282 = *v279;
  *v279 = v336;

  v277(v338, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v337 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000021, 0x8000000267492E90, v287);
  v288 = *v285;
  *v285 = v337;

  return v283(v338, 0);
}

uint64_t sub_2672CCF18(uint64_t a1)
{
  v2 = sub_2672CD01C(&qword_2800FA088);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CCF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CD01C(&qword_2800FA088);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CD01C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDismissalReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaEnabledStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a1;
  v130 = sub_26738113C();
  v3 = *(v130 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v130);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v117 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v127 = a2;
  sub_26738119C();
  v132 = *MEMORY[0x277D3E4E8];
  v11 = *(v3 + 104);
  v129 = v3 + 104;
  v131 = v11;
  (v11)(v6);
  v135[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v123 = *(v12 - 8);
  v14 = v123 + 56;
  v13 = *(v123 + 7);
  v133 = v12;
  v13(v10, 0, 1, v12);
  v124 = v14;
  v128 = v13;
  v15 = sub_2673811AC();
  v122 = 0xD000000000000010;
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267492EF0);
  v15(v135, 0);
  v121 = "assistantEnabled";
  v16 = v132;
  v17 = v131;
  v131(v6, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, v122, v121 | 0x8000000000000000);
  v18(v135, 0);
  v122 = "dictationEnabled";
  v19 = v16;
  v20 = v130;
  v17(v6, v16, v130);
  v135[0] = 1;
  sub_26738114C();
  v21 = v128;
  v128(v10, 0, 1, v133);
  v22 = sub_2673811AC();
  v120 = 0xD000000000000015;
  sub_266EC637C(v10, 0xD000000000000015, v122 | 0x8000000000000000);
  v22(v135, 0);
  v23 = v19;
  v24 = v20;
  v131(v6, v23, v20);
  v135[0] = 1;
  sub_26738114C();
  v25 = v133;
  v21(v10, 0, 1, v133);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x4569726953796568, 0xEE0064656C62616ELL);
  v26(v135, 0);
  v122 = "hardwareButtonEnabled";
  v27 = v132;
  v28 = v24;
  v29 = v131;
  v131(v6, v132, v28);
  v135[0] = 1;
  sub_26738114C();
  v21(v10, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, v120, v122 | 0x8000000000000000);
  v30(v135, 0);
  v122 = "assistantOnLockscreen";
  v31 = v27;
  v32 = v130;
  v29(v6, v31, v130);
  v135[0] = 1;
  sub_26738114C();
  v33 = v133;
  v21(v10, 0, 1, v133);
  v34 = sub_2673811AC();
  v119 = 0xD000000000000013;
  sub_266EC637C(v10, 0xD000000000000013, v122 | 0x8000000000000000);
  v34(v135, 0);
  v131(v6, v132, v32);
  v135[0] = 1;
  v126 = v6;
  sub_26738114C();
  v21(v10, 0, 1, v33);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267492F90);
  v35(v135, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v134, 0xD00000000000001ALL, 0x8000000267492F90);
  v38 = *(v123 + 6);
  v123 += 48;
  v121 = v38;
  if (!(v38)(v39, 1, v33))
  {
    sub_266ECB128(&unk_287891FF8);
    sub_26738115C();
  }

  (v37)(v134, 0);
  v36(v135, 0);
  v40 = v126;
  v42 = v130;
  v41 = v131;
  v131(v126, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v43 = v133;
  v128(v10, 0, 1, v133);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0x6B656D6F48736168, 0xEE00656D6F487469);
  v44(v135, 0);
  v41(v40, *MEMORY[0x277D3E508], v42);
  v135[0] = 1;
  sub_26738114C();
  v45 = v128;
  v128(v10, 0, 1, v43);
  v46 = sub_2673811AC();
  v122 = 0xD000000000000012;
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267492FB0);
  v46(v135, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_2672CF178(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v45(v10, 0, 1, v43);
  v47 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x80000002674694C0);
  v47(v135, 0);
  v117 = "shortcutsAvailable";
  v48 = v40;
  v49 = v132;
  v51 = v130;
  v50 = v131;
  v131(v48, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v133);
  v52 = sub_2673811AC();
  v118 = 0xD000000000000011;
  sub_266EC637C(v10, 0xD000000000000011, v117 | 0x8000000000000000);
  v52(v135, 0);
  v50(v126, v49, v51);
  v135[0] = 1;
  sub_26738114C();
  v53 = v133;
  v54 = v128;
  v128(v10, 0, 1, v133);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674697C0);
  v55(v135, 0);
  type metadata accessor for SISchemaVoiceFeedback(0);
  sub_2672CF178(&qword_2800FA090, type metadata accessor for SISchemaVoiceFeedback);
  sub_26738120C();
  v54(v10, 0, 1, v53);
  v56 = sub_2673811AC();
  sub_266EC637C(v10, 0x6565466563696F76, 0xED00006B63616264);
  v56(v135, 0);
  sub_266ECB294(0, &qword_2800F9918, 0x277D5A780);
  sub_266ECAF2C(&qword_2800F9910, &qword_2800F9918, 0x277D5A780);
  sub_26738120C();
  v54(v10, 0, 1, v53);
  v57 = sub_2673811AC();
  sub_266EC637C(v10, v120, 0x8000000267492FF0);
  v57(v135, 0);
  v131(v126, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v54(v10, 0, 1, v53);
  v58 = sub_2673811AC();
  v120 = 0xD000000000000017;
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267468890);
  v58(v135, 0);
  v117 = "announceEnabledStatus";
  sub_266ECB294(0, &qword_2800F98A8, 0x277D5A760);
  sub_266ECAF2C(&qword_2800F98A0, &qword_2800F98A8, 0x277D5A760);
  sub_26738120C();
  v54(v10, 0, 1, v53);
  v59 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v117 | 0x8000000000000000);
  v59(v135, 0);
  sub_266ECB294(0, &qword_2800F1F50, 0x277D5A8C0);
  sub_266ECAF2C(&qword_2800F1F58, &qword_2800F1F50, 0x277D5A8C0);
  sub_26738122C();
  v60 = v53;
  v61 = v128;
  v128(v10, 0, 1, v60);
  v62 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026746B100);
  v62(v135, 0);
  v63 = v126;
  v131(v126, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v61(v10, 0, 1, v60);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026746A220);
  v64(v135, 0);
  sub_266ECB294(0, &qword_2800FA098, 0x277D5A9F0);
  sub_266ECAF2C(&qword_2800FA0A0, &qword_2800FA098, 0x277D5A9F0);
  sub_26738120C();
  v61(v10, 0, 1, v60);
  v65 = sub_2673811AC();
  sub_266EC637C(v10, v120, 0x8000000267493030);
  v65(v135, 0);
  v131(v63, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v61(v10, 0, 1, v60);
  v66 = sub_2673811AC();
  v67 = v118;
  sub_266EC637C(v10, v118, 0x8000000267493050);
  v66(v135, 0);
  v68 = sub_2673811AC();
  v69 = sub_266ECB6CC(v134, v67, 0x8000000267493050);
  if (!(v121)(v70, 1, v60))
  {
    sub_266ECB128(&unk_287892020);
    sub_26738115C();
  }

  (v69)(v134, 0);
  v68(v135, 0);
  v131(v126, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v71 = v133;
  v128(v10, 0, 1, v133);
  v72 = sub_2673811AC();
  v73 = v119;
  sub_266EC637C(v10, v119, 0x8000000267493070);
  v72(v135, 0);
  v74 = sub_2673811AC();
  v75 = sub_266ECB6CC(v134, v73, 0x8000000267493070);
  if (!(v121)(v76, 1, v71))
  {
    sub_266ECB128(&unk_287892048);
    sub_26738115C();
  }

  (v75)(v134, 0);
  v74(v135, 0);
  type metadata accessor for SISchemaHSHangupEnablementState(0);
  sub_2672CF178(&qword_2800FA0A8, type metadata accessor for SISchemaHSHangupEnablementState);
  sub_26738120C();
  v77 = v133;
  v78 = v128;
  v128(v10, 0, 1, v133);
  v79 = sub_2673811AC();
  sub_266EC637C(v10, v120, 0x8000000267493090);
  v79(v135, 0);
  type metadata accessor for SISchemaSiriInCallEnablementState(0);
  sub_2672CF178(&qword_2800FA0B0, type metadata accessor for SISchemaSiriInCallEnablementState);
  sub_26738120C();
  v78(v10, 0, 1, v77);
  v80 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026746B860);
  v80(v135, 0);
  v81 = v126;
  v131(v126, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v78(v10, 0, 1, v77);
  v82 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x800000026746AB70);
  v82(v135, 0);
  v123 = "isAlwaysShowSiriCaptionsEnabled";
  v83 = v132;
  v84 = v130;
  v131(v81, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v78(v10, 0, 1, v133);
  v85 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v123 | 0x8000000000000000);
  v85(v135, 0);
  v123 = "siriPauseTimeState";
  v86 = v83;
  v87 = v84;
  v88 = v131;
  v131(v81, v86, v84);
  v135[0] = 1;
  sub_26738114C();
  v89 = v133;
  v90 = v128;
  v128(v10, 0, 1, v133);
  v91 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v123 | 0x8000000000000000);
  v91(v135, 0);
  v88(v81, *MEMORY[0x277D3E518], v87);
  v135[0] = 1;
  sub_26738114C();
  v90(v10, 0, 1, v89);
  v92 = sub_2673811AC();
  sub_266EC637C(v10, 0x6565705369726973, 0xEE00657461526863);
  v92(v135, 0);
  v123 = "isShowAppsBehindSiriEnabled";
  v88(v126, v132, v87);
  v135[0] = 1;
  sub_26738114C();
  v90(v10, 0, 1, v89);
  v93 = sub_2673811AC();
  sub_266EC637C(v10, v122, v123 | 0x8000000000000000);
  v93(v135, 0);
  sub_266ECB294(0, &qword_2800FA0B8, 0x277D5AA28);
  sub_266ECAF2C(&qword_2800FA0C0, &qword_2800FA0B8, 0x277D5AA28);
  sub_26738120C();
  v90(v10, 0, 1, v89);
  v94 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674930B0);
  v94(v135, 0);
  v95 = v126;
  v96 = v132;
  v98 = v130;
  v97 = v131;
  v131(v126, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v99 = v89;
  v100 = v128;
  v128(v10, 0, 1, v99);
  v101 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, 0x8000000267469A50);
  v101(v135, 0);
  v123 = "SiriEnabledOnCarPlay";
  v97(v95, v96, v98);
  v135[0] = 1;
  sub_26738114C();
  v100(v10, 0, 1, v133);
  v102 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, v123 | 0x8000000000000000);
  v102(v135, 0);
  v103 = v126;
  v97(v126, v96, v98);
  v135[0] = 1;
  sub_26738114C();
  v104 = v133;
  v105 = v128;
  v128(v10, 0, 1, v133);
  v106 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x800000026746A940);
  v106(v135, 0);
  type metadata accessor for SISchemaSiriPauseTimeState(0);
  sub_2672CF178(&qword_2800F6268, type metadata accessor for SISchemaSiriPauseTimeState);
  sub_26738120C();
  v105(v10, 0, 1, v104);
  v107 = sub_2673811AC();
  v108 = v122;
  sub_266EC637C(v10, v122, 0x800000026746A960);
  v107(v135, 0);
  v123 = "iri.odd.ODDOptInProperties";
  v109 = v132;
  v110 = v130;
  v97(v103, v132, v130);
  v135[0] = 1;
  sub_26738114C();
  v128(v10, 0, 1, v133);
  v111 = sub_2673811AC();
  sub_266EC637C(v10, v108, v123 | 0x8000000000000000);
  v111(v135, 0);
  v97(v103, v109, v110);
  v135[0] = 1;
  sub_26738114C();
  v112 = v133;
  v113 = v128;
  v128(v10, 0, 1, v133);
  v114 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x800000026746B120);
  v114(v135, 0);
  type metadata accessor for SISchemaLocationAccessPermission(0);
  sub_2672CF178(&qword_2800FA0C8, type metadata accessor for SISchemaLocationAccessPermission);
  sub_26738120C();
  v113(v10, 0, 1, v112);
  v115 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674697E0);
  return v115(v135, 0);
}

uint64_t sub_2672CF0B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672CF118(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672CF178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SISchemaEndPointType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267493100, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267493130, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267493160, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267493180, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x80000002674931A0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x80000002674931C0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x80000002674931E0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2672CF5E0(uint64_t a1)
{
  v2 = sub_2672CF6E4(&qword_2800FA0D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672CF648(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672CF6E4(&qword_2800FA0D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672CF6E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaEndPointType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaEngagedAccessoryContext.makeTypeManifestAndEnsureFields(in:)()
{
  v30 = sub_26738113C();
  v27 = *(v30 - 8);
  v0 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = v7 + 56;
  v8(v5, 0, 1, v6);
  v28 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F737365636361, 0xEB00000000644979);
  v10(v31, 0);
  type metadata accessor for SISchemaHomeKitAccessoryType(0);
  sub_2672CFE50();
  sub_26738120C();
  v25 = v6;
  v8(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267493230);
  v11(v31, 0);
  v12 = *MEMORY[0x277D3E530];
  v26 = *(v27 + 104);
  v13 = v29;
  v14 = v30;
  v26(v29, v12, v30);
  v31[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F737365636361, 0xEE00646E61724279);
  v15(v31, 0);
  v16 = v26;
  v26(v13, v12, v14);
  v31[0] = 1;
  sub_26738114C();
  v17 = v25;
  v8(v5, 0, 1, v25);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F737365636361, 0xEE006C65646F4D79);
  v18(v31, 0);
  v24 = "homeKitAccessoryType";
  LODWORD(v27) = *MEMORY[0x277D3E4E8];
  v19 = v29;
  v16(v29);
  v31[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v17);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, v24 | 0x8000000000000000);
  v20(v31, 0);
  (v16)(v19, v27, v30);
  v31[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267493270);
  return v21(v31, 0);
}

uint64_t sub_2672CFD8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672CFDF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672CFE50()
{
  result = qword_2800FA0D8;
  if (!qword_2800FA0D8)
  {
    type metadata accessor for SISchemaHomeKitAccessoryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA0D8);
  }

  return result;
}

uint64_t static SISchemaEnhancedVoiceTriggerMode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674932D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x8000000267493300, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x8000000267493340, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267493380, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x80000002674933B0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672D01E4(uint64_t a1)
{
  v2 = sub_2672D02E8(&qword_2800FA0E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D024C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D02E8(&qword_2800FA0E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D02E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaEnhancedVoiceTriggerMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaEnrolledUserState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267493410);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F9F70, 0x277D5A9A0);
  sub_266ECAF2C(&qword_2800F9F78, &qword_2800F9F70, 0x277D5A9A0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E6F73726570, 0xEF6E6F6974617A69);
  return v12(v14, 0);
}

uint64_t sub_2672D066C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D06D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaEuclidConfusionPair.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = *MEMORY[0x277D3E530];
  v19 = *(v1 + 104);
  v17 = v0;
  v19(v4);
  v21[0] = 1;
  sub_26738114C();
  v20 = sub_26738116C();
  v9 = *(*(v20 - 8) + 56);
  v9(v8, 0, 1, v20);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x7A696E676F636572, 0xEF6E656B6F546465);
  v10(v21, 0);
  v11 = v18;
  v12 = v0;
  v13 = v19;
  (v19)(v4, v18, v12);
  v21[0] = 1;
  sub_26738114C();
  v9(v8, 0, 1, v20);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574736567677573, 0xEF736E656B6F5464);
  v14(v21, 0);
  (v13)(v4, v11, v17);
  v21[0] = 1;
  sub_26738114C();
  v9(v8, 0, 1, v20);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574636572726F63, 0xEE006E656B6F5464);
  return v15(v21, 0);
}

uint64_t sub_2672D0B74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D0BD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672D0C3C()
{
  result = qword_2800FA0F8;
  if (!qword_2800FA0F8)
  {
    sub_2672D0C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA0F8);
  }

  return result;
}

unint64_t sub_2672D0C94()
{
  result = qword_2800FA100;
  if (!qword_2800FA100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA100);
  }

  return result;
}

uint64_t static SISchemaEventJoinability.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000010, 0x8000000267493490, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v40;

  v1(v46, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x80000002674934B0, v11);
  v12 = *v9;
  *v9 = v41;

  v7(v46, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x80000002674934E0, v17);
  v18 = *v15;
  *v15 = v42;

  v13(v46, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267493500, v23);
  v24 = *v21;
  *v21 = v43;

  v19(v46, 0);
  v25 = sub_266ECB128(&unk_287892070);
  v27 = v26;
  v28 = sub_2673810FC();
  v30 = v29;
  v31 = *v29;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v30;
  *v30 = 0x8000000000000000;
  sub_266ECD4CC(v25, v27, 3, v32);
  *v30 = v44;
  v28(v46, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = *v34;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267493520, v37);
  v38 = *v35;
  *v35 = v45;

  return v33(v46, 0);
}

uint64_t sub_2672D1050(uint64_t a1)
{
  v2 = sub_2672D1154(&qword_2800FA110);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D1154(&qword_2800FA110);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D1154(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaEventJoinability(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaGenAIAgent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267493580, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x45474149414E4547, 0xEF454E4F4E5F544ELL, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674935A0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x80000002674935C0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672D1428(uint64_t a1)
{
  v2 = sub_2672D152C(&qword_2800FA118);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D1490(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D152C(&qword_2800FA118);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D152C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaGenAIAgent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaGradingOptInStateChange.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_2672D1ED0(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x4974704F76657270, 0xEE0065746174536ELL);
  v13(v29, 0);
  sub_26738120C();
  v25[2] = v12;
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E4974704F77656ELL, 0xED00006574617453);
  v14(v29, 0);
  type metadata accessor for SISchemaGradingOptInStateChangeSource(0);
  sub_2672D1ED0(&qword_2800FA120, type metadata accessor for SISchemaGradingOptInStateChangeSource);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v25[1] = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x656372756F73, 0xE600000000000000);
  v15(v29, 0);
  v16 = *MEMORY[0x277D3E530];
  v17 = v26;
  v27 = *(v27 + 104);
  v18 = v28;
  (v27)(v26, v16, v28);
  v29[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F73616572, 0xE600000000000000);
  v19(v29, 0);
  v20 = v18;
  v21 = v27;
  (v27)(v17, v16, v20);
  v29[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x75426D6574737973, 0xEB00000000646C69);
  v22(v29, 0);
  v21(v17, *MEMORY[0x277D3E540], v28);
  v29[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x8000000267493620);
  v23(v29, 0);
  sub_266ECB128(&unk_287892098);
  return sub_2673811CC();
}

uint64_t sub_2672D1B68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672D1C00()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672D1CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D1D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D1D90(void *a1)
{
  a1[1] = sub_2672D1ED0(&qword_2800FA128, sub_2672D1E3C);
  a1[2] = sub_2672D1ED0(&qword_2800FA130, sub_2672D1E3C);
  result = sub_2672D1ED0(&qword_2800FA138, sub_2672D1E3C);
  a1[3] = result;
  return result;
}

unint64_t sub_2672D1E3C()
{
  result = qword_2800F1F50;
  if (!qword_2800F1F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1F50);
  }

  return result;
}

uint64_t sub_2672D1ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SISchemaGradingOptInStateChangeSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267493680, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674936B0, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674936E0, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267493710, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x8000000267493740, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000025, 0x8000000267493770, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x80000002674937A0, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x80000002674937D0, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000026, 0x8000000267493800, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000029, 0x8000000267493830, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x8000000267493860, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x8000000267493890, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000022, 0x80000002674938C0, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_2672D2598(uint64_t a1)
{
  v2 = sub_2672D269C(&qword_2800FA140);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D2600(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D269C(&qword_2800FA140);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D269C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaGradingOptInStateChangeSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaGridCardSection.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267493920);
  v11(v14, 0);
  type metadata accessor for SISchemaCardSource(0);
  sub_2672D2B14(&qword_2800F9A40, type metadata accessor for SISchemaCardSource);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x72756F5364726163, 0xEA00000000006563);
  return v12(v14, 0);
}

uint64_t sub_2672D2A08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D2A6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D2B14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672D2B5C()
{
  result = qword_2800FA150;
  if (!qword_2800FA150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA150);
  }

  return result;
}

uint64_t static SISchemaHardwareButtonInvocationContext.makeTypeManifestAndEnsureFields(in:)()
{
  v14 = sub_26738113C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriHardwareButtonLongPressBehavior(0);
  sub_2672D2FE8(&qword_2800FA158, type metadata accessor for SISchemaSiriHardwareButtonLongPressBehavior);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x8000000267493980);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E500], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000026, 0x80000002674939A0);
  return v11(v15, 0);
}

uint64_t sub_2672D2EDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D2F40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D2FE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672D3030()
{
  result = qword_2800FA168;
  if (!qword_2800FA168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA168);
  }

  return result;
}

uint64_t static SISchemaHardwareInterfaceIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v20 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18[1] = a1;
  sub_26738119C();
  v19 = "InterfaceIdentifier";
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267493A30);
  return v16(v21, 0);
}

uint64_t sub_2672D33B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D3414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672D3478()
{
  result = qword_2800F9958;
  if (!qword_2800F9958)
  {
    sub_2672D34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9958);
  }

  return result;
}

unint64_t sub_2672D34D0()
{
  result = qword_2800F9950;
  if (!qword_2800F9950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9950);
  }

  return result;
}

uint64_t static SISchemaHomeKitAccessoryResponse.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v29 = sub_26738113C();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaHomeKitAccessoryType(0);
  sub_2672D3AE4(&qword_2800FA0D8, type metadata accessor for SISchemaHomeKitAccessoryType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v26 = *(v10 + 56);
  v27 = v10 + 56;
  v26(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267493230);
  v11(v32, 0);
  v30 = a1;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v31, 0xD000000000000014, 0x8000000267493230);
  v14 = v9;
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_2878920C8);
    sub_26738115C();
  }

  (v13)(v31, 0);
  v12(v32, 0);
  v24 = "ccessoryResponse";
  v16 = *MEMORY[0x277D3E508];
  v25 = *(v2 + 104);
  v17 = v28;
  v18 = v29;
  v25(v28, v16, v29);
  v32[0] = 1;
  sub_26738114C();
  v19 = v26;
  v26(v8, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v24 | 0x8000000000000000);
  v20(v32, 0);
  v25(v17, v16, v18);
  v32[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267493AB0);
  return v21(v32, 0);
}

uint64_t sub_2672D39D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D3A3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D3AE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672D3B2C()
{
  result = qword_2800FA178;
  if (!qword_2800FA178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA178);
  }

  return result;
}

uint64_t static SISchemaHomeKitAccessoryType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v242 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000033, 0x8000000267493B00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v242;

  v1(v282, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v243 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267493B40, v11);
  v12 = *v9;
  *v9 = v243;

  v7(v282, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267493B60, v17);
  v18 = *v15;
  *v15 = v244;

  v13(v282, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v245 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267493B80, v23);
  v24 = *v21;
  *v21 = v245;

  v19(v282, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x8000000267493BA0, v29);
  v30 = *v27;
  *v27 = v246;

  v25(v282, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v247 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x8000000267493BD0, v35);
  v36 = *v33;
  *v33 = v247;

  v31(v282, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267493BF0, v41);
  v42 = *v39;
  *v39 = v248;

  v37(v282, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v249 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x8000000267493C10, v47);
  v48 = *v45;
  *v45 = v249;

  v43(v282, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267493C40, v53);
  v54 = *v51;
  *v51 = v250;

  v49(v282, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001BLL, 0x8000000267493C60, v59);
  v60 = *v57;
  *v57 = v251;

  v55(v282, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x8000000267493C80, v65);
  v66 = *v63;
  *v63 = v252;

  v61(v282, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v253 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000024, 0x8000000267493CB0, v71);
  v72 = *v69;
  *v69 = v253;

  v67(v282, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v254 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000027, 0x8000000267493CE0, v77);
  v78 = *v75;
  *v75 = v254;

  v73(v282, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v255 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000021, 0x8000000267493D10, v83);
  v84 = *v81;
  *v81 = v255;

  v79(v282, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v256 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002BLL, 0x8000000267493D40, v89);
  v90 = *v87;
  *v87 = v256;

  v85(v282, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v257 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001BLL, 0x8000000267493D70, v95);
  v96 = *v93;
  *v93 = v257;

  v91(v282, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v258 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000023, 0x8000000267493D90, v101);
  v102 = *v99;
  *v99 = v258;

  v97(v282, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000024, 0x8000000267493DC0, v107);
  v108 = *v105;
  *v105 = v259;

  v103(v282, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v260 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000025, 0x8000000267493DF0, v113);
  v114 = *v111;
  *v111 = v260;

  v109(v282, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v261 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000025, 0x8000000267493E20, v119);
  v120 = *v117;
  *v117 = v261;

  v115(v282, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v262 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000023, 0x8000000267493E50, v125);
  v126 = *v123;
  *v123 = v262;

  v121(v282, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000022, 0x8000000267493E80, v131);
  v132 = *v129;
  *v129 = v263;

  v127(v282, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000021, 0x8000000267493EB0, v137);
  v138 = *v135;
  *v135 = v264;

  v133(v282, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v265 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000020, 0x8000000267493EE0, v143);
  v144 = *v141;
  *v141 = v265;

  v139(v282, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002ALL, 0x8000000267493F10, v149);
  v150 = *v147;
  *v147 = v266;

  v145(v282, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000024, 0x8000000267493F40, v155);
  v156 = *v153;
  *v153 = v267;

  v151(v282, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001BLL, 0x8000000267493F70, v161);
  v162 = *v159;
  *v159 = v268;

  v157(v282, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000021, 0x8000000267493F90, v167);
  v168 = *v165;
  *v165 = v269;

  v163(v282, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000027, 0x8000000267493FC0, v173);
  v174 = *v171;
  *v171 = v270;

  v169(v282, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000022, 0x8000000267493FF0, v179);
  v180 = *v177;
  *v177 = v271;

  v175(v282, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000002CLL, 0x8000000267494020, v185);
  v186 = *v183;
  *v183 = v272;

  v181(v282, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000019, 0x8000000267494050, v191);
  v192 = *v189;
  *v189 = v273;

  v187(v282, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001CLL, 0x8000000267494070, v197);
  v198 = *v195;
  *v195 = v274;

  v193(v282, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v275 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001DLL, 0x8000000267494090, v203);
  v204 = *v201;
  *v201 = v275;

  v199(v282, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v276 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000023, 0x80000002674940B0, v209);
  v210 = *v207;
  *v207 = v276;

  v205(v282, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v277 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000026, 0x80000002674940E0, v215);
  v216 = *v213;
  *v213 = v277;

  v211(v282, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v278 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001ALL, 0x8000000267494110, v221);
  v222 = *v219;
  *v219 = v278;

  v217(v282, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v279 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001BLL, 0x8000000267494130, v227);
  v228 = *v225;
  *v225 = v279;

  v223(v282, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v280 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001FLL, 0x8000000267494150, v233);
  v234 = *v231;
  *v231 = v280;

  v229(v282, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v281 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000025, 0x8000000267494170, v239);
  v240 = *v237;
  *v237 = v281;

  return v235(v282, 0);
}

uint64_t sub_2672D4DD0(uint64_t a1)
{
  v2 = sub_2672D4ED4(&qword_2800FA180);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D4E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D4ED4(&qword_2800FA180);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D4ED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaHomeKitAccessoryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaHomeKitConfiguration.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674941D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x80000002674941F0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267494210, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672D5130(uint64_t a1)
{
  v2 = sub_2672D5234(&qword_2800FA188);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D5198(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D5234(&qword_2800FA188);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D5234(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaHomeKitConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaHSHangupEnablementState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267494270, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267494290, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x80000002674942C0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674942E0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672D5500(uint64_t a1)
{
  v2 = sub_2672D5604(&qword_2800FA190);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D5568(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D5604(&qword_2800FA190);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D5604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaHSHangupEnablementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaIERouting.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267494340, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v90;

  v1(v104, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267494360, v11);
  v12 = *v9;
  *v9 = v91;

  v7(v104, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267494380, v17);
  v18 = *v15;
  *v15 = v92;

  v13(v104, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x80000002674943A0, v23);
  v24 = *v21;
  *v21 = v93;

  v19(v104, 0);
  v25 = sub_266ECB128(&unk_2878920F0);
  v27 = v26;
  v28 = sub_2673810FC();
  v30 = v29;
  v31 = *v29;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v30;
  *v30 = 0x8000000000000000;
  sub_266ECD4CC(v25, v27, 3, v32);
  *v30 = v94;
  v28(v104, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = *v34;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x80000002674943C0, v37);
  v38 = *v35;
  *v35 = v95;

  v33(v104, 0);
  v39 = sub_266ECB128(&unk_287892118);
  v41 = v40;
  v42 = sub_2673810FC();
  v44 = v43;
  v45 = *v43;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v44;
  *v44 = 0x8000000000000000;
  sub_266ECD4CC(v39, v41, 4, v46);
  *v44 = v96;
  v42(v104, 0);
  v47 = sub_26738111C();
  v49 = v48;
  v50 = *v48;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v49;
  *v49 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000011, 0x80000002674943E0, v51);
  v52 = *v49;
  *v49 = v97;

  v47(v104, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = *v54;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x8000000267494400, v57);
  v58 = *v55;
  *v55 = v98;

  v53(v104, 0);
  v59 = sub_26738111C();
  v61 = v60;
  v62 = *v60;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v61;
  *v61 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000014, 0x8000000267494420, v63);
  v64 = *v61;
  *v61 = v99;

  v59(v104, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = *v66;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000015, 0x8000000267494440, v69);
  v70 = *v67;
  *v67 = v100;

  v65(v104, 0);
  v71 = sub_26738111C();
  v73 = v72;
  v74 = *v72;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v73;
  *v73 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000010, 0x8000000267494460, v75);
  v76 = *v73;
  *v73 = v101;

  v71(v104, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = *v78;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267494480, v81);
  v82 = *v79;
  *v79 = v102;

  v77(v104, 0);
  v83 = sub_26738111C();
  v85 = v84;
  v86 = *v84;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v85;
  *v85 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000017, 0x80000002674944A0, v87);
  v88 = *v85;
  *v85 = v103;

  return v83(v104, 0);
}

uint64_t sub_2672D5D3C(uint64_t a1)
{
  v2 = sub_2672D5E40(&qword_2800FA198);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D5DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D5E40(&qword_2800FA198);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D5E40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaIERouting(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaIFError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v17 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v17[1] = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v18[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E69616D6F64, 0xE600000000000000);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E510], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 1701080931, 0xE400000000000000);
  return v15(v18, 0);
}

uint64_t sub_2672D6198(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D61FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672D6260()
{
  result = qword_2800F09D8;
  if (!qword_2800F09D8)
  {
    sub_2672D62B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F09D8);
  }

  return result;
}

unint64_t sub_2672D62B8()
{
  result = qword_2800F09D0;
  if (!qword_2800F09D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F09D0);
  }

  return result;
}

uint64_t static SISchemaIFOutcome.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267494500, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x8000000267494520, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267494540, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267494560, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267494580, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x80000002674945B0, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x80000002674945E0, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x8000000267494600, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267494630, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x8000000267494650, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ELL, 0x8000000267494670, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000011, 0x8000000267494690, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x80000002674946B0, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_2672D6980(uint64_t a1)
{
  v2 = sub_2672D6A84(&qword_2800FA1A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D69E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D6A84(&qword_2800FA1A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D6A84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaIFOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaIFOutcomeSuccess.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v25 = sub_26738113C();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v26 = a1;
  sub_26738119C();
  v22 = "iri.ift.IFTActionSuccess";
  v10 = *MEMORY[0x277D3E4E8];
  v24 = *(v2 + 104);
  v23 = v10;
  v24(v5);
  v28[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  (v13)(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v22 | 0x8000000000000000);
  v14(v28, 0);
  (v24)(v5, *MEMORY[0x277D3E530], v25);
  v28[0] = 1;
  sub_26738114C();
  v22 = v13;
  (v13)(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267494700);
  v15(v28, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v27, 0xD000000000000016, 0x8000000267494700);
  if (!(*(v12 + 48))(v18, 1, v11))
  {
    sub_266ECB128(&unk_287892140);
    sub_26738115C();
  }

  (v17)(v27, 0);
  v16(v28, 0);
  (v24)(v5, v23, v25);
  v28[0] = 1;
  sub_26738114C();
  (v22)(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x704F646C756F6873, 0xEA00000000006E65);
  return v19(v28, 0);
}

uint64_t sub_2672D6F6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D6FD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672D7034()
{
  result = qword_2800F09B8;
  if (!qword_2800F09B8)
  {
    sub_2672D708C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F09B8);
  }

  return result;
}

unint64_t sub_2672D708C()
{
  result = qword_2800F09B0;
  if (!qword_2800F09B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F09B0);
  }

  return result;
}

uint64_t static SISchemaIFOutcomeToolDisambiguation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v17[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267448840);
  v11(v17, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v16, 0xD000000000000013, 0x8000000267448840);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_287892170);
    sub_26738115C();
  }

  (v13)(v16, 0);
  return v12(v17, 0);
}

uint64_t sub_2672D73DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D7440(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672D74A4()
{
  result = qword_2800F09C8;
  if (!qword_2800F09C8)
  {
    sub_2672D74FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F09C8);
  }

  return result;
}

unint64_t sub_2672D74FC()
{
  result = qword_2800F09C0;
  if (!qword_2800F09C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F09C0);
  }

  return result;
}

uint64_t static SISchemaIFParticipant.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267494790, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x80000002674947B0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x80000002674947D0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x80000002674947F0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267494810, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267494830, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x8000000267494850, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2672D7924(uint64_t a1)
{
  v2 = sub_2672D7A28(&qword_2800FA1A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D798C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D7A28(&qword_2800FA1A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D7A28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaIFParticipant(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaIFPayload.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267494890, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x80000002674948B0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674948D0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x80000002674948F0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267494910, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267494930, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2672D7DD4(uint64_t a1)
{
  v2 = sub_2672D7ED8(&qword_2800FA1B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D7E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D7ED8(&qword_2800FA1B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D7ED8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaIFPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaIngestEnvironment.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaBuildVariant(0);
  sub_2672D8380(&qword_2800F9A00, type metadata accessor for SISchemaBuildVariant);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726156646C697562, 0xEC000000746E6169);
  return v5(v7, 0);
}

uint64_t sub_2672D80E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaBuildVariant(0);
  sub_2672D8380(&qword_2800F9A00, type metadata accessor for SISchemaBuildVariant);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726156646C697562, 0xEC000000746E6169);
  return v5(v7, 0);
}

uint64_t sub_2672D8274(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D82D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D8380(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672D83C8()
{
  result = qword_2800FA1C0;
  if (!qword_2800FA1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA1C0);
  }

  return result;
}

uint64_t static SISchemaIntercomMessageRecorded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E510];
  v12 = *(v3 + 104);
  v23 = v2;
  v24 = v12;
  v12(v6, v11, v2);
  v25[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v22[1] = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F697461727564, 0xEC000000734D6E49);
  v15(v25, 0);
  v16 = *MEMORY[0x277D3E4E8];
  v17 = v2;
  v18 = v24;
  v24(v6, v16, v17);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x796C7065527369, 0xE700000000000000);
  v19(v25, 0);
  v18(v6, v16, v23);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x80000002674949C0);
  v20(v25, 0);
  sub_266ECB128(&unk_2878921A0);
  return sub_2673811CC();
}

uint64_t sub_2672D8814(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D8878(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672D88DC()
{
  result = qword_2800F9C30;
  if (!qword_2800F9C30)
  {
    sub_2672D8934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9C30);
  }

  return result;
}

unint64_t sub_2672D8934()
{
  result = qword_2800F9C28;
  if (!qword_2800F9C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9C28);
  }

  return result;
}

uint64_t static SISchemaInvocation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26738113C();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v50 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v49 - v12;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaInvocationAction(0);
  sub_2672D9894(&qword_2800FA1C8, type metadata accessor for SISchemaInvocationAction);
  v60 = a1;
  sub_26738120C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v57 = v15 + 56;
  v58 = v16;
  v16(v13, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000010, 0x8000000267494A10);
  v17(v62, 0);
  v59 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v61, 0xD000000000000010, 0x8000000267494A10);
  v20 = *(v15 + 48);
  v56 = v14;
  v49[0] = v20;
  v49[1] = v15 + 48;
  if (!v20(v21, 1, v14))
  {
    sub_266ECB128(&unk_2878921C8);
    sub_26738115C();
  }

  (v19)(v61, 0);
  v18(v62, 0);
  type metadata accessor for SISchemaInvocationSource(0);
  sub_2672D9894(&qword_2800F5F88, type metadata accessor for SISchemaInvocationSource);
  sub_26738120C();
  v22 = v56;
  v23 = v58;
  v58(v13, 0, 1, v56);
  v24 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000010, 0x8000000267469520);
  v24(v62, 0);
  sub_266ECB294(0, &qword_2800FA1D0, 0x277D5ACB0);
  sub_266ECAF2C(&qword_2800FA1D8, &qword_2800FA1D0, 0x277D5ACB0);
  sub_26738120C();
  v23(v13, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v13, 0x746E6F4377656976, 0xED000072656E6961);
  v25(v62, 0);
  sub_266ECB294(0, &qword_2800F9A70, 0x277D5A7E8);
  sub_266ECAF2C(&qword_2800F9A68, &qword_2800F9A70, 0x277D5A7E8);
  sub_26738121C();
  v23(v13, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000018, 0x8000000267494A30);
  v26(v62, 0);
  sub_266ECB294(0, &qword_2800FA1E0, 0x277D5ACA8);
  sub_266ECAF2C(&qword_2800FA1E8, &qword_2800FA1E0, 0x277D5ACA8);
  sub_26738121C();
  v23(v13, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000015, 0x8000000267494A50);
  v27(v62, 0);
  sub_266ECB294(0, &qword_2800FA1F0, 0x277D5AA48);
  sub_266ECAF2C(&qword_2800FA1F8, &qword_2800FA1F0, 0x277D5AA48);
  sub_26738121C();
  v23(v13, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000019, 0x8000000267494A70);
  v28(v62, 0);
  sub_266ECB294(0, &qword_2800F9A38, 0x277D5A7F0);
  sub_266ECAF2C(&qword_2800F9A30, &qword_2800F9A38, 0x277D5A7F0);
  sub_26738121C();
  v23(v13, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000019, 0x8000000267494A90);
  v29(v62, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v61, 0xD000000000000019, 0x8000000267494A90);
  if (!(v49[0])(v32, 1, v22))
  {
    sub_266ECB128(&unk_2878921F0);
    sub_26738115C();
  }

  (v31)(v61, 0);
  v30(v62, 0);
  sub_266ECB294(0, &qword_2800FA168, 0x277D5A8D0);
  sub_266ECAF2C(&qword_2800FA160, &qword_2800FA168, 0x277D5A8D0);
  sub_26738121C();
  v33 = v56;
  v34 = v58;
  v58(v13, 0, 1, v56);
  v35 = sub_2673811AC();
  sub_266EC637C(v13, 0xD00000000000001FLL, 0x8000000267494AB0);
  v35(v62, 0);
  sub_266ECB294(0, &qword_2800F99E0, 0x277D5A7C8);
  sub_266ECAF2C(&qword_2800F99D8, &qword_2800F99E0, 0x277D5A7C8);
  sub_26738121C();
  v34(v13, 0, 1, v33);
  v36 = sub_2673811AC();
  sub_266EC637C(v13, 0xD00000000000001DLL, 0x8000000267494AD0);
  v36(v62, 0);
  sub_266ECB294(0, &qword_2800FA200, 0x277D5AA50);
  sub_266ECAF2C(&qword_2800FA208, &qword_2800FA200, 0x277D5AA50);
  sub_26738121C();
  v34(v13, 0, 1, v33);
  v37 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000010, 0x8000000267494AF0);
  v37(v62, 0);
  (*(v51 + 104))(v50, *MEMORY[0x277D3E4E8], v52);
  v62[0] = 1;
  sub_26738114C();
  v34(v13, 0, 1, v33);
  v38 = sub_2673811AC();
  sub_266EC637C(v13, 0x6563697665447369, 0xEE0064656B636F4CLL);
  v38(v62, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v34(v13, 0, 1, v33);
  v39 = sub_2673811AC();
  sub_266EC637C(v13, 0x64496B6E696CLL, 0xE600000000000000);
  v39(v62, 0);
  v40 = v53;
  sub_26738117C();
  v41 = sub_2673811BC();
  v43 = v42;
  v44 = *v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v43 = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v44 = sub_266ECAD54(0, v44[2] + 1, 1, v44);
    *v43 = v44;
  }

  v47 = v44[2];
  v46 = v44[3];
  if (v47 >= v46 >> 1)
  {
    v44 = sub_266ECAD54(v46 > 1, v47 + 1, 1, v44);
    *v43 = v44;
  }

  v44[2] = v47 + 1;
  (*(v54 + 32))(v44 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v47, v40, v55);
  return v41(v62, 0);
}

uint64_t sub_2672D97D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672D9834(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672D9894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SISchemaInvocationAction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002ALL, 0x8000000267494B40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267494B70, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267494B90, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267494BB0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267494BD0, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267494BF0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000020, 0x8000000267494C10, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001CLL, 0x8000000267494C40, v47);
  v48 = *v45;
  *v45 = v57;

  v43(v58, 0);
  sub_266ECB128(&unk_287892220);
  return sub_26738112C();
}

uint64_t sub_2672D9D7C(uint64_t a1)
{
  v2 = sub_2672D9E80(&qword_2800FA210);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672D9DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672D9E80(&qword_2800FA210);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672D9E80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaInvocationAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaInvocationSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v670 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002ALL, 0x8000000267494C90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v670;

  v1(v778, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v671 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267494CC0, v11);
  v12 = *v9;
  *v9 = v671;

  v7(v778, 0);
  v13 = sub_266ECB128(&unk_287892248);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = *v17;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v672 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 1, v20);
  *v18 = v672;
  v16(v778, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = *v22;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v673 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267494CE0, v25);
  v26 = *v23;
  *v23 = v673;

  v21(v778, 0);
  v27 = sub_266ECB128(&unk_287892270);
  v29 = v28;
  v30 = sub_2673810FC();
  v32 = v31;
  v33 = *v31;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v674 = *v32;
  *v32 = 0x8000000000000000;
  sub_266ECD4CC(v27, v29, 2, v34);
  *v32 = v674;
  v30(v778, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = *v36;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v675 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267494D00, v39);
  v40 = *v37;
  *v37 = v675;

  v35(v778, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = *v42;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v676 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x8000000267494D30, v45);
  v46 = *v43;
  *v43 = v676;

  v41(v778, 0);
  v47 = sub_26738111C();
  v49 = v48;
  v50 = *v48;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v677 = *v49;
  *v49 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267494D60, v51);
  v52 = *v49;
  *v49 = v677;

  v47(v778, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = *v54;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v678 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x8000000267494D90, v57);
  v58 = *v55;
  *v55 = v678;

  v53(v778, 0);
  v59 = sub_26738111C();
  v61 = v60;
  v62 = *v60;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v679 = *v61;
  *v61 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x8000000267494DC0, v63);
  v64 = *v61;
  *v61 = v679;

  v59(v778, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = *v66;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v680 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000028, 0x8000000267494DF0, v69);
  v70 = *v67;
  *v67 = v680;

  v65(v778, 0);
  v71 = sub_26738111C();
  v73 = v72;
  v74 = *v72;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v681 = *v73;
  *v73 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000029, 0x8000000267494E20, v75);
  v76 = *v73;
  *v73 = v681;

  v71(v778, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = *v78;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v682 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x8000000267494E50, v81);
  v82 = *v79;
  *v79 = v682;

  v77(v778, 0);
  v83 = sub_26738111C();
  v85 = v84;
  v86 = *v84;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v683 = *v85;
  *v85 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001DLL, 0x8000000267494E70, v87);
  v88 = *v85;
  *v85 = v683;

  v83(v778, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = *v90;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v684 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001CLL, 0x8000000267494E90, v93);
  v94 = *v91;
  *v91 = v684;

  v89(v778, 0);
  v95 = sub_26738111C();
  v97 = v96;
  v98 = *v96;
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v685 = *v97;
  *v97 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000025, 0x8000000267494EB0, v99);
  v100 = *v97;
  *v97 = v685;

  v95(v778, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = *v102;
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v686 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001CLL, 0x8000000267494EE0, v105);
  v106 = *v103;
  *v103 = v686;

  v101(v778, 0);
  v107 = sub_266ECB128(&unk_287892298);
  v109 = v108;
  v110 = sub_2673810FC();
  v112 = v111;
  v113 = *v111;
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v687 = *v112;
  *v112 = 0x8000000000000000;
  sub_266ECD4CC(v107, v109, 14, v114);
  *v112 = v687;
  v110(v778, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v688 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001CLL, 0x8000000267494F00, v119);
  v120 = *v117;
  *v117 = v688;

  v115(v778, 0);
  v121 = sub_266ECB128(&unk_2878922C0);
  v123 = v122;
  v124 = sub_2673810FC();
  v126 = v125;
  v127 = *v125;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v689 = *v126;
  *v126 = 0x8000000000000000;
  sub_266ECD4CC(v121, v123, 15, v128);
  *v126 = v689;
  v124(v778, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = *v130;
  v133 = swift_isUniquelyReferenced_nonNull_native();
  v690 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001FLL, 0x8000000267494F20, v133);
  v134 = *v131;
  *v131 = v690;

  v129(v778, 0);
  v135 = sub_26738111C();
  v137 = v136;
  v138 = *v136;
  v139 = swift_isUniquelyReferenced_nonNull_native();
  v691 = *v137;
  *v137 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001ELL, 0x8000000267494F40, v139);
  v140 = *v137;
  *v137 = v691;

  v135(v778, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = *v142;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v692 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000020, 0x8000000267494F60, v145);
  v146 = *v143;
  *v143 = v692;

  v141(v778, 0);
  v147 = sub_26738111C();
  v149 = v148;
  v150 = *v148;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  v693 = *v149;
  *v149 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000018, 0x8000000267494F90, v151);
  v152 = *v149;
  *v149 = v693;

  v147(v778, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = *v154;
  v157 = swift_isUniquelyReferenced_nonNull_native();
  v694 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000023, 0x8000000267494FB0, v157);
  v158 = *v155;
  *v155 = v694;

  v153(v778, 0);
  v159 = sub_26738111C();
  v161 = v160;
  v162 = *v160;
  v163 = swift_isUniquelyReferenced_nonNull_native();
  v695 = *v161;
  *v161 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000030, 0x8000000267494FE0, v163);
  v164 = *v161;
  *v161 = v695;

  v159(v778, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = *v166;
  v169 = swift_isUniquelyReferenced_nonNull_native();
  v696 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000019, 0x8000000267495020, v169);
  v170 = *v167;
  *v167 = v696;

  v165(v778, 0);
  v171 = sub_26738111C();
  v173 = v172;
  v174 = *v172;
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v697 = *v173;
  *v173 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001ALL, 0x8000000267495040, v175);
  v176 = *v173;
  *v173 = v697;

  v171(v778, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = *v178;
  v181 = swift_isUniquelyReferenced_nonNull_native();
  v698 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000024, 0x8000000267495060, v181);
  v182 = *v179;
  *v179 = v698;

  v177(v778, 0);
  v183 = sub_26738111C();
  v185 = v184;
  v186 = *v184;
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v699 = *v185;
  *v185 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000025, 0x8000000267495090, v187);
  v188 = *v185;
  *v185 = v699;

  v183(v778, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = *v190;
  v193 = swift_isUniquelyReferenced_nonNull_native();
  v700 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000023, 0x80000002674950C0, v193);
  v194 = *v191;
  *v191 = v700;

  v189(v778, 0);
  v195 = sub_26738111C();
  v197 = v196;
  v198 = *v196;
  v199 = swift_isUniquelyReferenced_nonNull_native();
  v701 = *v197;
  *v197 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000024, 0x80000002674950F0, v199);
  v200 = *v197;
  *v197 = v701;

  v195(v778, 0);
  v201 = sub_26738111C();
  v203 = v202;
  v204 = *v202;
  v205 = swift_isUniquelyReferenced_nonNull_native();
  v702 = *v203;
  *v203 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000002FLL, 0x8000000267495120, v205);
  v206 = *v203;
  *v203 = v702;

  v201(v778, 0);
  v207 = sub_26738111C();
  v209 = v208;
  v210 = *v208;
  v211 = swift_isUniquelyReferenced_nonNull_native();
  v703 = *v209;
  *v209 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001BLL, 0x8000000267495150, v211);
  v212 = *v209;
  *v209 = v703;

  v207(v778, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = *v214;
  v217 = swift_isUniquelyReferenced_nonNull_native();
  v704 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000001DLL, 0x8000000267495170, v217);
  v218 = *v215;
  *v215 = v704;

  v213(v778, 0);
  v219 = sub_26738111C();
  v221 = v220;
  v222 = *v220;
  v223 = swift_isUniquelyReferenced_nonNull_native();
  v705 = *v221;
  *v221 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000002ALL, 0x8000000267495190, v223);
  v224 = *v221;
  *v221 = v705;

  v219(v778, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = *v226;
  v229 = swift_isUniquelyReferenced_nonNull_native();
  v706 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000025, 0x80000002674951C0, v229);
  v230 = *v227;
  *v227 = v706;

  v225(v778, 0);
  v231 = sub_26738111C();
  v233 = v232;
  v234 = *v232;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  v707 = *v233;
  *v233 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000023, 0x80000002674951F0, v235);
  v236 = *v233;
  *v233 = v707;

  v231(v778, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = *v238;
  v241 = swift_isUniquelyReferenced_nonNull_native();
  v708 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000022, 0x8000000267495220, v241);
  v242 = *v239;
  *v239 = v708;

  v237(v778, 0);
  v243 = sub_26738111C();
  v245 = v244;
  v246 = *v244;
  v247 = swift_isUniquelyReferenced_nonNull_native();
  v709 = *v245;
  *v245 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000021, 0x8000000267495250, v247);
  v248 = *v245;
  *v245 = v709;

  v243(v778, 0);
  v249 = sub_266ECB128(&unk_2878922E8);
  v251 = v250;
  v252 = sub_2673810FC();
  v254 = v253;
  v255 = *v253;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v710 = *v254;
  *v254 = 0x8000000000000000;
  sub_266ECD4CC(v249, v251, 35, v256);
  *v254 = v710;
  v252(v778, 0);
  v257 = sub_26738111C();
  v259 = v258;
  v260 = *v258;
  v261 = swift_isUniquelyReferenced_nonNull_native();
  v711 = *v259;
  *v259 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000020, 0x8000000267495280, v261);
  v262 = *v259;
  *v259 = v711;

  v257(v778, 0);
  v263 = sub_266ECB128(&unk_287892310);
  v265 = v264;
  v266 = sub_2673810FC();
  v268 = v267;
  v269 = *v267;
  v270 = swift_isUniquelyReferenced_nonNull_native();
  v712 = *v268;
  *v268 = 0x8000000000000000;
  sub_266ECD4CC(v263, v265, 36, v270);
  *v268 = v712;
  v266(v778, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v713 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001BLL, 0x80000002674952B0, v275);
  v276 = *v273;
  *v273 = v713;

  v271(v778, 0);
  v277 = sub_266ECB128(&unk_287892338);
  v279 = v278;
  v280 = sub_2673810FC();
  v282 = v281;
  v283 = *v281;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v714 = *v282;
  *v282 = 0x8000000000000000;
  sub_266ECD4CC(v277, v279, 37, v284);
  *v282 = v714;
  v280(v778, 0);
  v285 = sub_26738111C();
  v287 = v286;
  v288 = *v286;
  v289 = swift_isUniquelyReferenced_nonNull_native();
  v715 = *v287;
  *v287 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001ALL, 0x80000002674952D0, v289);
  v290 = *v287;
  *v287 = v715;

  v285(v778, 0);
  v291 = sub_266ECB128(&unk_287892360);
  v293 = v292;
  v294 = sub_2673810FC();
  v296 = v295;
  v297 = *v295;
  v298 = swift_isUniquelyReferenced_nonNull_native();
  v716 = *v296;
  *v296 = 0x8000000000000000;
  sub_266ECD4CC(v291, v293, 38, v298);
  *v296 = v716;
  v294(v778, 0);
  v299 = sub_26738111C();
  v301 = v300;
  v302 = *v300;
  v303 = swift_isUniquelyReferenced_nonNull_native();
  v717 = *v301;
  *v301 = 0x8000000000000000;
  sub_266ECD368(39, 0xD00000000000002ELL, 0x80000002674952F0, v303);
  v304 = *v301;
  *v301 = v717;

  v299(v778, 0);
  v305 = sub_26738111C();
  v307 = v306;
  v308 = *v306;
  v309 = swift_isUniquelyReferenced_nonNull_native();
  v718 = *v307;
  *v307 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000031, 0x8000000267495320, v309);
  v310 = *v307;
  *v307 = v718;

  v305(v778, 0);
  v311 = sub_26738111C();
  v313 = v312;
  v314 = *v312;
  v315 = swift_isUniquelyReferenced_nonNull_native();
  v719 = *v313;
  *v313 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001BLL, 0x8000000267495360, v315);
  v316 = *v313;
  *v313 = v719;

  v311(v778, 0);
  v317 = sub_26738111C();
  v319 = v318;
  v320 = *v318;
  v321 = swift_isUniquelyReferenced_nonNull_native();
  v720 = *v319;
  *v319 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000024, 0x8000000267495380, v321);
  v322 = *v319;
  *v319 = v720;

  v317(v778, 0);
  v323 = sub_26738111C();
  v325 = v324;
  v326 = *v324;
  v327 = swift_isUniquelyReferenced_nonNull_native();
  v721 = *v325;
  *v325 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000002FLL, 0x80000002674953B0, v327);
  v328 = *v325;
  *v325 = v721;

  v323(v778, 0);
  v329 = sub_26738111C();
  v331 = v330;
  v332 = *v330;
  v333 = swift_isUniquelyReferenced_nonNull_native();
  v722 = *v331;
  *v331 = 0x8000000000000000;
  sub_266ECD368(44, 0xD00000000000002ELL, 0x80000002674953E0, v333);
  v334 = *v331;
  *v331 = v722;

  v329(v778, 0);
  v335 = sub_26738111C();
  v337 = v336;
  v338 = *v336;
  v339 = swift_isUniquelyReferenced_nonNull_native();
  v723 = *v337;
  *v337 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000038, 0x8000000267495410, v339);
  v340 = *v337;
  *v337 = v723;

  v335(v778, 0);
  v341 = sub_26738111C();
  v343 = v342;
  v344 = *v342;
  v345 = swift_isUniquelyReferenced_nonNull_native();
  v724 = *v343;
  *v343 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000026, 0x8000000267495450, v345);
  v346 = *v343;
  *v343 = v724;

  v341(v778, 0);
  v347 = sub_26738111C();
  v349 = v348;
  v350 = *v348;
  v351 = swift_isUniquelyReferenced_nonNull_native();
  v725 = *v349;
  *v349 = 0x8000000000000000;
  sub_266ECD368(47, 0xD00000000000001ELL, 0x8000000267495480, v351);
  v352 = *v349;
  *v349 = v725;

  v347(v778, 0);
  v353 = sub_266ECB128(&unk_287892388);
  v355 = v354;
  v356 = sub_2673810FC();
  v358 = v357;
  v359 = *v357;
  v360 = swift_isUniquelyReferenced_nonNull_native();
  v726 = *v358;
  *v358 = 0x8000000000000000;
  sub_266ECD4CC(v353, v355, 47, v360);
  *v358 = v726;
  v356(v778, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v727 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000021, 0x80000002674954A0, v365);
  v366 = *v363;
  *v363 = v727;

  v361(v778, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v728 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000022, 0x80000002674954D0, v371);
  v372 = *v369;
  *v369 = v728;

  v367(v778, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v729 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000020, 0x8000000267495500, v377);
  v378 = *v375;
  *v375 = v729;

  v373(v778, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v730 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000026, 0x8000000267495530, v383);
  v384 = *v381;
  *v381 = v730;

  v379(v778, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v731 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(52, 0xD000000000000021, 0x8000000267495560, v389);
  v390 = *v387;
  *v387 = v731;

  v385(v778, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v732 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000027, 0x8000000267495590, v395);
  v396 = *v393;
  *v393 = v732;

  v391(v778, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v733 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(54, 0xD000000000000039, 0x80000002674955C0, v401);
  v402 = *v399;
  *v399 = v733;

  v397(v778, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v734 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(55, 0xD000000000000026, 0x8000000267495600, v407);
  v408 = *v405;
  *v405 = v734;

  v403(v778, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v735 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(56, 0xD00000000000002ELL, 0x8000000267495630, v413);
  v414 = *v411;
  *v411 = v735;

  v409(v778, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v736 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000024, 0x8000000267495660, v419);
  v420 = *v417;
  *v417 = v736;

  v415(v778, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v737 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000026, 0x8000000267495690, v425);
  v426 = *v423;
  *v423 = v737;

  v421(v778, 0);
  v427 = sub_26738111C();
  v429 = v428;
  v430 = *v428;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v738 = *v429;
  *v429 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000024, 0x80000002674956C0, v431);
  v432 = *v429;
  *v429 = v738;

  v427(v778, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = *v434;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  v739 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000042, 0x80000002674956F0, v437);
  v438 = *v435;
  *v435 = v739;

  v433(v778, 0);
  v439 = sub_26738111C();
  v441 = v440;
  v442 = *v440;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v740 = *v441;
  *v441 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000041, 0x8000000267495740, v443);
  v444 = *v441;
  *v441 = v740;

  v439(v778, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v741 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(62, 0xD00000000000003BLL, 0x8000000267495790, v449);
  v450 = *v447;
  *v447 = v741;

  v445(v778, 0);
  v451 = sub_26738111C();
  v453 = v452;
  v454 = *v452;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v742 = *v453;
  *v453 = 0x8000000000000000;
  sub_266ECD368(63, 0xD00000000000004BLL, 0x80000002674957D0, v455);
  v456 = *v453;
  *v453 = v742;

  v451(v778, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = *v458;
  v461 = swift_isUniquelyReferenced_nonNull_native();
  v743 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(64, 0xD000000000000041, 0x8000000267495820, v461);
  v462 = *v459;
  *v459 = v743;

  v457(v778, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v744 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000055, 0x8000000267495870, v467);
  v468 = *v465;
  *v465 = v744;

  v463(v778, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = *v470;
  v473 = swift_isUniquelyReferenced_nonNull_native();
  v745 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(66, 0xD000000000000041, 0x80000002674958D0, v473);
  v474 = *v471;
  *v471 = v745;

  v469(v778, 0);
  v475 = sub_26738111C();
  v477 = v476;
  v478 = *v476;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v746 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000055, 0x8000000267495920, v479);
  v480 = *v477;
  *v477 = v746;

  v475(v778, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = *v482;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  v747 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(68, 0xD00000000000003ELL, 0x8000000267495980, v485);
  v486 = *v483;
  *v483 = v747;

  v481(v778, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v748 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000039, 0x80000002674959C0, v491);
  v492 = *v489;
  *v489 = v748;

  v487(v778, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = *v494;
  v497 = swift_isUniquelyReferenced_nonNull_native();
  v749 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(70, 0xD00000000000002ALL, 0x8000000267495A00, v497);
  v498 = *v495;
  *v495 = v749;

  v493(v778, 0);
  v499 = sub_26738111C();
  v501 = v500;
  v502 = *v500;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v750 = *v501;
  *v501 = 0x8000000000000000;
  sub_266ECD368(71, 0xD000000000000039, 0x8000000267495A30, v503);
  v504 = *v501;
  *v501 = v750;

  v499(v778, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v751 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(72, 0xD000000000000035, 0x8000000267495A70, v509);
  v510 = *v507;
  *v507 = v751;

  v505(v778, 0);
  v511 = sub_26738111C();
  v513 = v512;
  v514 = *v512;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v752 = *v513;
  *v513 = 0x8000000000000000;
  sub_266ECD368(73, 0xD000000000000023, 0x8000000267495AB0, v515);
  v516 = *v513;
  *v513 = v752;

  v511(v778, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = *v518;
  v521 = swift_isUniquelyReferenced_nonNull_native();
  v753 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(74, 0xD00000000000002BLL, 0x8000000267495AE0, v521);
  v522 = *v519;
  *v519 = v753;

  v517(v778, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = *v524;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v754 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(75, 0xD000000000000029, 0x8000000267495B10, v527);
  v528 = *v525;
  *v525 = v754;

  v523(v778, 0);
  v529 = sub_266ECB128(&unk_2878923B0);
  v531 = v530;
  v532 = sub_2673810FC();
  v534 = v533;
  v535 = *v533;
  v536 = swift_isUniquelyReferenced_nonNull_native();
  v755 = *v534;
  *v534 = 0x8000000000000000;
  sub_266ECD4CC(v529, v531, 75, v536);
  *v534 = v755;
  v532(v778, 0);
  v537 = sub_26738111C();
  v539 = v538;
  v540 = *v538;
  v541 = swift_isUniquelyReferenced_nonNull_native();
  v756 = *v539;
  *v539 = 0x8000000000000000;
  sub_266ECD368(76, 0xD00000000000003BLL, 0x8000000267495B40, v541);
  v542 = *v539;
  *v539 = v756;

  v537(v778, 0);
  v543 = sub_26738111C();
  v545 = v544;
  v546 = *v544;
  v547 = swift_isUniquelyReferenced_nonNull_native();
  v757 = *v545;
  *v545 = 0x8000000000000000;
  sub_266ECD368(77, 0xD000000000000043, 0x8000000267495B80, v547);
  v548 = *v545;
  *v545 = v757;

  v543(v778, 0);
  v549 = sub_26738111C();
  v551 = v550;
  v552 = *v550;
  v553 = swift_isUniquelyReferenced_nonNull_native();
  v758 = *v551;
  *v551 = 0x8000000000000000;
  sub_266ECD368(78, 0xD00000000000004ELL, 0x8000000267495BD0, v553);
  v554 = *v551;
  *v551 = v758;

  v549(v778, 0);
  v555 = sub_26738111C();
  v557 = v556;
  v558 = *v556;
  v559 = swift_isUniquelyReferenced_nonNull_native();
  v759 = *v557;
  *v557 = 0x8000000000000000;
  sub_266ECD368(81, 0xD000000000000054, 0x8000000267495C20, v559);
  v560 = *v557;
  *v557 = v759;

  v555(v778, 0);
  v561 = sub_26738111C();
  v563 = v562;
  v564 = *v562;
  v565 = swift_isUniquelyReferenced_nonNull_native();
  v760 = *v563;
  *v563 = 0x8000000000000000;
  sub_266ECD368(82, 0xD00000000000003BLL, 0x8000000267495C80, v565);
  v566 = *v563;
  *v563 = v760;

  v561(v778, 0);
  v567 = sub_26738111C();
  v569 = v568;
  v570 = *v568;
  v571 = swift_isUniquelyReferenced_nonNull_native();
  v761 = *v569;
  *v569 = 0x8000000000000000;
  sub_266ECD368(83, 0xD000000000000036, 0x8000000267495CC0, v571);
  v572 = *v569;
  *v569 = v761;

  v567(v778, 0);
  v573 = sub_26738111C();
  v575 = v574;
  v576 = *v574;
  v577 = swift_isUniquelyReferenced_nonNull_native();
  v762 = *v575;
  *v575 = 0x8000000000000000;
  sub_266ECD368(85, 0xD00000000000001DLL, 0x8000000267495D00, v577);
  v578 = *v575;
  *v575 = v762;

  v573(v778, 0);
  v579 = sub_26738111C();
  v581 = v580;
  v582 = *v580;
  v583 = swift_isUniquelyReferenced_nonNull_native();
  v763 = *v581;
  *v581 = 0x8000000000000000;
  sub_266ECD368(87, 0xD000000000000020, 0x8000000267495D20, v583);
  v584 = *v581;
  *v581 = v763;

  v579(v778, 0);
  v585 = sub_26738111C();
  v587 = v586;
  v588 = *v586;
  v589 = swift_isUniquelyReferenced_nonNull_native();
  v764 = *v587;
  *v587 = 0x8000000000000000;
  sub_266ECD368(88, 0xD00000000000001FLL, 0x8000000267495D50, v589);
  v590 = *v587;
  *v587 = v764;

  v585(v778, 0);
  v591 = sub_26738111C();
  v593 = v592;
  v594 = *v592;
  v595 = swift_isUniquelyReferenced_nonNull_native();
  v765 = *v593;
  *v593 = 0x8000000000000000;
  sub_266ECD368(89, 0xD00000000000002ALL, 0x8000000267495D70, v595);
  v596 = *v593;
  *v593 = v765;

  v591(v778, 0);
  v597 = sub_26738111C();
  v599 = v598;
  v600 = *v598;
  v601 = swift_isUniquelyReferenced_nonNull_native();
  v766 = *v599;
  *v599 = 0x8000000000000000;
  sub_266ECD368(91, 0xD000000000000023, 0x8000000267495DA0, v601);
  v602 = *v599;
  *v599 = v766;

  v597(v778, 0);
  v603 = sub_26738111C();
  v605 = v604;
  v606 = *v604;
  v607 = swift_isUniquelyReferenced_nonNull_native();
  v767 = *v605;
  *v605 = 0x8000000000000000;
  sub_266ECD368(93, 0xD000000000000025, 0x8000000267495DD0, v607);
  v608 = *v605;
  *v605 = v767;

  v603(v778, 0);
  v609 = sub_26738111C();
  v611 = v610;
  v612 = *v610;
  v613 = swift_isUniquelyReferenced_nonNull_native();
  v768 = *v611;
  *v611 = 0x8000000000000000;
  sub_266ECD368(94, 0xD00000000000001ELL, 0x8000000267495E00, v613);
  v614 = *v611;
  *v611 = v768;

  v609(v778, 0);
  v615 = sub_26738111C();
  v617 = v616;
  v618 = *v616;
  v619 = swift_isUniquelyReferenced_nonNull_native();
  v769 = *v617;
  *v617 = 0x8000000000000000;
  sub_266ECD368(95, 0xD000000000000021, 0x8000000267495E20, v619);
  v620 = *v617;
  *v617 = v769;

  v615(v778, 0);
  v621 = sub_26738111C();
  v623 = v622;
  v624 = *v622;
  v625 = swift_isUniquelyReferenced_nonNull_native();
  v770 = *v623;
  *v623 = 0x8000000000000000;
  sub_266ECD368(96, 0xD00000000000001BLL, 0x8000000267495E50, v625);
  v626 = *v623;
  *v623 = v770;

  v621(v778, 0);
  v627 = sub_26738111C();
  v629 = v628;
  v630 = *v628;
  v631 = swift_isUniquelyReferenced_nonNull_native();
  v771 = *v629;
  *v629 = 0x8000000000000000;
  sub_266ECD368(97, 0xD00000000000002CLL, 0x8000000267495E70, v631);
  v632 = *v629;
  *v629 = v771;

  v627(v778, 0);
  v633 = sub_26738111C();
  v635 = v634;
  v636 = *v634;
  v637 = swift_isUniquelyReferenced_nonNull_native();
  v772 = *v635;
  *v635 = 0x8000000000000000;
  sub_266ECD368(98, 0xD000000000000024, 0x8000000267495EA0, v637);
  v638 = *v635;
  *v635 = v772;

  v633(v778, 0);
  v639 = sub_26738111C();
  v641 = v640;
  v642 = *v640;
  v643 = swift_isUniquelyReferenced_nonNull_native();
  v773 = *v641;
  *v641 = 0x8000000000000000;
  sub_266ECD368(99, 0xD00000000000002FLL, 0x8000000267495ED0, v643);
  v644 = *v641;
  *v641 = v773;

  v639(v778, 0);
  v645 = sub_26738111C();
  v647 = v646;
  v648 = *v646;
  v649 = swift_isUniquelyReferenced_nonNull_native();
  v774 = *v647;
  *v647 = 0x8000000000000000;
  sub_266ECD368(100, 0xD000000000000035, 0x8000000267495F00, v649);
  v650 = *v647;
  *v647 = v774;

  v645(v778, 0);
  v651 = sub_26738111C();
  v653 = v652;
  v654 = *v652;
  v655 = swift_isUniquelyReferenced_nonNull_native();
  v775 = *v653;
  *v653 = 0x8000000000000000;
  sub_266ECD368(101, 0xD00000000000002CLL, 0x8000000267495F40, v655);
  v656 = *v653;
  *v653 = v775;

  v651(v778, 0);
  v657 = sub_26738111C();
  v659 = v658;
  v660 = *v658;
  v661 = swift_isUniquelyReferenced_nonNull_native();
  v776 = *v659;
  *v659 = 0x8000000000000000;
  sub_266ECD368(102, 0xD000000000000028, 0x8000000267495F70, v661);
  v662 = *v659;
  *v659 = v776;

  v657(v778, 0);
  v663 = sub_26738111C();
  v665 = v664;
  v666 = *v664;
  v667 = swift_isUniquelyReferenced_nonNull_native();
  v777 = *v665;
  *v665 = 0x8000000000000000;
  sub_266ECD368(103, 0xD000000000000038, 0x8000000267495FA0, v667);
  v668 = *v665;
  *v665 = v777;

  return v663(v778, 0);
}

uint64_t sub_2672DCFB0(uint64_t a1)
{
  v2 = sub_2672DD0B4(&qword_2800FA218);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672DD018(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672DD0B4(&qword_2800FA218);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672DD0B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaInvocationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaISOCountryCode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1508 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267496010, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v1508;

  v1(v1759, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v1509 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x8000000267496030, v11);
  v12 = *v9;
  *v9 = v1509;

  v7(v1759, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v1510 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267496050, v17);
  v18 = *v15;
  *v15 = v1510;

  v13(v1759, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v1511 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000011, 0x8000000267496070, v23);
  v24 = *v21;
  *v21 = v1511;

  v19(v1759, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v1512 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x8000000267496090, v29);
  v30 = *v27;
  *v27 = v1512;

  v25(v1759, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v1513 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000011, 0x80000002674960B0, v35);
  v36 = *v33;
  *v33 = v1513;

  v31(v1759, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v1514 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x80000002674960D0, v41);
  v42 = *v39;
  *v39 = v1514;

  v37(v1759, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v1515 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x80000002674960F0, v47);
  v48 = *v45;
  *v45 = v1515;

  v43(v1759, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v1516 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000011, 0x8000000267496110, v53);
  v54 = *v51;
  *v51 = v1516;

  v49(v1759, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v1517 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000011, 0x8000000267496130, v59);
  v60 = *v57;
  *v57 = v1517;

  v55(v1759, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v1518 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000011, 0x8000000267496150, v65);
  v66 = *v63;
  *v63 = v1518;

  v61(v1759, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v1519 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000011, 0x8000000267496170, v71);
  v72 = *v69;
  *v69 = v1519;

  v67(v1759, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v1520 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000011, 0x8000000267496190, v77);
  v78 = *v75;
  *v75 = v1520;

  v73(v1759, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v1521 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000011, 0x80000002674961B0, v83);
  v84 = *v81;
  *v81 = v1521;

  v79(v1759, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v1522 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000011, 0x80000002674961D0, v89);
  v90 = *v87;
  *v87 = v1522;

  v85(v1759, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v1523 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000011, 0x80000002674961F0, v95);
  v96 = *v93;
  *v93 = v1523;

  v91(v1759, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v1524 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000011, 0x8000000267496210, v101);
  v102 = *v99;
  *v99 = v1524;

  v97(v1759, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v1525 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000011, 0x8000000267496230, v107);
  v108 = *v105;
  *v105 = v1525;

  v103(v1759, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v1526 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000011, 0x8000000267496250, v113);
  v114 = *v111;
  *v111 = v1526;

  v109(v1759, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v1527 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000011, 0x8000000267496270, v119);
  v120 = *v117;
  *v117 = v1527;

  v115(v1759, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v1528 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000011, 0x8000000267496290, v125);
  v126 = *v123;
  *v123 = v1528;

  v121(v1759, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v1529 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000011, 0x80000002674962B0, v131);
  v132 = *v129;
  *v129 = v1529;

  v127(v1759, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v1530 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000011, 0x80000002674962D0, v137);
  v138 = *v135;
  *v135 = v1530;

  v133(v1759, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v1531 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000011, 0x80000002674962F0, v143);
  v144 = *v141;
  *v141 = v1531;

  v139(v1759, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v1532 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000011, 0x8000000267496310, v149);
  v150 = *v147;
  *v147 = v1532;

  v145(v1759, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v1533 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000011, 0x8000000267496330, v155);
  v156 = *v153;
  *v153 = v1533;

  v151(v1759, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v1534 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000011, 0x8000000267496350, v161);
  v162 = *v159;
  *v159 = v1534;

  v157(v1759, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v1535 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000011, 0x8000000267496370, v167);
  v168 = *v165;
  *v165 = v1535;

  v163(v1759, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v1536 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000011, 0x8000000267496390, v173);
  v174 = *v171;
  *v171 = v1536;

  v169(v1759, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v1537 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000011, 0x80000002674963B0, v179);
  v180 = *v177;
  *v177 = v1537;

  v175(v1759, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v1538 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000011, 0x80000002674963D0, v185);
  v186 = *v183;
  *v183 = v1538;

  v181(v1759, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v1539 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000011, 0x80000002674963F0, v191);
  v192 = *v189;
  *v189 = v1539;

  v187(v1759, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v1540 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000011, 0x8000000267496410, v197);
  v198 = *v195;
  *v195 = v1540;

  v193(v1759, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v1541 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000011, 0x8000000267496430, v203);
  v204 = *v201;
  *v201 = v1541;

  v199(v1759, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v1542 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000011, 0x8000000267496450, v209);
  v210 = *v207;
  *v207 = v1542;

  v205(v1759, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v1543 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000011, 0x8000000267496470, v215);
  v216 = *v213;
  *v213 = v1543;

  v211(v1759, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v1544 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000011, 0x8000000267496490, v221);
  v222 = *v219;
  *v219 = v1544;

  v217(v1759, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v1545 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000011, 0x80000002674964B0, v227);
  v228 = *v225;
  *v225 = v1545;

  v223(v1759, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v1546 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000011, 0x80000002674964D0, v233);
  v234 = *v231;
  *v231 = v1546;

  v229(v1759, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v1547 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000011, 0x80000002674964F0, v239);
  v240 = *v237;
  *v237 = v1547;

  v235(v1759, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v1548 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000011, 0x8000000267496510, v245);
  v246 = *v243;
  *v243 = v1548;

  v241(v1759, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v1549 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000011, 0x8000000267496530, v251);
  v252 = *v249;
  *v249 = v1549;

  v247(v1759, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v1550 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000011, 0x8000000267496550, v257);
  v258 = *v255;
  *v255 = v1550;

  v253(v1759, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v1551 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000011, 0x8000000267496570, v263);
  v264 = *v261;
  *v261 = v1551;

  v259(v1759, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v1552 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000011, 0x8000000267496590, v269);
  v270 = *v267;
  *v267 = v1552;

  v265(v1759, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v1553 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000011, 0x80000002674965B0, v275);
  v276 = *v273;
  *v273 = v1553;

  v271(v1759, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v1554 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000011, 0x80000002674965D0, v281);
  v282 = *v279;
  *v279 = v1554;

  v277(v1759, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v1555 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000011, 0x80000002674965F0, v287);
  v288 = *v285;
  *v285 = v1555;

  v283(v1759, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v1556 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000011, 0x8000000267496610, v293);
  v294 = *v291;
  *v291 = v1556;

  v289(v1759, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v1557 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000011, 0x8000000267496630, v299);
  v300 = *v297;
  *v297 = v1557;

  v295(v1759, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v1558 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000011, 0x8000000267496650, v305);
  v306 = *v303;
  *v303 = v1558;

  v301(v1759, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v1559 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000011, 0x8000000267496670, v311);
  v312 = *v309;
  *v309 = v1559;

  v307(v1759, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v1560 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 0xD000000000000011, 0x8000000267496690, v317);
  v318 = *v315;
  *v315 = v1560;

  v313(v1759, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v1561 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000011, 0x80000002674966B0, v323);
  v324 = *v321;
  *v321 = v1561;

  v319(v1759, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v1562 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 0xD000000000000011, 0x80000002674966D0, v329);
  v330 = *v327;
  *v327 = v1562;

  v325(v1759, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v1563 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 0xD000000000000011, 0x80000002674966F0, v335);
  v336 = *v333;
  *v333 = v1563;

  v331(v1759, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v1564 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000011, 0x8000000267496710, v341);
  v342 = *v339;
  *v339 = v1564;

  v337(v1759, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v1565 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000011, 0x8000000267496730, v347);
  v348 = *v345;
  *v345 = v1565;

  v343(v1759, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v1566 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000011, 0x8000000267496750, v353);
  v354 = *v351;
  *v351 = v1566;

  v349(v1759, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v1567 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000011, 0x8000000267496770, v359);
  v360 = *v357;
  *v357 = v1567;

  v355(v1759, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v1568 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000011, 0x8000000267496790, v365);
  v366 = *v363;
  *v363 = v1568;

  v361(v1759, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v1569 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000011, 0x80000002674967B0, v371);
  v372 = *v369;
  *v369 = v1569;

  v367(v1759, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v1570 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000011, 0x80000002674967D0, v377);
  v378 = *v375;
  *v375 = v1570;

  v373(v1759, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v1571 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000011, 0x80000002674967F0, v383);
  v384 = *v381;
  *v381 = v1571;

  v379(v1759, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v1572 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(64, 0xD000000000000011, 0x8000000267496810, v389);
  v390 = *v387;
  *v387 = v1572;

  v385(v1759, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v1573 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000011, 0x8000000267496830, v395);
  v396 = *v393;
  *v393 = v1573;

  v391(v1759, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v1574 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(66, 0xD000000000000011, 0x8000000267496850, v401);
  v402 = *v399;
  *v399 = v1574;

  v397(v1759, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v1575 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000011, 0x8000000267496870, v407);
  v408 = *v405;
  *v405 = v1575;

  v403(v1759, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v1576 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(68, 0xD000000000000011, 0x8000000267496890, v413);
  v414 = *v411;
  *v411 = v1576;

  v409(v1759, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v1577 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000011, 0x80000002674968B0, v419);
  v420 = *v417;
  *v417 = v1577;

  v415(v1759, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v1578 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(70, 0xD000000000000011, 0x80000002674968D0, v425);
  v426 = *v423;
  *v423 = v1578;

  v421(v1759, 0);
  v427 = sub_26738111C();
  v429 = v428;
  v430 = *v428;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v1579 = *v429;
  *v429 = 0x8000000000000000;
  sub_266ECD368(71, 0xD000000000000011, 0x80000002674968F0, v431);
  v432 = *v429;
  *v429 = v1579;

  v427(v1759, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = *v434;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  v1580 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(72, 0xD000000000000011, 0x8000000267496910, v437);
  v438 = *v435;
  *v435 = v1580;

  v433(v1759, 0);
  v439 = sub_26738111C();
  v441 = v440;
  v442 = *v440;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v1581 = *v441;
  *v441 = 0x8000000000000000;
  sub_266ECD368(73, 0xD000000000000011, 0x8000000267496930, v443);
  v444 = *v441;
  *v441 = v1581;

  v439(v1759, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v1582 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(74, 0xD000000000000011, 0x8000000267496950, v449);
  v450 = *v447;
  *v447 = v1582;

  v445(v1759, 0);
  v451 = sub_26738111C();
  v453 = v452;
  v454 = *v452;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v1583 = *v453;
  *v453 = 0x8000000000000000;
  sub_266ECD368(75, 0xD000000000000011, 0x8000000267496970, v455);
  v456 = *v453;
  *v453 = v1583;

  v451(v1759, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = *v458;
  v461 = swift_isUniquelyReferenced_nonNull_native();
  v1584 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(76, 0xD000000000000011, 0x8000000267496990, v461);
  v462 = *v459;
  *v459 = v1584;

  v457(v1759, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v1585 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(77, 0xD000000000000011, 0x80000002674969B0, v467);
  v468 = *v465;
  *v465 = v1585;

  v463(v1759, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = *v470;
  v473 = swift_isUniquelyReferenced_nonNull_native();
  v1586 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(78, 0xD000000000000011, 0x80000002674969D0, v473);
  v474 = *v471;
  *v471 = v1586;

  v469(v1759, 0);
  v475 = sub_26738111C();
  v477 = v476;
  v478 = *v476;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v1587 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD368(79, 0xD000000000000011, 0x80000002674969F0, v479);
  v480 = *v477;
  *v477 = v1587;

  v475(v1759, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = *v482;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  v1588 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(80, 0xD000000000000011, 0x8000000267496A10, v485);
  v486 = *v483;
  *v483 = v1588;

  v481(v1759, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v1589 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(81, 0xD000000000000011, 0x8000000267496A30, v491);
  v492 = *v489;
  *v489 = v1589;

  v487(v1759, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = *v494;
  v497 = swift_isUniquelyReferenced_nonNull_native();
  v1590 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(82, 0xD000000000000011, 0x8000000267496A50, v497);
  v498 = *v495;
  *v495 = v1590;

  v493(v1759, 0);
  v499 = sub_26738111C();
  v501 = v500;
  v502 = *v500;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v1591 = *v501;
  *v501 = 0x8000000000000000;
  sub_266ECD368(83, 0xD000000000000011, 0x8000000267496A70, v503);
  v504 = *v501;
  *v501 = v1591;

  v499(v1759, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v1592 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(84, 0xD000000000000011, 0x8000000267496A90, v509);
  v510 = *v507;
  *v507 = v1592;

  v505(v1759, 0);
  v511 = sub_26738111C();
  v513 = v512;
  v514 = *v512;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v1593 = *v513;
  *v513 = 0x8000000000000000;
  sub_266ECD368(85, 0xD000000000000011, 0x8000000267496AB0, v515);
  v516 = *v513;
  *v513 = v1593;

  v511(v1759, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = *v518;
  v521 = swift_isUniquelyReferenced_nonNull_native();
  v1594 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(86, 0xD000000000000011, 0x8000000267496AD0, v521);
  v522 = *v519;
  *v519 = v1594;

  v517(v1759, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = *v524;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v1595 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(87, 0xD000000000000011, 0x8000000267496AF0, v527);
  v528 = *v525;
  *v525 = v1595;

  v523(v1759, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = *v530;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v1596 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(88, 0xD000000000000011, 0x8000000267496B10, v533);
  v534 = *v531;
  *v531 = v1596;

  v529(v1759, 0);
  v535 = sub_26738111C();
  v537 = v536;
  v538 = *v536;
  v539 = swift_isUniquelyReferenced_nonNull_native();
  v1597 = *v537;
  *v537 = 0x8000000000000000;
  sub_266ECD368(89, 0xD000000000000011, 0x8000000267496B30, v539);
  v540 = *v537;
  *v537 = v1597;

  v535(v1759, 0);
  v541 = sub_26738111C();
  v543 = v542;
  v544 = *v542;
  v545 = swift_isUniquelyReferenced_nonNull_native();
  v1598 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD368(90, 0xD000000000000011, 0x8000000267496B50, v545);
  v546 = *v543;
  *v543 = v1598;

  v541(v1759, 0);
  v547 = sub_26738111C();
  v549 = v548;
  v550 = *v548;
  v551 = swift_isUniquelyReferenced_nonNull_native();
  v1599 = *v549;
  *v549 = 0x8000000000000000;
  sub_266ECD368(91, 0xD000000000000011, 0x8000000267496B70, v551);
  v552 = *v549;
  *v549 = v1599;

  v547(v1759, 0);
  v553 = sub_26738111C();
  v555 = v554;
  v556 = *v554;
  v557 = swift_isUniquelyReferenced_nonNull_native();
  v1600 = *v555;
  *v555 = 0x8000000000000000;
  sub_266ECD368(92, 0xD000000000000011, 0x8000000267496B90, v557);
  v558 = *v555;
  *v555 = v1600;

  v553(v1759, 0);
  v559 = sub_26738111C();
  v561 = v560;
  v562 = *v560;
  v563 = swift_isUniquelyReferenced_nonNull_native();
  v1601 = *v561;
  *v561 = 0x8000000000000000;
  sub_266ECD368(93, 0xD000000000000011, 0x8000000267496BB0, v563);
  v564 = *v561;
  *v561 = v1601;

  v559(v1759, 0);
  v565 = sub_26738111C();
  v567 = v566;
  v568 = *v566;
  v569 = swift_isUniquelyReferenced_nonNull_native();
  v1602 = *v567;
  *v567 = 0x8000000000000000;
  sub_266ECD368(94, 0xD000000000000011, 0x8000000267496BD0, v569);
  v570 = *v567;
  *v567 = v1602;

  v565(v1759, 0);
  v571 = sub_26738111C();
  v573 = v572;
  v574 = *v572;
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v1603 = *v573;
  *v573 = 0x8000000000000000;
  sub_266ECD368(95, 0xD000000000000011, 0x8000000267496BF0, v575);
  v576 = *v573;
  *v573 = v1603;

  v571(v1759, 0);
  v577 = sub_26738111C();
  v579 = v578;
  v580 = *v578;
  v581 = swift_isUniquelyReferenced_nonNull_native();
  v1604 = *v579;
  *v579 = 0x8000000000000000;
  sub_266ECD368(96, 0xD000000000000011, 0x8000000267496C10, v581);
  v582 = *v579;
  *v579 = v1604;

  v577(v1759, 0);
  v583 = sub_26738111C();
  v585 = v584;
  v586 = *v584;
  v587 = swift_isUniquelyReferenced_nonNull_native();
  v1605 = *v585;
  *v585 = 0x8000000000000000;
  sub_266ECD368(97, 0xD000000000000011, 0x8000000267496C30, v587);
  v588 = *v585;
  *v585 = v1605;

  v583(v1759, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = *v590;
  v593 = swift_isUniquelyReferenced_nonNull_native();
  v1606 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(98, 0xD000000000000011, 0x8000000267496C50, v593);
  v594 = *v591;
  *v591 = v1606;

  v589(v1759, 0);
  v595 = sub_26738111C();
  v597 = v596;
  v598 = *v596;
  v599 = swift_isUniquelyReferenced_nonNull_native();
  v1607 = *v597;
  *v597 = 0x8000000000000000;
  sub_266ECD368(99, 0xD000000000000011, 0x8000000267496C70, v599);
  v600 = *v597;
  *v597 = v1607;

  v595(v1759, 0);
  v601 = sub_26738111C();
  v603 = v602;
  v604 = *v602;
  v605 = swift_isUniquelyReferenced_nonNull_native();
  v1608 = *v603;
  *v603 = 0x8000000000000000;
  sub_266ECD368(100, 0xD000000000000011, 0x8000000267496C90, v605);
  v606 = *v603;
  *v603 = v1608;

  v601(v1759, 0);
  v607 = sub_26738111C();
  v609 = v608;
  v610 = *v608;
  v611 = swift_isUniquelyReferenced_nonNull_native();
  v1609 = *v609;
  *v609 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000011, 0x8000000267496CB0, v611);
  v612 = *v609;
  *v609 = v1609;

  v607(v1759, 0);
  v613 = sub_26738111C();
  v615 = v614;
  v616 = *v614;
  v617 = swift_isUniquelyReferenced_nonNull_native();
  v1610 = *v615;
  *v615 = 0x8000000000000000;
  sub_266ECD368(102, 0xD000000000000011, 0x8000000267496CD0, v617);
  v618 = *v615;
  *v615 = v1610;

  v613(v1759, 0);
  v619 = sub_26738111C();
  v621 = v620;
  v622 = *v620;
  v623 = swift_isUniquelyReferenced_nonNull_native();
  v1611 = *v621;
  *v621 = 0x8000000000000000;
  sub_266ECD368(103, 0xD000000000000011, 0x8000000267496CF0, v623);
  v624 = *v621;
  *v621 = v1611;

  v619(v1759, 0);
  v625 = sub_26738111C();
  v627 = v626;
  v628 = *v626;
  v629 = swift_isUniquelyReferenced_nonNull_native();
  v1612 = *v627;
  *v627 = 0x8000000000000000;
  sub_266ECD368(104, 0xD000000000000011, 0x8000000267496D10, v629);
  v630 = *v627;
  *v627 = v1612;

  v625(v1759, 0);
  v631 = sub_26738111C();
  v633 = v632;
  v634 = *v632;
  v635 = swift_isUniquelyReferenced_nonNull_native();
  v1613 = *v633;
  *v633 = 0x8000000000000000;
  sub_266ECD368(105, 0xD000000000000011, 0x8000000267496D30, v635);
  v636 = *v633;
  *v633 = v1613;

  v631(v1759, 0);
  v637 = sub_26738111C();
  v639 = v638;
  v640 = *v638;
  v641 = swift_isUniquelyReferenced_nonNull_native();
  v1614 = *v639;
  *v639 = 0x8000000000000000;
  sub_266ECD368(106, 0xD000000000000011, 0x8000000267496D50, v641);
  v642 = *v639;
  *v639 = v1614;

  v637(v1759, 0);
  v643 = sub_26738111C();
  v645 = v644;
  v646 = *v644;
  v647 = swift_isUniquelyReferenced_nonNull_native();
  v1615 = *v645;
  *v645 = 0x8000000000000000;
  sub_266ECD368(107, 0xD000000000000011, 0x8000000267496D70, v647);
  v648 = *v645;
  *v645 = v1615;

  v643(v1759, 0);
  v649 = sub_26738111C();
  v651 = v650;
  v652 = *v650;
  v653 = swift_isUniquelyReferenced_nonNull_native();
  v1616 = *v651;
  *v651 = 0x8000000000000000;
  sub_266ECD368(108, 0xD000000000000011, 0x8000000267496D90, v653);
  v654 = *v651;
  *v651 = v1616;

  v649(v1759, 0);
  v655 = sub_26738111C();
  v657 = v656;
  v658 = *v656;
  v659 = swift_isUniquelyReferenced_nonNull_native();
  v1617 = *v657;
  *v657 = 0x8000000000000000;
  sub_266ECD368(109, 0xD000000000000011, 0x8000000267496DB0, v659);
  v660 = *v657;
  *v657 = v1617;

  v655(v1759, 0);
  v661 = sub_26738111C();
  v663 = v662;
  v664 = *v662;
  v665 = swift_isUniquelyReferenced_nonNull_native();
  v1618 = *v663;
  *v663 = 0x8000000000000000;
  sub_266ECD368(110, 0xD000000000000011, 0x8000000267496DD0, v665);
  v666 = *v663;
  *v663 = v1618;

  v661(v1759, 0);
  v667 = sub_26738111C();
  v669 = v668;
  v670 = *v668;
  v671 = swift_isUniquelyReferenced_nonNull_native();
  v1619 = *v669;
  *v669 = 0x8000000000000000;
  sub_266ECD368(111, 0xD000000000000011, 0x8000000267496DF0, v671);
  v672 = *v669;
  *v669 = v1619;

  v667(v1759, 0);
  v673 = sub_26738111C();
  v675 = v674;
  v676 = *v674;
  v677 = swift_isUniquelyReferenced_nonNull_native();
  v1620 = *v675;
  *v675 = 0x8000000000000000;
  sub_266ECD368(112, 0xD000000000000011, 0x8000000267496E10, v677);
  v678 = *v675;
  *v675 = v1620;

  v673(v1759, 0);
  v679 = sub_26738111C();
  v681 = v680;
  v682 = *v680;
  v683 = swift_isUniquelyReferenced_nonNull_native();
  v1621 = *v681;
  *v681 = 0x8000000000000000;
  sub_266ECD368(113, 0xD000000000000011, 0x8000000267496E30, v683);
  v684 = *v681;
  *v681 = v1621;

  v679(v1759, 0);
  v685 = sub_26738111C();
  v687 = v686;
  v688 = *v686;
  v689 = swift_isUniquelyReferenced_nonNull_native();
  v1622 = *v687;
  *v687 = 0x8000000000000000;
  sub_266ECD368(114, 0xD000000000000011, 0x8000000267496E50, v689);
  v690 = *v687;
  *v687 = v1622;

  v685(v1759, 0);
  v691 = sub_26738111C();
  v693 = v692;
  v694 = *v692;
  v695 = swift_isUniquelyReferenced_nonNull_native();
  v1623 = *v693;
  *v693 = 0x8000000000000000;
  sub_266ECD368(115, 0xD000000000000011, 0x8000000267496E70, v695);
  v696 = *v693;
  *v693 = v1623;

  v691(v1759, 0);
  v697 = sub_26738111C();
  v699 = v698;
  v700 = *v698;
  v701 = swift_isUniquelyReferenced_nonNull_native();
  v1624 = *v699;
  *v699 = 0x8000000000000000;
  sub_266ECD368(116, 0xD000000000000011, 0x8000000267496E90, v701);
  v702 = *v699;
  *v699 = v1624;

  v697(v1759, 0);
  v703 = sub_26738111C();
  v705 = v704;
  v706 = *v704;
  v707 = swift_isUniquelyReferenced_nonNull_native();
  v1625 = *v705;
  *v705 = 0x8000000000000000;
  sub_266ECD368(117, 0xD000000000000011, 0x8000000267496EB0, v707);
  v708 = *v705;
  *v705 = v1625;

  v703(v1759, 0);
  v709 = sub_26738111C();
  v711 = v710;
  v712 = *v710;
  v713 = swift_isUniquelyReferenced_nonNull_native();
  v1626 = *v711;
  *v711 = 0x8000000000000000;
  sub_266ECD368(118, 0xD000000000000011, 0x8000000267496ED0, v713);
  v714 = *v711;
  *v711 = v1626;

  v709(v1759, 0);
  v715 = sub_26738111C();
  v717 = v716;
  v718 = *v716;
  v719 = swift_isUniquelyReferenced_nonNull_native();
  v1627 = *v717;
  *v717 = 0x8000000000000000;
  sub_266ECD368(119, 0xD000000000000011, 0x8000000267496EF0, v719);
  v720 = *v717;
  *v717 = v1627;

  v715(v1759, 0);
  v721 = sub_26738111C();
  v723 = v722;
  v724 = *v722;
  v725 = swift_isUniquelyReferenced_nonNull_native();
  v1628 = *v723;
  *v723 = 0x8000000000000000;
  sub_266ECD368(120, 0xD000000000000011, 0x8000000267496F10, v725);
  v726 = *v723;
  *v723 = v1628;

  v721(v1759, 0);
  v727 = sub_26738111C();
  v729 = v728;
  v730 = *v728;
  v731 = swift_isUniquelyReferenced_nonNull_native();
  v1629 = *v729;
  *v729 = 0x8000000000000000;
  sub_266ECD368(121, 0xD000000000000011, 0x8000000267496F30, v731);
  v732 = *v729;
  *v729 = v1629;

  v727(v1759, 0);
  v733 = sub_26738111C();
  v735 = v734;
  v736 = *v734;
  v737 = swift_isUniquelyReferenced_nonNull_native();
  v1630 = *v735;
  *v735 = 0x8000000000000000;
  sub_266ECD368(122, 0xD000000000000011, 0x8000000267496F50, v737);
  v738 = *v735;
  *v735 = v1630;

  v733(v1759, 0);
  v739 = sub_26738111C();
  v741 = v740;
  v742 = *v740;
  v743 = swift_isUniquelyReferenced_nonNull_native();
  v1631 = *v741;
  *v741 = 0x8000000000000000;
  sub_266ECD368(123, 0xD000000000000011, 0x8000000267496F70, v743);
  v744 = *v741;
  *v741 = v1631;

  v739(v1759, 0);
  v745 = sub_26738111C();
  v747 = v746;
  v748 = *v746;
  v749 = swift_isUniquelyReferenced_nonNull_native();
  v1632 = *v747;
  *v747 = 0x8000000000000000;
  sub_266ECD368(124, 0xD000000000000011, 0x8000000267496F90, v749);
  v750 = *v747;
  *v747 = v1632;

  v745(v1759, 0);
  v751 = sub_26738111C();
  v753 = v752;
  v754 = *v752;
  v755 = swift_isUniquelyReferenced_nonNull_native();
  v1633 = *v753;
  *v753 = 0x8000000000000000;
  sub_266ECD368(125, 0xD000000000000011, 0x8000000267496FB0, v755);
  v756 = *v753;
  *v753 = v1633;

  v751(v1759, 0);
  v757 = sub_26738111C();
  v759 = v758;
  v760 = *v758;
  v761 = swift_isUniquelyReferenced_nonNull_native();
  v1634 = *v759;
  *v759 = 0x8000000000000000;
  sub_266ECD368(126, 0xD000000000000011, 0x8000000267496FD0, v761);
  v762 = *v759;
  *v759 = v1634;

  v757(v1759, 0);
  v763 = sub_26738111C();
  v765 = v764;
  v766 = *v764;
  v767 = swift_isUniquelyReferenced_nonNull_native();
  v1635 = *v765;
  *v765 = 0x8000000000000000;
  sub_266ECD368(127, 0xD000000000000011, 0x8000000267496FF0, v767);
  v768 = *v765;
  *v765 = v1635;

  v763(v1759, 0);
  v769 = sub_26738111C();
  v771 = v770;
  v772 = *v770;
  v773 = swift_isUniquelyReferenced_nonNull_native();
  v1636 = *v771;
  *v771 = 0x8000000000000000;
  sub_266ECD368(128, 0xD000000000000011, 0x8000000267497010, v773);
  v774 = *v771;
  *v771 = v1636;

  v769(v1759, 0);
  v775 = sub_26738111C();
  v777 = v776;
  v778 = *v776;
  v779 = swift_isUniquelyReferenced_nonNull_native();
  v1637 = *v777;
  *v777 = 0x8000000000000000;
  sub_266ECD368(129, 0xD000000000000011, 0x8000000267497030, v779);
  v780 = *v777;
  *v777 = v1637;

  v775(v1759, 0);
  v781 = sub_26738111C();
  v783 = v782;
  v784 = *v782;
  v785 = swift_isUniquelyReferenced_nonNull_native();
  v1638 = *v783;
  *v783 = 0x8000000000000000;
  sub_266ECD368(130, 0xD000000000000011, 0x8000000267497050, v785);
  v786 = *v783;
  *v783 = v1638;

  v781(v1759, 0);
  v787 = sub_26738111C();
  v789 = v788;
  v790 = *v788;
  v791 = swift_isUniquelyReferenced_nonNull_native();
  v1639 = *v789;
  *v789 = 0x8000000000000000;
  sub_266ECD368(131, 0xD000000000000011, 0x8000000267497070, v791);
  v792 = *v789;
  *v789 = v1639;

  v787(v1759, 0);
  v793 = sub_26738111C();
  v795 = v794;
  v796 = *v794;
  v797 = swift_isUniquelyReferenced_nonNull_native();
  v1640 = *v795;
  *v795 = 0x8000000000000000;
  sub_266ECD368(132, 0xD000000000000011, 0x8000000267497090, v797);
  v798 = *v795;
  *v795 = v1640;

  v793(v1759, 0);
  v799 = sub_26738111C();
  v801 = v800;
  v802 = *v800;
  v803 = swift_isUniquelyReferenced_nonNull_native();
  v1641 = *v801;
  *v801 = 0x8000000000000000;
  sub_266ECD368(133, 0xD000000000000011, 0x80000002674970B0, v803);
  v804 = *v801;
  *v801 = v1641;

  v799(v1759, 0);
  v805 = sub_26738111C();
  v807 = v806;
  v808 = *v806;
  v809 = swift_isUniquelyReferenced_nonNull_native();
  v1642 = *v807;
  *v807 = 0x8000000000000000;
  sub_266ECD368(134, 0xD000000000000011, 0x80000002674970D0, v809);
  v810 = *v807;
  *v807 = v1642;

  v805(v1759, 0);
  v811 = sub_26738111C();
  v813 = v812;
  v814 = *v812;
  v815 = swift_isUniquelyReferenced_nonNull_native();
  v1643 = *v813;
  *v813 = 0x8000000000000000;
  sub_266ECD368(135, 0xD000000000000011, 0x80000002674970F0, v815);
  v816 = *v813;
  *v813 = v1643;

  v811(v1759, 0);
  v817 = sub_26738111C();
  v819 = v818;
  v820 = *v818;
  v821 = swift_isUniquelyReferenced_nonNull_native();
  v1644 = *v819;
  *v819 = 0x8000000000000000;
  sub_266ECD368(136, 0xD000000000000011, 0x8000000267497110, v821);
  v822 = *v819;
  *v819 = v1644;

  v817(v1759, 0);
  v823 = sub_26738111C();
  v825 = v824;
  v826 = *v824;
  v827 = swift_isUniquelyReferenced_nonNull_native();
  v1645 = *v825;
  *v825 = 0x8000000000000000;
  sub_266ECD368(137, 0xD000000000000011, 0x8000000267497130, v827);
  v828 = *v825;
  *v825 = v1645;

  v823(v1759, 0);
  v829 = sub_26738111C();
  v831 = v830;
  v832 = *v830;
  v833 = swift_isUniquelyReferenced_nonNull_native();
  v1646 = *v831;
  *v831 = 0x8000000000000000;
  sub_266ECD368(138, 0xD000000000000011, 0x8000000267497150, v833);
  v834 = *v831;
  *v831 = v1646;

  v829(v1759, 0);
  v835 = sub_26738111C();
  v837 = v836;
  v838 = *v836;
  v839 = swift_isUniquelyReferenced_nonNull_native();
  v1647 = *v837;
  *v837 = 0x8000000000000000;
  sub_266ECD368(139, 0xD000000000000011, 0x8000000267497170, v839);
  v840 = *v837;
  *v837 = v1647;

  v835(v1759, 0);
  v841 = sub_26738111C();
  v843 = v842;
  v844 = *v842;
  v845 = swift_isUniquelyReferenced_nonNull_native();
  v1648 = *v843;
  *v843 = 0x8000000000000000;
  sub_266ECD368(140, 0xD000000000000011, 0x8000000267497190, v845);
  v846 = *v843;
  *v843 = v1648;

  v841(v1759, 0);
  v847 = sub_26738111C();
  v849 = v848;
  v850 = *v848;
  v851 = swift_isUniquelyReferenced_nonNull_native();
  v1649 = *v849;
  *v849 = 0x8000000000000000;
  sub_266ECD368(141, 0xD000000000000011, 0x80000002674971B0, v851);
  v852 = *v849;
  *v849 = v1649;

  v847(v1759, 0);
  v853 = sub_26738111C();
  v855 = v854;
  v856 = *v854;
  v857 = swift_isUniquelyReferenced_nonNull_native();
  v1650 = *v855;
  *v855 = 0x8000000000000000;
  sub_266ECD368(142, 0xD000000000000011, 0x80000002674971D0, v857);
  v858 = *v855;
  *v855 = v1650;

  v853(v1759, 0);
  v859 = sub_26738111C();
  v861 = v860;
  v862 = *v860;
  v863 = swift_isUniquelyReferenced_nonNull_native();
  v1651 = *v861;
  *v861 = 0x8000000000000000;
  sub_266ECD368(143, 0xD000000000000011, 0x80000002674971F0, v863);
  v864 = *v861;
  *v861 = v1651;

  v859(v1759, 0);
  v865 = sub_26738111C();
  v867 = v866;
  v868 = *v866;
  v869 = swift_isUniquelyReferenced_nonNull_native();
  v1652 = *v867;
  *v867 = 0x8000000000000000;
  sub_266ECD368(144, 0xD000000000000011, 0x8000000267497210, v869);
  v870 = *v867;
  *v867 = v1652;

  v865(v1759, 0);
  v871 = sub_26738111C();
  v873 = v872;
  v874 = *v872;
  v875 = swift_isUniquelyReferenced_nonNull_native();
  v1653 = *v873;
  *v873 = 0x8000000000000000;
  sub_266ECD368(145, 0xD000000000000011, 0x8000000267497230, v875);
  v876 = *v873;
  *v873 = v1653;

  v871(v1759, 0);
  v877 = sub_26738111C();
  v879 = v878;
  v880 = *v878;
  v881 = swift_isUniquelyReferenced_nonNull_native();
  v1654 = *v879;
  *v879 = 0x8000000000000000;
  sub_266ECD368(146, 0xD000000000000011, 0x8000000267497250, v881);
  v882 = *v879;
  *v879 = v1654;

  v877(v1759, 0);
  v883 = sub_26738111C();
  v885 = v884;
  v886 = *v884;
  v887 = swift_isUniquelyReferenced_nonNull_native();
  v1655 = *v885;
  *v885 = 0x8000000000000000;
  sub_266ECD368(147, 0xD000000000000011, 0x8000000267497270, v887);
  v888 = *v885;
  *v885 = v1655;

  v883(v1759, 0);
  v889 = sub_26738111C();
  v891 = v890;
  v892 = *v890;
  v893 = swift_isUniquelyReferenced_nonNull_native();
  v1656 = *v891;
  *v891 = 0x8000000000000000;
  sub_266ECD368(148, 0xD000000000000011, 0x8000000267497290, v893);
  v894 = *v891;
  *v891 = v1656;

  v889(v1759, 0);
  v895 = sub_26738111C();
  v897 = v896;
  v898 = *v896;
  v899 = swift_isUniquelyReferenced_nonNull_native();
  v1657 = *v897;
  *v897 = 0x8000000000000000;
  sub_266ECD368(149, 0xD000000000000011, 0x80000002674972B0, v899);
  v900 = *v897;
  *v897 = v1657;

  v895(v1759, 0);
  v901 = sub_26738111C();
  v903 = v902;
  v904 = *v902;
  v905 = swift_isUniquelyReferenced_nonNull_native();
  v1658 = *v903;
  *v903 = 0x8000000000000000;
  sub_266ECD368(150, 0xD000000000000011, 0x80000002674972D0, v905);
  v906 = *v903;
  *v903 = v1658;

  v901(v1759, 0);
  v907 = sub_26738111C();
  v909 = v908;
  v910 = *v908;
  v911 = swift_isUniquelyReferenced_nonNull_native();
  v1659 = *v909;
  *v909 = 0x8000000000000000;
  sub_266ECD368(151, 0xD000000000000011, 0x80000002674972F0, v911);
  v912 = *v909;
  *v909 = v1659;

  v907(v1759, 0);
  v913 = sub_26738111C();
  v915 = v914;
  v916 = *v914;
  v917 = swift_isUniquelyReferenced_nonNull_native();
  v1660 = *v915;
  *v915 = 0x8000000000000000;
  sub_266ECD368(152, 0xD000000000000011, 0x8000000267497310, v917);
  v918 = *v915;
  *v915 = v1660;

  v913(v1759, 0);
  v919 = sub_26738111C();
  v921 = v920;
  v922 = *v920;
  v923 = swift_isUniquelyReferenced_nonNull_native();
  v1661 = *v921;
  *v921 = 0x8000000000000000;
  sub_266ECD368(153, 0xD000000000000011, 0x8000000267497330, v923);
  v924 = *v921;
  *v921 = v1661;

  v919(v1759, 0);
  v925 = sub_26738111C();
  v927 = v926;
  v928 = *v926;
  v929 = swift_isUniquelyReferenced_nonNull_native();
  v1662 = *v927;
  *v927 = 0x8000000000000000;
  sub_266ECD368(154, 0xD000000000000011, 0x8000000267497350, v929);
  v930 = *v927;
  *v927 = v1662;

  v925(v1759, 0);
  v931 = sub_26738111C();
  v933 = v932;
  v934 = *v932;
  v935 = swift_isUniquelyReferenced_nonNull_native();
  v1663 = *v933;
  *v933 = 0x8000000000000000;
  sub_266ECD368(155, 0xD000000000000011, 0x8000000267497370, v935);
  v936 = *v933;
  *v933 = v1663;

  v931(v1759, 0);
  v937 = sub_26738111C();
  v939 = v938;
  v940 = *v938;
  v941 = swift_isUniquelyReferenced_nonNull_native();
  v1664 = *v939;
  *v939 = 0x8000000000000000;
  sub_266ECD368(156, 0xD000000000000011, 0x8000000267497390, v941);
  v942 = *v939;
  *v939 = v1664;

  v937(v1759, 0);
  v943 = sub_26738111C();
  v945 = v944;
  v946 = *v944;
  v947 = swift_isUniquelyReferenced_nonNull_native();
  v1665 = *v945;
  *v945 = 0x8000000000000000;
  sub_266ECD368(157, 0xD000000000000011, 0x80000002674973B0, v947);
  v948 = *v945;
  *v945 = v1665;

  v943(v1759, 0);
  v949 = sub_26738111C();
  v951 = v950;
  v952 = *v950;
  v953 = swift_isUniquelyReferenced_nonNull_native();
  v1666 = *v951;
  *v951 = 0x8000000000000000;
  sub_266ECD368(158, 0xD000000000000011, 0x80000002674973D0, v953);
  v954 = *v951;
  *v951 = v1666;

  v949(v1759, 0);
  v955 = sub_26738111C();
  v957 = v956;
  v958 = *v956;
  v959 = swift_isUniquelyReferenced_nonNull_native();
  v1667 = *v957;
  *v957 = 0x8000000000000000;
  sub_266ECD368(159, 0xD000000000000011, 0x80000002674973F0, v959);
  v960 = *v957;
  *v957 = v1667;

  v955(v1759, 0);
  v961 = sub_26738111C();
  v963 = v962;
  v964 = *v962;
  v965 = swift_isUniquelyReferenced_nonNull_native();
  v1668 = *v963;
  *v963 = 0x8000000000000000;
  sub_266ECD368(160, 0xD000000000000011, 0x8000000267497410, v965);
  v966 = *v963;
  *v963 = v1668;

  v961(v1759, 0);
  v967 = sub_26738111C();
  v969 = v968;
  v970 = *v968;
  v971 = swift_isUniquelyReferenced_nonNull_native();
  v1669 = *v969;
  *v969 = 0x8000000000000000;
  sub_266ECD368(161, 0xD000000000000011, 0x8000000267497430, v971);
  v972 = *v969;
  *v969 = v1669;

  v967(v1759, 0);
  v973 = sub_26738111C();
  v975 = v974;
  v976 = *v974;
  v977 = swift_isUniquelyReferenced_nonNull_native();
  v1670 = *v975;
  *v975 = 0x8000000000000000;
  sub_266ECD368(162, 0xD000000000000011, 0x8000000267497450, v977);
  v978 = *v975;
  *v975 = v1670;

  v973(v1759, 0);
  v979 = sub_26738111C();
  v981 = v980;
  v982 = *v980;
  v983 = swift_isUniquelyReferenced_nonNull_native();
  v1671 = *v981;
  *v981 = 0x8000000000000000;
  sub_266ECD368(163, 0xD000000000000011, 0x8000000267497470, v983);
  v984 = *v981;
  *v981 = v1671;

  v979(v1759, 0);
  v985 = sub_26738111C();
  v987 = v986;
  v988 = *v986;
  v989 = swift_isUniquelyReferenced_nonNull_native();
  v1672 = *v987;
  *v987 = 0x8000000000000000;
  sub_266ECD368(164, 0xD000000000000011, 0x8000000267497490, v989);
  v990 = *v987;
  *v987 = v1672;

  v985(v1759, 0);
  v991 = sub_26738111C();
  v993 = v992;
  v994 = *v992;
  v995 = swift_isUniquelyReferenced_nonNull_native();
  v1673 = *v993;
  *v993 = 0x8000000000000000;
  sub_266ECD368(165, 0xD000000000000011, 0x80000002674974B0, v995);
  v996 = *v993;
  *v993 = v1673;

  v991(v1759, 0);
  v997 = sub_26738111C();
  v999 = v998;
  v1000 = *v998;
  v1001 = swift_isUniquelyReferenced_nonNull_native();
  v1674 = *v999;
  *v999 = 0x8000000000000000;
  sub_266ECD368(166, 0xD000000000000011, 0x80000002674974D0, v1001);
  v1002 = *v999;
  *v999 = v1674;

  v997(v1759, 0);
  v1003 = sub_26738111C();
  v1005 = v1004;
  v1006 = *v1004;
  v1007 = swift_isUniquelyReferenced_nonNull_native();
  v1675 = *v1005;
  *v1005 = 0x8000000000000000;
  sub_266ECD368(167, 0xD000000000000011, 0x80000002674974F0, v1007);
  v1008 = *v1005;
  *v1005 = v1675;

  v1003(v1759, 0);
  v1009 = sub_26738111C();
  v1011 = v1010;
  v1012 = *v1010;
  v1013 = swift_isUniquelyReferenced_nonNull_native();
  v1676 = *v1011;
  *v1011 = 0x8000000000000000;
  sub_266ECD368(168, 0xD000000000000011, 0x8000000267497510, v1013);
  v1014 = *v1011;
  *v1011 = v1676;

  v1009(v1759, 0);
  v1015 = sub_26738111C();
  v1017 = v1016;
  v1018 = *v1016;
  v1019 = swift_isUniquelyReferenced_nonNull_native();
  v1677 = *v1017;
  *v1017 = 0x8000000000000000;
  sub_266ECD368(169, 0xD000000000000011, 0x8000000267497530, v1019);
  v1020 = *v1017;
  *v1017 = v1677;

  v1015(v1759, 0);
  v1021 = sub_26738111C();
  v1023 = v1022;
  v1024 = *v1022;
  v1025 = swift_isUniquelyReferenced_nonNull_native();
  v1678 = *v1023;
  *v1023 = 0x8000000000000000;
  sub_266ECD368(170, 0xD000000000000011, 0x8000000267497550, v1025);
  v1026 = *v1023;
  *v1023 = v1678;

  v1021(v1759, 0);
  v1027 = sub_26738111C();
  v1029 = v1028;
  v1030 = *v1028;
  v1031 = swift_isUniquelyReferenced_nonNull_native();
  v1679 = *v1029;
  *v1029 = 0x8000000000000000;
  sub_266ECD368(171, 0xD000000000000011, 0x8000000267497570, v1031);
  v1032 = *v1029;
  *v1029 = v1679;

  v1027(v1759, 0);
  v1033 = sub_26738111C();
  v1035 = v1034;
  v1036 = *v1034;
  v1037 = swift_isUniquelyReferenced_nonNull_native();
  v1680 = *v1035;
  *v1035 = 0x8000000000000000;
  sub_266ECD368(172, 0xD000000000000011, 0x8000000267497590, v1037);
  v1038 = *v1035;
  *v1035 = v1680;

  v1033(v1759, 0);
  v1039 = sub_26738111C();
  v1041 = v1040;
  v1042 = *v1040;
  v1043 = swift_isUniquelyReferenced_nonNull_native();
  v1681 = *v1041;
  *v1041 = 0x8000000000000000;
  sub_266ECD368(173, 0xD000000000000011, 0x80000002674975B0, v1043);
  v1044 = *v1041;
  *v1041 = v1681;

  v1039(v1759, 0);
  v1045 = sub_26738111C();
  v1047 = v1046;
  v1048 = *v1046;
  v1049 = swift_isUniquelyReferenced_nonNull_native();
  v1682 = *v1047;
  *v1047 = 0x8000000000000000;
  sub_266ECD368(174, 0xD000000000000011, 0x80000002674975D0, v1049);
  v1050 = *v1047;
  *v1047 = v1682;

  v1045(v1759, 0);
  v1051 = sub_26738111C();
  v1053 = v1052;
  v1054 = *v1052;
  v1055 = swift_isUniquelyReferenced_nonNull_native();
  v1683 = *v1053;
  *v1053 = 0x8000000000000000;
  sub_266ECD368(175, 0xD000000000000011, 0x80000002674975F0, v1055);
  v1056 = *v1053;
  *v1053 = v1683;

  v1051(v1759, 0);
  v1057 = sub_26738111C();
  v1059 = v1058;
  v1060 = *v1058;
  v1061 = swift_isUniquelyReferenced_nonNull_native();
  v1684 = *v1059;
  *v1059 = 0x8000000000000000;
  sub_266ECD368(176, 0xD000000000000011, 0x8000000267497610, v1061);
  v1062 = *v1059;
  *v1059 = v1684;

  v1057(v1759, 0);
  v1063 = sub_26738111C();
  v1065 = v1064;
  v1066 = *v1064;
  v1067 = swift_isUniquelyReferenced_nonNull_native();
  v1685 = *v1065;
  *v1065 = 0x8000000000000000;
  sub_266ECD368(177, 0xD000000000000011, 0x8000000267497630, v1067);
  v1068 = *v1065;
  *v1065 = v1685;

  v1063(v1759, 0);
  v1069 = sub_26738111C();
  v1071 = v1070;
  v1072 = *v1070;
  v1073 = swift_isUniquelyReferenced_nonNull_native();
  v1686 = *v1071;
  *v1071 = 0x8000000000000000;
  sub_266ECD368(178, 0xD000000000000011, 0x8000000267497650, v1073);
  v1074 = *v1071;
  *v1071 = v1686;

  v1069(v1759, 0);
  v1075 = sub_26738111C();
  v1077 = v1076;
  v1078 = *v1076;
  v1079 = swift_isUniquelyReferenced_nonNull_native();
  v1687 = *v1077;
  *v1077 = 0x8000000000000000;
  sub_266ECD368(179, 0xD000000000000011, 0x8000000267497670, v1079);
  v1080 = *v1077;
  *v1077 = v1687;

  v1075(v1759, 0);
  v1081 = sub_26738111C();
  v1083 = v1082;
  v1084 = *v1082;
  v1085 = swift_isUniquelyReferenced_nonNull_native();
  v1688 = *v1083;
  *v1083 = 0x8000000000000000;
  sub_266ECD368(180, 0xD000000000000011, 0x8000000267497690, v1085);
  v1086 = *v1083;
  *v1083 = v1688;

  v1081(v1759, 0);
  v1087 = sub_26738111C();
  v1089 = v1088;
  v1090 = *v1088;
  v1091 = swift_isUniquelyReferenced_nonNull_native();
  v1689 = *v1089;
  *v1089 = 0x8000000000000000;
  sub_266ECD368(181, 0xD000000000000011, 0x80000002674976B0, v1091);
  v1092 = *v1089;
  *v1089 = v1689;

  v1087(v1759, 0);
  v1093 = sub_26738111C();
  v1095 = v1094;
  v1096 = *v1094;
  v1097 = swift_isUniquelyReferenced_nonNull_native();
  v1690 = *v1095;
  *v1095 = 0x8000000000000000;
  sub_266ECD368(182, 0xD000000000000011, 0x80000002674976D0, v1097);
  v1098 = *v1095;
  *v1095 = v1690;

  v1093(v1759, 0);
  v1099 = sub_26738111C();
  v1101 = v1100;
  v1102 = *v1100;
  v1103 = swift_isUniquelyReferenced_nonNull_native();
  v1691 = *v1101;
  *v1101 = 0x8000000000000000;
  sub_266ECD368(183, 0xD000000000000011, 0x80000002674976F0, v1103);
  v1104 = *v1101;
  *v1101 = v1691;

  v1099(v1759, 0);
  v1105 = sub_26738111C();
  v1107 = v1106;
  v1108 = *v1106;
  v1109 = swift_isUniquelyReferenced_nonNull_native();
  v1692 = *v1107;
  *v1107 = 0x8000000000000000;
  sub_266ECD368(184, 0xD000000000000011, 0x8000000267497710, v1109);
  v1110 = *v1107;
  *v1107 = v1692;

  v1105(v1759, 0);
  v1111 = sub_26738111C();
  v1113 = v1112;
  v1114 = *v1112;
  v1115 = swift_isUniquelyReferenced_nonNull_native();
  v1693 = *v1113;
  *v1113 = 0x8000000000000000;
  sub_266ECD368(185, 0xD000000000000011, 0x8000000267497730, v1115);
  v1116 = *v1113;
  *v1113 = v1693;

  v1111(v1759, 0);
  v1117 = sub_26738111C();
  v1119 = v1118;
  v1120 = *v1118;
  v1121 = swift_isUniquelyReferenced_nonNull_native();
  v1694 = *v1119;
  *v1119 = 0x8000000000000000;
  sub_266ECD368(186, 0xD000000000000011, 0x8000000267497750, v1121);
  v1122 = *v1119;
  *v1119 = v1694;

  v1117(v1759, 0);
  v1123 = sub_26738111C();
  v1125 = v1124;
  v1126 = *v1124;
  v1127 = swift_isUniquelyReferenced_nonNull_native();
  v1695 = *v1125;
  *v1125 = 0x8000000000000000;
  sub_266ECD368(187, 0xD000000000000011, 0x8000000267497770, v1127);
  v1128 = *v1125;
  *v1125 = v1695;

  v1123(v1759, 0);
  v1129 = sub_26738111C();
  v1131 = v1130;
  v1132 = *v1130;
  v1133 = swift_isUniquelyReferenced_nonNull_native();
  v1696 = *v1131;
  *v1131 = 0x8000000000000000;
  sub_266ECD368(188, 0xD000000000000011, 0x8000000267497790, v1133);
  v1134 = *v1131;
  *v1131 = v1696;

  v1129(v1759, 0);
  v1135 = sub_26738111C();
  v1137 = v1136;
  v1138 = *v1136;
  v1139 = swift_isUniquelyReferenced_nonNull_native();
  v1697 = *v1137;
  *v1137 = 0x8000000000000000;
  sub_266ECD368(189, 0xD000000000000011, 0x80000002674977B0, v1139);
  v1140 = *v1137;
  *v1137 = v1697;

  v1135(v1759, 0);
  v1141 = sub_26738111C();
  v1143 = v1142;
  v1144 = *v1142;
  v1145 = swift_isUniquelyReferenced_nonNull_native();
  v1698 = *v1143;
  *v1143 = 0x8000000000000000;
  sub_266ECD368(190, 0xD000000000000011, 0x80000002674977D0, v1145);
  v1146 = *v1143;
  *v1143 = v1698;

  v1141(v1759, 0);
  v1147 = sub_26738111C();
  v1149 = v1148;
  v1150 = *v1148;
  v1151 = swift_isUniquelyReferenced_nonNull_native();
  v1699 = *v1149;
  *v1149 = 0x8000000000000000;
  sub_266ECD368(191, 0xD000000000000011, 0x80000002674977F0, v1151);
  v1152 = *v1149;
  *v1149 = v1699;

  v1147(v1759, 0);
  v1153 = sub_26738111C();
  v1155 = v1154;
  v1156 = *v1154;
  v1157 = swift_isUniquelyReferenced_nonNull_native();
  v1700 = *v1155;
  *v1155 = 0x8000000000000000;
  sub_266ECD368(192, 0xD000000000000011, 0x8000000267497810, v1157);
  v1158 = *v1155;
  *v1155 = v1700;

  v1153(v1759, 0);
  v1159 = sub_26738111C();
  v1161 = v1160;
  v1162 = *v1160;
  v1163 = swift_isUniquelyReferenced_nonNull_native();
  v1701 = *v1161;
  *v1161 = 0x8000000000000000;
  sub_266ECD368(193, 0xD000000000000011, 0x8000000267497830, v1163);
  v1164 = *v1161;
  *v1161 = v1701;

  v1159(v1759, 0);
  v1165 = sub_26738111C();
  v1167 = v1166;
  v1168 = *v1166;
  v1169 = swift_isUniquelyReferenced_nonNull_native();
  v1702 = *v1167;
  *v1167 = 0x8000000000000000;
  sub_266ECD368(194, 0xD000000000000011, 0x8000000267497850, v1169);
  v1170 = *v1167;
  *v1167 = v1702;

  v1165(v1759, 0);
  v1171 = sub_26738111C();
  v1173 = v1172;
  v1174 = *v1172;
  v1175 = swift_isUniquelyReferenced_nonNull_native();
  v1703 = *v1173;
  *v1173 = 0x8000000000000000;
  sub_266ECD368(195, 0xD000000000000011, 0x8000000267497870, v1175);
  v1176 = *v1173;
  *v1173 = v1703;

  v1171(v1759, 0);
  v1177 = sub_26738111C();
  v1179 = v1178;
  v1180 = *v1178;
  v1181 = swift_isUniquelyReferenced_nonNull_native();
  v1704 = *v1179;
  *v1179 = 0x8000000000000000;
  sub_266ECD368(196, 0xD000000000000011, 0x8000000267497890, v1181);
  v1182 = *v1179;
  *v1179 = v1704;

  v1177(v1759, 0);
  v1183 = sub_26738111C();
  v1185 = v1184;
  v1186 = *v1184;
  v1187 = swift_isUniquelyReferenced_nonNull_native();
  v1705 = *v1185;
  *v1185 = 0x8000000000000000;
  sub_266ECD368(197, 0xD000000000000011, 0x80000002674978B0, v1187);
  v1188 = *v1185;
  *v1185 = v1705;

  v1183(v1759, 0);
  v1189 = sub_26738111C();
  v1191 = v1190;
  v1192 = *v1190;
  v1193 = swift_isUniquelyReferenced_nonNull_native();
  v1706 = *v1191;
  *v1191 = 0x8000000000000000;
  sub_266ECD368(198, 0xD000000000000011, 0x80000002674978D0, v1193);
  v1194 = *v1191;
  *v1191 = v1706;

  v1189(v1759, 0);
  v1195 = sub_26738111C();
  v1197 = v1196;
  v1198 = *v1196;
  v1199 = swift_isUniquelyReferenced_nonNull_native();
  v1707 = *v1197;
  *v1197 = 0x8000000000000000;
  sub_266ECD368(199, 0xD000000000000011, 0x80000002674978F0, v1199);
  v1200 = *v1197;
  *v1197 = v1707;

  v1195(v1759, 0);
  v1201 = sub_26738111C();
  v1203 = v1202;
  v1204 = *v1202;
  v1205 = swift_isUniquelyReferenced_nonNull_native();
  v1708 = *v1203;
  *v1203 = 0x8000000000000000;
  sub_266ECD368(200, 0xD000000000000011, 0x8000000267497910, v1205);
  v1206 = *v1203;
  *v1203 = v1708;

  v1201(v1759, 0);
  v1207 = sub_26738111C();
  v1209 = v1208;
  v1210 = *v1208;
  v1211 = swift_isUniquelyReferenced_nonNull_native();
  v1709 = *v1209;
  *v1209 = 0x8000000000000000;
  sub_266ECD368(201, 0xD000000000000011, 0x8000000267497930, v1211);
  v1212 = *v1209;
  *v1209 = v1709;

  v1207(v1759, 0);
  v1213 = sub_26738111C();
  v1215 = v1214;
  v1216 = *v1214;
  v1217 = swift_isUniquelyReferenced_nonNull_native();
  v1710 = *v1215;
  *v1215 = 0x8000000000000000;
  sub_266ECD368(202, 0xD000000000000011, 0x8000000267497950, v1217);
  v1218 = *v1215;
  *v1215 = v1710;

  v1213(v1759, 0);
  v1219 = sub_26738111C();
  v1221 = v1220;
  v1222 = *v1220;
  v1223 = swift_isUniquelyReferenced_nonNull_native();
  v1711 = *v1221;
  *v1221 = 0x8000000000000000;
  sub_266ECD368(203, 0xD000000000000011, 0x8000000267497970, v1223);
  v1224 = *v1221;
  *v1221 = v1711;

  v1219(v1759, 0);
  v1225 = sub_26738111C();
  v1227 = v1226;
  v1228 = *v1226;
  v1229 = swift_isUniquelyReferenced_nonNull_native();
  v1712 = *v1227;
  *v1227 = 0x8000000000000000;
  sub_266ECD368(204, 0xD000000000000011, 0x8000000267497990, v1229);
  v1230 = *v1227;
  *v1227 = v1712;

  v1225(v1759, 0);
  v1231 = sub_26738111C();
  v1233 = v1232;
  v1234 = *v1232;
  v1235 = swift_isUniquelyReferenced_nonNull_native();
  v1713 = *v1233;
  *v1233 = 0x8000000000000000;
  sub_266ECD368(205, 0xD000000000000011, 0x80000002674979B0, v1235);
  v1236 = *v1233;
  *v1233 = v1713;

  v1231(v1759, 0);
  v1237 = sub_26738111C();
  v1239 = v1238;
  v1240 = *v1238;
  v1241 = swift_isUniquelyReferenced_nonNull_native();
  v1714 = *v1239;
  *v1239 = 0x8000000000000000;
  sub_266ECD368(206, 0xD000000000000011, 0x80000002674979D0, v1241);
  v1242 = *v1239;
  *v1239 = v1714;

  v1237(v1759, 0);
  v1243 = sub_26738111C();
  v1245 = v1244;
  v1246 = *v1244;
  v1247 = swift_isUniquelyReferenced_nonNull_native();
  v1715 = *v1245;
  *v1245 = 0x8000000000000000;
  sub_266ECD368(207, 0xD000000000000011, 0x80000002674979F0, v1247);
  v1248 = *v1245;
  *v1245 = v1715;

  v1243(v1759, 0);
  v1249 = sub_26738111C();
  v1251 = v1250;
  v1252 = *v1250;
  v1253 = swift_isUniquelyReferenced_nonNull_native();
  v1716 = *v1251;
  *v1251 = 0x8000000000000000;
  sub_266ECD368(208, 0xD000000000000011, 0x8000000267497A10, v1253);
  v1254 = *v1251;
  *v1251 = v1716;

  v1249(v1759, 0);
  v1255 = sub_26738111C();
  v1257 = v1256;
  v1258 = *v1256;
  v1259 = swift_isUniquelyReferenced_nonNull_native();
  v1717 = *v1257;
  *v1257 = 0x8000000000000000;
  sub_266ECD368(209, 0xD000000000000011, 0x8000000267497A30, v1259);
  v1260 = *v1257;
  *v1257 = v1717;

  v1255(v1759, 0);
  v1261 = sub_26738111C();
  v1263 = v1262;
  v1264 = *v1262;
  v1265 = swift_isUniquelyReferenced_nonNull_native();
  v1718 = *v1263;
  *v1263 = 0x8000000000000000;
  sub_266ECD368(210, 0xD000000000000011, 0x8000000267497A50, v1265);
  v1266 = *v1263;
  *v1263 = v1718;

  v1261(v1759, 0);
  v1267 = sub_26738111C();
  v1269 = v1268;
  v1270 = *v1268;
  v1271 = swift_isUniquelyReferenced_nonNull_native();
  v1719 = *v1269;
  *v1269 = 0x8000000000000000;
  sub_266ECD368(211, 0xD000000000000011, 0x8000000267497A70, v1271);
  v1272 = *v1269;
  *v1269 = v1719;

  v1267(v1759, 0);
  v1273 = sub_26738111C();
  v1275 = v1274;
  v1276 = *v1274;
  v1277 = swift_isUniquelyReferenced_nonNull_native();
  v1720 = *v1275;
  *v1275 = 0x8000000000000000;
  sub_266ECD368(212, 0xD000000000000011, 0x8000000267497A90, v1277);
  v1278 = *v1275;
  *v1275 = v1720;

  v1273(v1759, 0);
  v1279 = sub_26738111C();
  v1281 = v1280;
  v1282 = *v1280;
  v1283 = swift_isUniquelyReferenced_nonNull_native();
  v1721 = *v1281;
  *v1281 = 0x8000000000000000;
  sub_266ECD368(213, 0xD000000000000011, 0x8000000267497AB0, v1283);
  v1284 = *v1281;
  *v1281 = v1721;

  v1279(v1759, 0);
  v1285 = sub_26738111C();
  v1287 = v1286;
  v1288 = *v1286;
  v1289 = swift_isUniquelyReferenced_nonNull_native();
  v1722 = *v1287;
  *v1287 = 0x8000000000000000;
  sub_266ECD368(214, 0xD000000000000011, 0x8000000267497AD0, v1289);
  v1290 = *v1287;
  *v1287 = v1722;

  v1285(v1759, 0);
  v1291 = sub_26738111C();
  v1293 = v1292;
  v1294 = *v1292;
  v1295 = swift_isUniquelyReferenced_nonNull_native();
  v1723 = *v1293;
  *v1293 = 0x8000000000000000;
  sub_266ECD368(215, 0xD000000000000011, 0x8000000267497AF0, v1295);
  v1296 = *v1293;
  *v1293 = v1723;

  v1291(v1759, 0);
  v1297 = sub_26738111C();
  v1299 = v1298;
  v1300 = *v1298;
  v1301 = swift_isUniquelyReferenced_nonNull_native();
  v1724 = *v1299;
  *v1299 = 0x8000000000000000;
  sub_266ECD368(216, 0xD000000000000011, 0x8000000267497B10, v1301);
  v1302 = *v1299;
  *v1299 = v1724;

  v1297(v1759, 0);
  v1303 = sub_26738111C();
  v1305 = v1304;
  v1306 = *v1304;
  v1307 = swift_isUniquelyReferenced_nonNull_native();
  v1725 = *v1305;
  *v1305 = 0x8000000000000000;
  sub_266ECD368(217, 0xD000000000000011, 0x8000000267497B30, v1307);
  v1308 = *v1305;
  *v1305 = v1725;

  v1303(v1759, 0);
  v1309 = sub_26738111C();
  v1311 = v1310;
  v1312 = *v1310;
  v1313 = swift_isUniquelyReferenced_nonNull_native();
  v1726 = *v1311;
  *v1311 = 0x8000000000000000;
  sub_266ECD368(218, 0xD000000000000011, 0x8000000267497B50, v1313);
  v1314 = *v1311;
  *v1311 = v1726;

  v1309(v1759, 0);
  v1315 = sub_26738111C();
  v1317 = v1316;
  v1318 = *v1316;
  v1319 = swift_isUniquelyReferenced_nonNull_native();
  v1727 = *v1317;
  *v1317 = 0x8000000000000000;
  sub_266ECD368(219, 0xD000000000000011, 0x8000000267497B70, v1319);
  v1320 = *v1317;
  *v1317 = v1727;

  v1315(v1759, 0);
  v1321 = sub_26738111C();
  v1323 = v1322;
  v1324 = *v1322;
  v1325 = swift_isUniquelyReferenced_nonNull_native();
  v1728 = *v1323;
  *v1323 = 0x8000000000000000;
  sub_266ECD368(220, 0xD000000000000011, 0x8000000267497B90, v1325);
  v1326 = *v1323;
  *v1323 = v1728;

  v1321(v1759, 0);
  v1327 = sub_26738111C();
  v1329 = v1328;
  v1330 = *v1328;
  v1331 = swift_isUniquelyReferenced_nonNull_native();
  v1729 = *v1329;
  *v1329 = 0x8000000000000000;
  sub_266ECD368(221, 0xD000000000000011, 0x8000000267497BB0, v1331);
  v1332 = *v1329;
  *v1329 = v1729;

  v1327(v1759, 0);
  v1333 = sub_26738111C();
  v1335 = v1334;
  v1336 = *v1334;
  v1337 = swift_isUniquelyReferenced_nonNull_native();
  v1730 = *v1335;
  *v1335 = 0x8000000000000000;
  sub_266ECD368(222, 0xD000000000000011, 0x8000000267497BD0, v1337);
  v1338 = *v1335;
  *v1335 = v1730;

  v1333(v1759, 0);
  v1339 = sub_26738111C();
  v1341 = v1340;
  v1342 = *v1340;
  v1343 = swift_isUniquelyReferenced_nonNull_native();
  v1731 = *v1341;
  *v1341 = 0x8000000000000000;
  sub_266ECD368(223, 0xD000000000000011, 0x8000000267497BF0, v1343);
  v1344 = *v1341;
  *v1341 = v1731;

  v1339(v1759, 0);
  v1345 = sub_26738111C();
  v1347 = v1346;
  v1348 = *v1346;
  v1349 = swift_isUniquelyReferenced_nonNull_native();
  v1732 = *v1347;
  *v1347 = 0x8000000000000000;
  sub_266ECD368(224, 0xD000000000000011, 0x8000000267497C10, v1349);
  v1350 = *v1347;
  *v1347 = v1732;

  v1345(v1759, 0);
  v1351 = sub_26738111C();
  v1353 = v1352;
  v1354 = *v1352;
  v1355 = swift_isUniquelyReferenced_nonNull_native();
  v1733 = *v1353;
  *v1353 = 0x8000000000000000;
  sub_266ECD368(225, 0xD000000000000011, 0x8000000267497C30, v1355);
  v1356 = *v1353;
  *v1353 = v1733;

  v1351(v1759, 0);
  v1357 = sub_26738111C();
  v1359 = v1358;
  v1360 = *v1358;
  v1361 = swift_isUniquelyReferenced_nonNull_native();
  v1734 = *v1359;
  *v1359 = 0x8000000000000000;
  sub_266ECD368(226, 0xD000000000000011, 0x8000000267497C50, v1361);
  v1362 = *v1359;
  *v1359 = v1734;

  v1357(v1759, 0);
  v1363 = sub_26738111C();
  v1365 = v1364;
  v1366 = *v1364;
  v1367 = swift_isUniquelyReferenced_nonNull_native();
  v1735 = *v1365;
  *v1365 = 0x8000000000000000;
  sub_266ECD368(227, 0xD000000000000011, 0x8000000267497C70, v1367);
  v1368 = *v1365;
  *v1365 = v1735;

  v1363(v1759, 0);
  v1369 = sub_26738111C();
  v1371 = v1370;
  v1372 = *v1370;
  v1373 = swift_isUniquelyReferenced_nonNull_native();
  v1736 = *v1371;
  *v1371 = 0x8000000000000000;
  sub_266ECD368(228, 0xD000000000000011, 0x8000000267497C90, v1373);
  v1374 = *v1371;
  *v1371 = v1736;

  v1369(v1759, 0);
  v1375 = sub_26738111C();
  v1377 = v1376;
  v1378 = *v1376;
  v1379 = swift_isUniquelyReferenced_nonNull_native();
  v1737 = *v1377;
  *v1377 = 0x8000000000000000;
  sub_266ECD368(229, 0xD000000000000011, 0x8000000267497CB0, v1379);
  v1380 = *v1377;
  *v1377 = v1737;

  v1375(v1759, 0);
  v1381 = sub_26738111C();
  v1383 = v1382;
  v1384 = *v1382;
  v1385 = swift_isUniquelyReferenced_nonNull_native();
  v1738 = *v1383;
  *v1383 = 0x8000000000000000;
  sub_266ECD368(230, 0xD000000000000011, 0x8000000267497CD0, v1385);
  v1386 = *v1383;
  *v1383 = v1738;

  v1381(v1759, 0);
  v1387 = sub_26738111C();
  v1389 = v1388;
  v1390 = *v1388;
  v1391 = swift_isUniquelyReferenced_nonNull_native();
  v1739 = *v1389;
  *v1389 = 0x8000000000000000;
  sub_266ECD368(231, 0xD000000000000011, 0x8000000267497CF0, v1391);
  v1392 = *v1389;
  *v1389 = v1739;

  v1387(v1759, 0);
  v1393 = sub_26738111C();
  v1395 = v1394;
  v1396 = *v1394;
  v1397 = swift_isUniquelyReferenced_nonNull_native();
  v1740 = *v1395;
  *v1395 = 0x8000000000000000;
  sub_266ECD368(232, 0xD000000000000011, 0x8000000267497D10, v1397);
  v1398 = *v1395;
  *v1395 = v1740;

  v1393(v1759, 0);
  v1399 = sub_26738111C();
  v1401 = v1400;
  v1402 = *v1400;
  v1403 = swift_isUniquelyReferenced_nonNull_native();
  v1741 = *v1401;
  *v1401 = 0x8000000000000000;
  sub_266ECD368(233, 0xD000000000000011, 0x8000000267497D30, v1403);
  v1404 = *v1401;
  *v1401 = v1741;

  v1399(v1759, 0);
  v1405 = sub_26738111C();
  v1407 = v1406;
  v1408 = *v1406;
  v1409 = swift_isUniquelyReferenced_nonNull_native();
  v1742 = *v1407;
  *v1407 = 0x8000000000000000;
  sub_266ECD368(234, 0xD000000000000011, 0x8000000267497D50, v1409);
  v1410 = *v1407;
  *v1407 = v1742;

  v1405(v1759, 0);
  v1411 = sub_26738111C();
  v1413 = v1412;
  v1414 = *v1412;
  v1415 = swift_isUniquelyReferenced_nonNull_native();
  v1743 = *v1413;
  *v1413 = 0x8000000000000000;
  sub_266ECD368(235, 0xD000000000000011, 0x8000000267497D70, v1415);
  v1416 = *v1413;
  *v1413 = v1743;

  v1411(v1759, 0);
  v1417 = sub_26738111C();
  v1419 = v1418;
  v1420 = *v1418;
  v1421 = swift_isUniquelyReferenced_nonNull_native();
  v1744 = *v1419;
  *v1419 = 0x8000000000000000;
  sub_266ECD368(236, 0xD000000000000011, 0x8000000267497D90, v1421);
  v1422 = *v1419;
  *v1419 = v1744;

  v1417(v1759, 0);
  v1423 = sub_26738111C();
  v1425 = v1424;
  v1426 = *v1424;
  v1427 = swift_isUniquelyReferenced_nonNull_native();
  v1745 = *v1425;
  *v1425 = 0x8000000000000000;
  sub_266ECD368(237, 0xD000000000000011, 0x8000000267497DB0, v1427);
  v1428 = *v1425;
  *v1425 = v1745;

  v1423(v1759, 0);
  v1429 = sub_26738111C();
  v1431 = v1430;
  v1432 = *v1430;
  v1433 = swift_isUniquelyReferenced_nonNull_native();
  v1746 = *v1431;
  *v1431 = 0x8000000000000000;
  sub_266ECD368(238, 0xD000000000000011, 0x8000000267497DD0, v1433);
  v1434 = *v1431;
  *v1431 = v1746;

  v1429(v1759, 0);
  v1435 = sub_26738111C();
  v1437 = v1436;
  v1438 = *v1436;
  v1439 = swift_isUniquelyReferenced_nonNull_native();
  v1747 = *v1437;
  *v1437 = 0x8000000000000000;
  sub_266ECD368(239, 0xD000000000000011, 0x8000000267497DF0, v1439);
  v1440 = *v1437;
  *v1437 = v1747;

  v1435(v1759, 0);
  v1441 = sub_26738111C();
  v1443 = v1442;
  v1444 = *v1442;
  v1445 = swift_isUniquelyReferenced_nonNull_native();
  v1748 = *v1443;
  *v1443 = 0x8000000000000000;
  sub_266ECD368(240, 0xD000000000000011, 0x8000000267497E10, v1445);
  v1446 = *v1443;
  *v1443 = v1748;

  v1441(v1759, 0);
  v1447 = sub_26738111C();
  v1449 = v1448;
  v1450 = *v1448;
  v1451 = swift_isUniquelyReferenced_nonNull_native();
  v1749 = *v1449;
  *v1449 = 0x8000000000000000;
  sub_266ECD368(241, 0xD000000000000011, 0x8000000267497E30, v1451);
  v1452 = *v1449;
  *v1449 = v1749;

  v1447(v1759, 0);
  v1453 = sub_26738111C();
  v1455 = v1454;
  v1456 = *v1454;
  v1457 = swift_isUniquelyReferenced_nonNull_native();
  v1750 = *v1455;
  *v1455 = 0x8000000000000000;
  sub_266ECD368(242, 0xD000000000000011, 0x8000000267497E50, v1457);
  v1458 = *v1455;
  *v1455 = v1750;

  v1453(v1759, 0);
  v1459 = sub_26738111C();
  v1461 = v1460;
  v1462 = *v1460;
  v1463 = swift_isUniquelyReferenced_nonNull_native();
  v1751 = *v1461;
  *v1461 = 0x8000000000000000;
  sub_266ECD368(243, 0xD000000000000011, 0x8000000267497E70, v1463);
  v1464 = *v1461;
  *v1461 = v1751;

  v1459(v1759, 0);
  v1465 = sub_26738111C();
  v1467 = v1466;
  v1468 = *v1466;
  v1469 = swift_isUniquelyReferenced_nonNull_native();
  v1752 = *v1467;
  *v1467 = 0x8000000000000000;
  sub_266ECD368(244, 0xD000000000000011, 0x8000000267497E90, v1469);
  v1470 = *v1467;
  *v1467 = v1752;

  v1465(v1759, 0);
  v1471 = sub_26738111C();
  v1473 = v1472;
  v1474 = *v1472;
  v1475 = swift_isUniquelyReferenced_nonNull_native();
  v1753 = *v1473;
  *v1473 = 0x8000000000000000;
  sub_266ECD368(245, 0xD000000000000011, 0x8000000267497EB0, v1475);
  v1476 = *v1473;
  *v1473 = v1753;

  v1471(v1759, 0);
  v1477 = sub_26738111C();
  v1479 = v1478;
  v1480 = *v1478;
  v1481 = swift_isUniquelyReferenced_nonNull_native();
  v1754 = *v1479;
  *v1479 = 0x8000000000000000;
  sub_266ECD368(246, 0xD000000000000011, 0x8000000267497ED0, v1481);
  v1482 = *v1479;
  *v1479 = v1754;

  v1477(v1759, 0);
  v1483 = sub_26738111C();
  v1485 = v1484;
  v1486 = *v1484;
  v1487 = swift_isUniquelyReferenced_nonNull_native();
  v1755 = *v1485;
  *v1485 = 0x8000000000000000;
  sub_266ECD368(247, 0xD000000000000011, 0x8000000267497EF0, v1487);
  v1488 = *v1485;
  *v1485 = v1755;

  v1483(v1759, 0);
  v1489 = sub_26738111C();
  v1491 = v1490;
  v1492 = *v1490;
  v1493 = swift_isUniquelyReferenced_nonNull_native();
  v1756 = *v1491;
  *v1491 = 0x8000000000000000;
  sub_266ECD368(248, 0xD000000000000011, 0x8000000267497F10, v1493);
  v1494 = *v1491;
  *v1491 = v1756;

  v1489(v1759, 0);
  v1495 = sub_26738111C();
  v1497 = v1496;
  v1498 = *v1496;
  v1499 = swift_isUniquelyReferenced_nonNull_native();
  v1757 = *v1497;
  *v1497 = 0x8000000000000000;
  sub_266ECD368(249, 0xD000000000000011, 0x8000000267497F30, v1499);
  v1500 = *v1497;
  *v1497 = v1757;

  v1495(v1759, 0);
  v1501 = sub_26738111C();
  v1503 = v1502;
  v1504 = *v1502;
  v1505 = swift_isUniquelyReferenced_nonNull_native();
  v1758 = *v1503;
  *v1503 = 0x8000000000000000;
  sub_266ECD368(250, 0xD000000000000011, 0x8000000267497F50, v1505);
  v1506 = *v1503;
  *v1503 = v1758;

  return v1501(v1759, 0);
}

uint64_t sub_2672E4370(uint64_t a1)
{
  v2 = sub_2672E4474(&qword_2800FA228);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672E43D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672E4474(&qword_2800FA228);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672E4474(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaISOCountryCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaISOLanguageCode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1118 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267497FA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v1118;

  v1(v1304, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v1119 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 16961, 0xE200000000000000, v11);
  v12 = *v9;
  *v9 = v1119;

  v7(v1304, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v1120 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 16705, 0xE200000000000000, v17);
  v18 = *v15;
  *v15 = v1120;

  v13(v1304, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v1121 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 17985, 0xE200000000000000, v23);
  v24 = *v21;
  *v21 = v1121;

  v19(v1304, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v1122 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 19265, 0xE200000000000000, v29);
  v30 = *v27;
  *v27 = v1122;

  v25(v1304, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v1123 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 20819, 0xE200000000000000, v35);
  v36 = *v33;
  *v33 = v1123;

  v31(v1304, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v1124 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 19777, 0xE200000000000000, v41);
  v42 = *v39;
  *v39 = v1124;

  v37(v1304, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v1125 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 21057, 0xE200000000000000, v47);
  v48 = *v45;
  *v45 = v1125;

  v43(v1304, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v1126 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 20033, 0xE200000000000000, v53);
  v54 = *v51;
  *v51 = v1126;

  v49(v1304, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v1127 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 22856, 0xE200000000000000, v59);
  v60 = *v57;
  *v57 = v1127;

  v55(v1304, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v1128 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 21313, 0xE200000000000000, v65);
  v66 = *v63;
  *v63 = v1128;

  v61(v1304, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v1129 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 22081, 0xE200000000000000, v71);
  v72 = *v69;
  *v69 = v1129;

  v67(v1304, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v1130 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 17729, 0xE200000000000000, v77);
  v78 = *v75;
  *v75 = v1130;

  v73(v1304, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v1131 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 22849, 0xE200000000000000, v83);
  v84 = *v81;
  *v81 = v1131;

  v79(v1304, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v1132 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 23105, 0xE200000000000000, v89);
  v90 = *v87;
  *v87 = v1132;

  v85(v1304, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v1133 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 19778, 0xE200000000000000, v95);
  v96 = *v93;
  *v93 = v1133;

  v91(v1304, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v1134 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 16706, 0xE200000000000000, v101);
  v102 = *v99;
  *v99 = v1134;

  v97(v1304, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v1135 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 21829, 0xE200000000000000, v107);
  v108 = *v105;
  *v105 = v1135;

  v103(v1304, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v1136 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 17730, 0xE200000000000000, v113);
  v114 = *v111;
  *v111 = v1136;

  v109(v1304, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v1137 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 20034, 0xE200000000000000, v119);
  v120 = *v117;
  *v117 = v1137;

  v115(v1304, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v1138 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 18754, 0xE200000000000000, v125);
  v126 = *v123;
  *v123 = v1138;

  v121(v1304, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v1139 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 21314, 0xE200000000000000, v131);
  v132 = *v129;
  *v129 = v1139;

  v127(v1304, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v1140 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 21058, 0xE200000000000000, v137);
  v138 = *v135;
  *v135 = v1140;

  v133(v1304, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v1141 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 18242, 0xE200000000000000, v143);
  v144 = *v141;
  *v141 = v1141;

  v139(v1304, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v1142 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 22861, 0xE200000000000000, v149);
  v150 = *v147;
  *v147 = v1142;

  v145(v1304, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v1143 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 16707, 0xE200000000000000, v155);
  v156 = *v153;
  *v153 = v1143;

  v151(v1304, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v1144 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 18499, 0xE200000000000000, v161);
  v162 = *v159;
  *v159 = v1144;

  v157(v1304, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v1145 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 17731, 0xE200000000000000, v167);
  v168 = *v165;
  *v165 = v1145;

  v163(v1304, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v1146 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 22862, 0xE200000000000000, v173);
  v174 = *v171;
  *v171 = v1146;

  v169(v1304, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v1147 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 18522, 0xE200000000000000, v179);
  v180 = *v177;
  *v177 = v1147;

  v175(v1304, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v1148 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 22083, 0xE200000000000000, v185);
  v186 = *v183;
  *v183 = v1148;

  v181(v1304, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v1149 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 22347, 0xE200000000000000, v191);
  v192 = *v189;
  *v189 = v1149;

  v187(v1304, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v1150 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 20291, 0xE200000000000000, v197);
  v198 = *v195;
  *v195 = v1150;

  v193(v1304, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v1151 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 21059, 0xE200000000000000, v203);
  v204 = *v201;
  *v201 = v1151;

  v199(v1304, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v1152 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 21064, 0xE200000000000000, v209);
  v210 = *v207;
  *v207 = v1152;

  v205(v1304, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v1153 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 21315, 0xE200000000000000, v215);
  v216 = *v213;
  *v213 = v1153;

  v211(v1304, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v1154 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 16708, 0xE200000000000000, v221);
  v222 = *v219;
  *v219 = v1154;

  v217(v1304, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v1155 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 22084, 0xE200000000000000, v227);
  v228 = *v225;
  *v225 = v1155;

  v223(v1304, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v1156 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 19534, 0xE200000000000000, v233);
  v234 = *v231;
  *v231 = v1156;

  v229(v1304, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v1157 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 23108, 0xE200000000000000, v239);
  v240 = *v237;
  *v237 = v1157;

  v235(v1304, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v1158 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 20037, 0xE200000000000000, v245);
  v246 = *v243;
  *v243 = v1158;

  v241(v1304, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v1159 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 20293, 0xE200000000000000, v251);
  v252 = *v249;
  *v249 = v1159;

  v247(v1304, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v1160 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 21573, 0xE200000000000000, v257);
  v258 = *v255;
  *v255 = v1160;

  v253(v1304, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v1161 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 17733, 0xE200000000000000, v263);
  v264 = *v261;
  *v261 = v1161;

  v259(v1304, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v1162 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 20294, 0xE200000000000000, v269);
  v270 = *v267;
  *v267 = v1162;

  v265(v1304, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v1163 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 19014, 0xE200000000000000, v275);
  v276 = *v273;
  *v273 = v1163;

  v271(v1304, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v1164 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 18758, 0xE200000000000000, v281);
  v282 = *v279;
  *v279 = v1164;

  v277(v1304, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v1165 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 21062, 0xE200000000000000, v287);
  v288 = *v285;
  *v285 = v1165;

  v283(v1304, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v1166 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 17990, 0xE200000000000000, v293);
  v294 = *v291;
  *v291 = v1166;

  v289(v1304, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v1167 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 19527, 0xE200000000000000, v299);
  v300 = *v297;
  *v297 = v1167;

  v295(v1304, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v1168 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 16715, 0xE200000000000000, v305);
  v306 = *v303;
  *v303 = v1168;

  v301(v1304, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v1169 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 17732, 0xE200000000000000, v311);
  v312 = *v309;
  *v309 = v1169;

  v307(v1304, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v1170 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 19525, 0xE200000000000000, v317);
  v318 = *v315;
  *v315 = v1170;

  v313(v1304, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v1171 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 20039, 0xE200000000000000, v323);
  v324 = *v321;
  *v321 = v1171;

  v319(v1304, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v1172 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 21831, 0xE200000000000000, v329);
  v330 = *v327;
  *v327 = v1172;

  v325(v1304, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v1173 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 21576, 0xE200000000000000, v335);
  v336 = *v333;
  *v333 = v1173;

  v331(v1304, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v1174 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 16712, 0xE200000000000000, v341);
  v342 = *v339;
  *v339 = v1174;

  v337(v1304, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v1175 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 17736, 0xE200000000000000, v347);
  v348 = *v345;
  *v345 = v1175;

  v343(v1304, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v1176 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 23112, 0xE200000000000000, v353);
  v354 = *v351;
  *v351 = v1176;

  v349(v1304, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v1177 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 18760, 0xE200000000000000, v359);
  v360 = *v357;
  *v357 = v1177;

  v355(v1304, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v1178 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 20296, 0xE200000000000000, v365);
  v366 = *v363;
  *v363 = v1178;

  v361(v1304, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v1179 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 21832, 0xE200000000000000, v371);
  v372 = *v369;
  *v369 = v1179;

  v367(v1304, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v1180 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 16713, 0xE200000000000000, v377);
  v378 = *v375;
  *v375 = v1180;

  v373(v1304, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v1181 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(63, 17481, 0xE200000000000000, v383);
  v384 = *v381;
  *v381 = v1181;

  v379(v1304, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v1182 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(64, 17737, 0xE200000000000000, v389);
  v390 = *v387;
  *v387 = v1182;

  v385(v1304, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v1183 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(65, 16711, 0xE200000000000000, v395);
  v396 = *v393;
  *v393 = v1183;

  v391(v1304, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v1184 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(66, 18249, 0xE200000000000000, v401);
  v402 = *v399;
  *v399 = v1184;

  v397(v1304, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v1185 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(67, 19273, 0xE200000000000000, v407);
  v408 = *v405;
  *v405 = v1185;

  v403(v1304, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v1186 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(68, 20297, 0xE200000000000000, v413);
  v414 = *v411;
  *v411 = v1186;

  v409(v1304, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v1187 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(69, 21321, 0xE200000000000000, v419);
  v420 = *v417;
  *v417 = v1187;

  v415(v1304, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v1188 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(70, 21577, 0xE200000000000000, v425);
  v426 = *v423;
  *v423 = v1188;

  v421(v1304, 0);
  v427 = sub_26738111C();
  v429 = v428;
  v430 = *v428;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v1189 = *v429;
  *v429 = 0x8000000000000000;
  sub_266ECD368(71, 21833, 0xE200000000000000, v431);
  v432 = *v429;
  *v429 = v1189;

  v427(v1304, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = *v434;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  v1190 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(72, 16714, 0xE200000000000000, v437);
  v438 = *v435;
  *v435 = v1190;

  v433(v1304, 0);
  v439 = sub_26738111C();
  v441 = v440;
  v442 = *v440;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v1191 = *v441;
  *v441 = 0x8000000000000000;
  sub_266ECD368(73, 22090, 0xE200000000000000, v443);
  v444 = *v441;
  *v441 = v1191;

  v439(v1304, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v1192 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(74, 19531, 0xE200000000000000, v449);
  v450 = *v447;
  *v447 = v1192;

  v445(v1304, 0);
  v451 = sub_26738111C();
  v453 = v452;
  v454 = *v452;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v1193 = *v453;
  *v453 = 0x8000000000000000;
  sub_266ECD368(75, 20043, 0xE200000000000000, v455);
  v456 = *v453;
  *v453 = v1193;

  v451(v1304, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = *v458;
  v461 = swift_isUniquelyReferenced_nonNull_native();
  v1194 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(76, 21067, 0xE200000000000000, v461);
  v462 = *v459;
  *v459 = v1194;

  v457(v1304, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v1195 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(77, 21323, 0xE200000000000000, v467);
  v468 = *v465;
  *v465 = v1195;

  v463(v1304, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = *v470;
  v473 = swift_isUniquelyReferenced_nonNull_native();
  v1196 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(78, 19275, 0xE200000000000000, v473);
  v474 = *v471;
  *v471 = v1196;

  v469(v1304, 0);
  v475 = sub_26738111C();
  v477 = v476;
  v478 = *v476;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v1197 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD368(79, 19787, 0xE200000000000000, v479);
  v480 = *v477;
  *v477 = v1197;

  v475(v1304, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = *v482;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  v1198 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(80, 18763, 0xE200000000000000, v485);
  v486 = *v483;
  *v483 = v1198;

  v481(v1304, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v1199 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(81, 22354, 0xE200000000000000, v491);
  v492 = *v489;
  *v489 = v1199;

  v487(v1304, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = *v494;
  v497 = swift_isUniquelyReferenced_nonNull_native();
  v1200 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(82, 22859, 0xE200000000000000, v497);
  v498 = *v495;
  *v495 = v1200;

  v493(v1304, 0);
  v499 = sub_26738111C();
  v501 = v500;
  v502 = *v500;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v1201 = *v501;
  *v501 = 0x8000000000000000;
  sub_266ECD368(83, 22091, 0xE200000000000000, v503);
  v504 = *v501;
  *v501 = v1201;

  v499(v1304, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v1202 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(84, 18251, 0xE200000000000000, v509);
  v510 = *v507;
  *v507 = v1202;

  v505(v1304, 0);
  v511 = sub_26738111C();
  v513 = v512;
  v514 = *v512;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v1203 = *v513;
  *v513 = 0x8000000000000000;
  sub_266ECD368(85, 20299, 0xE200000000000000, v515);
  v516 = *v513;
  *v513 = v1203;

  v511(v1304, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = *v518;
  v521 = swift_isUniquelyReferenced_nonNull_native();
  v1204 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(86, 21835, 0xE200000000000000, v521);
  v522 = *v519;
  *v519 = v1204;

  v517(v1304, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = *v524;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v1205 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(87, 19019, 0xE200000000000000, v527);
  v528 = *v525;
  *v525 = v1205;

  v523(v1304, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = *v530;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v1206 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(88, 16716, 0xE200000000000000, v533);
  v534 = *v531;
  *v531 = v1206;

  v529(v1304, 0);
  v535 = sub_26738111C();
  v537 = v536;
  v538 = *v536;
  v539 = swift_isUniquelyReferenced_nonNull_native();
  v1207 = *v537;
  *v537 = 0x8000000000000000;
  sub_266ECD368(89, 16972, 0xE200000000000000, v539);
  v540 = *v537;
  *v537 = v1207;

  v535(v1304, 0);
  v541 = sub_26738111C();
  v543 = v542;
  v544 = *v542;
  v545 = swift_isUniquelyReferenced_nonNull_native();
  v1208 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD368(90, 18252, 0xE200000000000000, v545);
  v546 = *v543;
  *v543 = v1208;

  v541(v1304, 0);
  v547 = sub_26738111C();
  v549 = v548;
  v550 = *v548;
  v551 = swift_isUniquelyReferenced_nonNull_native();
  v1209 = *v549;
  *v549 = 0x8000000000000000;
  sub_266ECD368(91, 18764, 0xE200000000000000, v551);
  v552 = *v549;
  *v549 = v1209;

  v547(v1304, 0);
  v553 = sub_26738111C();
  v555 = v554;
  v556 = *v554;
  v557 = swift_isUniquelyReferenced_nonNull_native();
  v1210 = *v555;
  *v555 = 0x8000000000000000;
  sub_266ECD368(92, 20044, 0xE200000000000000, v557);
  v558 = *v555;
  *v555 = v1210;

  v553(v1304, 0);
  v559 = sub_26738111C();
  v561 = v560;
  v562 = *v560;
  v563 = swift_isUniquelyReferenced_nonNull_native();
  v1211 = *v561;
  *v561 = 0x8000000000000000;
  sub_266ECD368(93, 20300, 0xE200000000000000, v563);
  v564 = *v561;
  *v561 = v1211;

  v559(v1304, 0);
  v565 = sub_26738111C();
  v567 = v566;
  v568 = *v566;
  v569 = swift_isUniquelyReferenced_nonNull_native();
  v1212 = *v567;
  *v567 = 0x8000000000000000;
  sub_266ECD368(94, 21580, 0xE200000000000000, v569);
  v570 = *v567;
  *v567 = v1212;

  v565(v1304, 0);
  v571 = sub_26738111C();
  v573 = v572;
  v574 = *v572;
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v1213 = *v573;
  *v573 = 0x8000000000000000;
  sub_266ECD368(95, 21836, 0xE200000000000000, v575);
  v576 = *v573;
  *v573 = v1213;

  v571(v1304, 0);
  v577 = sub_26738111C();
  v579 = v578;
  v580 = *v578;
  v581 = swift_isUniquelyReferenced_nonNull_native();
  v1214 = *v579;
  *v579 = 0x8000000000000000;
  sub_266ECD368(96, 22092, 0xE200000000000000, v581);
  v582 = *v579;
  *v579 = v1214;

  v577(v1304, 0);
  v583 = sub_26738111C();
  v585 = v584;
  v586 = *v584;
  v587 = swift_isUniquelyReferenced_nonNull_native();
  v1215 = *v585;
  *v585 = 0x8000000000000000;
  sub_266ECD368(97, 22087, 0xE200000000000000, v587);
  v588 = *v585;
  *v585 = v1215;

  v583(v1304, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = *v590;
  v593 = swift_isUniquelyReferenced_nonNull_native();
  v1216 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(98, 19277, 0xE200000000000000, v593);
  v594 = *v591;
  *v591 = v1216;

  v589(v1304, 0);
  v595 = sub_26738111C();
  v597 = v596;
  v598 = *v596;
  v599 = swift_isUniquelyReferenced_nonNull_native();
  v1217 = *v597;
  *v597 = 0x8000000000000000;
  sub_266ECD368(99, 18253, 0xE200000000000000, v599);
  v600 = *v597;
  *v597 = v1217;

  v595(v1304, 0);
  v601 = sub_26738111C();
  v603 = v602;
  v604 = *v602;
  v605 = swift_isUniquelyReferenced_nonNull_native();
  v1218 = *v603;
  *v603 = 0x8000000000000000;
  sub_266ECD368(100, 21325, 0xE200000000000000, v605);
  v606 = *v603;
  *v603 = v1218;

  v601(v1304, 0);
  v607 = sub_26738111C();
  v609 = v608;
  v610 = *v608;
  v611 = swift_isUniquelyReferenced_nonNull_native();
  v1219 = *v609;
  *v609 = 0x8000000000000000;
  sub_266ECD368(101, 19533, 0xE200000000000000, v611);
  v612 = *v609;
  *v609 = v1219;

  v607(v1304, 0);
  v613 = sub_26738111C();
  v615 = v614;
  v616 = *v614;
  v617 = swift_isUniquelyReferenced_nonNull_native();
  v1220 = *v615;
  *v615 = 0x8000000000000000;
  sub_266ECD368(102, 21581, 0xE200000000000000, v617);
  v618 = *v615;
  *v615 = v1220;

  v613(v1304, 0);
  v619 = sub_26738111C();
  v621 = v620;
  v622 = *v620;
  v623 = swift_isUniquelyReferenced_nonNull_native();
  v1221 = *v621;
  *v621 = 0x8000000000000000;
  sub_266ECD368(103, 18765, 0xE200000000000000, v623);
  v624 = *v621;
  *v621 = v1221;

  v619(v1304, 0);
  v625 = sub_26738111C();
  v627 = v626;
  v628 = *v626;
  v629 = swift_isUniquelyReferenced_nonNull_native();
  v1222 = *v627;
  *v627 = 0x8000000000000000;
  sub_266ECD368(104, 21069, 0xE200000000000000, v629);
  v630 = *v627;
  *v627 = v1222;

  v625(v1304, 0);
  v631 = sub_26738111C();
  v633 = v632;
  v634 = *v632;
  v635 = swift_isUniquelyReferenced_nonNull_native();
  v1223 = *v633;
  *v633 = 0x8000000000000000;
  sub_266ECD368(105, 18509, 0xE200000000000000, v635);
  v636 = *v633;
  *v633 = v1223;

  v631(v1304, 0);
  v637 = sub_26738111C();
  v639 = v638;
  v640 = *v638;
  v641 = swift_isUniquelyReferenced_nonNull_native();
  v1224 = *v639;
  *v639 = 0x8000000000000000;
  sub_266ECD368(106, 20045, 0xE200000000000000, v641);
  v642 = *v639;
  *v639 = v1224;

  v637(v1304, 0);
  v643 = sub_26738111C();
  v645 = v644;
  v646 = *v644;
  v647 = swift_isUniquelyReferenced_nonNull_native();
  v1225 = *v645;
  *v645 = 0x8000000000000000;
  sub_266ECD368(107, 16718, 0xE200000000000000, v647);
  v648 = *v645;
  *v645 = v1225;

  v643(v1304, 0);
  v649 = sub_26738111C();
  v651 = v650;
  v652 = *v650;
  v653 = swift_isUniquelyReferenced_nonNull_native();
  v1226 = *v651;
  *v651 = 0x8000000000000000;
  sub_266ECD368(108, 22094, 0xE200000000000000, v653);
  v654 = *v651;
  *v651 = v1226;

  v649(v1304, 0);
  v655 = sub_26738111C();
  v657 = v656;
  v658 = *v656;
  v659 = swift_isUniquelyReferenced_nonNull_native();
  v1227 = *v657;
  *v657 = 0x8000000000000000;
  sub_266ECD368(109, 17486, 0xE200000000000000, v659);
  v660 = *v657;
  *v657 = v1227;

  v655(v1304, 0);
  v661 = sub_26738111C();
  v663 = v662;
  v664 = *v662;
  v665 = swift_isUniquelyReferenced_nonNull_native();
  v1228 = *v663;
  *v663 = 0x8000000000000000;
  sub_266ECD368(110, 17742, 0xE200000000000000, v665);
  v666 = *v663;
  *v663 = v1228;

  v661(v1304, 0);
  v667 = sub_26738111C();
  v669 = v668;
  v670 = *v668;
  v671 = swift_isUniquelyReferenced_nonNull_native();
  v1229 = *v669;
  *v669 = 0x8000000000000000;
  sub_266ECD368(111, 18254, 0xE200000000000000, v671);
  v672 = *v669;
  *v669 = v1229;

  v667(v1304, 0);
  v673 = sub_26738111C();
  v675 = v674;
  v676 = *v674;
  v677 = swift_isUniquelyReferenced_nonNull_native();
  v1230 = *v675;
  *v675 = 0x8000000000000000;
  sub_266ECD368(112, 16974, 0xE200000000000000, v677);
  v678 = *v675;
  *v675 = v1230;

  v673(v1304, 0);
  v679 = sub_26738111C();
  v681 = v680;
  v682 = *v680;
  v683 = swift_isUniquelyReferenced_nonNull_native();
  v1231 = *v681;
  *v681 = 0x8000000000000000;
  sub_266ECD368(113, 20046, 0xE200000000000000, v683);
  v684 = *v681;
  *v681 = v1231;

  v679(v1304, 0);
  v685 = sub_26738111C();
  v687 = v686;
  v688 = *v686;
  v689 = swift_isUniquelyReferenced_nonNull_native();
  v1232 = *v687;
  *v687 = 0x8000000000000000;
  sub_266ECD368(114, 20302, 0xE200000000000000, v689);
  v690 = *v687;
  *v687 = v1232;

  v685(v1304, 0);
  v691 = sub_26738111C();
  v693 = v692;
  v694 = *v692;
  v695 = swift_isUniquelyReferenced_nonNull_native();
  v1233 = *v693;
  *v693 = 0x8000000000000000;
  sub_266ECD368(115, 18761, 0xE200000000000000, v695);
  v696 = *v693;
  *v693 = v1233;

  v691(v1304, 0);
  v697 = sub_26738111C();
  v699 = v698;
  v700 = *v698;
  v701 = swift_isUniquelyReferenced_nonNull_native();
  v1234 = *v699;
  *v699 = 0x8000000000000000;
  sub_266ECD368(116, 21070, 0xE200000000000000, v701);
  v702 = *v699;
  *v699 = v1234;

  v697(v1304, 0);
  v703 = sub_26738111C();
  v705 = v704;
  v706 = *v704;
  v707 = swift_isUniquelyReferenced_nonNull_native();
  v1235 = *v705;
  *v705 = 0x8000000000000000;
  sub_266ECD368(117, 17231, 0xE200000000000000, v707);
  v708 = *v705;
  *v705 = v1235;

  v703(v1304, 0);
  v709 = sub_26738111C();
  v711 = v710;
  v712 = *v710;
  v713 = swift_isUniquelyReferenced_nonNull_native();
  v1236 = *v711;
  *v711 = 0x8000000000000000;
  sub_266ECD368(118, 19023, 0xE200000000000000, v713);
  v714 = *v711;
  *v711 = v1236;

  v709(v1304, 0);
  v715 = sub_26738111C();
  v717 = v716;
  v718 = *v716;
  v719 = swift_isUniquelyReferenced_nonNull_native();
  v1237 = *v717;
  *v717 = 0x8000000000000000;
  sub_266ECD368(119, 21827, 0xE200000000000000, v719);
  v720 = *v717;
  *v717 = v1237;

  v715(v1304, 0);
  v721 = sub_26738111C();
  v723 = v722;
  v724 = *v722;
  v725 = swift_isUniquelyReferenced_nonNull_native();
  v1238 = *v723;
  *v723 = 0x8000000000000000;
  sub_266ECD368(120, 19791, 0xE200000000000000, v725);
  v726 = *v723;
  *v723 = v1238;

  v721(v1304, 0);
  v727 = sub_26738111C();
  v729 = v728;
  v730 = *v728;
  v731 = swift_isUniquelyReferenced_nonNull_native();
  v1239 = *v729;
  *v729 = 0x8000000000000000;
  sub_266ECD368(121, 21071, 0xE200000000000000, v731);
  v732 = *v729;
  *v729 = v1239;

  v727(v1304, 0);
  v733 = sub_26738111C();
  v735 = v734;
  v736 = *v734;
  v737 = swift_isUniquelyReferenced_nonNull_native();
  v1240 = *v735;
  *v735 = 0x8000000000000000;
  sub_266ECD368(122, 21327, 0xE200000000000000, v737);
  v738 = *v735;
  *v735 = v1240;

  v733(v1304, 0);
  v739 = sub_26738111C();
  v741 = v740;
  v742 = *v740;
  v743 = swift_isUniquelyReferenced_nonNull_native();
  v1241 = *v741;
  *v741 = 0x8000000000000000;
  sub_266ECD368(123, 16720, 0xE200000000000000, v743);
  v744 = *v741;
  *v741 = v1241;

  v739(v1304, 0);
  v745 = sub_26738111C();
  v747 = v746;
  v748 = *v746;
  v749 = swift_isUniquelyReferenced_nonNull_native();
  v1242 = *v747;
  *v747 = 0x8000000000000000;
  sub_266ECD368(124, 18768, 0xE200000000000000, v749);
  v750 = *v747;
  *v747 = v1242;

  v745(v1304, 0);
  v751 = sub_26738111C();
  v753 = v752;
  v754 = *v752;
  v755 = swift_isUniquelyReferenced_nonNull_native();
  v1243 = *v753;
  *v753 = 0x8000000000000000;
  sub_266ECD368(125, 16710, 0xE200000000000000, v755);
  v756 = *v753;
  *v753 = v1243;

  v751(v1304, 0);
  v757 = sub_26738111C();
  v759 = v758;
  v760 = *v758;
  v761 = swift_isUniquelyReferenced_nonNull_native();
  v1244 = *v759;
  *v759 = 0x8000000000000000;
  sub_266ECD368(126, 19536, 0xE200000000000000, v761);
  v762 = *v759;
  *v759 = v1244;

  v757(v1304, 0);
  v763 = sub_26738111C();
  v765 = v764;
  v766 = *v764;
  v767 = swift_isUniquelyReferenced_nonNull_native();
  v1245 = *v765;
  *v765 = 0x8000000000000000;
  sub_266ECD368(127, 21328, 0xE200000000000000, v767);
  v768 = *v765;
  *v765 = v1245;

  v763(v1304, 0);
  v769 = sub_26738111C();
  v771 = v770;
  v772 = *v770;
  v773 = swift_isUniquelyReferenced_nonNull_native();
  v1246 = *v771;
  *v771 = 0x8000000000000000;
  sub_266ECD368(128, 21584, 0xE200000000000000, v773);
  v774 = *v771;
  *v771 = v1246;

  v769(v1304, 0);
  v775 = sub_26738111C();
  v777 = v776;
  v778 = *v776;
  v779 = swift_isUniquelyReferenced_nonNull_native();
  v1247 = *v777;
  *v777 = 0x8000000000000000;
  sub_266ECD368(129, 21841, 0xE200000000000000, v779);
  v780 = *v777;
  *v777 = v1247;

  v775(v1304, 0);
  v781 = sub_26738111C();
  v783 = v782;
  v784 = *v782;
  v785 = swift_isUniquelyReferenced_nonNull_native();
  v1248 = *v783;
  *v783 = 0x8000000000000000;
  sub_266ECD368(130, 19794, 0xE200000000000000, v785);
  v786 = *v783;
  *v783 = v1248;

  v781(v1304, 0);
  v787 = sub_26738111C();
  v789 = v788;
  v790 = *v788;
  v791 = swift_isUniquelyReferenced_nonNull_native();
  v1249 = *v789;
  *v789 = 0x8000000000000000;
  sub_266ECD368(131, 20050, 0xE200000000000000, v791);
  v792 = *v789;
  *v789 = v1249;

  v787(v1304, 0);
  v793 = sub_26738111C();
  v795 = v794;
  v796 = *v794;
  v797 = swift_isUniquelyReferenced_nonNull_native();
  v1250 = *v795;
  *v795 = 0x8000000000000000;
  sub_266ECD368(132, 20306, 0xE200000000000000, v797);
  v798 = *v795;
  *v795 = v1250;

  v793(v1304, 0);
  v799 = sub_26738111C();
  v801 = v800;
  v802 = *v800;
  v803 = swift_isUniquelyReferenced_nonNull_native();
  v1251 = *v801;
  *v801 = 0x8000000000000000;
  sub_266ECD368(133, 21842, 0xE200000000000000, v803);
  v804 = *v801;
  *v801 = v1251;

  v799(v1304, 0);
  v805 = sub_26738111C();
  v807 = v806;
  v808 = *v806;
  v809 = swift_isUniquelyReferenced_nonNull_native();
  v1252 = *v807;
  *v807 = 0x8000000000000000;
  sub_266ECD368(134, 16723, 0xE200000000000000, v809);
  v810 = *v807;
  *v807 = v1252;

  v805(v1304, 0);
  v811 = sub_26738111C();
  v813 = v812;
  v814 = *v812;
  v815 = swift_isUniquelyReferenced_nonNull_native();
  v1253 = *v813;
  *v813 = 0x8000000000000000;
  sub_266ECD368(135, 17235, 0xE200000000000000, v815);
  v816 = *v813;
  *v813 = v1253;

  v811(v1304, 0);
  v817 = sub_26738111C();
  v819 = v818;
  v820 = *v818;
  v821 = swift_isUniquelyReferenced_nonNull_native();
  v1254 = *v819;
  *v819 = 0x8000000000000000;
  sub_266ECD368(136, 17491, 0xE200000000000000, v821);
  v822 = *v819;
  *v819 = v1254;

  v817(v1304, 0);
  v823 = sub_26738111C();
  v825 = v824;
  v826 = *v824;
  v827 = swift_isUniquelyReferenced_nonNull_native();
  v1255 = *v825;
  *v825 = 0x8000000000000000;
  sub_266ECD368(137, 17747, 0xE200000000000000, v827);
  v828 = *v825;
  *v825 = v1255;

  v823(v1304, 0);
  v829 = sub_26738111C();
  v831 = v830;
  v832 = *v830;
  v833 = swift_isUniquelyReferenced_nonNull_native();
  v1256 = *v831;
  *v831 = 0x8000000000000000;
  sub_266ECD368(138, 19795, 0xE200000000000000, v833);
  v834 = *v831;
  *v831 = v1256;

  v829(v1304, 0);
  v835 = sub_26738111C();
  v837 = v836;
  v838 = *v836;
  v839 = swift_isUniquelyReferenced_nonNull_native();
  v1257 = *v837;
  *v837 = 0x8000000000000000;
  sub_266ECD368(139, 18259, 0xE200000000000000, v839);
  v840 = *v837;
  *v837 = v1257;

  v835(v1304, 0);
  v841 = sub_26738111C();
  v843 = v842;
  v844 = *v842;
  v845 = swift_isUniquelyReferenced_nonNull_native();
  v1258 = *v843;
  *v843 = 0x8000000000000000;
  sub_266ECD368(140, 21075, 0xE200000000000000, v845);
  v846 = *v843;
  *v843 = v1258;

  v841(v1304, 0);
  v847 = sub_26738111C();
  v849 = v848;
  v850 = *v848;
  v851 = swift_isUniquelyReferenced_nonNull_native();
  v1259 = *v849;
  *v849 = 0x8000000000000000;
  sub_266ECD368(141, 17479, 0xE200000000000000, v851);
  v852 = *v849;
  *v849 = v1259;

  v847(v1304, 0);
  v853 = sub_26738111C();
  v855 = v854;
  v856 = *v854;
  v857 = swift_isUniquelyReferenced_nonNull_native();
  v1260 = *v855;
  *v855 = 0x8000000000000000;
  sub_266ECD368(142, 20051, 0xE200000000000000, v857);
  v858 = *v855;
  *v855 = v1260;

  v853(v1304, 0);
  v859 = sub_26738111C();
  v861 = v860;
  v862 = *v860;
  v863 = swift_isUniquelyReferenced_nonNull_native();
  v1261 = *v861;
  *v861 = 0x8000000000000000;
  sub_266ECD368(143, 18771, 0xE200000000000000, v863);
  v864 = *v861;
  *v861 = v1261;

  v859(v1304, 0);
  v865 = sub_26738111C();
  v867 = v866;
  v868 = *v866;
  v869 = swift_isUniquelyReferenced_nonNull_native();
  v1262 = *v867;
  *v867 = 0x8000000000000000;
  sub_266ECD368(144, 19283, 0xE200000000000000, v869);
  v870 = *v867;
  *v867 = v1262;

  v865(v1304, 0);
  v871 = sub_26738111C();
  v873 = v872;
  v874 = *v872;
  v875 = swift_isUniquelyReferenced_nonNull_native();
  v1263 = *v873;
  *v873 = 0x8000000000000000;
  sub_266ECD368(145, 19539, 0xE200000000000000, v875);
  v876 = *v873;
  *v873 = v1263;

  v871(v1304, 0);
  v877 = sub_26738111C();
  v879 = v878;
  v880 = *v878;
  v881 = swift_isUniquelyReferenced_nonNull_native();
  v1264 = *v879;
  *v879 = 0x8000000000000000;
  sub_266ECD368(146, 20307, 0xE200000000000000, v881);
  v882 = *v879;
  *v879 = v1264;

  v877(v1304, 0);
  v883 = sub_26738111C();
  v885 = v884;
  v886 = *v884;
  v887 = swift_isUniquelyReferenced_nonNull_native();
  v1265 = *v885;
  *v885 = 0x8000000000000000;
  sub_266ECD368(147, 21587, 0xE200000000000000, v887);
  v888 = *v885;
  *v885 = v1265;

  v883(v1304, 0);
  v889 = sub_26738111C();
  v891 = v890;
  v892 = *v890;
  v893 = swift_isUniquelyReferenced_nonNull_native();
  v1266 = *v891;
  *v891 = 0x8000000000000000;
  sub_266ECD368(148, 21317, 0xE200000000000000, v893);
  v894 = *v891;
  *v891 = v1266;

  v889(v1304, 0);
  v895 = sub_26738111C();
  v897 = v896;
  v898 = *v896;
  v899 = swift_isUniquelyReferenced_nonNull_native();
  v1267 = *v897;
  *v897 = 0x8000000000000000;
  sub_266ECD368(149, 21843, 0xE200000000000000, v899);
  v900 = *v897;
  *v897 = v1267;

  v895(v1304, 0);
  v901 = sub_26738111C();
  v903 = v902;
  v904 = *v902;
  v905 = swift_isUniquelyReferenced_nonNull_native();
  v1268 = *v903;
  *v903 = 0x8000000000000000;
  sub_266ECD368(150, 22355, 0xE200000000000000, v905);
  v906 = *v903;
  *v903 = v1268;

  v901(v1304, 0);
  v907 = sub_26738111C();
  v909 = v908;
  v910 = *v908;
  v911 = swift_isUniquelyReferenced_nonNull_native();
  v1269 = *v909;
  *v909 = 0x8000000000000000;
  sub_266ECD368(151, 21331, 0xE200000000000000, v911);
  v912 = *v909;
  *v909 = v1269;

  v907(v1304, 0);
  v913 = sub_26738111C();
  v915 = v914;
  v916 = *v914;
  v917 = swift_isUniquelyReferenced_nonNull_native();
  v1270 = *v915;
  *v915 = 0x8000000000000000;
  sub_266ECD368(152, 22099, 0xE200000000000000, v917);
  v918 = *v915;
  *v915 = v1270;

  v913(v1304, 0);
  v919 = sub_26738111C();
  v921 = v920;
  v922 = *v920;
  v923 = swift_isUniquelyReferenced_nonNull_native();
  v1271 = *v921;
  *v921 = 0x8000000000000000;
  sub_266ECD368(153, 16724, 0xE200000000000000, v923);
  v924 = *v921;
  *v921 = v1271;

  v919(v1304, 0);
  v925 = sub_26738111C();
  v927 = v926;
  v928 = *v926;
  v929 = swift_isUniquelyReferenced_nonNull_native();
  v1272 = *v927;
  *v927 = 0x8000000000000000;
  sub_266ECD368(154, 17748, 0xE200000000000000, v929);
  v930 = *v927;
  *v927 = v1272;

  v925(v1304, 0);
  v931 = sub_26738111C();
  v933 = v932;
  v934 = *v932;
  v935 = swift_isUniquelyReferenced_nonNull_native();
  v1273 = *v933;
  *v933 = 0x8000000000000000;
  sub_266ECD368(155, 18260, 0xE200000000000000, v935);
  v936 = *v933;
  *v933 = v1273;

  v931(v1304, 0);
  v937 = sub_26738111C();
  v939 = v938;
  v940 = *v938;
  v941 = swift_isUniquelyReferenced_nonNull_native();
  v1274 = *v939;
  *v939 = 0x8000000000000000;
  sub_266ECD368(156, 18516, 0xE200000000000000, v941);
  v942 = *v939;
  *v939 = v1274;

  v937(v1304, 0);
  v943 = sub_26738111C();
  v945 = v944;
  v946 = *v944;
  v947 = swift_isUniquelyReferenced_nonNull_native();
  v1275 = *v945;
  *v945 = 0x8000000000000000;
  sub_266ECD368(157, 18772, 0xE200000000000000, v947);
  v948 = *v945;
  *v945 = v1275;

  v943(v1304, 0);
  v949 = sub_26738111C();
  v951 = v950;
  v952 = *v950;
  v953 = swift_isUniquelyReferenced_nonNull_native();
  v1276 = *v951;
  *v951 = 0x8000000000000000;
  sub_266ECD368(158, 20290, 0xE200000000000000, v953);
  v954 = *v951;
  *v951 = v1276;

  v949(v1304, 0);
  v955 = sub_26738111C();
  v957 = v956;
  v958 = *v956;
  v959 = swift_isUniquelyReferenced_nonNull_native();
  v1277 = *v957;
  *v957 = 0x8000000000000000;
  sub_266ECD368(159, 19284, 0xE200000000000000, v959);
  v960 = *v957;
  *v957 = v1277;

  v955(v1304, 0);
  v961 = sub_26738111C();
  v963 = v962;
  v964 = *v962;
  v965 = swift_isUniquelyReferenced_nonNull_native();
  v1278 = *v963;
  *v963 = 0x8000000000000000;
  sub_266ECD368(160, 19540, 0xE200000000000000, v965);
  v966 = *v963;
  *v963 = v1278;

  v961(v1304, 0);
  v967 = sub_26738111C();
  v969 = v968;
  v970 = *v968;
  v971 = swift_isUniquelyReferenced_nonNull_native();
  v1279 = *v969;
  *v969 = 0x8000000000000000;
  sub_266ECD368(161, 20052, 0xE200000000000000, v971);
  v972 = *v969;
  *v969 = v1279;

  v967(v1304, 0);
  v973 = sub_26738111C();
  v975 = v974;
  v976 = *v974;
  v977 = swift_isUniquelyReferenced_nonNull_native();
  v1280 = *v975;
  *v975 = 0x8000000000000000;
  sub_266ECD368(162, 20308, 0xE200000000000000, v977);
  v978 = *v975;
  *v975 = v1280;

  v973(v1304, 0);
  v979 = sub_26738111C();
  v981 = v980;
  v982 = *v980;
  v983 = swift_isUniquelyReferenced_nonNull_native();
  v1281 = *v981;
  *v981 = 0x8000000000000000;
  sub_266ECD368(163, 21076, 0xE200000000000000, v983);
  v984 = *v981;
  *v981 = v1281;

  v979(v1304, 0);
  v985 = sub_26738111C();
  v987 = v986;
  v988 = *v986;
  v989 = swift_isUniquelyReferenced_nonNull_native();
  v1282 = *v987;
  *v987 = 0x8000000000000000;
  sub_266ECD368(164, 21332, 0xE200000000000000, v989);
  v990 = *v987;
  *v987 = v1282;

  v985(v1304, 0);
  v991 = sub_26738111C();
  v993 = v992;
  v994 = *v992;
  v995 = swift_isUniquelyReferenced_nonNull_native();
  v1283 = *v993;
  *v993 = 0x8000000000000000;
  sub_266ECD368(165, 21588, 0xE200000000000000, v995);
  v996 = *v993;
  *v993 = v1283;

  v991(v1304, 0);
  v997 = sub_26738111C();
  v999 = v998;
  v1000 = *v998;
  v1001 = swift_isUniquelyReferenced_nonNull_native();
  v1284 = *v999;
  *v999 = 0x8000000000000000;
  sub_266ECD368(166, 22356, 0xE200000000000000, v1001);
  v1002 = *v999;
  *v999 = v1284;

  v997(v1304, 0);
  v1003 = sub_26738111C();
  v1005 = v1004;
  v1006 = *v1004;
  v1007 = swift_isUniquelyReferenced_nonNull_native();
  v1285 = *v1005;
  *v1005 = 0x8000000000000000;
  sub_266ECD368(167, 22868, 0xE200000000000000, v1007);
  v1008 = *v1005;
  *v1005 = v1285;

  v1003(v1304, 0);
  v1009 = sub_26738111C();
  v1011 = v1010;
  v1012 = *v1010;
  v1013 = swift_isUniquelyReferenced_nonNull_native();
  v1286 = *v1011;
  *v1011 = 0x8000000000000000;
  sub_266ECD368(168, 18261, 0xE200000000000000, v1013);
  v1014 = *v1011;
  *v1011 = v1286;

  v1009(v1304, 0);
  v1015 = sub_26738111C();
  v1017 = v1016;
  v1018 = *v1016;
  v1019 = swift_isUniquelyReferenced_nonNull_native();
  v1287 = *v1017;
  *v1017 = 0x8000000000000000;
  sub_266ECD368(169, 19285, 0xE200000000000000, v1019);
  v1020 = *v1017;
  *v1017 = v1287;

  v1015(v1304, 0);
  v1021 = sub_26738111C();
  v1023 = v1022;
  v1024 = *v1022;
  v1025 = swift_isUniquelyReferenced_nonNull_native();
  v1288 = *v1023;
  *v1023 = 0x8000000000000000;
  sub_266ECD368(170, 21077, 0xE200000000000000, v1025);
  v1026 = *v1023;
  *v1023 = v1288;

  v1021(v1304, 0);
  v1027 = sub_26738111C();
  v1029 = v1028;
  v1030 = *v1028;
  v1031 = swift_isUniquelyReferenced_nonNull_native();
  v1289 = *v1029;
  *v1029 = 0x8000000000000000;
  sub_266ECD368(171, 23125, 0xE200000000000000, v1031);
  v1032 = *v1029;
  *v1029 = v1289;

  v1027(v1304, 0);
  v1033 = sub_26738111C();
  v1035 = v1034;
  v1036 = *v1034;
  v1037 = swift_isUniquelyReferenced_nonNull_native();
  v1290 = *v1035;
  *v1035 = 0x8000000000000000;
  sub_266ECD368(172, 17750, 0xE200000000000000, v1037);
  v1038 = *v1035;
  *v1035 = v1290;

  v1033(v1304, 0);
  v1039 = sub_26738111C();
  v1041 = v1040;
  v1042 = *v1040;
  v1043 = swift_isUniquelyReferenced_nonNull_native();
  v1291 = *v1041;
  *v1041 = 0x8000000000000000;
  sub_266ECD368(173, 18774, 0xE200000000000000, v1043);
  v1044 = *v1041;
  *v1041 = v1291;

  v1039(v1304, 0);
  v1045 = sub_26738111C();
  v1047 = v1046;
  v1048 = *v1046;
  v1049 = swift_isUniquelyReferenced_nonNull_native();
  v1292 = *v1047;
  *v1047 = 0x8000000000000000;
  sub_266ECD368(174, 20310, 0xE200000000000000, v1049);
  v1050 = *v1047;
  *v1047 = v1292;

  v1045(v1304, 0);
  v1051 = sub_26738111C();
  v1053 = v1052;
  v1054 = *v1052;
  v1055 = swift_isUniquelyReferenced_nonNull_native();
  v1293 = *v1053;
  *v1053 = 0x8000000000000000;
  sub_266ECD368(175, 16727, 0xE200000000000000, v1055);
  v1056 = *v1053;
  *v1053 = v1293;

  v1051(v1304, 0);
  v1057 = sub_26738111C();
  v1059 = v1058;
  v1060 = *v1058;
  v1061 = swift_isUniquelyReferenced_nonNull_native();
  v1294 = *v1059;
  *v1059 = 0x8000000000000000;
  sub_266ECD368(176, 22851, 0xE200000000000000, v1061);
  v1062 = *v1059;
  *v1059 = v1294;

  v1057(v1304, 0);
  v1063 = sub_26738111C();
  v1065 = v1064;
  v1066 = *v1064;
  v1067 = swift_isUniquelyReferenced_nonNull_native();
  v1295 = *v1065;
  *v1065 = 0x8000000000000000;
  sub_266ECD368(177, 20311, 0xE200000000000000, v1067);
  v1068 = *v1065;
  *v1065 = v1295;

  v1063(v1304, 0);
  v1069 = sub_26738111C();
  v1071 = v1070;
  v1072 = *v1070;
  v1073 = swift_isUniquelyReferenced_nonNull_native();
  v1296 = *v1071;
  *v1071 = 0x8000000000000000;
  sub_266ECD368(178, 22854, 0xE200000000000000, v1073);
  v1074 = *v1071;
  *v1071 = v1296;

  v1069(v1304, 0);
  v1075 = sub_26738111C();
  v1077 = v1076;
  v1078 = *v1076;
  v1079 = swift_isUniquelyReferenced_nonNull_native();
  v1297 = *v1077;
  *v1077 = 0x8000000000000000;
  sub_266ECD368(179, 18520, 0xE200000000000000, v1079);
  v1080 = *v1077;
  *v1077 = v1297;

  v1075(v1304, 0);
  v1081 = sub_26738111C();
  v1083 = v1082;
  v1084 = *v1082;
  v1085 = swift_isUniquelyReferenced_nonNull_native();
  v1298 = *v1083;
  *v1083 = 0x8000000000000000;
  sub_266ECD368(180, 18777, 0xE200000000000000, v1085);
  v1086 = *v1083;
  *v1083 = v1298;

  v1081(v1304, 0);
  v1087 = sub_26738111C();
  v1089 = v1088;
  v1090 = *v1088;
  v1091 = swift_isUniquelyReferenced_nonNull_native();
  v1299 = *v1089;
  *v1089 = 0x8000000000000000;
  sub_266ECD368(181, 20313, 0xE200000000000000, v1091);
  v1092 = *v1089;
  *v1089 = v1299;

  v1087(v1304, 0);
  v1093 = sub_26738111C();
  v1095 = v1094;
  v1096 = *v1094;
  v1097 = swift_isUniquelyReferenced_nonNull_native();
  v1300 = *v1095;
  *v1095 = 0x8000000000000000;
  sub_266ECD368(182, 16730, 0xE200000000000000, v1097);
  v1098 = *v1095;
  *v1095 = v1300;

  v1093(v1304, 0);
  v1099 = sub_26738111C();
  v1101 = v1100;
  v1102 = *v1100;
  v1103 = swift_isUniquelyReferenced_nonNull_native();
  v1301 = *v1101;
  *v1101 = 0x8000000000000000;
  sub_266ECD368(183, 21850, 0xE200000000000000, v1103);
  v1104 = *v1101;
  *v1101 = v1301;

  v1099(v1304, 0);
  v1105 = sub_26738111C();
  v1107 = v1106;
  v1108 = *v1106;
  v1109 = swift_isUniquelyReferenced_nonNull_native();
  v1302 = *v1107;
  *v1107 = 0x8000000000000000;
  sub_266ECD368(184, 5592407, 0xE300000000000000, v1109);
  v1110 = *v1107;
  *v1107 = v1302;

  v1105(v1304, 0);
  v1111 = sub_26738111C();
  v1113 = v1112;
  v1114 = *v1112;
  v1115 = swift_isUniquelyReferenced_nonNull_native();
  v1303 = *v1113;
  *v1113 = 0x8000000000000000;
  sub_266ECD368(185, 4543833, 0xE300000000000000, v1115);
  v1116 = *v1113;
  *v1113 = v1303;

  return v1111(v1304, 0);
}