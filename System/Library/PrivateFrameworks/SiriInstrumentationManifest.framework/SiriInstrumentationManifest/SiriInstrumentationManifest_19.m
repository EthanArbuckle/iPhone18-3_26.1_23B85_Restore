uint64_t sub_2671D6D04(uint64_t a1)
{
  v2 = sub_2671D6E08(&qword_2800F7500);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D6D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D6E08(&qword_2800F7500);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D6E08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSVideoVerb(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v24 = v3 + 104;
  v25 = v2;
  v23 = v12;
  v12(v6, v11, v2);
  v28[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v22 = *(v14 + 56);
  v22(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x74786554627573, 0xE700000000000000);
  v15(v28, 0);
  v26 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v27, 0x74786554627573, 0xE700000000000000);
  if (!(*(v14 + 48))(v18, 1, v13))
  {
    sub_266ECB128(&unk_28788C150);
    sub_26738115C();
  }

  (v17)(v27, 0);
  v16(v28, 0);
  v23(v6, *MEMORY[0x277D3E508], v25);
  v28[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F697461746963, 0xEF73656369646E49);
  return v19(v28, 0);
}

uint64_t sub_2671D7228(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D728C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D72F0()
{
  result = qword_2800F7508;
  if (!qword_2800F7508)
  {
    sub_2671D7348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7508);
  }

  return result;
}

unint64_t sub_2671D7348()
{
  result = qword_2800F7510;
  if (!qword_2800F7510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7510);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSWebAnswerCitationTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v36 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v2 + 104);
  v39 = *MEMORY[0x277D3E530];
  v41 = v1;
  v38 = v10;
  v10(v5);
  v45[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v42 = *(v12 + 56);
  v43 = v12 + 56;
  v42(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 7107189, 0xE300000000000000);
  v13(v45, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v44, 7107189, 0xE300000000000000);
  v16 = *(v12 + 48);
  v40 = v12 + 48;
  v37 = v16;
  if (!v16(v17, 1, v11))
  {
    sub_266ECB128(&unk_28788C178);
    sub_26738115C();
  }

  (v15)(v44, 0);
  v14(v45, 0);
  v38(v5, v39, v41);
  v45[0] = 1;
  sub_26738114C();
  v42(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F44656372756F73, 0xEC0000006E69616DLL);
  v18(v45, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v44, 0x6F44656372756F73, 0xEC0000006E69616DLL);
  if (!v37(v21, 1, v11))
  {
    sub_266ECB128(&unk_28788C1A0);
    sub_26738115C();
  }

  (v20)(v44, 0);
  v19(v45, 0);
  v38(v5, v39, v41);
  v45[0] = 1;
  sub_26738114C();
  v42(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267476830);
  v22(v45, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v44, 0xD000000000000013, 0x8000000267476830);
  if (!v37(v25, 1, v11))
  {
    sub_266ECB128(&unk_28788C1C8);
    sub_26738115C();
  }

  (v24)(v44, 0);
  v23(v45, 0);
  v38(v5, v39, v41);
  v45[0] = 1;
  sub_26738114C();
  v42(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x7865546465746963, 0xE900000000000074);
  v26(v45, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v44, 0x7865546465746963, 0xE900000000000074);
  if (!v37(v29, 1, v11))
  {
    sub_266ECB128(&unk_28788C1F0);
    sub_26738115C();
  }

  (v28)(v44, 0);
  v27(v45, 0);
  v38(v5, v39, v41);
  v45[0] = 1;
  sub_26738114C();
  v42(v9, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x6465686369726E65, 0xEB000000006C7255);
  v30(v45, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v44, 0x6465686369726E65, 0xEB000000006C7255);
  if (!v37(v33, 1, v11))
  {
    sub_266ECB128(&unk_28788C218);
    sub_26738115C();
  }

  (v32)(v44, 0);
  v31(v45, 0);
  sub_266ECB294(0, &qword_2800F7518, 0x277D59A90);
  sub_266ECAF2C(&qword_2800F7520, &qword_2800F7518, 0x277D59A90);
  sub_26738120C();
  v42(v9, 0, 1, v11);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0x69616E626D756874, 0xE90000000000006CLL);
  return v34(v45, 0);
}

uint64_t sub_2671D7CD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D7D38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSWebAnswerExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v56 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v51 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v51[1] = a1;
  sub_26738119C();
  v12 = *(v3 + 104);
  v55 = *MEMORY[0x277D3E538];
  v11 = v55;
  v12(v6, v55, v2);
  v13 = v3 + 104;
  v58 = v12;
  v60[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v16(v10, 0, 1, v14);
  v54 = v17;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x7954726577736E61, 0xEA00000000006570);
  v18(v60, 0);
  v53 = v6;
  v19 = v11;
  v20 = v56;
  v12(v6, v19, v56);
  v57 = v13;
  v60[0] = 1;
  sub_26738114C();
  v21 = v14;
  v59 = v14;
  v16(v10, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x73694C776F6C6C61, 0xED00006570795474);
  v22(v60, 0);
  v23 = v53;
  v24 = v55;
  v25 = v58;
  v58(v53, v55, v20);
  v60[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v21);
  v52 = v16;
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x74614D797A7A7566, 0xEE00657079546863);
  v26(v60, 0);
  v27 = v56;
  v25(v23, v24, v56);
  v60[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v59);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x69616D6F44627573, 0xE90000000000006ELL);
  v28(v60, 0);
  v29 = v53;
  v30 = v24;
  v25(v53, v24, v27);
  v60[0] = 1;
  sub_26738114C();
  v31 = v59;
  v32 = v52;
  v52(v10, 0, 1, v59);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0x7974696C617571, 0xE700000000000000);
  v33(v60, 0);
  v34 = v30;
  v35 = v56;
  v25(v29, v30, v56);
  v60[0] = 1;
  sub_26738114C();
  v32(v10, 0, 1, v31);
  v36 = v32;
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C43726577736E61, 0xEB00000000737361);
  v37(v60, 0);
  v38 = v53;
  v39 = v35;
  v58(v53, v34, v35);
  v60[0] = 1;
  sub_26738114C();
  v40 = v59;
  v36(v10, 0, 1, v59);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C686769486D756ELL, 0xED00007374686769);
  v41(v60, 0);
  v42 = v55;
  v43 = v39;
  v44 = v58;
  v58(v38, v55, v43);
  v60[0] = 1;
  sub_26738114C();
  v45 = v52;
  v52(v10, 0, 1, v40);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F6C6C61436D756ELL, 0xEB00000000737475);
  v46(v60, 0);
  v51[0] = "SUSWebAnswerExecution";
  v47 = v56;
  v44(v38, v42, v56);
  v60[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v59);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v51[0] | 0x8000000000000000);
  v48(v60, 0);
  v58(v38, v55, v47);
  v60[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v59);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674768B0);
  return v49(v60, 0);
}

uint64_t sub_2671D8788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D87EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D8850()
{
  result = qword_2800F7378;
  if (!qword_2800F7378)
  {
    sub_2671D88A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7378);
  }

  return result;
}

unint64_t sub_2671D88A8()
{
  result = qword_2800F7370;
  if (!qword_2800F7370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7370);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSWebAnswerExecutionTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v27 = *MEMORY[0x277D3E530];
  v28 = v3 + 104;
  v29 = v2;
  v26 = v11;
  v11(v6);
  v32[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v25 = *(v13 + 56);
  v25(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449726577736E61, 0xE800000000000000);
  v14(v32, 0);
  v30 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v31, 0x6449726577736E61, 0xE800000000000000);
  v24 = *(v13 + 48);
  if (!v24(v17, 1, v12))
  {
    sub_266ECB128(&unk_28788C240);
    sub_26738115C();
  }

  (v16)(v31, 0);
  v15(v32, 0);
  v26(v6, v27, v29);
  v32[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x7255797469746E65, 0xE90000000000006CLL);
  v18(v32, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v31, 0x7255797469746E65, 0xE90000000000006CLL);
  if (!v24(v21, 1, v12))
  {
    sub_266ECB128(&unk_28788C268);
    sub_26738115C();
  }

  (v20)(v31, 0);
  return v19(v32, 0);
}

uint64_t sub_2671D8D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D8DC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D8E28()
{
  result = qword_2800F73A8;
  if (!qword_2800F73A8)
  {
    sub_2671D8E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F73A8);
  }

  return result;
}

unint64_t sub_2671D8E80()
{
  result = qword_2800F73A0;
  if (!qword_2800F73A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F73A0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v1 + 104);
  v28 = *MEMORY[0x277D3E530];
  v29 = v1 + 104;
  v30 = v0;
  v27 = v9;
  v9(v4);
  v32[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v26 = *(v11 + 56);
  v26(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C72556567616D69, 0xE800000000000000);
  v12(v32, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v31, 0x6C72556567616D69, 0xE800000000000000);
  v25 = *(v11 + 48);
  if (!v25(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788C290);
    sub_26738115C();
  }

  (v14)(v31, 0);
  v13(v32, 0);
  v27(v4, v28, v30);
  v32[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F63496863756F74, 0xE90000000000006ELL);
  v16(v32, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v31, 0x6F63496863756F74, 0xE90000000000006ELL);
  if (!v25(v19, 1, v10))
  {
    sub_266ECB128(&unk_28788C2B8);
    sub_26738115C();
  }

  (v18)(v31, 0);
  v17(v32, 0);
  v27(v4, v28, v30);
  v32[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F6349766166, 0xE700000000000000);
  v20(v32, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v31, 0x6E6F6349766166, 0xE700000000000000);
  if (!v25(v23, 1, v10))
  {
    sub_266ECB128(&unk_28788C2E0);
    sub_26738115C();
  }

  (v22)(v31, 0);
  return v21(v32, 0);
}

uint64_t sub_2671D9474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D94D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D953C()
{
  result = qword_2800F7520;
  if (!qword_2800F7520)
  {
    sub_2671D9594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7520);
  }

  return result;
}

unint64_t sub_2671D9594()
{
  result = qword_2800F7518;
  if (!qword_2800F7518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7518);
  }

  return result;
}

uint64_t static PETSchemaPET1Key.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 7955819, 0xE300000000000000);
  return v10(v12, 0);
}

uint64_t sub_2671D9824(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D9888(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D98EC()
{
  result = qword_2800F7538;
  if (!qword_2800F7538)
  {
    sub_2671D9944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7538);
  }

  return result;
}

unint64_t sub_2671D9944()
{
  result = qword_2800F7540;
  if (!qword_2800F7540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7540);
  }

  return result;
}

uint64_t static PETSchemaPETAggregatedMessage.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15 = a1;
  v16 = sub_26738113C();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7548, 0x277D59AA8);
  sub_266ECAF2C(&qword_2800F7550, &qword_2800F7548, 0x277D59AA8);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 7955819, 0xE300000000000000);
  v11(v17, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E756F63, 0xE500000000000000);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F7558, 0x277D59AB0);
  sub_266ECAF2C(&qword_2800F7560, &qword_2800F7558, 0x277D59AB0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7562697274736964, 0xEC0000006E6F6974);
  return v13(v17, 0);
}

uint64_t sub_2671D9D8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D9DF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PETSchemaPETAggregationKey.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = a1;
  v21 = sub_26738113C();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PETSchemaPETAggregationType(0);
  sub_2671DA3E4();
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v20[1] = v10 + 56;
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 1701869940, 0xE400000000000000);
  v12(v23, 0);
  v13 = *MEMORY[0x277D3E538];
  v14 = *(v1 + 104);
  v20[0] = v1 + 104;
  v15 = v21;
  v14(v4, v13, v21);
  v23[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D61747365746164, 0xE900000000000070);
  v16(v23, 0);
  v14(v4, *MEMORY[0x277D3E518], v15);
  v23[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x74656B637562, 0xE600000000000000);
  v17(v23, 0);
  sub_266ECB294(0, &qword_2800F7580, 0x277D59AC0);
  sub_266ECAF2C(&qword_2800F7588, &qword_2800F7580, 0x277D59AC0);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x7373656D5F776172, 0xEB00000000656761);
  return v18(v23, 0);
}

uint64_t sub_2671DA320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DA384(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671DA3E4()
{
  result = qword_2800F7578;
  if (!qword_2800F7578)
  {
    type metadata accessor for PETSchemaPETAggregationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7578);
  }

  return result;
}

uint64_t static PETSchemaPETAggregationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x4E574F4E4B4E55, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x52414C414353, 0xE600000000000000, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x5542495254534944, 0xEC0000004E4F4954, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x4152474F54534948, 0xE90000000000004DLL, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671DA6F8(uint64_t a1)
{
  v2 = sub_2671DA7FC(&qword_2800F7590);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671DA760(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671DA7FC(&qword_2800F7590);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671DA7FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PETSchemaPETAggregationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PETSchemaPETDistribution.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E518];
  v26 = *(v1 + 104);
  v27 = v1 + 104;
  v26(v4, v9, v0);
  v28[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v25 = v11 + 56;
  v22 = v10;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 7235949, 0xE300000000000000);
  v13(v28, 0);
  v14 = v9;
  v15 = v9;
  v23 = v9;
  v24 = v0;
  v16 = v26;
  v26(v4, v14, v0);
  v28[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 7889261, 0xE300000000000000);
  v17(v28, 0);
  v16(v4, v15, v0);
  v28[0] = 1;
  sub_26738114C();
  v18 = v22;
  v12(v8, 0, 1, v22);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 1851876717, 0xE400000000000000);
  v19(v28, 0);
  v16(v4, v23, v24);
  v28[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x65636E6169726176, 0xE800000000000000);
  return v20(v28, 0);
}

uint64_t sub_2671DACC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DAD2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671DAD90()
{
  result = qword_2800F7560;
  if (!qword_2800F7560)
  {
    sub_2671DADE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7560);
  }

  return result;
}

unint64_t sub_2671DADE8()
{
  result = qword_2800F7558;
  if (!qword_2800F7558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7558);
  }

  return result;
}

uint64_t static PETSchemaPETMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v85 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v73 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v82 = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  (v11)(v6, *MEMORY[0x277D3E540], v2);
  v87[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v78 = *(v12 - 8);
  v14 = v78 + 56;
  v13 = *(v78 + 56);
  v81 = v12;
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x745F64616F6C7075, 0xEB00000000656D69);
  v15(v87, 0);
  LODWORD(v79) = *MEMORY[0x277D3E530];
  v16 = v85;
  v84 = v3 + 104;
  v11(v6);
  v83 = v11;
  v87[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D726F6674616C70, 0xE800000000000000);
  v17(v87, 0);
  v18 = v79;
  (v11)(v6, v79, v16);
  v87[0] = 1;
  sub_26738114C();
  v19 = v81;
  v13(v10, 0, 1, v81);
  v20 = v13;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x656369766564, 0xE600000000000000);
  v21(v87, 0);
  v22 = v18;
  v23 = v85;
  v24 = v83;
  v83(v6, v22, v85);
  v87[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v19);
  v25 = v20;
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x646C697562, 0xE500000000000000);
  v26(v87, 0);
  v27 = *MEMORY[0x277D3E4E8];
  v24(v6, v27, v23);
  v87[0] = 1;
  sub_26738114C();
  v28 = v81;
  v29 = v25;
  v25(v10, 0, 1, v81);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x7265746E695F7369, 0xEB000000006C616ELL);
  v30(v87, 0);
  v77 = v27;
  v83(v6, v27, v85);
  v87[0] = 1;
  sub_26738114C();
  v29(v10, 0, 1, v28);
  v76 = v14;
  v31 = v29;
  v80 = v29;
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x646565735F7369, 0xE700000000000000);
  v32(v87, 0);
  v33 = v85;
  v34 = v83;
  v83(v6, v27, v85);
  v87[0] = 1;
  sub_26738114C();
  v35 = v81;
  v31(v10, 0, 1, v81);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D675F7369, 0xE500000000000000);
  v36(v87, 0);
  v37 = v79;
  v34(v6, v79, v33);
  v87[0] = 1;
  sub_26738114C();
  v38 = v35;
  v39 = v80;
  v80(v10, 0, 1, v38);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0x7972746E756F63, 0xE700000000000000);
  v40(v87, 0);
  v41 = v85;
  v34(v6, v37, v85);
  v87[0] = 1;
  sub_26738114C();
  v39(v10, 0, 1, v81);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0x65676175676E616CLL, 0xE800000000000000);
  v42(v87, 0);
  v34(v6, *MEMORY[0x277D3E538], v41);
  v87[0] = 1;
  sub_26738114C();
  v43 = v80;
  v44 = v81;
  v80(v10, 0, 1, v81);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0x765F6769666E6F63, 0xEE006E6F69737265);
  v45(v87, 0);
  v74 = v6;
  v75 = "ive.pet.PETMetadata";
  v46 = v85;
  v34(v6, v79, v85);
  v87[0] = 1;
  sub_26738114C();
  v43(v10, 0, 1, v44);
  v47 = v43;
  v48 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v75 | 0x8000000000000000);
  v48(v87, 0);
  v75 = "pseudo_device_id";
  v49 = v74;
  v50 = v77;
  v34(v74, v77, v46);
  v87[0] = 1;
  sub_26738114C();
  v47(v10, 0, 1, v44);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v75 | 0x8000000000000000);
  v51(v87, 0);
  v75 = "is_internal_carry";
  v52 = v46;
  v53 = v46;
  v54 = v83;
  v83(v49, v50, v52);
  v87[0] = 1;
  sub_26738114C();
  v56 = v80;
  v55 = v81;
  v80(v10, 0, 1, v81);
  v57 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v75 | 0x8000000000000000);
  v57(v87, 0);
  v54(v49, v79, v53);
  v87[0] = 1;
  sub_26738114C();
  v56(v10, 0, 1, v55);
  v58 = sub_2673811AC();
  sub_266EC637C(v10, 0x5F6567617373656DLL, 0xED000070756F7267);
  v58(v87, 0);
  v54(v49, v79, v85);
  v87[0] = 1;
  sub_26738114C();
  v56(v10, 0, 1, v55);
  v59 = sub_2673811AC();
  sub_266EC637C(v10, 0x657079745F67736DLL, 0xE800000000000000);
  v59(v87, 0);
  v60 = sub_2673811AC();
  v61 = sub_266ECB6CC(v86, 0x657079745F67736DLL, 0xE800000000000000);
  v62 = *(v78 + 48);
  v78 += 48;
  v79 = v62;
  if (!v62(v63, 1, v55))
  {
    sub_266ECB128(&unk_28788C308);
    sub_26738115C();
  }

  (v61)(v86, 0);
  v60(v87, 0);
  v83(v49, v77, v85);
  v87[0] = 1;
  sub_26738114C();
  v80(v10, 0, 1, v55);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0x69747365745F7369, 0xEF617461645F676ELL);
  v64(v87, 0);
  v65 = sub_2673811AC();
  v66 = sub_266ECB6CC(v86, 0x69747365745F7369, 0xEF617461645F676ELL);
  if (!v79(v67, 1, v55))
  {
    sub_266ECB128(&unk_28788C330);
    sub_26738115C();
  }

  (v66)(v86, 0);
  v65(v87, 0);
  v83(v49, v77, v85);
  v87[0] = 1;
  sub_26738114C();
  v80(v10, 0, 1, v55);
  v68 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C616972745F7369, 0xEF64616F6C70755FLL);
  v68(v87, 0);
  v69 = sub_2673811AC();
  v70 = sub_266ECB6CC(v86, 0x6C616972745F7369, 0xEF64616F6C70755FLL);
  if (!v79(v71, 1, v55))
  {
    sub_266ECB128(&unk_28788C358);
    sub_26738115C();
  }

  (v70)(v86, 0);
  return v69(v87, 0);
}

uint64_t sub_2671DBED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DBF3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671DBFA0()
{
  result = qword_2800F7598;
  if (!qword_2800F7598)
  {
    sub_2671DBFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7598);
  }

  return result;
}

unint64_t sub_2671DBFF8()
{
  result = qword_2800F75A0;
  if (!qword_2800F75A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F75A0);
  }

  return result;
}

uint64_t static PETSchemaPETRawMessage.makeTypeManifestAndEnsureFields(in:)()
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
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v1 + 104);
  v19 = v0;
  v20 = v10;
  v10(v4, v9, v0);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x64695F65707974, 0xE700000000000000);
  v13(v21, 0);
  v14 = v0;
  v15 = v20;
  v20(v4, *MEMORY[0x277D3E4F8], v14);
  v21[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x657479625F776172, 0xE900000000000073);
  v16(v21, 0);
  v15(v4, *MEMORY[0x277D3E530], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 1701667182, 0xE400000000000000);
  return v17(v21, 0);
}

uint64_t sub_2671DC420(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DC484(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671DC4E8()
{
  result = qword_2800F7588;
  if (!qword_2800F7588)
  {
    sub_2671DC540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7588);
  }

  return result;
}

unint64_t sub_2671DC540()
{
  result = qword_2800F7580;
  if (!qword_2800F7580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7580);
  }

  return result;
}

uint64_t static PETSchemaPETUpload.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_26738113C();
  v47 = *(v45 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F75A0, 0x277D59AB8);
  sub_266ECAF2C(&qword_2800F7598, &qword_2800F75A0, 0x277D59AB8);
  sub_26738120C();
  v10 = sub_26738116C();
  v46 = *(v10 - 8);
  v11 = *(v46 + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x617461646174656DLL, 0xE800000000000000);
  v12(v50, 0);
  sub_266ECB294(0, &qword_2800F7570, 0x277D59AA0);
  sub_266ECAF2C(&qword_2800F7568, &qword_2800F7570, 0x277D59AA0);
  v40 = a1;
  sub_26738122C();
  v37 = v10;
  v11(v9, 0, 1, v10);
  v48 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267476B20);
  v13(v50, 0);
  v14 = sub_266ECB294(0, &qword_2800F7580, 0x277D59AC0);
  v15 = sub_266ECAF2C(&qword_2800F7588, &qword_2800F7580, 0x277D59AC0);
  v38 = v14;
  v39 = v15;
  sub_26738122C();
  v16 = v11;
  v43 = v11;
  v11(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267476B40);
  v17(v50, 0);
  v19 = v47 + 104;
  v18 = *(v47 + 104);
  v20 = v44;
  v18(v44, *MEMORY[0x277D3E4E8], v45);
  v50[0] = 1;
  sub_26738114C();
  v21 = v37;
  v16(v9, 0, 1, v37);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x72706D6F635F7369, 0xED00006465737365);
  v22(v50, 0);
  v36 = "unaggregated_messages";
  v41 = *MEMORY[0x277D3E4F8];
  v47 = v19;
  v42 = v18;
  (v18)(v20);
  v50[0] = 1;
  sub_26738114C();
  v23 = v43;
  v43(v9, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v36 | 0x8000000000000000);
  v24(v50, 0);
  sub_26738122C();
  v23(v9, 0, 1, v21);
  v25 = v21;
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D5F6C61697274, 0xEE00736567617373);
  v26(v50, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v49, 0x656D5F6C61697274, 0xEE00736567617373);
  v29 = *(v46 + 48);
  v46 += 48;
  if (!v29(v30, 1, v25))
  {
    sub_266ECB128(&unk_28788C380);
    sub_26738115C();
  }

  (v28)(v49, 0);
  v27(v50, 0);
  v42(v44, v41, v45);
  v50[0] = 1;
  sub_26738114C();
  v43(v9, 0, 1, v25);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x73736572706D6F63, 0xEF617461645F6465);
  v31(v50, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v49, 0x73736572706D6F63, 0xEF617461645F6465);
  if (!v29(v34, 1, v25))
  {
    sub_266ECB128(&unk_28788C3A8);
    sub_26738115C();
  }

  (v33)(v49, 0);
  v32(v50, 0);
  sub_266ECB128(&unk_28788C3D0);
  return sub_2673811CC();
}

uint64_t sub_2671DCDF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671DCE88()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2671DCF54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DCFB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671DD018(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F75A8, &qword_2800F1E20, 0x277D59AC8);
  a1[2] = sub_266ECAF2C(&qword_2800F75B0, &qword_2800F1E20, 0x277D59AC8);
  result = sub_266ECAF2C(&qword_2800F75B8, &qword_2800F1E20, 0x277D59AC8);
  a1[3] = result;
  return result;
}

uint64_t static PFAAnyEventTypeStatistics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaAnyEventType(0);
  sub_26708B0A0();
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645796E61, 0xEC00000065707954);
  v11(v16, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v15[0]);
  v16[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x436567617373656DLL, 0xEC000000746E756FLL);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F75C0, 0x277D59AE0);
  sub_266ECAF2C(&qword_2800F75C8, &qword_2800F75C0, 0x277D59AE0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x617453746E657665, 0xEF73636974736974);
  return v13(v16, 0);
}

uint64_t sub_2671DD4F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DD558(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFAClockEnvelopeStatistics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11(v6, *MEMORY[0x277D3E538], v2);
  v18[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x436567617373656DLL, 0xEC000000746E756FLL);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E540], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x7479426C61746F74, 0xEA00000000007365);
  return v15(v18, 0);
}

uint64_t sub_2671DD928(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DD98C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671DD9F0()
{
  result = qword_2800F75E0;
  if (!qword_2800F75E0)
  {
    sub_2671DDA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F75E0);
  }

  return result;
}

unint64_t sub_2671DDA48()
{
  result = qword_2800F75E8;
  if (!qword_2800F75E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F75E8);
  }

  return result;
}

uint64_t static PFAEventStatistics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C616E6964726FLL, 0xE700000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x436567617373656DLL, 0xEC000000746E756FLL);
  return v16(v20, 0);
}

uint64_t sub_2671DDDBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DDE20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671DDE84()
{
  result = qword_2800F75C8;
  if (!qword_2800F75C8)
  {
    sub_2671DDEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F75C8);
  }

  return result;
}

unint64_t sub_2671DDEDC()
{
  result = qword_2800F75C0;
  if (!qword_2800F75C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F75C0);
  }

  return result;
}

uint64_t static PFAExtensionResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267476C60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267476C80, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x8000000267476CA0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267476CC0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267476CE0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671DE224(uint64_t a1)
{
  v2 = sub_2671DE328(&qword_2800F75F8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671DE28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671DE328(&qword_2800F75F8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671DE328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PFAExtensionResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PFAIngestExtensionStatistics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = a1;
  v1 = sub_26738113C();
  v22 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v24 = v2 + 104;
  v11(v5, v10, v1);
  v21 = v11;
  v25[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v14(v25, 0);
  type metadata accessor for PFAExtensionResult(0);
  sub_2671DE93C(&qword_2800F75F0, type metadata accessor for PFAExtensionResult);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x746C75736572, 0xE600000000000000);
  v15(v25, 0);
  v16 = *MEMORY[0x277D3E538];
  v17 = v22;
  v11(v5, v16, v22);
  v25[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x436567617373656DLL, 0xEC000000746E756FLL);
  v18(v25, 0);
  v21(v5, v16, v17);
  v25[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267476D40);
  return v19(v25, 0);
}

uint64_t sub_2671DE830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DE894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671DE93C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671DE984()
{
  result = qword_2800F7608;
  if (!qword_2800F7608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7608);
  }

  return result;
}

uint64_t static PFAIngestionExtensionStreamStatistics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v20[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496D6165727473, 0xE800000000000000);
  v13(v23, 0);
  v20[0] = "StreamStatistics";
  v14 = *MEMORY[0x277D3E538];
  v15 = v21;
  v16 = *(v22 + 104);
  v22 += 104;
  v16(v6, v14, v21);
  v23[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v20[0] | 0x8000000000000000);
  v17(v23, 0);
  v16(v6, v14, v15);
  v23[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267476DD0);
  return v18(v23, 0);
}

uint64_t sub_2671DEDE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DEE44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFAPFAClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7620, 0x277D59B08);
  sub_266ECAF2C(&qword_2800F7628, &qword_2800F7620, 0x277D59B08);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800F7630, 0x277D59B58);
  sub_266ECAF2C(&qword_2800F7638, &qword_2800F7630, 0x277D59B58);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267476E20);
  v10(v29, 0);
  sub_266ECB294(0, &qword_2800F7640, 0x277D59B10);
  sub_266ECAF2C(&qword_2800F7648, &qword_2800F7640, 0x277D59B10);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x8000000267476E40);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800F7650, 0x277D59B48);
  sub_266ECAF2C(&qword_2800F7658, &qword_2800F7650, 0x277D59B48);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000025, 0x8000000267476E60);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800F7660, 0x277D59B40);
  sub_266ECAF2C(&qword_2800F7668, &qword_2800F7660, 0x277D59B40);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x8000000267476E90);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800F7670, 0x277D59B38);
  sub_266ECAF2C(&qword_2800F7678, &qword_2800F7670, 0x277D59B38);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, 0x8000000267476EC0);
  v14(v29, 0);
  sub_266ECB294(0, &qword_2800F7618, 0x277D59AF0);
  sub_266ECAF2C(&qword_2800F7610, &qword_2800F7618, 0x277D59AF0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = v26;
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x8000000267476EF0);
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
  sub_266ECB128(&unk_28788C400);
  return sub_2673811CC();
}

uint64_t sub_2671DF750(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671DF7E8()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2671DF8B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DF918(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671DF978(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F7680, &qword_2800F7688, 0x277D59AF8);
  a1[2] = sub_266ECAF2C(&qword_2800F7690, &qword_2800F7688, 0x277D59AF8);
  result = sub_266ECAF2C(&qword_2800F7698, &qword_2800F7688, 0x277D59AF8);
  a1[3] = result;
  return result;
}

uint64_t static PFAPFADeviceDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v23[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x75426D6574737973, 0xEB00000000646C69);
  v16(v23, 0);
  v13(v7, v12, v21);
  v23[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x7954656369766564, 0xEA00000000006570);
  v17(v23, 0);
  type metadata accessor for SISchemaProgramCode(0);
  sub_2671DFF78(&qword_2800F0448, type metadata accessor for SISchemaProgramCode);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x436D6172676F7270, 0xEB0000000065646FLL);
  return v18(v23, 0);
}

uint64_t sub_2671DFE6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671DFED0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671DFF78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671DFFC0()
{
  result = qword_2800F76B0;
  if (!qword_2800F76B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F76B0);
  }

  return result;
}

uint64_t static PFAPFAEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v5, *MEMORY[0x277D3E540], v1);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267468710);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F76B0, 0x277D59B00);
  sub_266ECAF2C(&qword_2800F76A8, &qword_2800F76B0, 0x277D59B00);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267476F90);
  return v13(v16, 0);
}

uint64_t sub_2671E034C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E03B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFAPreprocessorExecutionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F76B8, 0x277D59B30);
  sub_266ECAF2C(&qword_2800F76C0, &qword_2800F76B8, 0x277D59B30);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F76C8, 0x277D59B18);
  sub_266ECAF2C(&qword_2800F76D0, &qword_2800F76C8, 0x277D59B18);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F76D8, 0x277D59B20);
  sub_266ECAF2C(&qword_2800F76E0, &qword_2800F76D8, 0x277D59B20);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
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
  return v14(v26, 0);
}

uint64_t sub_2671E0A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E0A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFAPreprocessorExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F76E8, 0x277D59B28);
  sub_266ECAF2C(&qword_2800F76F0, &qword_2800F76E8, 0x277D59B28);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x8000000267477030);
  return v5(v7, 0);
}

uint64_t sub_2671E0D30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E0D94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFAPreprocessorExecutionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F76E8, 0x277D59B28);
  sub_266ECAF2C(&qword_2800F76F0, &qword_2800F76E8, 0x277D59B28);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x8000000267477030);
  v6(v9, 0);
  type metadata accessor for PFAPreprocessorExecutionStep(0);
  sub_2671E1190();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x744164656C696166, 0xEC00000070657453);
  return v7(v9, 0);
}

uint64_t sub_2671E10CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E1130(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E1190()
{
  result = qword_2800F76F8;
  if (!qword_2800F76F8)
  {
    type metadata accessor for PFAPreprocessorExecutionStep(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F76F8);
  }

  return result;
}

uint64_t static PFAPreprocessorExecutionMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v26 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v3 + 104);
  v27 = v3 + 104;
  v12(v6, v11, v2);
  v24 = v12;
  v28[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v23 = v13;
  v14(v10, 0, 1, v13);
  v15 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674770D0);
  v16(v28, 0);
  v22 = "executionTimeInNs";
  v17 = *MEMORY[0x277D3E538];
  v18 = v26;
  v12(v6, v17, v26);
  v28[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v22 | 0x8000000000000000);
  v19(v28, 0);
  v24(v6, v17, v18);
  v28[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v23);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267477110);
  return v20(v28, 0);
}

uint64_t sub_2671E163C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E16A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E1704()
{
  result = qword_2800F76F0;
  if (!qword_2800F76F0)
  {
    sub_2671E175C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F76F0);
  }

  return result;
}

unint64_t sub_2671E175C()
{
  result = qword_2800F76E8;
  if (!qword_2800F76E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F76E8);
  }

  return result;
}

uint64_t static PFAPreprocessorExecutionReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267477170, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x80000002674771A0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674771D0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267477200, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671E1A2C(uint64_t a1)
{
  v2 = sub_2671E1B30(&qword_2800F7708);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671E1A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671E1B30(&qword_2800F7708);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671E1B30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PFAPreprocessorExecutionReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PFAPreprocessorExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PFAPreprocessorExecutionReason(0);
  sub_2671E1FC0(&qword_2800F7700, type metadata accessor for PFAPreprocessorExecutionReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671E1D30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PFAPreprocessorExecutionReason(0);
  sub_2671E1FC0(&qword_2800F7700, type metadata accessor for PFAPreprocessorExecutionReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671E1EB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E1F18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671E1FC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671E2008()
{
  result = qword_2800F76B8;
  if (!qword_2800F76B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F76B8);
  }

  return result;
}

uint64_t static PFAPreprocessorExecutionStep.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674772B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x80000002674772E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x8000000267477310, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x8000000267477340, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x8000000267477370, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671E2348(uint64_t a1)
{
  v2 = sub_2671E244C(&qword_2800F7710);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671E23B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671E244C(&qword_2800F7710);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671E244C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PFAPreprocessorExecutionStep(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PFAPreprocessorOrchestratorResultsStatsReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x49747865746E6F63, 0xE900000000000064);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F7608, 0x277D59AE8);
  sub_266ECAF2C(&qword_2800F7600, &qword_2800F7608, 0x277D59AE8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x80000002674773F0);
  return v7(v9, 0);
}

uint64_t sub_2671E2764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E27C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFAPreprocessorSessionEndStatsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7718, 0x277D59B50);
  sub_266ECAF2C(&qword_2800F7720, &qword_2800F7718, 0x277D59B50);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267477460);
  return v5(v7, 0);
}

uint64_t sub_2671E2A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E2AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFAPreprocessorSessionStartStatsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15 = a1;
  v16 = sub_26738113C();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6564496B636F6C63, 0xEF7265696669746ELL);
  v11(v17, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x436567617373656DLL, 0xEC000000746E756FLL);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F75D8, 0x277D59AD0);
  sub_266ECAF2C(&qword_2800F75D0, &qword_2800F75D8, 0x277D59AD0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674774D0);
  return v13(v17, 0);
}

uint64_t sub_2671E2F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E2FEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFAProcessedClockStatistics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18[2] = a1;
  v19 = sub_26738113C();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6564496B636F6C63, 0xEF7265696669746ELL);
  v13(v20, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v19);
  v20[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v18[1] = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x436567617373656DLL, 0xEC000000746E756FLL);
  v14(v20, 0);
  sub_266ECB294(0, &qword_2800F75D8, 0x277D59AD0);
  sub_266ECAF2C(&qword_2800F75D0, &qword_2800F75D8, 0x277D59AD0);
  sub_26738122C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267477530);
  v15(v20, 0);
  sub_26738122C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267477550);
  return v16(v20, 0);
}

uint64_t sub_2671E3558(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E35BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFARepackagingExecution.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6564496B636F6C63, 0xEF7265696669746ELL);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F75E8, 0x277D59AD8);
  sub_266ECAF2C(&qword_2800F75E0, &qword_2800F75E8, 0x277D59AD8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x80000002674775B0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F7728, 0x277D59B70);
  sub_266ECAF2C(&qword_2800F7730, &qword_2800F7728, 0x277D59B70);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_2671E3A04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E3A68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFARepackagingExecutionFailure.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7738, 0x277D59B60);
  sub_266ECAF2C(&qword_2800F7740, &qword_2800F7738, 0x277D59B60);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x756C696146666266, 0xEA00000000006572);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F7748, 0x277D59B78);
  sub_266ECAF2C(&qword_2800F7750, &qword_2800F7748, 0x277D59B78);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x45786F62646E6173, 0xEC000000726F7272);
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
  return v12(v22, 0);
}

uint64_t sub_2671E3F54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E3FB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PFARepackagingExecutionFBFFailure.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x43726F7272456C66, 0xEB0000000065646FLL);
  return v10(v12, 0);
}

uint64_t sub_2671E42B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E4314(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E4378()
{
  result = qword_2800F7740;
  if (!qword_2800F7740)
  {
    sub_2671E43D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7740);
  }

  return result;
}

unint64_t sub_2671E43D0()
{
  result = qword_2800F7738;
  if (!qword_2800F7738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7738);
  }

  return result;
}

uint64_t static PFARepackagingExecutionResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = a1;
  v1 = sub_26738118C();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26738113C();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PFARepackagingExecutionSamplingResult(0);
  sub_2671E4A28();
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0x676E696C706D6173, 0xEE00746C75736552);
  v14(v32, 0);
  (*(v4 + 104))(v7, *MEMORY[0x277D3E4E8], v27);
  v32[0] = 0;
  sub_26738114C();
  v13(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x73736563637573, 0xE700000000000000);
  v15(v32, 0);
  sub_266ECB294(0, &qword_2800F7760, 0x277D59B68);
  sub_266ECAF2C(&qword_2800F7758, &qword_2800F7760, 0x277D59B68);
  sub_26738121C();
  v13(v11, 0, 1, v12);
  v16 = v29;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6572756C696166, 0xE700000000000000);
  v17(v32, 0);
  sub_26738117C();
  v18 = sub_2673811BC();
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_266ECAD54(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_266ECAD54(v23 > 1, v24 + 1, 1, v21);
    *v20 = v21;
  }

  v21[2] = v24 + 1;
  (*(v30 + 32))(v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v16, v31);
  return v18(v32, 0);
}

uint64_t sub_2671E4964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E49C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E4A28()
{
  result = qword_2800F7768;
  if (!qword_2800F7768)
  {
    type metadata accessor for PFARepackagingExecutionSamplingResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7768);
  }

  return result;
}

uint64_t static PFARepackagingExecutionSamplingResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x4E574F4E4B4E55, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x64656C706D6153, 0xE700000000000000, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x6C706D6153746F4ELL, 0xEA00000000006465, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671E4CC8(uint64_t a1)
{
  v2 = sub_2671E4DCC(&qword_2800F7770);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671E4D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671E4DCC(&qword_2800F7770);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671E4DCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PFARepackagingExecutionSamplingResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PFARepackagingExecutionSandboxError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6D754E726F727265, 0xEB00000000726562);
  return v10(v12, 0);
}

uint64_t sub_2671E5064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E50C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E512C()
{
  result = qword_2800F7750;
  if (!qword_2800F7750)
  {
    sub_2671E5184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7750);
  }

  return result;
}

unint64_t sub_2671E5184()
{
  result = qword_2800F7748;
  if (!qword_2800F7748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7748);
  }

  return result;
}

uint64_t static PGSchemaPGClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7778, 0x277D59B88);
  sub_266ECAF2C(&qword_2800F7780, &qword_2800F7778, 0x277D59B88);
  sub_26738120C();
  v9 = sub_26738116C();
  v39 = *(v9 - 8);
  v11 = v39 + 56;
  v10 = *(v39 + 56);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v47, 0);
  sub_266ECB294(0, &qword_2800F7788, 0x277D59C28);
  sub_266ECAF2C(&qword_2800F7790, &qword_2800F7788, 0x277D59C28);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267477750);
  v13(v47, 0);
  sub_266ECB294(0, &qword_2800F7798, 0x277D59C20);
  sub_266ECAF2C(&qword_2800F77A0, &qword_2800F7798, 0x277D59C20);
  v45 = a1;
  sub_26738121C();
  v43 = v11;
  v44 = v10;
  v10(v8, 0, 1, v9);
  v14 = v39;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x74706D6F72506770, 0xED00003172656954);
  v15(v47, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v46, 0x74706D6F72506770, 0xED00003172656954);
  v18 = *(v14 + 48);
  if (!v18(v19, 1, v9))
  {
    sub_266ECB128(&unk_28788C430);
    sub_26738115C();
  }

  (v17)(v46, 0);
  v16(v47, 0);
  sub_266ECB294(0, &qword_2800F77A8, 0x277D59C18);
  sub_266ECAF2C(&qword_2800F77B0, &qword_2800F77A8, 0x277D59C18);
  sub_26738121C();
  v44(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267477770);
  v20(v47, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v46, 0xD000000000000015, 0x8000000267477770);
  if (!v18(v23, 1, v9))
  {
    sub_266ECB128(&unk_28788C458);
    sub_26738115C();
  }

  (v22)(v46, 0);
  v21(v47, 0);
  sub_266ECB294(0, &qword_2800F77B8, 0x277D59BB0);
  sub_266ECAF2C(&qword_2800F77C0, &qword_2800F77B8, 0x277D59BB0);
  sub_26738121C();
  v24 = v44;
  v44(v8, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267477790);
  v25(v47, 0);
  sub_266ECB294(0, &qword_2800F77C8, 0x277D59BE8);
  sub_266ECAF2C(&qword_2800F77D0, &qword_2800F77C8, 0x277D59BE8);
  sub_26738121C();
  v24(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x80000002674777B0);
  v26(v47, 0);
  sub_266ECB294(0, &qword_2800F77D8, 0x277D59C08);
  sub_266ECAF2C(&qword_2800F77E0, &qword_2800F77D8, 0x277D59C08);
  sub_26738121C();
  v24(v8, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x80000002674777D0);
  v27(v47, 0);
  sub_266ECB294(0, &qword_2800F77E8, 0x277D59B90);
  sub_266ECAF2C(&qword_2800F77F0, &qword_2800F77E8, 0x277D59B90);
  sub_26738121C();
  v24(v8, 0, 1, v9);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674777F0);
  v28(v47, 0);
  v29 = v40;
  sub_26738117C();
  v30 = sub_2673811BC();
  v32 = v31;
  v33 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_266ECAD54(0, v33[2] + 1, 1, v33);
    *v32 = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_266ECAD54(v35 > 1, v36 + 1, 1, v33);
    *v32 = v33;
  }

  v33[2] = v36 + 1;
  (*(v41 + 32))(v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v36, v29, v42);
  v30(v47, 0);
  sub_266ECB128(&unk_28788C480);
  return sub_2673811CC();
}

uint64_t sub_2671E5C5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671E5CF4()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2671E5DC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E5E24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671E5E84(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F77F8, &qword_2800F7800, 0x277D59B80);
  a1[2] = sub_266ECAF2C(&qword_2800F7808, &qword_2800F7800, 0x277D59B80);
  result = sub_266ECAF2C(&qword_2800F7810, &qword_2800F7800, 0x277D59B80);
  a1[3] = result;
  return result;
}

uint64_t static PGSchemaPGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = sub_26738113C();
  v26 = *(v28 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v9 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v29 = a1;
  v25 = v9;
  v23[1] = v8;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v24 = *(v11 + 56);
  v24(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7365757165526669, 0xEB00000000644974);
  v12(v31, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v30, 0x7365757165526669, 0xEB00000000644974);
  v23[0] = *(v11 + 48);
  if (!(v23[0])(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788C4B8);
    sub_26738115C();
  }

  (v14)(v30, 0);
  v13(v31, 0);
  (*(v26 + 104))(v27, *MEMORY[0x277D3E540], v28);
  v31[0] = 1;
  sub_26738114C();
  v16 = v24;
  v24(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x53676E6974736F70, 0xED000064496E6170);
  v17(v31, 0);
  sub_26738120C();
  v16(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C6379436E616C70, 0xEB00000000644965);
  v18(v31, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v30, 0x6C6379436E616C70, 0xEB00000000644965);
  if (!(v23[0])(v21, 1, v10))
  {
    sub_266ECB128(&unk_28788C4E8);
    sub_26738115C();
  }

  (v20)(v30, 0);
  return v19(v31, 0);
}

uint64_t sub_2671E64A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E650C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267477870, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267477890, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2671E6754(uint64_t a1)
{
  v2 = sub_2671E6858(&qword_2800F7828);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671E67BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671E6858(&qword_2800F7828);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671E6858(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PGSchemaPGFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PGSchemaPGGeneratePlanContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7830, 0x277D59BA8);
  sub_266ECAF2C(&qword_2800F7838, &qword_2800F7830, 0x277D59BA8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F7840, 0x277D59B98);
  sub_266ECAF2C(&qword_2800F7848, &qword_2800F7840, 0x277D59B98);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F7850, 0x277D59BA0);
  sub_266ECAF2C(&qword_2800F7858, &qword_2800F7850, 0x277D59BA0);
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

uint64_t sub_2671E6DB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E6E18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGGeneratePlanEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671E7104(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E7168(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E71CC()
{
  result = qword_2800F7848;
  if (!qword_2800F7848)
  {
    sub_2671E7224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7848);
  }

  return result;
}

unint64_t sub_2671E7224()
{
  result = qword_2800F7840;
  if (!qword_2800F7840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7840);
  }

  return result;
}

uint64_t static PGSchemaPGGeneratePlanFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_2671E7450()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_2671E75F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E765C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGGeneratePlanStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671E7948(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E79AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E7A10()
{
  result = qword_2800F7838;
  if (!qword_2800F7838)
  {
    sub_2671E7A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7838);
  }

  return result;
}

unint64_t sub_2671E7A68()
{
  result = qword_2800F7830;
  if (!qword_2800F7830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7830);
  }

  return result;
}

uint64_t static PGSchemaPGModelInferenceContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7860, 0x277D59BC8);
  sub_266ECAF2C(&qword_2800F7868, &qword_2800F7860, 0x277D59BC8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F7870, 0x277D59BB8);
  sub_266ECAF2C(&qword_2800F7878, &qword_2800F7870, 0x277D59BB8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F7880, 0x277D59BC0);
  sub_266ECAF2C(&qword_2800F7888, &qword_2800F7880, 0x277D59BC0);
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
  sub_266EC637C(v5, 0x64496563617274, 0xE700000000000000);
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

uint64_t sub_2671E8090(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E80F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGModelInferenceEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20](v0);
  v14 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v17, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674779E0);
  v10(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E530], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6564496C65646F6DLL, 0xEF7265696669746ELL);
  return v11(v17, 0);
}

uint64_t sub_2671E8564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E85C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGModelInferenceFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C61636974697263, 0xED0000726F727245);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6564496C65646F6DLL, 0xEF7265696669746ELL);
  return v11(v15, 0);
}

uint64_t sub_2671E89B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E8A1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGModelInferenceStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v6(v9, 0);
  type metadata accessor for PGSchemaPGModelInterface(0);
  sub_2671E8E14();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E496C65646F6DLL, 0xEE00656361667265);
  return v7(v9, 0);
}

uint64_t sub_2671E8D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E8DB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E8E14()
{
  result = qword_2800F7890;
  if (!qword_2800F7890)
  {
    type metadata accessor for PGSchemaPGModelInterface(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7890);
  }

  return result;
}

uint64_t static PGSchemaPGModelInterface.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267477A90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267477AB0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x8000000267477AE0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000046, 0x8000000267477B20, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671E9134(uint64_t a1)
{
  v2 = sub_2671E9238(&qword_2800F7898);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671E919C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671E9238(&qword_2800F7898);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671E9238(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PGSchemaPGModelInterface(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PGSchemaPGOverridesEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20](v0);
  v14 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674779E0);
  v9(v17, 0);
  sub_266ECB294(0, &qword_2800F78A0, 0x277D59BE0);
  sub_266ECAF2C(&qword_2800F78A8, &qword_2800F78A0, 0x277D59BE0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267477BA0);
  v10(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E530], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265567465737361, 0xEC0000006E6F6973);
  return v11(v17, 0);
}

uint64_t sub_2671E9690(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E96F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGOverridesFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C61636974697263, 0xED0000726F727245);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265567465737361, 0xEC0000006E6F6973);
  return v11(v15, 0);
}

uint64_t sub_2671E9AE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E9B44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGOverridesMatchMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x65686374614D7369, 0xE900000000000064);
  return v10(v12, 0);
}

uint64_t sub_2671E9E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671E9E9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671E9F00()
{
  result = qword_2800F78A8;
  if (!qword_2800F78A8)
  {
    sub_2671E9F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F78A8);
  }

  return result;
}

unint64_t sub_2671E9F58()
{
  result = qword_2800F78A0;
  if (!qword_2800F78A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F78A0);
  }

  return result;
}

uint64_t static PGSchemaPGOverridesRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F78D0, 0x277D59BF0);
  sub_266ECAF2C(&qword_2800F78D8, &qword_2800F78D0, 0x277D59BF0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F78B8, 0x277D59BD0);
  sub_266ECAF2C(&qword_2800F78B0, &qword_2800F78B8, 0x277D59BD0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F78C8, 0x277D59BD8);
  sub_266ECAF2C(&qword_2800F78C0, &qword_2800F78C8, 0x277D59BD8);
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

uint64_t sub_2671EA4BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EA520(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGOverridesStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671EA80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EA870(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671EA8D4()
{
  result = qword_2800F78D8;
  if (!qword_2800F78D8)
  {
    sub_2671EA92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F78D8);
  }

  return result;
}

unint64_t sub_2671EA92C()
{
  result = qword_2800F78D0;
  if (!qword_2800F78D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F78D0);
  }

  return result;
}

uint64_t static PGSchemaPGPrescribedPlanEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674779E0);
  return v5(v7, 0);
}

uint64_t sub_2671EAB70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EABD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGPrescribedPlanFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_2671EAE58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_2671EB000(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EB064(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGPrescribedPlanRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7900, 0x277D59C10);
  sub_266ECAF2C(&qword_2800F7908, &qword_2800F7900, 0x277D59C10);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F78E8, 0x277D59BF8);
  sub_266ECAF2C(&qword_2800F78E0, &qword_2800F78E8, 0x277D59BF8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F78F8, 0x277D59C00);
  sub_266ECAF2C(&qword_2800F78F0, &qword_2800F78F8, 0x277D59C00);
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

uint64_t sub_2671EB620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EB684(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGPrescribedPlanStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671EB970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EB9D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671EBA38()
{
  result = qword_2800F7908;
  if (!qword_2800F7908)
  {
    sub_2671EBA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7908);
  }

  return result;
}

unint64_t sub_2671EBA90()
{
  result = qword_2800F7900;
  if (!qword_2800F7900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7900);
  }

  return result;
}

uint64_t static PGSchemaPGPromptResponseTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v33 = sub_26738113C();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  v13(v35, 0);
  v14 = *MEMORY[0x277D3E530];
  v15 = *(v2 + 104);
  v32 = v2 + 104;
  v27 = v15;
  v15(v5, v14, v33);
  v35[0] = 1;
  v29 = v5;
  sub_26738114C();
  v28 = v12;
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x655274706D6F7270, 0xEE0065736E6F7073);
  v16(v35, 0);
  v30 = a1;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v34, 0x655274706D6F7270, 0xEE0065736E6F7073);
  v19 = *(v11 + 48);
  v31 = v11 + 48;
  if (!v19(v20, 1, v10))
  {
    sub_266ECB128(&unk_28788C518);
    sub_26738115C();
  }

  (v18)(v34, 0);
  v17(v35, 0);
  v27(v29, v14, v33);
  v35[0] = 1;
  sub_26738114C();
  v28(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x72616D6D617267, 0xE700000000000000);
  v21(v35, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v34, 0x72616D6D617267, 0xE700000000000000);
  if (!v19(v24, 1, v10))
  {
    sub_266ECB128(&unk_28788C540);
    sub_26738115C();
  }

  (v23)(v34, 0);
  return v22(v35, 0);
}

uint64_t sub_2671EC02C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EC090(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGPromptTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x74706D6F7270, 0xE600000000000000);
  v14(v31, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v30, 0x74706D6F7270, 0xE600000000000000);
  v17 = *(v9 + 48);
  v27 = v9 + 48;
  if (!v17(v18, 1, v8))
  {
    sub_266ECB128(&unk_28788C570);
    sub_26738115C();
  }

  (v16)(v30, 0);
  v15(v31, 0);
  v24(v26, v12, v29);
  v31[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x72616D6D617267, 0xE700000000000000);
  v19(v31, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v30, 0x72616D6D617267, 0xE700000000000000);
  if (!v17(v22, 1, v8))
  {
    sub_266ECB128(&unk_28788C598);
    sub_26738115C();
  }

  (v21)(v30, 0);
  return v20(v31, 0);
}

uint64_t sub_2671EC674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EC6D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7910, 0x277D59C40);
  sub_266ECAF2C(&qword_2800F7918, &qword_2800F7910, 0x277D59C40);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F7920, 0x277D59C30);
  sub_266ECAF2C(&qword_2800F7928, &qword_2800F7920, 0x277D59C30);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F7930, 0x277D59C38);
  sub_266ECAF2C(&qword_2800F7938, &qword_2800F7930, 0x277D59C38);
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

uint64_t sub_2671ECC94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671ECCF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PGSchemaPGFailureReason(0);
  sub_2671ED16C();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v7(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674779E0);
  return v8(v10, 0);
}

uint64_t sub_2671ED0A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671ED10C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671ED16C()
{
  result = qword_2800F7820;
  if (!qword_2800F7820)
  {
    type metadata accessor for PGSchemaPGFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7820);
  }

  return result;
}

uint64_t static PGSchemaPGRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_2671ED3E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_2671ED590(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671ED5F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PGSchemaPGRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671ED868()
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
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671EDA00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EDA64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSChangeDataCaptureMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSChangeDataCaptureType(0);
  sub_2671EDF74(&qword_2800F7940, type metadata accessor for PLUSSchemaPLUSChangeDataCaptureType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F6974617265706FLL, 0xED0000657079546ELL);
  return v5(v7, 0);
}

uint64_t sub_2671EDCD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSChangeDataCaptureType(0);
  sub_2671EDF74(&qword_2800F7940, type metadata accessor for PLUSSchemaPLUSChangeDataCaptureType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F6974617265706FLL, 0xED0000657079546ELL);
  return v5(v7, 0);
}

uint64_t sub_2671EDE68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671EDECC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671EDF74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671EDFBC()
{
  result = qword_2800F7950;
  if (!qword_2800F7950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7950);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSChangeDataCaptureType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267477F00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267477F30, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267477F60, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267477F90, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671EE294(uint64_t a1)
{
  v2 = sub_2671EE398(&qword_2800F7958);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671EE2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671EE398(&qword_2800F7958);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671EE398(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSChangeDataCaptureType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2);
  v95 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v94 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7960, 0x277D59C58);
  sub_266ECAF2C(&qword_2800F7968, &qword_2800F7960, 0x277D59C58);
  sub_26738120C();
  v9 = sub_26738116C();
  v103 = *(v9 - 8);
  v10 = v103 + 56;
  v11 = *(v103 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v105, 0);
  sub_266ECB294(0, &qword_2800F7970, 0x277D59C78);
  sub_266ECAF2C(&qword_2800F7978, &qword_2800F7970, 0x277D59C78);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x8000000267477FF0);
  v13(v105, 0);
  sub_266ECB294(0, &qword_2800F7980, 0x277D59CC8);
  sub_266ECAF2C(&qword_2800F7988, &qword_2800F7980, 0x277D59CC8);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x8000000267478010);
  v14(v105, 0);
  sub_266ECB294(0, &qword_2800F7990, 0x277D59C98);
  sub_266ECAF2C(&qword_2800F7998, &qword_2800F7990, 0x277D59C98);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, 0x8000000267478040);
  v15(v105, 0);
  sub_266ECB294(0, &qword_2800F79A0, 0x277D59CA0);
  sub_266ECAF2C(&qword_2800F79A8, &qword_2800F79A0, 0x277D59CA0);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ALL, 0x8000000267478070);
  v16(v105, 0);
  sub_266ECB294(0, &qword_2800F79B0, 0x277D59E20);
  sub_266ECAF2C(&qword_2800F79B8, &qword_2800F79B0, 0x277D59E20);
  v102 = a1;
  sub_26738121C();
  v100 = v11;
  v101 = v10;
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x68706172476F7375, 0xED00003172656954);
  v17(v105, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v104, 0x68706172476F7375, 0xED00003172656954);
  v20 = *(v103 + 48);
  v103 += 48;
  v98 = v20;
  if (!v20(v21, 1, v9))
  {
    sub_266ECB128(&unk_28788C5C0);
    sub_26738115C();
  }

  (v19)(v104, 0);
  v18(v105, 0);
  sub_266ECB294(0, &qword_2800F79C0, 0x277D59CF8);
  sub_266ECAF2C(&qword_2800F79C8, &qword_2800F79C0, 0x277D59CF8);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x80000002674780A0);
  v22(v105, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v104, 0xD000000000000020, 0x80000002674780A0);
  v25 = v98;
  if (!v98(v26, 1, v9))
  {
    sub_266ECB128(&unk_28788C5E8);
    sub_26738115C();
  }

  (v24)(v104, 0);
  v23(v105, 0);
  sub_266ECB294(0, &qword_2800F79D0, 0x277D59C68);
  sub_266ECAF2C(&qword_2800F79D8, &qword_2800F79D0, 0x277D59C68);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x80000002674780D0);
  v27(v105, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v104, 0xD00000000000001BLL, 0x80000002674780D0);
  if (!v25(v30, 1, v9))
  {
    sub_266ECB128(&unk_28788C610);
    sub_26738115C();
  }

  (v29)(v104, 0);
  v28(v105, 0);
  sub_266ECB294(0, &qword_2800F79E0, 0x277D59CB8);
  sub_266ECAF2C(&qword_2800F79E8, &qword_2800F79E0, 0x277D59CB8);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674780F0);
  v31(v105, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v104, 0xD00000000000001ALL, 0x80000002674780F0);
  if (!v25(v34, 1, v9))
  {
    sub_266ECB128(&unk_28788C638);
    sub_26738115C();
  }

  (v33)(v104, 0);
  v32(v105, 0);
  sub_266ECB294(0, &qword_2800F79F0, 0x277D59D60);
  sub_266ECAF2C(&qword_2800F79F8, &qword_2800F79F0, 0x277D59D60);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267478110);
  v35(v105, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v104, 0xD00000000000001ALL, 0x8000000267478110);
  if (!v25(v38, 1, v9))
  {
    sub_266ECB128(&unk_28788C660);
    sub_26738115C();
  }

  (v37)(v104, 0);
  v36(v105, 0);
  sub_266ECB294(0, &qword_2800F7A00, 0x277D59E10);
  sub_266ECAF2C(&qword_2800F7A08, &qword_2800F7A00, 0x277D59E10);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267478130);
  v39(v105, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v104, 0xD000000000000018, 0x8000000267478130);
  if (!v25(v42, 1, v9))
  {
    sub_266ECB128(&unk_28788C688);
    sub_26738115C();
  }

  (v41)(v104, 0);
  v40(v105, 0);
  sub_266ECB294(0, &qword_2800F7A10, 0x277D59D78);
  sub_266ECAF2C(&qword_2800F7A18, &qword_2800F7A10, 0x277D59D78);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267478150);
  v43(v105, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v104, 0xD000000000000018, 0x8000000267478150);
  if (!v25(v46, 1, v9))
  {
    sub_266ECB128(&unk_28788C6B0);
    sub_26738115C();
  }

  (v45)(v104, 0);
  v44(v105, 0);
  sub_266ECB294(0, &qword_2800F7A20, 0x277D59D80);
  sub_266ECAF2C(&qword_2800F7A28, &qword_2800F7A20, 0x277D59D80);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x8000000267478170);
  v47(v105, 0);
  v48 = sub_2673811AC();
  v49 = sub_266ECB6CC(v104, 0xD00000000000001CLL, 0x8000000267478170);
  if (!v25(v50, 1, v9))
  {
    sub_266ECB128(&unk_28788C6D8);
    sub_26738115C();
  }

  (v49)(v104, 0);
  v48(v105, 0);
  sub_266ECB294(0, &qword_2800F7A30, 0x277D59CC0);
  sub_266ECAF2C(&qword_2800F7A38, &qword_2800F7A30, 0x277D59CC0);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x8000000267478190);
  v51(v105, 0);
  v52 = sub_2673811AC();
  v53 = sub_266ECB6CC(v104, 0xD000000000000022, 0x8000000267478190);
  if (!v25(v54, 1, v9))
  {
    sub_266ECB128(&unk_28788C700);
    sub_26738115C();
  }

  (v53)(v104, 0);
  v52(v105, 0);
  sub_266ECB294(0, &qword_2800F7A40, 0x277D59CD0);
  sub_266ECAF2C(&qword_2800F7A48, &qword_2800F7A40, 0x277D59CD0);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674781C0);
  v55(v105, 0);
  v56 = sub_2673811AC();
  v57 = sub_266ECB6CC(v104, 0xD000000000000018, 0x80000002674781C0);
  if (!v25(v58, 1, v9))
  {
    sub_266ECB128(&unk_28788C728);
    sub_26738115C();
  }

  (v57)(v104, 0);
  v56(v105, 0);
  sub_266ECB294(0, &qword_2800F7A50, 0x277D59CB0);
  sub_266ECAF2C(&qword_2800F7A58, &qword_2800F7A50, 0x277D59CB0);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, 0x80000002674781E0);
  v59(v105, 0);
  v60 = sub_2673811AC();
  v61 = sub_266ECB6CC(v104, 0xD000000000000027, 0x80000002674781E0);
  if (!v25(v62, 1, v9))
  {
    sub_266ECB128(&unk_28788C750);
    sub_26738115C();
  }

  (v61)(v104, 0);
  v60(v105, 0);
  sub_266ECB294(0, &qword_2800F7A60, 0x277D59D30);
  sub_266ECAF2C(&qword_2800F7A68, &qword_2800F7A60, 0x277D59D30);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v63 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267478210);
  v63(v105, 0);
  v64 = sub_2673811AC();
  v65 = sub_266ECB6CC(v104, 0xD000000000000019, 0x8000000267478210);
  if (!v25(v66, 1, v9))
  {
    sub_266ECB128(&unk_28788C778);
    sub_26738115C();
  }

  (v65)(v104, 0);
  v64(v105, 0);
  sub_266ECB294(0, &qword_2800F7A70, 0x277D59D20);
  sub_266ECAF2C(&qword_2800F7A78, &qword_2800F7A70, 0x277D59D20);
  sub_26738121C();
  v100(v8, 0, 1, v9);
  v67 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x8000000267478230);
  v67(v105, 0);
  v68 = sub_2673811AC();
  v69 = sub_266ECB6CC(v104, 0xD00000000000001ELL, 0x8000000267478230);
  if (!v25(v70, 1, v9))
  {
    sub_266ECB128(&unk_28788C7A8);
    sub_26738115C();
  }

  (v69)(v104, 0);
  v68(v105, 0);
  sub_266ECB294(0, &qword_2800F7A80, 0x277D59DA0);
  sub_266ECAF2C(&qword_2800F7A88, &qword_2800F7A80, 0x277D59DA0);
  sub_26738121C();
  v99 = v9;
  v71 = v100;
  v100(v8, 0, 1, v9);
  v72 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267478250);
  v72(v105, 0);
  sub_266ECB294(0, &qword_2800F7A90, 0x277D59D98);
  sub_266ECAF2C(&qword_2800F7A98, &qword_2800F7A90, 0x277D59D98);
  sub_26738121C();
  v71(v8, 0, 1, v99);
  v73 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267478270);
  v73(v105, 0);
  sub_266ECB294(0, &qword_2800F7AA0, 0x277D59DA8);
  sub_266ECAF2C(&qword_2800F7AA8, &qword_2800F7AA0, 0x277D59DA8);
  sub_26738121C();
  v71(v8, 0, 1, v99);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, 0x8000000267478290);
  v74(v105, 0);
  sub_266ECB294(0, &qword_2800F7AB0, 0x277D59DB0);
  sub_266ECAF2C(&qword_2800F7AB8, &qword_2800F7AB0, 0x277D59DB0);
  sub_26738121C();
  v71(v8, 0, 1, v99);
  v75 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x80000002674782C0);
  v75(v105, 0);
  sub_266ECB294(0, &qword_2800F7AC0, 0x277D59DD8);
  sub_266ECAF2C(&qword_2800F7AC8, &qword_2800F7AC0, 0x277D59DD8);
  sub_26738121C();
  v71(v8, 0, 1, v99);
  v76 = v99;
  v77 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x80000002674782F0);
  v77(v105, 0);
  v78 = sub_2673811AC();
  v79 = sub_266ECB6CC(v104, 0xD000000000000013, 0x80000002674782F0);
  if (!v98(v80, 1, v76))
  {
    sub_266ECB128(&unk_28788C7D8);
    sub_26738115C();
  }

  (v79)(v104, 0);
  v78(v105, 0);
  sub_266ECB294(0, &qword_2800F7AD0, 0x277D59DF0);
  sub_266ECAF2C(&qword_2800F7AD8, &qword_2800F7AD0, 0x277D59DF0);
  sub_26738121C();
  v100(v8, 0, 1, v76);
  v81 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267478310);
  v81(v105, 0);
  v82 = sub_2673811AC();
  v83 = sub_266ECB6CC(v104, 0xD000000000000019, 0x8000000267478310);
  if (!v98(v84, 1, v76))
  {
    sub_266ECB128(&unk_28788C800);
    sub_26738115C();
  }

  (v83)(v104, 0);
  v82(v105, 0);
  v85 = v95;
  sub_26738117C();
  v86 = sub_2673811BC();
  v88 = v87;
  v89 = *v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v88 = v89;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v89 = sub_266ECAD54(0, v89[2] + 1, 1, v89);
    *v88 = v89;
  }

  v92 = v89[2];
  v91 = v89[3];
  if (v92 >= v91 >> 1)
  {
    v89 = sub_266ECAD54(v91 > 1, v92 + 1, 1, v89);
    *v88 = v89;
  }

  v89[2] = v92 + 1;
  (*(v96 + 32))(v89 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v92, v85, v97);
  v86(v105, 0);
  sub_266ECB128(&unk_28788C828);
  return sub_2673811CC();
}

uint64_t sub_2671F0324(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671F03BC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2671F0488(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F04EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671F054C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F7AE0, &qword_2800F1F00, 0x277D59C50);
  a1[2] = sub_266ECAF2C(&qword_2800F7AE8, &qword_2800F1F00, 0x277D59C50);
  result = sub_266ECAF2C(&qword_2800F7AF0, &qword_2800F1F00, 0x277D59C50);
  a1[3] = result;
  return result;
}

uint64_t static PLUSSchemaPLUSClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x644973756C70, 0xE600000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x644973756C70, 0xE600000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788C860);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2671F08E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F0948(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSContactGroundTruth.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v19 = *(v2 - 8);
  v20 = v2;
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v18[1] = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x7254646E756F7267, 0xED00006449687475);
  v12(v21, 0);
  type metadata accessor for PLUSSchemaPLUSContactGroundTruthSource(0);
  sub_2671F1044(&qword_2800F7AF8, type metadata accessor for PLUSSchemaPLUSContactGroundTruthSource);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674783A0);
  v13(v21, 0);
  (*(v19 + 104))(v5, *MEMORY[0x277D3E4E8], v20);
  v21[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x80000002674783C0);
  v14(v21, 0);
  type metadata accessor for PLUSSchemaPLUSContactReferenceComparison(0);
  sub_2671F1044(&qword_2800F7B00, type metadata accessor for PLUSSchemaPLUSContactReferenceComparison);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, 0x80000002674783E0);
  v15(v21, 0);
  type metadata accessor for PLUSSchemaPLUSInferredSuggestionState(0);
  sub_2671F1044(&qword_2800F7B08, type metadata accessor for PLUSSchemaPLUSInferredSuggestionState);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267478410);
  return v16(v21, 0);
}

uint64_t sub_2671F0F80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F0FE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671F1044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PLUSSchemaPLUSContactGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xEE00644973756C50);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F7B18, 0x277D59C60);
  sub_266ECAF2C(&qword_2800F7B10, &qword_2800F7B18, 0x277D59C60);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254646E756F7267, 0xEB00000000687475);
  return v7(v9, 0);
}

uint64_t sub_2671F13AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F1410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSContactGroundTruthSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674784B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v100;

  v1(v116, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x80000002674784E0, v11);
  v12 = *v9;
  *v9 = v101;

  v7(v116, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x8000000267478520, v17);
  v18 = *v15;
  *v15 = v102;

  v13(v116, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x8000000267478560, v23);
  v24 = *v21;
  *v21 = v103;

  v19(v116, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000040, 0x80000002674785A0, v29);
  v30 = *v27;
  *v27 = v104;

  v25(v116, 0);
  v31 = sub_266ECB128(&unk_28788C890);
  v33 = v32;
  v34 = sub_2673810FC();
  v36 = v35;
  v37 = *v35;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v36;
  *v36 = 0x8000000000000000;
  sub_266ECD4CC(v31, v33, 4, v38);
  *v36 = v105;
  v34(v116, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = *v40;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x80000002674785F0, v43);
  v44 = *v41;
  *v41 = v106;

  v39(v116, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = *v46;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003DLL, 0x8000000267478630, v49);
  v50 = *v47;
  *v47 = v107;

  v45(v116, 0);
  v51 = sub_26738111C();
  v53 = v52;
  v54 = *v52;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v53;
  *v53 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000041, 0x8000000267478670, v55);
  v56 = *v53;
  *v53 = v108;

  v51(v116, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = *v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003BLL, 0x80000002674786C0, v61);
  v62 = *v59;
  *v59 = v109;

  v57(v116, 0);
  v63 = sub_26738111C();
  v65 = v64;
  v66 = *v64;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v65;
  *v65 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000003FLL, 0x8000000267478700, v67);
  v68 = *v65;
  *v65 = v110;

  v63(v116, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = *v70;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000032, 0x8000000267478740, v73);
  v74 = *v71;
  *v71 = v111;

  v69(v116, 0);
  v75 = sub_26738111C();
  v77 = v76;
  v78 = *v76;
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v77;
  *v77 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x8000000267478780, v79);
  v80 = *v77;
  *v77 = v112;

  v75(v116, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = *v82;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000045, 0x80000002674787C0, v85);
  v86 = *v83;
  *v83 = v113;

  v81(v116, 0);
  v87 = sub_26738111C();
  v89 = v88;
  v90 = *v88;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v89;
  *v89 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000042, 0x8000000267478810, v91);
  v92 = *v89;
  *v89 = v114;

  v87(v116, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = *v94;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000043, 0x8000000267478860, v97);
  v98 = *v95;
  *v95 = v115;

  return v93(v116, 0);
}

uint64_t sub_2671F1C90(uint64_t a1)
{
  v2 = sub_2671F1D94(&qword_2800F7B20);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F1CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F1D94(&qword_2800F7B20);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F1D94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSContactGroundTruthSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactGroundTruthSourceSummary.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for PLUSSchemaPLUSContactGroundTruthSource(0);
  sub_2671F2204(&qword_2800F7AF8, type metadata accessor for PLUSSchemaPLUSContactGroundTruthSource);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x656372756F73, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E540], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E756F63, 0xE500000000000000);
  return v11(v15, 0);
}

uint64_t sub_2671F20F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F215C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671F2204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671F224C()
{
  result = qword_2800F7B30;
  if (!qword_2800F7B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7B30);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactNameStringSimilarity.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x8000000267478930, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267478960, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267478990, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674789C0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x80000002674789F0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671F258C(uint64_t a1)
{
  v2 = sub_2671F2690(&qword_2800F7B40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F25F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F2690(&qword_2800F7B40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F2690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSContactNameStringSimilarity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactReferenceComparison.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267478A60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x8000000267478A90, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267478AC0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x8000000267478AF0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x8000000267478B20, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000039, 0x8000000267478B60, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2671F2A38(uint64_t a1)
{
  v2 = sub_2671F2B3C(&qword_2800F7B48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F2AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F2B3C(&qword_2800F7B48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F2B3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSContactReferenceComparison(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggesterQueryContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7B50, 0x277D59C90);
  sub_266ECAF2C(&qword_2800F7B58, &qword_2800F7B50, 0x277D59C90);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F7B60, 0x277D59C88);
  sub_266ECAF2C(&qword_2800F7B68, &qword_2800F7B60, 0x277D59C88);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F7B70, 0x277D59C80);
  sub_266ECAF2C(&qword_2800F7B78, &qword_2800F7B70, 0x277D59C80);
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

uint64_t sub_2671F3098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F30FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSContactSuggesterQueryErrorReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x8000000267478C20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x8000000267478C50, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000046, 0x8000000267478CA0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000038, 0x8000000267478CF0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671F3424(uint64_t a1)
{
  v2 = sub_2671F3528(&qword_2800F7B88);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F348C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F3528(&qword_2800F7B88);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F3528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSContactSuggesterQueryErrorReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggesterQueryFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSContactSuggesterQueryErrorReason(0);
  sub_2671F39B8(&qword_2800F7B80, type metadata accessor for PLUSSchemaPLUSContactSuggesterQueryErrorReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671F3728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSContactSuggesterQueryErrorReason(0);
  sub_2671F39B8(&qword_2800F7B80, type metadata accessor for PLUSSchemaPLUSContactSuggesterQueryErrorReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671F38AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F3910(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671F39B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671F3A00()
{
  result = qword_2800F7B70;
  if (!qword_2800F7B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7B70);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggesterQueryResponseReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7B90, 0x277D59CA8);
  sub_266ECAF2C(&qword_2800F7B98, &qword_2800F7B90, 0x277D59CA8);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x73746C75736572, 0xE700000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267478DC0);
  return v11(v15, 0);
}

uint64_t sub_2671F3D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F3DE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSContactSuggesterQueryStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F737265506F7375, 0xEE0079726575516ELL);
  v6(v9, 0);
  type metadata accessor for PLUSSchemaPLUSInferenceContactDomain(0);
  sub_2671F41DC();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E69616D6F64, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_2671F4118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F417C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671F41DC()
{
  result = qword_2800F7BA0;
  if (!qword_2800F7BA0)
  {
    type metadata accessor for PLUSSchemaPLUSInferenceContactDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7BA0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggesterRequestMetadataReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "interactionContext";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267478E70);
  return v16(v21, 0);
}

uint64_t sub_2671F45AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F4610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671F4674()
{
  result = qword_2800F7998;
  if (!qword_2800F7998)
  {
    sub_2671F46CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7998);
  }

  return result;
}

unint64_t sub_2671F46CC()
{
  result = qword_2800F7990;
  if (!qword_2800F7990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7990);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v20[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x6974736567677573, 0xEC00000064496E6FLL);
  v13(v23, 0);
  v20[0] = "gestionMetadataReported";
  v14 = *MEMORY[0x277D3E4E8];
  v15 = v21;
  v16 = *(v22 + 104);
  v22 += 104;
  v16(v6, v14, v21);
  v23[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v20[0] | 0x8000000000000000);
  v17(v23, 0);
  v16(v6, v14, v15);
  v23[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x8000000267478F00);
  return v18(v23, 0);
}

uint64_t sub_2671F4B30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F4B94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSContactSuggestion.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v17[1] = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974736567677573, 0xEC00000064496E6FLL);
  v12(v20, 0);
  type metadata accessor for PLUSSchemaPLUSContactSuggestionSource(0);
  sub_2671F518C();
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x656372756F73, 0xE600000000000000);
  v13(v20, 0);
  (*(v18 + 104))(v5, *MEMORY[0x277D3E518], v19);
  v20[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656469666E6F63, 0xEA00000000006563);
  v14(v20, 0);
  sub_266ECB294(0, &qword_2800F7B30, 0x277D59C70);
  sub_266ECAF2C(&qword_2800F7B28, &qword_2800F7B30, 0x277D59C70);
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267478F60);
  return v15(v20, 0);
}

uint64_t sub_2671F50C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F512C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671F518C()
{
  result = qword_2800F7BA8;
  if (!qword_2800F7BA8)
  {
    type metadata accessor for PLUSSchemaPLUSContactSuggestionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7BA8);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggestionAccuracySignalReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xEE00644973756C50);
  v6(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974736567677573, 0xEC00000064496E6FLL);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F7BB0, 0x277D59DC0);
  sub_266ECAF2C(&qword_2800F7BB8, &qword_2800F7BB0, 0x277D59DC0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7963617275636361, 0xEE006C616E676953);
  return v8(v10, 0);
}

uint64_t sub_2671F5594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F55F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSContactSuggestionGenerated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7B90, 0x277D59CA8);
  sub_266ECAF2C(&qword_2800F7B98, &qword_2800F7B90, 0x277D59CA8);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267479010);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267479030);
  return v11(v15, 0);
}

uint64_t sub_2671F59D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F5A3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSContactSuggestionHeartbeatReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7BC0, 0x277D59CD8);
  sub_266ECAF2C(&qword_2800F7BC8, &qword_2800F7BC0, 0x277D59CD8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267479090);
  return v5(v7, 0);
}

uint64_t sub_2671F5CD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F5D3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSContactSuggestionOutcome.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674790F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v102;

  v1(v118, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x8000000267479120, v11);
  v12 = *v9;
  *v9 = v103;

  v7(v118, 0);
  v13 = sub_266ECB128(&unk_28788C8B8);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = *v17;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 1, v20);
  *v18 = v104;
  v16(v118, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = *v22;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x8000000267479150, v25);
  v26 = *v23;
  *v23 = v105;

  v21(v118, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = *v28;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003BLL, 0x8000000267479190, v31);
  v32 = *v29;
  *v29 = v106;

  v27(v118, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = *v34;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000032, 0x80000002674791D0, v37);
  v38 = *v35;
  *v35 = v107;

  v33(v118, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = *v40;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000036, 0x8000000267479210, v43);
  v44 = *v41;
  *v41 = v108;

  v39(v118, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = *v46;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003ALL, 0x8000000267479250, v49);
  v50 = *v47;
  *v47 = v109;

  v45(v118, 0);
  v51 = sub_26738111C();
  v53 = v52;
  v54 = *v52;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v53;
  *v53 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000003CLL, 0x8000000267479290, v55);
  v56 = *v53;
  *v53 = v110;

  v51(v118, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = *v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000037, 0x80000002674792D0, v61);
  v62 = *v59;
  *v59 = v111;

  v57(v118, 0);
  v63 = sub_26738111C();
  v65 = v64;
  v66 = *v64;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v65;
  *v65 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000031, 0x8000000267479310, v67);
  v68 = *v65;
  *v65 = v112;

  v63(v118, 0);
  v69 = sub_266ECB128(&unk_28788C8E0);
  v71 = v70;
  v72 = sub_2673810FC();
  v74 = v73;
  v75 = *v73;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v74;
  *v74 = 0x8000000000000000;
  sub_266ECD4CC(v69, v71, 9, v76);
  *v74 = v113;
  v72(v118, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = *v78;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000034, 0x8000000267479350, v81);
  v82 = *v79;
  *v79 = v114;

  v77(v118, 0);
  v83 = sub_26738111C();
  v85 = v84;
  v86 = *v84;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v85;
  *v85 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000035, 0x8000000267479390, v87);
  v88 = *v85;
  *v85 = v115;

  v83(v118, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = *v90;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000034, 0x80000002674793D0, v93);
  v94 = *v91;
  *v91 = v116;

  v89(v118, 0);
  v95 = sub_26738111C();
  v97 = v96;
  v98 = *v96;
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v97;
  *v97 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000003BLL, 0x8000000267479410, v99);
  v100 = *v97;
  *v97 = v117;

  return v95(v118, 0);
}

uint64_t sub_2671F65B0(uint64_t a1)
{
  v2 = sub_2671F66B4(&qword_2800F7BD8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F6618(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F66B4(&qword_2800F7BD8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F66B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSContactSuggestionOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggestionOutcomeReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974736567677573, 0xEC00000064496E6FLL);
  v6(v10, 0);
  type metadata accessor for PLUSSchemaPLUSContactSuggestionOutcome(0);
  sub_2671F6B40(&qword_2800F7BD0, type metadata accessor for PLUSSchemaPLUSContactSuggestionOutcome);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267479490);
  v7(v10, 0);
  type metadata accessor for PLUSSchemaPLUSContactSuggestionRedundancyState(0);
  sub_2671F6B40(&qword_2800F7BE0, type metadata accessor for PLUSSchemaPLUSContactSuggestionRedundancyState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000020, 0x80000002674794B0);
  return v8(v10, 0);
}

uint64_t sub_2671F6A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F6AE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671F6B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PLUSSchemaPLUSContactSuggestionRedundancyState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x8000000267479520, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x8000000267479550, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x8000000267479590, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671F6DE0(uint64_t a1)
{
  v2 = sub_2671F6EE4(&qword_2800F7BE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F6E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F6EE4(&qword_2800F7BE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F6EE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSContactSuggestionRedundancyState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggestionRemovalReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x8000000267479600, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x8000000267479630, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x8000000267479670, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000031, 0x80000002674796B0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000033, 0x80000002674796F0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x8000000267479730, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003ELL, 0x8000000267479770, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2671F7304(uint64_t a1)
{
  v2 = sub_2671F7408(&qword_2800F7BF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F736C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F7408(&qword_2800F7BF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F7408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSContactSuggestionRemovalReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggestionRemoved.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7B90, 0x277D59CA8);
  sub_266ECAF2C(&qword_2800F7B98, &qword_2800F7B90, 0x277D59CA8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674797F0);
  v6(v10, 0);
  type metadata accessor for PLUSSchemaPLUSContactSuggestionRemovalReason(0);
  sub_2671F7868();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F7BC0, 0x277D59CD8);
  sub_266ECAF2C(&qword_2800F7BC8, &qword_2800F7BC0, 0x277D59CD8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D75536567617375, 0xEC0000007972616DLL);
  return v8(v10, 0);
}

uint64_t sub_2671F77A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F7808(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671F7868()
{
  result = qword_2800F7BF0;
  if (!qword_2800F7BF0)
  {
    type metadata accessor for PLUSSchemaPLUSContactSuggestionRemovalReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7BF0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggestionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267479850, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003BLL, 0x8000000267479880, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2671F7AA8(uint64_t a1)
{
  v2 = sub_2671F7BAC(&qword_2800F7C00);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F7B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F7BAC(&qword_2800F7C00);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F7BAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSContactSuggestionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSContactSuggestionUsageSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = sub_26738113C();
  v61 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12 = a2;
  sub_26738119C();
  v53 = "tactSuggestionUsageSummary";
  v13 = *MEMORY[0x277D3E540];
  v60 = *(v4 + 104);
  LODWORD(v52) = v13;
  v60(v7, v13, v3);
  v62[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v59 = *(v15 + 56);
  v16 = v15 + 56;
  v59(v11, 0, 1, v14);
  v58 = v12;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000025, v53 | 0x8000000000000000);
  v17(v62, 0);
  v53 = "tionTimeSince1970InMs";
  v51 = v7;
  v18 = v7;
  v20 = v60;
  v19 = v61;
  v60(v18, v13, v61);
  v62[0] = 1;
  sub_26738114C();
  v55 = v14;
  v56 = v16;
  v21 = v59;
  v59(v11, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v53 | 0x8000000000000000);
  v22(v62, 0);
  v23 = v51;
  v24 = v19;
  v25 = v20;
  v20(v51, v52, v24);
  v57 = v4 + 104;
  v62[0] = 1;
  sub_26738114C();
  v21(v11, 0, 1, v14);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, 0x8000000267479950);
  v26(v62, 0);
  v27 = *MEMORY[0x277D3E538];
  v28 = v61;
  v25(v23, v27, v61);
  v62[0] = 1;
  v29 = v23;
  sub_26738114C();
  v30 = v55;
  v21(v11, 0, 1, v55);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0x6974617669746361, 0xEF746E756F436E6FLL);
  v31(v62, 0);
  v52 = "enActivationsInMs";
  v32 = v29;
  v33 = v29;
  v34 = v60;
  v60(v33, v27, v28);
  v62[0] = 1;
  sub_26738114C();
  v21(v11, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v52 | 0x8000000000000000);
  v35(v62, 0);
  v52 = "presentationCount";
  v36 = v32;
  v37 = v32;
  v38 = v27;
  LODWORD(v53) = v27;
  v39 = v61;
  v34(v37, v27, v61);
  v62[0] = 1;
  sub_26738114C();
  v40 = v55;
  v41 = v59;
  v59(v11, 0, 1, v55);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v52 | 0x8000000000000000);
  v42(v62, 0);
  v52 = "confirmationSelectedCount";
  v43 = v38;
  v44 = v60;
  v60(v36, v43, v39);
  v62[0] = 1;
  sub_26738114C();
  v41(v11, 0, 1, v40);
  v45 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v52 | 0x8000000000000000);
  v45(v62, 0);
  v44(v36, v53, v61);
  v62[0] = 1;
  sub_26738114C();
  v46 = v59;
  v59(v11, 0, 1, v40);
  v47 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674799E0);
  v47(v62, 0);
  type metadata accessor for PLUSSchemaPLUSInferenceContactDomain(0);
  sub_2671F85F0(&qword_2800F7BA0, type metadata accessor for PLUSSchemaPLUSInferenceContactDomain);
  sub_26738120C();
  v46(v11, 0, 1, v40);
  v48 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E69616D6F64, 0xE600000000000000);
  return v48(v62, 0);
}

uint64_t sub_2671F84E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F8548(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671F85F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671F8638()
{
  result = qword_2800F7BC0;
  if (!qword_2800F7BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7BC0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSDomainConfiguredState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7C08, 0x277D59D10);
  sub_266ECAF2C(&qword_2800F7C10, &qword_2800F7C08, 0x277D59D10);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x617453616964656DLL, 0xEA00000000006574);
  v10(v19, 0);
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
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v4, v0);
  return v11(v19, 0);
}

uint64_t sub_2671F89F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F8A5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSInferenceContactDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267479A80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267479AB0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267479AD0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267479B00, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x8000000267479B30, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671F8DF8(uint64_t a1)
{
  v2 = sub_2671F8EFC(&qword_2800F7C28);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F8E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F8EFC(&qword_2800F7C28);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F8EFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSInferenceContactDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSInferencePluginCompleted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v40 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v34 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v11 = a1;
  sub_26738119C();
  v37 = "erencePluginCompleted";
  v13 = *(v3 + 104);
  v41 = *MEMORY[0x277D3E538];
  v12 = v41;
  v13(v6, v41, v2);
  v38 = v13;
  v42[0] = 1;
  sub_26738114C();
  v39 = sub_26738116C();
  v14 = *(v39 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v39);
  v36 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v37 | 0x8000000000000000);
  v17(v42, 0);
  v37 = "numberOfConversationsReviewed";
  v18 = v12;
  v19 = v40;
  v13(v6, v18, v40);
  v34[1] = v3 + 104;
  v42[0] = 1;
  sub_26738114C();
  v20 = v39;
  v15(v10, 0, 1, v39);
  v34[2] = v11;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v37 | 0x8000000000000000);
  v21(v42, 0);
  v37 = "numberOfGroundTruthsGenerated";
  v22 = v41;
  v23 = v19;
  v24 = v38;
  v38(v6, v41, v23);
  v42[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, v37 | 0x8000000000000000);
  v25(v42, 0);
  v37 = "uggestionsGenerated";
  v26 = v40;
  v24(v6, v22, v40);
  v42[0] = 1;
  sub_26738114C();
  v27 = v39;
  v35 = v15;
  v15(v10, 0, 1, v39);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v37 | 0x8000000000000000);
  v28(v42, 0);
  v37 = "uggestionsUpdated";
  v29 = v26;
  v30 = v38;
  v38(v6, v41, v29);
  v42[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v37 | 0x8000000000000000);
  v31(v42, 0);
  v30(v6, v41, v40);
  v42[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267479C70);
  return v32(v42, 0);
}

uint64_t sub_2671F95BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F9620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671F9684()
{
  result = qword_2800F7C30;
  if (!qword_2800F7C30)
  {
    sub_2671F96DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7C30);
  }

  return result;
}

unint64_t sub_2671F96DC()
{
  result = qword_2800F7C38;
  if (!qword_2800F7C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7C38);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSInferencePluginErrorReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267479CD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003FLL, 0x8000000267479D00, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003CLL, 0x8000000267479D40, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003DLL, 0x8000000267479D80, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003ALL, 0x8000000267479DC0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003BLL, 0x8000000267479E00, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000032, 0x8000000267479E40, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2671F9B00(uint64_t a1)
{
  v2 = sub_2671F9C04(&qword_2800F7C48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671F9B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671F9C04(&qword_2800F7C48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671F9C04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSInferencePluginErrorReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSInferencePluginFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSInferencePluginErrorReason(0);
  sub_2671FA094(&qword_2800F7C40, type metadata accessor for PLUSSchemaPLUSInferencePluginErrorReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671F9E04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSInferencePluginErrorReason(0);
  sub_2671FA094(&qword_2800F7C40, type metadata accessor for PLUSSchemaPLUSInferencePluginErrorReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671F9F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671F9FEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671FA094(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671FA0DC()
{
  result = qword_2800F7C58;
  if (!qword_2800F7C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7C58);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSInferencePluginInvocationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7C60, 0x277D59D00);
  sub_266ECAF2C(&qword_2800F7C68, &qword_2800F7C60, 0x277D59D00);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F7C38, 0x277D59CE8);
  sub_266ECAF2C(&qword_2800F7C30, &qword_2800F7C38, 0x277D59CE8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F7C58, 0x277D59CF0);
  sub_266ECAF2C(&qword_2800F7C50, &qword_2800F7C58, 0x277D59CF0);
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

uint64_t sub_2671FA640(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FA6A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSInferencePluginStartedOrChanged.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSInferencePluginTriggerReason(0);
  sub_2671FABB4(&qword_2800F7C70, type metadata accessor for PLUSSchemaPLUSInferencePluginTriggerReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5272656767697274, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_2671FA914()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSInferencePluginTriggerReason(0);
  sub_2671FABB4(&qword_2800F7C70, type metadata accessor for PLUSSchemaPLUSInferencePluginTriggerReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5272656767697274, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_2671FAAA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FAB0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671FABB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671FABFC()
{
  result = qword_2800F7C60;
  if (!qword_2800F7C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7C60);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSInferencePluginTriggerReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x8000000267479F80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x8000000267479FB0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x8000000267479FF0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671FAE5C(uint64_t a1)
{
  v2 = sub_2671FAF60(&qword_2800F7C78);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671FAEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671FAF60(&qword_2800F7C78);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671FAF60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSInferencePluginTriggerReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSInferredSuggestionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026747A060, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026747A090, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x800000026747A0C0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x800000026747A100, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671FB228(uint64_t a1)
{
  v2 = sub_2671FB32C(&qword_2800F7C80);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671FB290(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671FB32C(&qword_2800F7C80);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671FB32C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSInferredSuggestionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaCandidateEntity.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v4 + 104);
  v30 = v4 + 104;
  v31 = v3;
  v28 = v13;
  v13(v7, v12, v3);
  v36[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v29 = *(v15 + 56);
  v34 = v15 + 56;
  v29(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6441797469746E65, 0xEC00000064496D61);
  v16(v36, 0);
  v33 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v35, 0x6441797469746E65, 0xEC00000064496D61);
  if (!(*(v15 + 48))(v19, 1, v14))
  {
    sub_266ECB128(&unk_28788C908);
    sub_26738115C();
  }

  (v18)(v35, 0);
  v17(v36, 0);
  v20 = v31;
  v21 = v28;
  v28(v7, *MEMORY[0x277D3E4E8], v31);
  v36[0] = 1;
  sub_26738114C();
  v22 = v29;
  v29(v11, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x6574616E696D6F6ELL, 0xE900000000000064);
  v23(v36, 0);
  v21(v7, *MEMORY[0x277D3E518], v20);
  v36[0] = 1;
  sub_26738114C();
  v22(v11, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E656469666E6F63, 0xEA00000000006563);
  v24(v36, 0);
  sub_266ECB294(0, &qword_2800F7C88, 0x277D59D18);
  sub_266ECAF2C(&qword_2800F7C90, &qword_2800F7C88, 0x277D59D18);
  sub_26738122C();
  v22(v11, 0, 1, v14);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026747A180);
  return v25(v36, 0);
}

uint64_t sub_2671FB900(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FB964(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSMediaConfiguredState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6F4C776F64616873, 0xED0000676E696767);
  return v10(v12, 0);
}

uint64_t sub_2671FBC60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FBCC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671FBD28()
{
  result = qword_2800F7C10;
  if (!qword_2800F7C10)
  {
    sub_2671FBD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7C10);
  }

  return result;
}

unint64_t sub_2671FBD80()
{
  result = qword_2800F7C08;
  if (!qword_2800F7C08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7C08);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaContributingGroundTruth.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSMediaGroundTruthSource(0);
  sub_2671FC180(&qword_2800F7CA8, type metadata accessor for PLUSSchemaPLUSMediaGroundTruthSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  v6(v9, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalType(0);
  sub_2671FC180(&qword_2800F7CB0, type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026747A220);
  return v7(v9, 0);
}

uint64_t sub_2671FC074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FC0D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671FC180(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671FC1C8()
{
  result = qword_2800F7C88;
  if (!qword_2800F7C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7C88);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaEvaluationSummaryReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20[2] = a1;
  v21 = sub_26738113C();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674263B0);
  v13(v22, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v21);
  v22[0] = 1;
  sub_26738114C();
  v20[1] = v12;
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674206D0);
  v14(v22, 0);
  type metadata accessor for PLUSSchemaPLUSMediaPlayMediaUserFeedback(0);
  sub_2671FC938();
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026747A280);
  v15(v22, 0);
  sub_266ECB294(0, &qword_2800F7CC0, 0x277D59D48);
  sub_266ECAF2C(&qword_2800F7CC8, &qword_2800F7CC0, 0x277D59D48);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026747A2A0);
  v16(v22, 0);
  sub_266ECB294(0, &qword_2800F7CD0, 0x277D59D38);
  sub_266ECAF2C(&qword_2800F7CD8, &qword_2800F7CD0, 0x277D59D38);
  sub_26738122C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026747A2C0);
  v17(v22, 0);
  sub_266ECB294(0, &qword_2800F7C08, 0x277D59D10);
  sub_266ECAF2C(&qword_2800F7C10, &qword_2800F7C08, 0x277D59D10);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x72756769666E6F63, 0xEF65746174536465);
  return v18(v22, 0);
}

uint64_t sub_2671FC874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FC8D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671FC938()
{
  result = qword_2800F7CB8;
  if (!qword_2800F7CB8)
  {
    type metadata accessor for PLUSSchemaPLUSMediaPlayMediaUserFeedback(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7CB8);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaGroundTruth.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_26738113C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v33 = *(v11 - 8);
  v12 = v33 + 56;
  v13 = *(v33 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x7254646E756F7267, 0xED00006449687475);
  v14(v42, 0);
  type metadata accessor for PLUSSchemaPLUSMediaGroundTruthSource(0);
  sub_2671FD220(&qword_2800F7CA8, type metadata accessor for PLUSSchemaPLUSMediaGroundTruthSource);
  v36 = a1;
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674783A0);
  v15(v42, 0);
  v16 = *MEMORY[0x277D3E530];
  v17 = *(v4 + 104);
  v18 = v34;
  v35 = v4 + 104;
  v17();
  v42[0] = 1;
  sub_26738114C();
  v38 = v13;
  v39 = v12;
  v13(v10, 0, 1, v11);
  v19 = v33;
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026747A310);
  v20(v42, 0);
  v40 = a2;
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v41, 0xD000000000000019, 0x800000026747A310);
  v23 = *(v19 + 48);
  if (!v23(v24, 1, v11))
  {
    sub_266ECB128(&unk_28788C930);
    sub_26738115C();
  }

  (v22)(v41, 0);
  v21(v42, 0);
  (v17)(v18, v16, v37);
  v42[0] = 1;
  sub_26738114C();
  v38(v10, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026747A330);
  v25(v42, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v41, 0xD000000000000019, 0x800000026747A330);
  if (!v23(v28, 1, v11))
  {
    sub_266ECB128(&unk_28788C958);
    sub_26738115C();
  }

  (v27)(v41, 0);
  v26(v42, 0);
  v37 = "inferredMediaEntityAdamId";
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality(0);
  sub_2671FD220(&qword_2800F7CE0, type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality);
  sub_26738120C();
  v29 = v38;
  v38(v10, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v37 | 0x8000000000000000);
  v30(v42, 0);
  sub_26738120C();
  v29(v10, 0, 1, v11);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x800000026747A370);
  return v31(v42, 0);
}

uint64_t sub_2671FD15C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FD1C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671FD220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PLUSSchemaPLUSMediaGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F7CF0, 0x277D59D28);
  sub_266ECAF2C(&qword_2800F7CE8, &qword_2800F7CF0, 0x277D59D28);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254646E756F7267, 0xEB00000000687475);
  return v7(v9, 0);
}

uint64_t sub_2671FD580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FD5E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSMediaGroundTruthSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026747A410, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026747A440, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026747A470, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026747A4A0, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026747A4D0, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000030, 0x800000026747A500, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003CLL, 0x800000026747A540, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000040, 0x800000026747A580, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000038, 0x800000026747A5D0, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002FLL, 0x800000026747A610, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_2671FDBB0(uint64_t a1)
{
  v2 = sub_2671FDCB4(&qword_2800F7CF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671FDC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671FDCB4(&qword_2800F7CF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671FDCB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSMediaGroundTruthSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaGroundTruthSummary.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v19 = v0;
  v20 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSMediaGroundTruthSource(0);
  sub_2671FE1EC(&qword_2800F7CA8, type metadata accessor for PLUSSchemaPLUSMediaGroundTruthSource);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v18 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x656372756F73, 0xE600000000000000);
  v11(v21, 0);
  v12 = *MEMORY[0x277D3E508];
  v13 = *(v20 + 104);
  v20 += 104;
  v13(v4, v12, v19);
  v21[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026747A680);
  v14(v21, 0);
  v13(v4, v12, v19);
  v21[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026747A6A0);
  return v15(v21, 0);
}

uint64_t sub_2671FE0E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FE144(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671FE1EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671FE234()
{
  result = qword_2800F7CD0;
  if (!qword_2800F7CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7CD0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaPlayMediaUserFeedback.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026747A700, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x800000026747A730, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x800000026747A760, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026747A790, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000033, 0x800000026747A7C0, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000037, 0x800000026747A800, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000035, 0x800000026747A840, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000036, 0x800000026747A880, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2671FE6DC(uint64_t a1)
{
  v2 = sub_2671FE7E0(&qword_2800F7D00);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671FE744(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671FE7E0(&qword_2800F7D00);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671FE7E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSMediaPlayMediaUserFeedback(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaSuggestion.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7D08, 0x277D59D58);
  sub_266ECAF2C(&qword_2800F7D10, &qword_2800F7D08, 0x277D59D58);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F7CD0, 0x277D59D38);
  sub_266ECAF2C(&qword_2800F7CD8, &qword_2800F7CD0, 0x277D59D38);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267478F60);
  v7(v10, 0);
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality(0);
  sub_2671FEC3C();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7974696C61636F6CLL, 0xE800000000000000);
  return v8(v10, 0);
}

uint64_t sub_2671FEB78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FEBDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671FEC3C()
{
  result = qword_2800F7CE0;
  if (!qword_2800F7CE0)
  {
    type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7CE0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaSuggestionClientTreatment.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026747A930, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v92;

  v1(v107, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x800000026747A960, v11);
  v12 = *v9;
  *v9 = v93;

  v7(v107, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ALL, 0x800000026747A9A0, v17);
  v18 = *v15;
  *v15 = v94;

  v13(v107, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000052, 0x800000026747A9E0, v23);
  v24 = *v21;
  *v21 = v95;

  v19(v107, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000035, 0x800000026747AA40, v29);
  v30 = *v27;
  *v27 = v96;

  v25(v107, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000034, 0x800000026747AA80, v35);
  v36 = *v33;
  *v33 = v97;

  v31(v107, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000035, 0x800000026747AAC0, v41);
  v42 = *v39;
  *v39 = v98;

  v37(v107, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000039, 0x800000026747AB00, v47);
  v48 = *v45;
  *v45 = v99;

  v43(v107, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003CLL, 0x800000026747AB40, v53);
  v54 = *v51;
  *v51 = v100;

  v49(v107, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000040, 0x800000026747AB80, v59);
  v60 = *v57;
  *v57 = v101;

  v55(v107, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003BLL, 0x800000026747ABD0, v65);
  v66 = *v63;
  *v63 = v102;

  v61(v107, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000038, 0x800000026747AC10, v71);
  v72 = *v69;
  *v69 = v103;

  v67(v107, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000003DLL, 0x800000026747AC50, v77);
  v78 = *v75;
  *v75 = v104;

  v73(v107, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000003CLL, 0x800000026747AC90, v83);
  v84 = *v81;
  *v81 = v105;

  v79(v107, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000030, 0x800000026747ACD0, v89);
  v90 = *v87;
  *v87 = v106;

  return v85(v107, 0);
}

uint64_t sub_2671FF430(uint64_t a1)
{
  v2 = sub_2671FF534(&qword_2800F7D30);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671FF498(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671FF534(&qword_2800F7D30);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671FF534(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSMediaSuggestionClientTreatment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaSuggestionEvaluation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v41 = sub_26738113C();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32[-v8];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7CA0, 0x277D59D08);
  sub_266ECAF2C(&qword_2800F7C98, &qword_2800F7CA0, 0x277D59D08);
  sub_26738122C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x7553797469746E65, 0xEF73656972616D6DLL);
  v13(v43, 0);
  v14 = *(v2 + 104);
  v33 = *MEMORY[0x277D3E530];
  v40 = v2 + 104;
  v35 = v14;
  v14(v5);
  v43[0] = 1;
  sub_26738114C();
  v37 = v11 + 56;
  v38 = v12;
  v12(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026747AD50);
  v15(v43, 0);
  v34 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v42, 0xD00000000000001ALL, 0x800000026747AD50);
  v18 = *(v11 + 48);
  v19 = v10;
  v39 = v11 + 48;
  v36 = v18;
  if (!v18(v20, 1, v10))
  {
    sub_266ECB128(&unk_28788C980);
    sub_26738115C();
  }

  (v17)(v42, 0);
  v16(v43, 0);
  v21 = v33;
  v35(v5, v33, v41);
  v43[0] = 1;
  sub_26738114C();
  v22 = v19;
  v38(v9, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x800000026747AD70);
  v23(v43, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v42, 0xD00000000000001FLL, 0x800000026747AD70);
  if (!v36(v26, 1, v19))
  {
    sub_266ECB128(&unk_28788C9A8);
    sub_26738115C();
  }

  (v25)(v42, 0);
  v24(v43, 0);
  v35(v5, v21, v41);
  v43[0] = 1;
  sub_26738114C();
  v38(v9, 0, 1, v19);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x800000026747A330);
  v27(v43, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v42, 0xD000000000000019, 0x800000026747A330);
  if (!v36(v30, 1, v22))
  {
    sub_266ECB128(&unk_28788C9D0);
    sub_26738115C();
  }

  (v29)(v42, 0);
  return v28(v43, 0);
}

uint64_t sub_2671FFC2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671FFC90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSMediaSuggestionLocality.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026747ADD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x800000026747AE00, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026747AE30, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x800000026747AE60, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671FFFC0(uint64_t a1)
{
  v2 = sub_2672000C4(&qword_2800F7D38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267200028(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672000C4(&qword_2800F7D38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672000C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaSuggestionOutcome.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSMediaPlayMediaUserFeedback(0);
  sub_2672003F8(&qword_2800F7CB8, type metadata accessor for PLUSSchemaPLUSMediaPlayMediaUserFeedback);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x800000026747AED0);
  return v5(v7, 0);
}

uint64_t sub_2672002EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267200350(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672003F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267200440()
{
  result = qword_2800F7D48;
  if (!qword_2800F7D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7D48);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaSuggestionServerTreatment.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026747AF30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x800000026747AF60, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x800000026747AFA0, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x800000026747AFE0, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000035, 0x800000026747B020, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000039, 0x800000026747B060, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003CLL, 0x800000026747B0A0, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000040, 0x800000026747B0E0, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003BLL, 0x800000026747B130, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000038, 0x800000026747B170, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003DLL, 0x800000026747B1B0, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000003BLL, 0x800000026747B1F0, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000030, 0x800000026747B230, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_267200B04(uint64_t a1)
{
  v2 = sub_267200C08(&qword_2800F7D58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267200B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267200C08(&qword_2800F7D58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267200C08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSMediaSuggestionServerTreatment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaSuggestionSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionSourceType(0);
  sub_2672010A8(&qword_2800F7D60, type metadata accessor for PLUSSchemaPLUSMediaSuggestionSourceType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954656372756F73, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_267200E10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionSourceType(0);
  sub_2672010A8(&qword_2800F7D60, type metadata accessor for PLUSSchemaPLUSMediaSuggestionSourceType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954656372756F73, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_267200F9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267201000(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672010A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672010F0()
{
  result = qword_2800F7D08;
  if (!qword_2800F7D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7D08);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSMediaSuggestionSourceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026747B2F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000037, 0x800000026747B320, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}