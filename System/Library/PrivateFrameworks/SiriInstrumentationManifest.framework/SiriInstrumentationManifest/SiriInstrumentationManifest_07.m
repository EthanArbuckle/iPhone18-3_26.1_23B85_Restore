uint64_t sub_266FE1744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE17A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRFeatureExtracted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F20B8, 0x277D579D0);
  sub_266ECAF2C(&qword_2800F20C0, &qword_2800F20B8, 0x277D579D0);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x656372756F73, 0xE600000000000000);
  v11(v17, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x4E65727574616566, 0xEC00000073656D61);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F20B0, 0x277D57988);
  sub_266ECAF2C(&qword_2800F20A8, &qword_2800F20B0, 0x277D57988);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365727574616566, 0xE800000000000000);
  return v13(v17, 0);
}

uint64_t sub_266FE1C50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE1CB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRFeatureExtractionContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v23 = *(v0 - 8);
  v24 = v0;
  v1 = *(v23 + 64);
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
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
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F20D8, 0x277D579A0);
  sub_266ECAF2C(&qword_2800F20E0, &qword_2800F20D8, 0x277D579A0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F20D0, 0x277D57990);
  sub_266ECAF2C(&qword_2800F20C8, &qword_2800F20D0, 0x277D57990);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
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
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_266FE2270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE22D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRFeatureExtractionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F20B8, 0x277D579D0);
  sub_266ECAF2C(&qword_2800F20C0, &qword_2800F20B8, 0x277D579D0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FE2548()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F20B8, 0x277D579D0);
  sub_266ECAF2C(&qword_2800F20C0, &qword_2800F20B8, 0x277D579D0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FE26E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE2744(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRFeatureFlag.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x4665727574616566, 0xEE0079654B67616CLL);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x656C62616E457369, 0xE900000000000064);
  return v15(v18, 0);
}

uint64_t sub_266FE2B18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE2B7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE2BE0()
{
  result = qword_2800F20E8;
  if (!qword_2800F20E8)
  {
    sub_266FE2C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F20E8);
  }

  return result;
}

unint64_t sub_266FE2C38()
{
  result = qword_2800F20F0;
  if (!qword_2800F20F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F20F0);
  }

  return result;
}

uint64_t static GRRSchemaGRRHypothesisRanked.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F20F8, 0x277D579C8);
  sub_266ECAF2C(&qword_2800F2100, &qword_2800F20F8, 0x277D579C8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73676E696B6E6172, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FE2E58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F20F8, 0x277D579C8);
  sub_266ECAF2C(&qword_2800F2100, &qword_2800F20F8, 0x277D579C8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73676E696B6E6172, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FE2FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE3058(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRHypothesisRankingContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v23 = *(v0 - 8);
  v24 = v0;
  v1 = *(v23 + 64);
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
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
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F2118, 0x277D579C0);
  sub_266ECAF2C(&qword_2800F2120, &qword_2800F2118, 0x277D579C0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F2110, 0x277D579B0);
  sub_266ECAF2C(&qword_2800F2108, &qword_2800F2110, 0x277D579B0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
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
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_266FE3614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE3678(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRHypothesisRankingStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7265567465737361, 0xEC0000006E6F6973);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F20F0, 0x277D579A8);
  sub_266ECAF2C(&qword_2800F20E8, &qword_2800F20F0, 0x277D579A8);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x4665727574616566, 0xEC0000007367616CLL);
  return v12(v14, 0);
}

uint64_t sub_266FE3A5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE3AC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRParseType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267441390, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x80000002674413B0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x80000002674413D0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x80000002674413F0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x8000000267441410, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000010, 0x8000000267441430, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x8000000267441450, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_266FE3F44(uint64_t a1)
{
  v2 = sub_266FE4048(&qword_2800F2130);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE3FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE4048(&qword_2800F2130);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE4048(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GRRSchemaGRRParseType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GRRSchemaGRRRanking.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v14 = *(v0 - 8);
  v15 = v0;
  v1 = *(v14 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496573726170, 0xE700000000000000);
  v10(v16, 0);
  type metadata accessor for GRRSchemaGRRParseType(0);
  sub_266FE4508();
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7079546573726170, 0xE900000000000065);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E518], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6373, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_266FE4444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE44A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE4508()
{
  result = qword_2800F2128;
  if (!qword_2800F2128)
  {
    type metadata accessor for GRRSchemaGRRParseType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2128);
  }

  return result;
}

uint64_t static GRRSchemaGRRSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449656372756F73, 0xE800000000000000);
  v6(v9, 0);
  type metadata accessor for GRRSchemaGRRSourceType(0);
  sub_266FE48F4();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954656372756F73, 0xEA00000000006570);
  return v7(v9, 0);
}

uint64_t sub_266FE4830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE4894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE48F4()
{
  result = qword_2800F2138;
  if (!qword_2800F2138)
  {
    type metadata accessor for GRRSchemaGRRSourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2138);
  }

  return result;
}

uint64_t static GRRSchemaGRRSourceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267441500, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x8000000267441520, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267441540, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x8000000267441560, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267441580, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x80000002674415A0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x80000002674415C0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_266FE4D68(uint64_t a1)
{
  v2 = sub_266FE4E6C(&qword_2800F2140);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE4DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE4E6C(&qword_2800F2140);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE4E6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GRRSchemaGRRSourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GRRSchemaGRRStringList.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x614E676E69727473, 0xEA0000000000656DLL);
  return v10(v12, 0);
}

uint64_t sub_266FE5100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE5164(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE51C8()
{
  result = qword_2800F20A0;
  if (!qword_2800F20A0)
  {
    sub_266FE5220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F20A0);
  }

  return result;
}

unint64_t sub_266FE5220()
{
  result = qword_2800F2098;
  if (!qword_2800F2098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2098);
  }

  return result;
}

uint64_t static GRRSchemaGRRSystemErrorOccurred.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GRRSchemaGRRErrorCode(0);
  sub_266FE56AC(&qword_2800F2088, type metadata accessor for GRRSchemaGRRErrorCode);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x73654D726F727265, 0xEC00000065676173);
  return v11(v15, 0);
}

uint64_t sub_266FE55A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE5604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FE56AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FE56F4()
{
  result = qword_2800F2050;
  if (!qword_2800F2050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2050);
  }

  return result;
}

uint64_t static HALSchemaHALAction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267441670, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v134;

  v1(v156, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267441690, v11);
  v12 = *v9;
  *v9 = v135;

  v7(v156, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x80000002674416B0, v17);
  v18 = *v15;
  *v15 = v136;

  v13(v156, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674416E0, v23);
  v24 = *v21;
  *v21 = v137;

  v19(v156, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x8000000267441700, v29);
  v30 = *v27;
  *v27 = v138;

  v25(v156, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x8000000267441730, v35);
  v36 = *v33;
  *v33 = v139;

  v31(v156, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x8000000267441750, v41);
  v42 = *v39;
  *v39 = v140;

  v37(v156, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000019, 0x8000000267441770, v47);
  v48 = *v45;
  *v45 = v141;

  v43(v156, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000019, 0x8000000267441790, v53);
  v54 = *v51;
  *v51 = v142;

  v49(v156, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x80000002674417B0, v59);
  v60 = *v57;
  *v57 = v143;

  v55(v156, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x80000002674417E0, v65);
  v66 = *v63;
  *v63 = v144;

  v61(v156, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x8000000267441810, v71);
  v72 = *v69;
  *v69 = v145;

  v67(v156, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000022, 0x8000000267441840, v77);
  v78 = *v75;
  *v75 = v146;

  v73(v156, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000021, 0x8000000267441870, v83);
  v84 = *v81;
  *v81 = v147;

  v79(v156, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000020, 0x80000002674418A0, v89);
  v90 = *v87;
  *v87 = v148;

  v85(v156, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000018, 0x80000002674418D0, v95);
  v96 = *v93;
  *v93 = v149;

  v91(v156, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000017, 0x80000002674418F0, v101);
  v102 = *v99;
  *v99 = v150;

  v97(v156, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000016, 0x8000000267441910, v107);
  v108 = *v105;
  *v105 = v151;

  v103(v156, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000016, 0x8000000267441930, v113);
  v114 = *v111;
  *v111 = v152;

  v109(v156, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000017, 0x8000000267441950, v119);
  v120 = *v117;
  *v117 = v153;

  v115(v156, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000015, 0x8000000267441970, v125);
  v126 = *v123;
  *v123 = v154;

  v121(v156, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000020, 0x8000000267441990, v131);
  v132 = *v129;
  *v129 = v155;

  return v127(v156, 0);
}

uint64_t sub_266FE61AC(uint64_t a1)
{
  v2 = sub_266FE62B0(&qword_2800F2150);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE6214(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE62B0(&qword_2800F2150);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE62B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALActionResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674419F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267441A10, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267441A30, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267441A50, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FE6578(uint64_t a1)
{
  v2 = sub_266FE667C(&qword_2800F2160);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE65E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE667C(&qword_2800F2160);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE667C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALActionResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALAlarmContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x8000000267441AB0);
  return v10(v12, 0);
}

uint64_t sub_266FE6910(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE6974(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE69D8()
{
  result = qword_2800F2168;
  if (!qword_2800F2168)
  {
    sub_266FE6A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2168);
  }

  return result;
}

unint64_t sub_266FE6A30()
{
  result = qword_2800F2170;
  if (!qword_2800F2170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2170);
  }

  return result;
}

uint64_t static HALSchemaHALClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2178, 0x277D579F8);
  sub_266ECAF2C(&qword_2800F2180, &qword_2800F2178, 0x277D579F8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F2188, 0x277D57A40);
  sub_266ECAF2C(&qword_2800F2190, &qword_2800F2188, 0x277D57A40);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267441B00);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F2198, 0x277D57A88);
  sub_266ECAF2C(&qword_2800F21A0, &qword_2800F2198, 0x277D57A88);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267441B20);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F21A8, 0x277D57A20);
  sub_266ECAF2C(&qword_2800F21B0, &qword_2800F21A8, 0x277D57A20);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x8000000267441B40);
  v12(v30, 0);
  sub_266ECB294(0, &qword_2800F21B8, 0x277D57A68);
  sub_266ECAF2C(&qword_2800F21C0, &qword_2800F21B8, 0x277D57A68);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267441B60);
  v13(v30, 0);
  sub_266ECB294(0, &qword_2800F21C8, 0x277D57A10);
  sub_266ECAF2C(&qword_2800F21D0, &qword_2800F21C8, 0x277D57A10);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x8000000267441B80);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F21D8, 0x277D57A00);
  sub_266ECAF2C(&qword_2800F21E0, &qword_2800F21D8, 0x277D57A00);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x8000000267441BA0);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F21E8, 0x277D57AB0);
  sub_266ECAF2C(&qword_2800F21F0, &qword_2800F21E8, 0x277D57AB0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x8000000267441BD0);
  v17(v30, 0);
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
  (*(v28 + 32))(v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v16, v29);
  v18(v30, 0);
  sub_266ECB128(&unk_287886640);
  return sub_2673811CC();
}

uint64_t sub_266FE73B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FE7450()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FE751C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE7580(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FE75E0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F21F8, &qword_2800F1ED0, 0x277D579F0);
  a1[2] = sub_266ECAF2C(&qword_2800F2200, &qword_2800F1ED0, 0x277D579F0);
  result = sub_266ECAF2C(&qword_2800F2208, &qword_2800F1ED0, 0x277D579F0);
  a1[3] = result;
  return result;
}

uint64_t static HALSchemaHALClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v19 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v20 = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v18 = *(v7 + 56);
  v18(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496C6168, 0xE500000000000000);
  v8(v22, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v21, 0x64496C6168, 0xE500000000000000);
  v17 = *(v7 + 48);
  if (!v17(v11, 1, v6))
  {
    sub_266ECB128(&unk_287886678);
    sub_26738115C();
  }

  (v10)(v21, 0);
  v9(v22, 0);
  sub_26738120C();
  v18(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x4974736575716572, 0xE900000000000064);
  v12(v22, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0x4974736575716572, 0xE900000000000064);
  if (!v17(v15, 1, v6))
  {
    sub_266ECB128(&unk_2878866A8);
    sub_26738115C();
  }

  (v14)(v21, 0);
  return v13(v22, 0);
}

uint64_t sub_266FE7AA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE7B04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALCompanionDeviceCommunicationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2210, 0x277D57A08);
  sub_266ECAF2C(&qword_2800F2218, &qword_2800F2210, 0x277D57A08);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
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

uint64_t sub_266FE7F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE7F78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALCompanionDeviceCommunicationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for HALSchemaHALConnectionType(0);
  sub_266FE845C(&qword_2800F2220, type metadata accessor for HALSchemaHALConnectionType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x697463656E6E6F63, 0xEE00657079546E6FLL);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267441CA0);
  return v11(v15, 0);
}

uint64_t sub_266FE8350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE83B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FE845C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FE84A4()
{
  result = qword_2800F2210;
  if (!qword_2800F2210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2210);
  }

  return result;
}

uint64_t static HALSchemaHALCompanionDeviceDiscoveryContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2228, 0x277D57A18);
  sub_266ECAF2C(&qword_2800F2230, &qword_2800F2228, 0x277D57A18);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
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

uint64_t sub_266FE885C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE88C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALCompanionDeviceDiscoveryEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v30 = a1;
  v31 = sub_26738113C();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALDiscoveryType(0);
  sub_266FE9010(&qword_2800F2238, type metadata accessor for HALSchemaHALDiscoveryType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v26 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265766F63736964, 0xED00006570795479);
  v13(v32, 0);
  v14 = *MEMORY[0x277D3E4E8];
  v15 = v1 + 104;
  v16 = *(v1 + 104);
  v27 = v15;
  v29 = v14;
  v17 = v31;
  v16(v4, v14, v31);
  v32[0] = 1;
  sub_26738114C();
  v28 = v12;
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x69766544654D7369, 0xEA00000000006563);
  v18(v32, 0);
  v25 = "nionDeviceDiscoveryEnded";
  v16(v4, v14, v17);
  v32[0] = 1;
  sub_26738114C();
  v19 = v26;
  v26(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v25 | 0x8000000000000000);
  v20(v32, 0);
  v16(v4, v29, v31);
  v32[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267441D60);
  v21(v32, 0);
  type metadata accessor for HALSchemaHALDeviceProximity(0);
  sub_266FE9010(&qword_2800F2240, type metadata accessor for HALSchemaHALDeviceProximity);
  sub_26738120C();
  v19(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x7250656369766564, 0xEF7974696D69786FLL);
  return v22(v32, 0);
}

uint64_t sub_266FE8F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE8F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FE9010(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FE9058()
{
  result = qword_2800F2228;
  if (!qword_2800F2228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2228);
  }

  return result;
}

uint64_t static HALSchemaHALConnectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267441DB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267441DD0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x8000000267441DF0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FE92B8(uint64_t a1)
{
  v2 = sub_266FE93BC(&qword_2800F2248);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE9320(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE93BC(&qword_2800F2248);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE93BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALConnectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALContextCollectorFetchContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2250, 0x277D57A38);
  sub_266ECAF2C(&qword_2800F2258, &qword_2800F2250, 0x277D57A38);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F2260, 0x277D57A28);
  sub_266ECAF2C(&qword_2800F2268, &qword_2800F2260, 0x277D57A28);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F2270, 0x277D57A30);
  sub_266ECAF2C(&qword_2800F2278, &qword_2800F2270, 0x277D57A30);
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

uint64_t sub_266FE99DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE9A40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALContextCollectorFetchEnded.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267441E90);
  return v10(v12, 0);
}

uint64_t sub_266FE9D34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE9D98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE9DFC()
{
  result = qword_2800F2268;
  if (!qword_2800F2268)
  {
    sub_266FE9E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2268);
  }

  return result;
}

unint64_t sub_266FE9E54()
{
  result = qword_2800F2260;
  if (!qword_2800F2260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2260);
  }

  return result;
}

uint64_t static HALSchemaHALContextCollectorFetchFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FEA30C(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEA06C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FEA30C(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEA200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEA264(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEA30C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FEA354()
{
  result = qword_2800F2270;
  if (!qword_2800F2270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2270);
  }

  return result;
}

uint64_t static HALSchemaHALContextCollectorFetchStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267441F30);
  return v10(v12, 0);
}

uint64_t sub_266FEA5F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEA654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEA6B8()
{
  result = qword_2800F2258;
  if (!qword_2800F2258)
  {
    sub_266FEA710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2258);
  }

  return result;
}

unint64_t sub_266FEA710()
{
  result = qword_2800F2250;
  if (!qword_2800F2250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2250);
  }

  return result;
}

uint64_t static HALSchemaHALContextFetchFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267441F90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267441FC0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x8000000267441FF0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ALL, 0x8000000267442030, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FEA9E4(uint64_t a1)
{
  v2 = sub_266FEAAE8(&qword_2800F2288);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FEAA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FEAAE8(&qword_2800F2288);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FEAAE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALContextFetchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALCrossDeviceCommandExecutionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2290, 0x277D57A58);
  sub_266ECAF2C(&qword_2800F2298, &qword_2800F2290, 0x277D57A58);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F22A0, 0x277D57A48);
  sub_266ECAF2C(&qword_2800F22A8, &qword_2800F22A0, 0x277D57A48);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F22B0, 0x277D57A50);
  sub_266ECAF2C(&qword_2800F22B8, &qword_2800F22B0, 0x277D57A50);
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

uint64_t sub_266FEB044(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEB0A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALCrossDeviceCommandExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F22C0, 0x277D57A60);
  sub_266ECAF2C(&qword_2800F22C8, &qword_2800F22C0, 0x277D57A60);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x64657463656C6573, 0xE800000000000000);
  v6(v11, 0);
  type metadata accessor for HALSchemaHALAction(0);
  sub_266FEB648(&qword_2800F2148, type metadata accessor for HALSchemaHALAction);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  v7(v11, 0);
  type metadata accessor for HALSchemaHALActionResult(0);
  sub_266FEB648(&qword_2800F2158, type metadata accessor for HALSchemaHALActionResult);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x65526E6F69746361, 0xEC000000746C7573);
  v8(v11, 0);
  type metadata accessor for HALSchemaHALHomeKitTarget(0);
  sub_266FEB648(&qword_2800F22D0, type metadata accessor for HALSchemaHALHomeKitTarget);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x5474694B656D6F68, 0xED00007465677261);
  return v9(v11, 0);
}

uint64_t sub_266FEB584(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEB5E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEB648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static HALSchemaHALCrossDeviceCommandExecutionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALFailureReason(0);
  sub_266FEBA80(&qword_2800F22D8, type metadata accessor for HALSchemaHALFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  type metadata accessor for HALSchemaHALAction(0);
  sub_266FEBA80(&qword_2800F2148, type metadata accessor for HALSchemaHALAction);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_266FEB974(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEB9D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEBA80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FEBAC8()
{
  result = qword_2800F22B0;
  if (!qword_2800F22B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F22B0);
  }

  return result;
}

uint64_t static HALSchemaHALCrossDeviceCommandExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FEBD5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEBDC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEBE24()
{
  result = qword_2800F2298;
  if (!qword_2800F2298)
  {
    sub_266FEBE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2298);
  }

  return result;
}

unint64_t sub_266FEBE7C()
{
  result = qword_2800F2290;
  if (!qword_2800F2290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2290);
  }

  return result;
}

uint64_t static HALSchemaHALDevice.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALDeviceProximity(0);
  sub_266FEC84C(&qword_2800F2240, type metadata accessor for HALSchemaHALDeviceProximity);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x7250656369766564, 0xEF7974696D69786FLL);
  v10(v22, 0);
  type metadata accessor for SISchemaDeviceFamily(0);
  sub_266FEC84C(&qword_2800F0770, type metadata accessor for SISchemaDeviceFamily);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6146656369766564, 0xEC000000796C696DLL);
  v11(v22, 0);
  (*(v20 + 104))(v3, *MEMORY[0x277D3E530], v21);
  v22[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x75426D6574737973, 0xEB00000000646C69);
  v12(v22, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_266FEC84C(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x75706E4969726973, 0xEF656C61636F4C74);
  v13(v22, 0);
  sub_266ECB294(0, &qword_2800F22E0, 0x277D57AA8);
  sub_266ECAF2C(&qword_2800F22E8, &qword_2800F22E0, 0x277D57AA8);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267431780);
  v14(v22, 0);
  sub_266ECB294(0, &qword_2800F2170, 0x277D579E8);
  sub_266ECAF2C(&qword_2800F2168, &qword_2800F2170, 0x277D579E8);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F436D72616C61, 0xEC00000074786574);
  v15(v22, 0);
  sub_266ECB294(0, &qword_2800F22F0, 0x277D57AB8);
  sub_266ECAF2C(&qword_2800F22F8, &qword_2800F22F0, 0x277D57AB8);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F4372656D6974, 0xEC00000074786574);
  v16(v22, 0);
  sub_266ECB294(0, &qword_2800F2300, 0x277D57AC0);
  sub_266ECAF2C(&qword_2800F2308, &qword_2800F2300, 0x277D57AC0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x80000002674421A0);
  v17(v22, 0);
  type metadata accessor for HALSchemaHALPowerState(0);
  sub_266FEC84C(&qword_2800F2310, type metadata accessor for HALSchemaHALPowerState);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6174537265776F70, 0xEA00000000006574);
  return v18(v22, 0);
}

uint64_t sub_266FEC788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEC7EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEC84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static HALSchemaHALDeviceProximity.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674421F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267442210, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267442230, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267442250, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x8000000267442270, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FECBD0(uint64_t a1)
{
  v2 = sub_266FECCD4(&qword_2800F2318);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FECC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FECCD4(&qword_2800F2318);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FECCD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALDeviceProximity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALDeviceSharedContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x80000002674422C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674422E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267442310, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267442340, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x8000000267442360, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FED010(uint64_t a1)
{
  v2 = sub_266FED114(&qword_2800F2328);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FED078(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FED114(&qword_2800F2328);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FED114(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALDeviceSharedContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALDiscoveryType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674423B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674423D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x80000002674423F0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267442410, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FED3E0(uint64_t a1)
{
  v2 = sub_266FED4E4(&qword_2800F2330);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FED448(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FED4E4(&qword_2800F2330);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FED4E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALDiscoveryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267442460, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267442480, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674424A0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674424D0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FED7B0(uint64_t a1)
{
  v2 = sub_266FED8B4(&qword_2800F2338);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FED818(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FED8B4(&qword_2800F2338);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FED8B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALForceFetchContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2340, 0x277D57A80);
  sub_266ECAF2C(&qword_2800F2348, &qword_2800F2340, 0x277D57A80);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F2350, 0x277D57A70);
  sub_266ECAF2C(&qword_2800F2358, &qword_2800F2350, 0x277D57A70);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F2360, 0x277D57A78);
  sub_266ECAF2C(&qword_2800F2368, &qword_2800F2360, 0x277D57A78);
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

uint64_t sub_266FEDED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEDF38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALForceFetchEnded.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267441E90);
  return v10(v12, 0);
}

uint64_t sub_266FEE22C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEE290(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEE2F4()
{
  result = qword_2800F2358;
  if (!qword_2800F2358)
  {
    sub_266FEE34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2358);
  }

  return result;
}

unint64_t sub_266FEE34C()
{
  result = qword_2800F2350;
  if (!qword_2800F2350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2350);
  }

  return result;
}

uint64_t static HALSchemaHALForceFetchFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FEE804(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEE564()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FEE804(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEE6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEE75C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEE804(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FEE84C()
{
  result = qword_2800F2360;
  if (!qword_2800F2360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2360);
  }

  return result;
}

uint64_t static HALSchemaHALForceFetchStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FEEAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEEB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEEBA8()
{
  result = qword_2800F2348;
  if (!qword_2800F2348)
  {
    sub_266FEEC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2348);
  }

  return result;
}

unint64_t sub_266FEEC00()
{
  result = qword_2800F2340;
  if (!qword_2800F2340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2340);
  }

  return result;
}

uint64_t static HALSchemaHALHomeKitTarget.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674425E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267442600, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267442620, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267442640, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267442660, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267442690, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x80000002674426B0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x80000002674426D0, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_266FEF09C(uint64_t a1)
{
  v2 = sub_266FEF1A0(&qword_2800F2370);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FEF104(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FEF1A0(&qword_2800F2370);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FEF1A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALHomeKitTarget(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALLocalFetchContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2378, 0x277D57AA0);
  sub_266ECAF2C(&qword_2800F2380, &qword_2800F2378, 0x277D57AA0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F2388, 0x277D57A90);
  sub_266ECAF2C(&qword_2800F2390, &qword_2800F2388, 0x277D57A90);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F2398, 0x277D57A98);
  sub_266ECAF2C(&qword_2800F23A0, &qword_2800F2398, 0x277D57A98);
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

uint64_t sub_266FEF6FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEF760(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALLocalFetchEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FEFA4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEFAB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEFB14()
{
  result = qword_2800F2390;
  if (!qword_2800F2390)
  {
    sub_266FEFB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2390);
  }

  return result;
}

unint64_t sub_266FEFB6C()
{
  result = qword_2800F2388;
  if (!qword_2800F2388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2388);
  }

  return result;
}

uint64_t static HALSchemaHALLocalFetchFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FF0024(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEFD84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FF0024(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEFF18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEFF7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF0024(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FF006C()
{
  result = qword_2800F2398;
  if (!qword_2800F2398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2398);
  }

  return result;
}

uint64_t static HALSchemaHALLocalFetchStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FF0300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF0364(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF03C8()
{
  result = qword_2800F2380;
  if (!qword_2800F2380)
  {
    sub_266FF0420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2380);
  }

  return result;
}

unint64_t sub_266FF0420()
{
  result = qword_2800F2378;
  if (!qword_2800F2378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2378);
  }

  return result;
}

uint64_t static HALSchemaHALMediaPlayerContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v14 = *(v0 - 8);
  v15 = v0;
  v1 = *(v14 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALMediaPlayerState(0);
  sub_266FF0948(&qword_2800F23A8, type metadata accessor for HALSchemaHALMediaPlayerState);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574617473, 0xE500000000000000);
  v10(v16, 0);
  type metadata accessor for FLOWSchemaFLOWMediaType(0);
  sub_266FF0948(&qword_2800F13E8, type metadata accessor for FLOWSchemaFLOWMediaType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 1701869940, 0xE400000000000000);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E538], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, 0x80000002674427F0);
  return v12(v16, 0);
}

uint64_t sub_266FF083C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF08A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF0948(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FF0990()
{
  result = qword_2800F22E0;
  if (!qword_2800F22E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F22E0);
  }

  return result;
}

uint64_t static HALSchemaHALMediaPlayerState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267442850, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267442870, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267442890, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x80000002674428B0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x80000002674428D0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x80000002674428F0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267442910, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_266FF0DBC(uint64_t a1)
{
  v2 = sub_266FF0EC0(&qword_2800F23B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF0E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF0EC0(&qword_2800F23B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF0EC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALMediaPlayerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALNearbyPersonalDevicesReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v11 = a1;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E538];
  v13 = *(v3 + 104);
  v37 = v3 + 104;
  v14 = v2;
  v13(v6, v12, v2);
  v33 = v13;
  v40[0] = 1;
  sub_26738114C();
  v15 = sub_26738116C();
  v16 = *(v15 - 8);
  v36 = *(v16 + 56);
  v17 = v16 + 56;
  v39 = v15;
  v36(v10, 0, 1, v15);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F43656E6F685069, 0xEB00000000746E75);
  v18(v40, 0);
  v35 = v12;
  v13(v6, v12, v14);
  v40[0] = 1;
  sub_26738114C();
  v19 = v15;
  v20 = v36;
  v36(v10, 0, 1, v19);
  v38 = v17;
  v32 = v11;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E756F4364615069, 0xE900000000000074);
  v21(v40, 0);
  v22 = v12;
  v23 = v33;
  v33(v6, v22, v14);
  v40[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v39);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x756F436863746177, 0xEA0000000000746ELL);
  v24(v40, 0);
  v25 = v35;
  v34 = v14;
  v23(v6, v35, v14);
  v40[0] = 1;
  sub_26738114C();
  v26 = v36;
  v36(v10, 0, 1, v39);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x436B6F6F4263616DLL, 0xEC000000746E756FLL);
  v27(v40, 0);
  v23(v6, v25, v14);
  v40[0] = 1;
  sub_26738114C();
  v28 = v39;
  v26(v10, 0, 1, v39);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x696475745363616DLL, 0xEE00746E756F436FLL);
  v29(v40, 0);
  v23(v6, v35, v34);
  v40[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E756F4363614D69, 0xE900000000000074);
  return v30(v40, 0);
}

uint64_t sub_266FF1558(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF15BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF1620()
{
  result = qword_2800F21F0;
  if (!qword_2800F21F0)
  {
    sub_266FF1678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F21F0);
  }

  return result;
}

unint64_t sub_266FF1678()
{
  result = qword_2800F21E8;
  if (!qword_2800F21E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F21E8);
  }

  return result;
}

uint64_t static HALSchemaHALPowerState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674429A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x80000002674429C0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674429E0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267442A00, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FF1948(uint64_t a1)
{
  v2 = sub_266FF1A4C(&qword_2800F23B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF19B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF1A4C(&qword_2800F23B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF1A4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALPowerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALTimerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x8000000267442A50);
  return v10(v12, 0);
}

uint64_t sub_266FF1CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF1D44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF1DA8()
{
  result = qword_2800F22F8;
  if (!qword_2800F22F8)
  {
    sub_266FF1E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F22F8);
  }

  return result;
}

unint64_t sub_266FF1E00()
{
  result = qword_2800F22F0;
  if (!qword_2800F22F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F22F0);
  }

  return result;
}

uint64_t static HALSchemaHALVoiceTriggerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000023, 0x8000000267442AA0);
  return v10(v12, 0);
}

uint64_t sub_266FF209C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF2100(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF2164()
{
  result = qword_2800F2308;
  if (!qword_2800F2308)
  {
    sub_266FF21BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2308);
  }

  return result;
}

unint64_t sub_266FF21BC()
{
  result = qword_2800F2300;
  if (!qword_2800F2300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2300);
  }

  return result;
}

uint64_t static HomeKitSchemaHKAccessoryCommunicationProtocol.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x8000000267442B10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267442B40, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267442B70, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FF241C(uint64_t a1)
{
  v2 = sub_266FF2520(&qword_2800F23C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF2484(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF2520(&qword_2800F23C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF2520(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitSchemaHKAccessoryCommunicationProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HomeKitSchemaHKAccessoryOperationReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v81 = sub_26738113C();
  v3 = *(v81 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v81);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v71 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v15 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x654D646572616873, 0xEF64497363697274);
  v16(v83, 0);
  v74 = *MEMORY[0x277D3E530];
  v17 = *(v3 + 104);
  v80 = v3 + 104;
  v77 = v17;
  v82 = v6;
  (v17)(v6);
  v83[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267442BE0);
  v18(v83, 0);
  type metadata accessor for HomeKitSchemaHKAccessoryCommunicationProtocol(0);
  sub_266FF35A8(&qword_2800F23C0, type metadata accessor for HomeKitSchemaHKAccessoryCommunicationProtocol);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267442C00);
  v19(v83, 0);
  type metadata accessor for HomeKitSchemaHKTransportType(0);
  sub_266FF35A8(&qword_2800F23D0, type metadata accessor for HomeKitSchemaHKTransportType);
  sub_26738120C();
  v76 = v13;
  v13(v10, 0, 1, v11);
  v20 = v15;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x726F70736E617274, 0xED00006570795474);
  v21(v83, 0);
  type metadata accessor for HomeKitSchemaHKAccessoryOperationType(0);
  sub_266FF35A8(&qword_2800F23D8, type metadata accessor for HomeKitSchemaHKAccessoryOperationType);
  sub_26738120C();
  v22 = v11;
  v79 = v11;
  v13(v10, 0, 1, v11);
  v78 = v20;
  v23 = a2;
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F6974617265706FLL, 0xED0000657079546ELL);
  v24(v83, 0);
  v26 = v81;
  LODWORD(v73) = *MEMORY[0x277D3E4E8];
  v25 = v73;
  v27 = v77;
  v77(v82, v73, v81);
  v83[0] = 1;
  sub_26738114C();
  v28 = v76;
  v76(v10, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x6568636143736177, 0xE900000000000064);
  v29(v83, 0);
  v30 = v26;
  v27(v82, v25, v26);
  v31 = v27;
  v83[0] = 1;
  sub_26738114C();
  v32 = v79;
  v33 = v28;
  v28(v10, 0, 1, v79);
  v75 = v23;
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C61636F4C736177, 0xE800000000000000);
  v34(v83, 0);
  v72 = "communicationProtocol";
  v35 = v82;
  v36 = v73;
  v31(v82, v73, v30);
  v83[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v32);
  v37 = v33;
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v72 | 0x8000000000000000);
  v38(v83, 0);
  v72 = "wasRemoteAccessAllowed";
  v39 = v81;
  v40 = v77;
  v77(v35, v36, v81);
  v83[0] = 1;
  sub_26738114C();
  v41 = v79;
  v37(v10, 0, 1, v79);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v72 | 0x8000000000000000);
  v42(v83, 0);
  v40(v82, v73, v39);
  v83[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v41);
  v43 = v37;
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F70706152736177, 0xEE00776F6C537472);
  v44(v83, 0);
  v72 = "wasResidentFirstEnabled";
  LODWORD(v73) = *MEMORY[0x277D3E538];
  v45 = v82;
  v46 = v77;
  (v77)(v82);
  v83[0] = 1;
  sub_26738114C();
  v47 = v79;
  v43(v10, 0, 1, v79);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v72 | 0x8000000000000000);
  v48(v83, 0);
  v46(v45, v74, v39);
  v83[0] = 1;
  sub_26738114C();
  v49 = v76;
  v76(v10, 0, 1, v47);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267442C80);
  v50(v83, 0);
  v72 = "residentFirstErrorDomain";
  v51 = v73;
  v52 = v81;
  v53 = v77;
  v77(v45, v73, v81);
  v83[0] = 1;
  sub_26738114C();
  v54 = v79;
  v49(v10, 0, 1, v79);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v72 | 0x8000000000000000);
  v55(v83, 0);
  v56 = v51;
  v57 = v53;
  v53(v82, v56, v52);
  v83[0] = 1;
  sub_26738114C();
  v58 = v54;
  v59 = v54;
  v60 = v76;
  v76(v10, 0, 1, v59);
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0x7275446C61746F74, 0xED00006E6F697461);
  v61(v83, 0);
  v72 = "residentFirstErrorCode";
  v62 = v82;
  v57(v82, v74, v52);
  v83[0] = 1;
  sub_26738114C();
  v63 = v60;
  v60(v10, 0, 1, v58);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v72 | 0x8000000000000000);
  v64(v83, 0);
  v65 = v62;
  v66 = v62;
  v67 = v73;
  v57(v66, v73, v81);
  v83[0] = 1;
  sub_26738114C();
  v63(v10, 0, 1, v58);
  v68 = sub_2673811AC();
  sub_266EC637C(v10, 0x7272456C616E6966, 0xEE0065646F43726FLL);
  v68(v83, 0);
  v57(v65, v67, v81);
  v83[0] = 1;
  sub_26738114C();
  v63(v10, 0, 1, v79);
  v69 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267442CE0);
  return v69(v83, 0);
}

uint64_t sub_266FF34E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF3548(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF35A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static HomeKitSchemaHKAccessoryOperationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267442D40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267442D70, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267442D90, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FF3848(uint64_t a1)
{
  v2 = sub_266FF394C(&qword_2800F23F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF38B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF394C(&qword_2800F23F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF394C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitSchemaHKAccessoryOperationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HomeKitSchemaHKAudioTopologyReported.makeTypeManifestAndEnsureFields(in:)()
{
  v21 = sub_26738113C();
  v19 = *(v21 - 8);
  v0 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HomeKitSchemaHKDevicesAudioTopology(0);
  sub_266FF3F18(&qword_2800F23F8, type metadata accessor for HomeKitSchemaHKDevicesAudioTopology);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v18 = *(v7 + 56);
  v18(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x706F546F69647561, 0xED000079676F6C6FLL);
  v8(v23, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v22, 0x706F546F69647561, 0xED000079676F6C6FLL);
  v11 = *(v7 + 48);
  if (!v11(v12, 1, v6))
  {
    sub_266ECB128(&unk_2878866D8);
    sub_26738115C();
  }

  (v10)(v22, 0);
  v9(v23, 0);
  (*(v19 + 104))(v20, *MEMORY[0x277D3E4E8], v21);
  v23[0] = 1;
  sub_26738114C();
  v18(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x72656461654C7369, 0xE800000000000000);
  v13(v23, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v22, 0x72656461654C7369, 0xE800000000000000);
  if (!v11(v16, 1, v6))
  {
    sub_266ECB128(&unk_287886700);
    sub_26738115C();
  }

  (v15)(v22, 0);
  return v14(v23, 0);
}

uint64_t sub_266FF3E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF3E70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF3F18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FF3F60()
{
  result = qword_2800F2408;
  if (!qword_2800F2408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2408);
  }

  return result;
}

uint64_t static HomeKitSchemaHKClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2410, 0x277D57B00);
  sub_266ECAF2C(&qword_2800F2418, &qword_2800F2410, 0x277D57B00);
  v26[1] = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v27 = *(v9 - 8);
  v10 = *(v27 + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v32, 0);
  sub_266ECB294(0, &qword_2800F23E8, 0x277D57AE8);
  sub_266ECAF2C(&qword_2800F23E0, &qword_2800F23E8, 0x277D57AE8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267442E20);
  v12(v32, 0);
  sub_266ECB294(0, &qword_2800F2408, 0x277D57AF0);
  sub_266ECAF2C(&qword_2800F2400, &qword_2800F2408, 0x277D57AF0);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267442E50);
  v13(v32, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v31, 0xD000000000000015, 0x8000000267442E50);
  if (!(*(v27 + 48))(v16, 1, v9))
  {
    sub_266ECB128(&unk_287886728);
    sub_26738115C();
  }

  (v15)(v31, 0);
  v14(v32, 0);
  v17 = v28;
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
  (*(v29 + 32))(v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, v17, v30);
  v18(v32, 0);
  sub_266ECB128(&unk_287886750);
  return sub_2673811CC();
}

uint64_t sub_266FF4560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FF45F8()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FF46C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF4728(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF4788(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2420, &qword_2800F2010, 0x277D57AF8);
  a1[2] = sub_266ECAF2C(&qword_2800F2428, &qword_2800F2010, 0x277D57AF8);
  result = sub_266ECAF2C(&qword_2800F2430, &qword_2800F2010, 0x277D57AF8);
  a1[3] = result;
  return result;
}

uint64_t static HomeKitSchemaHKDevicesAudioTopology.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267442EB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v72;

  v1(v82, 0);
  v7 = sub_266ECB128(&unk_287886788);
  v9 = v8;
  v10 = sub_2673810FC();
  v12 = v11;
  v13 = *v11;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v12;
  *v12 = 0x8000000000000000;
  sub_266ECD4CC(v7, v9, 0, v14);
  *v12 = v73;
  v10(v82, 0);
  v15 = sub_26738111C();
  v17 = v16;
  v18 = *v16;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v17;
  *v17 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267442ED0, v19);
  v20 = *v17;
  *v17 = v74;

  v15(v82, 0);
  v21 = sub_266ECB128(&unk_2878867B0);
  v23 = v22;
  v24 = sub_2673810FC();
  v26 = v25;
  v27 = *v25;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v26;
  *v26 = 0x8000000000000000;
  sub_266ECD4CC(v21, v23, 1, v28);
  *v26 = v75;
  v24(v82, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = *v30;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267442EF0, v33);
  v34 = *v31;
  *v31 = v76;

  v29(v82, 0);
  v35 = sub_266ECB128(&unk_2878867D8);
  v37 = v36;
  v38 = sub_2673810FC();
  v40 = v39;
  v41 = *v39;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v40;
  *v40 = 0x8000000000000000;
  sub_266ECD4CC(v35, v37, 2, v42);
  *v40 = v77;
  v38(v82, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267442F20, v47);
  v48 = *v45;
  *v45 = v78;

  v43(v82, 0);
  v49 = sub_266ECB128(&unk_287886800);
  v51 = v50;
  v52 = sub_2673810FC();
  v54 = v53;
  v55 = *v53;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v54;
  *v54 = 0x8000000000000000;
  sub_266ECD4CC(v49, v51, 3, v56);
  *v54 = v79;
  v52(v82, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = *v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x8000000267442F50, v61);
  v62 = *v59;
  *v59 = v80;

  v57(v82, 0);
  v63 = sub_266ECB128(&unk_287886828);
  v65 = v64;
  v66 = sub_2673810FC();
  v68 = v67;
  v69 = *v67;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v68;
  *v68 = 0x8000000000000000;
  sub_266ECD4CC(v63, v65, 4, v70);
  *v68 = v81;
  return v66(v82, 0);
}

uint64_t sub_266FF4DB4(uint64_t a1)
{
  v2 = sub_266FF4EB8(&qword_2800F2438);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF4E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF4EB8(&qword_2800F2438);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF4EB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitSchemaHKDevicesAudioTopology(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HomeKitSchemaHKTransportType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267442FB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267442FD0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267442FF0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267443010, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x8000000267443030, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FF51F4(uint64_t a1)
{
  v2 = sub_266FF52F8(&qword_2800F2440);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF525C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF52F8(&qword_2800F2440);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF52F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitSchemaHKTransportType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HomeKitSchemaHomeKitEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682533224, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682533224, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287886850);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FF55D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF5634(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HOMESchemaHOMEAssistantDeviceBirthday.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 1918985593, 0xE400000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x68746E6F6DLL, 0xE500000000000000);
  return v16(v20, 0);
}

uint64_t sub_266FF59EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF5A50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF5AB4()
{
  result = qword_2800F2448;
  if (!qword_2800F2448)
  {
    sub_266FF5B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2448);
  }

  return result;
}

unint64_t sub_266FF5B0C()
{
  result = qword_2800F2450;
  if (!qword_2800F2450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2450);
  }

  return result;
}

uint64_t static HOMESchemaHOMEAssistantInfoReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6F48646568736168, 0xEC0000006449656DLL);
  return v5(v7, 0);
}

uint64_t sub_266FF5D34()
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
  sub_266EC637C(v3, 0x6F48646568736168, 0xEC0000006449656DLL);
  return v5(v7, 0);
}

uint64_t sub_266FF5ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF5F3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HOMESchemaHOMEClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2468, 0x277D57AE0);
  sub_266ECAF2C(&qword_2800F2470, &qword_2800F2468, 0x277D57AE0);
  v23 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800F2460, 0x277D57AD0);
  sub_266ECAF2C(&qword_2800F2458, &qword_2800F2460, 0x277D57AD0);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267443140);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F2450, 0x277D57AC8);
  sub_266ECAF2C(&qword_2800F2448, &qword_2800F2450, 0x277D57AC8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267443160);
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
  sub_266ECB128(&unk_287886880);
  return sub_2673811CC();
}

uint64_t sub_266FF64F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FF6588()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FF6654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF66B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF6718(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2478, &qword_2800F1F40, 0x277D57AD8);
  a1[2] = sub_266ECAF2C(&qword_2800F2480, &qword_2800F1F40, 0x277D57AD8);
  result = sub_266ECAF2C(&qword_2800F2488, &qword_2800F1F40, 0x277D57AD8);
  a1[3] = result;
  return result;
}

uint64_t static HOMESchemaHOMEClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x706D6F43656D6F68, 0xEF6449746E656E6FLL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x706D6F43656D6F68, 0xEF6449746E656E6FLL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878868B8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FF6ACC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF6B30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IASchemaIAClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2490, 0x277D57B10);
  sub_266ECAF2C(&qword_2800F2498, &qword_2800F2490, 0x277D57B10);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F24A0, 0x277D57B18);
  sub_266ECAF2C(&qword_2800F24A8, &qword_2800F24A0, 0x277D57B18);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD000000000000019, 0x80000002674431F0);
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
  sub_266ECB128(&unk_2878868E0);
  return sub_2673811CC();
}

uint64_t sub_266FF7004(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FF709C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FF7168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF71CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF722C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F24B0, &qword_2800F24B8, 0x277D57B08);
  a1[2] = sub_266ECAF2C(&qword_2800F24C0, &qword_2800F24B8, 0x277D57B08);
  result = sub_266ECAF2C(&qword_2800F24C8, &qword_2800F24B8, 0x277D57B08);
  a1[3] = result;
  return result;
}

uint64_t static IASchemaIAClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682530665, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682530665, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287886918);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FF75C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF7624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IASchemaIASiriMissEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F24D8, 0x277D57B30);
  sub_266ECAF2C(&qword_2800F24E0, &qword_2800F24D8, 0x277D57B30);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F24E8, 0x277D57B20);
  sub_266ECAF2C(&qword_2800F24F0, &qword_2800F24E8, 0x277D57B20);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F24F8, 0x277D57B28);
  sub_266ECAF2C(&qword_2800F2500, &qword_2800F24F8, 0x277D57B28);
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

uint64_t sub_266FF7BE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF7C44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IASchemaIASiriMissEvaluationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4E8], v1);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x694D697269537369, 0xEA00000000007373);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F2508, 0x277D57B38);
  sub_266ECAF2C(&qword_2800F2510, &qword_2800F2508, 0x277D57B38);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x80000002674432C0);
  return v13(v16, 0);
}

uint64_t sub_266FF8020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF8084(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IASchemaIASiriMissEvaluationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FF8378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF83DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF8440()
{
  result = qword_2800F2500;
  if (!qword_2800F2500)
  {
    sub_266FF8498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2500);
  }

  return result;
}

unint64_t sub_266FF8498()
{
  result = qword_2800F24F8;
  if (!qword_2800F24F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F24F8);
  }

  return result;
}

uint64_t static IASchemaIASiriMissEvaluationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7265567465737361, 0xEC0000006E6F6973);
  return v10(v12, 0);
}

uint64_t sub_266FF8738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF879C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF8800()
{
  result = qword_2800F24E0;
  if (!qword_2800F24E0)
  {
    sub_266FF8858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F24E0);
  }

  return result;
}

unint64_t sub_266FF8858()
{
  result = qword_2800F24D8;
  if (!qword_2800F24D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F24D8);
  }

  return result;
}

uint64_t static IASchemaIAVoiceTriggerEventSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v3 = sub_26738113C();
  v128 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v112 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v126 = "iggerEventSummary";
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E540], v3);
  v122 = v4 + 104;
  v129[0] = 1;
  sub_26738114C();
  v125 = sub_26738116C();
  v13 = *(v125 - 8);
  v123 = *(v13 + 56);
  v14 = v13 + 56;
  v123(v11, 0, 1, v125);
  v121 = v14;
  v127 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000020, v126 | 0x8000000000000000);
  v15(v129, 0);
  v120 = "onTimestampInSec";
  LODWORD(v126) = *MEMORY[0x277D3E500];
  v16 = v126;
  v17 = v128;
  v12(v7, v126, v128);
  v129[0] = 1;
  sub_26738114C();
  v18 = v125;
  v19 = v123;
  v123(v11, 0, 1, v125);
  v20 = sub_2673811AC();
  v117 = 0xD000000000000014;
  sub_266EC637C(v11, 0xD000000000000014, v120 | 0x8000000000000000);
  v20(v129, 0);
  v120 = "firstPassPeakScoreHS";
  v124 = v12;
  v12(v7, v16, v17);
  v129[0] = 1;
  sub_26738114C();
  v19(v11, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v120 | 0x8000000000000000);
  v21(v129, 0);
  v120 = "firstPassPeakScoreJS";
  v114 = *MEMORY[0x277D3E538];
  v22 = v128;
  (v12)(v7);
  v129[0] = 1;
  sub_26738114C();
  v23 = v125;
  v24 = v123;
  v123(v11, 0, 1, v125);
  v25 = sub_2673811AC();
  v115 = 0xD000000000000010;
  sub_266EC637C(v11, 0xD000000000000010, v120 | 0x8000000000000000);
  v25(v129, 0);
  v26 = v7;
  v27 = v7;
  v28 = v126;
  v29 = v124;
  v124(v27, v126, v22);
  v129[0] = 1;
  sub_26738114C();
  v24(v11, 0, 1, v23);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0x5372656767697274, 0xEE00534865726F63);
  v30(v129, 0);
  v31 = v28;
  v32 = v128;
  v29(v26, v28, v128);
  v129[0] = 1;
  sub_26738114C();
  v33 = v125;
  v34 = v123;
  v123(v11, 0, 1, v125);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0x5372656767697274, 0xEE00534A65726F63);
  v35(v129, 0);
  v36 = v32;
  v37 = v124;
  v124(v26, v31, v36);
  v129[0] = 1;
  sub_26738114C();
  v34(v11, 0, 1, v33);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0x697461676974696DLL, 0xEF65726F63536E6FLL);
  v38(v129, 0);
  v120 = "invocationTypeId";
  v39 = v128;
  v37(v26, v31, v128);
  v129[0] = 1;
  sub_26738114C();
  v34(v11, 0, 1, v33);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000020, v120 | 0x8000000000000000);
  v40(v129, 0);
  v118 = "zerCombinedScore";
  v119 = v26;
  v41 = v126;
  v42 = v39;
  v43 = v124;
  v124(v26, v126, v42);
  v129[0] = 1;
  sub_26738114C();
  v34(v11, 0, 1, v33);
  v44 = sub_2673811AC();
  v120 = 0xD000000000000017;
  sub_266EC637C(v11, 0xD000000000000017, v118 | 0x8000000000000000);
  v44(v129, 0);
  v118 = "triggerScoreHSThreshold";
  v45 = v119;
  v46 = v41;
  v47 = v128;
  v43(v119, v46, v128);
  v129[0] = 1;
  sub_26738114C();
  v48 = v125;
  v49 = v123;
  v123(v11, 0, 1, v125);
  v50 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v118 | 0x8000000000000000);
  v50(v129, 0);
  v113 = "triggerScoreJSThreshold";
  v51 = v126;
  v52 = v124;
  v124(v45, v126, v47);
  v129[0] = 1;
  sub_26738114C();
  v49(v11, 0, 1, v48);
  v53 = sub_2673811AC();
  v118 = 0xD000000000000018;
  sub_266EC637C(v11, 0xD000000000000018, v113 | 0x8000000000000000);
  v53(v129, 0);
  v113 = "mitigationScoreThreshold";
  v54 = v128;
  v52(v45, v51, v128);
  v129[0] = 1;
  sub_26738114C();
  v55 = v125;
  v56 = v123;
  v123(v11, 0, 1, v125);
  v57 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000024, v113 | 0x8000000000000000);
  v57(v129, 0);
  v113 = "zerCombinedThreshold";
  v58 = v54;
  v59 = v124;
  v124(v45, *MEMORY[0x277D3E530], v54);
  v129[0] = 1;
  sub_26738114C();
  v60 = v55;
  v56(v11, 0, 1, v55);
  v61 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v113 | 0x8000000000000000);
  v61(v129, 0);
  v113 = "voiceTriggerConfigVersion";
  v62 = v58;
  v63 = v59;
  v59(v45, v126, v58);
  v129[0] = 1;
  sub_26738114C();
  v64 = v123;
  v123(v11, 0, 1, v60);
  v65 = sub_2673811AC();
  sub_266EC637C(v11, v120, v113 | 0x8000000000000000);
  v65(v129, 0);
  LODWORD(v120) = *MEMORY[0x277D3E4E8];
  (v59)(v119);
  v129[0] = 1;
  sub_26738114C();
  v64(v11, 0, 1, v60);
  v66 = sub_2673811AC();
  sub_266EC637C(v11, 0x547478654E736168, 0xEB000000006E7275);
  v66(v129, 0);
  v113 = "userActionTimeThreshold";
  v67 = v119;
  v63(v119, v126, v62);
  v129[0] = 1;
  sub_26738114C();
  v68 = v125;
  v64(v11, 0, 1, v125);
  v69 = sub_2673811AC();
  sub_266EC637C(v11, v118, v113 | 0x8000000000000000);
  v69(v129, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v64(v11, 0, 1, v68);
  v70 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E7275547478656ELL, 0xEA00000000006449);
  v70(v129, 0);
  v116 = "timeDeltaToNextTurnInSec";
  v71 = v128;
  v72 = v124;
  v124(v67, v114, v128);
  v129[0] = 1;
  sub_26738114C();
  v64(v11, 0, 1, v68);
  v73 = sub_2673811AC();
  sub_266EC637C(v11, v118, v116 | 0x8000000000000000);
  v73(v129, 0);
  v72(v67, v120, v71);
  v129[0] = 1;
  sub_26738114C();
  v74 = v125;
  v64(v11, 0, 1, v125);
  v75 = sub_2673811AC();
  sub_266EC637C(v11, 0x75547478654E7369, 0xEF64696C61566E72);
  v75(v129, 0);
  v118 = "nextTurnInvocationSource";
  v76 = v128;
  v72(v67, v126, v128);
  v129[0] = 1;
  sub_26738114C();
  v77 = v74;
  v78 = v123;
  v123(v11, 0, 1, v77);
  v79 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v118 | 0x8000000000000000);
  v79(v129, 0);
  v118 = "repetitionSimilarityScore";
  v80 = v124;
  v124(v67, v120, v76);
  v129[0] = 1;
  sub_26738114C();
  v81 = v125;
  v78(v11, 0, 1, v125);
  v82 = sub_2673811AC();
  sub_266EC637C(v11, v115, v118 | 0x8000000000000000);
  v82(v129, 0);
  v118 = "hasNextRejection";
  v83 = v128;
  v80(v67, v126, v128);
  v129[0] = 1;
  sub_26738114C();
  v78(v11, 0, 1, v81);
  v84 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v118 | 0x8000000000000000);
  v84(v129, 0);
  v116 = "timeDeltaToNextRejectionInSec";
  v85 = v83;
  v86 = v124;
  v124(v67, v120, v83);
  v129[0] = 1;
  sub_26738114C();
  v87 = v125;
  v88 = v123;
  v123(v11, 0, 1, v125);
  v89 = sub_2673811AC();
  v118 = 0xD000000000000011;
  sub_266EC637C(v11, 0xD000000000000011, v116 | 0x8000000000000000);
  v89(v129, 0);
  v116 = "hasAppLaunchEvent";
  v86(v67, v126, v85);
  v129[0] = 1;
  sub_26738114C();
  v88(v11, 0, 1, v87);
  v90 = v88;
  v91 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v116 | 0x8000000000000000);
  v91(v129, 0);
  v116 = "timeDeltaToAppLaunchInSec";
  v92 = v128;
  v93 = v124;
  v124(v67, v120, v128);
  v129[0] = 1;
  sub_26738114C();
  v94 = v125;
  v90(v11, 0, 1, v125);
  v95 = sub_2673811AC();
  sub_266EC637C(v11, v118, v116 | 0x8000000000000000);
  v95(v129, 0);
  v116 = "hasAppIntentEvent";
  v96 = v119;
  v97 = v92;
  v93(v119, v126, v92);
  v129[0] = 1;
  sub_26738114C();
  v98 = v94;
  v99 = v123;
  v123(v11, 0, 1, v94);
  v100 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, v116 | 0x8000000000000000);
  v100(v129, 0);
  v116 = "timeDeltaToAppIntentEventInSec";
  v101 = v124;
  v124(v96, v120, v97);
  v129[0] = 1;
  v102 = v96;
  sub_26738114C();
  v103 = v98;
  v99(v11, 0, 1, v98);
  v104 = sub_2673811AC();
  sub_266EC637C(v11, v118, v116 | 0x8000000000000000);
  v104(v129, 0);
  v118 = "hasTextInputEvent";
  v105 = v128;
  v106 = v101;
  v101(v102, v126, v128);
  v129[0] = 1;
  sub_26738114C();
  v107 = v123;
  v123(v11, 0, 1, v103);
  v108 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v118 | 0x8000000000000000);
  v108(v129, 0);
  v106(v102, v120, v105);
  v129[0] = 1;
  sub_26738114C();
  v107(v11, 0, 1, v103);
  v109 = sub_2673811AC();
  sub_266EC637C(v11, v117, 0x8000000267443690);
  v109(v129, 0);
  v106(v102, v126, v128);
  v129[0] = 1;
  sub_26738114C();
  v107(v11, 0, 1, v125);
  v110 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, 0x80000002674436B0);
  return v110(v129, 0);
}

uint64_t sub_266FFA274(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFA2D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267443720);
  return v10(v12, 0);
}

uint64_t sub_266FFA5CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFA630(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FFA694()
{
  result = qword_2800F2518;
  if (!qword_2800F2518)
  {
    sub_266FFA6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2518);
  }

  return result;
}

unint64_t sub_266FFA6EC()
{
  result = qword_2800F2520;
  if (!qword_2800F2520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2520);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2528, 0x277D57B50);
  sub_266ECAF2C(&qword_2800F2530, &qword_2800F2528, 0x277D57B50);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F2538, 0x277D57B88);
  sub_266ECAF2C(&qword_2800F2540, &qword_2800F2538, 0x277D57B88);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267443780);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F2548, 0x277D57B70);
  sub_266ECAF2C(&qword_2800F2550, &qword_2800F2548, 0x277D57B70);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x80000002674437A0);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800F2558, 0x277D57B60);
  sub_266ECAF2C(&qword_2800F2560, &qword_2800F2558, 0x277D57B60);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674437C0);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800F2568, 0x277D57B58);
  sub_266ECAF2C(&qword_2800F2570, &qword_2800F2568, 0x277D57B58);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674437E0);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F2578, 0x277D57B80);
  sub_266ECAF2C(&qword_2800F2580, &qword_2800F2578, 0x277D57B80);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267443800);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800F2588, 0x277D57BA0);
  sub_266ECAF2C(&qword_2800F2590, &qword_2800F2588, 0x277D57BA0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x8000000267443820);
  v15(v31, 0);
  sub_266ECB294(0, &qword_2800F2520, 0x277D57B40);
  sub_266ECAF2C(&qword_2800F2518, &qword_2800F2520, 0x277D57B40);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x8000000267443840);
  v16(v31, 0);
  sub_266ECB294(0, &qword_2800F2598, 0x277D57BA8);
  sub_266ECAF2C(&qword_2800F25A0, &qword_2800F2598, 0x277D57BA8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = v28;
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267443870);
  v18(v31, 0);
  sub_26738117C();
  v19 = sub_2673811BC();
  v21 = v20;
  v22 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_266ECAD54(0, v22[2] + 1, 1, v22);
    *v21 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_266ECAD54(v24 > 1, v25 + 1, 1, v22);
    *v21 = v22;
  }

  v22[2] = v25 + 1;
  (*(v29 + 32))(v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v17, v30);
  v19(v31, 0);
  sub_266ECB128(&unk_287886948);
  return sub_2673811CC();
}

uint64_t sub_266FFB150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FFB1E8()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FFB2B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFB318(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FFB378(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F25A8, &qword_2800F25B0, 0x277D57B48);
  a1[2] = sub_266ECAF2C(&qword_2800F25B8, &qword_2800F25B0, 0x277D57B48);
  result = sub_266ECAF2C(&qword_2800F25C0, &qword_2800F25B0, 0x277D57B48);
  a1[3] = result;
  return result;
}

uint64_t static IDENTITYSchemaIDENTITYClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x797469746E656469, 0xEA00000000006449);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x797469746E656469, 0xEA00000000006449);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287886978);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FFB71C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFB780(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYFirstIdentityReceived.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F25D0, 0x277D57B68);
  sub_266ECAF2C(&qword_2800F25D8, &qword_2800F25D0, 0x277D57B68);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267443910);
  return v5(v7, 0);
}

uint64_t sub_266FFBA1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFBA80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F25E0, 0x277D57BB0);
  sub_266ECAF2C(&qword_2800F25E8, &qword_2800F25E0, 0x277D57BB0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F63536563696F76, 0xEE00647261436572);
  return v5(v7, 0);
}

uint64_t sub_266FFBD04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F25E0, 0x277D57BB0);
  sub_266ECAF2C(&qword_2800F25E8, &qword_2800F25E0, 0x277D57BB0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F63536563696F76, 0xEE00647261436572);
  return v5(v7, 0);
}

uint64_t sub_266FFBEAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFBF10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYIdentityRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F25F0, 0x277D57B78);
  sub_266ECAF2C(&qword_2800F25F8, &qword_2800F25F0, 0x277D57B78);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
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

uint64_t sub_266FFC320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFC384(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYIdentityRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FFC670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFC6D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FFC738()
{
  result = qword_2800F25F8;
  if (!qword_2800F25F8)
  {
    sub_266FFC790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F25F8);
  }

  return result;
}

unint64_t sub_266FFC790()
{
  result = qword_2800F25F0;
  if (!qword_2800F25F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F25F0);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYIDScoreCard.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2600, 0x277D57B90);
  sub_266ECAF2C(&qword_2800F2608, &qword_2800F2600, 0x277D57B90);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x797469746E656469, 0xEE007365726F6353);
  v6(v9, 0);
  type metadata accessor for IDENTITYSchemaIDENTITYUserClassification(0);
  sub_266FFCB40();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6966697373616C63, 0xEE006E6F69746163);
  return v7(v9, 0);
}

uint64_t sub_266FFCA7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFCAE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FFCB40()
{
  result = qword_2800F2610;
  if (!qword_2800F2610)
  {
    type metadata accessor for IDENTITYSchemaIDENTITYUserClassification(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2610);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYResultCandidateReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v18 = "loggableSharedUserId";
  v10 = *(v2 + 104);
  v10(v5, *MEMORY[0x277D3E530], v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v18 | 0x8000000000000000);
  v13(v21, 0);
  v10(v5, *MEMORY[0x277D3E4E8], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x7463656C65537369, 0xEA00000000006465);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F25D0, 0x277D57B68);
  sub_266ECAF2C(&qword_2800F25D8, &qword_2800F25D0, 0x277D57B68);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267443910);
  return v15(v21, 0);
}

uint64_t sub_266FFCFE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFD044(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYScoreCardsGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F25E0, 0x277D57BB0);
  sub_266ECAF2C(&qword_2800F25E8, &qword_2800F25E0, 0x277D57BB0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F63536563696F76, 0xEE00647261436572);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F25D0, 0x277D57B68);
  sub_266ECAF2C(&qword_2800F25D8, &qword_2800F25D0, 0x277D57B68);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267443910);
  return v7(v9, 0);
}

uint64_t sub_266FFD3C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFD428(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYScoreTuple.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v25 = v2 + 104;
  v26 = v1;
  v23 = v11;
  v11(v5, v10, v1);
  v29[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v24 = *(v13 + 56);
  v24(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674206B0);
  v14(v29, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v28, 0xD000000000000014, 0x80000002674206B0);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_2878869A8);
    sub_26738115C();
  }

  (v16)(v28, 0);
  v15(v29, 0);
  v23(v5, *MEMORY[0x277D3E538], v26);
  v29[0] = 1;
  sub_26738114C();
  v18 = v24;
  v24(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656469666E6F63, 0xEF65726F63536563);
  v19(v29, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v18(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6568704572657375, 0xEF64496C6172656DLL);
  return v20(v29, 0);
}

uint64_t sub_266FFD990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFD9F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYUserClassification.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267443B30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267443B60, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267443B90, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267443BC0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267443BF0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FFDD90(uint64_t a1)
{
  v2 = sub_266FFDE94(&qword_2800F2618);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FFDDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FFDE94(&qword_2800F2618);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FFDE94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDENTITYSchemaIDENTITYUserClassification(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYUserLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267443C60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267443C80, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267443CA0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FFE0F0(uint64_t a1)
{
  v2 = sub_266FFE1F4(&qword_2800F2628);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FFE158(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FFE1F4(&qword_2800F2628);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FFE1F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDENTITYSchemaIDENTITYUserLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYUserPresenceMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v5, *MEMORY[0x277D3E530], v1);
  v23[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x8000000267443D00);
  v13(v23, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v22, 0xD00000000000001DLL, 0x8000000267443D00);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_2878869D8);
    sub_26738115C();
  }

  (v15)(v22, 0);
  v14(v23, 0);
  type metadata accessor for IDENTITYSchemaIDENTITYUserLocation(0);
  sub_266FFE868(&qword_2800F2620, type metadata accessor for IDENTITYSchemaIDENTITYUserLocation);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x61636F4C72657375, 0xEC0000006E6F6974);
  v17(v23, 0);
  type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource(0);
  sub_266FFE868(&qword_2800F2630, type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267443D20);
  v18(v23, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6568704572657375, 0xEF64496C6172656DLL);
  return v19(v23, 0);
}

uint64_t sub_266FFE7A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFE808(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FFE868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static IDENTITYSchemaIDENTITYUserPresenceSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267443D80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267443DB0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x8000000267443DE0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FFEB0C(uint64_t a1)
{
  v2 = sub_266FFEC10(&qword_2800F2648);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FFEB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FFEC10(&qword_2800F2648);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FFEC10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYUserPresenceSourceCaptured.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource(0);
  sub_266FFEF44(&qword_2800F2630, type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267443E50);
  return v5(v7, 0);
}

uint64_t sub_266FFEE38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFEE9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FFEF44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FFEF8C()
{
  result = qword_2800F2588;
  if (!qword_2800F2588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2588);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYUsersPresencesCaptured.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2640, 0x277D57B98);
  sub_266ECAF2C(&qword_2800F2638, &qword_2800F2640, 0x277D57B98);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6572507372657375, 0xEE007365636E6573);
  return v5(v7, 0);
}

uint64_t sub_266FFF1B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2640, 0x277D57B98);
  sub_266ECAF2C(&qword_2800F2638, &qword_2800F2640, 0x277D57B98);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6572507372657375, 0xEE007365636E6573);
  return v5(v7, 0);
}

uint64_t sub_266FFF360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFF3C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYVoiceScoreCard.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2600, 0x277D57B90);
  sub_266ECAF2C(&qword_2800F2608, &qword_2800F2600, 0x277D57B90);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x797469746E656469, 0xEE007365726F6353);
  v6(v9, 0);
  type metadata accessor for IDENTITYSchemaIDENTITYUserClassification(0);
  sub_266FFCB40();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6966697373616C63, 0xEE006E6F69746163);
  return v7(v9, 0);
}

uint64_t sub_266FFF708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFF76C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlanCycleGenerated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6C6379436E616C70, 0xEB00000000644965);
  return v5(v7, 0);
}

uint64_t sub_266FFF9EC()
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
  sub_266EC637C(v3, 0x6C6379436E616C70, 0xEB00000000644965);
  return v5(v7, 0);
}

uint64_t sub_266FFFB90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFFBF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2660, 0x277D57BC8);
  sub_266ECAF2C(&qword_2800F2668, &qword_2800F2660, 0x277D57BC8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F2670, 0x277D57BD0);
  sub_266ECAF2C(&qword_2800F2678, &qword_2800F2670, 0x277D57BD0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267443F80);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F2680, 0x277D57BE8);
  sub_266ECAF2C(&qword_2800F2688, &qword_2800F2680, 0x277D57BE8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267443FA0);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F2658, 0x277D57BB8);
  sub_266ECAF2C(&qword_2800F2650, &qword_2800F2658, 0x277D57BB8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267443FC0);
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
  sub_266ECB128(&unk_287886A00);
  return sub_2673811CC();
}

uint64_t sub_267000274(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26700030C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670003D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700043C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26700049C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2690, &qword_2800F2698, 0x277D57BC0);
  a1[2] = sub_266ECAF2C(&qword_2800F26A0, &qword_2800F2698, 0x277D57BC0);
  result = sub_266ECAF2C(&qword_2800F26A8, &qword_2800F2698, 0x277D57BC0);
  a1[3] = result;
  return result;
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v21 = sub_26738113C();
  v19 = *(v21 - 8);
  v0 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v18 = *(v7 + 56);
  v18(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x7365757165526669, 0xEB00000000644974);
  v8(v23, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v22, 0x7365757165526669, 0xEB00000000644974);
  v11 = *(v7 + 48);
  if (!v11(v12, 1, v6))
  {
    sub_266ECB128(&unk_287886A38);
    sub_26738115C();
  }

  (v10)(v22, 0);
  v9(v23, 0);
  (*(v19 + 104))(v20, *MEMORY[0x277D3E540], v21);
  v23[0] = 1;
  sub_26738114C();
  v18(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x53676E6974736F70, 0xED000064496E6170);
  v13(v23, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v22, 0x53676E6974736F70, 0xED000064496E6170);
  if (!v11(v16, 1, v6))
  {
    sub_266ECB128(&unk_287886A68);
    sub_26738115C();
  }

  (v15)(v22, 0);
  return v14(v23, 0);
}

uint64_t sub_267000A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267000A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F26B8, 0x277D57BF0);
  sub_266ECAF2C(&qword_2800F26C0, &qword_2800F26B8, 0x277D57BF0);
  sub_26738121C();
  v7 = sub_26738116C();
  v25 = *(v7 - 8);
  v8 = *(v25 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F26C8, 0x277D57BD8);
  sub_266ECAF2C(&qword_2800F26D0, &qword_2800F26C8, 0x277D57BD8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F26D8, 0x277D57BE0);
  sub_266ECAF2C(&qword_2800F26E0, &qword_2800F26D8, 0x277D57BE0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496563617274, 0xE700000000000000);
  v12(v30, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v29, 0x64496563617274, 0xE700000000000000);
  if (!(*(v25 + 48))(v15, 1, v7))
  {
    sub_266ECB128(&unk_287886A90);
    sub_26738115C();
  }

  (v14)(v29, 0);
  v13(v30, 0);
  v16 = v26;
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
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v16, v28);
  return v17(v30, 0);
}

uint64_t sub_2670011C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267001228(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x4564656C646E6168, 0xEC000000726F7272);
  return v5(v7, 0);
}

uint64_t sub_2670014A8()
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
  sub_266EC637C(v3, 0x4564656C646E6168, 0xEC000000726F7272);
  return v5(v7, 0);
}

uint64_t sub_26700164C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670016B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267001934()
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

uint64_t sub_267001ADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267001B40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestInvoked.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6F69737365536669, 0xEB0000000064496ELL);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254746E65696C63, 0xED00006449656361);
  return v7(v9, 0);
}

uint64_t sub_267001E7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267001EE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFPlatformRequestSchemaIFPlatformRequestTarget(0);
  sub_267002274(&qword_2800F26F8, type metadata accessor for IFPlatformRequestSchemaIFPlatformRequestTarget);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267444170);
  return v5(v7, 0);
}

uint64_t sub_267002168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670021CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267002274(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670022BC()
{
  result = qword_2800F26B8;
  if (!qword_2800F26B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F26B8);
  }

  return result;
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestTarget.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674441D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x80000002674441F0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267444230, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000037, 0x8000000267444260, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(201, 0xD000000000000035, 0x80000002674442A0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(301, 0xD000000000000033, 0x80000002674442E0, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(401, 0xD000000000000034, 0x8000000267444320, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(501, 0xD00000000000003ALL, 0x8000000267444360, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(601, 0xD00000000000002BLL, 0x80000002674443A0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_2670027BC(uint64_t a1)
{
  v2 = sub_2670028C0(&qword_2800F2700);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267002824(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670028C0(&qword_2800F2700);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670028C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFPlatformRequestSchemaIFPlatformRequestTarget(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFPlatformSchemaIFPlatformClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2708, 0x277D57C00);
  sub_266ECAF2C(&qword_2800F2710, &qword_2800F2708, 0x277D57C00);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F2718, 0x277D57C08);
  sub_266ECAF2C(&qword_2800F2720, &qword_2800F2718, 0x277D57C08);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267444410);
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
  sub_266ECB128(&unk_287886AC0);
  return sub_2673811CC();
}

uint64_t sub_267002D34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267002DCC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267002E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267002EFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267002F5C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2728, &qword_2800F2730, 0x277D57BF8);
  a1[2] = sub_266ECAF2C(&qword_2800F2738, &qword_2800F2730, 0x277D57BF8);
  result = sub_266ECAF2C(&qword_2800F2740, &qword_2800F2730, 0x277D57BF8);
  a1[3] = result;
  return result;
}

uint64_t static IFPlatformSchemaIFPlatformClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v17 = sub_26738113C();
  v15 = *(v17 - 8);
  v0 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v16 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v14 = *(v7 + 56);
  v14(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F69737365536669, 0xEB0000000064496ELL);
  v8(v19, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v18, 0x6F69737365536669, 0xEB0000000064496ELL);
  if (!(*(v7 + 48))(v11, 1, v6))
  {
    sub_266ECB128(&unk_287886AF8);
    sub_26738115C();
  }

  (v10)(v18, 0);
  v9(v19, 0);
  (*(v15 + 104))(v16, *MEMORY[0x277D3E540], v17);
  v19[0] = 1;
  sub_26738114C();
  v14(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x53676E6974736F70, 0xED000064496E6170);
  return v12(v19, 0);
}

uint64_t sub_267003458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670034BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformSchemaIFPlatformTarget.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674444A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v64;

  v1(v74, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674444C0, v11);
  v12 = *v9;
  *v9 = v65;

  v7(v74, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674444F0, v17);
  v18 = *v15;
  *v15 = v66;

  v13(v74, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(101, 0xD00000000000002FLL, 0x8000000267444520, v23);
  v24 = *v21;
  *v21 = v67;

  v19(v74, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(201, 0xD00000000000002DLL, 0x8000000267444550, v29);
  v30 = *v27;
  *v27 = v68;

  v25(v74, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(301, 0xD00000000000002BLL, 0x8000000267444580, v35);
  v36 = *v33;
  *v33 = v69;

  v31(v74, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(401, 0xD00000000000002CLL, 0x80000002674445B0, v41);
  v42 = *v39;
  *v39 = v70;

  v37(v74, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(501, 0xD000000000000032, 0x80000002674445E0, v47);
  v48 = *v45;
  *v45 = v71;

  v43(v74, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(601, 0xD00000000000002BLL, 0x80000002674443A0, v53);
  v54 = *v51;
  *v51 = v72;

  v49(v74, 0);
  v55 = sub_266ECB128(&unk_287886B28);
  v57 = v56;
  v58 = sub_2673810FC();
  v60 = v59;
  v61 = *v59;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v60;
  *v60 = 0x8000000000000000;
  sub_266ECD4CC(v55, v57, 601, v62);
  *v60 = v73;
  return v58(v74, 0);
}

uint64_t sub_267003A8C(uint64_t a1)
{
  v2 = sub_267003B90(&qword_2800F2758);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267003AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267003B90(&qword_2800F2758);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267003B90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFPlatformSchemaIFPlatformTarget(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFPlatformSchemaIFPlatformTargetContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2760, 0x277D57C20);
  sub_266ECAF2C(&qword_2800F2768, &qword_2800F2760, 0x277D57C20);
  sub_26738121C();
  v7 = sub_26738116C();
  v25 = *(v7 - 8);
  v8 = *(v25 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F2770, 0x277D57C10);
  sub_266ECAF2C(&qword_2800F2778, &qword_2800F2770, 0x277D57C10);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F2780, 0x277D57C18);
  sub_266ECAF2C(&qword_2800F2788, &qword_2800F2780, 0x277D57C18);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496563617274, 0xE700000000000000);
  v12(v30, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v29, 0x64496563617274, 0xE700000000000000);
  if (!(*(v25 + 48))(v15, 1, v7))
  {
    sub_266ECB128(&unk_287886B50);
    sub_26738115C();
  }

  (v14)(v29, 0);
  v13(v30, 0);
  v16 = v26;
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
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v16, v28);
  return v17(v30, 0);
}

uint64_t sub_267004260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670042C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformSchemaIFPlatformTargetEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x4564656C646E6168, 0xEC000000726F7272);
  return v5(v7, 0);
}

uint64_t sub_267004544()
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
  sub_266EC637C(v3, 0x4564656C646E6168, 0xEC000000726F7272);
  return v5(v7, 0);
}

uint64_t sub_2670046E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700474C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformSchemaIFPlatformTargetFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670049D0()
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

uint64_t sub_267004B78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267004BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformSchemaIFPlatformTargetStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFPlatformSchemaIFPlatformTarget(0);
  sub_267004F70(&qword_2800F2750, type metadata accessor for IFPlatformSchemaIFPlatformTarget);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267444720);
  return v5(v7, 0);
}

uint64_t sub_267004E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267004EC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267004F70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267004FB8()
{
  result = qword_2800F2760;
  if (!qword_2800F2760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2760);
  }

  return result;
}

uint64_t static IFTSchemaASTExprContinuePlanningVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886B80);
  return sub_2673811CC();
}

uint64_t sub_267005264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670052C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700532C()
{
  result = qword_2800F2790;
  if (!qword_2800F2790)
  {
    sub_267005384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2790);
  }

  return result;
}

unint64_t sub_267005384()
{
  result = qword_2800F2798;
  if (!qword_2800F2798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2798);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprCallVariant.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v22 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v21 = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v24[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x737473697865, 0xE600000000000000);
  v15(v24, 0);
  v11(v6, *MEMORY[0x277D3E530], v22);
  v24[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496C6F6F74, 0xE600000000000000);
  v16(v24, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v23, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v13 + 48))(v19, 1, v12))
  {
    sub_266ECB128(&unk_287886BA8);
    sub_26738115C();
  }

  (v18)(v23, 0);
  v17(v24, 0);
  sub_266ECB128(&unk_287886BD8);
  return sub_2673811CC();
}

uint64_t sub_2670057A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267005808(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700586C()
{
  result = qword_2800F27A0;
  if (!qword_2800F27A0)
  {
    sub_2670058C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F27A0);
  }

  return result;
}

unint64_t sub_2670058C4()
{
  result = qword_2800F27A8;
  if (!qword_2800F27A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F27A8);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprCancelVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645776172, 0xEA00000000006449);
  v12(v14, 0);
  sub_266ECB128(&unk_287886C00);
  return sub_2673811CC();
}

uint64_t sub_267005C54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267005CB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprConfirmVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645776172, 0xEA00000000006449);
  v12(v14, 0);
  sub_266ECB128(&unk_287886C28);
  return sub_2673811CC();
}

uint64_t sub_2670060A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267006104(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprDotVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886C50);
  return sub_2673811CC();
}

uint64_t sub_267006408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700646C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670064D0()
{
  result = qword_2800F27D0;
  if (!qword_2800F27D0)
  {
    sub_267006528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F27D0);
  }

  return result;
}

unint64_t sub_267006528()
{
  result = qword_2800F27D8;
  if (!qword_2800F27D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F27D8);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprIndexVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886C78);
  return sub_2673811CC();
}

uint64_t sub_2670067D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267006838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700689C()
{
  result = qword_2800F27E0;
  if (!qword_2800F27E0)
  {
    sub_2670068F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F27E0);
  }

  return result;
}

unint64_t sub_2670068F4()
{
  result = qword_2800F27E8;
  if (!qword_2800F27E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F27E8);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprInfixVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886CA0);
  return sub_2673811CC();
}

uint64_t sub_267006BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267006C04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267006C68()
{
  result = qword_2800F27F0;
  if (!qword_2800F27F0)
  {
    sub_267006CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F27F0);
  }

  return result;
}

unint64_t sub_267006CC0()
{
  result = qword_2800F27F8;
  if (!qword_2800F27F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F27F8);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprPickOneVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645776172, 0xEA00000000006449);
  v12(v14, 0);
  sub_266ECB128(&unk_287886CC8);
  return sub_2673811CC();
}

uint64_t sub_267007050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670070B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprPickVariant.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645776172, 0xEA00000000006449);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F2810, 0x277D57CC8);
  sub_266ECAF2C(&qword_2800F2818, &qword_2800F2810, 0x277D57CC8);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x657079546B636970, 0xE800000000000000);
  v13(v15, 0);
  sub_266ECB128(&unk_287886CF0);
  return sub_2673811CC();
}

uint64_t sub_267007564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670075C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprPrefixVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886D18);
  return sub_2673811CC();
}

uint64_t sub_2670078CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267007930(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267007994()
{
  result = qword_2800F2830;
  if (!qword_2800F2830)
  {
    sub_2670079EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2830);
  }

  return result;
}

unint64_t sub_2670079EC()
{
  result = qword_2800F2838;
  if (!qword_2800F2838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2838);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprRejectVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645776172, 0xEA00000000006449);
  v12(v14, 0);
  sub_266ECB128(&unk_287886D40);
  return sub_2673811CC();
}

uint64_t sub_267007D7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267007DE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprResolveToolVariant.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v22 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v21 = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v24[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x737473697865, 0xE600000000000000);
  v15(v24, 0);
  v11(v6, *MEMORY[0x277D3E530], v22);
  v24[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x7364496C6F6F74, 0xE700000000000000);
  v16(v24, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v23, 0x7364496C6F6F74, 0xE700000000000000);
  if (!(*(v13 + 48))(v19, 1, v12))
  {
    sub_266ECB128(&unk_287886D68);
    sub_26738115C();
  }

  (v18)(v23, 0);
  v17(v24, 0);
  sub_266ECB128(&unk_287886D98);
  return sub_2673811CC();
}

uint64_t sub_26700825C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670082C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267008324()
{
  result = qword_2800F2850;
  if (!qword_2800F2850)
  {
    sub_26700837C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2850);
  }

  return result;
}

unint64_t sub_26700837C()
{
  result = qword_2800F2858;
  if (!qword_2800F2858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2858);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprSayVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886DC0);
  return sub_2673811CC();
}

uint64_t sub_267008628(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700868C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670086F0()
{
  result = qword_2800F2860;
  if (!qword_2800F2860)
  {
    sub_267008748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2860);
  }

  return result;
}

unint64_t sub_267008748()
{
  result = qword_2800F2868;
  if (!qword_2800F2868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2868);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprSearchVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v16 = *MEMORY[0x277D3E4E8];
  v15 = *(v1 + 104);
  v15(v4);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  v12(v19, 0);
  (v15)(v4, v16, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267444A60);
  v13(v19, 0);
  sub_266ECB128(&unk_287886DE8);
  return sub_2673811CC();
}

uint64_t sub_267008B98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267008BFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprSearchVariantTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x7972657571, 0xE500000000000000);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x7972657571, 0xE500000000000000);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287886E10);
    sub_26738115C();
  }

  (v14)(v19, 0);
  v13(v20, 0);
  sub_266ECB128(&unk_287886E48);
  return sub_2673811CC();
}

uint64_t sub_267009080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670090E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprUndoVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657645776172, 0xEA00000000006449);
  v12(v14, 0);
  sub_266ECB128(&unk_287886E70);
  return sub_2673811CC();
}

uint64_t sub_2670094CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267009530(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprUpdateParametersVariant.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28A0, 0x277D57CB0);
  sub_266ECAF2C(&qword_2800F28A8, &qword_2800F28A0, 0x277D57CB0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73657461647075, 0xE700000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287886E98);
  return sub_2673811CC();
}

uint64_t sub_2670097D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267009838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprUpdateVariant.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v16[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v16, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 7563372, 0xE300000000000000);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F28D0, 0x277D57CC0);
  sub_266ECAF2C(&qword_2800F28D8, &qword_2800F28D0, 0x277D57CC0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 1752457584, 0xE400000000000000);
  v13(v16, 0);
  type metadata accessor for IFTSchemaASTUpdateKind(0);
  sub_267009E18();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 1684957547, 0xE400000000000000);
  v14(v16, 0);
  sub_266ECB128(&unk_287886EC0);
  return sub_2673811CC();
}

uint64_t sub_267009D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267009DB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267009E18()
{
  result = qword_2800F28E0;
  if (!qword_2800F28E0)
  {
    type metadata accessor for IFTSchemaASTUpdateKind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F28E0);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatValue.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886EE8);
  return sub_2673811CC();
}

uint64_t sub_26700A114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700A178(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700A1DC()
{
  result = qword_2800F28E8;
  if (!qword_2800F28E8)
  {
    sub_26700A234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F28E8);
  }

  return result;
}

unint64_t sub_26700A234()
{
  result = qword_2800F28F0;
  if (!qword_2800F28F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F28F0);
  }

  return result;
}

uint64_t static IFTSchemaASTPath.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6574656D61726170, 0xED0000656D614E72);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E510], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x697463656C6C6F63, 0xEF7865646E496E6FLL);
  v15(v18, 0);
  sub_266ECB128(&unk_287886F10);
  return sub_2673811CC();
}

uint64_t sub_26700A5D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700A634(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700A698()
{
  result = qword_2800F28D8;
  if (!qword_2800F28D8)
  {
    sub_26700A6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F28D8);
  }

  return result;
}

unint64_t sub_26700A6F0()
{
  result = qword_2800F28D0;
  if (!qword_2800F28D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F28D0);
  }

  return result;
}

uint64_t static IFTSchemaASTPickType.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v28 = a1;
  sub_26738119C();
  v14 = *(v6 + 104);
  v14(v9, *MEMORY[0x277D3E510], v5);
  v32[0] = 0;
  sub_26738114C();
  v15 = sub_26738116C();
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v13, 0x7865646E69, 0xE500000000000000);
  v17(v32, 0);
  v14(v9, *MEMORY[0x277D3E4E8], v5);
  v18 = v29;
  v32[0] = 0;
  sub_26738114C();
  v16(v13, 0, 1, v15);
  v19 = sub_2673811AC();
  sub_266EC637C(v13, 1701736302, 0xE400000000000000);
  v19(v32, 0);
  sub_26738117C();
  v20 = sub_2673811BC();
  v22 = v21;
  v23 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_266ECAD54(0, v23[2] + 1, 1, v23);
    *v22 = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_266ECAD54(v25 > 1, v26 + 1, 1, v23);
    *v22 = v23;
  }

  v23[2] = v26 + 1;
  (*(v30 + 32))(v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v18, v31);
  return v20(v32, 0);
}

uint64_t sub_26700ABBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700AC20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700AC84()
{
  result = qword_2800F2818;
  if (!qword_2800F2818)
  {
    sub_26700ACDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2818);
  }

  return result;
}

unint64_t sub_26700ACDC()
{
  result = qword_2800F2810;
  if (!qword_2800F2810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2810);
  }

  return result;
}

uint64_t static IFTSchemaASTUpdateKind.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267444C40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267444C60, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267444C80, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26700AF40(uint64_t a1)
{
  v2 = sub_26700B044(&qword_2800F28F8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26700AFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26700B044(&qword_2800F28F8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26700B044(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaASTUpdateKind(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v37 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v34 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v2 + 104);
  v35 = *MEMORY[0x277D3E4E8];
  v39 = v2 + 104;
  v40 = v1;
  v38 = v10;
  (v10)(v5);
  v44[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v41 = *(v12 + 56);
  v42 = v12 + 56;
  v41(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v44, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v43, 0x737473697865, 0xE600000000000000);
  v36 = *(v12 + 48);
  v17 = v36(v16, 1, v11);
  v34[1] = v12 + 48;
  if (!v17)
  {
    sub_266ECB128(&unk_287886F38);
    sub_26738115C();
  }

  (v15)(v43, 0);
  v14(v44, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v18 = v41;
  v41(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  v19(v44, 0);
  v20 = *MEMORY[0x277D3E530];
  v38(v5, v20, v40);
  v44[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496C6F6F74, 0xE600000000000000);
  v21(v44, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v43, 0x64496C6F6F74, 0xE600000000000000);
  if (!v36(v24, 1, v11))
  {
    sub_266ECB128(&unk_287886F60);
    sub_26738115C();
  }

  (v23)(v43, 0);
  v22(v44, 0);
  v38(v5, v20, v40);
  v44[0] = 1;
  sub_26738114C();
  v41(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v25(v44, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v43, 0x6449656C646E7562, 0xE800000000000000);
  if (!v36(v28, 1, v11))
  {
    sub_266ECB128(&unk_287886F90);
    sub_26738115C();
  }

  (v27)(v43, 0);
  v26(v44, 0);
  v38(v5, v35, v40);
  v44[0] = 1;
  sub_26738114C();
  v29 = v41;
  v41(v9, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x7269666E6F437369, 0xEB0000000064656DLL);
  v30(v44, 0);
  sub_266ECB294(0, &qword_2800F2900, 0x277D57D20);
  sub_266ECAF2C(&qword_2800F2908, &qword_2800F2900, 0x277D57D20);
  sub_26738122C();
  v29(v9, 0, 1, v11);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267444CD0);
  v31(v44, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v29(v9, 0, 1, v11);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6576456E616C70, 0xEB00000000644974);
  return v32(v44, 0);
}

uint64_t sub_26700B980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700B9E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionCancellation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v17[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v17, 0);
  v16 = "iri.ift.IFTActionCancellation";
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v16 | 0x8000000000000000);
  v12(v17, 0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6574617473, 0xEB00000000644974);
  return v13(v17, 0);
}

uint64_t sub_26700BE58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700BEBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionClass.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267444D70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267444D90, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267444DB0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267444DD0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26700C1E4(uint64_t a1)
{
  v2 = sub_26700C2E8(&qword_2800F2938);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26700C24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26700C2E8(&qword_2800F2938);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26700C2E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTActionClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}