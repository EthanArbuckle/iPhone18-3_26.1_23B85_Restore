uint64_t sub_2673323A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267332404(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTAnswerSynthesisFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026749FF40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026749FF70, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x800000026749FFA0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2673326C0(uint64_t a1)
{
  v2 = sub_2673327C4(&qword_2800FAAF0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267332728(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673327C4(&qword_2800FAAF0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673327C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTAnswerSynthesisFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisHydrationContentType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002DLL, 0x80000002674A0020, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v104;

  v1(v121, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674A0050, v11);
  v12 = *v9;
  *v9 = v105;

  v7(v121, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x80000002674A0080, v17);
  v18 = *v15;
  *v15 = v106;

  v13(v121, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000030, 0x80000002674A00B0, v23);
  v24 = *v21;
  *v21 = v107;

  v19(v121, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x80000002674A00F0, v29);
  v30 = *v27;
  *v27 = v108;

  v25(v121, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x80000002674A0120, v35);
  v36 = *v33;
  *v33 = v109;

  v31(v121, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x80000002674A0150, v41);
  v42 = *v39;
  *v39 = v110;

  v37(v121, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000003CLL, 0x80000002674A0180, v47);
  v48 = *v45;
  *v45 = v111;

  v43(v121, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000037, 0x80000002674A01C0, v53);
  v54 = *v51;
  *v51 = v112;

  v49(v121, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000038, 0x80000002674A0200, v59);
  v60 = *v57;
  *v57 = v113;

  v55(v121, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003CLL, 0x80000002674A0240, v65);
  v66 = *v63;
  *v63 = v114;

  v61(v121, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002ALL, 0x80000002674A0280, v71);
  v72 = *v69;
  *v69 = v115;

  v67(v121, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000031, 0x80000002674A02B0, v77);
  v78 = *v75;
  *v75 = v116;

  v73(v121, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000003BLL, 0x80000002674A02F0, v83);
  v84 = *v81;
  *v81 = v117;

  v79(v121, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000031, 0x80000002674A0330, v89);
  v90 = *v87;
  *v87 = v118;

  v85(v121, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002BLL, 0x80000002674A0370, v95);
  v96 = *v93;
  *v93 = v119;

  v91(v121, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000002ELL, 0x80000002674A03A0, v101);
  v102 = *v99;
  *v99 = v120;

  return v97(v121, 0);
}

uint64_t sub_267333048(uint64_t a1)
{
  v2 = sub_26733314C(&qword_2800FAAF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673330B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733314C(&qword_2800FAAF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733314C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTAnswerSynthesisHydrationContentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisPerfMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v70 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v62 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v3 + 104);
  v66 = *MEMORY[0x277D3E538];
  v11 = v66;
  v12(v6, v66, v2);
  v74[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v72 = v14 + 56;
  v73 = v15;
  v15(v10, 0, 1, v13);
  v68 = a1;
  v16 = sub_2673811AC();
  v64 = 0xD000000000000022;
  sub_266EC637C(v10, 0xD000000000000022, 0x80000002674A0410);
  v16(v74, 0);
  v65 = "verallDurationInMs";
  v17 = v70;
  v12(v6, v11, v70);
  v74[0] = 1;
  sub_26738114C();
  v73(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v65 | 0x8000000000000000);
  v18(v74, 0);
  v63 = "promptGenerationDurationInMs";
  v19 = v66;
  v12(v6, v66, v17);
  v67 = v3 + 104;
  v74[0] = 1;
  sub_26738114C();
  v20 = v73;
  v73(v10, 0, 1, v13);
  v21 = sub_2673811AC();
  v65 = 0xD000000000000019;
  sub_266EC637C(v10, 0xD000000000000019, v63 | 0x8000000000000000);
  v21(v74, 0);
  v63 = "dataFilteringDurationInMs";
  v22 = v19;
  v23 = v70;
  v69 = v12;
  v12(v6, v22, v70);
  v74[0] = 1;
  sub_26738114C();
  v71 = v13;
  v20(v10, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, v64, v63 | 0x8000000000000000);
  v24(v74, 0);
  v64 = "rocessDurationInMs";
  v25 = v66;
  v12(v6, v66, v23);
  v74[0] = 1;
  sub_26738114C();
  v73(v10, 0, 1, v13);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v64 | 0x8000000000000000);
  v26(v74, 0);
  v64 = "llmPreWarmModelDurationInMs";
  v27 = v25;
  v28 = v25;
  v29 = v69;
  v30 = v70;
  v69(v6, v28, v70);
  v74[0] = 1;
  sub_26738114C();
  v31 = v73;
  v73(v10, 0, 1, v71);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v64 | 0x8000000000000000);
  v32(v74, 0);
  v29(v6, v27, v30);
  v33 = v29;
  v74[0] = 1;
  sub_26738114C();
  v34 = v71;
  v31(v10, 0, 1, v71);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x80000002674A04F0);
  v35(v74, 0);
  v36 = v70;
  v29(v6, v66, v70);
  v74[0] = 1;
  sub_26738114C();
  v37 = v73;
  v73(v10, 0, 1, v34);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000028, 0x80000002674A0510);
  v38(v74, 0);
  v64 = "thesisResultDurationInMs";
  v66 = *MEMORY[0x277D3E508];
  v39 = v66;
  v33(v6, v66, v36);
  v74[0] = 1;
  sub_26738114C();
  v40 = v71;
  v37(v10, 0, 1, v71);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, v64 | 0x8000000000000000);
  v41(v74, 0);
  v42 = v39;
  v43 = v70;
  v69(v6, v42, v70);
  v74[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002CLL, 0x80000002674A0570);
  v44(v74, 0);
  v64 = "odelPromptGenerationTimeInMs";
  v45 = v66;
  v46 = v43;
  v47 = v69;
  v69(v6, v66, v43);
  v74[0] = 1;
  sub_26738114C();
  v48 = v71;
  v73(v10, 0, 1, v71);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, v64 | 0x8000000000000000);
  v49(v74, 0);
  v64 = "odelInferenceTimeInMs";
  v47(v6, v45, v46);
  v74[0] = 1;
  sub_26738114C();
  v50 = v73;
  v73(v10, 0, 1, v48);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v64 | 0x8000000000000000);
  v51(v74, 0);
  v64 = "nerationTimeInMs";
  v52 = v45;
  v53 = v46;
  v54 = v46;
  v55 = v69;
  v69(v6, v52, v54);
  v74[0] = 1;
  sub_26738114C();
  v56 = v71;
  v50(v10, 0, 1, v71);
  v57 = sub_2673811AC();
  sub_266EC637C(v10, v65, v64 | 0x8000000000000000);
  v57(v74, 0);
  v58 = v66;
  v55(v6, v66, v53);
  v74[0] = 1;
  sub_26738114C();
  v50(v10, 0, 1, v56);
  v59 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x80000002674A0620);
  v59(v74, 0);
  v69(v6, v58, v70);
  v74[0] = 1;
  sub_26738114C();
  v50(v10, 0, 1, v71);
  v60 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002ALL, 0x80000002674A0650);
  return v60(v74, 0);
}

uint64_t sub_267333F18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267333F7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267333FE0()
{
  result = qword_2800FAB00;
  if (!qword_2800FAB00)
  {
    sub_267334038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB00);
  }

  return result;
}

unint64_t sub_267334038()
{
  result = qword_2800FAB08;
  if (!qword_2800FAB08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAB08);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAB10, 0x277D5AE08);
  sub_266ECAF2C(&qword_2800FAB18, &qword_2800FAB10, 0x277D5AE08);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267334254()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAB10, 0x277D5AE08);
  sub_266ECAF2C(&qword_2800FAB18, &qword_2800FAB10, 0x277D5AE08);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2673343EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267334450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTAnswerSynthesisRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTAnswerSynthesisFailureReason(0);
  sub_26733483C();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267334778(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673347DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733483C()
{
  result = qword_2800FAAE8;
  if (!qword_2800FAAE8)
  {
    type metadata accessor for STSchemaSTAnswerSynthesisFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAAE8);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_267334B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267334B84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267334BE8()
{
  result = qword_2800FAAA0;
  if (!qword_2800FAAA0)
  {
    sub_267334C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAAA0);
  }

  return result;
}

unint64_t sub_267334C40()
{
  result = qword_2800FAA98;
  if (!qword_2800FAA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA98);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19[0] = a1;
  v1 = sub_26738113C();
  v20 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v19[1] = v2 + 104;
  v21 = v11;
  v11(v5, v10, v1);
  v22[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v14(v22, 0);
  sub_266ECB294(0, &qword_2800FAB08, 0x277D5ADE8);
  sub_266ECAF2C(&qword_2800FAB00, &qword_2800FAB08, 0x277D5ADE8);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7274654D66726570, 0xEB00000000736369);
  v15(v22, 0);
  sub_266ECB294(0, &qword_2800FAAE0, 0x277D5ADE0);
  sub_266ECAF2C(&qword_2800FAAD8, &qword_2800FAAE0, 0x277D5ADE0);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x7274654D61746164, 0xEB00000000736369);
  v16(v22, 0);
  v21(v5, *MEMORY[0x277D3E4E8], v20);
  v22[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x80000002674A0780);
  return v17(v22, 0);
}

uint64_t sub_267335174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673351D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F54686372616573, 0xEC00000064496C6FLL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6F54686372616573, 0xEC00000064496C6FLL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287893188);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26733552C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267335590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTDisambiguationContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAB40, 0x277D5AE30);
  sub_266ECAF2C(&qword_2800FAB48, &qword_2800FAB40, 0x277D5AE30);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FAB50, 0x277D5AE20);
  sub_266ECAF2C(&qword_2800FAB58, &qword_2800FAB50, 0x277D5AE20);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FAB60, 0x277D5AE28);
  sub_266ECAF2C(&qword_2800FAB68, &qword_2800FAB60, 0x277D5AE28);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_267335B4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267335BB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTDisambiguationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v33 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v35 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v34 = v3 + 104;
  v12(v6, v11, v2);
  v28 = v12;
  v36[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v32 = v14 + 56;
  v15(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x80000002674A0860);
  v16(v36, 0);
  v31 = v11;
  v17 = v33;
  v12(v6, v11, v33);
  v36[0] = 1;
  sub_26738114C();
  v30 = v15;
  v15(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6974736575517369, 0xEF79726575516E6FLL);
  v18(v36, 0);
  v19 = v11;
  v20 = v28;
  v28(v6, v19, v17);
  v36[0] = 1;
  sub_26738114C();
  v29 = v13;
  v15(v10, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x75516E65704F7369, 0xEB00000000797265);
  v21(v36, 0);
  v22 = v33;
  v20(v6, *MEMORY[0x277D3E538], v33);
  v36[0] = 1;
  sub_26738114C();
  v23 = v13;
  v24 = v30;
  v30(v10, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x736552664F6D756ELL, 0xEC00000073746C75);
  v25(v36, 0);
  v20(v6, v31, v22);
  v36[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v29);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65746E6F437369, 0xEF68637261655374);
  return v26(v36, 0);
}

uint64_t sub_2673361EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267336250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673362B4()
{
  result = qword_2800FAB58;
  if (!qword_2800FAB58)
  {
    sub_26733630C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB58);
  }

  return result;
}

unint64_t sub_26733630C()
{
  result = qword_2800FAB50;
  if (!qword_2800FAB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAB50);
  }

  return result;
}

uint64_t static STSchemaSTDisambiguationFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTDisambiguationFailureReason(0);
  sub_2673366A0();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2673365DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267336640(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673366A0()
{
  result = qword_2800FAB80;
  if (!qword_2800FAB80)
  {
    type metadata accessor for STSchemaSTDisambiguationFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB80);
  }

  return result;
}

uint64_t static STSchemaSTDisambiguationFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x80000002674A0900, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674A0930, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x80000002674A0960, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267336954(uint64_t a1)
{
  v2 = sub_267336A58(&qword_2800FAB88);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673369BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267336A58(&qword_2800FAB88);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267336A58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTDisambiguationFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTDisambiguationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_267336CE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267336D48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267336DAC()
{
  result = qword_2800FAB48;
  if (!qword_2800FAB48)
  {
    sub_267336E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB48);
  }

  return result;
}

unint64_t sub_267336E04()
{
  result = qword_2800FAB40;
  if (!qword_2800FAB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAB40);
  }

  return result;
}

uint64_t static STSchemaSTEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAB38, 0x277D5AE10);
  sub_266ECAF2C(&qword_2800FAB30, &qword_2800FAB38, 0x277D5AE10);
  sub_26738120C();
  v9 = sub_26738116C();
  v42 = *(v9 - 8);
  v10 = *(v42 + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v44, 0);
  sub_266ECB294(0, &qword_2800FAB90, 0x277D5AE48);
  sub_266ECAF2C(&qword_2800FAB98, &qword_2800FAB90, 0x277D5AE48);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674A0A00);
  v12(v44, 0);
  sub_266ECB294(0, &qword_2800FABA0, 0x277D5AEE0);
  sub_266ECAF2C(&qword_2800FABA8, &qword_2800FABA0, 0x277D5AEE0);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x80000002674A0A20);
  v13(v44, 0);
  sub_266ECB294(0, &qword_2800FABB0, 0x277D5AEE8);
  sub_266ECAF2C(&qword_2800FABB8, &qword_2800FABB0, 0x277D5AEE8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674A0A40);
  v14(v44, 0);
  sub_266ECB294(0, &qword_2800FAAD0, 0x277D5ADD8);
  sub_266ECAF2C(&qword_2800FAAC8, &qword_2800FAAD0, 0x277D5ADD8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674A0A60);
  v15(v44, 0);
  sub_266ECB294(0, &qword_2800FABC0, 0x277D5AE78);
  sub_266ECAF2C(&qword_2800FABC8, &qword_2800FABC0, 0x277D5AE78);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674A0A80);
  v16(v44, 0);
  sub_266ECB294(0, &qword_2800FABD0, 0x277D5AEC0);
  sub_266ECAF2C(&qword_2800FABD8, &qword_2800FABD0, 0x277D5AEC0);
  v41 = a1;
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674A0AA0);
  v17(v44, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v43, 0xD00000000000001ALL, 0x80000002674A0AA0);
  v20 = *(v42 + 48);
  v42 += 48;
  v37 = v20;
  if (!v20(v21, 1, v9))
  {
    sub_266ECB128(&unk_2878931B8);
    sub_26738115C();
  }

  (v19)(v43, 0);
  v18(v44, 0);
  sub_266ECB294(0, &qword_2800FAB78, 0x277D5AE18);
  sub_266ECAF2C(&qword_2800FAB70, &qword_2800FAB78, 0x277D5AE18);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674A0AC0);
  v22(v44, 0);
  sub_266ECB294(0, &qword_2800FABE0, 0x277D5AE58);
  sub_266ECAF2C(&qword_2800FABE8, &qword_2800FABE0, 0x277D5AE58);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267489590);
  v23(v44, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v43, 0xD000000000000011, 0x8000000267489590);
  if (!v37(v26, 1, v9))
  {
    sub_266ECB128(&unk_2878931E0);
    sub_26738115C();
  }

  (v25)(v43, 0);
  v24(v44, 0);
  sub_266ECB294(0, &qword_2800FABF0, 0x277D5AEA0);
  sub_266ECAF2C(&qword_2800FABF8, &qword_2800FABF0, 0x277D5AEA0);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, 0x80000002674A0AE0);
  v27(v44, 0);
  v28 = v38;
  sub_26738117C();
  v29 = sub_2673811BC();
  v31 = v30;
  v32 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_266ECAD54(0, v32[2] + 1, 1, v32);
    *v31 = v32;
  }

  v35 = v32[2];
  v34 = v32[3];
  if (v35 >= v34 >> 1)
  {
    v32 = sub_266ECAD54(v34 > 1, v35 + 1, 1, v32);
    *v31 = v32;
  }

  v32[2] = v35 + 1;
  (*(v39 + 32))(v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35, v28, v40);
  v29(v44, 0);
  sub_266ECB128(&unk_287893210);
  return sub_2673811CC();
}

uint64_t sub_267337A88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267337B20()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267337BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267337C50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267337CB0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FAC00, &qword_2800FAC08, 0x277D5AE38);
  a1[2] = sub_266ECAF2C(&qword_2800FAC10, &qword_2800FAC08, 0x277D5AE38);
  result = sub_266ECAF2C(&qword_2800FAC18, &qword_2800FAC08, 0x277D5AE38);
  a1[3] = result;
  return result;
}

uint64_t static STSchemaSTFailureError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2673380C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267338128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733818C()
{
  result = qword_2800FAB28;
  if (!qword_2800FAB28)
  {
    sub_2673381E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAB28);
  }

  return result;
}

unint64_t sub_2673381E4()
{
  result = qword_2800FAB20;
  if (!qword_2800FAB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAB20);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAC28, 0x277D5AE70);
  sub_266ECAF2C(&qword_2800FAC30, &qword_2800FAC28, 0x277D5AE70);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FAC38, 0x277D5AE50);
  sub_266ECAF2C(&qword_2800FAC40, &qword_2800FAC38, 0x277D5AE50);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FAC48, 0x277D5AE60);
  sub_266ECAF2C(&qword_2800FAC50, &qword_2800FAC48, 0x277D5AE60);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_267338748(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673387AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTGeneralSearchEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAC58, 0x277D5AE68);
  sub_266ECAF2C(&qword_2800FAC60, &qword_2800FAC58, 0x277D5AE68);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  v6(v11, 0);
  type metadata accessor for STSchemaSTGeneralSearchResponseDialogSource(0);
  sub_267338D4C(&qword_2800FAC68, type metadata accessor for STSchemaSTGeneralSearchResponseDialogSource);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674A0BC0);
  v7(v11, 0);
  type metadata accessor for STSchemaSTGeneralSearchResponseDialogFallbackReason(0);
  sub_267338D4C(&qword_2800FAC70, type metadata accessor for STSchemaSTGeneralSearchResponseDialogFallbackReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674A0BE0);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v9(v11, 0);
}

uint64_t sub_267338C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267338CEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267338D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static STSchemaSTGeneralSearchEndedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v29 = sub_26738113C();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v29);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v11(v31, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v0 + 104);
  v28 = v0 + 104;
  v24 = v13;
  v13(v3, v12, v29);
  v31[0] = 1;
  v26 = v3;
  sub_26738114C();
  v25 = v10;
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449746163, 0xE500000000000000);
  v14(v31, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v30, 0x6449746163, 0xE500000000000000);
  v17 = *(v9 + 48);
  v27 = v9 + 48;
  if (!v17(v18, 1, v8))
  {
    sub_266ECB128(&unk_287893248);
    sub_26738115C();
  }

  (v16)(v30, 0);
  v15(v31, 0);
  v24(v26, v12, v29);
  v31[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x6944636974617473, 0xEE006449676F6C61);
  v19(v31, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v30, 0x6944636974617473, 0xEE006449676F6C61);
  if (!v17(v22, 1, v8))
  {
    sub_266ECB128(&unk_287893270);
    sub_26738115C();
  }

  (v21)(v30, 0);
  return v20(v31, 0);
}

uint64_t sub_267339328(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733938C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTGeneralSearchFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTGeneralSearchFailureReason(0);
  sub_267339778();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2673396B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267339718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267339778()
{
  result = qword_2800FAC78;
  if (!qword_2800FAC78)
  {
    type metadata accessor for STSchemaSTGeneralSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAC78);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674A0CC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x80000002674A0CF0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674A0D20, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674A0D50, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267339A98(uint64_t a1)
{
  v2 = sub_267339B9C(&qword_2800FAC80);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267339B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_267339B9C(&qword_2800FAC80);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267339B9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGeneralSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchResponseDialogFallbackReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000033, 0x80000002674A0DD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000004CLL, 0x80000002674A0E10, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000048, 0x80000002674A0E60, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000040, 0x80000002674A0EB0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003ELL, 0x80000002674A0F00, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000041, 0x80000002674A0F40, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_267339F44(uint64_t a1)
{
  v2 = sub_26733A048(&qword_2800FAC88);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267339FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733A048(&qword_2800FAC88);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733A048(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGeneralSearchResponseDialogFallbackReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchResponseDialogSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x80000002674A0FE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674A1010, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x80000002674A1040, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674A1070, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x80000002674A10A0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674A10E0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26733A3F4(uint64_t a1)
{
  v2 = sub_26733A4F8(&qword_2800FAC90);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733A45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733A4F8(&qword_2800FAC90);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733A4F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGeneralSearchResponseDialogSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738113C();
  v2 = *(v22 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v21 = "TGeneralSearchResult";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v23 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  (v12)(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v21 | 0x8000000000000000);
  v13(v25, 0);
  (*(v2 + 104))(v5, *MEMORY[0x277D3E530], v22);
  v25[0] = 1;
  sub_26738114C();
  v22 = v12;
  (v12)(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v14(v25, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v24, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v11 + 48))(v17, 1, v10))
  {
    sub_266ECB128(&unk_287893298);
    sub_26738115C();
  }

  (v16)(v24, 0);
  v15(v25, 0);
  type metadata accessor for STSchemaSTGeneralSearchResultType(0);
  sub_26733AA80();
  sub_26738120C();
  (v22)(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954746C75736572, 0xEA00000000006570);
  return v18(v25, 0);
}

uint64_t sub_26733A9BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733AA20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733AA80()
{
  result = qword_2800FAC98;
  if (!qword_2800FAC98)
  {
    type metadata accessor for STSchemaSTGeneralSearchResultType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAC98);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchResultType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674A11B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674A11E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x80000002674A1210, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x80000002674A1250, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x80000002674A1280, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26733AE18(uint64_t a1)
{
  v2 = sub_26733AF1C(&qword_2800FACA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733AE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733AF1C(&qword_2800FACA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733AF1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGeneralSearchResultType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGeneralSearchStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v19 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x737473697865, 0xE600000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D726157657270, 0xE900000000000064);
  return v16(v20, 0);
}

uint64_t sub_26733B280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733B2E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733B348()
{
  result = qword_2800FAC30;
  if (!qword_2800FAC30)
  {
    sub_26733B3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAC30);
  }

  return result;
}

unint64_t sub_26733B3A0()
{
  result = qword_2800FAC28;
  if (!qword_2800FAC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAC28);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FACA8, 0x277D5AE90);
  sub_266ECAF2C(&qword_2800FACB0, &qword_2800FACA8, 0x277D5AE90);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FACB8, 0x277D5AE80);
  sub_266ECAF2C(&qword_2800FACC0, &qword_2800FACB8, 0x277D5AE80);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FACC8, 0x277D5AE88);
  sub_266ECAF2C(&qword_2800FACD0, &qword_2800FACC8, 0x277D5AE88);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26733B904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733B968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTGlobalSearchFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x80000002674A1370, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674A13A0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674A13D0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x80000002674A1400, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26733BC94(uint64_t a1)
{
  v2 = sub_26733BD98(&qword_2800FACE0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733BCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733BD98(&qword_2800FACE0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733BD98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGlobalSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FACE8, 0x277D5AE98);
  sub_266ECAF2C(&qword_2800FACF0, &qword_2800FACE8, 0x277D5AE98);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26733BFAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FACE8, 0x277D5AE98);
  sub_266ECAF2C(&qword_2800FACF0, &qword_2800FACE8, 0x277D5AE98);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26733C144(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733C1A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTGlobalSearchRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTGlobalSearchFailureReason(0);
  sub_26733C594();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26733C4D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733C534(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733C594()
{
  result = qword_2800FACD8;
  if (!qword_2800FACD8)
  {
    type metadata accessor for STSchemaSTGlobalSearchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FACD8);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_26733C878(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733C8DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733C940()
{
  result = qword_2800FACB0;
  if (!qword_2800FACB0)
  {
    sub_26733C998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FACB0);
  }

  return result;
}

unint64_t sub_26733C998()
{
  result = qword_2800FACA8;
  if (!qword_2800FACA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FACA8);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674A1530, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674A1560, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x80000002674A1590, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A15B0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x80000002674A15E0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x80000002674A1610, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26733CD50(uint64_t a1)
{
  v2 = sub_26733CE54(&qword_2800FAD00);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733CDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733CE54(&qword_2800FAD00);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733CE54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTGlobalSearchRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTGlobalSearchResult.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E508], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674A1680);
  v11(v14, 0);
  type metadata accessor for STSchemaSTGlobalSearchRequestType(0);
  sub_26733D2D0(&qword_2800FACF8, type metadata accessor for STSchemaSTGlobalSearchRequestType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x5474736575716572, 0xEB00000000657079);
  return v12(v14, 0);
}

uint64_t sub_26733D1C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733D228(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26733D2D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26733D318()
{
  result = qword_2800FACE8;
  if (!qword_2800FACE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FACE8);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionContext.makeTypeManifestAndEnsureFields(in:)()
{
  v24 = sub_26738118C();
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAD08, 0x277D5AEB8);
  sub_266ECAF2C(&qword_2800FAD10, &qword_2800FAD08, 0x277D5AEB8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800FAD18, 0x277D5AEA8);
  sub_266ECAF2C(&qword_2800FAD20, &qword_2800FAD18, 0x277D5AEA8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800FAD28, 0x277D5AEB0);
  sub_266ECAF2C(&qword_2800FAD30, &qword_2800FAD28, 0x277D5AEB0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = v23;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54(v18 > 1, v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v22 + 32))(v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_26733D944(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733D9A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTHallucinationDetectionDetectedRule.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002CLL, 0x80000002674A1730, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x80000002674A1760, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_26733DBF0(uint64_t a1)
{
  v2 = sub_26733DCF4(&qword_2800FAD40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733DC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733DCF4(&qword_2800FAD40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733DCF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTHallucinationDetectionDetectedRule(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionEnded.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E508], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x80000002674A17E0);
  v11(v14, 0);
  type metadata accessor for STSchemaSTHallucinationDetectionDetectedRule(0);
  sub_26733E174(&qword_2800FAD38, type metadata accessor for STSchemaSTHallucinationDetectionDetectedRule);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674A1800);
  return v12(v14, 0);
}

uint64_t sub_26733E068(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733E0CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26733E174(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26733E1BC()
{
  result = qword_2800FAD18;
  if (!qword_2800FAD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAD18);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTHallucinationDetectionFailureReason(0);
  sub_26733E550();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26733E48C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733E4F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26733E550()
{
  result = qword_2800FAD48;
  if (!qword_2800FAD48)
  {
    type metadata accessor for STSchemaSTHallucinationDetectionFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAD48);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002DLL, 0x80000002674A18B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v8;

  return v1(v9, 0);
}

uint64_t sub_26733E70C(uint64_t a1)
{
  v2 = sub_26733E810(&qword_2800FAD50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733E774(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733E810(&qword_2800FAD50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733E810(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTHallucinationDetectionFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x80000002674A1920, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674A1950, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A1980, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26733EA68(uint64_t a1)
{
  v2 = sub_26733EB6C(&qword_2800FAD60);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733EAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733EB6C(&qword_2800FAD60);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733EB6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTHallucinationDetectionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTHallucinationDetectionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTHallucinationDetectionSource(0);
  sub_26733EEA0(&qword_2800FAD58, type metadata accessor for STSchemaSTHallucinationDetectionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x80000002674A19F0);
  return v5(v7, 0);
}

uint64_t sub_26733ED94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733EDF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26733EEA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26733EEE8()
{
  result = qword_2800FAD08;
  if (!qword_2800FAD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAD08);
  }

  return result;
}

uint64_t static STSchemaSTLLMQueryUnderstandingContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAD68, 0x277D5AED8);
  sub_266ECAF2C(&qword_2800FAD70, &qword_2800FAD68, 0x277D5AED8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FAD78, 0x277D5AEC8);
  sub_266ECAF2C(&qword_2800FAD80, &qword_2800FAD78, 0x277D5AEC8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FAD88, 0x277D5AED0);
  sub_266ECAF2C(&qword_2800FAD90, &qword_2800FAD88, 0x277D5AED0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26733F44C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26733F4B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTLLMQUFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674A1A90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674A1AB0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674A1AE0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674A1B10, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26733F7DC(uint64_t a1)
{
  v2 = sub_26733F8E0(&qword_2800FADA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26733F844(uint64_t a1, uint64_t a2)
{
  v4 = sub_26733F8E0(&qword_2800FADA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26733F8E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUModelAppEntityStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x80000002674A1B70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v158;

  v1(v184, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674A1BA0, v11);
  v12 = *v9;
  *v9 = v159;

  v7(v184, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674A1BD0, v17);
  v18 = *v15;
  *v15 = v160;

  v13(v184, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A1C00, v23);
  v24 = *v21;
  *v21 = v161;

  v19(v184, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x80000002674A1C30, v29);
  v30 = *v27;
  *v27 = v162;

  v25(v184, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x80000002674A1C60, v35);
  v36 = *v33;
  *v33 = v163;

  v31(v184, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x80000002674A1C90, v41);
  v42 = *v39;
  *v39 = v164;

  v37(v184, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x80000002674A1CC0, v47);
  v48 = *v45;
  *v45 = v165;

  v43(v184, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x80000002674A1CF0, v53);
  v54 = *v51;
  *v51 = v166;

  v49(v184, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x80000002674A1D20, v59);
  v60 = *v57;
  *v57 = v167;

  v55(v184, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000023, 0x80000002674A1D50, v65);
  v66 = *v63;
  *v63 = v168;

  v61(v184, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000020, 0x80000002674A1D80, v71);
  v72 = *v69;
  *v69 = v169;

  v67(v184, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000024, 0x80000002674A1DB0, v77);
  v78 = *v75;
  *v75 = v170;

  v73(v184, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000023, 0x80000002674A1DE0, v83);
  v84 = *v81;
  *v81 = v171;

  v79(v184, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000021, 0x80000002674A1E10, v89);
  v90 = *v87;
  *v87 = v172;

  v85(v184, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000020, 0x80000002674A1E40, v95);
  v96 = *v93;
  *v93 = v173;

  v91(v184, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000022, 0x80000002674A1E70, v101);
  v102 = *v99;
  *v99 = v174;

  v97(v184, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000022, 0x80000002674A1EA0, v107);
  v108 = *v105;
  *v105 = v175;

  v103(v184, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000023, 0x80000002674A1ED0, v113);
  v114 = *v111;
  *v111 = v176;

  v109(v184, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000022, 0x80000002674A1F00, v119);
  v120 = *v117;
  *v117 = v177;

  v115(v184, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000024, 0x80000002674A1F30, v125);
  v126 = *v123;
  *v123 = v178;

  v121(v184, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000021, 0x80000002674A1F60, v131);
  v132 = *v129;
  *v129 = v179;

  v127(v184, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000024, 0x80000002674A1F90, v137);
  v138 = *v135;
  *v135 = v180;

  v133(v184, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000022, 0x80000002674A1FC0, v143);
  v144 = *v141;
  *v141 = v181;

  v139(v184, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001FLL, 0x80000002674A1FF0, v149);
  v150 = *v147;
  *v147 = v182;

  v145(v184, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000025, 0x80000002674A2010, v155);
  v156 = *v153;
  *v153 = v183;

  return v151(v184, 0);
}

uint64_t sub_267340594(uint64_t a1)
{
  v2 = sub_267340698(&qword_2800FADB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673405FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267340698(&qword_2800FADB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267340698(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUModelAppEntityStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUModelAppEntityType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674A2080, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v110;

  v1(v128, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674A20B0, v11);
  v12 = *v9;
  *v9 = v111;

  v7(v128, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x80000002674A20D0, v17);
  v18 = *v15;
  *v15 = v112;

  v13(v128, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x80000002674A2100, v23);
  v24 = *v21;
  *v21 = v113;

  v19(v128, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674A2120, v29);
  v30 = *v27;
  *v27 = v114;

  v25(v128, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x80000002674A2150, v35);
  v36 = *v33;
  *v33 = v115;

  v31(v128, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x80000002674A2180, v41);
  v42 = *v39;
  *v39 = v116;

  v37(v128, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x80000002674A21A0, v47);
  v48 = *v45;
  *v45 = v117;

  v43(v128, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x80000002674A21D0, v53);
  v54 = *v51;
  *v51 = v118;

  v49(v128, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x80000002674A2200, v59);
  v60 = *v57;
  *v57 = v119;

  v55(v128, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x80000002674A2230, v65);
  v66 = *v63;
  *v63 = v120;

  v61(v128, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x80000002674A2260, v71);
  v72 = *v69;
  *v69 = v121;

  v67(v128, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000028, 0x80000002674A2290, v77);
  v78 = *v75;
  *v75 = v122;

  v73(v128, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000021, 0x80000002674A22C0, v83);
  v84 = *v81;
  *v81 = v123;

  v79(v128, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000024, 0x80000002674A22F0, v89);
  v90 = *v87;
  *v87 = v124;

  v85(v128, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000026, 0x80000002674A2320, v95);
  v96 = *v93;
  *v93 = v125;

  v91(v128, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000021, 0x80000002674A2350, v101);
  v102 = *v99;
  *v99 = v126;

  v97(v128, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001FLL, 0x80000002674A2380, v107);
  v108 = *v105;
  *v105 = v127;

  return v103(v128, 0);
}

uint64_t sub_267340F9C(uint64_t a1)
{
  v2 = sub_2673410A0(&qword_2800FADC0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267341004(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673410A0(&qword_2800FADC0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673410A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUModelAppEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUModelEventType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674A23E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674A2400, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674A2420, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674A2450, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x80000002674A2470, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2673413DC(uint64_t a1)
{
  v2 = sub_2673414E0(&qword_2800FADD0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267341444(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673414E0(&qword_2800FADD0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673414E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUModelEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUModelSortOrder.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674A24D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674A24F0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674A2510, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x80000002674A2530, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2673417AC(uint64_t a1)
{
  v2 = sub_2673418B0(&qword_2800FADD8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267341814(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673418B0(&qword_2800FADD8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673418B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTLLMQUModelSortOrder(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTLLMQUQueryArgumentsTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v27, 0);
  type metadata accessor for STSchemaSTLLMQUModelEventType(0);
  sub_267341FCC(&qword_2800FADC8, type metadata accessor for STSchemaSTLLMQUModelEventType);
  sub_26738120C();
  v25 = v8;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x707954746E657665, 0xE900000000000065);
  v10(v27, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v26, 0x707954746E657665, 0xE900000000000065);
  v24 = *(v7 + 48);
  if (!v24(v13, 1, v6))
  {
    sub_266ECB128(&unk_2878932C8);
    sub_26738115C();
  }

  (v12)(v26, 0);
  v11(v27, 0);
  type metadata accessor for STSchemaSTLLMQUModelAppEntityType(0);
  sub_267341FCC(&qword_2800FADB8, type metadata accessor for STSchemaSTLLMQUModelAppEntityType);
  v23[1] = a1;
  sub_26738120C();
  v25(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x80000002674A2590);
  v14(v27, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v26, 0xD000000000000012, 0x80000002674A2590);
  if (!v24(v17, 1, v6))
  {
    sub_266ECB128(&unk_2878932F0);
    sub_26738115C();
  }

  (v16)(v26, 0);
  v15(v27, 0);
  type metadata accessor for STSchemaSTLLMQUModelAppEntityStatus(0);
  sub_267341FCC(&qword_2800FADA8, type metadata accessor for STSchemaSTLLMQUModelAppEntityStatus);
  sub_26738120C();
  v25(v5, 0, 1, v6);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x80000002674A25B0);
  v18(v27, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v26, 0xD000000000000014, 0x80000002674A25B0);
  if (!v24(v21, 1, v6))
  {
    sub_266ECB128(&unk_287893318);
    sub_26738115C();
  }

  (v20)(v26, 0);
  return v19(v27, 0);
}

uint64_t sub_267341F08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267341F6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267341FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static STSchemaSTLLMQURequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v25 = v1;
  v26 = v11;
  v11(v5, v10, v1);
  v29[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v9, 0, 1, v12);
  v28 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v16(v29, 0);
  v17 = *MEMORY[0x277D3E538];
  v18 = v1;
  v19 = v26;
  v26(v5, v17, v18);
  v29[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x4C74736575716572, 0xED00006874676E65);
  v20(v29, 0);
  v19(v5, v17, v25);
  v29[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x65736E6F70736572, 0xEE006874676E654CLL);
  v21(v29, 0);
  sub_266ECB294(0, &qword_2800FAA70, 0x277D5ADC0);
  sub_266ECAF2C(&qword_2800FAA68, &qword_2800FAA70, 0x277D5ADC0);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6772417972657571, 0xEE0073746E656D75);
  v22(v29, 0);
  sub_266ECB294(0, &qword_2800FAA58, 0x277D5ADB8);
  sub_266ECAF2C(&qword_2800FAA50, &qword_2800FAA58, 0x277D5ADB8);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674A2610);
  return v23(v29, 0);
}

uint64_t sub_267342618(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734267C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTLLMQURequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTLLMQUFailureReason(0);
  sub_267342A68();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2673429A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267342A08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267342A68()
{
  result = qword_2800FAD98;
  if (!qword_2800FAD98)
  {
    type metadata accessor for STSchemaSTLLMQUFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAD98);
  }

  return result;
}

uint64_t static STSchemaSTLLMQURequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_267342D4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267342DB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267342E14()
{
  result = qword_2800FAD70;
  if (!qword_2800FAD70)
  {
    sub_267342E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAD70);
  }

  return result;
}

unint64_t sub_267342E6C()
{
  result = qword_2800FAD68;
  if (!qword_2800FAD68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAD68);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FADE0, 0x277D5AF00);
  sub_266ECAF2C(&qword_2800FADE8, &qword_2800FADE0, 0x277D5AF00);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FADF0, 0x277D5AEF0);
  sub_266ECAF2C(&qword_2800FADF8, &qword_2800FADF0, 0x277D5AEF0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FAE00, 0x277D5AEF8);
  sub_266ECAF2C(&qword_2800FAE08, &qword_2800FAE00, 0x277D5AEF8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_2673433D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267343434(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTSpotlightFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674A2730, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674A2760, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x80000002674A2790, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2673436F0(uint64_t a1)
{
  v2 = sub_2673437F4(&qword_2800FAE18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267343758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673437F4(&qword_2800FAE18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673437F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTSpotlightFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAE20, 0x277D5AF08);
  sub_266ECAF2C(&qword_2800FAE28, &qword_2800FAE20, 0x277D5AF08);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267343A08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAE20, 0x277D5AF08);
  sub_266ECAF2C(&qword_2800FAE28, &qword_2800FAE20, 0x277D5AF08);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267343BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267343C04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTSpotlightRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTSpotlightFailureReason(0);
  sub_267343FF0();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FAB20, 0x277D5AE40);
  sub_266ECAF2C(&qword_2800FAB28, &qword_2800FAB20, 0x277D5AE40);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F7272457473, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267343F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267343F90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267343FF0()
{
  result = qword_2800FAE10;
  if (!qword_2800FAE10)
  {
    type metadata accessor for STSchemaSTSpotlightFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE10);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_2673442D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267344338(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734439C()
{
  result = qword_2800FADE8;
  if (!qword_2800FADE8)
  {
    sub_2673443F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FADE8);
  }

  return result;
}

unint64_t sub_2673443F4()
{
  result = qword_2800FADE0;
  if (!qword_2800FADE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FADE0);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightResult.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = sub_26738113C();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v68);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v58 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for STSchemaSTSpotlightSearchRetrievalType(0);
  sub_267345280();
  v61 = a1;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x6176656972746572, 0xED0000657079546CLL);
  v15(v70, 0);
  v16 = *MEMORY[0x277D3E530];
  v64 = *(v4 + 104);
  v65 = v4 + 104;
  v64(v7, v16, v68);
  v70[0] = 1;
  sub_26738114C();
  v66 = v14;
  v14(v11, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6449656C646E7562, 0xE800000000000000);
  v17(v70, 0);
  v67 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v69, 0x6449656C646E7562, 0xE800000000000000);
  v20 = v12;
  if (!(*(v13 + 48))(v21, 1, v12))
  {
    sub_266ECB128(&unk_287893340);
    sub_26738115C();
  }

  (v19)(v69, 0);
  v18(v70, 0);
  v22 = *MEMORY[0x277D3E500];
  v23 = v64;
  v64(v7, v22, v68);
  v70[0] = 1;
  sub_26738114C();
  v24 = v12;
  v25 = v66;
  v66(v11, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F68696C656B696CLL, 0xEA0000000000646FLL);
  v26(v70, 0);
  v58 = v7;
  v27 = v7;
  v62 = v22;
  v28 = v68;
  v23(v27, v22, v68);
  v70[0] = 1;
  sub_26738114C();
  v63 = v20;
  v25(v11, 0, 1, v20);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x696C616369706F74, 0xEA00000000007974);
  v29(v70, 0);
  v30 = v58;
  v23(v58, v22, v28);
  v70[0] = 1;
  sub_26738114C();
  v60 = v13 + 56;
  v25(v11, 0, 1, v20);
  v31 = v25;
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0x314C73656D6D6F70, 0xED000065726F6353);
  v32(v70, 0);
  v59 = "TSpotlightResult";
  v33 = v62;
  v34 = v68;
  v23(v30, v62, v68);
  v70[0] = 1;
  sub_26738114C();
  v35 = v63;
  v31(v11, 0, 1, v63);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v59 | 0x8000000000000000);
  v36(v70, 0);
  v59 = "pommesAdjustedL1Score";
  v37 = v34;
  v38 = v64;
  v64(v30, v33, v37);
  v70[0] = 1;
  sub_26738114C();
  v39 = v35;
  v40 = v66;
  v66(v11, 0, 1, v39);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v59 | 0x8000000000000000);
  v41(v70, 0);
  v59 = "pommesCalibratedL1Score";
  v42 = v68;
  v38(v30, v33, v68);
  v70[0] = 1;
  sub_26738114C();
  v43 = v63;
  v40(v11, 0, 1, v63);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v59 | 0x8000000000000000);
  v44(v70, 0);
  v59 = "embeddingSimilarity";
  v45 = v62;
  v46 = v42;
  v47 = v64;
  v64(v30, v62, v46);
  v70[0] = 1;
  sub_26738114C();
  v48 = v43;
  v49 = v43;
  v50 = v66;
  v66(v11, 0, 1, v48);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v59 | 0x8000000000000000);
  v51(v70, 0);
  v47(v30, v45, v68);
  v70[0] = 1;
  sub_26738114C();
  v50(v11, 0, 1, v49);
  v52 = sub_2673811AC();
  sub_266EC637C(v11, 0x73656E6873657266, 0xE900000000000073);
  v52(v70, 0);
  sub_266ECB294(0, &qword_2800FAA90, 0x277D5ADD0);
  sub_266ECAF2C(&qword_2800FAA88, &qword_2800FAA90, 0x277D5ADD0);
  sub_26738120C();
  v50(v11, 0, 1, v49);
  v53 = sub_2673811AC();
  sub_266EC637C(v11, 0x7474417972657571, 0xEF73657475626972);
  v53(v70, 0);
  sub_266ECB294(0, &qword_2800FAA78, 0x277D5ADC8);
  sub_266ECAF2C(&qword_2800FAA80, &qword_2800FAA78, 0x277D5ADC8);
  sub_26738120C();
  v50(v11, 0, 1, v49);
  v54 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026749FDD0);
  v54(v70, 0);
  sub_266ECB294(0, &qword_2800FAA48, 0x277D5ADB0);
  sub_266ECAF2C(&qword_2800FAA40, &qword_2800FAA48, 0x277D5ADB0);
  sub_26738120C();
  v50(v11, 0, 1, v49);
  v55 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x80000002674A2940);
  v55(v70, 0);
  sub_266ECB294(0, &qword_2800FAE38, 0x277D5AF10);
  sub_266ECAF2C(&qword_2800FAE40, &qword_2800FAE38, 0x277D5AF10);
  sub_26738120C();
  v50(v11, 0, 1, v49);
  v56 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674A2960);
  return v56(v70, 0);
}

uint64_t sub_2673451BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267345220(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267345280()
{
  result = qword_2800FAE30;
  if (!qword_2800FAE30)
  {
    type metadata accessor for STSchemaSTSpotlightSearchRetrievalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE30);
  }

  return result;
}

uint64_t static STSchemaSTSpotlightSearchRetrievalType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x80000002674A29C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674A29F0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674A2A20, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267345530(uint64_t a1)
{
  v2 = sub_267345634(&qword_2800FAE48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267345598(uint64_t a1, uint64_t a2)
{
  v4 = sub_267345634(&qword_2800FAE48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267345634(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STSchemaSTSpotlightSearchRetrievalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaTopicalityAttributes.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v54 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v55 = a1;
  sub_26738119C();
  v49 = "opicalityAttributes";
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v56 = v12;
  v57[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v52 = v14 + 56;
  v15(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v49 | 0x8000000000000000);
  v16(v57, 0);
  v49 = "countAttributeQPQUMatch";
  v17 = v54;
  v12(v6, v11, v54);
  v51 = v3 + 104;
  v57[0] = 1;
  sub_26738114C();
  v53 = v13;
  v15(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v49 | 0x8000000000000000);
  v18(v57, 0);
  v49 = "countAttributeQPQUprefixMatch";
  v19 = v6;
  v20 = v6;
  v21 = v17;
  v22 = v17;
  v23 = v56;
  v56(v20, v11, v21);
  v57[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v49 | 0x8000000000000000);
  v24(v57, 0);
  v49 = "countAttributeUnigramMatch";
  LODWORD(v50) = v11;
  v23(v19, v11, v22);
  v57[0] = 1;
  sub_26738114C();
  v25 = v53;
  v15(v10, 0, 1, v53);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v49 | 0x8000000000000000);
  v26(v57, 0);
  v49 = "countAttributeBigramMatch";
  v27 = v54;
  v28 = v56;
  v56(v19, v11, v54);
  v57[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v49 | 0x8000000000000000);
  v29(v57, 0);
  v49 = "countAttributeNgramMatch";
  v30 = v50;
  v28(v19, v50, v27);
  v57[0] = 1;
  sub_26738114C();
  v31 = v53;
  v15(v10, 0, 1, v53);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v49 | 0x8000000000000000);
  v32(v57, 0);
  v49 = "igramPrefixMatch";
  v33 = v30;
  v34 = v54;
  v56(v19, v33, v54);
  v57[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v31);
  v48 = v15;
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, v49 | 0x8000000000000000);
  v35(v57, 0);
  v49 = "countAttributeBigramPrefixMatch";
  v36 = v56;
  v56(v19, v50, v34);
  v57[0] = 1;
  sub_26738114C();
  v37 = v53;
  v15(v10, 0, 1, v53);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v49 | 0x8000000000000000);
  v38(v57, 0);
  v50 = "countAttributeNgramPrefixMatch";
  v39 = *MEMORY[0x277D3E500];
  v36(v19, v39, v34);
  v57[0] = 1;
  sub_26738114C();
  v40 = v48;
  v48(v10, 0, 1, v37);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, v50 | 0x8000000000000000);
  v41(v57, 0);
  v50 = "unCalibratedEmbeddingSimilarity";
  v42 = v54;
  v36(v19, v39, v54);
  v57[0] = 1;
  sub_26738114C();
  v43 = v53;
  v40(v10, 0, 1, v53);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v50 | 0x8000000000000000);
  v44(v57, 0);
  v56(v19, *MEMORY[0x277D3E530], v42);
  v57[0] = 1;
  sub_26738114C();
  v40(v10, 0, 1, v43);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674A2BE0);
  return v45(v57, 0);
}

uint64_t sub_267346124(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267346188(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673461EC()
{
  result = qword_2800FAE40;
  if (!qword_2800FAE40)
  {
    sub_267346244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE40);
  }

  return result;
}

unint64_t sub_267346244()
{
  result = qword_2800FAE38;
  if (!qword_2800FAE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAE38);
  }

  return result;
}

uint64_t static SUGSchemaSUGAggregateCounts.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v1 + 104);
  v19 = v0;
  v20 = v10;
  v10(v4, v9, v0);
  v22[0] = 1;
  sub_26738114C();
  v21 = sub_26738116C();
  v11 = *(*(v21 - 8) + 56);
  v11(v8, 0, 1, v21);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x437961447473616CLL, 0xEC000000746E756FLL);
  v12(v22, 0);
  v13 = v0;
  v14 = v20;
  v20(v4, v9, v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6B6565577473616CLL, 0xEE0074656B637542);
  v15(v22, 0);
  v14(v4, v9, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674A2C30);
  return v16(v22, 0);
}

uint64_t sub_26734667C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673466E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267346744()
{
  result = qword_2800FAE50;
  if (!qword_2800FAE50)
  {
    sub_26734679C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE50);
  }

  return result;
}

unint64_t sub_26734679C()
{
  result = qword_2800FAE58;
  if (!qword_2800FAE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAE58);
  }

  return result;
}

uint64_t static SUGSchemaSUGAutoCompleteQuery.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.sug.SUGAutoCompleteQuery";
  v11 = *MEMORY[0x277D3E508];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x7364726F576D756ELL, 0xEF79726575516E49);
  return v16(v21, 0);
}

uint64_t sub_267346B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267346B84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267346BE8()
{
  result = qword_2800FAE60;
  if (!qword_2800FAE60)
  {
    sub_267346C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAE60);
  }

  return result;
}

unint64_t sub_267346C40()
{
  result = qword_2800FAE68;
  if (!qword_2800FAE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAE68);
  }

  return result;
}

uint64_t static SUGSchemaSUGAutoCompleteSuggestionMetaData.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SUGSchemaSUGAutoCompleteSuggestionSource(0);
  sub_267346F7C(&qword_2800FAE70, type metadata accessor for SUGSchemaSUGAutoCompleteSuggestionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x80000002674A2CE0);
  return v5(v7, 0);
}

uint64_t sub_267346E70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267346ED4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267346F7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267346FC4()
{
  result = qword_2800FAE80;
  if (!qword_2800FAE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAE80);
  }

  return result;
}

uint64_t static SUGSchemaSUGAutoCompleteSuggestionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x80000002674A2D40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000037, 0x80000002674A2D70, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x80000002674A2DB0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x80000002674A2DE0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x80000002674A2E10, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x80000002674A2E40, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000030, 0x80000002674A2E70, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2673473E8(uint64_t a1)
{
  v2 = sub_2673474EC(&qword_2800FAE88);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267347450(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673474EC(&qword_2800FAE88);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673474EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGAutoCompleteSuggestionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGChannel.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000012, 0x80000002674A2EE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x80000002674A2F00, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x80000002674A2F20, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674A2F40, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x80000002674A2F60, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x80000002674A2F80, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x80000002674A2FA0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x80000002674A2FD0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000016, 0x80000002674A3000, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_2673479E8(uint64_t a1)
{
  v2 = sub_267347AEC(&qword_2800FAE98);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267347A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_267347AEC(&qword_2800FAE98);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267347AEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGChannel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v47 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAEA0, 0x277D5AF38);
  sub_266ECAF2C(&qword_2800FAEA8, &qword_2800FAEA0, 0x277D5AF38);
  v55 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  (v13)(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v14(v57, 0);
  v52 = "iri.sug.SUGClientEvent";
  sub_266ECB294(0, &qword_2800FAEB0, 0x277D5AFF0);
  sub_266ECAF2C(&qword_2800FAEB8, &qword_2800FAEB0, 0x277D5AFF0);
  sub_26738121C();
  (v13)(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v52 | 0x8000000000000000);
  v15(v57, 0);
  sub_266ECB294(0, &qword_2800FAEC0, 0x277D5AF48);
  sub_266ECAF2C(&qword_2800FAEC8, &qword_2800FAEC0, 0x277D5AF48);
  sub_26738121C();
  v52 = v13;
  v53 = v12 + 56;
  (v13)(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x80000002674A3070);
  v16(v57, 0);
  v54 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v56, 0xD000000000000012, 0x80000002674A3070);
  v19 = *(v12 + 48);
  v47[1] = v12 + 48;
  v51 = v19;
  if (!v19(v20, 1, v11))
  {
    sub_266ECB128(&unk_287893370);
    sub_26738115C();
  }

  (v18)(v56, 0);
  v17(v57, 0);
  sub_266ECB294(0, &qword_2800FAED0, 0x277D5AFA0);
  sub_266ECAF2C(&qword_2800FAED8, &qword_2800FAED0, 0x277D5AFA0);
  sub_26738121C();
  v21 = v52;
  (v52)(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x4374736575716572, 0xEE00747865746E6FLL);
  v22(v57, 0);
  sub_266ECB294(0, &qword_2800FAEE0, 0x277D5AF68);
  sub_266ECAF2C(&qword_2800FAEE8, &qword_2800FAEE0, 0x277D5AF68);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x80000002674A3090);
  v23(v57, 0);
  sub_266ECB294(0, &qword_2800FAEF0, 0x277D5AFC0);
  sub_266ECAF2C(&qword_2800FAEF8, &qword_2800FAEF0, 0x277D5AFC0);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x80000002674A30B0);
  v24(v57, 0);
  sub_266ECB294(0, &qword_2800FAF00, 0x277D5AF50);
  sub_266ECAF2C(&qword_2800FAF08, &qword_2800FAF00, 0x277D5AF50);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x80000002674A30D0);
  v25(v57, 0);
  sub_266ECB294(0, &qword_2800FAF10, 0x277D5AF88);
  sub_266ECAF2C(&qword_2800FAF18, &qword_2800FAF10, 0x277D5AF88);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x80000002674A30F0);
  v26(v57, 0);
  sub_266ECB294(0, &qword_2800FAF20, 0x277D5AF40);
  sub_266ECAF2C(&qword_2800FAF28, &qword_2800FAF20, 0x277D5AF40);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674A3110);
  v27(v57, 0);
  sub_266ECB294(0, &qword_2800FAF30, 0x277D5B000);
  sub_266ECAF2C(&qword_2800FAF38, &qword_2800FAF30, 0x277D5B000);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x6976697463416975, 0xEA00000000007974);
  v28(v57, 0);
  sub_266ECB294(0, &qword_2800FAF40, 0x277D5B018);
  sub_266ECAF2C(&qword_2800FAF48, &qword_2800FAF40, 0x277D5B018);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674A3130);
  v29(v57, 0);
  sub_266ECB294(0, &qword_2800FAF50, 0x277D5AFF8);
  sub_266ECAF2C(&qword_2800FAF58, &qword_2800FAF50, 0x277D5AFF8);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674A3150);
  v30(v57, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v56, 0xD000000000000011, 0x80000002674A3150);
  if (!v51(v33, 1, v11))
  {
    sub_266ECB128(&unk_287893398);
    sub_26738115C();
  }

  (v32)(v56, 0);
  v31(v57, 0);
  sub_266ECB294(0, &qword_2800FAF60, 0x277D5B008);
  sub_266ECAF2C(&qword_2800FAF68, &qword_2800FAF60, 0x277D5B008);
  sub_26738121C();
  (v52)(v10, 0, 1, v11);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x6976697463416975, 0xEF31726569547974);
  v34(v57, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v56, 0x6976697463416975, 0xEF31726569547974);
  if (!v51(v37, 1, v11))
  {
    sub_266ECB128(&unk_2878933C0);
    sub_26738115C();
  }

  (v36)(v56, 0);
  v35(v57, 0);
  v38 = v48;
  sub_26738117C();
  v39 = sub_2673811BC();
  v41 = v40;
  v42 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v41 = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_266ECAD54(0, v42[2] + 1, 1, v42);
    *v41 = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_266ECAD54(v44 > 1, v45 + 1, 1, v42);
    *v41 = v42;
  }

  v42[2] = v45 + 1;
  (*(v49 + 32))(v42 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v45, v38, v50);
  v39(v57, 0);
  sub_266ECB128(&unk_2878933E8);
  return sub_2673811CC();
}

uint64_t sub_267348AC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267348B5C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267348C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267348C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267348CEC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FAF70, &qword_2800F1F80, 0x277D5AF30);
  a1[2] = sub_266ECAF2C(&qword_2800FAF78, &qword_2800F1F80, 0x277D5AF30);
  result = sub_266ECAF2C(&qword_2800FAF80, &qword_2800F1F80, 0x277D5AF30);
  a1[3] = result;
  return result;
}

uint64_t static SUGSchemaSUGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449677573, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449677573, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287893420);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267349084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673490E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGConversionMetricType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674A31D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674A31F0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674A3220, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2673493A0(uint64_t a1)
{
  v2 = sub_2673494A4(&qword_2800FAF90);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267349408(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673494A4(&qword_2800FAF90);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673494A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGConversionMetricType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGDeliveryVehicle.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674A3280, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674A32A0, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A32D0, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x80000002674A3300, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x80000002674A3330, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674A3350, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x80000002674A3370, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x80000002674A33A0, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002DLL, 0x80000002674A33D0, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000019, 0x80000002674A3400, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x80000002674A3420, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_267349A88(uint64_t a1)
{
  v2 = sub_267349B8C(&qword_2800FAFA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267349AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267349B8C(&qword_2800FAFA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267349B8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGDeliveryVehicle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGEngagementMetricDaysBucket.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x80000002674A3490, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674A34C0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A34F0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x80000002674A3520, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674A3550, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267349ECC(uint64_t a1)
{
  v2 = sub_267349FD0(&qword_2800FAFB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267349F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_267349FD0(&qword_2800FAFB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267349FD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGEngagementMetricDaysBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGEngagementMetricReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_26738113C();
  v47 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v50 = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v51 = *(v4 + 104);
  v48 = v4 + 104;
  v51(v7, v12, v3);
  v53[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v43 = *(v13 - 8);
  v14 = v43 + 56;
  v15 = *(v43 + 7);
  v15(v11, 0, 1, v13);
  v49 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6974736567677573, 0xEC00000064496E6FLL);
  v16(v53, 0);
  v17 = v12;
  v18 = v47;
  v19 = v51;
  v51(v7, v17, v47);
  v53[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x41676E6967676F6CLL, 0xEF64496E6F697463);
  v20(v53, 0);
  v44 = *MEMORY[0x277D3E538];
  v19(v7);
  v53[0] = 1;
  sub_26738114C();
  v21 = v49;
  v49(v11, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, 0x80000002674A35C0);
  v22(v53, 0);
  v51(v7, *MEMORY[0x277D3E4E8], v18);
  v53[0] = 1;
  sub_26738114C();
  v45 = v14;
  v21(v11, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x65766E6F43736168, 0xED00006E6F697372);
  v23(v53, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v52, 0x65766E6F43736168, 0xED00006E6F697372);
  v26 = v13;
  if (!(*(v43 + 6))(v27, 1, v13))
  {
    sub_266ECB128(&unk_287893448);
    sub_26738115C();
  }

  (v25)(v52, 0);
  v24(v53, 0);
  v43 = "numberSuggestionShownBefore";
  v28 = v44;
  v29 = v47;
  v51(v7, v44, v47);
  v53[0] = 1;
  sub_26738114C();
  v30 = v26;
  v42 = v26;
  v31 = v49;
  v49(v11, 0, 1, v26);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v43 | 0x8000000000000000);
  v32(v53, 0);
  v43 = "secondsToConversion";
  v33 = v29;
  v34 = v51;
  v51(v7, v28, v33);
  v53[0] = 1;
  sub_26738114C();
  v31(v11, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v43 | 0x8000000000000000);
  v35(v53, 0);
  v34(v7, v28, v47);
  v53[0] = 1;
  sub_26738114C();
  v36 = v42;
  v37 = v49;
  v49(v11, 0, 1, v42);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674A3620);
  v38(v53, 0);
  type metadata accessor for SUGSchemaSUGEngagementMetricDaysBucket(0);
  sub_26734AAA4(&qword_2800FAFA8, type metadata accessor for SUGSchemaSUGEngagementMetricDaysBucket);
  sub_26738120C();
  v37(v11, 0, 1, v36);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0x6B63754273796164, 0xEE00657079547465);
  v39(v53, 0);
  type metadata accessor for SUGSchemaSUGConversionMetricType(0);
  sub_26734AAA4(&qword_2800FAF88, type metadata accessor for SUGSchemaSUGConversionMetricType);
  sub_26738120C();
  v37(v11, 0, 1, v36);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674A3640);
  return v40(v53, 0);
}

uint64_t sub_26734A998(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734A9FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26734AAA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26734AAEC()
{
  result = qword_2800FAF20;
  if (!qword_2800FAF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAF20);
  }

  return result;
}

uint64_t static SUGSchemaSUGEngagementReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E540], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674A3690);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800FAFB8, 0x277D5B020);
  sub_266ECAF2C(&qword_2800FAFC0, &qword_2800FAFB8, 0x277D5B020);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7461745372657375, 0xEE00736369747369);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800FAFC8, 0x277D5AF80);
  sub_266ECAF2C(&qword_2800FAFD0, &qword_2800FAFC8, 0x277D5AF80);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7463617265746E69, 0xEB000000006E6F69);
  v13(v15, 0);
  sub_266ECB128(&unk_287893470);
  return sub_2673811CC();
}

uint64_t sub_26734AF5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734AFC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGFilteringStepContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAFD8, 0x277D5AF60);
  sub_266ECAF2C(&qword_2800FAFE0, &qword_2800FAFD8, 0x277D5AF60);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FAFE8, 0x277D5AF58);
  sub_266ECAF2C(&qword_2800FAFF0, &qword_2800FAFE8, 0x277D5AF58);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54(v16 > 1, v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  v11(v23, 0);
  sub_266ECB128(&unk_287893498);
  return sub_2673811CC();
}

uint64_t sub_26734B4C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734B528(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGFilteringStepEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_2878934C8);
  return sub_2673811CC();
}

uint64_t sub_26734B82C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734B890(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734B8F4()
{
  result = qword_2800FAFF0;
  if (!qword_2800FAFF0)
  {
    sub_26734B94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAFF0);
  }

  return result;
}

unint64_t sub_26734B94C()
{
  result = qword_2800FAFE8;
  if (!qword_2800FAFE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAFE8);
  }

  return result;
}

uint64_t static SUGSchemaSUGFilteringStepStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_2878934F8);
  return sub_2673811CC();
}

uint64_t sub_26734BBF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734BC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734BCC0()
{
  result = qword_2800FAFE0;
  if (!qword_2800FAFE0)
  {
    sub_26734BD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAFE0);
  }

  return result;
}

unint64_t sub_26734BD18()
{
  result = qword_2800FAFD8;
  if (!qword_2800FAFD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAFD8);
  }

  return result;
}

uint64_t static SUGSchemaSUGGenerationStepContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAFF8, 0x277D5AF78);
  sub_266ECAF2C(&qword_2800FB000, &qword_2800FAFF8, 0x277D5AF78);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FB008, 0x277D5AF70);
  sub_266ECAF2C(&qword_2800FB010, &qword_2800FB008, 0x277D5AF70);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54(v16 > 1, v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  v11(v23, 0);
  sub_266ECB128(&unk_287893528);
  return sub_2673811CC();
}

uint64_t sub_26734C1C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734C228(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGGenerationStepEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893558);
  return sub_2673811CC();
}

uint64_t sub_26734C52C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734C590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734C5F4()
{
  result = qword_2800FB010;
  if (!qword_2800FB010)
  {
    sub_26734C64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB010);
  }

  return result;
}

unint64_t sub_26734C64C()
{
  result = qword_2800FB008;
  if (!qword_2800FB008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB008);
  }

  return result;
}

uint64_t static SUGSchemaSUGGenerationStepStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893588);
  return sub_2673811CC();
}

uint64_t sub_26734C8F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734C95C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734C9C0()
{
  result = qword_2800FB000;
  if (!qword_2800FB000)
  {
    sub_26734CA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB000);
  }

  return result;
}

unint64_t sub_26734CA18()
{
  result = qword_2800FAFF8;
  if (!qword_2800FAFF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAFF8);
  }

  return result;
}

uint64_t static SUGSchemaSUGGoal.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x5F4C414F47475553, 0xEF4E574F4E4B4E55, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674A3810, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x80000002674A3830, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x80000002674A3850, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26734CCF8(uint64_t a1)
{
  v2 = sub_26734CDFC(&qword_2800FB020);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26734CD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26734CDFC(&qword_2800FB020);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26734CDFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGGoal(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGInteraction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = sub_26738113C();
  v34 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v33 = "iri.sug.SUGInteraction";
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E530], v3);
  v36[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v32 = *(v14 + 56);
  v15 = v14 + 56;
  v29 = v13;
  v32(v11, 0, 1, v13);
  v28[1] = a2;
  v28[2] = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v33 | 0x8000000000000000);
  v16(v36, 0);
  v33 = "relatedSuggestionId";
  v17 = *MEMORY[0x277D3E538];
  v18 = v34;
  v30 = v12;
  v31 = v4 + 104;
  v12(v7, v17, v34);
  v36[0] = 1;
  sub_26738114C();
  v19 = v13;
  v20 = v32;
  v32(v11, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, v33 | 0x8000000000000000);
  v21(v36, 0);
  v12(v7, v17, v18);
  v36[0] = 1;
  sub_26738114C();
  v22 = v29;
  v20(v11, 0, 1, v29);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, 0x80000002674A38F0);
  v23(v36, 0);
  v30(v7, *MEMORY[0x277D3E4E8], v18);
  v36[0] = 1;
  sub_26738114C();
  v24 = v20;
  v20(v11, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x80000002674A3910);
  v25(v36, 0);
  type metadata accessor for SUGSchemaSUGTriggerType(0);
  sub_26734D50C(&qword_2800FB028, type metadata accessor for SUGSchemaSUGTriggerType);
  sub_26738120C();
  v24(v11, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x5472656767697274, 0xEB00000000657079);
  v26(v36, 0);
  sub_266ECB128(&unk_2878935B8);
  return sub_2673811CC();
}

uint64_t sub_26734D400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734D464(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26734D50C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26734D554()
{
  result = qword_2800FAFC8;
  if (!qword_2800FAFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAFC8);
  }

  return result;
}

uint64_t static SUGSchemaSUGInvocationType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674A3960, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674A3980, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674A39A0, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674A39D0, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x80000002674A3A00, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x80000002674A3A20, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x80000002674A3A50, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000032, 0x80000002674A3A80, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000031, 0x80000002674A3AC0, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000004BLL, 0x80000002674A3B00, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000035, 0x80000002674A3B50, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_26734DB34(uint64_t a1)
{
  v2 = sub_26734DC38(&qword_2800FB038);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26734DB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26734DC38(&qword_2800FB038);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26734DC38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGInvocationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGRankingStepContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB040, 0x277D5AF98);
  sub_266ECAF2C(&qword_2800FB048, &qword_2800FB040, 0x277D5AF98);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FB050, 0x277D5AF90);
  sub_266ECAF2C(&qword_2800FB058, &qword_2800FB050, 0x277D5AF90);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54(v16 > 1, v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  v11(v23, 0);
  sub_266ECB128(&unk_2878935E0);
  return sub_2673811CC();
}

uint64_t sub_26734E0DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734E140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGRankingStepEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893610);
  return sub_2673811CC();
}

uint64_t sub_26734E444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734E4A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734E50C()
{
  result = qword_2800FB058;
  if (!qword_2800FB058)
  {
    sub_26734E564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB058);
  }

  return result;
}

unint64_t sub_26734E564()
{
  result = qword_2800FB050;
  if (!qword_2800FB050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB050);
  }

  return result;
}

uint64_t static SUGSchemaSUGRankingStepStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893640);
  return sub_2673811CC();
}

uint64_t sub_26734E810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734E874(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734E8D8()
{
  result = qword_2800FB048;
  if (!qword_2800FB048)
  {
    sub_26734E930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB048);
  }

  return result;
}

unint64_t sub_26734E930()
{
  result = qword_2800FB040;
  if (!qword_2800FB040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB040);
  }

  return result;
}

uint64_t static SUGSchemaSUGRequestContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB060, 0x277D5AFB8);
  sub_266ECAF2C(&qword_2800FB068, &qword_2800FB060, 0x277D5AFB8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FB070, 0x277D5AFA8);
  sub_266ECAF2C(&qword_2800FB078, &qword_2800FB070, 0x277D5AFA8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FB080, 0x277D5AFB0);
  sub_266ECAF2C(&qword_2800FB088, &qword_2800FB080, 0x277D5AFB0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_287893670);
  return sub_2673811CC();
}

uint64_t sub_26734EEA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734EF0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_2878936A0);
  return sub_2673811CC();
}

uint64_t sub_26734F210(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734F274(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734F2D8()
{
  result = qword_2800FB078;
  if (!qword_2800FB078)
  {
    sub_26734F330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB078);
  }

  return result;
}

unint64_t sub_26734F330()
{
  result = qword_2800FB070;
  if (!qword_2800FB070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB070);
  }

  return result;
}

uint64_t static SUGSchemaSUGRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_2878936D0);
  return sub_2673811CC();
}

uint64_t sub_26734F5DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734F640(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734F6A4()
{
  result = qword_2800FB088;
  if (!qword_2800FB088)
  {
    sub_26734F6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB088);
  }

  return result;
}

unint64_t sub_26734F6FC()
{
  result = qword_2800FB080;
  if (!qword_2800FB080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB080);
  }

  return result;
}

uint64_t static SUGSchemaSUGRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893700);
  return sub_2673811CC();
}

uint64_t sub_26734F9A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734FA0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26734FA70()
{
  result = qword_2800FB068;
  if (!qword_2800FB068)
  {
    sub_26734FAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB068);
  }

  return result;
}

unint64_t sub_26734FAC8()
{
  result = qword_2800FB060;
  if (!qword_2800FB060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB060);
  }

  return result;
}

uint64_t static SUGSchemaSUGResolutionStepContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB090, 0x277D5AFD0);
  sub_266ECAF2C(&qword_2800FB098, &qword_2800FB090, 0x277D5AFD0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FB0A0, 0x277D5AFC8);
  sub_266ECAF2C(&qword_2800FB0A8, &qword_2800FB0A0, 0x277D5AFC8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54(v16 > 1, v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  v11(v23, 0);
  sub_266ECB128(&unk_287893730);
  return sub_2673811CC();
}

uint64_t sub_26734FF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26734FFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGResolutionStepEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893760);
  return sub_2673811CC();
}

uint64_t sub_2673502DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267350340(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673503A4()
{
  result = qword_2800FB0A8;
  if (!qword_2800FB0A8)
  {
    sub_2673503FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB0A8);
  }

  return result;
}

unint64_t sub_2673503FC()
{
  result = qword_2800FB0A0;
  if (!qword_2800FB0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB0A0);
  }

  return result;
}

uint64_t static SUGSchemaSUGResolutionStepStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893790);
  return sub_2673811CC();
}

uint64_t sub_2673506A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735070C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267350770()
{
  result = qword_2800FB098;
  if (!qword_2800FB098)
  {
    sub_2673507C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB098);
  }

  return result;
}

unint64_t sub_2673507C8()
{
  result = qword_2800FB090;
  if (!qword_2800FB090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB090);
  }

  return result;
}

uint64_t static SUGSchemaSUGSignalType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674A3DC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674A3DE0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x80000002674A3E00, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x80000002674A3E20, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x80000002674A3E40, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x80000002674A3E60, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000019, 0x80000002674A3E80, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_267350BEC(uint64_t a1)
{
  v2 = sub_267350CF0(&qword_2800FB0B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267350C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_267350CF0(&qword_2800FB0B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267350CF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGSignalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGSiriHelpSignal.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v19[1] = a2;
  sub_26738119C();
  v20 = "iri.sug.SUGSiriHelpSignal";
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E538], v3);
  v22[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v20 | 0x8000000000000000);
  v15(v22, 0);
  v12(v7, *MEMORY[0x277D3E530], v3);
  v22[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x61566C616E676973, 0xEB0000000065756CLL);
  v16(v22, 0);
  type metadata accessor for SUGSchemaSUGSignalType(0);
  sub_267351238(&qword_2800FB0B0, type metadata accessor for SUGSchemaSUGSignalType);
  sub_26738120C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x79546C616E676973, 0xEA00000000006570);
  return v17(v22, 0);
}

uint64_t sub_26735112C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267351190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267351238(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267351280()
{
  result = qword_2800FB0C8;
  if (!qword_2800FB0C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB0C8);
  }

  return result;
}

uint64_t static SUGSchemaSUGSuggestion.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = sub_26738113C();
  v4 = *(v62 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v62);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  LODWORD(v54) = *MEMORY[0x277D3E530];
  v63 = *(v4 + 104);
  v64 = v4 + 104;
  v63(v7);
  v65[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6974736567677573, 0xEC00000064496E6FLL);
  v16(v65, 0);
  sub_266ECB294(0, &qword_2800FB0C8, 0x277D5AFD8);
  sub_266ECAF2C(&qword_2800FB0C0, &qword_2800FB0C8, 0x277D5AFD8);
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674A3F20);
  v17(v65, 0);
  type metadata accessor for SUGSchemaSUGDeliveryVehicle(0);
  sub_2673522E4(&qword_2800FAF98, type metadata accessor for SUGSchemaSUGDeliveryVehicle);
  v60 = a1;
  sub_26738120C();
  v59 = v14;
  v14(v11, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x79726576696C6564, 0xEF656C6369686556);
  v18(v65, 0);
  type metadata accessor for SUGSchemaSUGGoal(0);
  sub_2673522E4(&qword_2800FB018, type metadata accessor for SUGSchemaSUGGoal);
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v61 = v15;
  v58 = a2;
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 1818324839, 0xE400000000000000);
  v19(v65, 0);
  v20 = v56;
  v21 = v62;
  v22 = v63;
  (v63)(v56, *MEMORY[0x277D3E538], v62);
  v65[0] = 1;
  sub_26738114C();
  v59(v11, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E61526C616E6966, 0xE90000000000006BLL);
  v23(v65, 0);
  v53 = "subscribedSignal";
  v25 = v20;
  v26 = v20;
  LODWORD(v57) = *MEMORY[0x277D3E518];
  v24 = v57;
  v27 = v21;
  v28 = v21;
  v29 = v22;
  (v22)(v26, v57, v27);
  v65[0] = 1;
  sub_26738114C();
  v30 = v59;
  v59(v11, 0, 1, v12);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v53 | 0x8000000000000000);
  v31(v65, 0);
  v29(v25, v24, v28);
  v65[0] = 1;
  sub_26738114C();
  v30(v11, 0, 1, v12);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F63536C616E6966, 0xEA00000000006572);
  v32(v65, 0);
  type metadata accessor for SUGSchemaSUGTierCategory(0);
  sub_2673522E4(&qword_2800FB0D0, type metadata accessor for SUGSchemaSUGTierCategory);
  sub_26738120C();
  v30(v11, 0, 1, v12);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0x6974736567677573, 0xEE00726569546E6FLL);
  v33(v65, 0);
  sub_266ECB294(0, &qword_2800FB0D8, 0x277D5B010);
  sub_266ECAF2C(&qword_2800FB0E0, &qword_2800FB0D8, 0x277D5B010);
  sub_26738120C();
  v34 = v30;
  v30(v11, 0, 1, v12);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x80000002674A3F60);
  v35(v65, 0);
  v36 = v56;
  (v63)(v56, v54, v62);
  v65[0] = 1;
  sub_26738114C();
  v34(v11, 0, 1, v12);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0x41676E6967676F6CLL, 0xEF64496E6F697463);
  v37(v65, 0);
  type metadata accessor for SUGSchemaSUGChannel(0);
  sub_2673522E4(&qword_2800FAE90, type metadata accessor for SUGSchemaSUGChannel);
  sub_26738120C();
  v55 = v12;
  v34(v11, 0, 1, v12);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C656E6E616863, 0xE700000000000000);
  v38(v65, 0);
  v39 = v62;
  (v63)(v36, v57, v62);
  v65[0] = 1;
  sub_26738114C();
  v34(v11, 0, 1, v12);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0x536C656E6E616863, 0xEC00000065726F63);
  v40(v65, 0);
  v54 = "suppressionResult";
  v41 = v39;
  v42 = v63;
  (v63)(v36, v57, v39);
  v65[0] = 1;
  sub_26738114C();
  v43 = v55;
  v34(v11, 0, 1, v55);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v54 | 0x8000000000000000);
  v44(v65, 0);
  v57 = "smartSuppressionScore";
  v45 = *MEMORY[0x277D3E508];
  v42(v36, v45, v41);
  v65[0] = 1;
  sub_26738114C();
  v34(v11, 0, 1, v43);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v57 | 0x8000000000000000);
  v46(v65, 0);
  (v63)(v36, v45, v62);
  v65[0] = 1;
  sub_26738114C();
  v47 = v55;
  v48 = v59;
  v59(v11, 0, 1, v55);
  v49 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x80000002674A3FC0);
  v49(v65, 0);
  sub_266ECB294(0, &qword_2800FAE80, 0x277D5AF28);
  sub_266ECAF2C(&qword_2800FAE78, &qword_2800FAE80, 0x277D5AF28);
  sub_26738120C();
  v48(v11, 0, 1, v47);
  v50 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, 0x80000002674A3FE0);
  v50(v65, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v48(v11, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0x64496B6E696CLL, 0xE600000000000000);
  return v51(v65, 0);
}

uint64_t sub_267352220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267352284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673522E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SUGSchemaSUGSuggestionsGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v21 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB0F0, 0x277D5AFE0);
  sub_266ECAF2C(&qword_2800FB0E8, &qword_2800FB0F0, 0x277D5AFE0);
  sub_26738122C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x6974736567677573, 0xEB00000000736E6FLL);
  v13(v24, 0);
  type metadata accessor for SUGSchemaSUGInvocationType(0);
  sub_267352A54();
  v20[1] = a1;
  sub_26738120C();
  v12(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x697461636F766E69, 0xEE00657079546E6FLL);
  v14(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v20[2] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12(v10, 0, 1, v11);
  v20[0] = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x69746172656E6567, 0xEC00000064496E6FLL);
  v15(v24, 0);
  (*(v22 + 104))(v21, *MEMORY[0x277D3E530], v23);
  v24[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x69746172656E6567, 0xED00006761546E6FLL);
  v16(v24, 0);
  sub_266ECB294(0, &qword_2800FAE68, 0x277D5AF20);
  sub_266ECAF2C(&qword_2800FAE60, &qword_2800FAE68, 0x277D5AF20);
  sub_26738120C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674A4030);
  v17(v24, 0);
  sub_26738120C();
  v12(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496B6E696CLL, 0xE600000000000000);
  return v18(v24, 0);
}

uint64_t sub_267352990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673529F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267352A54()
{
  result = qword_2800FB030;
  if (!qword_2800FB030)
  {
    type metadata accessor for SUGSchemaSUGInvocationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB030);
  }

  return result;
}

uint64_t static SUGSchemaSUGSuggestionsGeneratedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v13 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v7(v14, 0);
  sub_266ECB294(0, &qword_2800FB0F8, 0x277D5AFE8);
  sub_266ECAF2C(&qword_2800FB100, &qword_2800FB0F8, 0x277D5AFE8);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974736567677573, 0xEB00000000736E6FLL);
  v8(v14, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v13, 0x6974736567677573, 0xEB00000000736E6FLL);
  if (!(*(v5 + 48))(v11, 1, v4))
  {
    sub_266ECB128(&unk_2878937C0);
    sub_26738115C();
  }

  (v10)(v13, 0);
  return v9(v14, 0);
}

uint64_t sub_267352E68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267352ECC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGSuggestionsUIActivity.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v5, *MEMORY[0x277D3E530], v1);
  v24[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v22[0] = *(v11 + 56);
  (v22[0])(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974736567677573, 0xED00007364496E6FLL);
  v12(v24, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v23, 0x6974736567677573, 0xED00007364496E6FLL);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_2878937E8);
    sub_26738115C();
  }

  (v14)(v23, 0);
  v13(v24, 0);
  type metadata accessor for SUGSchemaSUGDeliveryVehicle(0);
  sub_267353678(&qword_2800FAF98, type metadata accessor for SUGSchemaSUGDeliveryVehicle);
  sub_26738120C();
  v16 = v22[0];
  (v22[0])(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x79726576696C6564, 0xEF656C6369686556);
  v17(v24, 0);
  type metadata accessor for SUGSchemaSUGUIActivity(0);
  sub_267353678(&qword_2800FB108, type metadata accessor for SUGSchemaSUGUIActivity);
  sub_26738120C();
  v16(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6976697463416975, 0xEA00000000007974);
  v18(v24, 0);
  sub_266ECB294(0, &qword_2800FB0F0, 0x277D5AFE0);
  sub_266ECAF2C(&qword_2800FB0E8, &qword_2800FB0F0, 0x277D5AFE0);
  sub_26738122C();
  v16(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974736567677573, 0xEB00000000736E6FLL);
  v19(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v16(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  return v20(v24, 0);
}

uint64_t sub_2673535B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267353618(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267353678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SUGSchemaSUGSuggestionsUIActivityTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v13 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v7(v14, 0);
  sub_266ECB294(0, &qword_2800FB0F8, 0x277D5AFE8);
  sub_266ECAF2C(&qword_2800FB100, &qword_2800FB0F8, 0x277D5AFE8);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974736567677573, 0xEB00000000736E6FLL);
  v8(v14, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v13, 0x6974736567677573, 0xEB00000000736E6FLL);
  if (!(*(v5 + 48))(v11, 1, v4))
  {
    sub_266ECB128(&unk_287893810);
    sub_26738115C();
  }

  (v10)(v13, 0);
  return v9(v14, 0);
}

uint64_t sub_267353A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267353AE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGSuggestionTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v18 = sub_26738113C();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v11(v20, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974736567677573, 0xEC00000064496E6FLL);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x6974736567677573, 0xEC00000064496E6FLL);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287893838);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_267353F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267353FC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUGSchemaSUGSuppressionReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674A4170, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674A4190, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A41C0, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x80000002674A41F0, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x80000002674A4210, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000004FLL, 0x80000002674A4240, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000036, 0x80000002674A4290, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x80000002674A42D0, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002FLL, 0x80000002674A4300, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002ELL, 0x80000002674A4330, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002ALL, 0x80000002674A4360, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000051, 0x80000002674A4390, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000031, 0x80000002674A43F0, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_2673546E4(uint64_t a1)
{
  v2 = sub_2673547E8(&qword_2800FB118);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735474C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673547E8(&qword_2800FB118);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673547E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGSuppressionReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGSuppressionResult.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x7270707553736177, 0xED00006465737365);
  v11(v14, 0);
  type metadata accessor for SUGSchemaSUGSuppressionReason(0);
  sub_267354C68(&qword_2800FB110, type metadata accessor for SUGSchemaSUGSuppressionReason);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674A4460);
  return v12(v14, 0);
}

uint64_t sub_267354B5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267354BC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267354C68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267354CB0()
{
  result = qword_2800FB0D8;
  if (!qword_2800FB0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB0D8);
  }

  return result;
}

uint64_t static SUGSchemaSUGTierCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674A44B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674A44D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674A44F0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674A4510, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267354F84(uint64_t a1)
{
  v2 = sub_267355088(&qword_2800FB120);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267354FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267355088(&qword_2800FB120);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267355088(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGTierCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGTriggerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674A4560, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x80000002674A4580, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674A45A0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2673552E0(uint64_t a1)
{
  v2 = sub_2673553E4(&qword_2800FB128);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267355348(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673553E4(&qword_2800FB128);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673553E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGTriggerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGTypingWindowEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SUGSchemaSUGTypingWindowEndReason(0);
  sub_267355718(&qword_2800FB130, type metadata accessor for SUGSchemaSUGTypingWindowEndReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x80000002674A45F0);
  return v5(v7, 0);
}

uint64_t sub_26735560C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267355670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267355718(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267355760()
{
  result = qword_2800FAF40;
  if (!qword_2800FAF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAF40);
  }

  return result;
}

uint64_t static SUGSchemaSUGTypingWindowEndReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674A4650, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674A4680, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674A46B0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A46E0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267355A34(uint64_t a1)
{
  v2 = sub_267355B38(&qword_2800FB138);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267355A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267355B38(&qword_2800FB138);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267355B38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGTypingWindowEndReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGUIActivity.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674A4740, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674A4760, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x80000002674A4780, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267355D90(uint64_t a1)
{
  v2 = sub_267355E94(&qword_2800FB140);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267355DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267355E94(&qword_2800FB140);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267355E94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUGSchemaSUGUIActivity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUGSchemaSUGUserStatistics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v23 = "iri.sug.SUGUserStatistics";
  sub_266ECB294(0, &qword_2800FAE58, 0x277D5AF18);
  sub_266ECAF2C(&qword_2800FAE50, &qword_2800FAE58, 0x277D5AF18);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v22[1] = a2;
  v22[2] = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v23 | 0x8000000000000000);
  v15(v27, 0);
  v22[3] = a1;
  v23 = "totalSiriRequests";
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v23 | 0x8000000000000000);
  v16(v27, 0);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x80000002674A4810);
  v17(v27, 0);
  sub_26738120C();
  v18 = v11;
  v13(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x80000002674A4830);
  v19(v27, 0);
  (*(v25 + 104))(v24, *MEMORY[0x277D3E4E8], v26);
  v27[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674A4850);
  return v20(v27, 0);
}

uint64_t sub_2673563E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735644C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestAssociatedSchemaIdentifier.makeTypeManifestAndEnsureFields(in:)()
{
  v21 = sub_26738118C();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v21);
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB148, 0x277D5B060);
  sub_266ECAF2C(&qword_2800FB150, &qword_2800FB148, 0x277D5B060);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x44496E727574, 0xE600000000000000);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800FB158, 0x277D5B058);
  sub_266ECAF2C(&qword_2800FB160, &qword_2800FB158, 0x277D5B058);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x4974736575716572, 0xE900000000000064);
  v11(v22, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v0 + 32))(v15 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v18, v10, v21);
  v12(v22, 0);
  sub_266ECB128(&unk_287893860);
  return sub_2673811CC();
}

uint64_t sub_267356954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673569B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D614E74736574, 0xE800000000000000);
  v11(v15, 0);
  type metadata accessor for SUTSchemaTestType(0);
  sub_267356EF8();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6570795474736574, 0xE800000000000000);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800FB180, 0x277D5B070);
  sub_266ECAF2C(&qword_2800FB188, &qword_2800FB180, 0x277D5B070);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7373655374736574, 0xEF6F666E496E6F69);
  v13(v15, 0);
  sub_266ECB128(&unk_287893890);
  return sub_2673811CC();
}

uint64_t sub_267356E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267356E98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267356EF8()
{
  result = qword_2800FB178;
  if (!qword_2800FB178)
  {
    type metadata accessor for SUTSchemaTestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB178);
  }

  return result;
}

uint64_t static SUTSchemaTestExecutionBegin.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FB198, 0x277D5B030);
  sub_266ECAF2C(&qword_2800FB190, &qword_2800FB198, 0x277D5B030);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x747865746E6F63, 0xE700000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674A4930);
  v11(v15, 0);
  sub_266ECB128(&unk_2878938C0);
  return sub_2673811CC();
}

uint64_t sub_2673572E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267357344(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestExecutionEnd.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_2878938F0);
  return sub_2673811CC();
}

uint64_t sub_267357648(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673576AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267357710()
{
  result = qword_2800FB1B0;
  if (!qword_2800FB1B0)
  {
    sub_267357768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB1B0);
  }

  return result;
}

unint64_t sub_267357768()
{
  result = qword_2800FB1B8;
  if (!qword_2800FB1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB1B8);
  }

  return result;
}

uint64_t static SUTSchemaTestExecutionEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB1C0, 0x277D5B050);
  sub_266ECAF2C(&qword_2800FB1C8, &qword_2800FB1C0, 0x277D5B050);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x617461646174656DLL, 0xE800000000000000);
  v9(v27, 0);
  sub_266ECB294(0, &qword_2800FB1A8, 0x277D5B038);
  sub_266ECAF2C(&qword_2800FB1A0, &qword_2800FB1A8, 0x277D5B038);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x80000002674A49D0);
  v10(v27, 0);
  sub_266ECB294(0, &qword_2800FB1B8, 0x277D5B040);
  sub_266ECAF2C(&qword_2800FB1B0, &qword_2800FB1B8, 0x277D5B040);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674A49F0);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800FB170, 0x277D5B028);
  sub_266ECAF2C(&qword_2800FB168, &qword_2800FB170, 0x277D5B028);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ELL, 0x80000002674A4A10);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800FB1D0, 0x277D5B068);
  sub_266ECAF2C(&qword_2800FB1D8, &qword_2800FB1D0, 0x277D5B068);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674A4A30);
  v14(v27, 0);
  sub_26738117C();
  v15 = sub_2673811BC();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266ECAD54(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266ECAD54(v20 > 1, v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v13, v26);
  v15(v27, 0);
  sub_266ECB128(&unk_287893920);
  return sub_2673811CC();
}

uint64_t sub_267357E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267357EF8()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267357FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267358028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267358088(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB1E0, &qword_2800F1E40, 0x277D5B048);
  a1[2] = sub_266ECAF2C(&qword_2800FB1E8, &qword_2800F1E40, 0x277D5B048);
  result = sub_266ECAF2C(&qword_2800FB1F0, &qword_2800F1E40, 0x277D5B048);
  a1[3] = result;
  return result;
}

uint64_t static SUTSchemaTestExecutionMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x72707265676E6966, 0xEB00000000746E69);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x72707265676E6966, 0xEB00000000746E69);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287893960);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_287893990);
  return sub_2673811CC();
}

uint64_t sub_267358448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673584AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestGeneratedRequestId.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x4974736575716572, 0xE900000000000064);
  v5(v7, 0);
  sub_266ECB128(&unk_2878939C0);
  return sub_2673811CC();
}

uint64_t sub_267358754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673587B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestGeneratedTurnID.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x44496E727574, 0xE600000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_2878939F0);
  return sub_2673811CC();
}

uint64_t sub_267358A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267358ABC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674A4B40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x80000002674A4B60, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x80000002674A4B80, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x80000002674A4BA0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x80000002674A4BC0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x80000002674A4BE0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x80000002674A4C00, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_267358F3C(uint64_t a1)
{
  v2 = sub_267359040(&qword_2800FB200);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267358FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267359040(&qword_2800FB200);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267359040(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUTSchemaTestOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SUTSchemaTestOutcomeRecorded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SUTSchemaTestOutcome(0);
  sub_26735938C(&qword_2800FB1F8, type metadata accessor for SUTSchemaTestOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6374754F74736574, 0xEB00000000656D6FLL);
  v5(v7, 0);
  sub_266ECB128(&unk_287893A20);
  return sub_2673811CC();
}

uint64_t sub_267359280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673592E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735938C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2673593D4()
{
  result = qword_2800FB1D0;
  if (!qword_2800FB1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB1D0);
  }

  return result;
}

uint64_t static SUTSchemaTestSessionInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[2] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v44 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v50 = a2;
  sub_26738119C();
  v49 = *MEMORY[0x277D3E530];
  v12 = *(v4 + 104);
  v12(v7);
  v52[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v51 = *(v14 + 56);
  v15 = v14 + 56;
  v51(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x75426D6574737973, 0xEB00000000646C69);
  v16(v52, 0);
  v17 = v49;
  v46 = v3;
  (v12)(v7, v49, v3);
  v52[0] = 1;
  sub_26738114C();
  v47 = v13;
  v48 = v15;
  v51(v11, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x6968637241757063, 0xEF65727574636574);
  v18(v52, 0);
  (v12)(v7, v17, v3);
  v45 = v12;
  v52[0] = 1;
  sub_26738114C();
  v19 = v13;
  v20 = v51;
  v51(v11, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x6572617764726168, 0xED00006C65646F4DLL);
  v21(v52, 0);
  v22 = v49;
  v23 = v46;
  (v12)(v7, v49, v46);
  v52[0] = 1;
  sub_26738114C();
  v24 = v47;
  v25 = v20;
  v20(v11, 0, 1, v47);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v26(v52, 0);
  v27 = v45;
  (v45)(v7, v22, v23);
  v52[0] = 1;
  sub_26738114C();
  v25(v11, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0x54746375646F7270, 0xEB00000000657079);
  v28(v52, 0);
  v29 = v22;
  v30 = v46;
  v31 = v27;
  v27(v7, v29, v46);
  v52[0] = 1;
  sub_26738114C();
  v32 = v47;
  v51(v11, 0, 1, v47);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0x56746375646F7270, 0xEE006E6F69737265);
  v33(v52, 0);
  v34 = *MEMORY[0x277D3E4E8];
  v44[1] = v4 + 104;
  v31(v7, v34, v30);
  v52[0] = 1;
  sub_26738114C();
  v35 = v32;
  v36 = v51;
  v51(v11, 0, 1, v35);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0x616C756D69537369, 0xEB00000000726F74);
  v37(v52, 0);
  v38 = v49;
  v31(v7, v49, v30);
  v52[0] = 1;
  sub_26738114C();
  v39 = v47;
  v36(v11, 0, 1, v47);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0x6449656C646E7562, 0xE800000000000000);
  v40(v52, 0);
  (v45)(v7, v38, v46);
  v52[0] = 1;
  sub_26738114C();
  v36(v11, 0, 1, v39);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0x614E656369766564, 0xEA0000000000656DLL);
  v41(v52, 0);
  sub_266ECB294(0, &qword_2800FB208, 0x277D5B078);
  sub_266ECAF2C(&qword_2800FB210, &qword_2800FB208, 0x277D5B078);
  sub_26738122C();
  v36(v11, 0, 1, v39);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x80000002674A4CA0);
  v42(v52, 0);
  sub_266ECB128(&unk_287893A50);
  return sub_2673811CC();
}

uint64_t sub_267359DD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267359E34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SUTSchemaTestSessionInfoItem.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v19 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 1701667182, 0xE400000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x65756C6176, 0xE500000000000000);
  v16(v20, 0);
  sub_266ECB128(&unk_287893A80);
  return sub_2673811CC();
}

uint64_t sub_26735A204(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735A268(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26735A2CC()
{
  result = qword_2800FB210;
  if (!qword_2800FB210)
  {
    sub_26735A324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB210);
  }

  return result;
}

unint64_t sub_26735A324()
{
  result = qword_2800FB208;
  if (!qword_2800FB208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB208);
  }

  return result;
}

uint64_t static SUTSchemaTestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000010, 0x80000002674A4D30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x80000002674A4D50, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x4550595454534554, 0xEE0053495249535FLL, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x4550595454534554, 0xEC0000005453555FLL, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0x4550595454534554, 0xEC0000005053555FLL, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26735A668(uint64_t a1)
{
  v2 = sub_26735A76C(&qword_2800FB218);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735A6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735A76C(&qword_2800FB218);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735A76C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SUTSchemaTestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB220, 0x277D5B0A0);
  sub_266ECAF2C(&qword_2800FB228, &qword_2800FB220, 0x277D5B0A0);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800FB230, 0x277D5B110);
  sub_266ECAF2C(&qword_2800FB238, &qword_2800FB230, 0x277D5B110);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674A4DA0);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800FB240, 0x277D5B0A8);
  sub_266ECAF2C(&qword_2800FB248, &qword_2800FB240, 0x277D5B0A8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x80000002674A4DC0);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800FB250, 0x277D5B0D8);
  sub_266ECAF2C(&qword_2800FB258, &qword_2800FB250, 0x277D5B0D8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x80000002674A4DE0);
  v13(v26, 0);
  sub_26738117C();
  v14 = sub_2673811BC();
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_266ECAD54(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_266ECAD54(v19 > 1, v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  (*(v24 + 32))(v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v12, v25);
  v14(v26, 0);
  sub_266ECB128(&unk_287893AB0);
  return sub_2673811CC();
}

uint64_t sub_26735AD90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26735AE28()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26735AEF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735AF58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735AFB8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB260, &qword_2800FB268, 0x277D5B098);
  a1[2] = sub_266ECAF2C(&qword_2800FB270, &qword_2800FB268, 0x277D5B098);
  result = sub_266ECAF2C(&qword_2800FB278, &qword_2800FB268, 0x277D5B098);
  a1[3] = result;
  return result;
}

uint64_t static TTMSchemaTTMClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v20[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v20[2] = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v20[0] = *(v9 + 56);
  (v20[0])(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496D7474, 0xE500000000000000);
  v10(v22, 0);
  v20[3] = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v21, 0x64496D7474, 0xE500000000000000);
  v13 = *(v9 + 48);
  if (!v13(v14, 1, v8))
  {
    sub_266ECB128(&unk_287893AE8);
    sub_26738115C();
  }

  (v12)(v21, 0);
  v11(v22, 0);
  sub_26738120C();
  (v20[0])(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v15(v22, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v21, 0x6449707274, 0xE500000000000000);
  if (!v13(v18, 1, v8))
  {
    sub_266ECB128(&unk_287893B18);
    sub_26738115C();
  }

  (v17)(v21, 0);
  v16(v22, 0);
  sub_266ECB128(&unk_287893B40);
  return sub_2673811CC();
}

uint64_t sub_26735B480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735B4E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMDecisionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674A4E60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x80000002674A4E80, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674A4EB0, v17);
  v18 = *v15;
  *v15 = v22;

  v13(v23, 0);
  sub_266ECB128(&unk_287893B70);
  return sub_26738112C();
}

uint64_t sub_26735B7B0(uint64_t a1)
{
  v2 = sub_26735B8B4(&qword_2800FB290);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735B818(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735B8B4(&qword_2800FB290);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735B8B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMDecisionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674A4F00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x80000002674A4F20, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x80000002674A4F40, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x80000002674A4F60, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000032, 0x80000002674A4F80, v29);
  v30 = *v27;
  *v27 = v36;

  v25(v37, 0);
  sub_266ECB128(&unk_287893BA0);
  return sub_26738112C();
}

uint64_t sub_26735BC04(uint64_t a1)
{
  v2 = sub_26735BD08(&qword_2800FB2A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735BC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735BD08(&qword_2800FB2A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735BD08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x80000002674A5000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x80000002674A5030, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x80000002674A5060, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674A5090, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_287893BD0);
  return sub_26738112C();
}

uint64_t sub_26735BFE8(uint64_t a1)
{
  v2 = sub_26735C0EC(&qword_2800FB2B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735C050(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735C0EC(&qword_2800FB2B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735C0EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMNeuralCombinerFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674A50F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x80000002674A5110, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A5130, v17);
  v18 = *v15;
  *v15 = v22;

  v13(v23, 0);
  sub_266ECB128(&unk_287893C00);
  return sub_26738112C();
}

uint64_t sub_26735C358(uint64_t a1)
{
  v2 = sub_26735C45C(&qword_2800FB2C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735C3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735C45C(&qword_2800FB2C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735C45C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMNeuralCombinerMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerRequestContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB2C8, 0x277D5B0C0);
  sub_266ECAF2C(&qword_2800FB2D0, &qword_2800FB2C8, 0x277D5B0C0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FB2D8, 0x277D5B0B0);
  sub_266ECAF2C(&qword_2800FB2E0, &qword_2800FB2D8, 0x277D5B0B0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FB2E8, 0x277D5B0B8);
  sub_266ECAF2C(&qword_2800FB2F0, &qword_2800FB2E8, 0x277D5B0B8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_287893C30);
  return sub_2673811CC();
}

uint64_t sub_26735C9CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735CA30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMNeuralCombinerRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB2F8, 0x277D5B0C8);
  sub_266ECAF2C(&qword_2800FB300, &qword_2800FB2F8, 0x277D5B0C8);
  sub_26738122C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v22[1] = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x73746C75736572, 0xE700000000000000);
  v14(v26, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v22[2] = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7465737361, 0xE500000000000000);
  v15(v26, 0);
  v22[0] = "lCombinerRequestEnded";
  v23 = *MEMORY[0x277D3E500];
  v16 = v25;
  v17 = *(v24 + 13);
  v17(v5);
  v24 = v17;
  v26[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v22[0] | 0x8000000000000000);
  v18(v26, 0);
  v22[0] = "dedResponseSuppressionEnded";
  (v17)(v5, *MEMORY[0x277D3E530], v16);
  v26[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v22[0] | 0x8000000000000000);
  v19(v26, 0);
  (v24)(v5, v23, v25);
  v26[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x80000002674A5200);
  v20(v26, 0);
  sub_266ECB128(&unk_287893C60);
  return sub_2673811CC();
}

uint64_t sub_26735D0B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735D114(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMNeuralCombinerRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449756374, 0xE500000000000000);
  v6(v9, 0);
  type metadata accessor for TTMSchemaTTMNeuralCombinerFailureReason(0);
  sub_26735D510();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v7(v9, 0);
  sub_266ECB128(&unk_287893C90);
  return sub_2673811CC();
}

uint64_t sub_26735D44C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735D4B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26735D510()
{
  result = qword_2800FB2A8;
  if (!qword_2800FB2A8)
  {
    type metadata accessor for TTMSchemaTTMNeuralCombinerFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB2A8);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4E8], v1);
  v25[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v25, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v24, 0x737473697865, 0xE600000000000000);
  v16 = *(v11 + 48);
  if (!v16(v17, 1, v10))
  {
    sub_266ECB128(&unk_287893CC0);
    sub_26738115C();
  }

  (v15)(v24, 0);
  v14(v25, 0);
  type metadata accessor for TTMSchemaTTMNeuralCombinerMode(0);
  sub_26735DB10(&qword_2800FB2B8, type metadata accessor for TTMSchemaTTMNeuralCombinerMode);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 1701080941, 0xE400000000000000);
  v18(v25, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v24, 1701080941, 0xE400000000000000);
  if (!v16(v21, 1, v10))
  {
    sub_266ECB128(&unk_287893CE8);
    sub_26738115C();
  }

  (v20)(v24, 0);
  v19(v25, 0);
  sub_266ECB128(&unk_287893D10);
  return sub_2673811CC();
}

uint64_t sub_26735DA04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735DA68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735DB10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26735DB58()
{
  result = qword_2800FB2C8;
  if (!qword_2800FB2C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB2C8);
  }

  return result;
}

uint64_t static TTMSchemaTTMNeuralCombinerTCUResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v16 = a1;
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449756374, 0xE500000000000000);
  v11(v18, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E500], v17);
  v18[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x80000002674A52E0);
  v12(v18, 0);
  type metadata accessor for TTMSchemaTTMTCUMitigationDecision(0);
  sub_26735E130(&qword_2800FB308, type metadata accessor for TTMSchemaTTMTCUMitigationDecision);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6D6F636572, 0xEE006E6F69746164);
  v13(v18, 0);
  type metadata accessor for TTMSchemaTTMNeuralCombinerMode(0);
  sub_26735E130(&qword_2800FB2B8, type metadata accessor for TTMSchemaTTMNeuralCombinerMode);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 1701080941, 0xE400000000000000);
  v14(v18, 0);
  sub_266ECB128(&unk_287893D40);
  return sub_2673811CC();
}

uint64_t sub_26735E06C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735E0D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735E130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TTMSchemaTTMOverrideFailure.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTMSchemaTTMOverrideType(0);
  sub_26735E574(&qword_2800FB310, type metadata accessor for TTMSchemaTTMOverrideType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656469727265766FLL, 0xEC00000065707954);
  v6(v9, 0);
  type metadata accessor for TTMSchemaTTMOverrideFailureReason(0);
  sub_26735E574(&qword_2800FB318, type metadata accessor for TTMSchemaTTMOverrideFailureReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26735E468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735E4CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26735E574(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26735E5BC()
{
  result = qword_2800FB328;
  if (!qword_2800FB328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB328);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674A5370, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674A53A0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674A53D0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x80000002674A5400, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_287893D70);
  return sub_26738112C();
}

uint64_t sub_26735E8A4(uint64_t a1)
{
  v2 = sub_26735E9A8(&qword_2800FB330);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26735E90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26735E9A8(&qword_2800FB330);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26735E9A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMOverrideFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideRequestContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB338, 0x277D5B0F0);
  sub_266ECAF2C(&qword_2800FB340, &qword_2800FB338, 0x277D5B0F0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FB348, 0x277D5B0E0);
  sub_266ECAF2C(&qword_2800FB350, &qword_2800FB348, 0x277D5B0E0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FB358, 0x277D5B0E8);
  sub_266ECAF2C(&qword_2800FB360, &qword_2800FB358, 0x277D5B0E8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_287893DA0);
  return sub_2673811CC();
}

uint64_t sub_26735EF18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735EF7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMOverrideRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB368, 0x277D5B108);
  sub_266ECAF2C(&qword_2800FB370, &qword_2800FB368, 0x277D5B108);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746C75736572, 0xE700000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465737361, 0xE500000000000000);
  v7(v9, 0);
  sub_266ECB128(&unk_287893DD0);
  return sub_2673811CC();
}

uint64_t sub_26735F2F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735F35C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMOverrideRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTMSchemaTTMOverrideFailureReason(0);
  sub_26735F810();
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E6F73616572, 0xE600000000000000);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x6E6F73616572, 0xE600000000000000);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_287893E00);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800FB378, 0x277D5B100);
  sub_266ECAF2C(&qword_2800FB380, &qword_2800FB378, 0x277D5B100);
  sub_26738122C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x756C696146756374, 0xEB00000000736572);
  v13(v17, 0);
  sub_266ECB128(&unk_287893E28);
  return sub_2673811CC();
}

uint64_t sub_26735F74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735F7B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26735F810()
{
  result = qword_2800FB318;
  if (!qword_2800FB318)
  {
    type metadata accessor for TTMSchemaTTMOverrideFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB318);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893E58);
  return sub_2673811CC();
}

uint64_t sub_26735FB0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735FB70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26735FBD4()
{
  result = qword_2800FB340;
  if (!qword_2800FB340)
  {
    sub_26735FC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB340);
  }

  return result;
}

unint64_t sub_26735FC2C()
{
  result = qword_2800FB338;
  if (!qword_2800FB338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB338);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideResult.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTMSchemaTTMOverrideType(0);
  sub_267360040(&qword_2800FB310, type metadata accessor for TTMSchemaTTMOverrideType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656469727265766FLL, 0xEC00000065707954);
  v6(v9, 0);
  type metadata accessor for TTMSchemaTTMTCUMitigationDecision(0);
  sub_267360040(&qword_2800FB308, type metadata accessor for TTMSchemaTTMTCUMitigationDecision);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6D6F636572, 0xEE006E6F69746164);
  return v7(v9, 0);
}

uint64_t sub_26735FF34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26735FF98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267360040(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267360088()
{
  result = qword_2800FB390;
  if (!qword_2800FB390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB390);
  }

  return result;
}

uint64_t static TTMSchemaTTMOverrideTCUFailure.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449756374, 0xE500000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FB328, 0x277D5B0D0);
  sub_266ECAF2C(&qword_2800FB320, &qword_2800FB328, 0x277D5B0D0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x736572756C696166, 0xE800000000000000);
  return v7(v9, 0);
}

uint64_t sub_267360398(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673603FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMOverrideTCUResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449756374, 0xE500000000000000);
  v9(v19, 0);
  type metadata accessor for TTMSchemaTTMTCUMitigationDecision(0);
  sub_267360A80(&qword_2800FB308, type metadata accessor for TTMSchemaTTMTCUMitigationDecision);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E656D6D6F636572, 0xEE006E6F69746164);
  v10(v19, 0);
  type metadata accessor for TTMSchemaTTMOverrideType(0);
  sub_267360A80(&qword_2800FB310, type metadata accessor for TTMSchemaTTMOverrideType);
  v17[1] = a1;
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x656469727265766FLL, 0xEC00000065707954);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x656469727265766FLL, 0xEC00000065707954);
  if (!(*(v7 + 48))(v14, 1, v6))
  {
    sub_266ECB128(&unk_287893E88);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800FB390, 0x277D5B0F8);
  sub_266ECAF2C(&qword_2800FB388, &qword_2800FB390, 0x277D5B0F8);
  sub_26738122C();
  v8(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x656469727265766FLL, 0xEF73746C75736552);
  v15(v19, 0);
  sub_266ECB128(&unk_287893EB0);
  return sub_2673811CC();
}

uint64_t sub_2673609BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267360A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267360A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TTMSchemaTTMOverrideType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674A55E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x80000002674A5600, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x80000002674A5620, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x80000002674A5640, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x80000002674A5660, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x80000002674A5680, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x80000002674A56A0, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x80000002674A56C0, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x80000002674A56F0, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001CLL, 0x80000002674A5720, v59);
  v60 = *v57;
  *v57 = v71;

  v55(v72, 0);
  sub_266ECB128(&unk_287893EE0);
  return sub_26738112C();
}

uint64_t sub_267361048(uint64_t a1)
{
  v2 = sub_26736114C(&qword_2800FB398);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673610B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736114C(&qword_2800FB398);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736114C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMOverrideType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMRequestContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB3A0, 0x277D5B128);
  sub_266ECAF2C(&qword_2800FB3A8, &qword_2800FB3A0, 0x277D5B128);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FB3B0, 0x277D5B118);
  sub_266ECAF2C(&qword_2800FB3B8, &qword_2800FB3B0, 0x277D5B118);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FB3C0, 0x277D5B120);
  sub_266ECAF2C(&qword_2800FB3C8, &qword_2800FB3C0, 0x277D5B120);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_287893F10);
  return sub_2673811CC();
}

uint64_t sub_2673616BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267361720(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB3D0, 0x277D5B130);
  sub_266ECAF2C(&qword_2800FB3D8, &qword_2800FB3D0, 0x277D5B130);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746C75736572, 0xE700000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287893F40);
  return sub_2673811CC();
}

uint64_t sub_2673619C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267361A28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTMSchemaTTMRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTMSchemaTTMFailureReason(0);
  sub_267361DC8(&qword_2800FB298, type metadata accessor for TTMSchemaTTMFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287893F70);
  return sub_2673811CC();
}

uint64_t sub_267361CBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267361D20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267361DC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267361E10()
{
  result = qword_2800FB3C0;
  if (!qword_2800FB3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB3C0);
  }

  return result;
}

uint64_t static TTMSchemaTTMRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287893FA0);
  return sub_2673811CC();
}

uint64_t sub_2673620BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267362120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267362184()
{
  result = qword_2800FB3A8;
  if (!qword_2800FB3A8)
  {
    sub_2673621DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB3A8);
  }

  return result;
}

unint64_t sub_2673621DC()
{
  result = qword_2800FB3A0;
  if (!qword_2800FB3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB3A0);
  }

  return result;
}

uint64_t static TTMSchemaTTMTCUMitigationDecision.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674A5840, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x80000002674A5870, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674A58A0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x80000002674A58D0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x80000002674A5900, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x80000002674A5930, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000033, 0x80000002674A5960, v41);
  v42 = *v39;
  *v39 = v50;

  v37(v51, 0);
  sub_266ECB128(&unk_287893FD0);
  return sub_26738112C();
}

uint64_t sub_267362614(uint64_t a1)
{
  v2 = sub_267362718(&qword_2800FB3E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736267C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267362718(&qword_2800FB3E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267362718(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTMSchemaTTMTCUMitigationDecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTMSchemaTTMTCUResult.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v14 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449756374, 0xE500000000000000);
  v7(v15, 0);
  type metadata accessor for TTMSchemaTTMTCUMitigationDecision(0);
  sub_267362C50(&qword_2800FB308, type metadata accessor for TTMSchemaTTMTCUMitigationDecision);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F697369636564, 0xE800000000000000);
  v8(v15, 0);
  type metadata accessor for TTMSchemaTTMDecisionSource(0);
  sub_267362C50(&qword_2800FB288, type metadata accessor for TTMSchemaTTMDecisionSource);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F697369636564, 0xEE00656372756F53);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x6E6F697369636564, 0xEE00656372756F53);
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    sub_266ECB128(&unk_287894000);
    sub_26738115C();
  }

  (v11)(v14, 0);
  v10(v15, 0);
  sub_266ECB128(&unk_287894028);
  return sub_2673811CC();
}

uint64_t sub_267362B8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267362BF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267362C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TTSSchemaTTSAudioInterface.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v19 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449726F646E6576, 0xE800000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x49746375646F7270, 0xE900000000000064);
  return v16(v20, 0);
}

uint64_t sub_267363000(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267363064(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673630C8()
{
  result = qword_2800F8D58;
  if (!qword_2800F8D58)
  {
    sub_267363120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D58);
  }

  return result;
}

unint64_t sub_267363120()
{
  result = qword_2800F8D50;
  if (!qword_2800F8D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D50);
  }

  return result;
}

uint64_t static TTSSchemaTTSAudioOutputRoute.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674A5A30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674A5A50, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A5A70, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x80000002674A5AA0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x80000002674A5AD0, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x80000002674A5AF0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x80000002674A5B20, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x80000002674A5B40, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2673635B8(uint64_t a1)
{
  v2 = sub_2673636BC(&qword_2800FB3F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267363620(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673636BC(&qword_2800FB3F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673636BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSAudioOutputRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB3F8, 0x277D5B148);
  sub_266ECAF2C(&qword_2800FB400, &qword_2800FB3F8, 0x277D5B148);
  sub_26738120C();
  v9 = sub_26738116C();
  v30 = *(v9 - 8);
  v10 = *(v30 + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v36, 0);
  sub_266ECB294(0, &qword_2800FB408, 0x277D5B150);
  sub_266ECAF2C(&qword_2800FB410, &qword_2800FB408, 0x277D5B150);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F43686365657073, 0xED0000747865746ELL);
  v12(v36, 0);
  sub_266ECB294(0, &qword_2800FB418, 0x277D5B160);
  sub_266ECAF2C(&qword_2800FB420, &qword_2800FB418, 0x277D5B160);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x5274736575716572, 0xEF64657669656365);
  v13(v36, 0);
  sub_266ECB294(0, &qword_2800FB428, 0x277D5B168);
  sub_266ECAF2C(&qword_2800FB430, &qword_2800FB428, 0x277D5B168);
  v31 = a1;
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674A5B90);
  v14(v36, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0xD000000000000014, 0x80000002674A5B90);
  if (!(*(v30 + 48))(v17, 1, v9))
  {
    sub_266ECB128(&unk_287894058);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  sub_266ECB294(0, &qword_2800FB438, 0x277D5B1B8);
  sub_266ECAF2C(&qword_2800FB440, &qword_2800FB438, 0x277D5B1B8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674A5BB0);
  v18(v36, 0);
  sub_266ECB294(0, &qword_2800FB448, 0x277D5B158);
  sub_266ECAF2C(&qword_2800FB450, &qword_2800FB448, 0x277D5B158);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674A5BD0);
  v19(v36, 0);
  v20 = v32;
  sub_26738117C();
  v21 = sub_2673811BC();
  v23 = v22;
  v24 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_266ECAD54(0, v24[2] + 1, 1, v24);
    *v23 = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_266ECAD54(v26 > 1, v27 + 1, 1, v24);
    *v23 = v24;
  }

  v24[2] = v27 + 1;
  (*(v33 + 32))(v24 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, v20, v34);
  v21(v36, 0);
  sub_266ECB128(&unk_287894080);
  return sub_2673811CC();
}

uint64_t sub_267363F48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267363FE0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2673640AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267364110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267364170(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB458, &qword_2800F1EB0, 0x277D5B140);
  a1[2] = sub_266ECAF2C(&qword_2800FB460, &qword_2800F1EB0, 0x277D5B140);
  result = sub_266ECAF2C(&qword_2800FB468, &qword_2800F1EB0, 0x277D5B140);
  a1[3] = result;
  return result;
}

uint64_t static TTSSchemaTTSClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_26738113C();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v33 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v34 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v32 = *(v11 + 56);
  v32(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449737474, 0xE500000000000000);
  v12(v37, 0);
  v35 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v36, 0x6449737474, 0xE500000000000000);
  v31 = *(v11 + 48);
  if (!v31(v15, 1, v10))
  {
    sub_266ECB128(&unk_2878940B8);
    sub_26738115C();
  }

  (v14)(v36, 0);
  v13(v37, 0);
  sub_26738120C();
  v32(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x4974736575716572, 0xE900000000000064);
  v16(v37, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v36, 0x4974736575716572, 0xE900000000000064);
  if (!v31(v19, 1, v10))
  {
    sub_266ECB128(&unk_2878940E8);
    sub_26738115C();
  }

  (v18)(v36, 0);
  v17(v37, 0);
  (*(v28 + 104))(v29, *MEMORY[0x277D3E530], v30);
  v37[0] = 1;
  sub_26738114C();
  v20 = v32;
  v32(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449746E65696C63, 0xE800000000000000);
  v21(v37, 0);
  sub_26738120C();
  v20(v9, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6575716552627573, 0xEC00000064497473);
  v22(v37, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v36, 0x6575716552627573, 0xEC00000064497473);
  if (!v31(v25, 1, v10))
  {
    sub_266ECB128(&unk_287894118);
    sub_26738115C();
  }

  (v24)(v36, 0);
  v23(v37, 0);
  sub_26738120C();
  v32(v9, 0, 1, v10);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x4977656956656361, 0xE900000000000064);
  return v26(v37, 0);
}

uint64_t sub_26736491C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267364980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSClientSpeechContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v9(v27, 0);
  sub_266ECB294(0, &qword_2800FB470, 0x277D5B188);
  sub_266ECAF2C(&qword_2800FB478, &qword_2800FB470, 0x277D5B188);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v27, 0);
  sub_266ECB294(0, &qword_2800FB480, 0x277D5B178);
  sub_266ECAF2C(&qword_2800FB488, &qword_2800FB480, 0x277D5B178);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800FB490, 0x277D5B180);
  sub_266ECAF2C(&qword_2800FB498, &qword_2800FB490, 0x277D5B180);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800FB4A0, 0x277D5B170);
  sub_266ECAF2C(&qword_2800FB4A8, &qword_2800FB4A0, 0x277D5B170);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x656C6C65636E6163, 0xE900000000000064);
  v14(v27, 0);
  sub_26738117C();
  v15 = sub_2673811BC();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266ECAD54(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266ECAD54(v20 > 1, v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v13, v26);
  return v15(v27, 0);
}

uint64_t sub_2673650D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267365134(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSClientSynthesisContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v9(v27, 0);
  sub_266ECB294(0, &qword_2800FB4B0, 0x277D5B1A8);
  sub_266ECAF2C(&qword_2800FB4B8, &qword_2800FB4B0, 0x277D5B1A8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v27, 0);
  sub_266ECB294(0, &qword_2800FB4C0, 0x277D5B198);
  sub_266ECAF2C(&qword_2800FB4C8, &qword_2800FB4C0, 0x277D5B198);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800FB4D0, 0x277D5B1A0);
  sub_266ECAF2C(&qword_2800FB4D8, &qword_2800FB4D0, 0x277D5B1A0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800FB4E0, 0x277D5B190);
  sub_266ECAF2C(&qword_2800FB4E8, &qword_2800FB4E0, 0x277D5B190);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x656C6C65636E6163, 0xE900000000000064);
  v14(v27, 0);
  sub_26738117C();
  v15 = sub_2673811BC();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266ECAD54(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266ECAD54(v20 > 1, v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v13, v26);
  return v15(v27, 0);
}

uint64_t sub_267365884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673658E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSRequestReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15[1] = a1;
  v1 = sub_26738113C();
  v17 = *(v1 - 8);
  v18 = v1;
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1);
  v16 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v15[2] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v19, 0);
  sub_266ECB294(0, &qword_2800FB4F0, 0x277D5B1B0);
  sub_266ECAF2C(&qword_2800FB4F8, &qword_2800FB4F0, 0x277D5B1B0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x80000002674A5CC0);
  v11(v19, 0);
  (*(v17 + 104))(v16, *MEMORY[0x277D3E508], v18);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7865547475706E69, 0xEF6874676E654C74);
  v12(v19, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x49747865746E6F63, 0xE900000000000064);
  return v13(v19, 0);
}

uint64_t sub_267365E24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267365E88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSRequestReceivedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v5, *MEMORY[0x277D3E530], v1);
  v22[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v20[0] = *(v11 + 56);
  (v20[0])(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674A5D10);
  v12(v22, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0xD000000000000010, 0x80000002674A5D10);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_287894140);
    sub_26738115C();
  }

  (v14)(v21, 0);
  v13(v22, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v16 = v20[0];
  (v20[0])(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  v17(v22, 0);
  sub_26738120C();
  v16(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x49747865746E6F63, 0xE900000000000064);
  return v18(v22, 0);
}

uint64_t sub_26736639C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267366400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSSpeechCancelled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_2673666EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267366750(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673667B4()
{
  result = qword_2800FB4A8;
  if (!qword_2800FB4A8)
  {
    sub_26736680C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB4A8);
  }

  return result;
}

unint64_t sub_26736680C()
{
  result = qword_2800FB4A0;
  if (!qword_2800FB4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4A0);
  }

  return result;
}

uint64_t static TTSSchemaTTSSpeechEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v29 = *MEMORY[0x277D3E500];
  v11 = *(v3 + 104);
  v32 = v3 + 104;
  v30 = v11;
  v27 = v2;
  (v11)(v6);
  v33[0] = 1;
  sub_26738114C();
  v31 = sub_26738116C();
  v12 = *(*(v31 - 8) + 56);
  v12(v10, 0, 1, v31);
  v26 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x80000002674A5D90);
  v13(v33, 0);
  v25 = "DurationInSecond";
  v14 = v29;
  v15 = v30;
  v30(v6, v29, v2);
  v33[0] = 1;
  sub_26738114C();
  v16 = v31;
  v12(v10, 0, 1, v31);
  v28 = a1;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v25 | 0x8000000000000000);
  v17(v33, 0);
  v18 = v14;
  v19 = v27;
  v15(v6, v18, v27);
  v33[0] = 1;
  sub_26738114C();
  v20 = v26;
  v26(v10, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x80000002674A5DE0);
  v21(v33, 0);
  v15(v6, *MEMORY[0x277D3E538], v19);
  v33[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F4374706D6F7270, 0xEB00000000746E75);
  v22(v33, 0);
  v15(v6, *MEMORY[0x277D3E508], v19);
  v33[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v31);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xEA00000000007365);
  return v23(v33, 0);
}

uint64_t sub_267366E00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267366E64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267366EC8()
{
  result = qword_2800FB488;
  if (!qword_2800FB488)
  {
    sub_267366F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB488);
  }

  return result;
}

unint64_t sub_267366F20()
{
  result = qword_2800FB480;
  if (!qword_2800FB480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB480);
  }

  return result;
}

uint64_t static TTSSchemaTTSSpeechFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E508], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xEA00000000007365);
  return v10(v12, 0);
}

uint64_t sub_2673671BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267367220(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267367284()
{
  result = qword_2800FB498;
  if (!qword_2800FB498)
  {
    sub_2673672DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB498);
  }

  return result;
}

unint64_t sub_2673672DC()
{
  result = qword_2800FB490;
  if (!qword_2800FB490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB490);
  }

  return result;
}

uint64_t static TTSSchemaTTSSpeechStarted.makeTypeManifestAndEnsureFields(in:)(char *a1)
{
  v41 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v45 = v1;
  v46 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v42 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v38 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTSSchemaTTSAudioOutputRoute(0);
  sub_267367E60(&qword_2800FB3E8, type metadata accessor for TTSSchemaTTSAudioOutputRoute);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026749AA90);
  v13(v47, 0);
  v43 = *MEMORY[0x277D3E500];
  v14 = *(v46 + 104);
  v46 += 104;
  v44 = v14;
  v14(v42);
  v47[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x80000002674A5E60);
  v15(v47, 0);
  type metadata accessor for TTSSchemaTTSSynthesisSource(0);
  sub_267367E60(&qword_2800FB500, type metadata accessor for TTSSchemaTTSSynthesisSource);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x69736568746E7973, 0xEF656372756F5373);
  v16(v47, 0);
  sub_266ECB294(0, &qword_2800FB4F0, 0x277D5B1B0);
  sub_266ECAF2C(&qword_2800FB4F8, &qword_2800FB4F0, 0x277D5B1B0);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F436563696F76, 0xEC00000074786574);
  v17(v47, 0);
  type metadata accessor for TTSSchemaTTSSynthesisEffect(0);
  sub_267367E60(&qword_2800FB508, type metadata accessor for TTSSchemaTTSSynthesisEffect);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x69736568746E7973, 0xEF74636566664573);
  v18(v47, 0);
  sub_266ECB294(0, &qword_2800F8D50, 0x277D5B138);
  sub_266ECAF2C(&qword_2800F8D58, &qword_2800F8D50, 0x277D5B138);
  sub_26738120C();
  v19 = v9;
  v20 = v9;
  v21 = v12;
  v11(v8, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E496F69647561, 0xEE00656361667265);
  v22(v47, 0);
  v23 = v42;
  v24 = v43;
  v44(v42, v43, v45);
  v47[0] = 1;
  sub_26738114C();
  v25 = v19;
  v11(v8, 0, 1, v19);
  v38[1] = v21;
  v39 = v11;
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D756C6F76, 0xE600000000000000);
  v26(v47, 0);
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_267367E60(&qword_2800F0638, type metadata accessor for SISchemaDeviceThermalState);
  sub_26738120C();
  v40 = v19;
  v11(v8, 0, 1, v19);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x536C616D72656874, 0xEC00000065746174);
  v27(v47, 0);
  v41 = "dLatencyInSecond";
  v28 = v24;
  v29 = v44;
  v30 = v45;
  v44(v23, v28, v45);
  v47[0] = 1;
  sub_26738114C();
  v31 = v25;
  v32 = v39;
  v39(v8, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v41 | 0x8000000000000000);
  v33(v47, 0);
  v41 = "assetSelectionLatencyInSecond";
  v29(v23, v43, v30);
  v47[0] = 1;
  sub_26738114C();
  v34 = v40;
  v32(v8, 0, 1, v40);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v41 | 0x8000000000000000);
  v35(v47, 0);
  v29(v23, *MEMORY[0x277D3E4E8], v45);
  v47[0] = 1;
  sub_26738114C();
  v32(v8, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0x74536D7261577369, 0xEB00000000747261);
  return v36(v47, 0);
}

uint64_t sub_267367D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267367E00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267367E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TTSSchemaTTSSynthesisCancelled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_267368134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267368198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673681FC()
{
  result = qword_2800FB4E8;
  if (!qword_2800FB4E8)
  {
    sub_267368254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB4E8);
  }

  return result;
}

unint64_t sub_267368254()
{
  result = qword_2800FB4E0;
  if (!qword_2800FB4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4E0);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisEffect.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674A5F30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674A5F50, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x80000002674A5F70, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2673684B8(uint64_t a1)
{
  v2 = sub_2673685BC(&qword_2800FB510);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267368520(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673685BC(&qword_2800FB510);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673685BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSSynthesisEffect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v29 = *MEMORY[0x277D3E500];
  v11 = *(v3 + 104);
  v32 = v3 + 104;
  v30 = v11;
  v27 = v2;
  (v11)(v6);
  v33[0] = 1;
  sub_26738114C();
  v31 = sub_26738116C();
  v12 = *(*(v31 - 8) + 56);
  v12(v10, 0, 1, v31);
  v26 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x80000002674A5D90);
  v13(v33, 0);
  v25 = "DurationInSecond";
  v14 = v29;
  v15 = v30;
  v30(v6, v29, v2);
  v33[0] = 1;
  sub_26738114C();
  v16 = v31;
  v12(v10, 0, 1, v31);
  v28 = a1;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v25 | 0x8000000000000000);
  v17(v33, 0);
  v18 = v14;
  v19 = v27;
  v15(v6, v18, v27);
  v33[0] = 1;
  sub_26738114C();
  v20 = v26;
  v26(v10, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x80000002674A5DE0);
  v21(v33, 0);
  v15(v6, *MEMORY[0x277D3E538], v19);
  v33[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F4374706D6F7270, 0xEB00000000746E75);
  v22(v33, 0);
  v15(v6, *MEMORY[0x277D3E508], v19);
  v33[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v31);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xEA00000000007365);
  return v23(v33, 0);
}

uint64_t sub_267368BA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267368C0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267368C70()
{
  result = qword_2800FB4C8;
  if (!qword_2800FB4C8)
  {
    sub_267368CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB4C8);
  }

  return result;
}

unint64_t sub_267368CC8()
{
  result = qword_2800FB4C0;
  if (!qword_2800FB4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4C0);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E508], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xEA00000000007365);
  return v10(v12, 0);
}

uint64_t sub_267368F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267368FC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26736902C()
{
  result = qword_2800FB4D8;
  if (!qword_2800FB4D8)
  {
    sub_267369084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB4D8);
  }

  return result;
}

unint64_t sub_267369084()
{
  result = qword_2800FB4D0;
  if (!qword_2800FB4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4D0);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674A6020, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674A6040, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674A6070, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x80000002674A6090, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x80000002674A60C0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x80000002674A60F0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ALL, 0x80000002674A6120, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2673694AC(uint64_t a1)
{
  v2 = sub_2673695B0(&qword_2800FB518);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267369514(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673695B0(&qword_2800FB518);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673695B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSSynthesisSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSSynthesisStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTSSchemaTTSSynthesisSource(0);
  sub_267369B08(&qword_2800FB500, type metadata accessor for TTSSchemaTTSSynthesisSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69736568746E7973, 0xEF656372756F5373);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800FB4F0, 0x277D5B1B0);
  sub_266ECAF2C(&qword_2800FB4F8, &qword_2800FB4F0, 0x277D5B1B0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F436563696F76, 0xEC00000074786574);
  v7(v11, 0);
  type metadata accessor for TTSSchemaTTSSynthesisEffect(0);
  sub_267369B08(&qword_2800FB508, type metadata accessor for TTSSchemaTTSSynthesisEffect);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x69736568746E7973, 0xEF74636566664573);
  v8(v11, 0);
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_267369B08(&qword_2800F0638, type metadata accessor for SISchemaDeviceThermalState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x536C616D72656874, 0xEC00000065746174);
  return v9(v11, 0);
}

uint64_t sub_267369A44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267369AA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267369B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TTSSchemaTTSVoiceContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = sub_26738113C();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for TTSSchemaTTSVoiceType(0);
  sub_26736A240(&qword_2800FB520, type metadata accessor for TTSSchemaTTSVoiceType);
  v27 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v25 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7079546563696F76, 0xE900000000000065);
  v13(v29, 0);
  type metadata accessor for TTSSchemaTTSVoiceFootprint(0);
  sub_26736A240(&qword_2800FB528, type metadata accessor for TTSSchemaTTSVoiceFootprint);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F6F466563696F76, 0xEE00746E69727074);
  v14(v29, 0);
  v15 = *MEMORY[0x277D3E538];
  v16 = *(v2 + 104);
  v23 = v2 + 104;
  v24 = v16;
  v17 = v26;
  v18 = v28;
  v16(v26, v15, v28);
  v29[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265566563696F76, 0xEC0000006E6F6973);
  v19(v29, 0);
  v24(v17, v15, v18);
  v29[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x656372756F736572, 0xEF6E6F6973726556);
  v20(v29, 0);
  type metadata accessor for SISchemaVoiceName(0);
  sub_26736A240(&qword_2800F6410, type metadata accessor for SISchemaVoiceName);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D614E6563696F76, 0xE900000000000065);
  return v21(v29, 0);
}

uint64_t sub_26736A134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736A198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26736A240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26736A288()
{
  result = qword_2800FB4F0;
  if (!qword_2800FB4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB4F0);
  }

  return result;
}

uint64_t static TTSSchemaTTSVoiceFallbackOccurred.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465536563696F76, 0xED000073676E6974);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800FB4F0, 0x277D5B1B0);
  sub_266ECAF2C(&qword_2800FB4F8, &qword_2800FB4F0, 0x277D5B1B0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x747865746E6F63, 0xE700000000000000);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x49747865746E6F63, 0xE900000000000064);
  return v8(v10, 0);
}

uint64_t sub_26736A674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736A6D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static TTSSchemaTTSVoiceFootprint.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD000000000000019, 0x80000002674A6220, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674A6240, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x80000002674A6260, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x80000002674A6280, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26736AA08(uint64_t a1)
{
  v2 = sub_26736AB0C(&qword_2800FB530);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736AA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736AB0C(&qword_2800FB530);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736AB0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSVoiceFootprint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSVoiceGender.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674A62D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674A62F0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x80000002674A6310, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26736AD64(uint64_t a1)
{
  v2 = sub_26736AE68(&qword_2800FB540);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736ADCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736AE68(&qword_2800FB540);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736AE68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSVoiceGender(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSSchemaTTSVoiceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0xD000000000000014, 0x80000002674A6360, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x80000002674A6380, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674A63A0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x80000002674A63C0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x80000002674A63E0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26736B1A8(uint64_t a1)
{
  v2 = sub_26736B2AC(&qword_2800FB548);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736B210(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736B2AC(&qword_2800FB548);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736B2AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSchemaTTSVoiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UAFSchemaUAFAsset.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v40 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v46 = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v48 = *(v4 + 104);
  v49 = v4 + 104;
  v48(v7, v12, v3);
  v51[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v41 = *(v13 - 8);
  v15 = v41 + 56;
  v14 = *(v41 + 56);
  v40[0] = v13;
  v14(v11, 0, 1, v13);
  v43 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D614E7465737361, 0xE900000000000065);
  v16(v51, 0);
  v45 = v7;
  v17 = v7;
  v47 = v3;
  v18 = v48;
  v48(v17, v12, v3);
  v51[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x6570537465737361, 0xEE00726569666963);
  v19(v51, 0);
  LODWORD(v42) = v12;
  v18(v45, v12, v3);
  v51[0] = 1;
  sub_26738114C();
  v20 = v40[0];
  v21 = v43;
  v43(v11, 0, 1, v40[0]);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265567465737361, 0xEC0000006E6F6973);
  v22(v51, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_26736BE38(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v21(v11, 0, 1, v20);
  v23 = v21;
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x636F4C7465737361, 0xEB00000000656C61);
  v24(v51, 0);
  type metadata accessor for UAFSchemaUAFAssetSource(0);
  sub_26736BE38(&qword_2800FB550, type metadata accessor for UAFSchemaUAFAssetSource);
  sub_26738120C();
  v23(v11, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x756F537465737361, 0xEB00000000656372);
  v25(v51, 0);
  v48(v45, *MEMORY[0x277D3E538], v47);
  v51[0] = 1;
  sub_26738114C();
  v44 = v15;
  v23(v11, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x7A69537465737361, 0xEF6B7369446E4F65);
  v26(v51, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v50, 0x7A69537465737361, 0xEF6B7369446E4F65);
  if (!(*(v41 + 48))(v29, 1, v20))
  {
    sub_266ECB128(&unk_287894170);
    sub_26738115C();
  }

  (v28)(v50, 0);
  v27(v51, 0);
  v30 = v45;
  v31 = v47;
  v48(v45, *MEMORY[0x277D3E4E8], v47);
  v51[0] = 1;
  sub_26738114C();
  v32 = v43;
  v43(v11, 0, 1, v20);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674A6420);
  v33(v51, 0);
  v34 = v48;
  v48(v30, v42, v31);
  v51[0] = 1;
  sub_26738114C();
  v32(v11, 0, 1, v20);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0x7461507465737361, 0xE900000000000068);
  v35(v51, 0);
  v42 = "isAssetPathValid";
  v36 = *MEMORY[0x277D3E540];
  v34(v30, v36, v31);
  v51[0] = 1;
  sub_26738114C();
  v32(v11, 0, 1, v20);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v42 | 0x8000000000000000);
  v37(v51, 0);
  v34(v30, v36, v47);
  v51[0] = 1;
  sub_26738114C();
  v32(v11, 0, 1, v20);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, 0x80000002674A6460);
  return v38(v51, 0);
}

uint64_t sub_26736BD2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736BD90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26736BE38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26736BE80()
{
  result = qword_2800FB560;
  if (!qword_2800FB560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB560);
  }

  return result;
}

uint64_t static UAFSchemaUAFAssetDailyStatusWithDeviceProperties.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v0);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB568, 0x277D5B218);
  sub_266ECAF2C(&qword_2800FB570, &qword_2800FB568, 0x277D5B218);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x654D656369766564, 0xEE00617461646174);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F94A0, 0x277D5A5D8);
  sub_266ECAF2C(&qword_2800F9498, &qword_2800F94A0, 0x277D5A5D8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x800000026748BC70);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26736C314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736C378(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6D614E7465737361, 0xE900000000000065);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E540], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674A64F0);
  return v15(v18, 0);
}

uint64_t sub_26736C744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736C7A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26736C80C()
{
  result = qword_2800FB588;
  if (!qword_2800FB588)
  {
    sub_26736C864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB588);
  }

  return result;
}

unint64_t sub_26736C864()
{
  result = qword_2800FB590;
  if (!qword_2800FB590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB590);
  }

  return result;
}

uint64_t static UAFSchemaUAFAssetSet.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37[1] = a1;
  v38 = sub_26738113C();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v37 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  LODWORD(v39) = *MEMORY[0x277D3E530];
  v11 = *(v3 + 104);
  v40 = v3 + 104;
  v41 = v11;
  v11(v6);
  v45[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v43 = v12;
  v14(v10, 0, 1, v12);
  v42 = v15;
  v16 = v14;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x7465537465737361, 0xEC000000656D614ELL);
  v17(v45, 0);
  sub_266ECB294(0, &qword_2800FB560, 0x277D5B1C0);
  sub_266ECAF2C(&qword_2800FB558, &qword_2800FB560, 0x277D5B1C0);
  sub_26738122C();
  v14(v10, 0, 1, v12);
  v37[2] = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x737465737361, 0xE600000000000000);
  v18(v45, 0);
  v44 = v6;
  v19 = v39;
  v20 = v38;
  v21 = v41;
  v41(v6, v39, v38);
  v45[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v43);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x7079547465737361, 0xE900000000000065);
  v22(v45, 0);
  v23 = v20;
  v24 = v20;
  v25 = v21;
  v21(v44, v19, v23);
  v45[0] = 1;
  sub_26738114C();
  v26 = v43;
  v16(v10, 0, 1, v43);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x7465537465737361, 0xEA00000000006449);
  v27(v45, 0);
  v25(v44, v39, v24);
  v45[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x65636E6569647561, 0xEA00000000006449);
  v28(v45, 0);
  sub_266ECB294(0, &qword_2800FB598, 0x277D5B220);
  sub_266ECAF2C(&qword_2800FB5A0, &qword_2800FB598, 0x277D5B220);
  sub_26738122C();
  v16(v10, 0, 1, v26);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x80000002674A6530);
  v29(v45, 0);
  v39 = "oadErrorCodeFrequency";
  v30 = *MEMORY[0x277D3E4E8];
  v31 = v44;
  v32 = v38;
  v33 = v41;
  v41(v44, v30, v38);
  v45[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v26);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v39 | 0x8000000000000000);
  v34(v45, 0);
  v33(v31, v30, v32);
  v45[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v43);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x80000002674A6580);
  return v35(v45, 0);
}

uint64_t sub_26736D0BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736D120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetSetStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F67F8, 0x277D5B1D8);
  sub_266ECAF2C(&qword_2800F6800, &qword_2800F67F8, 0x277D5B1D8);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465737341666175, 0xEC00000073746553);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800FB5A8, 0x277D5B1F8);
  sub_266ECAF2C(&qword_2800FB5B0, &qword_2800FB5A8, 0x277D5B1F8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x80000002674A65E0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800FB590, 0x277D5B1D0);
  sub_266ECAF2C(&qword_2800FB588, &qword_2800FB590, 0x277D5B1D0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x74657373416C6C61, 0xE900000000000073);
  return v8(v10, 0);
}

uint64_t sub_26736D56C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736D5D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetSetSubscription.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v20 = "af.UAFAssetSetSubscription";
  v10 = *(v2 + 104);
  v10(v5, *MEMORY[0x277D3E530], v1);
  v22[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v19[1] = v12 + 56;
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v20 | 0x8000000000000000);
  v14(v22, 0);
  v10(v5, *MEMORY[0x277D3E538], v1);
  v22[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7465537465737361, 0xEF73656369646E49);
  v15(v22, 0);
  sub_266ECB294(0, &qword_2800FB5B8, 0x277D5B1F0);
  sub_266ECAF2C(&qword_2800FB5C0, &qword_2800FB5B8, 0x277D5B1F0);
  sub_26738122C();
  v13(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x7465537465737361, 0xEE00736567617355);
  v16(v22, 0);
  sub_266ECB294(0, &qword_2800FB5C8, 0x277D5B200);
  sub_266ECAF2C(&qword_2800FB5D0, &qword_2800FB5C8, 0x277D5B200);
  sub_26738122C();
  v13(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x696C416567617375, 0xEC00000073657361);
  return v17(v22, 0);
}

uint64_t sub_26736DB64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736DBC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetSetUsage.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v19 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D614E6567617375, 0xE900000000000065);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C61566567617375, 0xEA00000000006575);
  return v16(v20, 0);
}

uint64_t sub_26736DF94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736DFF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26736E05C()
{
  result = qword_2800FB5C0;
  if (!qword_2800FB5C0)
  {
    sub_26736E0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB5C0);
  }

  return result;
}

unint64_t sub_26736E0B4()
{
  result = qword_2800FB5B8;
  if (!qword_2800FB5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB5B8);
  }

  return result;
}

uint64_t static UAFSchemaUAFAssetSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674A66B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674A66D0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674A66F0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674A6710, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x80000002674A6730, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26736E3F4(uint64_t a1)
{
  v2 = sub_26736E4F8(&qword_2800FB5E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26736E45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26736E4F8(&qword_2800FB5E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26736E4F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UAFSchemaUAFAssetSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UAFSchemaUAFAssetSubscriberSubscriptions.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6269726373627573, 0xEE00656D614E7265);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800FB5E0, 0x277D5B1E8);
  sub_266ECAF2C(&qword_2800FB5D8, &qword_2800FB5E0, 0x277D5B1E8);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7069726373627573, 0xED0000736E6F6974);
  return v12(v14, 0);
}

uint64_t sub_26736E884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736E8E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFAssetUsageAlias.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v19 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D614E7361696C61, 0xE900000000000065);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C61567361696C61, 0xEA00000000006575);
  return v16(v20, 0);
}

uint64_t sub_26736ECB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736ED18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26736ED7C()
{
  result = qword_2800FB5D0;
  if (!qword_2800FB5D0)
  {
    sub_26736EDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB5D0);
  }

  return result;
}

unint64_t sub_26736EDD4()
{
  result = qword_2800FB5C8;
  if (!qword_2800FB5C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB5C8);
  }

  return result;
}

uint64_t static UAFSchemaUAFClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v0);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB5F0, 0x277D5B210);
  sub_266ECAF2C(&qword_2800FB5F8, &qword_2800FB5F0, 0x277D5B210);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FB580, 0x277D5B1C8);
  sub_266ECAF2C(&qword_2800FB578, &qword_2800FB580, 0x277D5B1C8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674A67F0);
  v10(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54(v17 > 1, v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v11, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_287894198);
  return sub_2673811CC();
}

uint64_t sub_26736F250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26736F2E8()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26736F3B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736F418(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26736F478(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB600, &qword_2800FB608, 0x277D5B208);
  a1[2] = sub_266ECAF2C(&qword_2800FB610, &qword_2800FB608, 0x277D5B208);
  result = sub_266ECAF2C(&qword_2800FB618, &qword_2800FB608, 0x277D5B208);
  a1[3] = result;
  return result;
}

uint64_t static UAFSchemaUAFClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449666175, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449666175, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878941D8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26736F810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736F874(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static UAFSchemaUAFDeviceMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v26 = a1;
  v25 = sub_26738113C();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v25);
  v23 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449656369766564, 0xE800000000000000);
  v10(v28, 0);
  v22 = *MEMORY[0x277D3E530];
  v11 = *(v1 + 104);
  v27 = v1 + 104;
  v12 = v23;
  v13 = v25;
  v11(v23);
  v24 = v11;
  v28[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x7954656369766564, 0xEA00000000006570);
  v14(v28, 0);
  type metadata accessor for SISchemaProgramCode(0);
  sub_267370048(&qword_2800F0448, type metadata accessor for SISchemaProgramCode);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v15 = v9;
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x436D6172676F7270, 0xEB0000000065646FLL);
  v16(v28, 0);
  (v11)(v12, v22, v13);
  v28[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x75426D6574737973, 0xEB00000000646C69);
  v17(v28, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_267370048(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x636F4C7475706E69, 0xEB00000000656C61);
  v18(v28, 0);
  v24(v12, *MEMORY[0x277D3E540], v13);
  v28[0] = 1;
  sub_26738114C();
  v15(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x80000002674A6870);
  return v19(v28, 0);
}

uint64_t sub_26736FF84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26736FFE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267370048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static UAFSchemaUAFMobileAssetDownloadErrorCodeFrequency.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "tDownloadErrorCodeFrequency";
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x63634F73656D6974, 0xED00006465727275);
  return v16(v21, 0);
}

uint64_t sub_26737040C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267370470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673704D4()
{
  result = qword_2800FB5A0;
  if (!qword_2800FB5A0)
  {
    sub_26737052C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB5A0);
  }

  return result;
}

unint64_t sub_26737052C()
{
  result = qword_2800FB598;
  if (!qword_2800FB598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB598);
  }

  return result;
}

uint64_t static USOSchemaUSOAsrAlternativeTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v1 + 104);
  v21 = v1 + 104;
  v22 = v0;
  v20 = v10;
  v10(v4, v9, v0);
  v24[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v19 = *(v12 + 56);
  v19(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x74616E7265746C61, 0xEB00000000657669);
  v13(v24, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v23, 0x74616E7265746C61, 0xEB00000000657669);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_287894200);
    sub_26738115C();
  }

  (v15)(v23, 0);
  v14(v24, 0);
  v20(v4, *MEMORY[0x277D3E500], v22);
  v24[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C696261626F7270, 0xEB00000000797469);
  return v17(v24, 0);
}

uint64_t sub_267370960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673709C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267370A28()
{
  result = qword_2800FB628;
  if (!qword_2800FB628)
  {
    sub_267370A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB628);
  }

  return result;
}

unint64_t sub_267370A80()
{
  result = qword_2800FB630;
  if (!qword_2800FB630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB630);
  }

  return result;
}

uint64_t static USOSchemaUSOAttachmentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674A6950, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674A6970, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x80000002674A6990, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267370CE4(uint64_t a1)
{
  v2 = sub_267370DE8(&qword_2800FB640);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267370D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267370DE8(&qword_2800FB640);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267370DE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOAttachmentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSOBackingAppBundleType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674A69E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v158;

  v1(v184, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674A6A00, v11);
  v12 = *v9;
  *v9 = v159;

  v7(v184, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674A6A30, v17);
  v18 = *v15;
  *v15 = v160;

  v13(v184, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x80000002674A6A60, v23);
  v24 = *v21;
  *v21 = v161;

  v19(v184, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x80000002674A6A90, v29);
  v30 = *v27;
  *v27 = v162;

  v25(v184, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x80000002674A6AC0, v35);
  v36 = *v33;
  *v33 = v163;

  v31(v184, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x80000002674A6AF0, v41);
  v42 = *v39;
  *v39 = v164;

  v37(v184, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001FLL, 0x80000002674A6B10, v47);
  v48 = *v45;
  *v45 = v165;

  v43(v184, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x80000002674A6B30, v53);
  v54 = *v51;
  *v51 = v166;

  v49(v184, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x80000002674A6B60, v59);
  v60 = *v57;
  *v57 = v167;

  v55(v184, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ELL, 0x80000002674A6B90, v65);
  v66 = *v63;
  *v63 = v168;

  v61(v184, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x80000002674A6BB0, v71);
  v72 = *v69;
  *v69 = v169;

  v67(v184, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000021, 0x80000002674A6BE0, v77);
  v78 = *v75;
  *v75 = v170;

  v73(v184, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001CLL, 0x80000002674A6C10, v83);
  v84 = *v81;
  *v81 = v171;

  v79(v184, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000028, 0x80000002674A6C30, v89);
  v90 = *v87;
  *v87 = v172;

  v85(v184, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000020, 0x80000002674A6C60, v95);
  v96 = *v93;
  *v93 = v173;

  v91(v184, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001FLL, 0x80000002674A6C90, v101);
  v102 = *v99;
  *v99 = v174;

  v97(v184, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000020, 0x80000002674A6CB0, v107);
  v108 = *v105;
  *v105 = v175;

  v103(v184, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000024, 0x80000002674A6CE0, v113);
  v114 = *v111;
  *v111 = v176;

  v109(v184, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x80000002674A6D10, v119);
  v120 = *v117;
  *v117 = v177;

  v115(v184, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000020, 0x80000002674A6D40, v125);
  v126 = *v123;
  *v123 = v178;

  v121(v184, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000024, 0x80000002674A6D70, v131);
  v132 = *v129;
  *v129 = v179;

  v127(v184, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001FLL, 0x80000002674A6DA0, v137);
  v138 = *v135;
  *v135 = v180;

  v133(v184, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000002ELL, 0x80000002674A6DC0, v143);
  v144 = *v141;
  *v141 = v181;

  v139(v184, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000024, 0x80000002674A6DF0, v149);
  v150 = *v147;
  *v147 = v182;

  v145(v184, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ELL, 0x80000002674A6E20, v155);
  v156 = *v153;
  *v153 = v183;

  return v151(v184, 0);
}

uint64_t sub_267371A74(uint64_t a1)
{
  v2 = sub_267371B78(&qword_2800FB650);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267371ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267371B78(&qword_2800FB650);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267371B78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOBackingAppBundleType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSOEdge.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_26738113C();
  v21 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v20[1] = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E538];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v23[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x65646E496D6F7266, 0xE900000000000078);
  v16(v23, 0);
  v13(v7, v12, v21);
  v23[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x7865646E496F74, 0xE700000000000000);
  v17(v23, 0);
  sub_266ECB294(0, &qword_2800FB658, 0x277D5B238);
  sub_266ECAF2C(&qword_2800FB660, &qword_2800FB658, 0x277D5B238);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C6562616CLL, 0xE500000000000000);
  return v18(v23, 0);
}

uint64_t sub_267371FAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267372010(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOEdgeLabel.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_26738113C();
  v21 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v20[1] = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E538];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v23[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x656D656C456F7375, 0xEC0000006449746ELL);
  v16(v23, 0);
  v13(v7, v12, v21);
  v23[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x746172656D756E65, 0xEB000000006E6F69);
  v17(v23, 0);
  sub_266ECB294(0, &qword_2800FB678, 0x277D5B278);
  sub_266ECAF2C(&qword_2800FB680, &qword_2800FB678, 0x277D5B278);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x6567644565736162, 0xED00006C6562614CLL);
  return v18(v23, 0);
}

uint64_t sub_2673724C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267372524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOEntityIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v41 = a2;
  sub_26738119C();
  v40 = *MEMORY[0x277D3E538];
  v12 = *(v4 + 104);
  v12(v7);
  v44[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v43 = v14 + 56;
  v15(v11, 0, 1, v13);
  v34 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x65646E4965646F6ELL, 0xE900000000000078);
  v16(v44, 0);
  v33 = "iri.uso.USOEntityIdentifier";
  v17 = *MEMORY[0x277D3E530];
  v36 = v3;
  v37 = v12;
  (v12)(v7, v17, v3);
  v38 = v4 + 104;
  v44[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v33 | 0x8000000000000000);
  v18(v44, 0);
  v19 = *MEMORY[0x277D3E518];
  v35 = v7;
  (v12)(v7, v19, v3);
  v44[0] = 1;
  sub_26738114C();
  v42 = v13;
  v20 = v34;
  v34(v11, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C696261626F7270, 0xEB00000000797469);
  v21(v44, 0);
  type metadata accessor for USOSchemaUSOEntityIdentifierNluComponent(0);
  sub_267372E0C(&qword_2800FB688, type metadata accessor for USOSchemaUSOEntityIdentifierNluComponent);
  sub_26738120C();
  v20(v11, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x80000002674A6EE0);
  v22(v44, 0);
  type metadata accessor for USOSchemaUSOBackingAppBundleType(0);
  sub_267372E0C(&qword_2800FB648, type metadata accessor for USOSchemaUSOBackingAppBundleType);
  sub_26738120C();
  v23 = v42;
  v20(v11, 0, 1, v42);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674A6F00);
  v24(v44, 0);
  v25 = v35;
  v26 = v36;
  v27 = v40;
  v28 = v37;
  (v37)(v35, v40, v36);
  v44[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v23);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x646E4970756F7267, 0xEA00000000007865);
  v29(v44, 0);
  v28(v25, v27, v26);
  v44[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v42);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x80000002674A6F20);
  return v30(v44, 0);
}

uint64_t sub_267372D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267372D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267372E0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267372E54()
{
  result = qword_2800FB698;
  if (!qword_2800FB698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB698);
  }

  return result;
}

uint64_t static USOSchemaUSOEntityIdentifierNluComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x80000002674A6F80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674A6FB0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x80000002674A6FE0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x80000002674A7020, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000042, 0x80000002674A7060, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x80000002674A70B0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003BLL, 0x80000002674A70E0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x80000002674A7120, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2673732E4(uint64_t a1)
{
  v2 = sub_2673733E8(&qword_2800FB6A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26737334C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673733E8(&qword_2800FB6A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673733E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOEntityIdentifierNluComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSOEntityIdentifierTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v35 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34 = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v37[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v28 = v13 + 56;
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x7865646E69, 0xE500000000000000);
  v15(v37, 0);
  v16 = *MEMORY[0x277D3E530];
  v31 = v11;
  v32 = v3 + 104;
  v11(v6, v16, v35);
  v37[0] = 1;
  v29 = v6;
  sub_26738114C();
  v30 = v14;
  v14(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x65756C6176, 0xE500000000000000);
  v17(v37, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v36, 0x65756C6176, 0xE500000000000000);
  v20 = *(v13 + 48);
  v33 = v13 + 48;
  v21 = v20;
  if (!v20(v22, 1, v12))
  {
    sub_266ECB128(&unk_287894228);
    sub_26738115C();
  }

  (v19)(v36, 0);
  v18(v37, 0);
  v31(v29, v16, v35);
  v37[0] = 1;
  sub_26738114C();
  v30(v10, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x80000002674A7190);
  v23(v37, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v36, 0xD000000000000012, 0x80000002674A7190);
  if (!v21(v26, 1, v12))
  {
    sub_266ECB128(&unk_287894250);
    sub_26738115C();
  }

  (v25)(v36, 0);
  return v24(v37, 0);
}

uint64_t sub_267373964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673739C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267373A2C()
{
  result = qword_2800FB6A8;
  if (!qword_2800FB6A8)
  {
    sub_267373A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB6A8);
  }

  return result;
}

unint64_t sub_267373A84()
{
  result = qword_2800FB6B0;
  if (!qword_2800FB6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB6B0);
  }

  return result;
}

uint64_t static USOSchemaUSOEntitySpan.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v34 = a1;
  v35 = sub_26738113C();
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v35);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v32 = *MEMORY[0x277D3E538];
  v33 = *(v1 + 104);
  v33(v4);
  v31 = v1 + 104;
  v36[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x65646E4965646F6ELL, 0xE900000000000078);
  v13(v36, 0);
  type metadata accessor for USOSchemaUSOEntitySpanNluComponent(0);
  sub_26737439C(&qword_2800FB6B8, type metadata accessor for USOSchemaUSOEntitySpanNluComponent);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F43656372756F73, 0xEF746E656E6F706DLL);
  v14(v36, 0);
  (v33)(v4, *MEMORY[0x277D3E530], v35);
  v36[0] = 1;
  sub_26738114C();
  v15 = v9;
  v11(v8, 0, 1, v9);
  v16 = v12;
  v29 = v11;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C6562616CLL, 0xE500000000000000);
  v17(v36, 0);
  sub_266ECB294(0, &qword_2800FB6C0, 0x277D5B280);
  sub_266ECAF2C(&qword_2800FB6C8, &qword_2800FB6C0, 0x277D5B280);
  sub_26738120C();
  v28 = v15;
  v11(v8, 0, 1, v15);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x666E49686374616DLL, 0xE90000000000006FLL);
  v18(v36, 0);
  v19 = v32;
  v20 = v33;
  (v33)(v4, v32, v35);
  v36[0] = 1;
  sub_26738114C();
  v21 = v29;
  v29(v8, 0, 1, v15);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x646E497472617473, 0xEA00000000007865);
  v22(v36, 0);
  v20(v4, v19, v35);
  v36[0] = 1;
  sub_26738114C();
  v23 = v28;
  v30 = v16;
  v21(v8, 0, 1, v28);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x7865646E49646E65, 0xE800000000000000);
  v24(v36, 0);
  type metadata accessor for USOSchemaUSOBackingAppBundleType(0);
  sub_26737439C(&qword_2800FB648, type metadata accessor for USOSchemaUSOBackingAppBundleType);
  sub_26738120C();
  v21(v8, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674A71E0);
  v25(v36, 0);
  sub_266ECB294(0, &qword_2800FB6D0, 0x277D5B298);
  sub_266ECAF2C(&qword_2800FB6D8, &qword_2800FB6D0, 0x277D5B298);
  sub_26738120C();
  v21(v8, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674A7200);
  return v26(v36, 0);
}

uint64_t sub_2673742D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737433C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737439C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static USOSchemaUSOEntitySpanNluComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674A7260, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x80000002674A7290, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x80000002674A72C0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674A72F0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003CLL, 0x80000002674A7320, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000025, 0x80000002674A7360, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000035, 0x80000002674A7390, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x80000002674A73D0, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_267374870(uint64_t a1)
{
  v2 = sub_267374974(&qword_2800FB6F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673748D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267374974(&qword_2800FB6F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267374974(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOEntitySpanNluComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSOEntitySpanTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = sub_26738113C();
  v39 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v30 = a2;
  sub_26738119C();
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E538], v3);
  v41[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x7865646E69, 0xE500000000000000);
  v16(v41, 0);
  v32 = *MEMORY[0x277D3E530];
  v38 = v4 + 104;
  v34 = v12;
  (v12)(v7);
  v41[0] = 1;
  v36 = v7;
  sub_26738114C();
  v33 = v15;
  v15(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x70416E696769726FLL, 0xEB00000000644970);
  v17(v41, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v40, 0x70416E696769726FLL, 0xEB00000000644970);
  v20 = *(v14 + 48);
  v37 = v14 + 48;
  v31 = v20;
  if (!v20(v21, 1, v13))
  {
    sub_266ECB128(&unk_287894278);
    sub_26738115C();
  }

  (v19)(v40, 0);
  v18(v41, 0);
  sub_266ECB294(0, &qword_2800FB6F8, 0x277D5B2A0);
  sub_266ECAF2C(&qword_2800FB700, &qword_2800FB6F8, 0x277D5B2A0);
  sub_26738122C();
  v22 = v33;
  v33(v11, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x69747265706F7270, 0xEA00000000007365);
  v23(v41, 0);
  sub_266ECB294(0, &qword_2800FB630, 0x277D5B228);
  sub_266ECAF2C(&qword_2800FB628, &qword_2800FB630, 0x277D5B228);
  sub_26738122C();
  v22(v11, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x74616E7265746C61, 0xEC00000073657669);
  v24(v41, 0);
  v34(v36, v32, v39);
  v41[0] = 1;
  sub_26738114C();
  v22(v11, 0, 1, v13);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E456E696769726FLL, 0xEE00644979746974);
  v25(v41, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v40, 0x6E456E696769726FLL, 0xEE00644979746974);
  if (!v31(v28, 1, v13))
  {
    sub_266ECB128(&unk_2878942A0);
    sub_26738115C();
  }

  (v27)(v40, 0);
  return v26(v41, 0);
}

uint64_t sub_2673750B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267375118(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOGraph.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F6973726576, 0xE700000000000000);
  v6(v14, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v7(v14, 0);
  sub_266ECB294(0, &qword_2800FB718, 0x277D5B288);
  sub_266ECAF2C(&qword_2800FB720, &qword_2800FB718, 0x277D5B288);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365646F6ELL, 0xE500000000000000);
  v8(v14, 0);
  sub_266ECB294(0, &qword_2800FB670, 0x277D5B230);
  sub_266ECAF2C(&qword_2800FB668, &qword_2800FB670, 0x277D5B230);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365676465, 0xE500000000000000);
  v9(v14, 0);
  sub_266ECB294(0, &qword_2800FB698, 0x277D5B240);
  sub_266ECAF2C(&qword_2800FB690, &qword_2800FB698, 0x277D5B240);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x696669746E656469, 0xEB00000000737265);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F58B0, 0x277D5B2A8);
  sub_266ECAF2C(&qword_2800F58B8, &qword_2800F58B0, 0x277D5B2A8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v11 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6E67696C61, 0xEA00000000007374);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800FB6E8, 0x277D5B250);
  sub_266ECAF2C(&qword_2800FB6E0, &qword_2800FB6E8, 0x277D5B250);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0x736E617073, 0xE500000000000000);
  return v12(v14, 0);
}

uint64_t sub_267375868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673758CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOGraphNodeDataTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB728, 0x277D5B290);
  sub_266ECAF2C(&qword_2800FB730, &qword_2800FB728, 0x277D5B290);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674A7490);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800FB6B0, 0x277D5B248);
  sub_266ECAF2C(&qword_2800FB6A8, &qword_2800FB6B0, 0x277D5B248);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x80000002674A74B0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800FB710, 0x277D5B258);
  sub_266ECAF2C(&qword_2800FB708, &qword_2800FB710, 0x277D5B258);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674A74D0);
  return v8(v10, 0);
}

uint64_t sub_267375D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267375D80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOGraphTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v22 = v8 + 56;
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v27, 0);
  sub_266ECB294(0, &qword_2800FB728, 0x277D5B290);
  sub_266ECAF2C(&qword_2800FB730, &qword_2800FB728, 0x277D5B290);
  sub_26738122C();
  v23 = v9;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674A7490);
  v11(v27, 0);
  v24 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v26, 0xD000000000000011, 0x80000002674A7490);
  v14 = *(v8 + 48);
  if (!v14(v15, 1, v7))
  {
    sub_266ECB128(&unk_2878942C8);
    sub_26738115C();
  }

  (v13)(v26, 0);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800FB6B0, 0x277D5B248);
  sub_266ECAF2C(&qword_2800FB6A8, &qword_2800FB6B0, 0x277D5B248);
  sub_26738122C();
  v23(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x80000002674A74B0);
  v16(v27, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v26, 0xD00000000000001ALL, 0x80000002674A74B0);
  if (!v14(v19, 1, v7))
  {
    sub_266ECB128(&unk_2878942F0);
    sub_26738115C();
  }

  (v18)(v26, 0);
  v17(v27, 0);
  sub_266ECB294(0, &qword_2800FB740, 0x277D5B268);
  sub_266ECAF2C(&qword_2800FB738, &qword_2800FB740, 0x277D5B268);
  sub_26738122C();
  v23(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x80000002674A7520);
  return v20(v27, 0);
}

uint64_t sub_2673763E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267376448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOLabel.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756C6176, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_267376734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267376798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673767FC()
{
  result = qword_2800FB680;
  if (!qword_2800FB680)
  {
    sub_267376854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB680);
  }

  return result;
}

unint64_t sub_267376854()
{
  result = qword_2800FB678;
  if (!qword_2800FB678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB678);
  }

  return result;
}

uint64_t static USOSchemaUSOMatchInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = sub_26738113C();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v45 = a2;
  sub_26738119C();
  v47 = *MEMORY[0x277D3E538];
  v11 = *(v3 + 104);
  v46 = v3 + 104;
  v11(v6);
  v48[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v12);
  v43 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674A75A0);
  v16(v48, 0);
  v17 = v44;
  (v11)(v6, *MEMORY[0x277D3E500], v44);
  v48[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F6353686374616DLL, 0xEA00000000006572);
  v18(v48, 0);
  v38 = v6;
  v19 = v47;
  v42 = v11;
  (v11)(v6, v47, v17);
  v48[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656B6F5478616DLL, 0xED0000746E756F43);
  v20(v48, 0);
  v39 = "matchSignalBitset";
  v21 = v38;
  (v11)(v38, v19, v17);
  v48[0] = 1;
  sub_26738114C();
  v40 = v14;
  v14(v10, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v39 | 0x8000000000000000);
  v22(v48, 0);
  v39 = "matchedTokenCount";
  v23 = v47;
  v24 = v42;
  (v42)(v21, v47, v17);
  v48[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v39 | 0x8000000000000000);
  v25(v48, 0);
  v39 = "maxStopWordCount";
  v26 = v44;
  v24(v21, v23, v44);
  v48[0] = 1;
  sub_26738114C();
  v27 = v40;
  v40(v10, 0, 1, v12);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v39 | 0x8000000000000000);
  v28(v48, 0);
  v29 = v26;
  v30 = v26;
  v31 = v42;
  (v42)(v21, v47, v30);
  v48[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v12);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x7473694474696465, 0xEC00000065636E61);
  v32(v48, 0);
  v33 = v47;
  (v31)(v21, v47, v29);
  v48[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v12);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x7361696C4178616DLL, 0xED0000746E756F43);
  v34(v48, 0);
  (v42)(v21, v33, v44);
  v48[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v12);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674A7620);
  v35(v48, 0);
  type metadata accessor for USOSchemaUSOMatchInfoAliasType(0);
  sub_267377358(&qword_2800FB748, type metadata accessor for USOSchemaUSOMatchInfoAliasType);
  sub_26738122C();
  v27(v10, 0, 1, v12);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674A7640);
  return v36(v48, 0);
}

uint64_t sub_26737724C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673772B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267377358(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2673773A0()
{
  result = qword_2800FB6C0;
  if (!qword_2800FB6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB6C0);
  }

  return result;
}

uint64_t static USOSchemaUSOMatchInfoAliasType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674A7690, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x80000002674A76B0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674A76D0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x80000002674A7700, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674A7720, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x80000002674A7750, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x80000002674A7780, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x80000002674A77B0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x80000002674A77E0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_2673778A4(uint64_t a1)
{
  v2 = sub_2673779A8(&qword_2800FB750);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26737790C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673779A8(&qword_2800FB750);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673779A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOSchemaUSOMatchInfoAliasType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USOSchemaUSONode.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v24 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v26 = *(v3 + 104);
  v26(v6, v11, v2);
  v25 = v3 + 104;
  v28[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v27 = v13 + 56;
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D656C456F7375, 0xEC0000006449746ELL);
  v15(v28, 0);
  v22 = "com.apple.aiml.siri.uso.USONode";
  v23 = v2;
  v16 = v26;
  v26(v6, v11, v2);
  v28[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v22 | 0x8000000000000000);
  v17(v28, 0);
  v18 = *MEMORY[0x277D3E530];
  v16(v6, v18, v2);
  v28[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x614C797469746E65, 0xEB000000006C6562);
  v19(v28, 0);
  v16(v6, v18, v23);
  v28[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x6562614C62726576, 0xE90000000000006CLL);
  return v20(v28, 0);
}

uint64_t sub_267377EBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267377F20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267377F84()
{
  result = qword_2800FB720;
  if (!qword_2800FB720)
  {
    sub_267377FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB720);
  }

  return result;
}

unint64_t sub_267377FDC()
{
  result = qword_2800FB718;
  if (!qword_2800FB718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB718);
  }

  return result;
}

uint64_t static USOSchemaUSONodeDataTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v42 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33[-v9];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v41 = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v44[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x7865646E69, 0xE500000000000000);
  v15(v44, 0);
  v34 = *MEMORY[0x277D3E530];
  v40 = v3 + 104;
  v36 = v11;
  (v11)(v6);
  v44[0] = 1;
  sub_26738114C();
  v37 = v14;
  v38 = v13 + 56;
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6150676E69727473, 0xED000064616F6C79);
  v16(v44, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v43, 0x6150676E69727473, 0xED000064616F6C79);
  v19 = *(v13 + 48);
  v39 = v13 + 48;
  v21 = v19(v20, 1, v12);
  v35 = v19;
  if (!v21)
  {
    sub_266ECB128(&unk_287894318);
    sub_26738115C();
  }

  (v18)(v43, 0);
  v17(v44, 0);
  v22 = v36;
  v36(v6, *MEMORY[0x277D3E508], v42);
  v44[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x5072656765746E69, 0xEE0064616F6C7961);
  v23(v44, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v43, 0x5072656765746E69, 0xEE0064616F6C7961);
  v26 = v35;
  if (!v35(v27, 1, v12))
  {
    sub_266ECB128(&unk_287894340);
    sub_26738115C();
  }

  (v25)(v43, 0);
  v24(v44, 0);
  v22(v6, v34, v42);
  v44[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v12);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674A7880);
  v28(v44, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v43, 0xD000000000000018, 0x80000002674A7880);
  if (!v26(v31, 1, v12))
  {
    sub_266ECB128(&unk_287894368);
    sub_26738115C();
  }

  (v30)(v43, 0);
  return v29(v44, 0);
}

uint64_t sub_2673786E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267378748(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673787AC()
{
  result = qword_2800FB730;
  if (!qword_2800FB730)
  {
    sub_267378804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB730);
  }

  return result;
}

unint64_t sub_267378804()
{
  result = qword_2800FB728;
  if (!qword_2800FB728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB728);
  }

  return result;
}

uint64_t static USOSchemaUSOPayloadAttachmentInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for USOSchemaUSOAttachmentType(0);
  sub_267378CBC(&qword_2800FB638, type metadata accessor for USOSchemaUSOAttachmentType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D686361747461, 0xEE0065707954746ELL);
  return v5(v7, 0);
}

uint64_t sub_267378A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for USOSchemaUSOAttachmentType(0);
  sub_267378CBC(&qword_2800FB638, type metadata accessor for USOSchemaUSOAttachmentType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D686361747461, 0xEE0065707954746ELL);
  return v5(v7, 0);
}

uint64_t sub_267378BB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267378C14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267378CBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267378D04()
{
  result = qword_2800FB6D0;
  if (!qword_2800FB6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB6D0);
  }

  return result;
}

uint64_t static USOSchemaUSOSpanPropertyTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v36 = sub_26738113C();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34 = a1;
  sub_26738119C();
  LODWORD(v35) = *MEMORY[0x277D3E530];
  v10 = *(v2 + 104);
  v10(v5);
  v38[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 7955819, 0xE300000000000000);
  v14(v38, 0);
  v30[0] = v10;
  v30[1] = v2 + 104;
  (v10)(v5, v35, v36);
  v38[0] = 1;
  sub_26738114C();
  v32 = v13;
  v33 = v12 + 56;
  v13(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x72745365756C6176, 0xEB00000000676E69);
  v15(v38, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v37, 0x72745365756C6176, 0xEB00000000676E69);
  v18 = *(v12 + 48);
  v35 = v12 + 48;
  v31 = v18;
  if (!v18(v19, 1, v11))
  {
    sub_266ECB128(&unk_287894390);
    sub_26738115C();
  }

  (v17)(v37, 0);
  v16(v38, 0);
  v20 = v30[0];
  (v30[0])(v5, *MEMORY[0x277D3E508], v36);
  v38[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E4965756C6176, 0xE800000000000000);
  v21(v38, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v37, 0x746E4965756C6176, 0xE800000000000000);
  if (!v31(v24, 1, v11))
  {
    sub_266ECB128(&unk_2878943B8);
    sub_26738115C();
  }

  (v23)(v37, 0);
  v22(v38, 0);
  v20(v5, *MEMORY[0x277D3E500], v36);
  v38[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F6C4665756C6176, 0xEA00000000007461);
  v25(v38, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v37, 0x6F6C4665756C6176, 0xEA00000000007461);
  if (!v31(v28, 1, v11))
  {
    sub_266ECB128(&unk_2878943E0);
    sub_26738115C();
  }

  (v27)(v37, 0);
  return v26(v38, 0);
}

uint64_t sub_2673793DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267379440(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673794A4()
{
  result = qword_2800FB700;
  if (!qword_2800FB700)
  {
    sub_2673794FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB700);
  }

  return result;
}

unint64_t sub_2673794FC()
{
  result = qword_2800FB6F8;
  if (!qword_2800FB6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB6F8);
  }

  return result;
}

uint64_t static USOSchemaUSOUtteranceAlignment.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18 = a1;
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = *MEMORY[0x277D3E538];
  v15 = *(v1 + 104);
  v15(v4);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267463360);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800FB758, 0x277D5B2B0);
  sub_266ECAF2C(&qword_2800FB760, &qword_2800FB758, 0x277D5B2B0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x736E617073, 0xE500000000000000);
  v12(v19, 0);
  (v15)(v4, v16, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x65646E4965646F6ELL, 0xE900000000000078);
  return v13(v19, 0);
}

uint64_t sub_267379940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673799A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USOSchemaUSOUtteranceSpan.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v41 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v38 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v36 = *(v3 + 104);
  LODWORD(v35) = v11;
  v36(v6, v11, v2);
  v12 = v3 + 104;
  v42[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v39 = v13;
  v14(v10, 0, 1, v13);
  v15 = v14;
  v40 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x646E497472617473, 0xEA00000000007865);
  v16(v42, 0);
  v17 = v11;
  v18 = v41;
  v19 = v36;
  v36(v6, v17, v41);
  v37 = v12;
  v42[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x7865646E49646E65, 0xE800000000000000);
  v20(v42, 0);
  v34 = "iri.uso.USOUtteranceSpan";
  v21 = v35;
  v22 = v18;
  v23 = v19;
  v19(v6, v35, v22);
  v42[0] = 1;
  sub_26738114C();
  v24 = v39;
  v40(v10, 0, 1, v39);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v34 | 0x8000000000000000);
  v25(v42, 0);
  v34 = "startUnicodeScalarIndex";
  v26 = v41;
  v23(v6, v21, v41);
  v42[0] = 1;
  sub_26738114C();
  v27 = v40;
  v40(v10, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v34 | 0x8000000000000000);
  v28(v42, 0);
  v35 = "endUnicodeScalarIndex";
  v29 = *MEMORY[0x277D3E508];
  v23(v6, v29, v26);
  v42[0] = 1;
  sub_26738114C();
  v30 = v39;
  v27(v10, 0, 1, v39);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v35 | 0x8000000000000000);
  v31(v42, 0);
  v23(v6, v29, v41);
  v42[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v30);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x696C6C694D646E65, 0xEF73646E6F636573);
  return v32(v42, 0);
}

uint64_t sub_26737A0C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737A128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737A18C()
{
  result = qword_2800FB760;
  if (!qword_2800FB760)
  {
    sub_26737A1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB760);
  }

  return result;
}

unint64_t sub_26737A1E4()
{
  result = qword_2800FB758;
  if (!qword_2800FB758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB758);
  }

  return result;
}

uint64_t static USPSchemaUSPClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v27 = *(v0 - 8);
  v28 = v0;
  v1 = *(v27 + 64);
  MEMORY[0x28223BE20](v0);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB768, 0x277D5B2C0);
  sub_266ECAF2C(&qword_2800FB770, &qword_2800FB768, 0x277D5B2C0);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800FB778, 0x277D5B2D8);
  sub_266ECAF2C(&qword_2800FB780, &qword_2800FB778, 0x277D5B2D8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x80000002674A7A00);
  v10(v29, 0);
  sub_266ECB294(0, &qword_2800FB788, 0x277D5B2E0);
  sub_266ECAF2C(&qword_2800FB790, &qword_2800FB788, 0x277D5B2E0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x52676E6967676F6CLL, 0xEF646574726F7065);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800FB798, 0x277D5B2F0);
  sub_266ECAF2C(&qword_2800FB7A0, &qword_2800FB798, 0x277D5B2F0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x536572757361656DLL, 0xEE00646574726174);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800FB7A8, 0x277D5B2E8);
  sub_266ECAF2C(&qword_2800FB7B0, &qword_2800FB7A8, 0x277D5B2E8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x456572757361656DLL, 0xEC0000006465646ELL);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800FB7B8, 0x277D5B2D0);
  sub_266ECAF2C(&qword_2800FB7C0, &qword_2800FB7B8, 0x277D5B2D0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674A7A20);
  v14(v29, 0);
  sub_266ECB294(0, &qword_2800FB7C8, 0x277D5B2C8);
  sub_266ECAF2C(&qword_2800FB7D0, &qword_2800FB7C8, 0x277D5B2C8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = v26;
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F69746172657469, 0xEE006465646E456ELL);
  v16(v29, 0);
  sub_26738117C();
  v17 = sub_2673811BC();
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_266ECAD54(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_266ECAD54(v22 > 1, v23 + 1, 1, v20);
    *v19 = v20;
  }

  v20[2] = v23 + 1;
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v15, v28);
  v17(v29, 0);
  sub_266ECB128(&unk_287894408);
  return sub_2673811CC();
}

uint64_t sub_26737AA94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26737AB2C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26737ABF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737AC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737ACBC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FB7D8, &qword_2800F1E60, 0x277D5B2B8);
  a1[2] = sub_266ECAF2C(&qword_2800FB7E0, &qword_2800F1E60, 0x277D5B2B8);
  result = sub_266ECAF2C(&qword_2800FB7E8, &qword_2800F1E60, 0x277D5B2B8);
  a1[3] = result;
  return result;
}

uint64_t static USPSchemaUSPClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v18 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v19 = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v17 = *(v7 + 56);
  v17(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707375, 0xE500000000000000);
  v8(v21, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v20, 0x6449707375, 0xE500000000000000);
  if (!(*(v7 + 48))(v11, 1, v6))
  {
    sub_266ECB128(&unk_287894440);
    sub_26738115C();
  }

  (v10)(v20, 0);
  v9(v21, 0);
  sub_266ECB294(0, &qword_2800FB7F0, 0x277D5B2F8);
  sub_266ECAF2C(&qword_2800FB7F8, &qword_2800FB7F0, 0x277D5B2F8);
  sub_26738120C();
  v12 = v17;
  v17(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x747865746E6F63, 0xE700000000000000);
  v13(v21, 0);
  sub_26738120C();
  v12(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x65676E6946747573, 0xEE00746E69727072);
  return v14(v21, 0);
}

uint64_t sub_26737B1BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737B220(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USPSchemaUSPEnviroment.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674A7AA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x80000002674A7AC0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674A7AE0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26737B4D8(uint64_t a1)
{
  v2 = sub_26737B5DC(&qword_2800FB808);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26737B540(uint64_t a1, uint64_t a2)
{
  v4 = sub_26737B5DC(&qword_2800FB808);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26737B5DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USPSchemaUSPEnviroment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static USPSchemaUSPIterationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287894468);
  return sub_2673811CC();
}

uint64_t sub_26737B880(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737B8E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737B948()
{
  result = qword_2800FB7D0;
  if (!qword_2800FB7D0)
  {
    sub_26737B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB7D0);
  }

  return result;
}

unint64_t sub_26737B9A0()
{
  result = qword_2800FB7C8;
  if (!qword_2800FB7C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB7C8);
  }

  return result;
}

uint64_t static USPSchemaUSPIterationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287894498);
  return sub_2673811CC();
}

uint64_t sub_26737BC4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737BCB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737BD14()
{
  result = qword_2800FB7C0;
  if (!qword_2800FB7C0)
  {
    sub_26737BD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB7C0);
  }

  return result;
}

unint64_t sub_26737BD6C()
{
  result = qword_2800FB7B8;
  if (!qword_2800FB7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB7B8);
  }

  return result;
}

uint64_t static USPSchemaUSPLoggingInitalized.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB810, 0x277D5B308);
  sub_266ECAF2C(&qword_2800FB818, &qword_2800FB810, 0x277D5B308);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x80000002674A7BA0);
  v5(v7, 0);
  sub_266ECB128(&unk_2878944C8);
  return sub_2673811CC();
}

uint64_t sub_26737BFC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737C028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USPSchemaUSPLoggingReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FB820, 0x277D5B300);
  sub_266ECAF2C(&qword_2800FB828, &qword_2800FB820, 0x277D5B300);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7363697274656DLL, 0xE700000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800FB810, 0x277D5B308);
  sub_266ECAF2C(&qword_2800FB818, &qword_2800FB810, 0x277D5B308);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x80000002674A7BA0);
  v7(v9, 0);
  sub_266ECB128(&unk_2878944F8);
  return sub_2673811CC();
}

uint64_t sub_26737C3B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737C414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static USPSchemaUSPMeasureEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287894528);
  return sub_2673811CC();
}

uint64_t sub_26737C718(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737C77C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737C7E0()
{
  result = qword_2800FB7B0;
  if (!qword_2800FB7B0)
  {
    sub_26737C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB7B0);
  }

  return result;
}

unint64_t sub_26737C838()
{
  result = qword_2800FB7A8;
  if (!qword_2800FB7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB7A8);
  }

  return result;
}

uint64_t static USPSchemaUSPMeasurementContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x4E747865746E6F63, 0xEB00000000656D61);
  v11(v14, 0);
  type metadata accessor for USPSchemaUSPEnviroment(0);
  sub_26737CCC0(&qword_2800FB800, type metadata accessor for USPSchemaUSPEnviroment);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6E6F7269766E65, 0xEB00000000746E65);
  return v12(v14, 0);
}

uint64_t sub_26737CBB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737CC18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737CCC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26737CD08()
{
  result = qword_2800FB7F0;
  if (!qword_2800FB7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB7F0);
  }

  return result;
}

uint64_t static USPSchemaUSPMeasureStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287894558);
  return sub_2673811CC();
}

uint64_t sub_26737CFB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737D018(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737D07C()
{
  result = qword_2800FB7A0;
  if (!qword_2800FB7A0)
  {
    sub_26737D0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB7A0);
  }

  return result;
}

unint64_t sub_26737D0D4()
{
  result = qword_2800FB798;
  if (!qword_2800FB798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB798);
  }

  return result;
}

uint64_t static USPSchemaUSPMetric.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v28 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v26 = v12;
  v29[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v27 = v14 + 56;
  v15(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 1701667182, 0xE400000000000000);
  v16(v29, 0);
  v17 = v28;
  v12(v6, v11, v28);
  v29[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 1953066613, 0xE400000000000000);
  v18(v29, 0);
  v19 = *MEMORY[0x277D3E518];
  v20 = v17;
  v21 = v26;
  v26(v6, v19, v20);
  v29[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x65756C6176, 0xE500000000000000);
  v22(v29, 0);
  v21(v6, v19, v28);
  v29[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F69746172657469, 0xEF7365756C61566ELL);
  return v23(v29, 0);
}

uint64_t sub_26737D5C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737D62C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737D690()
{
  result = qword_2800FB828;
  if (!qword_2800FB828)
  {
    sub_26737D6E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB828);
  }

  return result;
}

unint64_t sub_26737D6E8()
{
  result = qword_2800FB820;
  if (!qword_2800FB820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB820);
  }

  return result;
}

uint64_t static USPSchemaUSPSessionInfoItem.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v19 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 1701667182, 0xE400000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x65756C6176, 0xE500000000000000);
  return v16(v20, 0);
}

uint64_t sub_26737DA48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737DAAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26737DB10()
{
  result = qword_2800FB818;
  if (!qword_2800FB818)
  {
    sub_26737DB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FB818);
  }

  return result;
}

unint64_t sub_26737DB68()
{
  result = qword_2800FB810;
  if (!qword_2800FB810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FB810);
  }

  return result;
}

uint64_t static ComponentIdentifier.fullyQualifiedName.getter()
{
  swift_beginAccess();
  v0 = qword_2800FB830;

  return v0;
}

uint64_t static ComponentIdentifier.fullyQualifiedName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_2800FB830 = a1;
  off_2800FB838 = a2;
}

id ComponentIdentifier.makeSerializedData()()
{
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v1 = result;
    sub_2673812EC();
    result = [v1 data];
    if (result)
    {
      v2 = result;
      v3 = sub_2673810AC();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ComponentIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB840, qword_26741D940);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26741D930;
  v10 = v9 + v8;
  v11 = *(v6 + 48);
  strcpy(v10, "componentName");
  *(v10 + 14) = -4864;
  type metadata accessor for SISchemaComponentName(0);
  sub_26737E34C(&qword_2800F9F20, type metadata accessor for SISchemaComponentName);
  sub_26738120C();
  v12 = (v10 + v7);
  v13 = *(v6 + 48);
  *v12 = 1684632949;
  v12[1] = 0xE400000000000000;
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4F8], v1);
  v16 = 1;
  sub_26738114C();
  sub_266EC679C(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_26738119C();
}

id sub_26737E004()
{
  v1 = *v0;
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v3 = result;
    sub_2673812EC();
    result = [v3 data];
    if (result)
    {
      v4 = result;
      v5 = sub_2673810AC();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26737E0A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26737E13C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26737E1D4()
{
  swift_beginAccess();
  v0 = qword_2800FB830;

  return v0;
}

uint64_t sub_26737E240(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737E2A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737E34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ConvertibleToUnified<>.manifestConstructingType.getter()
{
  v0 = type metadata accessor for UnifiedOrderedEventsVector();
  swift_getWitnessTable();
  return v0;
}

uint64_t static ConvertibleToUnified<>.makeUnifiedOrderedEvent(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UnifiedOrderedEvent();
  v5 = a1;
  v6 = sub_26738002C();

  a2[3] = v4;
  a2[4] = swift_getWitnessTable();
  a2[5] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a2[6] = result;
  *a2 = v6;
  return result;
}

uint64_t static ConvertibleToUnified<>.makeUnifiedOrderedEventsVector(_:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UnifiedOrderedEventsVector();

  v4 = sub_267380EFC(v3);

  a1[3] = v2;
  a1[4] = swift_getWitnessTable();
  a1[5] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[6] = result;
  *a1 = v4;
  return result;
}

id LogicalTimestamp.makeSerializedData()()
{
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v1 = result;
    sub_2673812CC();
    result = [v1 data];
    if (result)
    {
      v2 = result;
      v3 = sub_2673810AC();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static LogicalTimestamp.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB840, qword_26741D940);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26741D930;
  v10 = (v9 + v8);
  v11 = *(v6 + 48);
  *v10 = 0x6564496B636F6C63;
  v10[1] = 0xEF7265696669746ELL;
  v12 = *(v2 + 104);
  v12(v5, *MEMORY[0x277D3E4F8], v1);
  v18 = 1;
  sub_26738114C();
  v13 = (v10 + v7);
  v14 = *(v6 + 48);
  *v13 = 0xD000000000000014;
  v13[1] = 0x80000002674A7D20;
  v12(v5, *MEMORY[0x277D3E540], v1);
  v17 = 1;
  sub_26738114C();
  sub_266EC679C(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_26738119C();
}

id sub_26737E940()
{
  v1 = *v0;
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v3 = result;
    sub_2673812CC();
    result = [v3 data];
    if (result)
    {
      v4 = result;
      v5 = sub_2673810AC();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26737E9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26737EC38(&qword_2800FB858);
  v5 = sub_26737EC38(&qword_2800FB860);

  return MEMORY[0x28219EF78](v2, v4, v5, a2);
}

uint64_t sub_26737EA74()
{
  sub_26737EC38(&qword_2800FB858);
  sub_26737EC38(&qword_2800FB860);
  return sub_26738123C();
}

uint64_t sub_26737EB4C()
{
  v1 = sub_26737EC38(&qword_2800FB858);

  return MEMORY[0x28219EDB0](v0, v1);
}

uint64_t sub_26737EBA8(uint64_t a1)
{
  v3 = sub_26737EC38(&qword_2800FB858);

  return MEMORY[0x28219EDB8](a1, v1, v3);
}

uint64_t sub_26737EC38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2673812DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26737EC80()
{
  sub_26737F568();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_26737ED34(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_267380068();
}

void sub_26737ED74(void *a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85000] & *a1;
  if (a3)
  {
    v4 = a3;
    sub_2673810AC();
  }

  v5 = *(v3 + 80);
  v6 = *(v3 + 88);

  sub_2673800C4();
}

void sub_26737EE00(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_267380120();
}

uint64_t sub_26737EE6C(void *a1)
{
  v2 = v1;
  v4 = (*MEMORY[0x277D85000] & *v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  v11 = sub_2673810CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  if (!a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = *(v1 + qword_2800FB868);
  v20 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v51 = v16;
  v53 = v12;
  v54 = a1;
  sub_2673812CC();
  v22 = [v21 data];
  if (!v22)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = sub_2673810AC();
  v26 = v25;

  v27 = sub_26738109C();
  sub_266ECDE68(v24, v26);
  v28 = v54;
  [v54 writeData:v27 forTag:1];

  v56 = *(v2 + qword_2800FB870);
  v29 = v4[10];
  v30 = *(v4[11] + 16);
  v31 = sub_2673810DC();
  v33 = v32;
  v34 = sub_26738109C();
  sub_266ECDE68(v31, v33);
  [v28 writeData:v34 forTag:2];

  sub_26737FCC8(v2 + qword_2801C7030, v10);
  v35 = v53;
  v36 = *(v53 + 48);
  if (v36(v10, 1, v11) == 1)
  {
    sub_26737FD38(v10);
  }

  else
  {
    (*(v35 + 32))(v18, v10, v11);
    sub_2673810BC();
    v37 = sub_26738130C();

    [v28 writeString:v37 forTag:3];

    (*(v35 + 8))(v18, v11);
  }

  v38 = *(v2 + qword_2801C7038);
  if (!v38)
  {
    goto LABEL_11;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D43178]);
  v39 = v38;
  v40 = [v4 init];
  if (!v40)
  {
    goto LABEL_18;
  }

  v4 = v40;
  sub_2673812EC();
  v41 = [v4 data];
  if (!v41)
  {
LABEL_19:
    __break(1u);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_26738135C();
    MEMORY[0x26D5F74E0](0xD000000000000015, 0x80000002674A7E30);
    v55 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB908, &qword_26741DD20);
    sub_26738137C();
    result = sub_26738138C();
    __break(1u);
    return result;
  }

  v42 = v41;
  v43 = sub_2673810AC();
  v45 = v44;

  v46 = sub_26738109C();
  sub_266ECDE68(v43, v45);
  v28 = v54;
  [v54 writeData:v46 forTag:4];

  v35 = v53;
LABEL_11:
  v47 = v52;
  sub_26737FCC8(v2 + qword_2801C7040, v52);
  if (v36(v47, 1, v11) == 1)
  {
    return sub_26737FD38(v47);
  }

  v49 = v51;
  (*(v35 + 32))(v51, v47, v11);
  sub_2673810BC();
  v50 = sub_26738130C();

  [v28 writeString:v50 forTag:5];

  return (*(v35 + 8))(v49, v11);
}

void sub_26737F3F8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_26737EE6C(a3);
}

id sub_26737F464()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedOrderedEvent();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26737F4D4(uint64_t a1)
{
  sub_26737FD38(a1 + qword_2801C7030);

  v2 = a1 + qword_2801C7040;

  return sub_26737FD38(v2);
}

void sub_26737F568()
{
  if (!qword_2800FB8F8)
  {
    sub_2673810CC();
    v0 = sub_26738133C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800FB8F8);
    }
  }
}

uint64_t sub_26737F5C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26737F658()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26737F6F4()
{
  sub_26738135C();
  v1 = *(*(*(v0 + 88) + 8) + 8);
  v2 = *(v0 + 80);
  v3 = sub_2673811FC();

  MEMORY[0x26D5F74E0](0xD000000000000014, 0x80000002674A7DC0);
  return v3;
}

uint64_t sub_26737F78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = sub_26738113C();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB840, qword_26741D940);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v31 = 4 * v9;
  v11 = swift_allocObject();
  v32 = v11;
  *(v11 + 16) = xmmword_26741DBA0;
  v12 = (v11 + v10);
  v13 = *(v8 + 48);
  *v12 = 0xD000000000000010;
  v12[1] = 0x80000002674A7D70;
  sub_2673812DC();
  sub_26737FC80(&qword_2800FB850, MEMORY[0x277D566F8]);
  v29 = a1;
  sub_26738120C();
  v14 = (v12 + v9);
  v15 = *(v8 + 48);
  *v14 = 0x746E657645756C74;
  v14[1] = 0xE800000000000000;
  v16 = *(*(*(v2 + 88) + 8) + 8);
  v17 = *(v2 + 80);
  sub_26738120C();
  v18 = (v12 + 2 * v9);
  v19 = *(v8 + 48);
  *v18 = 0x556567617373656DLL;
  v18[1] = 0xEB00000000444955;
  v28 = *MEMORY[0x277D3E530];
  v20 = *(v4 + 104);
  v27 = v4 + 104;
  v21 = v30;
  v20(v7);
  v35 = 1;
  sub_26738114C();
  v22 = (v12 + 3 * v9);
  v23 = *(v8 + 48);
  *v22 = 0x4972657473756C63;
  v22[1] = 0xE900000000000064;
  sub_2673812FC();
  sub_26737FC80(&qword_2800FB848, MEMORY[0x277D56708]);
  sub_26738120C();
  v24 = (v12 + v31);
  v25 = *(v8 + 48);
  *v24 = 0x676E694674736574;
  v24[1] = 0xEF746E6972707265;
  (v20)(v7, v28, v21);
  v34 = 1;
  sub_26738114C();
  sub_266EC679C(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_26738119C();
}

uint64_t sub_26737FBA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26737FC04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26737FC80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26737FCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26737FD38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26737FDA0()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_26738127C();
  if (v6)
  {
    v7 = v6;
    v8 = *(v1 + 80);
    v9 = swift_dynamicCastUnknownClass();
    if (v9)
    {
      v10 = v9;
      v11 = sub_2673812AC();
      if (v11)
      {
        *(v0 + qword_2800FB868) = v11;
        *(v0 + qword_2800FB870) = v10;
        v7 = v7;
        sub_26738128C();
        sub_26738017C(v5, v0 + qword_2801C7030);
        *(v0 + qword_2801C7038) = sub_2673812BC();
        sub_26738129C();
        sub_26738017C(v5, v0 + qword_2801C7040);
        v12 = *(v1 + 88);
        v13 = type metadata accessor for UnifiedOrderedEvent();
        v20.receiver = v0;
        v20.super_class = v13;
        v14 = objc_msgSendSuper2(&v20, sel_init);
        if (v14)
        {
          v15 = v14;

          return v15;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_26738135C();

  v21 = 0xD00000000000001DLL;
  v22 = 0x80000002674A7ED0;
  v17 = *(v1 + 80);
  v18 = sub_26738142C();
  MEMORY[0x26D5F74E0](v18);

  MEMORY[0x26D5F74E0](0x20646E756F66202CLL, 0xE800000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB910, &qword_26741DD28);
  v19 = sub_26738142C();
  MEMORY[0x26D5F74E0](v19);

  result = sub_26738138C();
  __break(1u);
  return result;
}

uint64_t sub_26738002C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = objc_allocWithZone(type metadata accessor for UnifiedOrderedEvent());
  return sub_26737FDA0();
}

uint64_t sub_26738017C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB900, &qword_26741DD18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26738021C(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_267380F38();
}

void sub_26738025C(void *a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85000] & *a1;
  if (a3)
  {
    v4 = a3;
    sub_2673810AC();
  }

  v5 = *(v3 + 80);
  v6 = *(v3 + 88);

  sub_267380F94();
}

void sub_2673802E8(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_267380FF0();
}

uint64_t UnifiedOrderedEventsVector.write(to:)(uint64_t result)
{
  v2 = *(v1 + qword_2800FB918);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      sub_26738050C(v6, v11);
      if (!v4)
      {
        goto LABEL_8;
      }

      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      ++v5;
      v7 = sub_2673810DC();
      v9 = v8;
      v10 = sub_26738109C();
      sub_266ECDE68(v7, v9);
      [v4 writeData:v10 forTag:1];

      result = __swift_destroy_boxed_opaque_existential_1(v11);
      v6 += 56;
      if (v3 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_26738135C();
    MEMORY[0x26D5F74E0](0xD000000000000014, 0x80000002674A7F30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB908, &qword_26741DD20);
    sub_26738137C();
    result = sub_26738138C();
    __break(1u);
  }

  return result;
}

uint64_t sub_26738050C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_267380578(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UnifiedOrderedEventsVector.write(to:)(a3);
}

id UnifiedOrderedEventsVector.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedOrderedEventsVector();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26738067C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267380714()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t static UnifiedOrderedEventsVector.fullyQualifiedName.getter()
{
  sub_26738135C();
  v1 = *(*(*(v0 + 88) + 8) + 8);
  v2 = *(v0 + 80);
  v3 = sub_2673811FC();

  MEMORY[0x26D5F74E0](0xD00000000000001BLL, 0x80000002674A7F50);
  return v3;
}

uint64_t static UnifiedOrderedEventsVector.makeTypeManifestAndEnsureFields(in:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB840, qword_26741D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26741DD30;
  v5 = (v4 + v3);
  v6 = v1[14];
  *v5 = 0x7365756C6176;
  v5[1] = 0xE600000000000000;
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  type metadata accessor for UnifiedOrderedEvent();
  swift_getWitnessTable();
  sub_26738122C();
  sub_266EC679C(v4);
  swift_setDeallocating();
  sub_267380BFC(v5);
  swift_deallocClassInstance();

  return sub_26738119C();
}

uint64_t sub_2673809C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267380A2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

void *sub_267380A8C(void *a1, int64_t a2, char a3)
{
  result = sub_267380AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_267380AAC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB9A0, "ԓ\n");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800FB9A8, &qword_26741DE78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_267380BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267380CE0(unint64_t result)
{
  v2 = v1;
  v3 = *MEMORY[0x277D85000] & *v1;
  if (result >> 62)
  {
    goto LABEL_16;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = result;
      v23 = MEMORY[0x277D84F90];
      result = sub_267380A8C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v23;
      v8 = v5;
      v19 = v5;
      v20 = v5 & 0xC000000000000001;
      v17 = v2;
      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      v2 = v4;
      while (1)
      {
        v9 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v20)
        {
          v10 = MEMORY[0x26D5F7520](v6, v8);
        }

        else
        {
          if (v6 >= *(v18 + 16))
          {
            goto LABEL_15;
          }

          v10 = *(v8 + 8 * v6 + 32);
        }

        v11 = v10;
        (*(*(v3 + 88) + 40))(v22, v10, *(v3 + 80), *(v3 + 88));

        v23 = v7;
        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_267380A8C((v12 > 1), v13 + 1, 1);
          v7 = v23;
        }

        *(v7 + 16) = v13 + 1;
        result = sub_26738104C(v22, v7 + 56 * v13 + 32);
        ++v6;
        v8 = v19;
        if (v9 == v2)
        {
          v2 = v17;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v14 = result;
      v4 = sub_26738139C();
      result = v14;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  v15 = *(v3 + 80);
  v16 = *(v3 + 88);
  v7 = MEMORY[0x277D84F90];
LABEL_18:
  *&v2[qword_2800FB918] = v7;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for UnifiedOrderedEventsVector();
  result = objc_msgSendSuper2(&v21, sel_init);
  if (!result)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_267380EFC(unint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for UnifiedOrderedEventsVector());
  return sub_267380CE0(a1);
}

uint64_t sub_26738104C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}