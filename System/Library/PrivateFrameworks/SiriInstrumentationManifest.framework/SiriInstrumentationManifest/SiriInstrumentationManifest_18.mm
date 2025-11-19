uint64_t sub_2671B086C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B0908(&qword_2800F6F70);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B0908(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHTTSPowerContextPolicy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUIActivationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6F78, 0x277D59880);
  sub_266ECAF2C(&qword_2800F6F80, &qword_2800F6F78, 0x277D59880);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F6F88, 0x277D59878);
  sub_266ECAF2C(&qword_2800F6F90, &qword_2800F6F88, 0x277D59878);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
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

uint64_t sub_2671B0E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B0EC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHUIActivationEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671B11B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B1214(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B1278()
{
  result = qword_2800F6F90;
  if (!qword_2800F6F90)
  {
    sub_2671B12D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F90);
  }

  return result;
}

unint64_t sub_2671B12D0()
{
  result = qword_2800F6F88;
  if (!qword_2800F6F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F88);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUIActivationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671B1564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B15C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B162C()
{
  result = qword_2800F6F80;
  if (!qword_2800F6F80)
  {
    sub_2671B1684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F80);
  }

  return result;
}

unint64_t sub_2671B1684()
{
  result = qword_2800F6F78;
  if (!qword_2800F6F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F78);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUnsupportedLanguageDetected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaISOLanguageCode(0);
  sub_2671B19C0(&qword_2800F12E8, type metadata accessor for SISchemaISOLanguageCode);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267471A00);
  return v5(v7, 0);
}

uint64_t sub_2671B18B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B1918(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B19C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671B1A08()
{
  result = qword_2800F6AD8;
  if (!qword_2800F6AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6AD8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUserIdentityClassification.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267471A60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267471A90, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x8000000267471AC0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267471AF0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x8000000267471B20, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x8000000267471B50, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2671B1DBC(uint64_t a1)
{
  v2 = sub_2671B1EC0(&qword_2800F6F98);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B1E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B1EC0(&qword_2800F6F98);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B1EC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHUserIdentityClassification(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUserSessionAccessLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267471BC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267471BF0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267471C10, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671B2118(uint64_t a1)
{
  v2 = sub_2671B221C(&qword_2800F6FA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B2180(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B221C(&qword_2800F6FA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B221C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHUserSessionAccessLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUserSessionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267471C60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267471C80, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267471CA0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267471CC0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671B24E8(uint64_t a1)
{
  v2 = sub_2671B25EC(&qword_2800F6FA8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B2550(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B25EC(&qword_2800F6FA8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B25EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHUserSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHVisionPowerState.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for ORCHSchemaORCHBlackboardUseCaseProfile(0);
  sub_2671B2A70(&qword_2800F6858, type metadata accessor for ORCHSchemaORCHBlackboardUseCaseProfile);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267471D10);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E508], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x8000000267471D30);
  return v11(v15, 0);
}

uint64_t sub_2671B2964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B29C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B2A70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671B2AB8()
{
  result = qword_2800F6E28;
  if (!qword_2800F6E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E28);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlignmentOffset.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "SUSAlignmentOffset";
  v11 = *MEMORY[0x277D3E508];
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
  sub_266EC637C(v10, 0x6172616843646E65, 0xEF78644972657463);
  return v16(v21, 0);
}

uint64_t sub_2671B2E3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B2EA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B2F04()
{
  result = qword_2800F6FB0;
  if (!qword_2800F6FB0)
  {
    sub_2671B2F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6FB0);
  }

  return result;
}

unint64_t sub_2671B2F5C()
{
  result = qword_2800F6FB8;
  if (!qword_2800F6FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6FB8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlternateQuerySuggestion.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267471DF0);
  return v10(v12, 0);
}

uint64_t sub_2671B31F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B325C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B32C0()
{
  result = qword_2800F6FC0;
  if (!qword_2800F6FC0)
  {
    sub_2671B3318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6FC0);
  }

  return result;
}

unint64_t sub_2671B3318()
{
  result = qword_2800F6FC8;
  if (!qword_2800F6FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6FC8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1.makeTypeManifestAndEnsureFields(in:)()
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
  v17 = "ySuggestionCandidateTier1";
  type metadata accessor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType(0);
  sub_2671B3840(&qword_2800F6FD0, type metadata accessor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v17 | 0x8000000000000000);
  v11(v20, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 1954047348, 0xE400000000000000);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 1954047348, 0xE400000000000000);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788B9B0);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_2671B3734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B3798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B3840(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671B3888()
{
  result = qword_2800F6FE0;
  if (!qword_2800F6FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6FE0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000038, 0x8000000267471ED0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x8000000267471F10, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2671B3A78(uint64_t a1)
{
  v2 = sub_2671B3B7C(&qword_2800F6FE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B3AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B3B7C(&qword_2800F6FE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B3B7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6FE0, 0x277D598B0);
  sub_266ECAF2C(&qword_2800F6FD8, &qword_2800F6FE0, 0x277D598B0);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000026, 0x8000000267471FA0);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0xD000000000000026, 0x8000000267471FA0);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788B9D8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2671B3E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B3EC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v26 = v1;
  v11(v5, v10, v1);
  v27 = v11;
  v28 = v2 + 104;
  v32[0] = 1;
  sub_26738114C();
  v25 = sub_26738116C();
  v12 = *(v25 - 8);
  v13 = *(v12 + 56);
  v30 = v12 + 56;
  v31 = v13;
  v13(v9, 0, 1, v25);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267472010);
  v14(v32, 0);
  v11(v5, v10, v1);
  v32[0] = 1;
  v15 = v5;
  sub_26738114C();
  v16 = v25;
  v17 = v31;
  v31(v9, 0, 1, v25);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267472030);
  v18(v32, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSSafetyStatus(0);
  sub_2671B459C();
  sub_26738120C();
  v17(v9, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267472050);
  v19(v32, 0);
  sub_266ECB294(0, &qword_2800F7008, 0x277D59A10);
  sub_266ECAF2C(&qword_2800F7010, &qword_2800F7008, 0x277D59A10);
  sub_26738122C();
  v20 = v31;
  v31(v9, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267472070);
  v21(v32, 0);
  v27(v15, *MEMORY[0x277D3E530], v26);
  v32[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  return v22(v32, 0);
}

uint64_t sub_2671B44D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B453C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B459C()
{
  result = qword_2800F7000;
  if (!qword_2800F7000)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSSafetyStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7000);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAsrCorrectionInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7028, 0x277D598D0);
  sub_266ECAF2C(&qword_2800F7030, &qword_2800F7028, 0x277D598D0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674720D0);
  return v5(v7, 0);
}

uint64_t sub_2671B4830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B4894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAsrHypothesisIdx.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v10, 0x7541656372756F73, 0xEC00000079654B78);
  v15(v25, 0);
  v16 = *MEMORY[0x277D3E538];
  v17 = v2;
  v18 = v24;
  v24(v6, v16, v17);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x7541656372756F73, 0xEC00000078644978);
  v19(v25, 0);
  v18(v6, v16, v23);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x8000000267472130);
  return v20(v25, 0);
}

uint64_t sub_2671B4D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B4D8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B4DF0()
{
  result = qword_2800F7048;
  if (!qword_2800F7048)
  {
    sub_2671B4E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7048);
  }

  return result;
}

unint64_t sub_2671B4E48()
{
  result = qword_2800F7050;
  if (!qword_2800F7050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7050);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAsrHypothesisInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v41 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v39 = v2 + 104;
  v40 = v1;
  v36 = v11;
  v11(v5, v10, v1);
  v43[0] = 1;
  v35 = v5;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v37 = v13 + 56;
  v38 = v14;
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267472190);
  v15(v43, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v42, 0xD000000000000010, 0x8000000267472190);
  if (!(*(v13 + 48))(v18, 1, v12))
  {
    sub_266ECB128(&unk_28788BA00);
    sub_26738115C();
  }

  (v17)(v42, 0);
  v16(v43, 0);
  sub_266ECB294(0, &qword_2800F7050, 0x277D598C8);
  sub_266ECAF2C(&qword_2800F7048, &qword_2800F7050, 0x277D598C8);
  sub_26738120C();
  v19 = v38;
  v38(v9, 0, 1, v12);
  v20 = v19;
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 7890025, 0xE300000000000000);
  v21(v43, 0);
  v22 = v35;
  v23 = v40;
  v24 = v12;
  v25 = v36;
  v36(v35, *MEMORY[0x277D3E500], v40);
  v43[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F6373, 0xE500000000000000);
  v26(v43, 0);
  v34 = "postItnUtterance";
  v27 = *MEMORY[0x277D3E4E8];
  v25(v22, v27, v23);
  v43[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v34 | 0x8000000000000000);
  v28(v43, 0);
  v25(v22, v27, v40);
  v43[0] = 1;
  sub_26738114C();
  v29 = v24;
  v30 = v38;
  v38(v9, 0, 1, v24);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x80000002674721D0);
  v31(v43, 0);
  sub_266ECB294(0, &qword_2800F7058, 0x277D59928);
  sub_266ECAF2C(&qword_2800F7060, &qword_2800F7058, 0x277D59928);
  sub_26738122C();
  v30(v9, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974636572726F63, 0xEB00000000736E6FLL);
  return v32(v43, 0);
}

uint64_t sub_2671B55A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B5608(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAudioAttribute.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267472230, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267472250, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267472280, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x80000002674722A0, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x80000002674722D0, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x80000002674722F0, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267472310, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x8000000267472330, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x8000000267472360, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000021, 0x8000000267472380, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x80000002674723B0, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x80000002674723D0, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_2671B5CC4(uint64_t a1)
{
  v2 = sub_2671B5DC8(&qword_2800F7070);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B5D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B5DC8(&qword_2800F7070);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B5DC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioDecade.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267472440, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267472460, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267472480, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674724A0, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x80000002674724C0, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x80000002674724E0, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x8000000267472500, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x8000000267472520, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000018, 0x8000000267472540, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000018, 0x8000000267472560, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000018, 0x8000000267472580, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000018, 0x80000002674725A0, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_2671B6438(uint64_t a1)
{
  v2 = sub_2671B653C(&qword_2800F7080);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B64A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B653C(&qword_2800F7080);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B653C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioDecade(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioEntitySource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267472600, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267472630, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267472650, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671B6798(uint64_t a1)
{
  v2 = sub_2671B689C(&qword_2800F7090);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B6800(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B689C(&qword_2800F7090);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B689C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioEntitySource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioExecution.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7098, 0x277D598E8);
  sub_266ECAF2C(&qword_2800F70A0, &qword_2800F7098, 0x277D598E8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674726B0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F70A8, 0x277D59910);
  sub_266ECAF2C(&qword_2800F70B0, &qword_2800F70A8, 0x277D59910);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x80000002674726D0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F70B8, 0x277D598F0);
  sub_266ECAF2C(&qword_2800F70C0, &qword_2800F70B8, 0x277D598F0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674726F0);
  return v8(v10, 0);
}

uint64_t sub_2671B6C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B6CEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAudioExecutionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v2 + 104);
  v32 = *MEMORY[0x277D3E530];
  v33 = v2 + 104;
  v34 = v1;
  v31 = v10;
  v10(v5);
  v38[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v35 = *(v12 + 56);
  v36 = v12 + 56;
  v35(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x75614C6F69647561, 0xED0000644968636ELL);
  v13(v38, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v37, 0x75614C6F69647561, 0xED0000644968636ELL);
  v30 = *(v12 + 48);
  if (!v30(v16, 1, v11))
  {
    sub_266ECB128(&unk_28788BA28);
    sub_26738115C();
  }

  (v15)(v37, 0);
  v14(v38, 0);
  v31(v5, v32, v34);
  v38[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7079546F69647561, 0xE900000000000065);
  v17(v38, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v37, 0x7079546F69647561, 0xE900000000000065);
  if (!v30(v20, 1, v11))
  {
    sub_266ECB128(&unk_28788BA50);
    sub_26738115C();
  }

  (v19)(v37, 0);
  v18(v38, 0);
  v31(v5, v32, v34);
  v38[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267472750);
  v21(v38, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v37, 0xD000000000000014, 0x8000000267472750);
  if (!v30(v24, 1, v11))
  {
    sub_266ECB128(&unk_28788BA78);
    sub_26738115C();
  }

  (v23)(v37, 0);
  v22(v38, 0);
  sub_266ECB294(0, &qword_2800F70D8, 0x277D59918);
  sub_266ECAF2C(&qword_2800F70E0, &qword_2800F70D8, 0x277D59918);
  sub_26738120C();
  v25 = v35;
  v35(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267472770);
  v26(v38, 0);
  sub_266ECB294(0, &qword_2800F70E8, 0x277D598F8);
  sub_266ECAF2C(&qword_2800F70F0, &qword_2800F70E8, 0x277D598F8);
  sub_26738120C();
  v25(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267472790);
  return v27(v38, 0);
}

uint64_t sub_2671B74FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B7560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x80000002674727F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267472820, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267472850, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267472880, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671B7888(uint64_t a1)
{
  v2 = sub_2671B798C(&qword_2800F7110);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B78F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B798C(&qword_2800F7110);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B798C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioPlaybackSignal.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation(0);
  sub_2671B7E10(&qword_2800F7108, type metadata accessor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x80000002674728F0);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E500], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267472910);
  return v11(v15, 0);
}

uint64_t sub_2671B7D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B7D68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B7E10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671B7E58()
{
  result = qword_2800F7098;
  if (!qword_2800F7098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7098);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaMediaPlayBackState(0);
  sub_2671B8524(&qword_2800EFAD8, type metadata accessor for SISchemaMediaPlayBackState);
  v31 = a1;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v29 = v12;
  v13(v11, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0x6174536F69647561, 0xEA00000000006574);
  v14(v34, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSAudioEntitySource(0);
  sub_2671B8524(&qword_2800F7088, type metadata accessor for PEGASUSSchemaPEGASUSAudioEntitySource);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v15 = v13;
  v27[1] = a2;
  v28 = v13;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x8000000267472970);
  v16(v34, 0);
  v27[0] = "audioEntitySource";
  v17 = *MEMORY[0x277D3E508];
  v18 = v32;
  v19 = *(v33 + 104);
  v33 += 104;
  v20 = v30;
  v19(v30, v17, v32);
  v34[0] = 1;
  sub_26738114C();
  v21 = v29;
  v15(v11, 0, 1, v29);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v27[0] | 0x8000000000000000);
  v22(v34, 0);
  v19(v20, v17, v18);
  v34[0] = 1;
  sub_26738114C();
  v23 = v28;
  v28(v11, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x80000002674729B0);
  v24(v34, 0);
  sub_266ECB294(0, &qword_2800F7118, 0x277D59900);
  sub_266ECAF2C(&qword_2800F7120, &qword_2800F7118, 0x277D59900);
  sub_26738120C();
  v23(v11, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x80000002674729D0);
  return v25(v34, 0);
}

uint64_t sub_2671B8460(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B84C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B8524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7128, 0x277D59908);
  sub_266ECAF2C(&qword_2800F7130, &qword_2800F7128, 0x277D59908);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267472A30);
  return v5(v7, 0);
}

uint64_t sub_2671B87A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B880C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateItem.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSAudioQueueStateItemType(0);
  sub_2671B8BA0(&qword_2800F7138, type metadata accessor for PEGASUSSchemaPEGASUSAudioQueueStateItemType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267472A90);
  return v5(v7, 0);
}

uint64_t sub_2671B8A94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B8AF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B8BA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671B8BE8()
{
  result = qword_2800F7118;
  if (!qword_2800F7118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7118);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateItemTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v1 + 104);
  v34 = *MEMORY[0x277D3E530];
  v35 = v1 + 104;
  v36 = v0;
  v33 = v9;
  v9(v4);
  v38[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v31 = *(v11 + 56);
  v32 = v11 + 56;
  v31(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x626C416F69647561, 0xEA00000000006D75);
  v12(v38, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v37, 0x626C416F69647561, 0xEA00000000006D75);
  v30 = *(v11 + 48);
  if (!v30(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788BAA0);
    sub_26738115C();
  }

  (v14)(v37, 0);
  v13(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x7472416F69647561, 0xEB00000000747369);
  v16(v38, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v37, 0x7472416F69647561, 0xEB00000000747369);
  if (!v30(v19, 1, v10))
  {
    sub_266ECB128(&unk_28788BAC8);
    sub_26738115C();
  }

  (v18)(v37, 0);
  v17(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x696C436F69647561, 0xED00006449746E65);
  v20(v38, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v37, 0x696C436F69647561, 0xED00006449746E65);
  if (!v30(v23, 1, v10))
  {
    sub_266ECB128(&unk_28788BAF0);
    sub_26738115C();
  }

  (v22)(v37, 0);
  v21(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x7469546F69647561, 0xEA0000000000656CLL);
  v24(v38, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v37, 0x7469546F69647561, 0xEA0000000000656CLL);
  if (!v30(v27, 1, v10))
  {
    sub_266ECB128(&unk_28788BB18);
    sub_26738115C();
  }

  (v26)(v37, 0);
  return v25(v38, 0);
}

uint64_t sub_2671B9348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B93AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B9410()
{
  result = qword_2800F7130;
  if (!qword_2800F7130)
  {
    sub_2671B9468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7130);
  }

  return result;
}

unint64_t sub_2671B9468()
{
  result = qword_2800F7128;
  if (!qword_2800F7128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7128);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateItemType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267472B30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267472B60, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267472B90, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267472BC0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x8000000267472BF0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x8000000267472C20, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267472C50, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2671B9890(uint64_t a1)
{
  v2 = sub_2671B9994(&qword_2800F7140);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B98F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B9994(&qword_2800F7140);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B9994(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioQueueStateItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioUnderstanding.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSAudioVerb(0);
  sub_2671B9F18(&qword_2800F7148, type metadata accessor for PEGASUSSchemaPEGASUSAudioVerb);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265566F69647561, 0xE900000000000062);
  v6(v11, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSRequestedMediaType(0);
  sub_2671B9F18(&qword_2800F7150, type metadata accessor for PEGASUSSchemaPEGASUSRequestedMediaType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267472CC0);
  v7(v11, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSAudioAttribute(0);
  sub_2671B9F18(&qword_2800F7068, type metadata accessor for PEGASUSSchemaPEGASUSAudioAttribute);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7474416F69647561, 0xEF73657475626972);
  v8(v11, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSAudioDecade(0);
  sub_2671B9F18(&qword_2800F7078, type metadata accessor for PEGASUSSchemaPEGASUSAudioDecade);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6365446F69647561, 0xEB00000000656461);
  return v9(v11, 0);
}

uint64_t sub_2671B9E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B9E70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B9F18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671B9F60()
{
  result = qword_2800F70A8;
  if (!qword_2800F70A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F70A8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioUnderstandingTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v1 + 104);
  v34 = *MEMORY[0x277D3E530];
  v35 = v1 + 104;
  v36 = v0;
  v33 = v9;
  v9(v4);
  v38[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v31 = *(v11 + 56);
  v32 = v11 + 56;
  v31(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7472416F69647561, 0xEB00000000747369);
  v12(v38, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v37, 0x7472416F69647561, 0xEB00000000747369);
  v30 = *(v11 + 48);
  if (!v30(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788BB40);
    sub_26738115C();
  }

  (v14)(v37, 0);
  v13(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x7070416F69647561, 0xEC000000656D614ELL);
  v16(v38, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v37, 0x7070416F69647561, 0xEC000000656D614ELL);
  if (!v30(v19, 1, v10))
  {
    sub_266ECB128(&unk_28788BB68);
    sub_26738115C();
  }

  (v18)(v37, 0);
  v17(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E456F69647561, 0xEB00000000797469);
  v20(v38, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v37, 0x746E456F69647561, 0xEB00000000797469);
  if (!v30(v23, 1, v10))
  {
    sub_266ECB128(&unk_28788BB90);
    sub_26738115C();
  }

  (v22)(v37, 0);
  v21(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267472D20);
  v24(v38, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v37, 0xD000000000000018, 0x8000000267472D20);
  if (!v30(v27, 1, v10))
  {
    sub_266ECB128(&unk_28788BBB8);
    sub_26738115C();
  }

  (v26)(v37, 0);
  return v25(v38, 0);
}

uint64_t sub_2671BA6B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BA718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671BA77C()
{
  result = qword_2800F70E0;
  if (!qword_2800F70E0)
  {
    sub_2671BA7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F70E0);
  }

  return result;
}

unint64_t sub_2671BA7D4()
{
  result = qword_2800F70D8;
  if (!qword_2800F70D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F70D8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioVerb.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267472D70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267472D90, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267472DB0, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267472DD0, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267472DF0, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267472E10, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x8000000267472E30, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x8000000267472E50, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000018, 0x8000000267472E70, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000017, 0x8000000267472E90, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267472EB0, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_2671BADC0(uint64_t a1)
{
  v2 = sub_2671BAEC4(&qword_2800F7158);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671BAE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671BAEC4(&qword_2800F7158);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671BAEC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioVerb(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSCirAlerts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v79 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v71 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v3 + 104);
  v80 = *MEMORY[0x277D3E530];
  v11 = v80;
  v12(v6, v80, v2);
  v78 = v3 + 104;
  v81[0] = 1;
  sub_26738114C();
  v77 = sub_26738116C();
  v13 = *(v77 - 8);
  v14 = *(v13 + 56);
  v75 = v13 + 56;
  v14(v10, 0, 1, v77);
  v73 = a1;
  v74 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x7472656C41726963, 0xE800000000000000);
  v15(v81, 0);
  v16 = v11;
  v17 = v79;
  v12(v6, v16, v79);
  v81[0] = 1;
  sub_26738114C();
  v18 = v77;
  v14(v10, 0, 1, v77);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x7472656C41726963, 0xEF747865746E6F43);
  v19(v81, 0);
  v71 = "iri.pegasus.PEGASUSCirAlerts";
  v20 = v80;
  v12(v6, v80, v17);
  v81[0] = 1;
  sub_26738114C();
  v74(v10, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v71 | 0x8000000000000000);
  v21(v81, 0);
  v71 = "cirAlertDictionaryOverKgBoost";
  v12(v6, v20, v17);
  v81[0] = 1;
  sub_26738114C();
  v22 = v74;
  v74(v10, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v71 | 0x8000000000000000);
  v23(v81, 0);
  v71 = "cirAlertDomainFallback";
  v24 = v80;
  v76 = v12;
  v12(v6, v80, v79);
  v81[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v18);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v71 | 0x8000000000000000);
  v25(v81, 0);
  v71 = "cirAlertEmergencyOverride";
  v72 = v6;
  v26 = v79;
  v12(v6, v24, v79);
  v81[0] = 1;
  sub_26738114C();
  v27 = v77;
  v28 = v74;
  v74(v10, 0, 1, v77);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v71 | 0x8000000000000000);
  v29(v81, 0);
  v71 = "cirAlertKgWaBoost";
  v30 = v72;
  v31 = v80;
  v76(v72, v80, v26);
  v81[0] = 1;
  sub_26738114C();
  v28(v10, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v71 | 0x8000000000000000);
  v32(v81, 0);
  v71 = "cirAlertKgWaBoostQa";
  v33 = v76;
  v76(v30, v31, v26);
  v81[0] = 1;
  sub_26738114C();
  v34 = v77;
  v35 = v74;
  v74(v10, 0, 1, v77);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v71 | 0x8000000000000000);
  v36(v81, 0);
  v71 = "cirAlertKgWaBoostWebPost";
  v37 = v79;
  v33(v30, v80, v79);
  v81[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v34);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v71 | 0x8000000000000000);
  v38(v81, 0);
  v71 = "cirAlertKgWaBoostWebPre";
  v39 = v80;
  v40 = v37;
  v41 = v76;
  v76(v30, v80, v40);
  v81[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v34);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v71 | 0x8000000000000000);
  v42(v81, 0);
  v71 = "cirAlertMapsKgSwap";
  v43 = v39;
  v44 = v79;
  v45 = v41;
  v41(v72, v43, v79);
  v81[0] = 1;
  sub_26738114C();
  v46 = v77;
  v47 = v74;
  v74(v10, 0, 1, v77);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v71 | 0x8000000000000000);
  v48(v81, 0);
  v71 = "cirAlertMediaPodcastOverride";
  v49 = v72;
  v50 = v80;
  v45(v72, v80, v44);
  v81[0] = 1;
  sub_26738114C();
  v47(v10, 0, 1, v46);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v71 | 0x8000000000000000);
  v51(v81, 0);
  v71 = "cirAlertProfaneFilter";
  v52 = v76;
  v76(v49, v50, v44);
  v81[0] = 1;
  sub_26738114C();
  v53 = v77;
  v54 = v74;
  v74(v10, 0, 1, v77);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, v71 | 0x8000000000000000);
  v55(v81, 0);
  v71 = "sFollowUpHeuristicFlag";
  v56 = v72;
  v52(v72, v80, v44);
  v81[0] = 1;
  sub_26738114C();
  v54(v10, 0, 1, v53);
  v57 = v54;
  v58 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002BLL, v71 | 0x8000000000000000);
  v58(v81, 0);
  v71 = "ultiTurnResolvedRankingFlag";
  v59 = v80;
  v60 = v76;
  v76(v56, v80, v44);
  v81[0] = 1;
  sub_26738114C();
  v61 = v77;
  v57(v10, 0, 1, v77);
  v62 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v71 | 0x8000000000000000);
  v62(v81, 0);
  v71 = "cirAlertRespectScoreOverrides";
  v63 = v79;
  v60(v56, v59, v79);
  v81[0] = 1;
  sub_26738114C();
  v57(v10, 0, 1, v61);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v71 | 0x8000000000000000);
  v64(v81, 0);
  v71 = "cirAlertVerblessQueriesKgBoost";
  v65 = v63;
  v66 = v76;
  v76(v56, v59, v65);
  v81[0] = 1;
  sub_26738114C();
  v67 = v77;
  v57(v10, 0, 1, v77);
  v68 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v71 | 0x8000000000000000);
  v68(v81, 0);
  v66(v56, v80, v79);
  v81[0] = 1;
  sub_26738114C();
  v57(v10, 0, 1, v67);
  v69 = sub_2673811AC();
  sub_266EC637C(v10, 0x7472656C41726963, 0xEF74736F6F426157);
  return v69(v81, 0);
}

uint64_t sub_2671BBF58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BBFBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671BC020()
{
  result = qword_2800F7160;
  if (!qword_2800F7160)
  {
    sub_2671BC078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7160);
  }

  return result;
}

unint64_t sub_2671BC078()
{
  result = qword_2800F7168;
  if (!qword_2800F7168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7168);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSCorrectionInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v4 + 104);
  v36 = *MEMORY[0x277D3E530];
  v38 = v4 + 104;
  v39 = v3;
  v35 = v12;
  v12(v7);
  v42[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v37 = *(v14 + 56);
  v37(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C616E696769726FLL, 0xE800000000000000);
  v15(v42, 0);
  v40 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v41, 0x6C616E696769726FLL, 0xE800000000000000);
  v33 = *(v14 + 48);
  if (!v33(v18, 1, v13))
  {
    sub_266ECB128(&unk_28788BBE0);
    sub_26738115C();
  }

  (v17)(v41, 0);
  v16(v42, 0);
  v35(v7, v36, v39);
  v42[0] = 1;
  sub_26738114C();
  v37(v11, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x6974636572726F63, 0xEA00000000006E6FLL);
  v19(v42, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v41, 0x6974636572726F63, 0xEA00000000006E6FLL);
  if (!v33(v22, 1, v13))
  {
    sub_266ECB128(&unk_28788BC08);
    sub_26738115C();
  }

  (v21)(v41, 0);
  v20(v42, 0);
  v23 = v39;
  v24 = v35;
  v35(v7, *MEMORY[0x277D3E500], v39);
  v42[0] = 1;
  sub_26738114C();
  v32 = v13;
  v25 = v37;
  v37(v11, 0, 1, v13);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x65726F6373, 0xE500000000000000);
  v26(v42, 0);
  v24(v7, v36, v23);
  v42[0] = 1;
  sub_26738114C();
  v27 = v32;
  v25(v11, 0, 1, v32);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0x7541656372756F73, 0xEC00000079654B78);
  v28(v42, 0);
  sub_266ECB294(0, &qword_2800F6FB8, 0x277D598A0);
  sub_266ECAF2C(&qword_2800F6FB0, &qword_2800F6FB8, 0x277D598A0);
  sub_26738120C();
  v25(v11, 0, 1, v27);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E656D6E67696C61, 0xEF74657366664F74);
  return v29(v42, 0);
}

uint64_t sub_2671BC798(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BC7FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSCrossIntentRankerResponse.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = sub_26738113C();
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
  v29 = "ssIntentRankerResponse";
  v12 = *MEMORY[0x277D3E530];
  v32 = *(v4 + 104);
  v33 = v4 + 104;
  v30 = v12;
  v35 = v3;
  v32(v7, v12, v3);
  v36[0] = 1;
  sub_26738114C();
  v28[0] = sub_26738116C();
  v13 = *(v28[0] - 8);
  v14 = *(v13 + 56);
  v28[1] = v13 + 56;
  v14(v11, 0, 1, v28[0]);
  v28[2] = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v29 | 0x8000000000000000);
  v15(v36, 0);
  v31 = v7;
  v16 = v12;
  v17 = v32;
  v32(v7, v16, v3);
  v36[0] = 1;
  sub_26738114C();
  v18 = v28[0];
  v14(v11, 0, 1, v28[0]);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, 0x80000002674316D0);
  v19(v36, 0);
  sub_266ECB294(0, &qword_2800F7170, 0x277D59938);
  sub_266ECAF2C(&qword_2800F7178, &qword_2800F7170, 0x277D59938);
  sub_26738120C();
  v20 = v18;
  v14(v11, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x61436E69616D6F64, 0xEB00000000736472);
  v21(v36, 0);
  v17(v31, v30, v35);
  v36[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v18);
  v22 = v14;
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x8000000267473180);
  v23(v36, 0);
  sub_266ECB294(0, &qword_2800F7180, 0x277D59A28);
  sub_266ECAF2C(&qword_2800F7188, &qword_2800F7180, 0x277D59A28);
  sub_26738120C();
  v14(v11, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x6353646574726F73, 0xEB0000000065726FLL);
  v24(v36, 0);
  sub_266ECB294(0, &qword_2800F7168, 0x277D59920);
  sub_266ECAF2C(&qword_2800F7160, &qword_2800F7168, 0x277D59920);
  sub_26738120C();
  v14(v11, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x7472656C41726963, 0xE900000000000073);
  v25(v36, 0);
  v32(v31, *MEMORY[0x277D3E4E8], v35);
  v36[0] = 1;
  sub_26738114C();
  v22(v11, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674731A0);
  return v26(v36, 0);
}

uint64_t sub_2671BCFFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BD060(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSDomain.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674731F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v194;

  v1(v226, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267473210, v11);
  v12 = *v9;
  *v9 = v195;

  v7(v226, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267473230, v17);
  v18 = *v15;
  *v15 = v196;

  v13(v226, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x8000000267473250, v23);
  v24 = *v21;
  *v21 = v197;

  v19(v226, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267473270, v29);
  v30 = *v27;
  *v27 = v198;

  v25(v226, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x8000000267473290, v35);
  v36 = *v33;
  *v33 = v199;

  v31(v226, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000013, 0x80000002674732B0, v41);
  v42 = *v39;
  *v39 = v200;

  v37(v226, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000013, 0x80000002674732D0, v47);
  v48 = *v45;
  *v45 = v201;

  v43(v226, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000011, 0x80000002674732F0, v53);
  v54 = *v51;
  *v51 = v202;

  v49(v226, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000015, 0x8000000267473310, v59);
  v60 = *v57;
  *v57 = v203;

  v55(v226, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000013, 0x8000000267473330, v65);
  v66 = *v63;
  *v63 = v204;

  v61(v226, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000014, 0x8000000267473350, v71);
  v72 = *v69;
  *v69 = v205;

  v67(v226, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x8000000267473370, v77);
  v78 = *v75;
  *v75 = v206;

  v73(v226, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000012, 0x8000000267473390, v83);
  v84 = *v81;
  *v81 = v207;

  v79(v226, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v208 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000012, 0x80000002674733B0, v89);
  v90 = *v87;
  *v87 = v208;

  v85(v226, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000015, 0x80000002674733D0, v95);
  v96 = *v93;
  *v93 = v209;

  v91(v226, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v210 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000012, 0x80000002674733F0, v101);
  v102 = *v99;
  *v99 = v210;

  v97(v226, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v211 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000012, 0x8000000267473410, v107);
  v108 = *v105;
  *v105 = v211;

  v103(v226, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v212 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000019, 0x8000000267473430, v113);
  v114 = *v111;
  *v111 = v212;

  v109(v226, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v213 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000018, 0x8000000267473450, v119);
  v120 = *v117;
  *v117 = v213;

  v115(v226, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v214 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000014, 0x8000000267473470, v125);
  v126 = *v123;
  *v123 = v214;

  v121(v226, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000010, 0x8000000267473490, v131);
  v132 = *v129;
  *v129 = v215;

  v127(v226, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000013, 0x80000002674734B0, v137);
  v138 = *v135;
  *v135 = v216;

  v133(v226, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v217 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000015, 0x80000002674734D0, v143);
  v144 = *v141;
  *v141 = v217;

  v139(v226, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v218 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000019, 0x80000002674734F0, v149);
  v150 = *v147;
  *v147 = v218;

  v145(v226, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v219 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000016, 0x8000000267473510, v155);
  v156 = *v153;
  *v153 = v219;

  v151(v226, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v220 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000013, 0x8000000267473530, v161);
  v162 = *v159;
  *v159 = v220;

  v157(v226, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v221 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000017, 0x8000000267473550, v167);
  v168 = *v165;
  *v165 = v221;

  v163(v226, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v222 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000015, 0x8000000267473570, v173);
  v174 = *v171;
  *v171 = v222;

  v169(v226, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v223 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001BLL, 0x8000000267473590, v179);
  v180 = *v177;
  *v177 = v223;

  v175(v226, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v224 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000019, 0x80000002674735B0, v185);
  v186 = *v183;
  *v183 = v224;

  v181(v226, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v225 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000014, 0x80000002674735D0, v191);
  v192 = *v189;
  *v189 = v225;

  return v187(v226, 0);
}

uint64_t sub_2671BDFEC(uint64_t a1)
{
  v2 = sub_2671BE0F0(&qword_2800F71A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671BE054(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671BE0F0(&qword_2800F71A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671BE0F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSDomainCards.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v108 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v99 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v3 + 104);
  v107 = *MEMORY[0x277D3E538];
  v11 = v107;
  v12(v6, v107, v2);
  v13 = v3 + 104;
  v106 = v12;
  v109[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v101 = *(v15 + 56);
  v103 = v15 + 56;
  v105 = v14;
  v101(v10, 0, 1, v14);
  v102 = a1;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x756F436B636F6C63, 0xEA0000000000746ELL);
  v16(v109, 0);
  v17 = v108;
  v12(v6, v11, v108);
  v109[0] = 1;
  sub_26738114C();
  v18 = v101;
  v101(v10, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x616E6F6974636964, 0xEF746E756F437972);
  v19(v109, 0);
  v100 = v6;
  v20 = v107;
  v21 = v106;
  v106(v6, v107, v17);
  v104 = v13;
  v109[0] = 1;
  sub_26738114C();
  v22 = v105;
  v18(v10, 0, 1, v105);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E756F43676BLL, 0xE700000000000000);
  v23(v109, 0);
  v24 = v108;
  v21(v100, v20, v108);
  v109[0] = 1;
  sub_26738114C();
  v25 = v101;
  v101(v10, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E756F437370616DLL, 0xE900000000000074);
  v26(v109, 0);
  v27 = v100;
  v21(v100, v20, v24);
  v109[0] = 1;
  sub_26738114C();
  v28 = v105;
  v25(v10, 0, 1, v105);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E756F436874616DLL, 0xE900000000000074);
  v29(v109, 0);
  v30 = v27;
  v31 = v27;
  v32 = v107;
  v21(v31, v107, v108);
  v109[0] = 1;
  sub_26738114C();
  v33 = v101;
  v101(v10, 0, 1, v28);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x756F43616964656DLL, 0xEA0000000000746ELL);
  v34(v109, 0);
  v35 = v108;
  v36 = v106;
  v106(v30, v32, v108);
  v109[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v28);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F43736569766F6DLL, 0xEB00000000746E75);
  v37(v109, 0);
  v38 = v100;
  v36(v100, v32, v35);
  v109[0] = 1;
  sub_26738114C();
  v39 = v105;
  v33(v10, 0, 1, v105);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E756F437377656ELL, 0xE900000000000074);
  v40(v109, 0);
  v99 = "iri.pegasus.PEGASUSDomainCards";
  v41 = v107;
  v42 = v106;
  v106(v38, v107, v35);
  v109[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v39);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v99 | 0x8000000000000000);
  v43(v109, 0);
  v44 = v100;
  v42(v100, v41, v35);
  v109[0] = 1;
  sub_26738114C();
  v45 = v105;
  v33(v10, 0, 1, v105);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F437374726F7073, 0xEB00000000746E75);
  v46(v109, 0);
  v47 = v107;
  v106(v44, v107, v35);
  v109[0] = 1;
  sub_26738114C();
  v48 = v45;
  v33(v10, 0, 1, v45);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F43736B636F7473, 0xEB00000000746E75);
  v49(v109, 0);
  v50 = v106;
  v106(v44, v47, v35);
  v109[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v48);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E756F437674, 0xE700000000000000);
  v51(v109, 0);
  v52 = v107;
  v50(v44, v107, v108);
  v109[0] = 1;
  sub_26738114C();
  v53 = v101;
  v101(v10, 0, 1, v48);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0x756F436F65646976, 0xEA0000000000746ELL);
  v54(v109, 0);
  v55 = v52;
  v56 = v52;
  v57 = v108;
  v58 = v106;
  v106(v44, v56, v108);
  v109[0] = 1;
  sub_26738114C();
  v53(v10, 0, 1, v105);
  v59 = sub_2673811AC();
  sub_266EC637C(v10, 0x4372656874616577, 0xEC000000746E756FLL);
  v59(v109, 0);
  v58(v44, v55, v57);
  v109[0] = 1;
  sub_26738114C();
  v60 = v105;
  v53(v10, 0, 1, v105);
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E756F43626577, 0xE800000000000000);
  v61(v109, 0);
  v62 = v55;
  v63 = v106;
  v106(v44, v62, v57);
  v109[0] = 1;
  sub_26738114C();
  v64 = v60;
  v65 = v101;
  v101(v10, 0, 1, v64);
  v66 = sub_2673811AC();
  sub_266EC637C(v10, 0x6567616D49626577, 0xEE00746E756F4373);
  v66(v109, 0);
  v67 = v107;
  v68 = v108;
  v63(v44, v107, v108);
  v109[0] = 1;
  sub_26738114C();
  v69 = v105;
  v65(v10, 0, 1, v105);
  v70 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F65646956706D61, 0xED0000746E756F43);
  v70(v109, 0);
  v71 = v68;
  v72 = v106;
  v106(v44, v67, v71);
  v109[0] = 1;
  sub_26738114C();
  v65(v10, 0, 1, v69);
  v73 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E756F4373707061, 0xE900000000000074);
  v73(v109, 0);
  v99 = "precomputedWebanswersCount";
  v74 = v100;
  v75 = v107;
  v72(v100, v107, v108);
  v109[0] = 1;
  sub_26738114C();
  v65(v10, 0, 1, v69);
  v76 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v99 | 0x8000000000000000);
  v76(v109, 0);
  v99 = "conversionsCount";
  v77 = v108;
  v78 = v106;
  v106(v74, v75, v108);
  v109[0] = 1;
  sub_26738114C();
  v65(v10, 0, 1, v69);
  v79 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v99 | 0x8000000000000000);
  v79(v109, 0);
  v80 = v100;
  v78(v100, v107, v77);
  v109[0] = 1;
  sub_26738114C();
  v65(v10, 0, 1, v69);
  v81 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E756F436E63676BLL, 0xE900000000000074);
  v81(v109, 0);
  v82 = v107;
  v83 = v108;
  v84 = v106;
  v106(v80, v107, v108);
  v109[0] = 1;
  sub_26738114C();
  v85 = v105;
  v101(v10, 0, 1, v105);
  v86 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F65646956626577, 0xED0000746E756F43);
  v86(v109, 0);
  v87 = v82;
  v88 = v83;
  v89 = v83;
  v90 = v84;
  v84(v80, v87, v88);
  v109[0] = 1;
  sub_26738114C();
  v91 = v85;
  v92 = v85;
  v93 = v101;
  v101(v10, 0, 1, v91);
  v94 = sub_2673811AC();
  sub_266EC637C(v10, 0x73676E6974697277, 0xED0000746E756F43);
  v94(v109, 0);
  v95 = v107;
  v90(v80, v107, v89);
  v109[0] = 1;
  sub_26738114C();
  v93(v10, 0, 1, v92);
  v96 = sub_2673811AC();
  sub_266EC637C(v10, 0x4373746867696C66, 0xEC000000746E756FLL);
  v96(v109, 0);
  v90(v80, v95, v108);
  v109[0] = 1;
  sub_26738114C();
  v93(v10, 0, 1, v105);
  v97 = sub_2673811AC();
  sub_266EC637C(v10, 0x636973754D706D61, 0xED0000746E756F43);
  return v97(v109, 0);
}

uint64_t sub_2671BF680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BF6E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671BF748()
{
  result = qword_2800F7178;
  if (!qword_2800F7178)
  {
    sub_2671BF7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7178);
  }

  return result;
}

unint64_t sub_2671BF7A0()
{
  result = qword_2800F7170;
  if (!qword_2800F7170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7170);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSEntityInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6449797469746E65, 0xE800000000000000);
  v15(v28, 0);
  v26 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v27, 0x6449797469746E65, 0xE800000000000000);
  if (!(*(v14 + 48))(v18, 1, v13))
  {
    sub_266ECB128(&unk_28788BC30);
    sub_26738115C();
  }

  (v17)(v27, 0);
  v16(v28, 0);
  v23(v6, *MEMORY[0x277D3E500], v25);
  v28[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656469666E6F63, 0xEA00000000006563);
  return v19(v28, 0);
}

uint64_t sub_2671BFBC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BFC24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671BFC88()
{
  result = qword_2800F71A8;
  if (!qword_2800F71A8)
  {
    sub_2671BFCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F71A8);
  }

  return result;
}

unint64_t sub_2671BFCE0()
{
  result = qword_2800F71B0;
  if (!qword_2800F71B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F71B0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F71B8, 0x277D599B0);
  sub_266ECAF2C(&qword_2800F71C0, &qword_2800F71B8, 0x277D599B0);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267473710);
  v10(v23, 0);
  sub_266ECB294(0, &qword_2800F71C8, 0x277D599B8);
  v19[0] = sub_266ECAF2C(&qword_2800F71D0, &qword_2800F71C8, 0x277D599B8);
  sub_26738120C();
  v20 = v9;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267473730);
  v11(v23, 0);
  v19[1] = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v22, 0xD00000000000001BLL, 0x8000000267473730);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_28788BC58);
    sub_26738115C();
  }

  (v13)(v22, 0);
  v12(v23, 0);
  sub_266ECB294(0, &qword_2800F71D8, 0x277D599C0);
  sub_266ECAF2C(&qword_2800F71E0, &qword_2800F71D8, 0x277D599C0);
  sub_26738120C();
  v15 = v20;
  v20(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267473750);
  v16(v23, 0);
  sub_26738122C();
  v15(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x8000000267473770);
  return v17(v23, 0);
}

uint64_t sub_2671C0220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C0284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSIntent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v25 = v2;
  v26 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v24[1] = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496B6E696CLL, 0xE600000000000000);
  v13(v27, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSIntentCategory(0);
  sub_2671C0964(&qword_2800F71F8, type metadata accessor for PEGASUSSchemaPEGASUSIntentCategory);
  sub_26738120C();
  v12(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6143746E65746E69, 0xEE0079726F676574);
  v14(v27, 0);
  v15 = *MEMORY[0x277D3E530];
  v16 = *(v26 + 104);
  v26 += 104;
  v17 = v6;
  v18 = v6;
  v19 = v25;
  v16(v18, v15, v25);
  v27[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 1701667182, 0xE400000000000000);
  v20(v27, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSIntentSource(0);
  sub_2671C0964(&qword_2800F7200, type metadata accessor for PEGASUSSchemaPEGASUSIntentSource);
  sub_26738120C();
  v12(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x656372756F73, 0xE600000000000000);
  v21(v27, 0);
  v16(v17, *MEMORY[0x277D3E500], v19);
  v27[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656469666E6F63, 0xEA00000000006563);
  return v22(v27, 0);
}

uint64_t sub_2671C08A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C0904(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C0964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PEGASUSSchemaPEGASUSIntentArg.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_266EC637C(v11, 7955819, 0xE300000000000000);
  v16(v23, 0);
  v13(v7, v12, v21);
  v23[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x7475626972747461, 0xED00006570795465);
  v17(v23, 0);
  sub_266ECB294(0, &qword_2800F71B0, 0x277D59940);
  sub_266ECAF2C(&qword_2800F71A8, &qword_2800F71B0, 0x277D59940);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x797469746E65, 0xE600000000000000);
  return v18(v23, 0);
}

uint64_t sub_2671C0DE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C0E44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSIntentCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267473830, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x8000000267473850, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267473880, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x80000002674738B0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671C116C(uint64_t a1)
{
  v2 = sub_2671C1270(&qword_2800F7218);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C11D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C1270(&qword_2800F7218);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C1270(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSIntentCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSIntentSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267473900, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267473920, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267473940, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267473960, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267473980, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x80000002674739A0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2671C1620(uint64_t a1)
{
  v2 = sub_2671C1724(&qword_2800F7220);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C1688(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C1724(&qword_2800F7220);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C1724(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSIntentSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSIntentTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7210, 0x277D59958);
  sub_266ECAF2C(&qword_2800F7208, &qword_2800F7210, 0x277D59958);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7241746E65746E69, 0xEA00000000007367);
  return v7(v9, 0);
}

uint64_t sub_2671C1A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C1A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSKGQAClaimTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v2 + 104);
  v32 = *MEMORY[0x277D3E530];
  v33 = v1;
  v31 = v10;
  v10(v5);
  v37[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v34 = *(v12 + 56);
  v35 = v12 + 56;
  v34(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449797469746E65, 0xE800000000000000);
  v13(v37, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v36, 0x6449797469746E65, 0xE800000000000000);
  v30 = *(v12 + 48);
  if (!v30(v16, 1, v11))
  {
    sub_266ECB128(&unk_28788BC80);
    sub_26738115C();
  }

  (v15)(v36, 0);
  v14(v37, 0);
  v31(v5, v32, v33);
  v37[0] = 1;
  sub_26738114C();
  v34(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449706F7270, 0xE600000000000000);
  v17(v37, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v36, 0x6449706F7270, 0xE600000000000000);
  if (!v30(v20, 1, v11))
  {
    sub_266ECB128(&unk_28788BCA8);
    sub_26738115C();
  }

  (v19)(v36, 0);
  v18(v37, 0);
  v31(v5, v32, v33);
  v37[0] = 1;
  sub_26738114C();
  v34(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x65756C6176, 0xE500000000000000);
  v21(v37, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v36, 0x65756C6176, 0xE500000000000000);
  if (!v30(v24, 1, v11))
  {
    sub_266ECB128(&unk_28788BCD0);
    sub_26738115C();
  }

  (v23)(v36, 0);
  v22(v37, 0);
  sub_266ECB294(0, &qword_2800F7228, 0x277D59980);
  sub_266ECAF2C(&qword_2800F7230, &qword_2800F7228, 0x277D59980);
  sub_26738122C();
  v25 = v34;
  v34(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x656966696C617571, 0xEA00000000007372);
  v26(v37, 0);
  sub_266ECB294(0, &qword_2800F7238, 0x277D59988);
  sub_266ECAF2C(&qword_2800F7240, &qword_2800F7238, 0x277D59988);
  sub_26738122C();
  v25(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x636E657265666572, 0xEA00000000007365);
  return v27(v37, 0);
}

uint64_t sub_2671C227C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C22E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSKGQAExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a1;
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSKGQAUsecase(0);
  sub_2671C2A34(&qword_2800F7258, type metadata accessor for PEGASUSSchemaPEGASUSKGQAUsecase);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v33 = v12 + 56;
  v31 = v11;
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x636573554151676BLL, 0xEB00000000657361);
  v14(v36, 0);
  v35 = *MEMORY[0x277D3E530];
  v15 = *(v3 + 104);
  v28 = v2;
  v15(v6);
  v36[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v29 = v13;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x7475626972747461, 0xEA00000000007365);
  v16(v36, 0);
  v27 = "iri.flow.FLOWKGQAExecution";
  v34 = *MEMORY[0x277D3E4E8];
  v15(v6);
  v17 = v15;
  v30 = v15;
  v36[0] = 1;
  sub_26738114C();
  v18 = v31;
  v13(v10, 0, 1, v31);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v27 | 0x8000000000000000);
  v19(v36, 0);
  v20 = v28;
  (v17)(v6, v35, v28);
  v36[0] = 1;
  sub_26738114C();
  v21 = v18;
  v22 = v18;
  v23 = v29;
  v29(v10, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x79654B676C6ELL, 0xE600000000000000);
  v24(v36, 0);
  (v30)(v6, v34, v20);
  v36[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267434790);
  return v25(v36, 0);
}

uint64_t sub_2671C2928(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C298C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C2A34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671C2A7C()
{
  result = qword_2800F7268;
  if (!qword_2800F7268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7268);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSKGQAExecutionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v2 + 104);
  v30 = *MEMORY[0x277D3E530];
  v31 = v2 + 104;
  v32 = v1;
  v29 = v10;
  v10(v5);
  v36[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v33 = *(v12 + 56);
  v34 = v12 + 56;
  v33(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x457972616D697270, 0xEF7365697469746ELL);
  v13(v36, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v35, 0x457972616D697270, 0xEF7365697469746ELL);
  v28 = *(v12 + 48);
  if (!v28(v16, 1, v11))
  {
    sub_266ECB128(&unk_28788BCF8);
    sub_26738115C();
  }

  (v15)(v35, 0);
  v14(v36, 0);
  v29(v5, v30, v32);
  v36[0] = 1;
  sub_26738114C();
  v33(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674347E0);
  v17(v36, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v35, 0xD000000000000011, 0x80000002674347E0);
  if (!v28(v20, 1, v11))
  {
    sub_266ECB128(&unk_28788BD20);
    sub_26738115C();
  }

  (v19)(v35, 0);
  v18(v36, 0);
  v29(v5, v30, v32);
  v36[0] = 1;
  sub_26738114C();
  v33(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449726577736E61, 0xE800000000000000);
  v21(v36, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v35, 0x6449726577736E61, 0xE800000000000000);
  if (!v28(v24, 1, v11))
  {
    sub_266ECB128(&unk_28788BD48);
    sub_26738115C();
  }

  (v23)(v35, 0);
  v22(v36, 0);
  sub_266ECB294(0, &qword_2800F7250, 0x277D59968);
  sub_266ECAF2C(&qword_2800F7248, &qword_2800F7250, 0x277D59968);
  sub_26738122C();
  v33(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x736D69616C63, 0xE600000000000000);
  return v25(v36, 0);
}

uint64_t sub_2671C3148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C31AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSKGQAQualifierTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6449706F7270, 0xE600000000000000);
  v14(v32, 0);
  v30 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v31, 0x6449706F7270, 0xE600000000000000);
  v24 = *(v13 + 48);
  if (!v24(v17, 1, v12))
  {
    sub_266ECB128(&unk_28788BD70);
    sub_26738115C();
  }

  (v16)(v31, 0);
  v15(v32, 0);
  v26(v6, v27, v29);
  v32[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x65756C6176, 0xE500000000000000);
  v18(v32, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v31, 0x65756C6176, 0xE500000000000000);
  if (!v24(v21, 1, v12))
  {
    sub_266ECB128(&unk_28788BD98);
    sub_26738115C();
  }

  (v20)(v31, 0);
  return v19(v32, 0);
}

uint64_t sub_2671C36AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C3710(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671C3774()
{
  result = qword_2800F7230;
  if (!qword_2800F7230)
  {
    sub_2671C37CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7230);
  }

  return result;
}

unint64_t sub_2671C37CC()
{
  result = qword_2800F7228;
  if (!qword_2800F7228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7228);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSKGQAReference.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x656E696C65706970, 0xE800000000000000);
  return v10(v12, 0);
}

uint64_t sub_2671C3A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C3AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671C3B2C()
{
  result = qword_2800F7240;
  if (!qword_2800F7240)
  {
    sub_2671C3B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7240);
  }

  return result;
}

unint64_t sub_2671C3B84()
{
  result = qword_2800F7238;
  if (!qword_2800F7238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7238);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSKGQAUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267473B60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267473B80, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267473BB0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267473BE0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267473C10, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x8000000267473C40, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x8000000267473C60, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x8000000267473C80, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2671C401C(uint64_t a1)
{
  v2 = sub_2671C4120(&qword_2800F7280);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C4084(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C4120(&qword_2800F7280);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C4120(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSKGQAUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMapsEntity.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v41 - v12;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v14 = *MEMORY[0x277D3E540];
  v15 = *(v6 + 104);
  v49 = v6 + 104;
  v41[0] = v15;
  v15(v9, v14, v5);
  v52[0] = 0;
  sub_26738114C();
  v16 = sub_26738116C();
  v17 = *(v16 - 8);
  v47 = *(v17 + 56);
  v48 = v17 + 56;
  v47(v13, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v13, 1684632941, 0xE400000000000000);
  v18(v52, 0);
  v50 = a1;
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v51, 1684632941, 0xE400000000000000);
  v21 = *(v17 + 48);
  v41[1] = v17 + 48;
  v46 = v21;
  if (!v21(v22, 1, v16))
  {
    sub_266ECB128(&unk_28788BDC0);
    sub_26738115C();
  }

  (v20)(v51, 0);
  v19(v52, 0);
  v42 = v5;
  v23 = v41[0];
  (v41[0])(v9, v14, v5);
  v52[0] = 0;
  sub_26738114C();
  v47(v13, 0, 1, v16);
  v24 = sub_2673811AC();
  sub_266EC637C(v13, 0x746165467370616DLL, 0xED00006449657275);
  v24(v52, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v51, 0x746165467370616DLL, 0xED00006449657275);
  if (!v46(v27, 1, v16))
  {
    sub_266ECB128(&unk_28788BDE8);
    sub_26738115C();
  }

  (v26)(v51, 0);
  v25(v52, 0);
  v23(v9, *MEMORY[0x277D3E530], v42);
  v52[0] = 0;
  sub_26738114C();
  v47(v13, 0, 1, v16);
  v28 = sub_2673811AC();
  sub_266EC637C(v13, 0x4973736572646461, 0xE900000000000064);
  v28(v52, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v51, 0x4973736572646461, 0xE900000000000064);
  if (!v46(v31, 1, v16))
  {
    sub_266ECB128(&unk_28788BE10);
    sub_26738115C();
  }

  (v30)(v51, 0);
  v29(v52, 0);
  v32 = v43;
  sub_26738117C();
  v33 = sub_2673811BC();
  v35 = v34;
  v36 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_266ECAD54(0, v36[2] + 1, 1, v36);
    *v35 = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_266ECAD54(v38 > 1, v39 + 1, 1, v36);
    *v35 = v36;
  }

  v36[2] = v39 + 1;
  (*(v44 + 32))(v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39, v32, v45);
  return v33(v52, 0);
}

uint64_t sub_2671C48A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C4904(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671C4968()
{
  result = qword_2800F7288;
  if (!qword_2800F7288)
  {
    sub_2671C49C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7288);
  }

  return result;
}

unint64_t sub_2671C49C0()
{
  result = qword_2800F7290;
  if (!qword_2800F7290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7290);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMapsExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSMapsFeature(0);
  sub_2671C50C4(&qword_2800F7298, type metadata accessor for PEGASUSSchemaPEGASUSMapsFeature);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v28 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x746165467370616DLL, 0xEB00000000657275);
  v15(v31, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSMapsQueryLabel(0);
  sub_2671C50C4(&qword_2800F72A0, type metadata accessor for PEGASUSSchemaPEGASUSMapsQueryLabel);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v16 = v13;
  v27 = a1;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x726575517370616DLL, 0xEE006C6562614C79);
  v17(v31, 0);
  v25 = "iri.flow.FLOWMapsExecution";
  v18 = *MEMORY[0x277D3E4E8];
  v19 = v29;
  v20 = *(v30 + 104);
  v30 += 104;
  v26 = v18;
  v20(v6, v18, v29);
  v31[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v25 | 0x8000000000000000);
  v21(v31, 0);
  v25 = "isSearchAlongRouteRequest";
  v20(v6, v18, v19);
  v31[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v25 | 0x8000000000000000);
  v22(v31, 0);
  v20(v6, v26, v29);
  v31[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267434F70);
  return v23(v31, 0);
}

uint64_t sub_2671C4FB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C501C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C50C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671C510C()
{
  result = qword_2800F72B0;
  if (!qword_2800F72B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F72B0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMapsExecutionTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7290, 0x277D59990);
  sub_266ECAF2C(&qword_2800F7288, &qword_2800F7290, 0x277D59990);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69746E457370616DLL, 0xEC00000073656974);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x69746E457370616DLL, 0xEC00000073656974);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788BE38);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2671C5408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C546C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSMapsFeature.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267473D80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267473DA0, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267473DC0, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267473DE0, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267473E00, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267473E30, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x8000000267473E60, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000029, 0x8000000267473E90, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267473EC0, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000022, 0x8000000267473EE0, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x8000000267473F10, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ALL, 0x8000000267473F30, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x8000000267473F50, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_2671C5B8C(uint64_t a1)
{
  v2 = sub_2671C5C90(&qword_2800F72C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C5BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C5C90(&qword_2800F72C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C5C90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSMapsFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMapsQueryLabel.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267473FB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267473FD0, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267473FF0, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x8000000267474020, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x8000000267474050, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x8000000267474080, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x80000002674740B0, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x80000002674740E0, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x8000000267474110, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267474130, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001CLL, 0x8000000267474160, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ALL, 0x8000000267474180, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_2671C62EC(uint64_t a1)
{
  v2 = sub_2671C63F0(&qword_2800F72D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C6354(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C63F0(&qword_2800F72D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C63F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSMapsQueryLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultistepGatingExecution.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6B636162706F6F6CLL, 0xED00006874706544);
  v11(v14, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSDomain(0);
  sub_2671C686C(&qword_2800F0C08, type metadata accessor for PEGASUSSchemaPEGASUSDomain);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x736E69616D6F64, 0xE700000000000000);
  return v12(v14, 0);
}

uint64_t sub_2671C6760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C67C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C686C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671C68B4()
{
  result = qword_2800F71B8;
  if (!qword_2800F71B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F71B8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultistepSearchType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267474220, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267474250, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267474270, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x80000002674742A0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x80000002674742D0, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x80000002674742F0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267474320, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x8000000267474350, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2671C6D4C(uint64_t a1)
{
  v2 = sub_2671C6E50(&qword_2800F72E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C6DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C6E50(&qword_2800F72E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C6E50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSMultistepSearchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultistepSubSearchExecution.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21[1] = a1;
  v1 = sub_26738113C();
  v26 = v1;
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
  v10 = *MEMORY[0x277D3E508];
  v11 = *(v2 + 104);
  v25 = v2 + 104;
  v27 = v11;
  (v11)(v5, v10, v1);
  v28[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6B636162706F6F6CLL, 0xED00006874706544);
  v14(v28, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSDomain(0);
  v23 = sub_2671C75C0(&qword_2800F0C08, type metadata accessor for PEGASUSSchemaPEGASUSDomain);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F44746E65726170, 0xEC0000006E69616DLL);
  v15(v28, 0);
  v24 = *MEMORY[0x277D3E4E8];
  v22 = v5;
  v27(v5);
  v28[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x537478654E736168, 0xEC00000073706574);
  v16(v28, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSMultistepSearchType(0);
  sub_2671C75C0(&qword_2800F72D8, type metadata accessor for PEGASUSSchemaPEGASUSMultistepSearchType);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954686372616573, 0xEA00000000006570);
  v17(v28, 0);
  sub_26738122C();
  v13(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674743C0);
  v18(v28, 0);
  (v27)(v22, v24, v26);
  v28[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674743E0);
  return v19(v28, 0);
}

uint64_t sub_2671C74B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C7518(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C75C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671C7608()
{
  result = qword_2800F71C8;
  if (!qword_2800F71C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F71C8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultiturnExecution.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7469727765527369, 0xE900000000000065);
  v11(v14, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSMultiturnTriggerError(0);
  sub_2671C7A8C(&qword_2800F72E8, type metadata accessor for PEGASUSSchemaPEGASUSMultiturnTriggerError);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x4572656767697274, 0xEC000000726F7272);
  return v12(v14, 0);
}

uint64_t sub_2671C7980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C79E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C7A8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671C7AD4()
{
  result = qword_2800F71D8;
  if (!qword_2800F71D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F71D8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-v9];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v26 = *MEMORY[0x277D3E530];
  v30 = v3 + 104;
  v31 = v2;
  v29 = v11;
  v11(v6);
  v34[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v27 = *(v13 + 56);
  v28 = v13 + 56;
  v27(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x7075776F6C6C6F66, 0xED00007972657551);
  v14(v34, 0);
  v32 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v33, 0x7075776F6C6C6F66, 0xED00007972657551);
  v17 = *(v13 + 48);
  if (!v17(v18, 1, v12))
  {
    sub_266ECB128(&unk_28788BE60);
    sub_26738115C();
  }

  (v16)(v33, 0);
  v15(v34, 0);
  v29(v6, v26, v31);
  v34[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x73746C75736572, 0xE700000000000000);
  v19(v34, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v33, 0x73746C75736572, 0xE700000000000000);
  if (!v17(v22, 1, v12))
  {
    sub_266ECB128(&unk_28788BE88);
    sub_26738115C();
  }

  (v21)(v33, 0);
  v20(v34, 0);
  v29(v6, *MEMORY[0x277D3E508], v31);
  v34[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656D6D6F636572, 0xEF736E6F69746164);
  return v23(v34, 0);
}

uint64_t sub_2671C805C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C80C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671C8124()
{
  result = qword_2800F72F0;
  if (!qword_2800F72F0)
  {
    sub_2671C817C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F72F0);
  }

  return result;
}

unint64_t sub_2671C817C()
{
  result = qword_2800F72F8;
  if (!qword_2800F72F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F72F8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultiturnTriggerError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674744D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267474500, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267474530, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x8000000267474560, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x8000000267474590, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000031, 0x80000002674745C0, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ELL, 0x8000000267474600, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x8000000267474630, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000030, 0x8000000267474660, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x80000002674746A0, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_2671C86F0(uint64_t a1)
{
  v2 = sub_2671C87F4(&qword_2800F7300);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C8758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C87F4(&qword_2800F7300);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C87F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSMultiturnTriggerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSProductArea.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267474700, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v98;

  v1(v114, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267474720, v11);
  v12 = *v9;
  *v9 = v99;

  v7(v114, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267474740, v17);
  v18 = *v15;
  *v15 = v100;

  v13(v114, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267474760, v23);
  v24 = *v21;
  *v21 = v101;

  v19(v114, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267474780, v29);
  v30 = *v27;
  *v27 = v102;

  v25(v114, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674747B0, v35);
  v36 = *v33;
  *v33 = v103;

  v31(v114, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x80000002674747D0, v41);
  v42 = *v39;
  *v39 = v104;

  v37(v114, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000019, 0x80000002674747F0, v47);
  v48 = *v45;
  *v45 = v105;

  v43(v114, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267474810, v53);
  v54 = *v51;
  *v51 = v106;

  v49(v114, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x8000000267474830, v59);
  v60 = *v57;
  *v57 = v107;

  v55(v114, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000019, 0x8000000267474850, v65);
  v66 = *v63;
  *v63 = v108;

  v61(v114, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000016, 0x8000000267474870, v71);
  v72 = *v69;
  *v69 = v109;

  v67(v114, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x8000000267474890, v77);
  v78 = *v75;
  *v75 = v110;

  v73(v114, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000018, 0x80000002674748B0, v83);
  v84 = *v81;
  *v81 = v111;

  v79(v114, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000018, 0x80000002674748D0, v89);
  v90 = *v87;
  *v87 = v112;

  v85(v114, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ELL, 0x80000002674748F0, v95);
  v96 = *v93;
  *v93 = v113;

  return v91(v114, 0);
}

uint64_t sub_2671C9038(uint64_t a1)
{
  v2 = sub_2671C913C(&qword_2800F7310);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C90A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C913C(&qword_2800F7310);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C913C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSProductArea(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSProvider.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267474940, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v104;

  v1(v121, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267474960, v11);
  v12 = *v9;
  *v9 = v105;

  v7(v121, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267474980, v17);
  v18 = *v15;
  *v15 = v106;

  v13(v121, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x80000002674749A0, v23);
  v24 = *v21;
  *v21 = v107;

  v19(v121, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x80000002674749C0, v29);
  v30 = *v27;
  *v27 = v108;

  v25(v121, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001CLL, 0x80000002674749E0, v35);
  v36 = *v33;
  *v33 = v109;

  v31(v121, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x8000000267474A00, v41);
  v42 = *v39;
  *v39 = v110;

  v37(v121, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x8000000267474A20, v47);
  v48 = *v45;
  *v45 = v111;

  v43(v121, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267474A40, v53);
  v54 = *v51;
  *v51 = v112;

  v49(v121, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x8000000267474A60, v59);
  v60 = *v57;
  *v57 = v113;

  v55(v121, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000015, 0x8000000267474A80, v65);
  v66 = *v63;
  *v63 = v114;

  v61(v121, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000015, 0x8000000267474AA0, v71);
  v72 = *v69;
  *v69 = v115;

  v67(v121, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000023, 0x8000000267474AC0, v77);
  v78 = *v75;
  *v75 = v116;

  v73(v121, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001BLL, 0x8000000267474AF0, v83);
  v84 = *v81;
  *v81 = v117;

  v79(v121, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000018, 0x8000000267474B10, v89);
  v90 = *v87;
  *v87 = v118;

  v85(v121, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000015, 0x8000000267474B30, v95);
  v96 = *v93;
  *v93 = v119;

  v91(v121, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000015, 0x8000000267474B50, v101);
  v102 = *v99;
  *v99 = v120;

  return v97(v121, 0);
}

uint64_t sub_2671C99C4(uint64_t a1)
{
  v2 = sub_2671C9AC8(&qword_2800F7320);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C9A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C9AC8(&qword_2800F7320);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C9AC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7328, 0x277D599E8);
  sub_266ECAF2C(&qword_2800F7330, &qword_2800F7328, 0x277D599E8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F7338, 0x277D599D0);
  sub_266ECAF2C(&qword_2800F7340, &qword_2800F7338, 0x277D599D0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F7348, 0x277D599E0);
  sub_266ECAF2C(&qword_2800F7350, &qword_2800F7348, 0x277D599E0);
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

uint64_t sub_2671CA024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CA088(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSRequestedMediaType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267474BF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v152;

  v1(v177, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267474C20, v11);
  v12 = *v9;
  *v9 = v153;

  v7(v177, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267474C50, v17);
  v18 = *v15;
  *v15 = v154;

  v13(v177, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267474C80, v23);
  v24 = *v21;
  *v21 = v155;

  v19(v177, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x8000000267474CA0, v29);
  v30 = *v27;
  *v27 = v156;

  v25(v177, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267474CD0, v35);
  v36 = *v33;
  *v33 = v157;

  v31(v177, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267474D00, v41);
  v42 = *v39;
  *v39 = v158;

  v37(v177, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x8000000267474D20, v47);
  v48 = *v45;
  *v45 = v159;

  v43(v177, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x8000000267474D50, v53);
  v54 = *v51;
  *v51 = v160;

  v49(v177, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001FLL, 0x8000000267474D80, v59);
  v60 = *v57;
  *v57 = v161;

  v55(v177, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000020, 0x8000000267474DA0, v65);
  v66 = *v63;
  *v63 = v162;

  v61(v177, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x8000000267474DD0, v71);
  v72 = *v69;
  *v69 = v163;

  v67(v177, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000024, 0x8000000267474E00, v77);
  v78 = *v75;
  *v75 = v164;

  v73(v177, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ELL, 0x8000000267474E30, v83);
  v84 = *v81;
  *v81 = v165;

  v79(v177, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000027, 0x8000000267474E50, v89);
  v90 = *v87;
  *v87 = v166;

  v85(v177, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000029, 0x8000000267474E80, v95);
  v96 = *v93;
  *v93 = v167;

  v91(v177, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000021, 0x8000000267474EB0, v101);
  v102 = *v99;
  *v99 = v168;

  v97(v177, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000028, 0x8000000267474EE0, v107);
  v108 = *v105;
  *v105 = v169;

  v103(v177, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000021, 0x8000000267474F10, v113);
  v114 = *v111;
  *v111 = v170;

  v109(v177, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x8000000267474F40, v119);
  v120 = *v117;
  *v117 = v171;

  v115(v177, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001CLL, 0x8000000267474F70, v125);
  v126 = *v123;
  *v123 = v172;

  v121(v177, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001CLL, 0x8000000267474F90, v131);
  v132 = *v129;
  *v129 = v173;

  v127(v177, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001ELL, 0x8000000267474FB0, v137);
  v138 = *v135;
  *v135 = v174;

  v133(v177, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001FLL, 0x8000000267474FD0, v143);
  v144 = *v141;
  *v141 = v175;

  v139(v177, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001ELL, 0x8000000267474FF0, v149);
  v150 = *v147;
  *v147 = v176;

  return v145(v177, 0);
}

uint64_t sub_2671CAD08(uint64_t a1)
{
  v2 = sub_2671CAE0C(&qword_2800F7368);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671CAD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671CAE0C(&qword_2800F7368);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671CAE0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSRequestedMediaType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = sub_26738113C();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v57);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v54 = *MEMORY[0x277D3E4E8];
  v12 = *(v4 + 104);
  v58 = v4 + 104;
  v56 = v12;
  v12(v7);
  v62[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v50 = *(v13 - 8);
  v14 = v50 + 56;
  v15 = *(v50 + 56);
  v15(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x737473697865, 0xE600000000000000);
  v16(v62, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v15(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x64496B6E696CLL, 0xE600000000000000);
  v17(v62, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSProductArea(0);
  sub_2671CC194(&qword_2800F7308, type metadata accessor for PEGASUSSchemaPEGASUSProductArea);
  sub_26738120C();
  v15(v11, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x41746375646F7270, 0xEB00000000616572);
  v18(v62, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSProvider(0);
  sub_2671CC194(&qword_2800F7318, type metadata accessor for PEGASUSSchemaPEGASUSProvider);
  sub_26738120C();
  v15(v11, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x507972616D697270, 0xEF72656469766F72);
  v19(v62, 0);
  v55 = a1;
  sub_26738122C();
  v15(v11, 0, 1, v13);
  v51 = a2;
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F7250726568746FLL, 0xEE00737265646976);
  v20(v62, 0);
  sub_266ECB294(0, &qword_2800F14B0, 0x277D59950);
  sub_266ECAF2C(&qword_2800F14B8, &qword_2800F14B0, 0x277D59950);
  sub_26738120C();
  v53 = v13;
  v15(v11, 0, 1, v13);
  v59 = v14;
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x746E65746E69, 0xE600000000000000);
  v21(v62, 0);
  v49 = "iri.pegasus.PEGASUSRequestEnded";
  v22 = v60;
  v24 = v56;
  v23 = v57;
  v56(v60, *MEMORY[0x277D3E500], v57);
  v62[0] = 1;
  sub_26738114C();
  v52 = v15;
  v15(v11, 0, 1, v13);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v49 | 0x8000000000000000);
  v25(v62, 0);
  v49 = "queryConfidenceScore";
  v26 = v22;
  v27 = v54;
  v24(v26, v54, v23);
  v62[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v53);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v49 | 0x8000000000000000);
  v28(v62, 0);
  v24(v60, v27, v23);
  v62[0] = 1;
  sub_26738114C();
  v29 = v52;
  v30 = v53;
  v52(v11, 0, 1, v53);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x8000000267436B40);
  v31(v62, 0);
  sub_266ECB294(0, &qword_2800F7198, 0x277D59930);
  sub_266ECAF2C(&qword_2800F7190, &qword_2800F7198, 0x277D59930);
  sub_26738120C();
  v29(v11, 0, 1, v30);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x8000000267436B80);
  v32(v62, 0);
  sub_266ECB294(0, &qword_2800F7268, 0x277D59970);
  sub_266ECAF2C(&qword_2800F7260, &qword_2800F7268, 0x277D59970);
  sub_26738120C();
  v29(v11, 0, 1, v30);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0x636578454151676BLL, 0xED00006E6F697475);
  v33(v62, 0);
  sub_266ECB294(0, &qword_2800F7370, 0x277D59A80);
  sub_266ECAF2C(&qword_2800F7378, &qword_2800F7370, 0x277D59A80);
  sub_26738120C();
  v34 = v52;
  v52(v11, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x8000000267436B60);
  v35(v62, 0);
  sub_266ECB294(0, &qword_2800F7380, 0x277D59A30);
  sub_266ECAF2C(&qword_2800F7388, &qword_2800F7380, 0x277D59A30);
  sub_26738120C();
  v34(v11, 0, 1, v30);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0x78457374726F7073, 0xEF6E6F6974756365);
  v36(v62, 0);
  sub_266ECB294(0, &qword_2800F72B0, 0x277D59998);
  sub_266ECAF2C(&qword_2800F72A8, &qword_2800F72B0, 0x277D59998);
  sub_26738120C();
  v34(v11, 0, 1, v30);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0x636578457370616DLL, 0xED00006E6F697475);
  v37(v62, 0);
  sub_266ECB294(0, &qword_2800F70D0, 0x277D598D8);
  sub_266ECAF2C(&qword_2800F70C8, &qword_2800F70D0, 0x277D598D8);
  sub_26738120C();
  v34(v11, 0, 1, v30);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0x6578456F69647561, 0xEE006E6F69747563);
  v38(v62, 0);
  sub_266ECB294(0, &qword_2800F7390, 0x277D59A50);
  sub_266ECAF2C(&qword_2800F7398, &qword_2800F7390, 0x277D59A50);
  sub_26738120C();
  v34(v11, 0, 1, v30);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0x6578456F65646976, 0xEE006E6F69747563);
  v39(v62, 0);
  v56(v60, *MEMORY[0x277D3E530], v57);
  v62[0] = 1;
  sub_26738114C();
  v34(v11, 0, 1, v30);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 1701274725, 0xE400000000000000);
  v40(v62, 0);
  sub_266ECB294(0, &qword_2800F6FC8, 0x277D598A8);
  sub_266ECAF2C(&qword_2800F6FC0, &qword_2800F6FC8, 0x277D598A8);
  sub_26738120C();
  v34(v11, 0, 1, v30);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x8000000267475080);
  v41(v62, 0);
  v56(v60, v54, v57);
  v62[0] = 1;
  sub_26738114C();
  v34(v11, 0, 1, v30);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, 0x80000002674750A0);
  v42(v62, 0);
  sub_266ECB294(0, &qword_2800F6FF8, 0x277D598B8);
  sub_266ECAF2C(&qword_2800F6FF0, &qword_2800F6FF8, 0x277D598B8);
  sub_26738120C();
  v34(v11, 0, 1, v30);
  v43 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, 0x80000002674750C0);
  v43(v62, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v61, 0xD00000000000001DLL, 0x80000002674750C0);
  if (!(*(v50 + 48))(v46, 1, v30))
  {
    sub_266ECB128(&unk_28788BEB0);
    sub_26738115C();
  }

  (v45)(v61, 0);
  return v44(v62, 0);
}

uint64_t sub_2671CC0D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CC134(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671CC194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PEGASUSSchemaPEGASUSRequestEndedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16[-v2];
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
  v6(v16, 0);
  sub_266ECB294(0, &qword_2800F14E0, 0x277D59960);
  sub_266ECAF2C(&qword_2800F14E8, &qword_2800F14E0, 0x277D59960);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6954746E65746E69, 0xEB00000000317265);
  v7(v16, 0);
  sub_266ECB294(0, &qword_2800F7278, 0x277D59978);
  sub_266ECAF2C(&qword_2800F7270, &qword_2800F7278, 0x277D59978);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267436BE0);
  v8(v16, 0);
  sub_266ECB294(0, &qword_2800F73A0, 0x277D59A88);
  sub_266ECAF2C(&qword_2800F73A8, &qword_2800F73A0, 0x277D59A88);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267436C00);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F73B0, 0x277D59A38);
  sub_266ECAF2C(&qword_2800F73B8, &qword_2800F73B0, 0x277D59A38);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267436C20);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800F72C0, 0x277D599A0);
  sub_266ECAF2C(&qword_2800F72B8, &qword_2800F72C0, 0x277D599A0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v11 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267436C40);
  v11(v16, 0);
  sub_266ECB294(0, &qword_2800F7100, 0x277D598E0);
  sub_266ECAF2C(&qword_2800F70F8, &qword_2800F7100, 0x277D598E0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267475120);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F73C0, 0x277D59A58);
  sub_266ECAF2C(&qword_2800F73C8, &qword_2800F73C0, 0x277D59A58);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v13 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267475140);
  v13(v16, 0);
  sub_266ECB294(0, &qword_2800F6FF8, 0x277D598B8);
  sub_266ECAF2C(&qword_2800F6FF0, &qword_2800F6FF8, 0x277D598B8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v14 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001DLL, 0x80000002674750C0);
  return v14(v16, 0);
}

uint64_t sub_2671CCAB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CCB1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671CCE08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CCE6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671CCED0()
{
  result = qword_2800F7350;
  if (!qword_2800F7350)
  {
    sub_2671CCF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7350);
  }

  return result;
}

unint64_t sub_2671CCF28()
{
  result = qword_2800F7348;
  if (!qword_2800F7348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7348);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for PEGASUSSchemaPEGASUSRequestType(0);
  sub_2671CD3A4(&qword_2800F73E0, type metadata accessor for PEGASUSSchemaPEGASUSRequestType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x5474736575716572, 0xEB00000000657079);
  return v12(v14, 0);
}

uint64_t sub_2671CD298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CD2FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671CD3A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671CD3EC()
{
  result = qword_2800F7328;
  if (!qword_2800F7328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7328);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267475210, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267475230, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267475250, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267475270, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x80000002674752A0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671CD730(uint64_t a1)
{
  v2 = sub_2671CD834(&qword_2800F73E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671CD798(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671CD834(&qword_2800F73E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671CD834(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSResponseStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267475310, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267475330, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267475350, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267475370, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671CDB00(uint64_t a1)
{
  v2 = sub_2671CDC04(&qword_2800F73F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671CDB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671CDC04(&qword_2800F73F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671CDC04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRewrittenUtterance.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for PEGASUSSchemaPEGASUSUtteranceRewriteType(0);
  sub_2671CE080(&qword_2800F73F8, type metadata accessor for PEGASUSSchemaPEGASUSUtteranceRewriteType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x5465746972776572, 0xEB00000000657079);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x646573557369, 0xE600000000000000);
  return v11(v15, 0);
}

uint64_t sub_2671CDF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CDFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671CE080(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671CE0C8()
{
  result = qword_2800F7408;
  if (!qword_2800F7408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7408);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRewrittenUtterancesReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  v11(v17, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267475420);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F7408, 0x277D599F0);
  sub_266ECAF2C(&qword_2800F7400, &qword_2800F7408, 0x277D599F0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267475440);
  return v13(v17, 0);
}

uint64_t sub_2671CE520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CE584(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7420, 0x277D599F8);
  sub_266ECAF2C(&qword_2800F7428, &qword_2800F7420, 0x277D599F8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674754B0);
  return v7(v9, 0);
}

uint64_t sub_2671CE8F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CE958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSRewrittenUtteranceTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267463440);
  v11(v17, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v16, 0xD000000000000012, 0x8000000267463440);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_28788BED8);
    sub_26738115C();
  }

  (v13)(v16, 0);
  return v12(v17, 0);
}

uint64_t sub_2671CED00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CED64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671CEDC8()
{
  result = qword_2800F7428;
  if (!qword_2800F7428)
  {
    sub_2671CEE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7428);
  }

  return result;
}

unint64_t sub_2671CEE20()
{
  result = qword_2800F7420;
  if (!qword_2800F7420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7420);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSafetyScore.makeTypeManifestAndEnsureFields(in:)()
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
  v9 = *MEMORY[0x277D3E508];
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
  sub_266EC637C(v8, 0x616C4365726F6373, 0xEA00000000007373);
  v13(v21, 0);
  v14 = v0;
  v15 = v20;
  v20(v4, *MEMORY[0x277D3E500], v14);
  v21[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  v16(v21, 0);
  v15(v4, *MEMORY[0x277D3E530], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x62614C65726F6373, 0xEA00000000006C65);
  return v17(v21, 0);
}

uint64_t sub_2671CF254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CF2B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671CF31C()
{
  result = qword_2800F7010;
  if (!qword_2800F7010)
  {
    sub_2671CF374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7010);
  }

  return result;
}

unint64_t sub_2671CF374()
{
  result = qword_2800F7008;
  if (!qword_2800F7008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7008);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSafetyStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267475570, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267475590, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674755B0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674755D0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x80000002674755F0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267475610, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2671CF730(uint64_t a1)
{
  v2 = sub_2671CF834(&qword_2800F7440);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671CF798(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671CF834(&qword_2800F7440);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671CF834(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSSafetyStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSServerEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7448, 0x277D59A20);
  sub_266ECAF2C(&qword_2800F7450, &qword_2800F7448, 0x277D59A20);
  sub_26738120C();
  v11 = sub_26738116C();
  v61 = *(v11 - 8);
  v12 = v61 + 56;
  v13 = *(v61 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v14(v63, 0);
  sub_266ECB294(0, &qword_2800F7360, 0x277D599C8);
  sub_266ECAF2C(&qword_2800F7358, &qword_2800F7360, 0x277D599C8);
  v60 = a1;
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267475660);
  v15(v63, 0);
  sub_266ECB294(0, &qword_2800F7418, 0x277D59A00);
  sub_266ECAF2C(&qword_2800F7410, &qword_2800F7418, 0x277D59A00);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x8000000267475680);
  v16(v63, 0);
  sub_266ECB294(0, &qword_2800F7438, 0x277D59A08);
  sub_266ECAF2C(&qword_2800F7430, &qword_2800F7438, 0x277D59A08);
  sub_26738121C();
  v57 = v13;
  v58 = v12;
  v13(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000027, 0x80000002674756B0);
  v17(v63, 0);
  v52 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v62, 0xD000000000000027, 0x80000002674756B0);
  v20 = *(v61 + 48);
  v59 = v11;
  v61 += 48;
  v56 = v20;
  if (!v20(v21, 1, v11))
  {
    sub_266ECB128(&unk_28788BF00);
    sub_26738115C();
  }

  (v19)(v62, 0);
  v18(v63, 0);
  sub_266ECB294(0, &qword_2800F7458, 0x277D59A40);
  sub_266ECAF2C(&qword_2800F7460, &qword_2800F7458, 0x277D59A40);
  sub_26738121C();
  v22 = v59;
  v23 = v57;
  v57(v10, 0, 1, v59);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x80000002674756E0);
  v24(v63, 0);
  sub_266ECB294(0, &qword_2800F7468, 0x277D59A48);
  sub_266ECAF2C(&qword_2800F7470, &qword_2800F7468, 0x277D59A48);
  sub_26738121C();
  v23(v10, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002ALL, 0x8000000267475710);
  v25(v63, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v62, 0xD00000000000002ALL, 0x8000000267475710);
  if (!v56(v28, 1, v22))
  {
    sub_266ECB128(&unk_28788BF28);
    sub_26738115C();
  }

  (v27)(v62, 0);
  v26(v63, 0);
  sub_266ECB294(0, &qword_2800F73D8, 0x277D599D8);
  sub_266ECAF2C(&qword_2800F73D0, &qword_2800F73D8, 0x277D599D8);
  sub_26738121C();
  v29 = v59;
  v57(v10, 0, 1, v59);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267475740);
  v30(v63, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v62, 0xD000000000000018, 0x8000000267475740);
  if (!v56(v33, 1, v29))
  {
    sub_266ECB128(&unk_28788BF50);
    sub_26738115C();
  }

  (v32)(v62, 0);
  v31(v63, 0);
  sub_266ECB294(0, &qword_2800F71F0, 0x277D59948);
  sub_266ECAF2C(&qword_2800F71E8, &qword_2800F71F0, 0x277D59948);
  sub_26738121C();
  v34 = v59;
  v35 = v57;
  v57(v10, 0, 1, v59);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000037, 0x8000000267475760);
  v36(v63, 0);
  sub_266ECB294(0, &qword_2800F7020, 0x277D59898);
  sub_266ECAF2C(&qword_2800F7018, &qword_2800F7020, 0x277D59898);
  sub_26738121C();
  v35(v10, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x80000002674757A0);
  v37(v63, 0);
  sub_266ECB294(0, &qword_2800F7040, 0x277D598C0);
  sub_266ECAF2C(&qword_2800F7038, &qword_2800F7040, 0x277D598C0);
  sub_26738121C();
  v38 = v59;
  v35(v10, 0, 1, v59);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674757C0);
  v39(v63, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v62, 0xD000000000000018, 0x80000002674757C0);
  if (!v56(v42, 1, v38))
  {
    sub_266ECB128(&unk_28788BF80);
    sub_26738115C();
  }

  (v41)(v62, 0);
  v40(v63, 0);
  v43 = v53;
  sub_26738117C();
  v44 = sub_2673811BC();
  v46 = v45;
  v47 = *v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v46 = v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = sub_266ECAD54(0, v47[2] + 1, 1, v47);
    *v46 = v47;
  }

  v50 = v47[2];
  v49 = v47[3];
  if (v50 >= v49 >> 1)
  {
    v47 = sub_266ECAD54(v49 > 1, v50 + 1, 1, v47);
    *v46 = v47;
  }

  v47[2] = v50 + 1;
  (*(v54 + 32))(v47 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v50, v43, v55);
  v44(v63, 0);
  sub_266ECB128(&unk_28788BFA8);
  return sub_2673811CC();
}

uint64_t sub_2671D0600(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671D0698()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2671D0764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D07C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671D0828(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F7478, &qword_2800F7480, 0x277D59A18);
  a1[2] = sub_266ECAF2C(&qword_2800F7488, &qword_2800F7480, 0x277D59A18);
  result = sub_266ECAF2C(&qword_2800F7490, &qword_2800F7480, 0x277D59A18);
  a1[3] = result;
  return result;
}

uint64_t static PEGASUSSchemaPEGASUSServerEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v18 = sub_26738113C();
  v16 = *(v18 - 8);
  v0 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v17 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
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
  sub_266EC637C(v5, 0x4973757361676570, 0xE900000000000064);
  v9(v20, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v19, 0x4973757361676570, 0xE900000000000064);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788BFE0);
    sub_26738115C();
  }

  (v11)(v19, 0);
  v10(v20, 0);
  (*(v16 + 104))(v17, *MEMORY[0x277D3E530], v18);
  v20[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674206D0);
  return v13(v20, 0);
}

uint64_t sub_2671D0D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D0D74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSSortedScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v44 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v40 = a1;
  sub_26738119C();
  v38 = "iri.pegasus.PEGASUSSortedScore";
  v12 = *(v3 + 104);
  v43 = *MEMORY[0x277D3E530];
  v11 = v43;
  v12(v6, v43, v2);
  v42 = v12;
  v45[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v39 = v13;
  v15(v10, 0, 1, v13);
  v41 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v38 | 0x8000000000000000);
  v17(v45, 0);
  v37 = v3 + 104;
  v38 = "sortedScoreFinal";
  v18 = v11;
  v19 = v44;
  v12(v6, v18, v44);
  v45[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v36 = v15;
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v38 | 0x8000000000000000);
  v20(v45, 0);
  v38 = "sortedScorelinearCombiner";
  v21 = v43;
  v22 = v19;
  v23 = v42;
  v42(v6, v43, v22);
  v45[0] = 1;
  sub_26738114C();
  v24 = v39;
  v15(v10, 0, 1, v39);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v38 | 0x8000000000000000);
  v25(v45, 0);
  v38 = "sortedScoreModelFinal";
  v26 = v44;
  v23(v6, v21, v44);
  v45[0] = 1;
  sub_26738114C();
  v27 = v36;
  v36(v10, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v38 | 0x8000000000000000);
  v28(v45, 0);
  v38 = "sortedScoreStage2";
  v29 = v43;
  v30 = v26;
  v31 = v42;
  v42(v6, v43, v30);
  v45[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v24);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v38 | 0x8000000000000000);
  v32(v45, 0);
  v31(v6, v29, v44);
  v45[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v39);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674758F0);
  return v33(v45, 0);
}

uint64_t sub_2671D14A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D1504(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D1568()
{
  result = qword_2800F7188;
  if (!qword_2800F7188)
  {
    sub_2671D15C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7188);
  }

  return result;
}

unint64_t sub_2671D15C0()
{
  result = qword_2800F7180;
  if (!qword_2800F7180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7180);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSportName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267475940, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267475960, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267475980, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674759A0, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x80000002674759C0, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x80000002674759E0, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x8000000267475A00, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x8000000267475A20, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000016, 0x8000000267475A40, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000015, 0x8000000267475A60, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267475A80, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_2671D1BA8(uint64_t a1)
{
  v2 = sub_2671D1CAC(&qword_2800F74A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D1C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D1CAC(&qword_2800F74A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D1CAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSSportName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSportsExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v41 = sub_26738113C();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSSportsUsecase(0);
  sub_2671D2484(&qword_2800F74B0, type metadata accessor for PEGASUSSchemaPEGASUSSportsUsecase);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v39 = v11 + 56;
  v40 = v10;
  v12(v9, 0, 1, v10);
  v36 = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x73557374726F7073, 0xED00006573616365);
  v13(v42, 0);
  v38 = *MEMORY[0x277D3E4E8];
  v37 = *(v2 + 104);
  v14 = v41;
  v37(v5);
  v42[0] = 1;
  sub_26738114C();
  v15 = v12;
  v35 = v12;
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267438DF0);
  v16(v42, 0);
  v34 = "isSportsWatchFaceRequest";
  v17 = v38;
  v18 = v37;
  (v37)(v5, v38, v14);
  v42[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v40);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v34 | 0x8000000000000000);
  v19(v42, 0);
  v33 = v5;
  v34 = "isSnippetNextCardRequest";
  v20 = v5;
  v21 = v17;
  v22 = v41;
  v18(v20, v17, v41);
  v42[0] = 1;
  sub_26738114C();
  v23 = v40;
  v24 = v35;
  v35(v9, 0, 1, v40);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v34 | 0x8000000000000000);
  v25(v42, 0);
  v34 = "isMachineUtterance";
  v26 = v33;
  v27 = v22;
  v28 = v37;
  (v37)(v33, v21, v27);
  v42[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v23);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v34 | 0x8000000000000000);
  v29(v42, 0);
  (v28)(v26, v38, v41);
  v42[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v23);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267438E70);
  return v30(v42, 0);
}

uint64_t sub_2671D2378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D23DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671D2484(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671D24CC()
{
  result = qword_2800F7380;
  if (!qword_2800F7380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7380);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSportsExecutionTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v41 = v0;
  v42 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSSportName(0);
  sub_2671D2EA8(&qword_2800F74A0, type metadata accessor for PEGASUSSchemaPEGASUSSportName);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v35 = v10 + 56;
  v39 = v11;
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D614E74726F7073, 0xE900000000000065);
  v12(v44, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v43, 0x6D614E74726F7073, 0xE900000000000065);
  v15 = *(v10 + 48);
  v40 = v10 + 48;
  v38 = v15;
  if (!v15(v16, 1, v9))
  {
    sub_266ECB128(&unk_28788C010);
    sub_26738115C();
  }

  (v14)(v43, 0);
  v13(v44, 0);
  v17 = *(v42 + 104);
  v37 = *MEMORY[0x277D3E530];
  v42 += 104;
  v36 = v17;
  v17(v4);
  v44[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756761656CLL, 0xE600000000000000);
  v18(v44, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v43, 0x65756761656CLL, 0xE600000000000000);
  if (!v38(v21, 1, v9))
  {
    sub_266ECB128(&unk_28788C038);
    sub_26738115C();
  }

  (v20)(v43, 0);
  v19(v44, 0);
  v36(v4, v37, v41);
  v44[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x456574656C687461, 0xEF7365697469746ELL);
  v22(v44, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v43, 0x456574656C687461, 0xEF7365697469746ELL);
  if (!v38(v25, 1, v9))
  {
    sub_266ECB128(&unk_28788C060);
    sub_26738115C();
  }

  (v24)(v43, 0);
  v23(v44, 0);
  v36(v4, v37, v41);
  v44[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x69746E456D616574, 0xEC00000073656974);
  v26(v44, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v43, 0x69746E456D616574, 0xEC00000073656974);
  if (!v38(v29, 1, v9))
  {
    sub_266ECB128(&unk_28788C088);
    sub_26738115C();
  }

  (v28)(v43, 0);
  v27(v44, 0);
  v36(v4, v37, v41);
  v44[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v9);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E45746E657665, 0xED00007365697469);
  v30(v44, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v43, 0x746E45746E657665, 0xED00007365697469);
  if (!v38(v33, 1, v9))
  {
    sub_266ECB128(&unk_28788C0B0);
    sub_26738115C();
  }

  (v32)(v43, 0);
  return v31(v44, 0);
}

uint64_t sub_2671D2D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D2E00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671D2EA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671D2EF0()
{
  result = qword_2800F73B0;
  if (!qword_2800F73B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F73B0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSportsUsecase.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267475B60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v194;

  v1(v226, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267475B80, v11);
  v12 = *v9;
  *v9 = v195;

  v7(v226, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267475BB0, v17);
  v18 = *v15;
  *v15 = v196;

  v13(v226, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267475BE0, v23);
  v24 = *v21;
  *v21 = v197;

  v19(v226, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267475C10, v29);
  v30 = *v27;
  *v27 = v198;

  v25(v226, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x8000000267475C40, v35);
  v36 = *v33;
  *v33 = v199;

  v31(v226, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x8000000267475C60, v41);
  v42 = *v39;
  *v39 = v200;

  v37(v226, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x8000000267475C90, v47);
  v48 = *v45;
  *v45 = v201;

  v43(v226, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x8000000267475CC0, v53);
  v54 = *v51;
  *v51 = v202;

  v49(v226, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000028, 0x8000000267475CE0, v59);
  v60 = *v57;
  *v57 = v203;

  v55(v226, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000023, 0x8000000267475D10, v65);
  v66 = *v63;
  *v63 = v204;

  v61(v226, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000030, 0x8000000267475D40, v71);
  v72 = *v69;
  *v69 = v205;

  v67(v226, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001BLL, 0x8000000267475D80, v77);
  v78 = *v75;
  *v75 = v206;

  v73(v226, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001DLL, 0x8000000267475DA0, v83);
  v84 = *v81;
  *v81 = v207;

  v79(v226, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v208 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000027, 0x8000000267475DC0, v89);
  v90 = *v87;
  *v87 = v208;

  v85(v226, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ALL, 0x8000000267475DF0, v95);
  v96 = *v93;
  *v93 = v209;

  v91(v226, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v210 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000024, 0x8000000267475E10, v101);
  v102 = *v99;
  *v99 = v210;

  v97(v226, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v211 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000025, 0x8000000267475E40, v107);
  v108 = *v105;
  *v105 = v211;

  v103(v226, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v212 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000021, 0x8000000267475E70, v113);
  v114 = *v111;
  *v111 = v212;

  v109(v226, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v213 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000026, 0x8000000267475EA0, v119);
  v120 = *v117;
  *v117 = v213;

  v115(v226, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v214 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000022, 0x8000000267475ED0, v125);
  v126 = *v123;
  *v123 = v214;

  v121(v226, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001ELL, 0x8000000267475F00, v131);
  v132 = *v129;
  *v129 = v215;

  v127(v226, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000028, 0x8000000267475F20, v137);
  v138 = *v135;
  *v135 = v216;

  v133(v226, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v217 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000022, 0x8000000267475F50, v143);
  v144 = *v141;
  *v141 = v217;

  v139(v226, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v218 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001BLL, 0x8000000267475F80, v149);
  v150 = *v147;
  *v147 = v218;

  v145(v226, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v219 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001FLL, 0x8000000267475FA0, v155);
  v156 = *v153;
  *v153 = v219;

  v151(v226, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v220 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000022, 0x8000000267475FC0, v161);
  v162 = *v159;
  *v159 = v220;

  v157(v226, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v221 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000023, 0x8000000267475FF0, v167);
  v168 = *v165;
  *v165 = v221;

  v163(v226, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v222 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000023, 0x8000000267476020, v173);
  v174 = *v171;
  *v171 = v222;

  v169(v226, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v223 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000021, 0x8000000267476050, v179);
  v180 = *v177;
  *v177 = v223;

  v175(v226, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v224 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000025, 0x8000000267476080, v185);
  v186 = *v183;
  *v183 = v224;

  v181(v226, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v225 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000027, 0x80000002674760B0, v191);
  v192 = *v189;
  *v189 = v225;

  return v187(v226, 0);
}

uint64_t sub_2671D3E2C(uint64_t a1)
{
  v2 = sub_2671D3F30(&qword_2800F74B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D3E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D3F30(&qword_2800F74B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D3F30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSSportsUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSUtteranceRewriteType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267476120, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267476150, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267476180, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x80000002674761B0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000038, 0x80000002674761F0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671D4268(uint64_t a1)
{
  v2 = sub_2671D436C(&qword_2800F74C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D42D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D436C(&qword_2800F74C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D436C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSUtteranceRewriteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSUtteranceUnderstandingReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v14[1] = a1;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = v7 + 56;
  v8(v5, 0, 1, v6);
  v14[0] = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v15, 0);
  sub_266ECB294(0, &qword_2800F14B0, 0x277D59950);
  sub_266ECAF2C(&qword_2800F14B8, &qword_2800F14B0, 0x277D59950);
  sub_26738122C();
  v8(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267476280);
  v11(v15, 0);
  sub_26738122C();
  v8(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674762A0);
  return v12(v15, 0);
}

uint64_t sub_2671D4728(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D478C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
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
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F14E0, 0x277D59960);
  sub_266ECAF2C(&qword_2800F14E8, &qword_2800F14E0, 0x277D59960);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E493255706F74, 0xEC00000073746E65);
  v7(v11, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x494153474B706F74, 0xEE0073746E65746ELL);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F72F8, 0x277D599A8);
  sub_266ECAF2C(&qword_2800F72F0, &qword_2800F72F8, 0x277D599A8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000023, 0x8000000267476310);
  return v9(v11, 0);
}

uint64_t sub_2671D4C68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D4CCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSVideoExecution.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F74C8, 0x277D59A68);
  sub_266ECAF2C(&qword_2800F74D0, &qword_2800F74C8, 0x277D59A68);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267476380);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F74D8, 0x277D59A60);
  sub_266ECAF2C(&qword_2800F74E0, &qword_2800F74D8, 0x277D59A60);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x80000002674763A0);
  return v7(v9, 0);
}

uint64_t sub_2671D5048(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D50AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSVideoExecutionTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29[-v9];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v30 = *MEMORY[0x277D3E530];
  v36 = v3 + 104;
  v37 = v2;
  v31 = v11;
  v11(v6);
  v39[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v32 = *(v13 + 56);
  v33 = v13 + 56;
  v32(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E45746C75736572, 0xEF73644979746974);
  v14(v39, 0);
  v34 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v38, 0x6E45746C75736572, 0xEF73644979746974);
  v17 = *(v13 + 48);
  v35 = v13 + 48;
  if (!v17(v18, 1, v12))
  {
    sub_266ECB128(&unk_28788C0D8);
    sub_26738115C();
  }

  (v16)(v38, 0);
  v15(v39, 0);
  v19 = v31;
  v31(v6, v30, v37);
  v39[0] = 1;
  sub_26738114C();
  v32(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x7469546F65646976, 0xEA0000000000656CLL);
  v20(v39, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v38, 0x7469546F65646976, 0xEA0000000000656CLL);
  if (!v17(v23, 1, v12))
  {
    sub_266ECB128(&unk_28788C100);
    sub_26738115C();
  }

  (v22)(v38, 0);
  v21(v39, 0);
  v19(v6, *MEMORY[0x277D3E4E8], v37);
  v39[0] = 1;
  sub_26738114C();
  v32(v10, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x736552736C4E7369, 0xEB00000000746C75);
  v24(v39, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v38, 0x736552736C4E7369, 0xEB00000000746C75);
  if (!v17(v27, 1, v12))
  {
    sub_266ECB128(&unk_28788C128);
    sub_26738115C();
  }

  (v26)(v38, 0);
  return v25(v39, 0);
}

uint64_t sub_2671D572C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D5790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D57F4()
{
  result = qword_2800F73C8;
  if (!qword_2800F73C8)
  {
    sub_2671D584C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F73C8);
  }

  return result;
}

unint64_t sub_2671D584C()
{
  result = qword_2800F73C0;
  if (!qword_2800F73C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F73C0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSVideoExperienceProperty.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v27 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25 = a1;
  sub_26738119C();
  v26 = "SUSVideoExperienceProperty";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v28 = v3 + 104;
  v24 = v11;
  v12(v6, v11, v2);
  v13 = v12;
  v23 = v12;
  v29[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 0, 1, v14);
  v16 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v26 | 0x8000000000000000);
  v17(v29, 0);
  v26 = "isForegroundAppAvailable";
  v18 = v11;
  v19 = v27;
  v13(v6, v18, v27);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v26 | 0x8000000000000000);
  v20(v29, 0);
  v23(v6, v24, v19);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267476480);
  return v21(v29, 0);
}

uint64_t sub_2671D5CAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D5D10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D5D74()
{
  result = qword_2800F74E0;
  if (!qword_2800F74E0)
  {
    sub_2671D5DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F74E0);
  }

  return result;
}

unint64_t sub_2671D5DCC()
{
  result = qword_2800F74D8;
  if (!qword_2800F74D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F74D8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSVideoInteraction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for PEGASUSSchemaPEGASUSVideoInteractionType(0);
  sub_2671D63E8(&qword_2800F74E8, type metadata accessor for PEGASUSSchemaPEGASUSVideoInteractionType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v20[0] = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x7463617265746E69, 0xEF657079546E6F69);
  v11(v22, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = v1 + 104;
  v14 = *(v1 + 104);
  v20[1] = v13;
  v14(v4, v12, v21);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x80000002674764E0);
  v15(v22, 0);
  v14(v4, v12, v21);
  v22[0] = 1;
  sub_26738114C();
  v16 = v20[0];
  (v20[0])(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449676F6C616964, 0xE800000000000000);
  v17(v22, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSVideoVerb(0);
  sub_2671D63E8(&qword_2800F74F0, type metadata accessor for PEGASUSSchemaPEGASUSVideoVerb);
  sub_26738120C();
  v16(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267476500);
  return v18(v22, 0);
}

uint64_t sub_2671D62DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D6340(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671D63E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671D6430()
{
  result = qword_2800F74C8;
  if (!qword_2800F74C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F74C8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSVideoInteractionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267476560, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267476590, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674765C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671D6694(uint64_t a1)
{
  v2 = sub_2671D6798(&qword_2800F74F8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D66FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D6798(&qword_2800F74F8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D6798(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSVideoInteractionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSVideoVerb.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267476620, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267476640, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267476660, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267476680, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x80000002674766B0, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x80000002674766E0, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267476710, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267476740, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x8000000267476760, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001FLL, 0x8000000267476790, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}