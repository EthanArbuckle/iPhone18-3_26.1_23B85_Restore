uint64_t static IFTSchemaIFTSystemPromptResolution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  v11(v23, 0);
  sub_266ECB294(0, &qword_2800F3250, 0x277D580D0);
  sub_266ECAF2C(&qword_2800F3258, &qword_2800F3250, 0x277D580D0);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974634172657375, 0xEA00000000006E6FLL);
  v12(v23, 0);
  type metadata accessor for IFTSchemaIFTSystemPromptResolutionInputModality(0);
  sub_26703AC58();
  v21[1] = a1;
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F4D7475706E69, 0xED00007974696C61);
  v13(v23, 0);
  v21[0] = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v22, 0x646F4D7475706E69, 0xED00007974696C61);
  if (!(*(v9 + 48))(v16, 1, v8))
  {
    sub_266ECB128(&unk_2878876C0);
    sub_26738115C();
  }

  (v15)(v22, 0);
  v14(v23, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x76456E6F69746361, 0xED00006449746E65);
  v17(v23, 0);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267448020);
  v18(v23, 0);
  sub_266ECB294(0, &qword_2800F3268, 0x277D580C0);
  sub_266ECAF2C(&qword_2800F3270, &qword_2800F3268, 0x277D580C0);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x7475706E69, 0xE500000000000000);
  return v19(v23, 0);
}

uint64_t sub_26703AB94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703ABF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703AC58()
{
  result = qword_2800F3260;
  if (!qword_2800F3260)
  {
    type metadata accessor for IFTSchemaIFTSystemPromptResolutionInputModality(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3260);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemPromptResolutionActionCancellation.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26703AF3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703AFA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703B004()
{
  result = qword_2800F3278;
  if (!qword_2800F3278)
  {
    sub_26703B05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3278);
  }

  return result;
}

unint64_t sub_26703B05C()
{
  result = qword_2800F3280;
  if (!qword_2800F3280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3280);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemPromptResolutionInput.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3150, 0x277D57FE0);
  sub_266ECAF2C(&qword_2800F3148, &qword_2800F3150, 0x277D57FE0);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6863756F74, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F3130, 0x277D57FB8);
  sub_266ECAF2C(&qword_2800F3128, &qword_2800F3130, 0x277D57FB8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x7473654764616568, 0xEB00000000657275);
  v10(v24, 0);
  sub_266ECB294(0, &qword_2800F30E8, 0x277D57FD0);
  sub_266ECAF2C(&qword_2800F30F0, &qword_2800F30E8, 0x277D57FD0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 1954047348, 0xE400000000000000);
  v11(v24, 0);
  sub_266ECB294(0, &qword_2800F30F8, 0x277D57FC0);
  sub_266ECAF2C(&qword_2800F3100, &qword_2800F30F8, 0x277D57FC0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v22;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x686365657073, 0xE600000000000000);
  v13(v24, 0);
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
  (*(v0 + 32))(v17 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v20, v12, v23);
  return v14(v24, 0);
}

uint64_t sub_26703B688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703B6EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSystemPromptResolutionInputModality.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ELL, 0x8000000267448140, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267448170, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x80000002674481A0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26703B9A4(uint64_t a1)
{
  v2 = sub_26703BAA8(&qword_2800F3288);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26703BA0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26703BAA8(&qword_2800F3288);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26703BAA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTSystemPromptResolutionInputModality(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemPromptResolutionRequirementResolution.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267448230);
  return v10(v12, 0);
}

uint64_t sub_26703BD3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703BDA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703BE04()
{
  result = qword_2800F3290;
  if (!qword_2800F3290)
  {
    sub_26703BE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3290);
  }

  return result;
}

unint64_t sub_26703BE5C()
{
  result = qword_2800F3298;
  if (!qword_2800F3298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3298);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemPromptResolutionUserAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v3 = sub_26738118C();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26738113C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v37 = a2;
  sub_26738119C();
  v40 = "mPromptResolutionUserAction";
  v15 = *MEMORY[0x277D3E4E8];
  v41 = *(v7 + 104);
  v39 = v6;
  v41(v10, v15, v6);
  v47[0] = 0;
  sub_26738114C();
  v16 = sub_26738116C();
  v46 = *(*(v16 - 8) + 56);
  v38 = v16;
  v46(v14, 0, 1, v16);
  v17 = sub_2673811AC();
  sub_266EC637C(v14, 0xD000000000000011, v40 | 0x8000000000000000);
  v17(v47, 0);
  v18 = v6;
  v19 = v41;
  v41(v10, v15, v18);
  v47[0] = 0;
  sub_26738114C();
  v20 = v16;
  v21 = v46;
  v46(v14, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v14, 0xD000000000000014, 0x80000002674482B0);
  v22(v47, 0);
  v19(v10, *MEMORY[0x277D3E510], v39);
  v47[0] = 0;
  sub_26738114C();
  v23 = v38;
  v21(v14, 0, 1, v38);
  v24 = sub_2673811AC();
  sub_266EC637C(v14, 0xD00000000000001BLL, 0x80000002674482D0);
  v24(v47, 0);
  sub_266ECB294(0, &qword_2800F3298, 0x277D580C8);
  sub_266ECAF2C(&qword_2800F3290, &qword_2800F3298, 0x277D580C8);
  sub_26738121C();
  v25 = v46;
  v46(v14, 0, 1, v23);
  v26 = sub_2673811AC();
  v27 = v42;
  sub_266EC637C(v14, 0xD000000000000014, 0x80000002674482F0);
  v26(v47, 0);
  sub_266ECB294(0, &qword_2800F3280, 0x277D580B8);
  sub_266ECAF2C(&qword_2800F3278, &qword_2800F3280, 0x277D580B8);
  sub_26738121C();
  v25(v14, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v14, 0x61436E6F69746361, 0xEE0064656C65636ELL);
  v28(v47, 0);
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
  (*(v44 + 32))(v32 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v35, v27, v45);
  return v29(v47, 0);
}

uint64_t sub_26703C5E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703C648(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSystemRequirement.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v61 = a2;
  v2 = sub_26738118C();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v60 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - v12;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v59 = "iri.ift.IFTSystemRequirement";
  v14 = *MEMORY[0x277D3E4E8];
  v15 = *(v6 + 104);
  v15(v9, v14, v5);
  v63[0] = 0;
  sub_26738114C();
  v16 = sub_26738116C();
  v50 = *(v16 - 8);
  v18 = v50 + 56;
  v17 = *(v50 + 56);
  (v17)(v13, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000014, v59 | 0x8000000000000000);
  v19(v63, 0);
  v48 = "deviceUnlockRequired";
  v57 = v14;
  v51 = v15;
  v52 = v6 + 104;
  v15(v9, v14, v60);
  v63[0] = 0;
  v20 = v9;
  sub_26738114C();
  v58 = v18;
  v59 = v17;
  (v17)(v13, 0, 1, v16);
  v21 = sub_2673811AC();
  v22 = v48;
  sub_266EC637C(v13, 0xD000000000000016, v48 | 0x8000000000000000);
  v21(v63, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v62, 0xD000000000000016, v22 | 0x8000000000000000);
  v25 = v16;
  if (!(*(v50 + 48))(v26, 1, v16))
  {
    sub_266ECB128(&unk_2878876E8);
    sub_26738115C();
  }

  (v24)(v62, 0);
  v23(v63, 0);
  v27 = v57;
  v28 = v60;
  v29 = v51;
  v51(v20, v57, v60);
  v63[0] = 0;
  sub_26738114C();
  v49 = v25;
  (v59)(v13, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000011, 0x80000002674483B0);
  v30(v63, 0);
  v29(v20, v27, v28);
  v63[0] = 0;
  sub_26738114C();
  v31 = v59;
  (v59)(v13, 0, 1, v25);
  v32 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000013, 0x80000002674483D0);
  v32(v63, 0);
  v29(v20, v57, v60);
  v63[0] = 0;
  sub_26738114C();
  v33 = v49;
  v31(v13, 0, 1, v49);
  v34 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000018, 0x80000002674483F0);
  v34(v63, 0);
  sub_266ECB294(0, &qword_2800F32A0, 0x277D580E8);
  sub_266ECAF2C(&qword_2800F32A8, &qword_2800F32A0, 0x277D580E8);
  sub_26738121C();
  v31(v13, 0, 1, v33);
  v35 = sub_2673811AC();
  sub_266EC637C(v13, 0xD00000000000001CLL, 0x8000000267448410);
  v35(v63, 0);
  sub_266ECB294(0, &qword_2800F32B0, 0x277D580E0);
  sub_266ECAF2C(&qword_2800F32B8, &qword_2800F32B0, 0x277D580E0);
  sub_26738121C();
  v31(v13, 0, 1, v33);
  v36 = sub_2673811AC();
  sub_266EC637C(v13, 0xD00000000000001ALL, 0x8000000267448430);
  v36(v63, 0);
  sub_266ECB294(0, &qword_2800F32C0, 0x277D580F0);
  sub_266ECAF2C(&qword_2800F32C8, &qword_2800F32C0, 0x277D580F0);
  sub_26738121C();
  v31(v13, 0, 1, v33);
  v37 = sub_2673811AC();
  sub_266EC637C(v13, 0xD00000000000001DLL, 0x8000000267448450);
  v37(v63, 0);
  v38 = v54;
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
  (*(v55 + 32))(v42 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v45, v38, v56);
  return v39(v63, 0);
}

uint64_t sub_26703D124(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703D188(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSystemRequirementAuthenticationRequest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  sub_26703D51C(&qword_2800F32D0, type metadata accessor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674484E0);
  return v5(v7, 0);
}

uint64_t sub_26703D410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703D474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26703D51C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26703D564()
{
  result = qword_2800F32B0;
  if (!qword_2800F32B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F32B0);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000044, 0x8000000267448560, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000061, 0x80000002674485B0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000062, 0x8000000267448620, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26703D7C4(uint64_t a1)
{
  v2 = sub_26703D8C8(&qword_2800F32D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26703D82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26703D8C8(&qword_2800F32D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26703D8C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemRequirementProtectedAppRequest.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6449656C646E7562, 0xE800000000000000);
  v11(v17, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v16, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_287887710);
    sub_26738115C();
  }

  (v13)(v16, 0);
  return v12(v17, 0);
}

uint64_t sub_26703DC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703DC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703DCD4()
{
  result = qword_2800F32A8;
  if (!qword_2800F32A8)
  {
    sub_26703DD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F32A8);
  }

  return result;
}

unint64_t sub_26703DD2C()
{
  result = qword_2800F32A0;
  if (!qword_2800F32A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F32A0);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemRequirementUserLocationForSystemRequest.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v17 = a1;
  sub_26738119C();
  v18 = "LocationForSystemRequest";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v19[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v18 | 0x8000000000000000);
  v14(v19, 0);
  v11(v6, *MEMORY[0x277D3E510], v2);
  v19[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267448740);
  return v15(v19, 0);
}

uint64_t sub_26703E0AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703E110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703E174()
{
  result = qword_2800F32C8;
  if (!qword_2800F32C8)
  {
    sub_26703E1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F32C8);
  }

  return result;
}

unint64_t sub_26703E1CC()
{
  result = qword_2800F32C0;
  if (!qword_2800F32C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F32C0);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v37 = v2;
  v34 = v12;
  v35 = v3 + 104;
  v12(v6, v11, v2);
  v42[0] = 1;
  v36 = v6;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x737473697865, 0xE600000000000000);
  v16(v42, 0);
  sub_266ECB294(0, &qword_2800F2F20, 0x277D58080);
  sub_266ECAF2C(&qword_2800F2F28, &qword_2800F2F20, 0x277D58080);
  v38 = a1;
  sub_26738120C();
  v39 = v15;
  v40 = v14 + 56;
  v15(v10, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D6F6374756FLL, 0xE700000000000000);
  v17(v42, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v41, 0x656D6F6374756FLL, 0xE700000000000000);
  v20 = *(v14 + 48);
  if (!v20(v21, 1, v13))
  {
    sub_266ECB128(&unk_287887740);
    sub_26738115C();
  }

  (v19)(v41, 0);
  v18(v42, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v39(v10, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656D6574617473, 0xEB00000000644974);
  v22(v42, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v41, 0x6E656D6574617473, 0xEB00000000644974);
  v26 = v20;
  if (!v20(v25, 1, v13))
  {
    sub_266ECB128(&unk_287887768);
    sub_26738115C();
  }

  (v24)(v41, 0);
  v23(v42, 0);
  v34(v36, *MEMORY[0x277D3E530], v37);
  v42[0] = 1;
  sub_26738114C();
  v39(v10, 0, 1, v13);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496C6F6F74, 0xE600000000000000);
  v27(v42, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v41, 0x64496C6F6F74, 0xE600000000000000);
  if (!v26(v30, 1, v13))
  {
    sub_266ECB128(&unk_287887790);
    sub_26738115C();
  }

  (v29)(v41, 0);
  v28(v42, 0);
  sub_266ECB294(0, &qword_2800F2F38, 0x277D57E88);
  sub_266ECAF2C(&qword_2800F2F30, &qword_2800F2F38, 0x277D57E88);
  sub_26738122C();
  v39(v10, 0, 1, v13);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267448790);
  return v31(v42, 0);
}

uint64_t sub_26703E988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703E9EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTTerminate.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26703ECD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703ED3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703EDA0()
{
  result = qword_2800F2B28;
  if (!qword_2800F2B28)
  {
    sub_26703EDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B28);
  }

  return result;
}

unint64_t sub_26703EDF8()
{
  result = qword_2800F2B20;
  if (!qword_2800F2B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B20);
  }

  return result;
}

uint64_t static IFTSchemaIFTToolDefinition.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19[1] = a1;
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
  (*(v2 + 104))(v5, *MEMORY[0x277D3E530], v1);
  v21[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496C6F6F74, 0xE600000000000000);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_2878877B8);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  type metadata accessor for IFTSchemaIFTToolType(0);
  sub_26703F314(&qword_2800F32E0, type metadata accessor for IFTSchemaIFTToolType);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x657079546C6F6F74, 0xE800000000000000);
  return v17(v21, 0);
}

uint64_t sub_26703F208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703F26C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26703F314(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26703F35C()
{
  result = qword_2800F32F0;
  if (!qword_2800F32F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F32F0);
  }

  return result;
}

uint64_t static IFTSchemaIFTToolDisambiguation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v3 = sub_26738113C();
  v25 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v24[1] = a2;
  sub_26738119C();
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E4E8], v3);
  v28[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x737473697865, 0xE600000000000000);
  v16(v28, 0);
  v12(v7, *MEMORY[0x277D3E530], v25);
  v28[0] = 1;
  sub_26738114C();
  v25 = v14 + 56;
  v15(v11, 0, 1, v13);
  v17 = v15;
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x8000000267448840);
  v18(v28, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v27, 0xD000000000000013, 0x8000000267448840);
  if (!(*(v14 + 48))(v21, 1, v13))
  {
    sub_266ECB128(&unk_2878877E8);
    sub_26738115C();
  }

  (v20)(v27, 0);
  v19(v28, 0);
  sub_266ECB294(0, &qword_2800F32F0, 0x277D58108);
  sub_266ECAF2C(&qword_2800F32E8, &qword_2800F32F0, 0x277D58108);
  sub_26738122C();
  v17(v11, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x736C6F6F74, 0xE500000000000000);
  return v22(v28, 0);
}

uint64_t sub_26703F84C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703F8B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTToolResolution.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E4E8];
  v27 = *(v2 + 104);
  v28 = v1;
  v27(v5, v10, v1);
  v33[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v30 = *(v12 + 56);
  v31 = v12 + 56;
  v30(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v33, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v32, 0x737473697865, 0xE600000000000000);
  v16 = *(v12 + 48);
  if (!v16(v17, 1, v11))
  {
    sub_266ECB128(&unk_287887818);
    sub_26738115C();
  }

  (v15)(v32, 0);
  v14(v33, 0);
  v27(v5, *MEMORY[0x277D3E530], v28);
  v33[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496C6F6F74, 0xE600000000000000);
  v18(v33, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v32, 0x64496C6F6F74, 0xE600000000000000);
  if (!v16(v21, 1, v11))
  {
    sub_266ECB128(&unk_287887840);
    sub_26738115C();
  }

  (v20)(v32, 0);
  v19(v33, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v22 = v30;
  v30(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  v23(v33, 0);
  sub_26738120C();
  v22(v9, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267446530);
  return v24(v33, 0);
}

uint64_t sub_26703FF10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703FF74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTToolRetrievalResponse.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287887870);
  return sub_2673811CC();
}

uint64_t sub_267040278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670402DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267040340()
{
  result = qword_2800F2B88;
  if (!qword_2800F2B88)
  {
    sub_267040398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B88);
  }

  return result;
}

unint64_t sub_267040398()
{
  result = qword_2800F2B80;
  if (!qword_2800F2B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B80);
  }

  return result;
}

uint64_t static IFTSchemaIFTToolType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267448900, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267448920, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267448940, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267448960, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26704066C(uint64_t a1)
{
  v2 = sub_267040770(&qword_2800F32F8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670406D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267040770(&qword_2800F32F8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267040770(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTToolType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTTypedValue.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2CD0, 0x277D58158);
  sub_266ECAF2C(&qword_2800F2CD8, &qword_2800F2CD0, 0x277D58158);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x65756C6176, 0xE500000000000000);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F2CE8, 0x277D57D90);
  sub_266ECAF2C(&qword_2800F2CE0, &qword_2800F2CE8, 0x277D57D90);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x697463656C6C6F63, 0xEA00000000006E6FLL);
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

uint64_t sub_267040BFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267040C60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTTypeIdentifier.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3060, 0x277D57F48);
  sub_266ECAF2C(&qword_2800F3058, &qword_2800F3060, 0x277D57F48);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x766974696D697270, 0xE900000000000065);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F2D28, 0x277D57DD0);
  sub_266ECAF2C(&qword_2800F2D20, &qword_2800F2D28, 0x277D57DD0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F74737563, 0xE600000000000000);
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

uint64_t sub_26704114C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670411B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTTypeInstance.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E65644965707974, 0xEE00726569666974);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F2CE8, 0x277D57D90);
  sub_266ECAF2C(&qword_2800F2CE0, &qword_2800F2CE8, 0x277D57D90);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x697463656C6C6F63, 0xEA00000000006E6FLL);
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

uint64_t sub_2670416A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704170C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTUndoExpression.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_26704198C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267041B30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267041B94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTUpdateParameter.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v4 + 104);
  v31 = v4 + 104;
  v32 = v3;
  v28 = v13;
  v13(v7, v12, v3);
  v34[0] = 1;
  v30 = v7;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v26 = *(v15 + 56);
  v26(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6574656D61726170, 0xEB00000000644972);
  v16(v34, 0);
  v27 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v33, 0x6574656D61726170, 0xEB00000000644972);
  if (!(*(v15 + 48))(v19, 1, v14))
  {
    sub_266ECB128(&unk_287887898);
    sub_26738115C();
  }

  (v18)(v33, 0);
  v17(v34, 0);
  type metadata accessor for IFTSchemaASTUpdateKind(0);
  sub_267009E18();
  sub_26738120C();
  v20 = v26;
  v26(v11, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 1684957547, 0xE400000000000000);
  v21(v34, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v20(v11, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x65756C6176, 0xE500000000000000);
  v22(v34, 0);
  v28(v30, *MEMORY[0x277D3E510], v32);
  v34[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x6574656D61726170, 0xEE007865646E4972);
  return v23(v34, 0);
}

uint64_t sub_267042180(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670421E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTUpdateParametersExpression.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746174536C6C6163, 0xEF6449746E656D65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3308, 0x277D58148);
  sub_266ECAF2C(&qword_2800F3300, &qword_2800F3308, 0x277D58148);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73657461647075, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26704255C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670425C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTValue.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3078, 0x277D57F50);
  sub_266ECAF2C(&qword_2800F3070, &qword_2800F3078, 0x277D57F50);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x766974696D697270, 0xE900000000000065);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F2D88, 0x277D57E08);
  sub_266ECAF2C(&qword_2800F2D80, &qword_2800F2D88, 0x277D57E08);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x746172656D756E65, 0xEB000000006E6F69);
  v10(v24, 0);
  sub_266ECB294(0, &qword_2800F2D78, 0x277D57E00);
  sub_266ECAF2C(&qword_2800F2D70, &qword_2800F2D78, 0x277D57E00);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x797469746E65, 0xE600000000000000);
  v11(v24, 0);
  sub_266ECB294(0, &qword_2800F30C0, 0x277D57F90);
  sub_266ECAF2C(&qword_2800F30B8, &qword_2800F30C0, 0x277D57F90);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v22;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x7972657571, 0xE500000000000000);
  v13(v24, 0);
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
  (*(v0 + 32))(v17 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v20, v12, v23);
  return v14(v24, 0);
}

uint64_t sub_267042C54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267042CB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTValueDisambiguation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x736D657469, 0xE500000000000000);
  return v12(v14, 0);
}

uint64_t sub_267043084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670430E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTValueExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19[1] = a1;
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
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4E8], v1);
  v21[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0x737473697865, 0xE600000000000000);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_2878878C8);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F3310, 0x277D58170);
  sub_266ECAF2C(&qword_2800F3318, &qword_2800F3310, 0x277D58170);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7961727261, 0xE500000000000000);
  return v17(v21, 0);
}

uint64_t sub_26704355C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670435C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTValueExpressionArrayVariant.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267043840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_2670439E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267043A48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTVariableStep.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19[1] = a1;
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
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4E8], v1);
  v21[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0x737473697865, 0xE600000000000000);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_2878878F0);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  return v17(v21, 0);
}

uint64_t sub_267043EC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267043F2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IHSchemaIHClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3320, 0x277D58188);
  sub_266ECAF2C(&qword_2800F3328, &qword_2800F3320, 0x277D58188);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F3330, 0x277D58190);
  sub_266ECAF2C(&qword_2800F3338, &qword_2800F3330, 0x277D58190);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267448C20);
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
  sub_266ECB128(&unk_287887918);
  return sub_2673811CC();
}

uint64_t sub_267044400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267044498()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267044564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670445C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267044628(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F3340, &qword_2800F1E90, 0x277D58180);
  a1[2] = sub_266ECAF2C(&qword_2800F3348, &qword_2800F1E90, 0x277D58180);
  result = sub_266ECAF2C(&qword_2800F3350, &qword_2800F1E90, 0x277D58180);
  a1[3] = result;
  return result;
}

uint64_t static IHSchemaIHClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682532457, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682532457, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287887958);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2670449BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267044A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IHSchemaIHModelEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3358, 0x277D581A8);
  sub_266ECAF2C(&qword_2800F3360, &qword_2800F3358, 0x277D581A8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F3368, 0x277D58198);
  sub_266ECAF2C(&qword_2800F3370, &qword_2800F3368, 0x277D58198);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F3378, 0x277D581A0);
  sub_266ECAF2C(&qword_2800F3380, &qword_2800F3378, 0x277D581A0);
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

uint64_t sub_2670450A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267045104(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IHSchemaIHModelEvaluationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3388, 0x277D581B0);
  sub_266ECAF2C(&qword_2800F3390, &qword_2800F3388, 0x277D581B0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65726F6373, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_267045378()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3388, 0x277D581B0);
  sub_266ECAF2C(&qword_2800F3390, &qword_2800F3388, 0x277D581B0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65726F6373, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_267045510(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267045574(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IHSchemaIHModelEvaluationFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v10(v12, 0);
}

uint64_t sub_267045868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670458CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267045930()
{
  result = qword_2800F3380;
  if (!qword_2800F3380)
  {
    sub_267045988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3380);
  }

  return result;
}

unint64_t sub_267045988()
{
  result = qword_2800F3378;
  if (!qword_2800F3378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3378);
  }

  return result;
}

uint64_t static IHSchemaIHModelEvaluationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x64496C65646F6DLL, 0xE700000000000000);
  return v10(v12, 0);
}

uint64_t sub_267045C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267045C84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267045CE8()
{
  result = qword_2800F3360;
  if (!qword_2800F3360)
  {
    sub_267045D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3360);
  }

  return result;
}

unint64_t sub_267045D40()
{
  result = qword_2800F3358;
  if (!qword_2800F3358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3358);
  }

  return result;
}

uint64_t static IHSchemaIHScore.makeTypeManifestAndEnsureFields(in:)()
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
  v9 = *MEMORY[0x277D3E500];
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
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  v12(v22, 0);
  v13 = v0;
  v14 = v20;
  v20(v4, v9, v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x756F427265707075, 0xED0000797261646ELL);
  v15(v22, 0);
  v14(v4, v9, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x756F427265776F6CLL, 0xED0000797261646ELL);
  return v16(v22, 0);
}

uint64_t sub_267046174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670461D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26704623C()
{
  result = qword_2800F3390;
  if (!qword_2800F3390)
  {
    sub_267046294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3390);
  }

  return result;
}

unint64_t sub_267046294()
{
  result = qword_2800F3388;
  if (!qword_2800F3388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3388);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEABModelEvaluated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v39 = sub_26738113C();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v37 = a2;
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCEProjectIntent(0);
  sub_267046B48(&qword_2800F3398, type metadata accessor for INFERENCESchemaINFERENCEProjectIntent);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v32 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x497463656A6F7270, 0xED0000746E65746ELL);
  v15(v40, 0);
  v33 = "FERENCEABModelEvaluated";
  v16 = *MEMORY[0x277D3E508];
  v17 = *(v3 + 104);
  v36 = v3 + 104;
  v38 = v17;
  (v17)(v6, v16, v39);
  v40[0] = 1;
  sub_26738114C();
  v31 = v11;
  v13(v10, 0, 1, v11);
  v35 = v14;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v33 | 0x8000000000000000);
  v18(v40, 0);
  LODWORD(v33) = *MEMORY[0x277D3E4E8];
  v19 = v38;
  v38(v6);
  v40[0] = 1;
  sub_26738114C();
  v20 = v32;
  v32(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267448DB0);
  v21(v40, 0);
  v22 = v39;
  v19(v6, *MEMORY[0x277D3E538], v39);
  v40[0] = 1;
  sub_26738114C();
  v23 = v31;
  v20(v10, 0, 1, v31);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v24(v40, 0);
  v30 = "isDecisionCorrect";
  v25 = v33;
  v19(v6, v33, v22);
  v40[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v30 | 0x8000000000000000);
  v26(v40, 0);
  (v38)(v6, v25, v39);
  v40[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267448DF0);
  v27(v40, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_267046B48(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v20(v10, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x7372655072657375, 0xEB00000000616E6FLL);
  return v28(v40, 0);
}

uint64_t sub_267046A3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267046AA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267046B48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267046B90()
{
  result = qword_2800F33A8;
  if (!qword_2800F33A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F33A8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEABModelResultTriggered.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(0);
  sub_267046FA8(&qword_2800F33B0, type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x5272656767697274, 0xED00006E6F736165);
  v6(v9, 0);
  type metadata accessor for INFERENCESchemaINFERENCEProjectIntent(0);
  sub_267046FA8(&qword_2800F3398, type metadata accessor for INFERENCESchemaINFERENCEProjectIntent);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x497463656A6F7270, 0xED0000746E65746ELL);
  return v7(v9, 0);
}

uint64_t sub_267046E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267046F00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267046FA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267046FF0()
{
  result = qword_2800F33C0;
  if (!qword_2800F33C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F33C0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEAppResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267448E90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267448EC0, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000039, 0x8000000267448EF0, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000036, 0x8000000267448F30, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x8000000267448F70, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267448FA0, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000038, 0x8000000267448FD0, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000035, 0x8000000267449010, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002CLL, 0x8000000267449050, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002CLL, 0x8000000267449080, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x80000002674490B0, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_2670475D4(uint64_t a1)
{
  v2 = sub_2670476D8(&qword_2800F33C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26704763C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670476D8(&qword_2800F33C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670476D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEAppSelectionUserPersona.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x8000000267449120, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x8000000267449150, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x8000000267449180, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674491B0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x80000002674491E0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002FLL, 0x8000000267449210, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x8000000267449240, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_267047AF8(uint64_t a1)
{
  v2 = sub_267047BFC(&qword_2800F33D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267047B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267047BFC(&qword_2800F33D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267047BFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEAsrEuclidEmbedding.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F33D8, 0x277D582C0);
  sub_266ECAF2C(&qword_2800F33E0, &qword_2800F33D8, 0x277D582C0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674492B0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F33E8, 0x277D582B0);
  sub_266ECAF2C(&qword_2800F33F0, &qword_2800F33E8, 0x277D582B0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x80000002674492D0);
  return v7(v9, 0);
}

uint64_t sub_267047F18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267047F7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E500], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267449340);
  return v10(v12, 0);
}

uint64_t sub_267048270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670482D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267048338()
{
  result = qword_2800F3408;
  if (!qword_2800F3408)
  {
    sub_267048390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3408);
  }

  return result;
}

unint64_t sub_267048390()
{
  result = qword_2800F3410;
  if (!qword_2800F3410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3410);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEBackgroundContactSignalSet.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = "dContactSignalSet";
  v10 = *(v2 + 104);
  v10(v5, *MEMORY[0x277D3E4E8], v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v18 | 0x8000000000000000);
  v13(v21, 0);
  v10(v5, *MEMORY[0x277D3E500], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x80000002674493D0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F3410, 0x277D581D0);
  sub_266ECAF2C(&qword_2800F3408, &qword_2800F3410, 0x277D581D0);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267449400);
  return v15(v21, 0);
}

uint64_t sub_2670487E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704884C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECandidateInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_26738113C();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a2;
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCESearchProvider(0);
  sub_267049058(&qword_2800F3428, type metadata accessor for INFERENCESchemaINFERENCESearchProvider);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v31 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x7250686372616573, 0xEE0072656469766FLL);
  v13(v36, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = v35;
  v34 = *(v34 + 104);
  (v34)(v6, v14, v35);
  v36[0] = 1;
  sub_26738114C();
  v16 = v11;
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 1802396018, 0xE400000000000000);
  v17(v36, 0);
  v18 = *MEMORY[0x277D3E500];
  v30 = v6;
  v19 = v6;
  v20 = v15;
  v21 = v34;
  (v34)(v19, v18, v15);
  v36[0] = 1;
  sub_26738114C();
  v22 = v31;
  v31(v10, 0, 1, v16);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x65726F6373, 0xE500000000000000);
  v23(v36, 0);
  v24 = v30;
  v21(v30, *MEMORY[0x277D3E4E8], v20);
  v36[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v16);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x546E776F68537369, 0xED0000726573556FLL);
  v25(v36, 0);
  (v34)(v24, *MEMORY[0x277D3E530], v35);
  v36[0] = 1;
  sub_26738114C();
  v26 = v16;
  v22(v10, 0, 1, v16);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267449460);
  v27(v36, 0);
  type metadata accessor for INFERENCESchemaINFERENCECandidateType(0);
  sub_267049058(&qword_2800F3430, type metadata accessor for INFERENCESchemaINFERENCECandidateType);
  sub_26738120C();
  v22(v10, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x74616469646E6163, 0xED00006570795465);
  return v28(v36, 0);
}

uint64_t sub_267048F4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267048FB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267049058(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670490A0()
{
  result = qword_2800F3440;
  if (!qword_2800F3440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3440);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECandidateType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x80000002674494C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674494E0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267449500, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267049304(uint64_t a1)
{
  v2 = sub_267049408(&qword_2800F3448);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26704936C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267049408(&qword_2800F3448);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267049408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCECandidateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v98 = a1;
  v1 = sub_26738118C();
  v91 = *(v1 - 8);
  v92 = v1;
  v2 = *(v91 + 64);
  MEMORY[0x28223BE20](v1);
  v90 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v89 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3450, 0x277D581F8);
  sub_266ECAF2C(&qword_2800F3458, &qword_2800F3450, 0x277D581F8);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v100, 0);
  sub_266ECB294(0, &qword_2800F3460, 0x277D582D8);
  sub_266ECAF2C(&qword_2800F3468, &qword_2800F3460, 0x277D582D8);
  sub_26738121C();
  v95 = v10;
  v96 = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000025, 0x8000000267449570);
  v12(v100, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v99, 0xD000000000000025, 0x8000000267449570);
  v15 = *(v9 + 48);
  v97 = v8;
  v93 = v15;
  v94 = v9 + 48;
  if (!v15(v16, 1, v8))
  {
    sub_266ECB128(&unk_287887988);
    sub_26738115C();
  }

  (v14)(v99, 0);
  v13(v100, 0);
  sub_266ECB294(0, &qword_2800F3470, 0x277D583A8);
  sub_266ECAF2C(&qword_2800F3478, &qword_2800F3470, 0x277D583A8);
  sub_26738121C();
  v17 = v97;
  v95(v7, 0, 1, v97);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002CLL, 0x80000002674495A0);
  v18(v100, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v99, 0xD00000000000002CLL, 0x80000002674495A0);
  if (!v93(v21, 1, v17))
  {
    sub_266ECB128(&unk_2878879B0);
    sub_26738115C();
  }

  (v20)(v99, 0);
  v19(v100, 0);
  sub_266ECB294(0, &qword_2800F3480, 0x277D583C8);
  sub_266ECAF2C(&qword_2800F3488, &qword_2800F3480, 0x277D583C8);
  sub_26738121C();
  v22 = v97;
  v95(v7, 0, 1, v97);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, 0x80000002674495D0);
  v23(v100, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v99, 0xD000000000000024, 0x80000002674495D0);
  if (!v93(v26, 1, v22))
  {
    sub_266ECB128(&unk_2878879D8);
    sub_26738115C();
  }

  (v25)(v99, 0);
  v24(v100, 0);
  sub_266ECB294(0, &qword_2800F3490, 0x277D58350);
  sub_266ECAF2C(&qword_2800F3498, &qword_2800F3490, 0x277D58350);
  sub_26738121C();
  v27 = v97;
  v28 = v95;
  v95(v7, 0, 1, v97);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267449600);
  v29(v100, 0);
  sub_266ECB294(0, &qword_2800F34A0, 0x277D58378);
  sub_266ECAF2C(&qword_2800F34A8, &qword_2800F34A0, 0x277D58378);
  sub_26738121C();
  v28(v7, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267449620);
  v30(v100, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v99, 0xD000000000000017, 0x8000000267449620);
  if (!v93(v33, 1, v27))
  {
    sub_266ECB128(&unk_287887A00);
    sub_26738115C();
  }

  (v32)(v99, 0);
  v31(v100, 0);
  sub_266ECB294(0, &qword_2800F34B0, 0x277D58348);
  sub_266ECAF2C(&qword_2800F34B8, &qword_2800F34B0, 0x277D58348);
  sub_26738121C();
  v34 = v97;
  v95(v7, 0, 1, v97);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x8000000267449640);
  v35(v100, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v99, 0xD00000000000001CLL, 0x8000000267449640);
  if (!v93(v38, 1, v34))
  {
    sub_266ECB128(&unk_287887A28);
    sub_26738115C();
  }

  (v37)(v99, 0);
  v36(v100, 0);
  sub_266ECB294(0, &qword_2800F34C0, 0x277D58338);
  sub_266ECAF2C(&qword_2800F34C8, &qword_2800F34C0, 0x277D58338);
  sub_26738121C();
  v39 = v97;
  v95(v7, 0, 1, v97);
  v40 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x8000000267449660);
  v40(v100, 0);
  v41 = sub_2673811AC();
  v42 = sub_266ECB6CC(v99, 0xD00000000000001FLL, 0x8000000267449660);
  if (!v93(v43, 1, v39))
  {
    sub_266ECB128(&unk_287887A50);
    sub_26738115C();
  }

  (v42)(v99, 0);
  v41(v100, 0);
  sub_266ECB294(0, &qword_2800F34D0, 0x277D58270);
  sub_266ECAF2C(&qword_2800F34D8, &qword_2800F34D0, 0x277D58270);
  sub_26738121C();
  v44 = v97;
  v95(v7, 0, 1, v97);
  v45 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267449680);
  v45(v100, 0);
  v46 = sub_2673811AC();
  v47 = sub_266ECB6CC(v99, 0xD00000000000001ELL, 0x8000000267449680);
  if (!v93(v48, 1, v44))
  {
    sub_266ECB128(&unk_287887A78);
    sub_26738115C();
  }

  (v47)(v99, 0);
  v46(v100, 0);
  sub_266ECB294(0, &qword_2800F34E0, 0x277D581E0);
  sub_266ECAF2C(&qword_2800F34E8, &qword_2800F34E0, 0x277D581E0);
  sub_26738121C();
  v49 = v97;
  v95(v7, 0, 1, v97);
  v50 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x80000002674496A0);
  v50(v100, 0);
  v51 = sub_2673811AC();
  v52 = sub_266ECB6CC(v99, 0xD00000000000001ALL, 0x80000002674496A0);
  if (!v93(v53, 1, v49))
  {
    sub_266ECB128(&unk_287887AA0);
    sub_26738115C();
  }

  (v52)(v99, 0);
  v51(v100, 0);
  sub_266ECB294(0, &qword_2800F33A8, 0x277D581B8);
  sub_266ECAF2C(&qword_2800F33A0, &qword_2800F33A8, 0x277D581B8);
  sub_26738121C();
  v54 = v97;
  v55 = v95;
  v95(v7, 0, 1, v97);
  v56 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674496C0);
  v56(v100, 0);
  sub_266ECB294(0, &qword_2800F33C0, 0x277D581C0);
  sub_266ECAF2C(&qword_2800F33B8, &qword_2800F33C0, 0x277D581C0);
  sub_26738121C();
  v55(v7, 0, 1, v54);
  v57 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x80000002674496E0);
  v57(v100, 0);
  sub_266ECB294(0, &qword_2800F34F0, 0x277D583D0);
  sub_266ECAF2C(&qword_2800F34F8, &qword_2800F34F0, 0x277D583D0);
  sub_26738121C();
  v55(v7, 0, 1, v54);
  v58 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000028, 0x8000000267449700);
  v58(v100, 0);
  v59 = sub_2673811AC();
  v60 = sub_266ECB6CC(v99, 0xD000000000000028, 0x8000000267449700);
  if (!v93(v61, 1, v54))
  {
    sub_266ECB128(&unk_287887AC8);
    sub_26738115C();
  }

  (v60)(v99, 0);
  v59(v100, 0);
  sub_266ECB294(0, &qword_2800F3500, 0x277D582F0);
  sub_266ECAF2C(&qword_2800F3508, &qword_2800F3500, 0x277D582F0);
  sub_26738121C();
  v62 = v97;
  v95(v7, 0, 1, v97);
  v63 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000028, 0x8000000267449730);
  v63(v100, 0);
  v64 = sub_2673811AC();
  v65 = sub_266ECB6CC(v99, 0xD000000000000028, 0x8000000267449730);
  if (!v93(v66, 1, v62))
  {
    sub_266ECB128(&unk_287887AF0);
    sub_26738115C();
  }

  (v65)(v99, 0);
  v64(v100, 0);
  sub_266ECB294(0, &qword_2800F3510, 0x277D58220);
  sub_266ECAF2C(&qword_2800F3518, &qword_2800F3510, 0x277D58220);
  sub_26738121C();
  v67 = v97;
  v95(v7, 0, 1, v97);
  v68 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000025, 0x8000000267449760);
  v68(v100, 0);
  v69 = sub_2673811AC();
  v70 = sub_266ECB6CC(v99, 0xD000000000000025, 0x8000000267449760);
  if (!v93(v71, 1, v67))
  {
    sub_266ECB128(&unk_287887B18);
    sub_26738115C();
  }

  (v70)(v99, 0);
  v69(v100, 0);
  sub_266ECB294(0, &qword_2800F3520, 0x277D58318);
  sub_266ECAF2C(&qword_2800F3528, &qword_2800F3520, 0x277D58318);
  sub_26738121C();
  v72 = v97;
  v95(v7, 0, 1, v97);
  v73 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002DLL, 0x8000000267449790);
  v73(v100, 0);
  v74 = sub_2673811AC();
  v75 = sub_266ECB6CC(v99, 0xD00000000000002DLL, 0x8000000267449790);
  if (!v93(v76, 1, v72))
  {
    sub_266ECB128(&unk_287887B40);
    sub_26738115C();
  }

  (v75)(v99, 0);
  v74(v100, 0);
  sub_266ECB294(0, &qword_2800F3530, 0x277D58380);
  sub_266ECAF2C(&qword_2800F3538, &qword_2800F3530, 0x277D58380);
  sub_26738121C();
  v77 = v95;
  v95(v7, 0, 1, v97);
  v78 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x80000002674497C0);
  v78(v100, 0);
  sub_266ECB294(0, &qword_2800F3400, 0x277D581C8);
  sub_266ECAF2C(&qword_2800F33F8, &qword_2800F3400, 0x277D581C8);
  sub_26738121C();
  v77(v7, 0, 1, v97);
  v79 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x80000002674497E0);
  v79(v100, 0);
  v80 = v90;
  sub_26738117C();
  v81 = sub_2673811BC();
  v83 = v82;
  v84 = *v82;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v83 = v84;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v84 = sub_266ECAD54(0, v84[2] + 1, 1, v84);
    *v83 = v84;
  }

  v87 = v84[2];
  v86 = v84[3];
  if (v87 >= v86 >> 1)
  {
    v84 = sub_266ECAD54(v86 > 1, v87 + 1, 1, v84);
    *v83 = v84;
  }

  v84[2] = v87 + 1;
  (*(v91 + 32))(v84 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v87, v80, v92);
  v81(v100, 0);
  sub_266ECB128(&unk_287887B68);
  return sub_2673811CC();
}

uint64_t sub_26704ACD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26704AD70()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26704AE3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704AEA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26704AF00(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F3540, &qword_2800F1FB0, 0x277D581F0);
  a1[2] = sub_266ECAF2C(&qword_2800F3548, &qword_2800F1FB0, 0x277D581F0);
  result = sub_266ECAF2C(&qword_2800F3550, &qword_2800F1FB0, 0x277D581F0);
  a1[3] = result;
  return result;
}

uint64_t static INFERENCESchemaINFERENCEClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x636E657265666E69, 0xEB00000000644965);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x636E657265666E69, 0xEB00000000644965);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287887BA0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26704B2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704B314(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v130 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v124 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v134 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E508];
  v12 = *(v3 + 104);
  v132 = v3 + 104;
  v12(v6, v11, v2);
  v138[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v131 = *(v14 + 56);
  v15 = v14 + 56;
  v137 = v13;
  v131(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  v126 = 0xD00000000000001ALL;
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x80000002674498A0);
  v16(v138, 0);
  v128 = "appUsageCountForEntity2Min";
  v136 = v11;
  v17 = v130;
  v135 = v12;
  v12(v6, v11, v130);
  v138[0] = 1;
  sub_26738114C();
  v18 = v13;
  v19 = v15;
  v20 = v131;
  v131(v10, 0, 1, v18);
  v21 = sub_2673811AC();
  v127 = 0xD00000000000001BLL;
  sub_266EC637C(v10, 0xD00000000000001BLL, v128 | 0x8000000000000000);
  v21(v138, 0);
  v125 = "appUsageCountForEntity10Min";
  v12(v6, v11, v17);
  v138[0] = 1;
  sub_26738114C();
  v22 = v137;
  v20(v10, 0, 1, v137);
  v133 = v19;
  v23 = sub_2673811AC();
  v128 = 0xD000000000000019;
  sub_266EC637C(v10, 0xD000000000000019, v125 | 0x8000000000000000);
  v23(v138, 0);
  v125 = "appUsageCountForEntity1Hr";
  v129 = v6;
  v24 = v130;
  v25 = v135;
  v135(v6, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v26 = v131;
  v131(v10, 0, 1, v22);
  v27 = sub_2673811AC();
  v28 = v126;
  sub_266EC637C(v10, v126, v125 | 0x8000000000000000);
  v27(v138, 0);
  v125 = "appUsageCountForEntity6Hrs";
  v29 = v129;
  v25(v129, v136, v24);
  v138[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v22);
  v30 = v26;
  v31 = sub_2673811AC();
  sub_266EC637C(v10, v28, v125 | 0x8000000000000000);
  v31(v138, 0);
  v32 = v136;
  v135(v29, v136, v24);
  v138[0] = 1;
  sub_26738114C();
  v33 = v137;
  v30(v10, 0, 1, v137);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, v127, 0x8000000267449940);
  v34(v138, 0);
  v126 = "appUsageCountForEntity7Days";
  v35 = v32;
  v36 = v130;
  v37 = v135;
  v135(v29, v32, v130);
  v138[0] = 1;
  v38 = v29;
  sub_26738114C();
  v39 = v33;
  v40 = v131;
  v131(v10, 0, 1, v39);
  v41 = sub_2673811AC();
  v127 = 0xD00000000000001CLL;
  sub_266EC637C(v10, 0xD00000000000001CLL, v126 | 0x8000000000000000);
  v41(v138, 0);
  v126 = "appUsageCountForEntity14Days";
  v37(v29, v35, v36);
  v138[0] = 1;
  sub_26738114C();
  v42 = v137;
  v40(v10, 0, 1, v137);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, v127, v126 | 0x8000000000000000);
  v43(v138, 0);
  v127 = "appUsageCountForEntity28Days";
  v44 = v136;
  v45 = v36;
  v46 = v36;
  v47 = v135;
  v135(v38, v136, v46);
  v138[0] = 1;
  sub_26738114C();
  v131(v10, 0, 1, v42);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, v128, v127 | 0x8000000000000000);
  v48(v138, 0);
  v128 = "appUsageCountForEntityInf";
  v47(v38, v44, v45);
  v138[0] = 1;
  sub_26738114C();
  v49 = v137;
  v50 = v131;
  v131(v10, 0, 1, v137);
  v51 = sub_2673811AC();
  v127 = 0xD00000000000001ELL;
  sub_266EC637C(v10, 0xD00000000000001ELL, v128 | 0x8000000000000000);
  v51(v138, 0);
  v126 = "recencyOrderOfAppUsedForEntity";
  LODWORD(v128) = *MEMORY[0x277D3E510];
  v52 = v135;
  (v135)(v38);
  v138[0] = 1;
  sub_26738114C();
  v50(v10, 0, 1, v49);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, v127, v126 | 0x8000000000000000);
  v53(v138, 0);
  v127 = "timeSinceAppUsedForEntityInSec";
  v54 = v136;
  v55 = v130;
  v52(v38, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v56 = v137;
  v50(v10, 0, 1, v137);
  v57 = sub_2673811AC();
  v125 = 0xD000000000000022;
  sub_266EC637C(v10, 0xD000000000000022, v127 | 0x8000000000000000);
  v57(v138, 0);
  v127 = "EntityFromSiri2Min";
  v58 = v54;
  v59 = v55;
  v60 = v135;
  v135(v38, v54, v55);
  v138[0] = 1;
  sub_26738114C();
  v61 = v131;
  v131(v10, 0, 1, v56);
  v62 = sub_2673811AC();
  v126 = 0xD000000000000023;
  sub_266EC637C(v10, 0xD000000000000023, v127 | 0x8000000000000000);
  v62(v138, 0);
  v124 = "EntityFromSiri10Min";
  v60(v38, v58, v59);
  v138[0] = 1;
  sub_26738114C();
  v63 = v137;
  v61(v10, 0, 1, v137);
  v64 = sub_2673811AC();
  v127 = 0xD000000000000021;
  sub_266EC637C(v10, 0xD000000000000021, v124 | 0x8000000000000000);
  v64(v138, 0);
  v124 = "EntityFromSiri1Hr";
  v65 = v136;
  v66 = v130;
  v135(v38, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v67 = v131;
  v131(v10, 0, 1, v63);
  v68 = sub_2673811AC();
  v69 = v125;
  sub_266EC637C(v10, v125, v124 | 0x8000000000000000);
  v68(v138, 0);
  v124 = "EntityFromSiri6Hrs";
  v70 = v129;
  v71 = v135;
  v135(v129, v65, v66);
  v138[0] = 1;
  sub_26738114C();
  v72 = v137;
  v67(v10, 0, 1, v137);
  v73 = sub_2673811AC();
  sub_266EC637C(v10, v69, v124 | 0x8000000000000000);
  v73(v138, 0);
  v125 = "EntityFromSiri1Day";
  v74 = v70;
  v75 = v136;
  v71(v74, v136, v66);
  v138[0] = 1;
  sub_26738114C();
  v67(v10, 0, 1, v72);
  v76 = sub_2673811AC();
  sub_266EC637C(v10, v126, v125 | 0x8000000000000000);
  v76(v138, 0);
  v125 = "EntityFromSiri7Days";
  v77 = v129;
  v71(v129, v75, v66);
  v138[0] = 1;
  sub_26738114C();
  v78 = v72;
  v79 = v67;
  v67(v10, 0, 1, v78);
  v80 = sub_2673811AC();
  v126 = 0xD000000000000024;
  sub_266EC637C(v10, 0xD000000000000024, v125 | 0x8000000000000000);
  v80(v138, 0);
  v125 = "EntityFromSiri14Days";
  v81 = v136;
  v82 = v130;
  v83 = v135;
  v135(v77, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v79(v10, 0, 1, v137);
  v84 = sub_2673811AC();
  sub_266EC637C(v10, v126, v125 | 0x8000000000000000);
  v84(v138, 0);
  v126 = "EntityFromSiri28Days";
  v85 = v129;
  v83(v129, v81, v82);
  v138[0] = 1;
  sub_26738114C();
  v86 = v137;
  v79(v10, 0, 1, v137);
  v87 = sub_2673811AC();
  sub_266EC637C(v10, v127, v126 | 0x8000000000000000);
  v87(v138, 0);
  v127 = "EntityFromSiriInf";
  v88 = v135;
  v135(v85, v81, v82);
  v138[0] = 1;
  sub_26738114C();
  v89 = v86;
  v90 = v131;
  v131(v10, 0, 1, v89);
  v91 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000027, v127 | 0x8000000000000000);
  v91(v138, 0);
  v127 = "pUsageForEntityFromSiri";
  v92 = v82;
  v88(v85, v128, v82);
  v93 = v88;
  v138[0] = 1;
  sub_26738114C();
  v94 = v137;
  v90(v10, 0, 1, v137);
  v95 = sub_2673811AC();
  v128 = 0xD000000000000026;
  sub_266EC637C(v10, 0xD000000000000026, v127 | 0x8000000000000000);
  v95(v138, 0);
  v127 = "ForEntityFromSiriInSec";
  v96 = v136;
  v93(v85, v136, v92);
  v138[0] = 1;
  sub_26738114C();
  v90(v10, 0, 1, v94);
  v97 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000027, v127 | 0x8000000000000000);
  v97(v138, 0);
  v127 = "ForEntityInUsingApp2Min";
  v98 = v135;
  v135(v85, v96, v92);
  v138[0] = 1;
  sub_26738114C();
  v99 = v94;
  v100 = v131;
  v131(v10, 0, 1, v99);
  v101 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000028, v127 | 0x8000000000000000);
  v101(v138, 0);
  v127 = "ForEntityInUsingApp10Min";
  v102 = v130;
  v98(v85, v96, v130);
  v138[0] = 1;
  sub_26738114C();
  v103 = v137;
  v100(v10, 0, 1, v137);
  v104 = sub_2673811AC();
  sub_266EC637C(v10, v128, v127 | 0x8000000000000000);
  v104(v138, 0);
  v127 = "ForEntityInUsingApp1Hr";
  v105 = v129;
  v106 = v135;
  v135(v129, v96, v102);
  v138[0] = 1;
  sub_26738114C();
  v100(v10, 0, 1, v103);
  v107 = v100;
  v108 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000027, v127 | 0x8000000000000000);
  v108(v138, 0);
  v127 = "ForEntityInUsingApp6Hrs";
  v109 = v136;
  v110 = v130;
  v106(v105, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v111 = v137;
  v107(v10, 0, 1, v137);
  v112 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000027, v127 | 0x8000000000000000);
  v112(v138, 0);
  v127 = "ForEntityInUsingApp1Day";
  v113 = v129;
  v106(v129, v109, v110);
  v138[0] = 1;
  sub_26738114C();
  v114 = v111;
  v115 = v131;
  v131(v10, 0, 1, v114);
  v116 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000028, v127 | 0x8000000000000000);
  v116(v138, 0);
  v127 = "ForEntityInUsingApp7Days";
  v117 = v136;
  v118 = v130;
  v106(v113, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v115(v10, 0, 1, v137);
  v119 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000029, v127 | 0x8000000000000000);
  v119(v138, 0);
  v127 = "ForEntityInUsingApp14Days";
  v106(v113, v117, v118);
  v138[0] = 1;
  sub_26738114C();
  v120 = v137;
  v115(v10, 0, 1, v137);
  v121 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000029, v127 | 0x8000000000000000);
  v121(v138, 0);
  v106(v113, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v115(v10, 0, 1, v120);
  v122 = sub_2673811AC();
  sub_266EC637C(v10, v128, 0x8000000267449D90);
  return v122(v138, 0);
}

uint64_t sub_26704CE6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704CED0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26704CF34()
{
  result = qword_2800F3558;
  if (!qword_2800F3558)
  {
    sub_26704CF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3558);
  }

  return result;
}

unint64_t sub_26704CF8C()
{
  result = qword_2800F3560;
  if (!qword_2800F3560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3560);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v130 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v124 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v134 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E508];
  v12 = *(v3 + 104);
  v132 = v3 + 104;
  v12(v6, v11, v2);
  v138[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v131 = *(v14 + 56);
  v15 = v14 + 56;
  v137 = v13;
  v131(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  v126 = 0xD000000000000011;
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267449E20);
  v16(v138, 0);
  v128 = "appUsageCount2Min";
  v136 = v11;
  v17 = v130;
  v135 = v12;
  v12(v6, v11, v130);
  v138[0] = 1;
  sub_26738114C();
  v18 = v13;
  v19 = v15;
  v20 = v131;
  v131(v10, 0, 1, v18);
  v21 = sub_2673811AC();
  v127 = 0xD000000000000012;
  sub_266EC637C(v10, 0xD000000000000012, v128 | 0x8000000000000000);
  v21(v138, 0);
  v125 = "appUsageCount10Min";
  v12(v6, v11, v17);
  v138[0] = 1;
  sub_26738114C();
  v22 = v137;
  v20(v10, 0, 1, v137);
  v133 = v19;
  v23 = sub_2673811AC();
  v128 = 0xD000000000000010;
  sub_266EC637C(v10, 0xD000000000000010, v125 | 0x8000000000000000);
  v23(v138, 0);
  v125 = "appUsageCount1Hr";
  v129 = v6;
  v24 = v130;
  v25 = v135;
  v135(v6, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v26 = v131;
  v131(v10, 0, 1, v22);
  v27 = sub_2673811AC();
  v28 = v126;
  sub_266EC637C(v10, v126, v125 | 0x8000000000000000);
  v27(v138, 0);
  v125 = "appUsageCount6Hrs";
  v29 = v129;
  v25(v129, v136, v24);
  v138[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v22);
  v30 = v26;
  v31 = sub_2673811AC();
  sub_266EC637C(v10, v28, v125 | 0x8000000000000000);
  v31(v138, 0);
  v32 = v136;
  v135(v29, v136, v24);
  v138[0] = 1;
  sub_26738114C();
  v33 = v137;
  v30(v10, 0, 1, v137);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, v127, 0x8000000267449EC0);
  v34(v138, 0);
  v126 = "appUsageCount7Days";
  v35 = v32;
  v36 = v130;
  v37 = v135;
  v135(v29, v32, v130);
  v138[0] = 1;
  v38 = v29;
  sub_26738114C();
  v39 = v33;
  v40 = v131;
  v131(v10, 0, 1, v39);
  v41 = sub_2673811AC();
  v127 = 0xD000000000000013;
  sub_266EC637C(v10, 0xD000000000000013, v126 | 0x8000000000000000);
  v41(v138, 0);
  v126 = "appUsageCount14Days";
  v37(v29, v35, v36);
  v138[0] = 1;
  sub_26738114C();
  v42 = v137;
  v40(v10, 0, 1, v137);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, v127, v126 | 0x8000000000000000);
  v43(v138, 0);
  v127 = "appUsageCount28Days";
  v44 = v136;
  v45 = v36;
  v46 = v36;
  v47 = v135;
  v135(v38, v136, v46);
  v138[0] = 1;
  sub_26738114C();
  v131(v10, 0, 1, v42);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, v128, v127 | 0x8000000000000000);
  v48(v138, 0);
  v128 = "appUsageCountInf";
  v47(v38, v44, v45);
  v138[0] = 1;
  sub_26738114C();
  v49 = v137;
  v50 = v131;
  v131(v10, 0, 1, v137);
  v51 = sub_2673811AC();
  v127 = 0xD000000000000015;
  sub_266EC637C(v10, 0xD000000000000015, v128 | 0x8000000000000000);
  v51(v138, 0);
  v126 = "recencyOrderOfAppUsed";
  LODWORD(v128) = *MEMORY[0x277D3E510];
  v52 = v135;
  (v135)(v38);
  v138[0] = 1;
  sub_26738114C();
  v50(v10, 0, 1, v49);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, v127, v126 | 0x8000000000000000);
  v53(v138, 0);
  v127 = "timeSinceAppUsedInSec";
  v54 = v136;
  v55 = v130;
  v52(v38, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v56 = v137;
  v50(v10, 0, 1, v137);
  v57 = sub_2673811AC();
  v125 = 0xD000000000000019;
  sub_266EC637C(v10, 0xD000000000000019, v127 | 0x8000000000000000);
  v57(v138, 0);
  v127 = "appUsageCountFromSiri2Min";
  v58 = v54;
  v59 = v55;
  v60 = v135;
  v135(v38, v54, v55);
  v138[0] = 1;
  sub_26738114C();
  v61 = v131;
  v131(v10, 0, 1, v56);
  v62 = sub_2673811AC();
  v126 = 0xD00000000000001ALL;
  sub_266EC637C(v10, 0xD00000000000001ALL, v127 | 0x8000000000000000);
  v62(v138, 0);
  v124 = "appUsageCountFromSiri10Min";
  v60(v38, v58, v59);
  v138[0] = 1;
  sub_26738114C();
  v63 = v137;
  v61(v10, 0, 1, v137);
  v64 = sub_2673811AC();
  v127 = 0xD000000000000018;
  sub_266EC637C(v10, 0xD000000000000018, v124 | 0x8000000000000000);
  v64(v138, 0);
  v124 = "appUsageCountFromSiri1Hr";
  v65 = v136;
  v66 = v130;
  v135(v38, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v67 = v131;
  v131(v10, 0, 1, v63);
  v68 = sub_2673811AC();
  v69 = v125;
  sub_266EC637C(v10, v125, v124 | 0x8000000000000000);
  v68(v138, 0);
  v124 = "appUsageCountFromSiri6Hrs";
  v70 = v129;
  v71 = v135;
  v135(v129, v65, v66);
  v138[0] = 1;
  sub_26738114C();
  v72 = v137;
  v67(v10, 0, 1, v137);
  v73 = sub_2673811AC();
  sub_266EC637C(v10, v69, v124 | 0x8000000000000000);
  v73(v138, 0);
  v125 = "appUsageCountFromSiri1Day";
  v74 = v70;
  v75 = v136;
  v71(v74, v136, v66);
  v138[0] = 1;
  sub_26738114C();
  v67(v10, 0, 1, v72);
  v76 = sub_2673811AC();
  sub_266EC637C(v10, v126, v125 | 0x8000000000000000);
  v76(v138, 0);
  v125 = "appUsageCountFromSiri7Days";
  v77 = v129;
  v71(v129, v75, v66);
  v138[0] = 1;
  sub_26738114C();
  v78 = v72;
  v79 = v67;
  v67(v10, 0, 1, v78);
  v80 = sub_2673811AC();
  v126 = 0xD00000000000001BLL;
  sub_266EC637C(v10, 0xD00000000000001BLL, v125 | 0x8000000000000000);
  v80(v138, 0);
  v125 = "appUsageCountFromSiri14Days";
  v81 = v136;
  v82 = v130;
  v83 = v135;
  v135(v77, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v79(v10, 0, 1, v137);
  v84 = sub_2673811AC();
  sub_266EC637C(v10, v126, v125 | 0x8000000000000000);
  v84(v138, 0);
  v126 = "appUsageCountFromSiri28Days";
  v85 = v129;
  v83(v129, v81, v82);
  v138[0] = 1;
  sub_26738114C();
  v86 = v137;
  v79(v10, 0, 1, v137);
  v87 = sub_2673811AC();
  sub_266EC637C(v10, v127, v126 | 0x8000000000000000);
  v87(v138, 0);
  v127 = "appUsageCountFromSiriInf";
  v88 = v135;
  v135(v85, v81, v82);
  v138[0] = 1;
  sub_26738114C();
  v89 = v86;
  v90 = v131;
  v131(v10, 0, 1, v89);
  v91 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v127 | 0x8000000000000000);
  v91(v138, 0);
  v127 = "recencyOrderOfAppUsageFromSiri";
  v92 = v82;
  v88(v85, v128, v82);
  v93 = v88;
  v138[0] = 1;
  sub_26738114C();
  v94 = v137;
  v90(v10, 0, 1, v137);
  v95 = sub_2673811AC();
  v128 = 0xD00000000000001DLL;
  sub_266EC637C(v10, 0xD00000000000001DLL, v127 | 0x8000000000000000);
  v95(v138, 0);
  v127 = "timeSinceAppUsedFromSiriInSec";
  v96 = v136;
  v93(v85, v136, v92);
  v138[0] = 1;
  sub_26738114C();
  v90(v10, 0, 1, v94);
  v97 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v127 | 0x8000000000000000);
  v97(v138, 0);
  v127 = "taskAbandonCountInUsingApp2Min";
  v98 = v135;
  v135(v85, v96, v92);
  v138[0] = 1;
  sub_26738114C();
  v99 = v94;
  v100 = v131;
  v131(v10, 0, 1, v99);
  v101 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, v127 | 0x8000000000000000);
  v101(v138, 0);
  v127 = "taskAbandonCountInUsingApp10Min";
  v102 = v130;
  v98(v85, v96, v130);
  v138[0] = 1;
  sub_26738114C();
  v103 = v137;
  v100(v10, 0, 1, v137);
  v104 = sub_2673811AC();
  sub_266EC637C(v10, v128, v127 | 0x8000000000000000);
  v104(v138, 0);
  v127 = "taskAbandonCountInUsingApp1Hr";
  v105 = v129;
  v106 = v135;
  v135(v129, v96, v102);
  v138[0] = 1;
  sub_26738114C();
  v100(v10, 0, 1, v103);
  v107 = v100;
  v108 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v127 | 0x8000000000000000);
  v108(v138, 0);
  v127 = "taskAbandonCountInUsingApp6Hrs";
  v109 = v136;
  v110 = v130;
  v106(v105, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v111 = v137;
  v107(v10, 0, 1, v137);
  v112 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v127 | 0x8000000000000000);
  v112(v138, 0);
  v127 = "taskAbandonCountInUsingApp1Day";
  v113 = v129;
  v106(v129, v109, v110);
  v138[0] = 1;
  sub_26738114C();
  v114 = v111;
  v115 = v131;
  v131(v10, 0, 1, v114);
  v116 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, v127 | 0x8000000000000000);
  v116(v138, 0);
  v127 = "taskAbandonCountInUsingApp7Days";
  v117 = v136;
  v118 = v130;
  v106(v113, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v115(v10, 0, 1, v137);
  v119 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v127 | 0x8000000000000000);
  v119(v138, 0);
  v127 = "InUsingApp14Days";
  v106(v113, v117, v118);
  v138[0] = 1;
  sub_26738114C();
  v120 = v137;
  v115(v10, 0, 1, v137);
  v121 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v127 | 0x8000000000000000);
  v121(v138, 0);
  v106(v113, v136, v130);
  v138[0] = 1;
  sub_26738114C();
  v115(v10, 0, 1, v120);
  v122 = sub_2673811AC();
  sub_266EC637C(v10, v128, 0x800000026744A200);
  return v122(v138, 0);
}

uint64_t sub_26704EA8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704EAF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26704EB54()
{
  result = qword_2800F3568;
  if (!qword_2800F3568)
  {
    sub_26704EBAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3568);
  }

  return result;
}

unint64_t sub_26704EBAC()
{
  result = qword_2800F3570;
  if (!qword_2800F3570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3570);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommonAppDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = sub_26738113C();
  v45 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E530], v3);
  v43 = v4 + 104;
  v47[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v41 = *(v14 + 56);
  v15 = v14 + 56;
  v44 = v13;
  v41(v11, 0, 1, v13);
  v46 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C646E7542707061, 0xEB00000000644965);
  v16(v47, 0);
  v37 = "DependentSignals";
  LODWORD(v38) = *MEMORY[0x277D3E4E8];
  v17 = v38;
  v18 = v45;
  v12(v7, v38, v45);
  v47[0] = 1;
  sub_26738114C();
  v19 = v13;
  v20 = v41;
  v41(v11, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v37 | 0x8000000000000000);
  v21(v47, 0);
  v22 = v18;
  v12(v7, v17, v18);
  v47[0] = 1;
  sub_26738114C();
  v23 = v44;
  v20(v11, 0, 1, v44);
  v39 = a2;
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x726765726F467369, 0xEF707041646E756FLL);
  v24(v47, 0);
  v12(v7, v38, v22);
  v47[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x766C6F7365527369, 0xED00007070416465);
  v25(v47, 0);
  v38 = "isFirstPartyBundle";
  v12(v7, *MEMORY[0x277D3E500], v22);
  v47[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v38 | 0x8000000000000000);
  v26(v47, 0);
  v38 = "appScoreFromModel";
  v12(v7, *MEMORY[0x277D3E518], v45);
  v47[0] = 1;
  sub_26738114C();
  v27 = v44;
  v20(v11, 0, 1, v44);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v38 | 0x8000000000000000);
  v28(v47, 0);
  v37 = "compoundActiveBundleScore";
  LODWORD(v38) = *MEMORY[0x277D3E538];
  v40 = v12;
  (v12)(v7);
  v47[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v27);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, v37 | 0x8000000000000000);
  v29(v47, 0);
  v37 = "totalTimeSpentByUserInAppPerDay";
  v30 = v45;
  v12(v7, v38, v45);
  v47[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v37 | 0x8000000000000000);
  v31(v47, 0);
  v40(v7, *MEMORY[0x277D3E508], v30);
  v47[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v27);
  v32 = v20;
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, 0x800000026744A310);
  v33(v47, 0);
  sub_266ECB294(0, &qword_2800F3570, 0x277D58208);
  sub_266ECAF2C(&qword_2800F3568, &qword_2800F3570, 0x277D58208);
  sub_26738120C();
  v32(v11, 0, 1, v27);
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000026, 0x800000026744A330);
  v34(v47, 0);
  sub_266ECB294(0, &qword_2800F3560, 0x277D58200);
  sub_266ECAF2C(&qword_2800F3558, &qword_2800F3560, 0x277D58200);
  sub_26738120C();
  v32(v11, 0, 1, v44);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002CLL, 0x800000026744A360);
  return v35(v47, 0);
}

uint64_t sub_26704F6A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704F70C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECommonAppIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = sub_26738113C();
  v61 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E510];
  v13 = *(v4 + 104);
  v59 = v4 + 104;
  v60 = v13;
  v57 = v12;
  v13(v7, v12, v3);
  v63[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v16(v11, 0, 1, v14);
  v58 = v16;
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x75676E614C776172, 0xEB00000000656761);
  v18(v63, 0);
  v62 = v7;
  v19 = v12;
  v20 = v61;
  v60(v7, v19, v61);
  v63[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v14);
  v55 = a2;
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C61636F4C776172, 0xE900000000000065);
  v21(v63, 0);
  v53 = "IndependentSignals";
  v22 = v57;
  v23 = v20;
  v24 = v60;
  v60(v62, v57, v23);
  v63[0] = 1;
  sub_26738114C();
  v25 = v14;
  v26 = v14;
  v27 = v58;
  v58(v11, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v53 | 0x8000000000000000);
  v28(v63, 0);
  v29 = v62;
  v30 = v22;
  v31 = v61;
  v24(v62, v30, v61);
  v63[0] = 1;
  sub_26738114C();
  v27(v11, 0, 1, v25);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0x746E756F43776172, 0xEA00000000007972);
  v32(v63, 0);
  v53 = "rawStateOrProvince";
  v24(v29, v57, v31);
  v63[0] = 1;
  sub_26738114C();
  v27(v11, 0, 1, v25);
  v56 = v17;
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v53 | 0x8000000000000000);
  v33(v63, 0);
  v57 = *MEMORY[0x277D3E508];
  v34 = v57;
  v36 = v60;
  v35 = v61;
  v60(v29, v57, v61);
  v63[0] = 1;
  sub_26738114C();
  v37 = v25;
  v38 = v25;
  v39 = v58;
  v58(v11, 0, 1, v37);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0x6144746E65696C63, 0xEF6B656557664F79);
  v40(v63, 0);
  v53 = "rawRequestDeviceCategory";
  v36(v62, v34, v35);
  v63[0] = 1;
  sub_26738114C();
  v39(v11, 0, 1, v38);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v53 | 0x8000000000000000);
  v41(v63, 0);
  v53 = "rawClientHourOfDay";
  v36(v62, *MEMORY[0x277D3E4E8], v35);
  v63[0] = 1;
  sub_26738114C();
  v42 = v38;
  v39(v11, 0, 1, v38);
  v43 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, v53 | 0x8000000000000000);
  v43(v63, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(0);
  sub_26705040C(&qword_2800F33B0, type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType);
  sub_26738120C();
  v39(v11, 0, 1, v38);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x8000000267430CC0);
  v44(v63, 0);
  v54 = "isClientDaylight";
  v45 = v61;
  v46 = v60;
  v60(v62, v57, v61);
  v63[0] = 1;
  sub_26738114C();
  v47 = v58;
  v58(v11, 0, 1, v42);
  v48 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v54 | 0x8000000000000000);
  v48(v63, 0);
  v54 = "sirikitResponseCode";
  v49 = v62;
  v46(v62, v57, v45);
  v63[0] = 1;
  sub_26738114C();
  v47(v11, 0, 1, v42);
  v50 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, v54 | 0x8000000000000000);
  v50(v63, 0);
  v46(v49, *MEMORY[0x277D3E538], v61);
  v63[0] = 1;
  sub_26738114C();
  v47(v11, 0, 1, v42);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  return v51(v63, 0);
}

uint64_t sub_267050300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267050364(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26705040C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267050454()
{
  result = qword_2800F3590;
  if (!qword_2800F3590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3590);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3598, 0x277D58240);
  sub_266ECAF2C(&qword_2800F35A0, &qword_2800F3598, 0x277D58240);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000037, 0x800000026744A4F0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F35A8, 0x277D58238);
  sub_266ECAF2C(&qword_2800F35B0, &qword_2800F35A8, 0x277D58238);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000035, 0x800000026744A530);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001BLL, 0x800000026744A570);
  return v8(v10, 0);
}

uint64_t sub_26705084C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670508B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v39 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v33 = a1;
  sub_26738119C();
  v36 = "AppDependentMessageSignals";
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v3 + 104);
  v37 = v3 + 104;
  LODWORD(v32) = v11;
  v12(v6, v11, v2);
  v40 = v12;
  v41[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v38 = *(v14 + 56);
  v15 = v14 + 56;
  v38(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v36 | 0x8000000000000000);
  v16(v41, 0);
  v36 = "appAffinityScoreForMessages";
  v17 = v39;
  v12(v6, v11, v39);
  v41[0] = 1;
  sub_26738114C();
  v18 = v38;
  v38(v10, 0, 1, v13);
  v35 = v15;
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v36 | 0x8000000000000000);
  v19(v41, 0);
  v20 = v17;
  v21 = v40;
  (v40)(v6, v32, v20);
  v41[0] = 1;
  sub_26738114C();
  v34 = v13;
  v18(v10, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, 0x800000026744A640);
  v22(v41, 0);
  v32 = "ForMessagesReceived";
  LODWORD(v36) = *MEMORY[0x277D3E508];
  v23 = v39;
  v21(v6);
  v41[0] = 1;
  sub_26738114C();
  v24 = v38;
  v38(v10, 0, 1, v13);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v32 | 0x8000000000000000);
  v25(v41, 0);
  v32 = "appFreqForMessages";
  v26 = v36;
  (v40)(v6, v36, v23);
  v41[0] = 1;
  sub_26738114C();
  v27 = v34;
  v24(v10, 0, 1, v34);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v32 | 0x8000000000000000);
  v28(v41, 0);
  (v40)(v6, v26, v39);
  v41[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v27);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x800000026744A6B0);
  return v29(v41, 0);
}

uint64_t sub_267050FD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705103C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670510A0()
{
  result = qword_2800F35B8;
  if (!qword_2800F35B8)
  {
    sub_2670510F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F35B8);
  }

  return result;
}

unint64_t sub_2670510F8()
{
  result = qword_2800F35C0;
  if (!qword_2800F35C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F35C0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v39 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v33 = a1;
  sub_26738119C();
  v36 = "AppDependentPhoneCallSignals";
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v3 + 104);
  v37 = v3 + 104;
  LODWORD(v32) = v11;
  v12(v6, v11, v2);
  v40 = v12;
  v41[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v38 = *(v14 + 56);
  v15 = v14 + 56;
  v38(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v36 | 0x8000000000000000);
  v16(v41, 0);
  v36 = "appAffinityScoreForPhoneCall";
  v17 = v39;
  v12(v6, v11, v39);
  v41[0] = 1;
  sub_26738114C();
  v18 = v38;
  v38(v10, 0, 1, v13);
  v35 = v15;
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, v36 | 0x8000000000000000);
  v19(v41, 0);
  v20 = v17;
  v21 = v40;
  (v40)(v6, v32, v20);
  v41[0] = 1;
  sub_26738114C();
  v34 = v13;
  v18(v10, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, 0x800000026744A790);
  v22(v41, 0);
  v32 = "ForPhoneCallReceived";
  LODWORD(v36) = *MEMORY[0x277D3E508];
  v23 = v39;
  v21(v6);
  v41[0] = 1;
  sub_26738114C();
  v24 = v38;
  v38(v10, 0, 1, v13);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v32 | 0x8000000000000000);
  v25(v41, 0);
  v32 = "appFreqForPhoneCall";
  v26 = v36;
  (v40)(v6, v36, v23);
  v41[0] = 1;
  sub_26738114C();
  v27 = v34;
  v24(v10, 0, 1, v34);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v32 | 0x8000000000000000);
  v28(v41, 0);
  (v40)(v6, v26, v39);
  v41[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v27);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x800000026744A800);
  return v29(v41, 0);
}

uint64_t sub_2670517C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705182C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267051890()
{
  result = qword_2800F35C8;
  if (!qword_2800F35C8)
  {
    sub_2670518E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F35C8);
  }

  return result;
}

unint64_t sub_2670518E8()
{
  result = qword_2800F35D0;
  if (!qword_2800F35D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F35D0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v3 = sub_26738113C();
  v67 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v59 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12 = a2;
  sub_26738119C();
  v13 = *MEMORY[0x277D3E4E8];
  v14 = *(v4 + 104);
  v65 = v7;
  v69 = v13;
  v14(v7, v13, v3);
  v68 = v4 + 104;
  v71[0] = 1;
  sub_26738114C();
  v15 = sub_26738116C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v11, 0, 1, v15);
  v19 = v17;
  v20 = v12;
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x766C6F7365527369, 0xED00007070416465);
  v21(v71, 0);
  v60 = "AppDependentSignals";
  v22 = v65;
  v23 = v13;
  v24 = v67;
  v14(v65, v23, v67);
  v66 = v14;
  v71[0] = 1;
  sub_26738114C();
  v64 = v19;
  v19(v11, 0, 1, v15);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v60 | 0x8000000000000000);
  v25(v71, 0);
  v60 = "isResolvedContactInApp";
  v14(v22, *MEMORY[0x277D3E500], v24);
  v71[0] = 1;
  sub_26738114C();
  v70 = v15;
  v63 = v18;
  v19(v11, 0, 1, v15);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v60 | 0x8000000000000000);
  v26(v71, 0);
  v27 = v66;
  (v66)(v22, v69, v67);
  v71[0] = 1;
  sub_26738114C();
  v28 = v64;
  v64(v11, 0, 1, v15);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x726765726F467369, 0xEF707041646E756FLL);
  v29(v71, 0);
  LODWORD(v60) = *MEMORY[0x277D3E508];
  v27(v22);
  v71[0] = 1;
  sub_26738114C();
  v30 = v70;
  v28(v11, 0, 1, v70);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, 0x800000026744A310);
  v31(v71, 0);
  sub_266ECB294(0, &qword_2800F35C0, 0x277D58228);
  sub_266ECAF2C(&qword_2800F35B8, &qword_2800F35C0, 0x277D58228);
  sub_26738120C();
  v28(v11, 0, 1, v30);
  v32 = v20;
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0x536567617373656DLL, 0xEE00736C616E6769);
  v33(v71, 0);
  v59 = "appTimeSpentAffinityScore";
  sub_266ECB294(0, &qword_2800F35D0, 0x277D58230);
  sub_266ECAF2C(&qword_2800F35C8, &qword_2800F35D0, 0x277D58230);
  sub_26738120C();
  v34 = v70;
  v35 = v64;
  v64(v11, 0, 1, v70);
  v62 = v32;
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, v59 | 0x8000000000000000);
  v36(v71, 0);
  v59 = "phoneCallSignals";
  sub_266ECB294(0, &qword_2800F35D8, 0x277D58258);
  sub_266ECAF2C(&qword_2800F35E0, &qword_2800F35D8, 0x277D58258);
  sub_26738120C();
  v35(v11, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v59 | 0x8000000000000000);
  v37(v71, 0);
  v39 = v65;
  v38 = v66;
  v40 = v67;
  (v66)(v65, v69, v67);
  v71[0] = 1;
  sub_26738114C();
  v41 = v70;
  v35(v11, 0, 1, v70);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0x5074737269467369, 0xEF70704179747261);
  v42(v71, 0);
  v61 = "contactDependentSignals";
  (v38)(v39, *MEMORY[0x277D3E510], v40);
  v71[0] = 1;
  sub_26738114C();
  v43 = v41;
  v44 = v64;
  v64(v11, 0, 1, v43);
  v45 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v61 | 0x8000000000000000);
  v45(v71, 0);
  v61 = "appTimeSpentInSec";
  v46 = v39;
  v47 = v39;
  v48 = v67;
  (v38)(v47, v60, v67);
  v71[0] = 1;
  sub_26738114C();
  v49 = v70;
  v44(v11, 0, 1, v70);
  v50 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000024, v61 | 0x8000000000000000);
  v50(v71, 0);
  v51 = v69;
  v52 = v66;
  (v66)(v46, v69, v48);
  v71[0] = 1;
  sub_26738114C();
  v44(v11, 0, 1, v49);
  v53 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C75616665447369, 0xEC00000070704174);
  v53(v71, 0);
  v61 = "actLastLaunchedInSec";
  v54 = v65;
  v52(v65, v51, v48);
  v71[0] = 1;
  sub_26738114C();
  v55 = v70;
  v44(v11, 0, 1, v70);
  v56 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, v61 | 0x8000000000000000);
  v56(v71, 0);
  v52(v54, v69, v48);
  v71[0] = 1;
  sub_26738114C();
  v44(v11, 0, 1, v55);
  v57 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026744A980);
  return v57(v71, 0);
}

uint64_t sub_267052698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670526FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-v8];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v26 = "AppIndependentSignals";
  v10 = *MEMORY[0x277D3E510];
  v27 = *(v2 + 104);
  v23 = v10;
  v24 = v1;
  v27(v5, v10, v1);
  v29[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v25 = v12 + 56;
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v26 | 0x8000000000000000);
  v14(v29, 0);
  v26 = "requestOriginLocale";
  v15 = v1;
  v16 = v27;
  v27(v5, v10, v15);
  v29[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v26 | 0x8000000000000000);
  v17(v29, 0);
  v16(v5, v23, v24);
  v29[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026744AA40);
  v18(v29, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(0);
  sub_267052E48(&qword_2800F33B0, type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType);
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267430CC0);
  v19(v29, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_267052E48(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x7372655072657375, 0xEB00000000616E6FLL);
  return v20(v29, 0);
}

uint64_t sub_267052D3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267052DA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267052E48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267052E90()
{
  result = qword_2800F3598;
  if (!qword_2800F3598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3598);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v65 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v58 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v3 + 104);
  v66 = v3 + 104;
  v67 = v12;
  v63 = v11;
  v12(v6, v11, v2);
  v68[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v60 = *(v14 + 56);
  v15 = v14 + 56;
  v60(v10, 0, 1, v13);
  v64 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x800000026744AAC0);
  v16(v68, 0);
  v59 = "tyScoreForMessages";
  v17 = v65;
  v67(v6, v11, v65);
  v68[0] = 1;
  sub_26738114C();
  v18 = v60;
  v60(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002BLL, v59 | 0x8000000000000000);
  v19(v68, 0);
  v59 = "tyScoreForMessagesUsingSiri";
  v20 = v17;
  v21 = v67;
  v67(v6, v63, v20);
  v68[0] = 1;
  sub_26738114C();
  v18(v10, 0, 1, v13);
  v62 = a1;
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002ALL, v59 | 0x8000000000000000);
  v22(v68, 0);
  v59 = "tyScoreForMessagesReceived";
  v63 = *MEMORY[0x277D3E508];
  v23 = v63;
  v24 = v65;
  v21(v6, v63, v65);
  v68[0] = 1;
  sub_26738114C();
  v25 = v13;
  v61 = v13;
  v26 = v60;
  v60(v10, 0, 1, v13);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v59 | 0x8000000000000000);
  v27(v68, 0);
  v59 = "appContactFreqForMessages2Min";
  v28 = v67;
  v67(v6, v23, v24);
  v68[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v59 | 0x8000000000000000);
  v29(v68, 0);
  v59 = "appContactFreqForMessages10Min";
  v30 = v63;
  v31 = v65;
  v28(v6, v63, v65);
  v68[0] = 1;
  sub_26738114C();
  v32 = v61;
  v26(v10, 0, 1, v61);
  v33 = v26;
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v59 | 0x8000000000000000);
  v34(v68, 0);
  v59 = "appContactFreqForMessages1Hr";
  v35 = v30;
  v36 = v67;
  v67(v6, v35, v31);
  v68[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v32);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v59 | 0x8000000000000000);
  v37(v68, 0);
  v59 = "appContactFreqForMessages6Hr";
  v38 = v65;
  v36(v6, v63, v65);
  v68[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v32);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v59 | 0x8000000000000000);
  v39(v68, 0);
  v59 = "appContactFreqForMessages1Day";
  v40 = v63;
  v41 = v38;
  v36(v6, v63, v38);
  v68[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v61);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v59 | 0x8000000000000000);
  v42(v68, 0);
  v59 = "appContactFreqForMessages7Day";
  v43 = v40;
  v36(v6, v40, v41);
  v68[0] = 1;
  sub_26738114C();
  v45 = v60;
  v44 = v61;
  v60(v10, 0, 1, v61);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v59 | 0x8000000000000000);
  v46(v68, 0);
  v59 = "appContactFreqForMessages28Day";
  v47 = v43;
  v48 = v65;
  v67(v6, v47, v65);
  v68[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v44);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v59 | 0x8000000000000000);
  v49(v68, 0);
  v59 = "appContactFreqForMessagesInf";
  v50 = v63;
  v51 = v67;
  v67(v6, v63, v48);
  v68[0] = 1;
  sub_26738114C();
  v52 = v60;
  v60(v10, 0, 1, v44);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v59 | 0x8000000000000000);
  v53(v68, 0);
  v59 = "appContactFreqForMessages";
  v51(v6, v50, v48);
  v68[0] = 1;
  sub_26738114C();
  v54 = v61;
  v52(v10, 0, 1, v61);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, v59 | 0x8000000000000000);
  v55(v68, 0);
  v51(v6, v63, v65);
  v68[0] = 1;
  sub_26738114C();
  v52(v10, 0, 1, v54);
  v56 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x800000026744ACA0);
  return v56(v68, 0);
}

uint64_t sub_267053BC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267053C2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267053C90()
{
  result = qword_2800F35E8;
  if (!qword_2800F35E8)
  {
    sub_267053CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F35E8);
  }

  return result;
}

unint64_t sub_267053CE8()
{
  result = qword_2800F35F0;
  if (!qword_2800F35F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F35F0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v65 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v58 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v3 + 104);
  v66 = v3 + 104;
  v67 = v12;
  v63 = v11;
  v12(v6, v11, v2);
  v68[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v60 = *(v14 + 56);
  v15 = v14 + 56;
  v60(v10, 0, 1, v13);
  v64 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, 0x800000026744AD30);
  v16(v68, 0);
  v59 = "tyScoreForPhoneCall";
  v17 = v65;
  v67(v6, v11, v65);
  v68[0] = 1;
  sub_26738114C();
  v18 = v60;
  v60(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002CLL, v59 | 0x8000000000000000);
  v19(v68, 0);
  v59 = "tyScoreForPhoneCallUsingSiri";
  v20 = v17;
  v21 = v67;
  v67(v6, v63, v20);
  v68[0] = 1;
  sub_26738114C();
  v18(v10, 0, 1, v13);
  v62 = a1;
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002BLL, v59 | 0x8000000000000000);
  v22(v68, 0);
  v59 = "tyScoreForPhoneCallReceived";
  v63 = *MEMORY[0x277D3E508];
  v23 = v63;
  v24 = v65;
  v21(v6, v63, v65);
  v68[0] = 1;
  sub_26738114C();
  v25 = v13;
  v61 = v13;
  v26 = v60;
  v60(v10, 0, 1, v13);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v59 | 0x8000000000000000);
  v27(v68, 0);
  v59 = "appContactFreqForPhoneCall2Min";
  v28 = v67;
  v67(v6, v23, v24);
  v68[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, v59 | 0x8000000000000000);
  v29(v68, 0);
  v59 = "appContactFreqForPhoneCall10Min";
  v30 = v63;
  v31 = v65;
  v28(v6, v63, v65);
  v68[0] = 1;
  sub_26738114C();
  v32 = v61;
  v26(v10, 0, 1, v61);
  v33 = v26;
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v59 | 0x8000000000000000);
  v34(v68, 0);
  v59 = "appContactFreqForPhoneCall1Hr";
  v35 = v30;
  v36 = v67;
  v67(v6, v35, v31);
  v68[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v32);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v59 | 0x8000000000000000);
  v37(v68, 0);
  v59 = "appContactFreqForPhoneCall6Hr";
  v38 = v65;
  v36(v6, v63, v65);
  v68[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v32);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v59 | 0x8000000000000000);
  v39(v68, 0);
  v59 = "appContactFreqForPhoneCall1Day";
  v40 = v63;
  v41 = v38;
  v36(v6, v63, v38);
  v68[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v61);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v59 | 0x8000000000000000);
  v42(v68, 0);
  v59 = "appContactFreqForPhoneCall7Day";
  v43 = v40;
  v36(v6, v40, v41);
  v68[0] = 1;
  sub_26738114C();
  v45 = v60;
  v44 = v61;
  v60(v10, 0, 1, v61);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, v59 | 0x8000000000000000);
  v46(v68, 0);
  v59 = "appContactFreqForPhoneCall28Day";
  v47 = v43;
  v48 = v65;
  v67(v6, v47, v65);
  v68[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v44);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v59 | 0x8000000000000000);
  v49(v68, 0);
  v59 = "appContactFreqForPhoneCallInf";
  v50 = v63;
  v51 = v67;
  v67(v6, v63, v48);
  v68[0] = 1;
  sub_26738114C();
  v52 = v60;
  v60(v10, 0, 1, v44);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v59 | 0x8000000000000000);
  v53(v68, 0);
  v59 = "appContactFreqForPhoneCall";
  v51(v6, v50, v48);
  v68[0] = 1;
  sub_26738114C();
  v54 = v61;
  v52(v10, 0, 1, v61);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, v59 | 0x8000000000000000);
  v55(v68, 0);
  v51(v6, v63, v65);
  v68[0] = 1;
  sub_26738114C();
  v52(v10, 0, 1, v54);
  v56 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x800000026744AF10);
  return v56(v68, 0);
}

uint64_t sub_267054A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267054A84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267054AE8()
{
  result = qword_2800F35F8;
  if (!qword_2800F35F8)
  {
    sub_267054B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F35F8);
  }

  return result;
}

unint64_t sub_267054B40()
{
  result = qword_2800F3600;
  if (!qword_2800F3600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3600);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F35F0, 0x277D58248);
  sub_266ECAF2C(&qword_2800F35E8, &qword_2800F35F0, 0x277D58248);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ELL, 0x800000026744AFA0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3600, 0x277D58250);
  sub_266ECAF2C(&qword_2800F35F8, &qword_2800F3600, 0x277D58250);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000020, 0x800000026744AFC0);
  return v7(v9, 0);
}

uint64_t sub_267054E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267054EC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEConfirmationPromptContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026744B040);
  v11(v14, 0);
  type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType(0);
  sub_2670553A0(&qword_2800F3608, type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974756C6F736572, 0xEA00000000006E6FLL);
  return v12(v14, 0);
}

uint64_t sub_267055294(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670552F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670553A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670553E8()
{
  result = qword_2800F3618;
  if (!qword_2800F3618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3618);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEConfirmationResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026744B0B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026744B0E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x800000026744B110, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026744B140, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x800000026744B170, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26705572C(uint64_t a1)
{
  v2 = sub_267055830(&qword_2800F3620);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267055794(uint64_t a1, uint64_t a2)
{
  v4 = sub_267055830(&qword_2800F3620);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267055830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContact.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.inference.INFERENCEContact";
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026744B1F0);
  return v16(v21, 0);
}

uint64_t sub_267055BA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267055C0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267055C70()
{
  result = qword_2800F3628;
  if (!qword_2800F3628)
  {
    sub_267055CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3628);
  }

  return result;
}

unint64_t sub_267055CC8()
{
  result = qword_2800F3630;
  if (!qword_2800F3630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3630);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactActionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026744B250, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x800000026744B280, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026744B2B0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x800000026744B2E0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026744B310, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x800000026744B340, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26705607C(uint64_t a1)
{
  v2 = sub_267056180(&qword_2800F3640);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670560E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267056180(&qword_2800F3640);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267056180(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEContactActionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactCandidatesInfoGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v20 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v19 = "ndidatesInfoGenerated";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v18 = v8;
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, v19 | 0x8000000000000000);
  v9(v23, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64497972657571, 0xE700000000000000);
  v10(v23, 0);
  sub_266ECB294(0, &qword_2800F3648, 0x277D58290);
  sub_266ECAF2C(&qword_2800F3650, &qword_2800F3648, 0x277D58290);
  sub_26738120C();
  v11 = v18;
  v18(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026744B3E0);
  v12(v23, 0);
  type metadata accessor for INFERENCESchemaINFERENCEOntologySource(0);
  sub_2670568A8();
  sub_26738120C();
  v11(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x79676F6C6F746E6FLL, 0xEE00656372756F53);
  v13(v23, 0);
  sub_266ECB294(0, &qword_2800F3440, 0x277D581E8);
  sub_266ECAF2C(&qword_2800F3438, &qword_2800F3440, 0x277D581E8);
  sub_26738122C();
  v11(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x74616469646E6163, 0xEA00000000007365);
  v14(v23, 0);
  (*(v21 + 104))(v20, *MEMORY[0x277D3E4E8], v22);
  v23[0] = 1;
  sub_26738114C();
  v11(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x800000026744B400);
  return v15(v23, 0);
}

uint64_t sub_2670567E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267056848(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670568A8()
{
  result = qword_2800F3658;
  if (!qword_2800F3658)
  {
    type metadata accessor for INFERENCESchemaINFERENCEOntologySource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3658);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactFeatureSet.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v194 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v184 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E500];
  v195 = *(v3 + 104);
  v196 = v11;
  v195(v6, v11, v2);
  v192 = v3 + 104;
  v198[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v197 = *(v13 + 56);
  v14 = v13 + 56;
  v197(v10, 0, 1, v12);
  v190 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E656365527369, 0xE800000000000000);
  v15(v198, 0);
  v188 = "FERENCEContactFeatureSet";
  v16 = v11;
  v18 = v194;
  v17 = v195;
  v195(v6, v16, v194);
  v198[0] = 1;
  sub_26738114C();
  v19 = v197;
  v197(v10, 0, 1, v12);
  v189 = a1;
  v20 = sub_2673811AC();
  v185 = 0xD000000000000014;
  sub_266EC637C(v10, 0xD000000000000014, v188 | 0x8000000000000000);
  v20(v198, 0);
  v188 = "isRecentInSameDomain";
  v17(v6, v196, v18);
  v198[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v12);
  v21 = sub_2673811AC();
  v186 = 0xD000000000000015;
  sub_266EC637C(v10, 0xD000000000000015, v188 | 0x8000000000000000);
  v21(v198, 0);
  v188 = "isRecentInSiriRequest";
  v22 = v196;
  v24 = v194;
  v23 = v195;
  v195(v6, v196, v194);
  v198[0] = 1;
  sub_26738114C();
  v197(v10, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v188 | 0x8000000000000000);
  v25(v198, 0);
  v26 = v6;
  v23(v6, v22, v24);
  v27 = v23;
  v198[0] = 1;
  sub_26738114C();
  v193 = v12;
  v28 = v197;
  v197(v10, 0, 1, v12);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x5279636E65636572, 0xEB000000006B6E61);
  v29(v198, 0);
  v188 = "isRecentlyCorrected";
  v30 = v196;
  v31 = v194;
  v27(v26, v196, v194);
  v198[0] = 1;
  sub_26738114C();
  v28(v10, 0, 1, v12);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v188 | 0x8000000000000000);
  v32(v198, 0);
  v188 = "recencyRankInSameDomain";
  v33 = v30;
  v34 = v31;
  v35 = v195;
  v195(v26, v33, v31);
  v198[0] = 1;
  sub_26738114C();
  v197(v10, 0, 1, v193);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v188 | 0x8000000000000000);
  v36(v198, 0);
  v188 = "recencyRankInSiriRequest";
  v37 = v196;
  v35(v26, v196, v34);
  v198[0] = 1;
  sub_26738114C();
  v38 = v193;
  v39 = v197;
  v197(v10, 0, 1, v193);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v188 | 0x8000000000000000);
  v40(v198, 0);
  v191 = v26;
  v41 = v194;
  v195(v26, v37, v194);
  v198[0] = 1;
  sub_26738114C();
  v42 = v38;
  v39(v10, 0, 1, v38);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0x69726F7661467369, 0xEA00000000006574);
  v43(v198, 0);
  v188 = "isHighQualityRequestMatch";
  v44 = v196;
  v45 = v195;
  v195(v191, v196, v41);
  v198[0] = 1;
  sub_26738114C();
  v46 = v197;
  v197(v10, 0, 1, v42);
  v47 = sub_2673811AC();
  v187 = 0xD000000000000010;
  sub_266EC637C(v10, 0xD000000000000010, v188 | 0x8000000000000000);
  v47(v198, 0);
  v188 = "isMeCardRelation";
  v48 = v191;
  v49 = v44;
  v50 = v194;
  v45(v191, v49, v194);
  v198[0] = 1;
  sub_26738114C();
  v51 = v193;
  v46(v10, 0, 1, v193);
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v188 | 0x8000000000000000);
  v52(v198, 0);
  v188 = "isWeakOrganizationMatch";
  v53 = v48;
  v54 = v196;
  v55 = v195;
  v195(v53, v196, v50);
  v198[0] = 1;
  sub_26738114C();
  v56 = v197;
  v197(v10, 0, 1, v51);
  v57 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, v188 | 0x8000000000000000);
  v57(v198, 0);
  v188 = "eRanksGivenNameRank";
  v58 = v191;
  v55(v191, v54, v50);
  v198[0] = 1;
  sub_26738114C();
  v56(v10, 0, 1, v51);
  v59 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v188 | 0x8000000000000000);
  v59(v198, 0);
  v188 = "eRanksMiddleNameRank";
  v60 = v196;
  v55(v58, v196, v50);
  v198[0] = 1;
  sub_26738114C();
  v56(v10, 0, 1, v51);
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v188 | 0x8000000000000000);
  v61(v198, 0);
  v184 = "eRanksFamilyNameRank";
  v62 = v50;
  v63 = v195;
  v195(v58, v60, v62);
  v198[0] = 1;
  sub_26738114C();
  v56(v10, 0, 1, v51);
  v64 = sub_2673811AC();
  v188 = 0xD000000000000016;
  sub_266EC637C(v10, 0xD000000000000016, v184 | 0x8000000000000000);
  v64(v198, 0);
  v184 = "freqAnyGroup0MinTo2Min";
  v65 = v194;
  v63(v58, v60, v194);
  v198[0] = 1;
  sub_26738114C();
  v66 = v193;
  v56(v10, 0, 1, v193);
  v67 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v184 | 0x8000000000000000);
  v67(v198, 0);
  v184 = "freqAnyGroup2MinTo10Min";
  v68 = v195;
  v195(v58, v196, v65);
  v198[0] = 1;
  sub_26738114C();
  v56(v10, 0, 1, v66);
  v69 = sub_2673811AC();
  sub_266EC637C(v10, v188, v184 | 0x8000000000000000);
  v69(v198, 0);
  v184 = "freqAnyGroup10MinTo1Hr";
  v70 = v196;
  v68(v58, v196, v65);
  v198[0] = 1;
  sub_26738114C();
  v71 = v193;
  v56(v10, 0, 1, v193);
  v72 = sub_2673811AC();
  sub_266EC637C(v10, v185, v184 | 0x8000000000000000);
  v72(v198, 0);
  v185 = "freqAnyGroup1HrTo6Hr";
  v73 = v191;
  v74 = v194;
  v68(v191, v70, v194);
  v198[0] = 1;
  sub_26738114C();
  v75 = v197;
  v197(v10, 0, 1, v71);
  v76 = sub_2673811AC();
  sub_266EC637C(v10, v186, v185 | 0x8000000000000000);
  v76(v198, 0);
  v185 = "freqAnyGroup6HrTo1Day";
  v77 = v73;
  v78 = v73;
  v79 = v74;
  v80 = v74;
  v81 = v195;
  v195(v78, v70, v79);
  v198[0] = 1;
  sub_26738114C();
  v82 = v193;
  v75(v10, 0, 1, v193);
  v83 = sub_2673811AC();
  sub_266EC637C(v10, v188, v185 | 0x8000000000000000);
  v83(v198, 0);
  v185 = "freqAnyGroup1DayTo7Day";
  v84 = v196;
  v81(v77, v196, v80);
  v198[0] = 1;
  sub_26738114C();
  v197(v10, 0, 1, v82);
  v85 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v185 | 0x8000000000000000);
  v85(v198, 0);
  v185 = "freqAnyGroup7DayTo28Day";
  v86 = v84;
  v87 = v195;
  v195(v77, v84, v80);
  v198[0] = 1;
  sub_26738114C();
  v88 = v193;
  v89 = v197;
  v197(v10, 0, 1, v193);
  v90 = sub_2673811AC();
  sub_266EC637C(v10, v188, v185 | 0x8000000000000000);
  v90(v198, 0);
  v185 = "freqAnyGroup28DayToInf";
  v91 = v191;
  v92 = v194;
  v87(v191, v86, v194);
  v198[0] = 1;
  sub_26738114C();
  v89(v10, 0, 1, v88);
  v93 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v185 | 0x8000000000000000);
  v93(v198, 0);
  v185 = "freqSameGroup0MinTo2Min";
  v94 = v196;
  v95 = v195;
  v195(v91, v196, v92);
  v198[0] = 1;
  sub_26738114C();
  v96 = v197;
  v197(v10, 0, 1, v88);
  v97 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v185 | 0x8000000000000000);
  v97(v198, 0);
  v185 = "freqSameGroup2MinTo10Min";
  v98 = v191;
  v99 = v94;
  v100 = v194;
  v95(v191, v99, v194);
  v198[0] = 1;
  sub_26738114C();
  v96(v10, 0, 1, v88);
  v101 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v185 | 0x8000000000000000);
  v101(v198, 0);
  v185 = "freqSameGroup10MinTo1Hr";
  v102 = v196;
  v103 = v100;
  v104 = v195;
  v195(v98, v196, v100);
  v198[0] = 1;
  sub_26738114C();
  v105 = v193;
  v106 = v197;
  v197(v10, 0, 1, v193);
  v107 = sub_2673811AC();
  sub_266EC637C(v10, v186, v185 | 0x8000000000000000);
  v107(v198, 0);
  v186 = "freqSameGroup1HrTo6Hr";
  v108 = v191;
  v104(v191, v102, v103);
  v198[0] = 1;
  sub_26738114C();
  v106(v10, 0, 1, v105);
  v109 = sub_2673811AC();
  sub_266EC637C(v10, v188, v186 | 0x8000000000000000);
  v109(v198, 0);
  v186 = "freqSameGroup6HrTo1Day";
  v110 = v196;
  v111 = v103;
  v112 = v195;
  v195(v108, v196, v111);
  v198[0] = 1;
  sub_26738114C();
  v113 = v193;
  v106(v10, 0, 1, v193);
  v114 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v186 | 0x8000000000000000);
  v114(v198, 0);
  v186 = "freqSameGroup1DayTo7Day";
  v115 = v194;
  v112(v191, v110, v194);
  v198[0] = 1;
  sub_26738114C();
  v116 = v113;
  v117 = v113;
  v118 = v197;
  v197(v10, 0, 1, v117);
  v119 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v186 | 0x8000000000000000);
  v119(v198, 0);
  v186 = "freqSameGroup7DayTo28Day";
  v120 = v191;
  v121 = v196;
  v122 = v195;
  v195(v191, v196, v115);
  v198[0] = 1;
  sub_26738114C();
  v118(v10, 0, 1, v116);
  v123 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v186 | 0x8000000000000000);
  v123(v198, 0);
  v124 = v194;
  v125 = v122;
  v122(v120, v121, v194);
  v198[0] = 1;
  sub_26738114C();
  v126 = v193;
  v197(v10, 0, 1, v193);
  v127 = sub_2673811AC();
  sub_266EC637C(v10, 0x7365676775537369, 0xEB00000000646574);
  v127(v198, 0);
  v128 = v191;
  v125(v191, v121, v124);
  v198[0] = 1;
  sub_26738114C();
  v129 = v126;
  v130 = v197;
  v197(v10, 0, 1, v129);
  v131 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F636F7079487369, 0xEC0000006D736972);
  v131(v198, 0);
  v186 = "freqSameGroup28DayToInf";
  v132 = v128;
  v133 = v128;
  v134 = v194;
  v125(v133, v121, v194);
  v198[0] = 1;
  sub_26738114C();
  v135 = v193;
  v130(v10, 0, 1, v193);
  v136 = sub_2673811AC();
  sub_266EC637C(v10, v188, v186 | 0x8000000000000000);
  v136(v198, 0);
  v188 = "hasSuggestedProperties";
  v137 = v196;
  v138 = v195;
  v195(v132, v196, v134);
  v198[0] = 1;
  sub_26738114C();
  v130(v10, 0, 1, v135);
  v139 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v188 | 0x8000000000000000);
  v139(v198, 0);
  v188 = "isPartialNameMatch";
  v140 = v194;
  v138(v132, v137, v194);
  v198[0] = 1;
  sub_26738114C();
  v141 = v197;
  v197(v10, 0, 1, v135);
  v142 = sub_2673811AC();
  sub_266EC637C(v10, v187, v188 | 0x8000000000000000);
  v142(v198, 0);
  v138(v132, v137, v140);
  v198[0] = 1;
  sub_26738114C();
  v143 = v193;
  v141(v10, 0, 1, v193);
  v144 = sub_2673811AC();
  sub_266EC637C(v10, 0x79726575516C6C61, 0xEF6465686374614DLL);
  v144(v198, 0);
  v188 = "numPrimaryTokens";
  v145 = v191;
  v146 = v194;
  v138(v191, v137, v194);
  v198[0] = 1;
  sub_26738114C();
  v147 = v143;
  v148 = v197;
  v197(v10, 0, 1, v147);
  v149 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v188 | 0x8000000000000000);
  v149(v198, 0);
  v188 = "allPrimaryNameTokensAreInQuery";
  v150 = v196;
  v151 = v195;
  v195(v145, v196, v146);
  v198[0] = 1;
  sub_26738114C();
  v148(v10, 0, 1, v193);
  v152 = sub_2673811AC();
  sub_266EC637C(v10, v187, v188 | 0x8000000000000000);
  v152(v198, 0);
  v187 = "isGivenNameMatch";
  v153 = v194;
  v151(v145, v150, v194);
  v198[0] = 1;
  sub_26738114C();
  v154 = v193;
  v155 = v197;
  v197(v10, 0, 1, v193);
  v156 = sub_2673811AC();
  v188 = 0xD000000000000011;
  sub_266EC637C(v10, 0xD000000000000011, v187 | 0x8000000000000000);
  v156(v198, 0);
  v187 = "isMiddleNameMatch";
  v157 = v195;
  v195(v191, v150, v153);
  v198[0] = 1;
  sub_26738114C();
  v155(v10, 0, 1, v154);
  v158 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v187 | 0x8000000000000000);
  v158(v198, 0);
  v187 = "isFamilyNameMatch";
  v159 = v191;
  v160 = v196;
  v161 = v194;
  v157(v191, v196, v194);
  v198[0] = 1;
  sub_26738114C();
  v162 = v193;
  v163 = v197;
  v197(v10, 0, 1, v193);
  v164 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v187 | 0x8000000000000000);
  v164(v198, 0);
  v165 = v161;
  v166 = v195;
  v195(v159, v160, v165);
  v198[0] = 1;
  sub_26738114C();
  v163(v10, 0, 1, v162);
  v167 = sub_2673811AC();
  sub_266EC637C(v10, 0x616E6B63694E7369, 0xEF686374614D656DLL);
  v167(v198, 0);
  v187 = "isOrganizationNameMatch";
  v168 = v196;
  v169 = v194;
  v166(v191, v196, v194);
  v198[0] = 1;
  sub_26738114C();
  v170 = v197;
  v197(v10, 0, 1, v162);
  v171 = sub_2673811AC();
  v172 = v188;
  sub_266EC637C(v10, v188, v187 | 0x8000000000000000);
  v171(v198, 0);
  v173 = v191;
  v174 = v168;
  v175 = v195;
  v195(v191, v174, v169);
  v198[0] = 1;
  sub_26738114C();
  v176 = v193;
  v170(v10, 0, 1, v193);
  v177 = sub_2673811AC();
  sub_266EC637C(v10, v172, 0x800000026744B920);
  v177(v198, 0);
  v187 = "isNameSuffixMatch";
  v178 = v194;
  v175(v173, v196, v194);
  v198[0] = 1;
  sub_26738114C();
  v179 = v176;
  v180 = v197;
  v197(v10, 0, 1, v179);
  v181 = sub_2673811AC();
  sub_266EC637C(v10, v188, v187 | 0x8000000000000000);
  v181(v198, 0);
  v175(v173, v196, v178);
  v198[0] = 1;
  sub_26738114C();
  v180(v10, 0, 1, v193);
  v182 = sub_2673811AC();
  sub_266EC637C(v10, 0x6974616C65527369, 0xEF7361696C416E6FLL);
  return v182(v198, 0);
}

uint64_t sub_26705902C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267059090(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670590F4()
{
  result = qword_2800F3660;
  if (!qword_2800F3660)
  {
    sub_26705914C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3660);
  }

  return result;
}

unint64_t sub_26705914C()
{
  result = qword_2800F3668;
  if (!qword_2800F3668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3668);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactHandleSignalSet.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = sub_26738113C();
  v57 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v52 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12 = a2;
  sub_26738119C();
  v53 = "FERENCEContactHandleSignalSet";
  v14 = *(v4 + 104);
  v62 = *MEMORY[0x277D3E4E8];
  v13 = v62;
  v14(v7, v62, v3);
  v63 = v4 + 104;
  v64[0] = 1;
  sub_26738114C();
  v59 = sub_26738116C();
  v15 = *(v59 - 8);
  v16 = *(v15 + 56);
  v56 = v15 + 56;
  v16(v11, 0, 1, v59);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v53 | 0x8000000000000000);
  v17(v64, 0);
  v18 = v57;
  v14(v7, v13, v57);
  v64[0] = 1;
  sub_26738114C();
  v19 = v59;
  v16(v11, 0, 1, v59);
  v58 = v12;
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x69726F7661467369, 0xEA00000000006574);
  v20(v64, 0);
  v53 = "isSuggestedHandle";
  v21 = v7;
  v22 = v7;
  v23 = v62;
  v61 = v14;
  v14(v22, v62, v18);
  v64[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v53 | 0x8000000000000000);
  v24(v64, 0);
  v60 = v21;
  v25 = v23;
  v26 = v61;
  v61(v21, v25, v18);
  v64[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v19);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0x4D79726575517369, 0xEC00000068637461);
  v27(v64, 0);
  v53 = "isQueryExactMatch";
  v26(v60, v62, v18);
  v64[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v19);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v53 | 0x8000000000000000);
  v28(v64, 0);
  sub_266ECB294(0, &qword_2800F3670, 0x277D58328);
  sub_266ECAF2C(&qword_2800F3678, &qword_2800F3670, 0x277D58328);
  sub_26738120C();
  v16(v11, 0, 1, v19);
  v29 = v16;
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0x5379726F74736968, 0xEC00000073746174);
  v30(v64, 0);
  v54 = "isPartialQueryValueMatch";
  v31 = v62;
  v32 = v57;
  v61(v60, v62, v57);
  v64[0] = 1;
  sub_26738114C();
  v29(v11, 0, 1, v19);
  v33 = v29;
  v55 = v29;
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v54 | 0x8000000000000000);
  v34(v64, 0);
  v54 = "isRecentInAnyGroup";
  v35 = v61;
  v61(v60, v31, v32);
  v64[0] = 1;
  sub_26738114C();
  v36 = v59;
  v33(v11, 0, 1, v59);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v54 | 0x8000000000000000);
  v37(v64, 0);
  v38 = v60;
  v39 = v62;
  v35(v60, v62, v32);
  v64[0] = 1;
  sub_26738114C();
  v40 = v55;
  v55(v11, 0, 1, v36);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265666572507369, 0xEF65707954646572);
  v41(v64, 0);
  v42 = v32;
  v43 = v32;
  v44 = v61;
  v61(v38, v39, v43);
  v64[0] = 1;
  sub_26738114C();
  v45 = v59;
  v40(v11, 0, 1, v59);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0x65776F6C6C417369, 0xED00006570795464);
  v46(v64, 0);
  v47 = v62;
  v44(v38, v62, v42);
  v64[0] = 1;
  sub_26738114C();
  v48 = v55;
  v55(v11, 0, 1, v45);
  v49 = sub_2673811AC();
  sub_266EC637C(v11, 0x6954656361467369, 0xEE00656C6261656DLL);
  v49(v64, 0);
  v44(v38, v47, v42);
  v64[0] = 1;
  sub_26738114C();
  v48(v11, 0, 1, v59);
  v50 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x800000026744BA40);
  return v50(v64, 0);
}

uint64_t sub_267059CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267059D5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEContactMatch.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v23 = v0;
  v24 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3630, 0x277D58268);
  sub_266ECAF2C(&qword_2800F3628, &qword_2800F3630, 0x277D58268);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x56746361746E6F63, 0xEC00000065756C61);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F3690, 0x277D582A0);
  sub_266ECAF2C(&qword_2800F3698, &qword_2800F3690, 0x277D582A0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026744BAA0);
  v11(v25, 0);
  sub_266ECB294(0, &qword_2800F3420, 0x277D581D8);
  sub_266ECAF2C(&qword_2800F3418, &qword_2800F3420, 0x277D581D8);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026744BAC0);
  v12(v25, 0);
  sub_266ECB294(0, &qword_2800F3668, 0x277D58278);
  sub_266ECAF2C(&qword_2800F3660, &qword_2800F3668, 0x277D58278);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x5365727574616566, 0xEA00000000007465);
  v13(v25, 0);
  v14 = *MEMORY[0x277D3E500];
  v15 = v23;
  v16 = *(v24 + 104);
  v24 += 104;
  v17 = v22;
  v16(v22, v14, v23);
  v25[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6373, 0xE500000000000000);
  v18(v25, 0);
  v16(v17, *MEMORY[0x277D3E4E8], v15);
  v25[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x546E776F68537369, 0xED0000726573556FLL);
  return v19(v25, 0);
}

uint64_t sub_26705A48C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705A4F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEContactQueryMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v31[1] = a1;
  sub_26738119C();
  v35 = *MEMORY[0x277D3E4E8];
  v37 = *(v3 + 104);
  v37(v6);
  v38[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v32 = v11;
  v13(v10, 0, 1, v11);
  v33 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D614E736168, 0xE700000000000000);
  v15(v38, 0);
  v16 = v35;
  v36 = v2;
  v17 = v37;
  v34 = v3 + 104;
  (v37)(v6, v35, v2);
  v38[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x74616C6552736168, 0xEF706968736E6F69);
  v18(v38, 0);
  v19 = v36;
  v17(v6, v16, v36);
  v38[0] = 1;
  sub_26738114C();
  v20 = v32;
  v31[0] = v13;
  v13(v10, 0, 1, v32);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C646E6148736168, 0xEE006C6562614C65);
  v21(v38, 0);
  (v37)(v6, v16, v19);
  v38[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C646E6148736168, 0xEE0065756C615665);
  v22(v38, 0);
  v23 = v37;
  (v37)(v6, v16, v36);
  v38[0] = 1;
  sub_26738114C();
  v24 = v31[0];
  (v31[0])(v10, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x666552654D736168, 0xEE0065636E657265);
  v25(v38, 0);
  v26 = v35;
  (v23)(v6, v35, v36);
  v38[0] = 1;
  sub_26738114C();
  v27 = v32;
  v24(v10, 0, 1, v32);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x61746E6F43736168, 0xEC00000064497463);
  v28(v38, 0);
  (v37)(v6, v26, v36);
  v38[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v27);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026744BB20);
  return v29(v38, 0);
}

uint64_t sub_26705ACBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705AD20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26705AD84()
{
  result = qword_2800F3650;
  if (!qword_2800F3650)
  {
    sub_26705ADDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3650);
  }

  return result;
}

unint64_t sub_26705ADDC()
{
  result = qword_2800F3648;
  if (!qword_2800F3648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3648);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactResolutionDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x800000026744BB80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026744BBB0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026744BBE0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x800000026744BC10, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26705B0B0(uint64_t a1)
{
  v2 = sub_26705B1B4(&qword_2800F36B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26705B118(uint64_t a1, uint64_t a2)
{
  v4 = sub_26705B1B4(&qword_2800F36B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26705B1B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEContactResolutionDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026744BC80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026744BCB0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026744BCE0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x800000026744BD10, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026744BD40, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002CLL, 0x800000026744BD70, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26705B564(uint64_t a1)
{
  v2 = sub_26705B668(&qword_2800F36C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26705B5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26705B668(&qword_2800F36C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26705B668(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEContactResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactResolverConfig.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20[1] = a1;
  v1 = sub_26738113C();
  v23 = v1;
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
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v21 = v5;
  v22 = v2 + 104;
  v24 = v11;
  v11(v5, v10, v1);
  v25[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x800000026744BDE0);
  v14(v25, 0);
  type metadata accessor for INFERENCESchemaINFERENCEContactSearchSuggestedType(0);
  sub_26705BD34(&qword_2800F36D0, type metadata accessor for INFERENCESchemaINFERENCEContactSearchSuggestedType);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026744BE00);
  v15(v25, 0);
  type metadata accessor for INFERENCESchemaINFERENCEContactResolutionDomain(0);
  sub_26705BD34(&qword_2800F36B0, type metadata accessor for INFERENCESchemaINFERENCEContactResolutionDomain);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x800000026744BE20);
  v16(v25, 0);
  type metadata accessor for INFERENCESchemaINFERENCEContactActionType(0);
  sub_26705BD34(&qword_2800F3638, type metadata accessor for INFERENCESchemaINFERENCEContactActionType);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x79546E6F69746361, 0xEA00000000006570);
  v17(v25, 0);
  v24(v21, *MEMORY[0x277D3E530], v23);
  v25[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C646E7542707061, 0xEC00000073644965);
  return v18(v25, 0);
}

uint64_t sub_26705BC28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705BC8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26705BD34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26705BD7C()
{
  result = qword_2800F36E0;
  if (!qword_2800F36E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F36E0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactSearchSuggestedType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026744BE90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026744BEC0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026744BEF0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003BLL, 0x800000026744BF20, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26705C050(uint64_t a1)
{
  v2 = sub_26705C154(&qword_2800F36E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26705C0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26705C154(&qword_2800F36E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26705C154(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEContactSearchSuggestedType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactSignalSet.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a1;
  v152 = sub_26738113C();
  v155 = *(v152 - 8);
  v3 = *(v155 + 64);
  MEMORY[0x28223BE20](v152);
  v5 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v141 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F36F0, 0x277D58388);
  sub_266ECAF2C(&qword_2800F36F8, &qword_2800F36F0, 0x277D58388);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v154 = v11 + 56;
  v12(v9, 0, 1, v10);
  v151 = a2;
  v13 = sub_2673811AC();
  v146 = 0xD000000000000016;
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026744BFA0);
  v13(v156, 0);
  v144 = "speechAlternativeRanks";
  v149 = *MEMORY[0x277D3E4E8];
  v14 = v155 + 104;
  v150 = *(v155 + 104);
  v15 = v152;
  v150(v5);
  v155 = v14;
  v156[0] = 1;
  sub_26738114C();
  v153 = v10;
  v148 = v12;
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  v142 = 0xD000000000000017;
  sub_266EC637C(v9, 0xD000000000000017, v144 | 0x8000000000000000);
  v16(v156, 0);
  v143 = "isQueryStrippedOfTitles";
  v17 = v149;
  v18 = v15;
  v19 = v150;
  (v150)(v5, v149, v18);
  v156[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  v144 = 0xD000000000000012;
  sub_266EC637C(v9, 0xD000000000000012, v143 | 0x8000000000000000);
  v20(v156, 0);
  v143 = "isSuggestedContact";
  v21 = v152;
  v19(v5, v17, v152);
  v156[0] = 1;
  sub_26738114C();
  v22 = v148;
  v148(v9, 0, 1, v153);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v143 | 0x8000000000000000);
  v23(v156, 0);
  v143 = "areAllQueryTokensInContact";
  v19(v5, v149, v21);
  v156[0] = 1;
  sub_26738114C();
  v24 = v153;
  v22(v9, 0, 1, v153);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v143 | 0x8000000000000000);
  v25(v156, 0);
  v26 = v149;
  v27 = v21;
  v28 = v21;
  v29 = v150;
  (v150)(v5, v149, v28);
  v156[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v24);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F636F7079487369, 0xEC0000006D736972);
  v30(v156, 0);
  v143 = "freqSameGroup28DayToInf";
  v29(v5, v26, v27);
  v156[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v24);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, v146, v143 | 0x8000000000000000);
  v31(v156, 0);
  v146 = "hasSuggestedProperties";
  v29(v5, v26, v27);
  v156[0] = 1;
  sub_26738114C();
  v32 = v153;
  v148(v9, 0, 1, v153);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, v144, v146 | 0x8000000000000000);
  v33(v156, 0);
  v144 = "tactTokensInQuery";
  v34 = v152;
  v35 = v150;
  (v150)(v5, v26, v152);
  v156[0] = 1;
  sub_26738114C();
  v36 = v148;
  v148(v9, 0, 1, v32);
  v37 = sub_2673811AC();
  v146 = 0xD000000000000014;
  sub_266EC637C(v9, 0xD000000000000014, v144 | 0x8000000000000000);
  v37(v156, 0);
  v35(v5, v26, v34);
  v156[0] = 1;
  sub_26738114C();
  v36(v9, 0, 1, v153);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x4C4E6D6F72467369, 0xEF68637261655358);
  v38(v156, 0);
  v39 = v152;
  v35(v5, v26, v152);
  v40 = v35;
  v156[0] = 1;
  sub_26738114C();
  v41 = v153;
  v36(v9, 0, 1, v153);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0x52536D6F72467369, 0xEF68637261655352);
  v42(v156, 0);
  LODWORD(v143) = *MEMORY[0x277D3E500];
  v43 = v143;
  v40(v5, v143, v39);
  v156[0] = 1;
  sub_26738114C();
  v36(v9, 0, 1, v41);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F6353786C6ELL, 0xE800000000000000);
  v44(v156, 0);
  v45 = v43;
  v46 = v152;
  v40(v5, v45, v152);
  v156[0] = 1;
  v47 = v5;
  sub_26738114C();
  v48 = v148;
  v148(v9, 0, 1, v41);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F6353727273, 0xE800000000000000);
  v49(v156, 0);
  v147 = v47;
  v50 = v149;
  v51 = v46;
  v52 = v150;
  (v150)(v47, v149, v51);
  v156[0] = 1;
  sub_26738114C();
  v48(v9, 0, 1, v41);
  v53 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E656365527369, 0xE800000000000000);
  v53(v156, 0);
  v144 = "FERENCEContactFeatureSet";
  v54 = v147;
  v55 = v50;
  v56 = v152;
  v52(v147, v55, v152);
  v156[0] = 1;
  sub_26738114C();
  v57 = v148;
  v148(v9, 0, 1, v41);
  v58 = sub_2673811AC();
  sub_266EC637C(v9, v146, v144 | 0x8000000000000000);
  v58(v156, 0);
  v144 = "isRecentInSameDomain";
  v59 = v149;
  v52(v54, v149, v56);
  v156[0] = 1;
  sub_26738114C();
  v57(v9, 0, 1, v41);
  v60 = sub_2673811AC();
  v146 = 0xD000000000000015;
  sub_266EC637C(v9, 0xD000000000000015, v144 | 0x8000000000000000);
  v60(v156, 0);
  v144 = "isRecentInSiriRequest";
  v52(v54, v59, v152);
  v156[0] = 1;
  sub_26738114C();
  v61 = v153;
  v62 = v148;
  v148(v9, 0, 1, v153);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v144 | 0x8000000000000000);
  v63(v156, 0);
  LODWORD(v144) = *MEMORY[0x277D3E508];
  v64 = v147;
  (v52)(v147);
  v156[0] = 1;
  sub_26738114C();
  v65 = v62;
  v62(v9, 0, 1, v61);
  v66 = sub_2673811AC();
  sub_266EC637C(v9, 0x5279636E65636572, 0xEB000000006B6E61);
  v66(v156, 0);
  v141 = "isRecentlyCorrected";
  v67 = v152;
  v68 = v150;
  (v150)(v64, v144, v152);
  v156[0] = 1;
  sub_26738114C();
  v65(v9, 0, 1, v61);
  v69 = sub_2673811AC();
  sub_266EC637C(v9, v142, v141 | 0x8000000000000000);
  v69(v156, 0);
  v142 = "recencyRankInSameDomain";
  (v68)(v64, v144, v67);
  v156[0] = 1;
  sub_26738114C();
  v70 = v153;
  v65(v9, 0, 1, v153);
  v71 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v142 | 0x8000000000000000);
  v71(v156, 0);
  sub_266ECB294(0, &qword_2800F3670, 0x277D58328);
  v144 = sub_266ECAF2C(&qword_2800F3678, &qword_2800F3670, 0x277D58328);
  sub_26738120C();
  v65(v9, 0, 1, v70);
  v72 = v65;
  v73 = sub_2673811AC();
  sub_266EC637C(v9, 0x5379726F74736968, 0xEC00000073746174);
  v73(v156, 0);
  sub_26738120C();
  v74 = v153;
  v72(v9, 0, 1, v153);
  v75 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x800000026744C070);
  v75(v156, 0);
  v142 = "historyStatsInSameDomain";
  sub_26738120C();
  v72(v9, 0, 1, v74);
  v76 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v142 | 0x8000000000000000);
  v76(v156, 0);
  v77 = v147;
  v78 = v149;
  v79 = v152;
  v80 = v150;
  (v150)(v147, v149, v152);
  v156[0] = 1;
  sub_26738114C();
  v148(v9, 0, 1, v74);
  v81 = sub_2673811AC();
  sub_266EC637C(v9, 0x64726143654D7369, 0xE800000000000000);
  v81(v156, 0);
  v80(v77, v78, v79);
  v156[0] = 1;
  sub_26738114C();
  v82 = v153;
  v83 = v148;
  v148(v9, 0, 1, v153);
  v84 = sub_2673811AC();
  v142 = 0xD000000000000010;
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026744B530);
  v84(v156, 0);
  v144 = "historyStatsInSiriRequests";
  v85 = v149;
  (v150)(v77, v149, v79);
  v156[0] = 1;
  sub_26738114C();
  v83(v9, 0, 1, v82);
  v86 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v144 | 0x8000000000000000);
  v86(v156, 0);
  v87 = v150;
  (v150)(v77, v85, v79);
  v156[0] = 1;
  sub_26738114C();
  v83(v9, 0, 1, v82);
  v88 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974616C65527369, 0xEF7361696C416E6FLL);
  v88(v156, 0);
  v144 = "isMeCardRelationExactMatch";
  (v87)(v77, v149, v79);
  v156[0] = 1;
  sub_26738114C();
  v83(v9, 0, 1, v82);
  v89 = v83;
  v90 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v144 | 0x8000000000000000);
  v90(v156, 0);
  v91 = v149;
  v92 = v152;
  v93 = v150;
  (v150)(v77, v149, v152);
  v156[0] = 1;
  sub_26738114C();
  v89(v9, 0, 1, v153);
  v94 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000027, 0x800000026744C0F0);
  v94(v156, 0);
  v144 = "edFromRelationshipLabel";
  v93(v77, v91, v92);
  v156[0] = 1;
  sub_26738114C();
  v95 = v153;
  v89(v9, 0, 1, v153);
  v96 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000027, v144 | 0x8000000000000000);
  v96(v156, 0);
  v141 = "hipLabelDerivedFromName";
  v97 = v149;
  v98 = v152;
  (v150)(v77, v149, v152);
  v156[0] = 1;
  sub_26738114C();
  v89(v9, 0, 1, v95);
  v99 = sub_2673811AC();
  v144 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, v141 | 0x8000000000000000);
  v99(v156, 0);
  v100 = v150;
  (v150)(v77, v97, v98);
  v156[0] = 1;
  sub_26738114C();
  v89(v9, 0, 1, v153);
  v101 = sub_2673811AC();
  sub_266EC637C(v9, 0x69726F7661467369, 0xEA00000000006574);
  v101(v156, 0);
  v100(v147, v97, v98);
  v156[0] = 1;
  sub_26738114C();
  v102 = v153;
  v103 = v148;
  v148(v9, 0, 1, v153);
  v104 = sub_2673811AC();
  sub_266EC637C(v9, v142, 0x800000026744C170);
  v104(v156, 0);
  sub_266ECB294(0, &qword_2800F3700, 0x277D58340);
  sub_266ECAF2C(&qword_2800F3708, &qword_2800F3700, 0x277D58340);
  sub_26738120C();
  v103(v9, 0, 1, v102);
  v105 = sub_2673811AC();
  sub_266EC637C(v9, v146, 0x800000026744C190);
  v105(v156, 0);
  v142 = "requestMatchSignalSet";
  sub_266ECB294(0, &qword_2800F3688, 0x277D58280);
  sub_266ECAF2C(&qword_2800F3680, &qword_2800F3688, 0x277D58280);
  sub_26738122C();
  v103(v9, 0, 1, v102);
  v106 = v103;
  v107 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v142 | 0x8000000000000000);
  v107(v156, 0);
  v145 = "handlesWithPrivacySignalSets";
  v108 = v149;
  v109 = v152;
  v110 = v150;
  (v150)(v147, v149, v152);
  v156[0] = 1;
  sub_26738114C();
  v111 = v153;
  v103(v9, 0, 1, v153);
  v112 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v145 | 0x8000000000000000);
  v112(v156, 0);
  v145 = "hasHandleWithPreferredType";
  v113 = v147;
  v110(v147, v108, v109);
  v156[0] = 1;
  sub_26738114C();
  v103(v9, 0, 1, v111);
  v114 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v145 | 0x8000000000000000);
  v114(v156, 0);
  v145 = "hasHandleWithAllowedType";
  v115 = v152;
  v110(v113, v149, v152);
  v156[0] = 1;
  sub_26738114C();
  v103(v9, 0, 1, v153);
  v116 = sub_2673811AC();
  sub_266EC637C(v9, v144, v145 | 0x8000000000000000);
  v116(v156, 0);
  v145 = "isCommunalRequest";
  v117 = v115;
  v110(v113, v143, v115);
  v156[0] = 1;
  sub_26738114C();
  v118 = v153;
  v106(v9, 0, 1, v153);
  v119 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002ALL, v145 | 0x8000000000000000);
  v119(v156, 0);
  v120 = v149;
  v110(v113, v149, v117);
  v156[0] = 1;
  sub_26738114C();
  v106(v9, 0, 1, v118);
  v121 = sub_2673811AC();
  sub_266EC637C(v9, 0x695373756C507369, 0xEC0000006C616E67);
  v121(v156, 0);
  v122 = v120;
  v123 = v150;
  (v150)(v113, v122, v152);
  v156[0] = 1;
  sub_26738114C();
  v106(v9, 0, 1, v118);
  v124 = sub_2673811AC();
  sub_266EC637C(v9, 0x6143796C6E4F7369, 0xEF6574616469646ELL);
  v124(v156, 0);
  v145 = "alDevicesMatchingCandidate";
  v125 = v152;
  (v123)(v113, *MEMORY[0x277D3E530], v152);
  v156[0] = 1;
  sub_26738114C();
  v126 = v153;
  v106(v9, 0, 1, v153);
  v127 = sub_2673811AC();
  sub_266EC637C(v9, v146, v145 | 0x8000000000000000);
  v127(v156, 0);
  v146 = "thirdPartyAppBundleId";
  v128 = v149;
  (v150)(v113, v149, v125);
  v156[0] = 1;
  sub_26738114C();
  v106(v9, 0, 1, v126);
  v129 = sub_2673811AC();
  sub_266EC637C(v9, v144, v146 | 0x8000000000000000);
  v129(v156, 0);
  v146 = "isQueryNormalized";
  v130 = v125;
  v131 = v150;
  (v150)(v113, v128, v130);
  v156[0] = 1;
  sub_26738114C();
  v106(v9, 0, 1, v126);
  v132 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v146 | 0x8000000000000000);
  v132(v156, 0);
  v146 = "isQueryStrippedOfPunctuation";
  v133 = v152;
  v131(v113, v128, v152);
  v156[0] = 1;
  sub_26738114C();
  v106(v9, 0, 1, v126);
  v134 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v146 | 0x8000000000000000);
  v134(v156, 0);
  v146 = "isQueryStrippedOfWhitespace";
  v135 = v149;
  v136 = v150;
  (v150)(v113, v149, v133);
  v156[0] = 1;
  sub_26738114C();
  v137 = v153;
  v106(v9, 0, 1, v153);
  v138 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v146 | 0x8000000000000000);
  v138(v156, 0);
  v136(v113, v135, v152);
  v156[0] = 1;
  sub_26738114C();
  v106(v9, 0, 1, v137);
  v139 = sub_2673811AC();
  sub_266EC637C(v9, 0x5333457273417369, 0xED00006C616E6769);
  return v139(v156, 0);
}

uint64_t sub_26705E86C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705E8D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECRRTrainingSampleCollected.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_26738113C();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v60);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v54 = *MEMORY[0x277D3E530];
  v58 = *(v4 + 104);
  v59 = v4 + 104;
  v58(v7);
  v61[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x7954746E65746E69, 0xEE00656D614E6570);
  v16(v61, 0);
  sub_266ECB294(0, &qword_2800F36E0, 0x277D58298);
  sub_266ECAF2C(&qword_2800F36D8, &qword_2800F36E0, 0x277D58298);
  v57 = a1;
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265766C6F736572, 0xEE006769666E6F43);
  v17(v61, 0);
  sub_266ECB294(0, &qword_2800F3710, 0x277D58398);
  sub_266ECAF2C(&qword_2800F3718, &qword_2800F3710, 0x277D58398);
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x726E456C61697274, 0xEF746E656D6C6C6FLL);
  v18(v61, 0);
  v56 = v7;
  (v58)(v7, v54, v60);
  v61[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v19(v61, 0);
  sub_266ECB294(0, &qword_2800F36A8, 0x277D58288);
  sub_266ECAF2C(&qword_2800F36A0, &qword_2800F36A8, 0x277D58288);
  sub_26738122C();
  v14(v11, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x7365686374616DLL, 0xE700000000000000);
  v20(v61, 0);
  type metadata accessor for INFERENCESchemaINFERENCEResolutionState(0);
  sub_26705F904(&qword_2800F3720, type metadata accessor for INFERENCESchemaINFERENCEResolutionState);
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x6974756C6F736572, 0xEF65746174536E6FLL);
  v21(v61, 0);
  type metadata accessor for INFERENCESchemaINFERENCEContactResolutionType(0);
  sub_26705F904(&qword_2800F36C0, type metadata accessor for INFERENCESchemaINFERENCEContactResolutionType);
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x6974756C6F736572, 0xEE00657079546E6FLL);
  v22(v61, 0);
  sub_266ECB294(0, &qword_2800F3728, 0x277D58330);
  sub_266ECAF2C(&qword_2800F3730, &qword_2800F3728, 0x277D58330);
  sub_26738120C();
  v52 = v15;
  v53 = v14;
  v14(v11, 0, 1, v12);
  v23 = a2;
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F72506563726F66, 0xEB0000000074706DLL);
  v24(v61, 0);
  v50 = "ngSampleCollected";
  v25 = v60;
  v26 = v58;
  (v58)(v56, v54, v60);
  v61[0] = 1;
  sub_26738114C();
  v55 = v12;
  v14(v11, 0, 1, v12);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v50 | 0x8000000000000000);
  v27(v61, 0);
  v50 = "anonymizedContactIdentifiers";
  v29 = v56;
  v54 = *MEMORY[0x277D3E4E8];
  v28 = v54;
  v30 = v25;
  v31 = v26;
  (v26)(v56, v54, v30);
  v61[0] = 1;
  sub_26738114C();
  v32 = v53;
  v53(v11, 0, 1, v12);
  v51 = v23;
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v50 | 0x8000000000000000);
  v33(v61, 0);
  v50 = "isInteractionExecuted";
  v34 = v28;
  v35 = v60;
  v31(v29, v34, v60);
  v61[0] = 1;
  sub_26738114C();
  v36 = v55;
  v32(v11, 0, 1, v55);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v50 | 0x8000000000000000);
  v37(v61, 0);
  v31(v29, *MEMORY[0x277D3E538], v35);
  v61[0] = 1;
  sub_26738114C();
  v32(v11, 0, 1, v36);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, 0x800000026744C3B0);
  v38(v61, 0);
  sub_266ECB294(0, &qword_2800F3738, 0x277D58320);
  sub_266ECAF2C(&qword_2800F3740, &qword_2800F3738, 0x277D58320);
  sub_26738120C();
  v32(v11, 0, 1, v36);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026744C3D0);
  v39(v61, 0);
  v50 = "interactionContext";
  v40 = v56;
  v41 = v54;
  v42 = v60;
  v43 = v58;
  (v58)(v56, v54, v60);
  v61[0] = 1;
  sub_26738114C();
  v32(v11, 0, 1, v55);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v50 | 0x8000000000000000);
  v44(v61, 0);
  v43(v40, v41, v42);
  v61[0] = 1;
  sub_26738114C();
  v45 = v55;
  v32(v11, 0, 1, v55);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, 0x800000026744B400);
  v46(v61, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v53(v11, 0, 1, v45);
  v47 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, 0x800000026744A570);
  return v47(v61, 0);
}

uint64_t sub_26705F840(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705F8A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26705F904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static INFERENCESchemaINFERENCEDisambiguationPromptContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "ationPromptContext";
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026744C480);
  return v16(v21, 0);
}

uint64_t sub_26705FCC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705FD28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26705FD8C()
{
  result = qword_2800F3748;
  if (!qword_2800F3748)
  {
    sub_26705FDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3748);
  }

  return result;
}

unint64_t sub_26705FDE4()
{
  result = qword_2800F3750;
  if (!qword_2800F3750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3750);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEDisambiguationResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x800000026744C4F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026744C520, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000034, 0x800000026744C550, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026744C590, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2670600B4(uint64_t a1)
{
  v2 = sub_2670601B8(&qword_2800F3760);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26706011C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670601B8(&qword_2800F3760);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670601B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEDisambiguationResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEntityResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026744C600, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026744C630, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003CLL, 0x800000026744C660, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000039, 0x800000026744C6A0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267060480(uint64_t a1)
{
  v2 = sub_267060584(&qword_2800F3770);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670604E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267060584(&qword_2800F3770);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267060584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEEntityResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidDebugMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = sub_26738113C();
  v30 = *(v34 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v34);
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v31 = v9;
  v32 = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574616C706D6574, 0xEA00000000006449);
  v13(v35, 0);
  sub_266ECB294(0, &qword_2800F3778, 0x277D582B8);
  sub_266ECAF2C(&qword_2800F3780, &qword_2800F3778, 0x277D582B8);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026744C720);
  v14(v35, 0);
  sub_266ECB294(0, &qword_2800F3788, 0x277D582C8);
  sub_266ECAF2C(&qword_2800F3790, &qword_2800F3788, 0x277D582C8);
  sub_26738120C();
  v15 = v12;
  v12(v8, 0, 1, v11);
  v28[1] = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026744C740);
  v16(v35, 0);
  type metadata accessor for INFERENCESchemaINFERENCEEuclidEntityType(0);
  sub_267060E3C();
  sub_26738122C();
  v12(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026744C760);
  v17(v35, 0);
  v18 = *MEMORY[0x277D3E4E8];
  v19 = v29;
  v30 = *(v30 + 104);
  v20 = v34;
  (v30)(v29, v18, v34);
  v35[0] = 1;
  sub_26738114C();
  v15(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x657250656D4C7369, 0xEC000000746E6573);
  v21(v35, 0);
  v28[0] = "euclidEntityTypeMatched";
  v22 = v20;
  v23 = v30;
  (v30)(v19, *MEMORY[0x277D3E508], v22);
  v35[0] = 1;
  sub_26738114C();
  v15(v8, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v28[0] | 0x8000000000000000);
  v24(v35, 0);
  v23(v19, *MEMORY[0x277D3E538], v34);
  v35[0] = 1;
  sub_26738114C();
  v15(v8, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x5673776F526D756ELL, 0xEF6244726F746365);
  v25(v35, 0);
  sub_26738122C();
  v15(v8, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026744C7A0);
  return v26(v35, 0);
}

uint64_t sub_267060D78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267060DDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267060E3C()
{
  result = qword_2800F3798;
  if (!qword_2800F3798)
  {
    type metadata accessor for INFERENCESchemaINFERENCEEuclidEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3798);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidEntityType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026744C800, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026744C830, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026744C860, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x800000026744C890, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267061160(uint64_t a1)
{
  v2 = sub_267061264(&qword_2800F37A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670611C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267061264(&qword_2800F37A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267061264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEEuclidEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidScoreStatistics.makeTypeManifestAndEnsureFields(in:)()
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
  v9 = *MEMORY[0x277D3E500];
  v26 = *(v1 + 104);
  v27 = v1 + 104;
  v26(v4, v9, v0);
  v28[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v24 = v11 + 56;
  v22 = v10;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F63536E696DLL, 0xE800000000000000);
  v13(v28, 0);
  v14 = v9;
  v15 = v9;
  v23 = v9;
  v25 = v0;
  v16 = v26;
  v26(v4, v14, v0);
  v28[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F635378616DLL, 0xE800000000000000);
  v17(v28, 0);
  v16(v4, v15, v0);
  v28[0] = 1;
  sub_26738114C();
  v18 = v22;
  v12(v8, 0, 1, v22);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x63536E616964656DLL, 0xEB0000000065726FLL);
  v19(v28, 0);
  v16(v4, v23, v25);
  v28[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x726F63536E61656DLL, 0xE900000000000065);
  return v20(v28, 0);
}

uint64_t sub_267061754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670617B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706181C()
{
  result = qword_2800F3780;
  if (!qword_2800F3780)
  {
    sub_267061874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3780);
  }

  return result;
}

unint64_t sub_267061874()
{
  result = qword_2800F3778;
  if (!qword_2800F3778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3778);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidServiceMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v18[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x4933457273417369, 0xEE0064656B6F766ELL);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026744C940);
  return v15(v18, 0);
}

uint64_t sub_267061BF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267061C54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267061CB8()
{
  result = qword_2800F33E0;
  if (!qword_2800F33E0)
  {
    sub_267061D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F33E0);
  }

  return result;
}

unint64_t sub_267061D10()
{
  result = qword_2800F33D8;
  if (!qword_2800F33D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F33D8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidTrialParameters.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026744C9A0);
  v16(v28, 0);
  v22 = "euclidModelVersion";
  v17 = *MEMORY[0x277D3E500];
  v18 = v26;
  v12(v6, v17, v26);
  v28[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v22 | 0x8000000000000000);
  v19(v28, 0);
  v24(v6, v17, v18);
  v28[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v23);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x800000026744C9E0);
  return v20(v28, 0);
}

uint64_t sub_26706216C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670621D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267062234()
{
  result = qword_2800F3790;
  if (!qword_2800F3790)
  {
    sub_26706228C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3790);
  }

  return result;
}

unint64_t sub_26706228C()
{
  result = qword_2800F3788;
  if (!qword_2800F3788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3788);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEForcePromptType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026744CA40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026744CA70, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026744CA90, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x800000026744CAC0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ELL, 0x800000026744CAF0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x800000026744CB20, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000039, 0x800000026744CB50, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x800000026744CB90, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000031, 0x800000026744CBC0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_267062794(uint64_t a1)
{
  v2 = sub_267062898(&qword_2800F37B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670627FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267062898(&qword_2800F37B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267062898(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEForcePromptType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCELongRunningTaskInfo.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E540], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F697461727564, 0xEC000000734D6E49);
  return v10(v12, 0);
}

uint64_t sub_267062B30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267062B94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267062BF8()
{
  result = qword_2800F37B8;
  if (!qword_2800F37B8)
  {
    sub_267062C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F37B8);
  }

  return result;
}

unint64_t sub_267062C50()
{
  result = qword_2800F37C0;
  if (!qword_2800F37C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F37C0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEMediaSubscriptionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x800000026744CC80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026744CCB0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026744CCE0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267062EB0(uint64_t a1)
{
  v2 = sub_267062FB4(&qword_2800F37D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267062F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_267062FB4(&qword_2800F37D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267062FB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEMediaSubscriptionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F37D8, 0x277D582E8);
  sub_266ECAF2C(&qword_2800F37E0, &qword_2800F37D8, 0x277D582E8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000028, 0x800000026744CD60);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F37E8, 0x277D582E0);
  sub_266ECAF2C(&qword_2800F37F0, &qword_2800F37E8, 0x277D582E0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000026, 0x800000026744CD90);
  return v7(v9, 0);
}

uint64_t sub_2670632D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267063334(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEMusicTrainingDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v252 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v250 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v250 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v266 = a2;
  sub_26738119C();
  LODWORD(v259) = *MEMORY[0x277D3E4E8];
  v260 = *(v4 + 104);
  v264 = v4 + 104;
  v260(v7);
  v268[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v253 = *(v12 - 8);
  v13 = v253 + 56;
  v262 = *(v253 + 56);
  v262(v11, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, 0x800000026744CE10);
  v14(v268, 0);
  v257 = *MEMORY[0x277D3E518];
  v260(v7);
  v268[0] = 1;
  sub_26738114C();
  v261 = v12;
  v15 = v262;
  v262(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x800000026744A2B0);
  v16(v268, 0);
  v258 = "isClientForegroundActiveBundle";
  v17 = v257;
  v265 = v3;
  (v260)(v7, v257, v3);
  v268[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v12);
  v263 = v13;
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v258 | 0x8000000000000000);
  v18(v268, 0);
  v258 = "compoundMediaTypeBundleScore";
  v19 = v3;
  v20 = v260;
  (v260)(v7, v17, v19);
  v268[0] = 1;
  sub_26738114C();
  v21 = v261;
  v15(v11, 0, 1, v261);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, v258 | 0x8000000000000000);
  v22(v268, 0);
  v258 = "entitySearchBundleRecencyS";
  v23 = v17;
  v24 = v265;
  v20(v7, v23, v265);
  v268[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v258 | 0x8000000000000000);
  v25(v268, 0);
  v258 = "entitySearchBundleScore";
  v26 = v259;
  v20(v7, v259, v24);
  v268[0] = 1;
  sub_26738114C();
  v27 = v261;
  v15(v11, 0, 1, v261);
  v28 = sub_2673811AC();
  v255 = 0xD000000000000012;
  sub_266EC637C(v11, 0xD000000000000012, v258 | 0x8000000000000000);
  v28(v268, 0);
  v258 = "isForegroundBundle";
  v29 = v26;
  v30 = v260;
  (v260)(v7, v29, v265);
  v268[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v258 | 0x8000000000000000);
  v31(v268, 0);
  v254 = "isNowPlayingBundle";
  LODWORD(v258) = *MEMORY[0x277D3E508];
  v30(v7);
  v268[0] = 1;
  sub_26738114C();
  v32 = v261;
  v15(v11, 0, 1, v261);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v254 | 0x8000000000000000);
  v33(v268, 0);
  v254 = "nowPlayingBundleCount";
  v34 = v257;
  (v30)(v7, v257, v265);
  v268[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v254 | 0x8000000000000000);
  v35(v268, 0);
  v254 = "nowPlayingBundleRecencyS";
  v36 = v34;
  v37 = v265;
  (v30)(v7, v36, v265);
  v268[0] = 1;
  sub_26738114C();
  v262(v11, 0, 1, v32);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v254 | 0x8000000000000000);
  v38(v268, 0);
  (v30)(v7, v259, v37);
  v268[0] = 1;
  sub_26738114C();
  v39 = v32;
  v40 = v262;
  v262(v11, 0, 1, v39);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, 0x800000026744CF30);
  v41(v268, 0);
  v251 = "isNowPlayingLastBundle";
  v42 = v258;
  (v30)(v7, v258, v265);
  v268[0] = 1;
  sub_26738114C();
  v43 = v261;
  v40(v11, 0, 1, v261);
  v44 = sub_2673811AC();
  v254 = 0xD000000000000013;
  sub_266EC637C(v11, 0xD000000000000013, v251 | 0x8000000000000000);
  v44(v268, 0);
  v251 = "nowPlayingUsage1Day";
  v45 = v265;
  v46 = v260;
  (v260)(v7, v42, v265);
  v268[0] = 1;
  sub_26738114C();
  v47 = v43;
  v48 = v262;
  v262(v11, 0, 1, v47);
  v49 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v251 | 0x8000000000000000);
  v49(v268, 0);
  v251 = "nowPlayingUsage7Days";
  v46(v7, v42, v45);
  v268[0] = 1;
  sub_26738114C();
  v50 = v261;
  v48(v11, 0, 1, v261);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v251 | 0x8000000000000000);
  v51(v268, 0);
  v251 = "nowPlayingUsage14Days";
  v52 = v259;
  v46(v7, v259, v265);
  v53 = v46;
  v268[0] = 1;
  sub_26738114C();
  v54 = v50;
  v55 = v262;
  v262(v11, 0, 1, v50);
  v56 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v251 | 0x8000000000000000);
  v56(v268, 0);
  v251 = "isRawLastNowPlayingCoreDuet";
  v57 = v52;
  v58 = v265;
  v53(v7, v57, v265);
  v268[0] = 1;
  sub_26738114C();
  v55(v11, 0, 1, v50);
  v59 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, v251 | 0x8000000000000000);
  v59(v268, 0);
  v251 = "ryAudiobookSignal";
  v53(v7, v259, v58);
  v60 = v53;
  v268[0] = 1;
  sub_26738114C();
  v61 = v262;
  v262(v11, 0, 1, v50);
  v62 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v251 | 0x8000000000000000);
  v62(v268, 0);
  v251 = "isRawMediaCategoryMusicSignal";
  v60(v7, v259, v58);
  v268[0] = 1;
  sub_26738114C();
  v61(v11, 0, 1, v50);
  v63 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, v251 | 0x8000000000000000);
  v63(v268, 0);
  v251 = "isRawMediaCategoryPodcastSignal";
  v64 = v259;
  v60(v7, v259, v58);
  v268[0] = 1;
  sub_26738114C();
  v65 = v262;
  v262(v11, 0, 1, v54);
  v66 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v251 | 0x8000000000000000);
  v66(v268, 0);
  v251 = "isRawMediaCategoryRadioSignal";
  v67 = v64;
  v68 = v260;
  (v260)(v7, v67, v58);
  v268[0] = 1;
  sub_26738114C();
  v65(v11, 0, 1, v54);
  v69 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v251 | 0x8000000000000000);
  v69(v268, 0);
  v251 = "isRawMediaCategoryVideoSignal";
  v70 = v258;
  (v68)(v7, v258, v265);
  v268[0] = 1;
  sub_26738114C();
  v71 = v261;
  v65(v11, 0, 1, v261);
  v72 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v251 | 0x8000000000000000);
  v72(v268, 0);
  v251 = "rawMediaTypeUsageSignalBook";
  v73 = v265;
  (v68)(v7, v70, v265);
  v268[0] = 1;
  sub_26738114C();
  v74 = v262;
  v262(v11, 0, 1, v71);
  v75 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v251 | 0x8000000000000000);
  v75(v268, 0);
  v251 = "rawMediaTypeUsageSignalMusic";
  (v68)(v7, v258, v73);
  v268[0] = 1;
  sub_26738114C();
  v74(v11, 0, 1, v71);
  v76 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, v251 | 0x8000000000000000);
  v76(v268, 0);
  v251 = "rawMediaTypeUsageSignalPodcast";
  v77 = v265;
  (v68)(v7, v258, v265);
  v268[0] = 1;
  sub_26738114C();
  v78 = v262;
  v262(v11, 0, 1, v71);
  v79 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v251 | 0x8000000000000000);
  v79(v268, 0);
  v251 = "rawMediaTypeUsageSignalVideo";
  v80 = v258;
  (v68)(v7, v258, v77);
  v268[0] = 1;
  sub_26738114C();
  v81 = v261;
  v78(v11, 0, 1, v261);
  v82 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, v251 | 0x8000000000000000);
  v82(v268, 0);
  v251 = "rawNowPlayingCountCoreDuet10Min";
  v83 = v265;
  (v260)(v7, v80, v265);
  v268[0] = 1;
  sub_26738114C();
  v84 = v81;
  v85 = v81;
  v86 = v262;
  v262(v11, 0, 1, v85);
  v87 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, v251 | 0x8000000000000000);
  v87(v268, 0);
  v251 = "rawNowPlayingCountCoreDuet1Day";
  v88 = v260;
  (v260)(v7, v80, v83);
  v268[0] = 1;
  sub_26738114C();
  v86(v11, 0, 1, v84);
  v89 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v251 | 0x8000000000000000);
  v89(v268, 0);
  v251 = "rawNowPlayingCountCoreDuet1Hr";
  v90 = v258;
  (v88)(v7, v258, v83);
  v268[0] = 1;
  sub_26738114C();
  v91 = v84;
  v262(v11, 0, 1, v84);
  v92 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, v251 | 0x8000000000000000);
  v92(v268, 0);
  v251 = "rawNowPlayingCountCoreDuet28Day";
  v93 = v90;
  v94 = v265;
  v95 = v260;
  (v260)(v7, v90, v265);
  v268[0] = 1;
  sub_26738114C();
  v96 = v91;
  v97 = v262;
  v262(v11, 0, 1, v96);
  v98 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, v251 | 0x8000000000000000);
  v98(v268, 0);
  v251 = "rawNowPlayingCountCoreDuet2Min";
  v95(v7, v90, v94);
  v268[0] = 1;
  v99 = v7;
  sub_26738114C();
  v100 = v261;
  v97(v11, 0, 1, v261);
  v101 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v251 | 0x8000000000000000);
  v101(v268, 0);
  v251 = "rawNowPlayingCountCoreDuet6Hr";
  v256 = v99;
  v102 = v99;
  v103 = v94;
  v104 = v94;
  v105 = v260;
  (v260)(v102, v90, v104);
  v268[0] = 1;
  sub_26738114C();
  v97(v11, 0, 1, v100);
  v106 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, v251 | 0x8000000000000000);
  v106(v268, 0);
  v251 = "rawNowPlayingCountCoreDuet7Day";
  v107 = v256;
  v105(v256, v93, v103);
  v268[0] = 1;
  sub_26738114C();
  v108 = v261;
  v109 = v262;
  v262(v11, 0, 1, v261);
  v110 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v251 | 0x8000000000000000);
  v110(v268, 0);
  v251 = "rawNowPlayingRecencyCD";
  v111 = v107;
  v112 = v107;
  v113 = v260;
  (v260)(v112, v93, v103);
  v268[0] = 1;
  sub_26738114C();
  v109(v11, 0, 1, v108);
  v114 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v251 | 0x8000000000000000);
  v114(v268, 0);
  v115 = v257;
  (v113)(v111, v257, v265);
  v268[0] = 1;
  sub_26738114C();
  v116 = v261;
  v109(v11, 0, 1, v261);
  v117 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F63536567617375, 0xEF736B6F6F426572);
  v117(v268, 0);
  v118 = v265;
  v119 = v260;
  (v260)(v111, v115, v265);
  v268[0] = 1;
  sub_26738114C();
  v262(v11, 0, 1, v116);
  v120 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F63536567617375, 0xEF636973754D6572);
  v120(v268, 0);
  v251 = "rawEntitySearchRecency";
  v121 = v118;
  v119(v111, v115, v118);
  v268[0] = 1;
  sub_26738114C();
  v122 = v262;
  v262(v11, 0, 1, v116);
  v123 = sub_2673811AC();
  sub_266EC637C(v11, v255, v251 | 0x8000000000000000);
  v123(v268, 0);
  v124 = v259;
  v119(v111, v259, v121);
  v268[0] = 1;
  sub_26738114C();
  v125 = v261;
  v122(v11, 0, 1, v261);
  v126 = sub_2673811AC();
  sub_266EC637C(v11, 0x7269467070417369, 0xEF79747261507473);
  v126(v268, 0);
  v127 = v121;
  (v260)(v111, v124, v121);
  v268[0] = 1;
  sub_26738114C();
  v122(v11, 0, 1, v125);
  v128 = sub_2673811AC();
  sub_266EC637C(v11, 0x7365757165527369, 0xEE00707041646574);
  v128(v268, 0);
  v251 = "usageScorePodcasts";
  v129 = v259;
  v130 = v260;
  (v260)(v111, v259, v127);
  v268[0] = 1;
  sub_26738114C();
  v131 = v261;
  v122(v11, 0, 1, v261);
  v132 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v251 | 0x8000000000000000);
  v132(v268, 0);
  v251 = "isNowPlayingBundlePSE1";
  v133 = v265;
  v130(v111, v129, v265);
  v268[0] = 1;
  sub_26738114C();
  v134 = v131;
  v135 = v262;
  v262(v11, 0, 1, v134);
  v136 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v251 | 0x8000000000000000);
  v136(v268, 0);
  v137 = v133;
  v138 = v133;
  v139 = v130;
  v130(v111, v257, v137);
  v268[0] = 1;
  sub_26738114C();
  v140 = v261;
  v135(v11, 0, 1, v261);
  v141 = sub_2673811AC();
  sub_266EC637C(v11, 0x726F635331327176, 0xE900000000000065);
  v141(v268, 0);
  v142 = v259;
  v139(v111, v259, v138);
  v268[0] = 1;
  sub_26738114C();
  v143 = v262;
  v262(v11, 0, 1, v140);
  v144 = sub_2673811AC();
  sub_266EC637C(v11, 0x726F707075537369, 0xEF67616C46646574);
  v144(v268, 0);
  v145 = v142;
  v146 = v142;
  v147 = v265;
  v148 = v260;
  (v260)(v111, v145, v265);
  v268[0] = 1;
  sub_26738114C();
  v143(v11, 0, 1, v261);
  v149 = sub_2673811AC();
  sub_266EC637C(v11, 0x726F63696E557369, 0xED000067616C466ELL);
  v149(v268, 0);
  v251 = "isNowPlayingBundlePSE2";
  v150 = v146;
  v151 = v148;
  (v148)(v111, v150, v147);
  v268[0] = 1;
  sub_26738114C();
  v153 = v261;
  v152 = v262;
  v262(v11, 0, 1, v261);
  v154 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v251 | 0x8000000000000000);
  v154(v268, 0);
  v251 = "isSupportedUnicornMatchFlag";
  v155 = v259;
  (v151)(v111, v259, v265);
  v268[0] = 1;
  sub_26738114C();
  v152(v11, 0, 1, v153);
  v156 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v251 | 0x8000000000000000);
  v156(v268, 0);
  v251 = "isDisambiguationSelectedApp";
  v157 = v155;
  v158 = v265;
  v159 = v260;
  (v260)(v111, v157, v265);
  v268[0] = 1;
  sub_26738114C();
  v160 = v261;
  v161 = v262;
  v262(v11, 0, 1, v261);
  v162 = sub_2673811AC();
  sub_266EC637C(v11, v254, v251 | 0x8000000000000000);
  v162(v268, 0);
  v163 = v257;
  (v159)(v111, v257, v158);
  v268[0] = 1;
  sub_26738114C();
  v161(v11, 0, 1, v160);
  v164 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F63536567617375, 0xEF6F696461526572);
  v164(v268, 0);
  v251 = "isModelPredictedApp";
  v165 = v265;
  v166 = v159;
  (v159)(v111, v163, v265);
  v268[0] = 1;
  sub_26738114C();
  v167 = v262;
  v262(v11, 0, 1, v160);
  v168 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v251 | 0x8000000000000000);
  v168(v268, 0);
  v251 = "usageScoreMusicWithoutRadio";
  v169 = v256;
  v170 = v258;
  (v166)(v256, v258, v165);
  v268[0] = 1;
  sub_26738114C();
  v167(v11, 0, 1, v160);
  v171 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v251 | 0x8000000000000000);
  v171(v268, 0);
  v251 = "rawMediaTypeUsageSignalRadio";
  (v166)(v169, v170, v165);
  v268[0] = 1;
  sub_26738114C();
  v172 = v167;
  v167(v11, 0, 1, v160);
  v173 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000028, v251 | 0x8000000000000000);
  v173(v268, 0);
  type metadata accessor for INFERENCESchemaINFERENCEMediaSubscriptionStatus(0);
  sub_26706730C(&qword_2800F37C8, type metadata accessor for INFERENCESchemaINFERENCEMediaSubscriptionStatus);
  sub_26738120C();
  v167(v11, 0, 1, v160);
  v174 = sub_2673811AC();
  sub_266EC637C(v11, v255, 0x800000026744D350);
  v174(v268, 0);
  v252 = "subscriptionStatus";
  v175 = v256;
  v176 = v265;
  v177 = v260;
  (v260)(v256, v259, v265);
  v268[0] = 1;
  sub_26738114C();
  v172(v11, 0, 1, v160);
  v178 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v252 | 0x8000000000000000);
  v178(v268, 0);
  v252 = "isRawNowPlayingBundle";
  (v177)(v175, v258, v176);
  v179 = v177;
  v268[0] = 1;
  sub_26738114C();
  v180 = v262;
  v262(v11, 0, 1, v160);
  v181 = sub_2673811AC();
  sub_266EC637C(v11, v255, v252 | 0x8000000000000000);
  v181(v268, 0);
  v252 = "rawNowPlayingTotal";
  v182 = v257;
  (v179)(v175, v257, v265);
  v268[0] = 1;
  sub_26738114C();
  v180(v11, 0, 1, v160);
  v183 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v252 | 0x8000000000000000);
  v183(v268, 0);
  (v260)(v175, v182, v265);
  v268[0] = 1;
  sub_26738114C();
  v184 = v261;
  v180(v11, 0, 1, v261);
  v185 = sub_2673811AC();
  v186 = v254;
  sub_266EC637C(v11, v254, 0x800000026744D3D0);
  v185(v268, 0);
  v187 = sub_2673811AC();
  v188 = sub_266ECB6CC(v267, v186, 0x800000026744D3D0);
  v189 = *(v253 + 48);
  v253 += 48;
  v252 = v189;
  if (!(v189)(v190, 1, v184))
  {
    sub_266ECB128(&unk_287887BD0);
    sub_26738115C();
  }

  (v188)(v267, 0);
  v187(v268, 0);
  v191 = v256;
  v192 = v258;
  (v260)(v256, v258, v265);
  v268[0] = 1;
  sub_26738114C();
  v193 = v261;
  v262(v11, 0, 1, v261);
  v194 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026744D3F0);
  v194(v268, 0);
  v251 = "rawNowPlaying2Minutes";
  v195 = v265;
  v196 = v260;
  (v260)(v191, v192, v265);
  v268[0] = 1;
  sub_26738114C();
  v197 = v262;
  v262(v11, 0, 1, v193);
  v198 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v251 | 0x8000000000000000);
  v198(v268, 0);
  v251 = "rawNowPlaying10Minutes";
  v196(v191, v192, v195);
  v268[0] = 1;
  sub_26738114C();
  v199 = v261;
  v197(v11, 0, 1, v261);
  v200 = sub_2673811AC();
  sub_266EC637C(v11, v255, v251 | 0x8000000000000000);
  v200(v268, 0);
  v251 = "rawNowPlaying1Hour";
  v196(v191, v192, v265);
  v201 = v196;
  v268[0] = 1;
  sub_26738114C();
  v197(v11, 0, 1, v199);
  v202 = sub_2673811AC();
  sub_266EC637C(v11, v254, v251 | 0x8000000000000000);
  v202(v268, 0);
  v251 = "rawNowPlaying6Hours";
  v203 = v265;
  v196(v191, v258, v265);
  v268[0] = 1;
  sub_26738114C();
  v197(v11, 0, 1, v199);
  v204 = v197;
  v205 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v251 | 0x8000000000000000);
  v205(v268, 0);
  v251 = "rawNowPlaying1Day";
  v206 = v258;
  v207 = v201;
  v201(v191, v258, v203);
  v268[0] = 1;
  sub_26738114C();
  v208 = v261;
  v204(v11, 0, 1, v261);
  v209 = sub_2673811AC();
  sub_266EC637C(v11, v255, v251 | 0x8000000000000000);
  v209(v268, 0);
  v255 = "rawNowPlaying7Days";
  v210 = v265;
  v207(v191, v206, v265);
  v211 = v207;
  v268[0] = 1;
  sub_26738114C();
  v204(v11, 0, 1, v208);
  v212 = sub_2673811AC();
  sub_266EC637C(v11, v254, v255 | 0x8000000000000000);
  v212(v268, 0);
  v255 = "rawNowPlaying28Days";
  v213 = v258;
  v211(v191, v258, v210);
  v268[0] = 1;
  sub_26738114C();
  v204(v11, 0, 1, v261);
  v214 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v255 | 0x8000000000000000);
  v214(v268, 0);
  v211(v191, v213, v265);
  v268[0] = 1;
  sub_26738114C();
  v215 = v261;
  v262(v11, 0, 1, v261);
  v216 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x800000026744D4F0);
  v216(v268, 0);
  v217 = sub_2673811AC();
  v218 = sub_266ECB6CC(v267, 0xD000000000000019, 0x800000026744D4F0);
  if (!(v252)(v219, 1, v215))
  {
    sub_266ECB128(&unk_287887BF8);
    sub_26738115C();
  }

  (v218)(v267, 0);
  v217(v268, 0);
  v220 = v256;
  v221 = v259;
  v222 = v260;
  (v260)(v256, v259, v265);
  v268[0] = 1;
  sub_26738114C();
  v224 = v261;
  v223 = v262;
  v262(v11, 0, 1, v261);
  v225 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, 0x800000026744D510);
  v225(v268, 0);
  v222(v220, v221, v265);
  v268[0] = 1;
  sub_26738114C();
  v223(v11, 0, 1, v224);
  v226 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026744D530);
  v226(v268, 0);
  v227 = v221;
  v228 = v265;
  v229 = v260;
  (v260)(v220, v227, v265);
  v268[0] = 1;
  sub_26738114C();
  v230 = v224;
  v231 = v262;
  v262(v11, 0, 1, v230);
  v232 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E45746C6F427369, 0xED000064656C6261);
  v232(v268, 0);
  v259 = "isCommonForegroundApp";
  (v229)(v220, v257, v228);
  v268[0] = 1;
  sub_26738114C();
  v233 = v261;
  v231(v11, 0, 1, v261);
  v234 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, v259 | 0x8000000000000000);
  v234(v268, 0);
  v259 = "ithoutRadioRemote";
  (v229)(v220, v257, v265);
  v268[0] = 1;
  sub_26738114C();
  v231(v11, 0, 1, v233);
  v235 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v259 | 0x8000000000000000);
  v235(v268, 0);
  v236 = v257;
  (v229)(v220, v257, v265);
  v268[0] = 1;
  sub_26738114C();
  v237 = v261;
  v231(v11, 0, 1, v261);
  v238 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026744D5A0);
  v238(v268, 0);
  v259 = "usageScoreRadioRemote";
  v239 = v265;
  v240 = v260;
  (v260)(v220, v236, v265);
  v268[0] = 1;
  sub_26738114C();
  v241 = v237;
  v242 = v237;
  v243 = v262;
  v262(v11, 0, 1, v242);
  v244 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v259 | 0x8000000000000000);
  v244(v268, 0);
  v259 = "usageScorePodcastsRemote";
  v245 = v256;
  v246 = v257;
  (v240)(v256, v257, v239);
  v268[0] = 1;
  sub_26738114C();
  v243(v11, 0, 1, v241);
  v247 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v259 | 0x8000000000000000);
  v247(v268, 0);
  (v260)(v245, v246, v265);
  v268[0] = 1;
  sub_26738114C();
  v243(v11, 0, 1, v241);
  v248 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026744D600);
  return v248(v268, 0);
}