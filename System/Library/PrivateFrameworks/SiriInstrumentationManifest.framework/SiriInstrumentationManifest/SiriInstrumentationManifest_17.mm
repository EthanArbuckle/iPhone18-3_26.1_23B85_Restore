unint64_t sub_267188500()
{
  result = qword_2800F67A0;
  if (!qword_2800F67A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F67A0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHASRPowerContextPolicy.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026746D3C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026746D3F0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026746D420, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x800000026746D450, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026746D480, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267188844(uint64_t a1)
{
  v2 = sub_267188948(&qword_2800F67F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671888AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267188948(&qword_2800F67F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267188948(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHASRPowerContextPolicy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAssetSetsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F67F8, 0x277D5B1D8);
  sub_266ECAF2C(&qword_2800F6800, &qword_2800F67F8, 0x277D5B1D8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465737341666175, 0xEC00000073746553);
  return v5(v7, 0);
}

uint64_t sub_267188B68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F67F8, 0x277D5B1D8);
  sub_266ECAF2C(&qword_2800F6800, &qword_2800F67F8, 0x277D5B1D8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465737341666175, 0xEC00000073746553);
  return v5(v7, 0);
}

uint64_t sub_267188D0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267188D70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHAssetsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737465737361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267188FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737465737361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26718917C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671891E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHAssetType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026746D540, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026746D570, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x800000026746D590, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x800000026746D5B0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026746D5D0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x800000026746D5F0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2671895EC(uint64_t a1)
{
  v2 = sub_2671896F0(&qword_2800F6828);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267189654(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671896F0(&qword_2800F6828);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671896F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAssistantDaemonLaunchMetadataReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v20[2] = a1;
  sub_26738119C();
  v21 = "chMetadataReported";
  v11 = *MEMORY[0x277D3E510];
  v22 = *(v3 + 104);
  v22(v6, v11, v2);
  v20[1] = v3 + 104;
  v23[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v20[3] = v13 + 56;
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v21 | 0x8000000000000000);
  v15(v23, 0);
  v21 = "pawnTimestampInNs";
  v16 = v22;
  v22(v6, v11, v2);
  v23[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, v21 | 0x8000000000000000);
  v17(v23, 0);
  v16(v6, *MEMORY[0x277D3E4E8], v2);
  v23[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x5274737269467369, 0xEE00747365757165);
  return v18(v23, 0);
}

uint64_t sub_267189B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267189BB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267189C18()
{
  result = qword_2800F6830;
  if (!qword_2800F6830)
  {
    sub_267189C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6830);
  }

  return result;
}

unint64_t sub_267189C70()
{
  result = qword_2800F6838;
  if (!qword_2800F6838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6838);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAudioTopologyReported.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for ORCHSchemaORCHDevicesAudioTopology(0);
  sub_26718A0FC(&qword_2800F6840, type metadata accessor for ORCHSchemaORCHDevicesAudioTopology);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x706F546F69647561, 0xED000079676F6C6FLL);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x72656461654C7369, 0xE800000000000000);
  return v11(v15, 0);
}

uint64_t sub_267189FF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718A054(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26718A0FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26718A144()
{
  result = qword_2800F6850;
  if (!qword_2800F6850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6850);
  }

  return result;
}

uint64_t static ORCHSchemaORCHBlackboardUseCaseProfile.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026746D740, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026746D770, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x800000026746D7A0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026746D7D0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026746D800, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x800000026746D830, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26718A4F8(uint64_t a1)
{
  v2 = sub_26718A5FC(&qword_2800F6860);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718A560(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718A5FC(&qword_2800F6860);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718A5FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHBlackboardUseCaseProfile(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHBluetoothState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746D890, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026746D8B0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x800000026746D8D0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026746D8F0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x800000026746D910, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026746D930, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x800000026746D950, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_26718AA18(uint64_t a1)
{
  v2 = sub_26718AB1C(&qword_2800F6870);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718AA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718AB1C(&qword_2800F6870);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718AB1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHBluetoothState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCandidateRequestCancelled.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26718ADA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718AE0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26718AE70()
{
  result = qword_2800F6878;
  if (!qword_2800F6878)
  {
    sub_26718AEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6878);
  }

  return result;
}

unint64_t sub_26718AEC8()
{
  result = qword_2800F6880;
  if (!qword_2800F6880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6880);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCandidateRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6888, 0x277D59608);
  sub_266ECAF2C(&qword_2800F6890, &qword_2800F6888, 0x277D59608);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64657472617473, 0xE700000000000000);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F6880, 0x277D595F8);
  sub_266ECAF2C(&qword_2800F6878, &qword_2800F6880, 0x277D595F8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x656C6C65636E6163, 0xE900000000000064);
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

uint64_t sub_26718B364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718B3C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHCandidateRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHCandidateRequestType(0);
  sub_26718B8D0(&qword_2800F68A8, type metadata accessor for ORCHSchemaORCHCandidateRequestType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5474736575716572, 0xEB00000000657079);
  return v5(v7, 0);
}

uint64_t sub_26718B634()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHCandidateRequestType(0);
  sub_26718B8D0(&qword_2800F68A8, type metadata accessor for ORCHSchemaORCHCandidateRequestType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5474736575716572, 0xEB00000000657079);
  return v5(v7, 0);
}

uint64_t sub_26718B7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718B828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26718B8D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26718B918()
{
  result = qword_2800F6888;
  if (!qword_2800F6888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6888);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCandidateRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026746DA70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x800000026746DAA0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026746DAE0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026746DB10, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000032, 0x800000026746DB40, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x800000026746DB80, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000034, 0x800000026746DBC0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_26718BD3C(uint64_t a1)
{
  v2 = sub_26718BE40(&qword_2800F68B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718BDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718BE40(&qword_2800F68B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718BE40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHCandidateRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMBridgeContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F68B8, 0x277D595F0);
  sub_266ECAF2C(&qword_2800F68C0, &qword_2800F68B8, 0x277D595F0);
  sub_26738121C();
  v7 = sub_26738116C();
  v26 = *(v7 - 8);
  v8 = *(v26 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F68C8, 0x277D595E0);
  sub_266ECAF2C(&qword_2800F68D0, &qword_2800F68C8, 0x277D595E0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F68D8, 0x277D595E8);
  sub_266ECAF2C(&qword_2800F68E0, &qword_2800F68D8, 0x277D595E8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
  v12(v31, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6575716552627573, 0xEC00000064497473);
  v13(v31, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v30, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v26 + 48))(v16, 1, v7))
  {
    sub_266ECB128(&unk_28788B2A8);
    sub_26738115C();
  }

  (v15)(v30, 0);
  v14(v31, 0);
  v17 = v27;
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
  (*(v28 + 32))(v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v17, v29);
  return v18(v31, 0);
}

uint64_t sub_26718C590(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718C5F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHCDMRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for ORCHSchemaORCHCDMResponseStatus(0);
  sub_26718CAC8(&qword_2800F68F8, type metadata accessor for ORCHSchemaORCHCDMResponseStatus);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737574617473, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026746DC60);
  return v11(v15, 0);
}

uint64_t sub_26718C9BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718CA20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26718CAC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26718CB10()
{
  result = qword_2800F68C8;
  if (!qword_2800F68C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F68C8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_28788B2D8);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  type metadata accessor for ORCHSchemaORCHCDMRequestFailureReason(0);
  sub_26718D028(&qword_2800F6900, type metadata accessor for ORCHSchemaORCHCDMRequestFailureReason);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F73616572, 0xE600000000000000);
  return v17(v21, 0);
}

uint64_t sub_26718CF1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718CF80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26718D028(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26718D070()
{
  result = qword_2800F68D8;
  if (!qword_2800F68D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F68D8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMRequestFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026746DCF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026746DD20, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_26718D260(uint64_t a1)
{
  v2 = sub_26718D364(&qword_2800F6908);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718D2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718D364(&qword_2800F6908);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718D364(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHCDMRequestFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26718D5F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718D654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26718D6B8()
{
  result = qword_2800F68C0;
  if (!qword_2800F68C0)
  {
    sub_26718D710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F68C0);
  }

  return result;
}

unint64_t sub_26718D710()
{
  result = qword_2800F68B8;
  if (!qword_2800F68B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F68B8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMResponseStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026746DDB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026746DDD0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026746DDF0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26718D974(uint64_t a1)
{
  v2 = sub_26718DA78(&qword_2800F6910);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718D9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718DA78(&qword_2800F6910);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718DA78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHCDMResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v71 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v68 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6918, 0x277D59618);
  sub_266ECAF2C(&qword_2800F6920, &qword_2800F6918, 0x277D59618);
  sub_26738120C();
  v11 = sub_26738116C();
  v70 = *(v11 - 8);
  v12 = v70 + 56;
  v13 = *(v70 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v14(v76, 0);
  sub_266ECB294(0, &qword_2800F6928, 0x277D597D8);
  sub_266ECAF2C(&qword_2800F6930, &qword_2800F6928, 0x277D597D8);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x800000026746DE50);
  v15(v76, 0);
  sub_266ECB294(0, &qword_2800F6938, 0x277D597B0);
  sub_266ECAF2C(&qword_2800F6940, &qword_2800F6938, 0x277D597B0);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x4374736575716572, 0xEE00747865746E6FLL);
  v16(v76, 0);
  sub_266ECB294(0, &qword_2800F67D8, 0x277D59578);
  sub_266ECAF2C(&qword_2800F67D0, &qword_2800F67D8, 0x277D59578);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026746DE70);
  v17(v76, 0);
  sub_266ECB294(0, &qword_2800F68F0, 0x277D595D8);
  sub_266ECAF2C(&qword_2800F68E8, &qword_2800F68F0, 0x277D595D8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026746DE90);
  v18(v76, 0);
  sub_266ECB294(0, &qword_2800F6948, 0x277D59650);
  sub_266ECAF2C(&qword_2800F6950, &qword_2800F6948, 0x277D59650);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026746DEB0);
  v19(v76, 0);
  sub_266ECB294(0, &qword_2800F6958, 0x277D597F8);
  sub_266ECAF2C(&qword_2800F6960, &qword_2800F6958, 0x277D597F8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x800000026746DED0);
  v20(v76, 0);
  sub_266ECB294(0, &qword_2800F6968, 0x277D59670);
  sub_266ECAF2C(&qword_2800F6970, &qword_2800F6968, 0x277D59670);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026746DEF0);
  v21(v76, 0);
  sub_266ECB294(0, &qword_2800F6978, 0x277D597E0);
  sub_266ECAF2C(&qword_2800F6980, &qword_2800F6978, 0x277D597E0);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x6143746C75736572, 0xEF6574616469646ELL);
  v22(v76, 0);
  sub_266ECB294(0, &qword_2800F6988, 0x277D597E8);
  sub_266ECAF2C(&qword_2800F6990, &qword_2800F6988, 0x277D597E8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x6553746C75736572, 0xEE0064657463656CLL);
  v23(v76, 0);
  sub_266ECB294(0, &qword_2800F6998, 0x277D59620);
  sub_266ECAF2C(&qword_2800F69A0, &qword_2800F6998, 0x277D59620);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026746DF10);
  v24(v76, 0);
  sub_266ECB294(0, &qword_2800F6820, 0x277D595C0);
  sub_266ECAF2C(&qword_2800F6818, &qword_2800F6820, 0x277D595C0);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C62616C69617661, 0xEF73746573734165);
  v25(v76, 0);
  sub_266ECB294(0, &qword_2800F69A8, 0x277D59628);
  sub_266ECAF2C(&qword_2800F69B0, &qword_2800F69A8, 0x277D59628);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026746DF30);
  v26(v76, 0);
  sub_266ECB294(0, &qword_2800F69B8, 0x277D59770);
  sub_266ECAF2C(&qword_2800F69C0, &qword_2800F69B8, 0x277D59770);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026746DF50);
  v27(v76, 0);
  sub_266ECB294(0, &qword_2800F69C8, 0x277D596C0);
  sub_266ECAF2C(&qword_2800F69D0, &qword_2800F69C8, 0x277D596C0);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026746DF70);
  v28(v76, 0);
  sub_266ECB294(0, &qword_2800F69D8, 0x277D596F8);
  sub_266ECAF2C(&qword_2800F69E0, &qword_2800F69D8, 0x277D596F8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026746DF90);
  v29(v76, 0);
  sub_266ECB294(0, &qword_2800F69E8, 0x277D59700);
  sub_266ECAF2C(&qword_2800F69F0, &qword_2800F69E8, 0x277D59700);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x800000026746DFB0);
  v30(v76, 0);
  sub_266ECB294(0, &qword_2800F6788, 0x277D59598);
  sub_266ECAF2C(&qword_2800F6780, &qword_2800F6788, 0x277D59598);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026746DFD0);
  v31(v76, 0);
  sub_266ECB294(0, &qword_2800F69F8, 0x277D59868);
  sub_266ECAF2C(&qword_2800F6A00, &qword_2800F69F8, 0x277D59868);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C616E6946707274, 0xEC00000064657A69);
  v32(v76, 0);
  sub_266ECB294(0, &qword_2800F6A08, 0x277D597C8);
  sub_266ECAF2C(&qword_2800F6A10, &qword_2800F6A08, 0x277D597C8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026746DFF0);
  v33(v76, 0);
  sub_266ECB294(0, &qword_2800F6A18, 0x277D59768);
  sub_266ECAF2C(&qword_2800F6A20, &qword_2800F6A18, 0x277D59768);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x800000026746E010);
  v34(v76, 0);
  sub_266ECB294(0, &qword_2800F6A28, 0x277D59870);
  sub_266ECAF2C(&qword_2800F6A30, &qword_2800F6A28, 0x277D59870);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026746E030);
  v35(v76, 0);
  sub_266ECB294(0, &qword_2800F6A38, 0x277D59860);
  sub_266ECAF2C(&qword_2800F6A40, &qword_2800F6A38, 0x277D59860);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026746E050);
  v36(v76, 0);
  sub_266ECB294(0, &qword_2800F6A48, 0x277D59678);
  sub_266ECAF2C(&qword_2800F6A50, &qword_2800F6A48, 0x277D59678);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x800000026746E070);
  v37(v76, 0);
  sub_266ECB294(0, &qword_2800F6810, 0x277D595B8);
  sub_266ECAF2C(&qword_2800F6808, &qword_2800F6810, 0x277D595B8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026746E090);
  v38(v76, 0);
  sub_266ECB294(0, &qword_2800F68A0, 0x277D59600);
  sub_266ECAF2C(&qword_2800F6898, &qword_2800F68A0, 0x277D59600);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x800000026746E0B0);
  v39(v76, 0);
  sub_266ECB294(0, &qword_2800F6A58, 0x277D597A0);
  sub_266ECAF2C(&qword_2800F6A60, &qword_2800F6A58, 0x277D597A0);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x800000026746E0D0);
  v40(v76, 0);
  sub_266ECB294(0, &qword_2800F6A68, 0x277D59630);
  sub_266ECAF2C(&qword_2800F6A70, &qword_2800F6A68, 0x277D59630);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x800000026746E0F0);
  v41(v76, 0);
  sub_266ECB294(0, &qword_2800F6838, 0x277D595C8);
  sub_266ECAF2C(&qword_2800F6830, &qword_2800F6838, 0x277D595C8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x800000026746E110);
  v42(v76, 0);
  sub_266ECB294(0, &qword_2800F6A78, 0x277D59690);
  sub_266ECAF2C(&qword_2800F6A80, &qword_2800F6A78, 0x277D59690);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026746E140);
  v43(v76, 0);
  sub_266ECB294(0, &qword_2800F6A88, 0x277D59838);
  sub_266ECAF2C(&qword_2800F6A90, &qword_2800F6A88, 0x277D59838);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026746E160);
  v44(v76, 0);
  sub_266ECB294(0, &qword_2800F6748, 0x277D59570);
  sub_266ECAF2C(&qword_2800F6740, &qword_2800F6748, 0x277D59570);
  v68[1] = a1;
  sub_26738121C();
  v69 = v13;
  v68[0] = v12;
  v13(v10, 0, 1, v11);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026746E180);
  v45(v76, 0);
  v74 = a2;
  v46 = sub_2673811AC();
  v47 = sub_266ECB6CC(v75, 0xD000000000000018, 0x800000026746E180);
  if (!(*(v70 + 48))(v48, 1, v11))
  {
    sub_266ECB128(&unk_28788B300);
    sub_26738115C();
  }

  (v47)(v75, 0);
  v46(v76, 0);
  sub_266ECB294(0, &qword_2800F6A98, 0x277D59718);
  sub_266ECAF2C(&qword_2800F6AA0, &qword_2800F6A98, 0x277D59718);
  sub_26738121C();
  v49 = v69;
  v69(v10, 0, 1, v11);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x800000026746E1A0);
  v50(v76, 0);
  sub_266ECB294(0, &qword_2800F6AA8, 0x277D59818);
  sub_266ECAF2C(&qword_2800F6AB0, &qword_2800F6AA8, 0x277D59818);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C6F6F546D696873, 0xEF747865746E6F43);
  v51(v76, 0);
  sub_266ECB294(0, &qword_2800F6AB8, 0x277D596B8);
  sub_266ECAF2C(&qword_2800F6AC0, &qword_2800F6AB8, 0x277D596B8);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026746E1C0);
  v52(v76, 0);
  sub_266ECB294(0, &qword_2800F6AC8, 0x277D59740);
  sub_266ECAF2C(&qword_2800F6AD0, &qword_2800F6AC8, 0x277D59740);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x800000026746E1E0);
  v53(v76, 0);
  sub_266ECB294(0, &qword_2800F6AD8, 0x277D59888);
  sub_266ECAF2C(&qword_2800F6AE0, &qword_2800F6AD8, 0x277D59888);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x800000026746E210);
  v54(v76, 0);
  sub_266ECB294(0, &qword_2800F6AE8, 0x277D59858);
  sub_266ECAF2C(&qword_2800F6AF0, &qword_2800F6AE8, 0x277D59858);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026746E230);
  v55(v76, 0);
  sub_266ECB294(0, &qword_2800F6850, 0x277D595D0);
  sub_266ECAF2C(&qword_2800F6848, &qword_2800F6850, 0x277D595D0);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v56 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267442E50);
  v56(v76, 0);
  sub_266ECB294(0, &qword_2800F6AF8, 0x277D59698);
  sub_266ECAF2C(&qword_2800F6B00, &qword_2800F6AF8, 0x277D59698);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v57 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026746E250);
  v57(v76, 0);
  sub_266ECB294(0, &qword_2800F6B08, 0x277D596E8);
  sub_266ECAF2C(&qword_2800F6B10, &qword_2800F6B08, 0x277D596E8);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v58 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026746E270);
  v58(v76, 0);
  v59 = v71;
  sub_26738117C();
  v60 = sub_2673811BC();
  v62 = v61;
  v63 = *v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v62 = v63;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v63 = sub_266ECAD54(0, v63[2] + 1, 1, v63);
    *v62 = v63;
  }

  v66 = v63[2];
  v65 = v63[3];
  if (v66 >= v65 >> 1)
  {
    v63 = sub_266ECAD54(v65 > 1, v66 + 1, 1, v63);
    *v62 = v63;
  }

  v63[2] = v66 + 1;
  (*(v72 + 32))(v63 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v66, v59, v73);
  v60(v76, 0);
  sub_266ECB128(&unk_28788B328);
  return sub_2673811CC();
}

uint64_t sub_2671900A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267190140()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26719020C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267190270(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671902D0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6B18, &qword_2800F1E80, 0x277D59610);
  a1[2] = sub_266ECAF2C(&qword_2800F6B20, &qword_2800F1E80, 0x277D59610);
  result = sub_266ECAF2C(&qword_2800F6B28, &qword_2800F1E80, 0x277D59610);
  a1[3] = result;
  return result;
}

uint64_t static ORCHSchemaORCHClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v5, 0x4974736575716572, 0xE900000000000064);
  v9(v20, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v19, 0x4974736575716572, 0xE900000000000064);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788B360);
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

uint64_t sub_2671907B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719081C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHConversationContextSubmitted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "versationContextSubmitted";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026746E330);
  return v16(v21, 0);
}

uint64_t sub_267190BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267190C58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267190CBC()
{
  result = qword_2800F69A0;
  if (!qword_2800F69A0)
  {
    sub_267190D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F69A0);
  }

  return result;
}

unint64_t sub_267190D14()
{
  result = qword_2800F6998;
  if (!qword_2800F6998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6998);
  }

  return result;
}

uint64_t static ORCHSchemaORCHDeviceDynamicContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v50 = sub_26738113C();
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_267191AB0(&qword_2800F0638, type metadata accessor for SISchemaDeviceThermalState);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x536C616D72656874, 0xEC00000065746174);
  v13(v55, 0);
  type metadata accessor for ORCHSchemaORCHMotionActivity(0);
  sub_267191AB0(&qword_2800F66A8, type metadata accessor for ORCHSchemaORCHMotionActivity);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x63416E6F69746F6DLL, 0xEE00797469766974);
  v14(v55, 0);
  v15 = *MEMORY[0x277D3E540];
  v16 = *(v53 + 104);
  v53 += 104;
  v49 = v16;
  v16(v5, v15, v50);
  v55[0] = 1;
  v46 = v5;
  sub_26738114C();
  v47 = v12;
  v51 = v11 + 56;
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x800000026746E390);
  v17(v55, 0);
  v48 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v54, 0xD000000000000023, 0x800000026746E390);
  v20 = *(v11 + 48);
  v45 = v10;
  v42 = v20;
  v43 = v11 + 48;
  if (!v20(v21, 1, v10))
  {
    sub_266ECB128(&unk_28788B390);
    sub_26738115C();
  }

  (v19)(v54, 0);
  v18(v55, 0);
  v23 = v46;
  v44 = *MEMORY[0x277D3E4E8];
  v22 = v44;
  v24 = v50;
  v49(v46, v44, v50);
  v55[0] = 1;
  sub_26738114C();
  v25 = v45;
  v47(v9, 0, 1, v45);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026746A700);
  v26(v55, 0);
  v49(v23, v22, v24);
  v55[0] = 1;
  sub_26738114C();
  v27 = v47;
  v47(v9, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026746A720);
  v28(v55, 0);
  v41 = "headGesturesEnabled";
  type metadata accessor for ORCHSchemaORCHHeadGestureMapping(0);
  sub_267191AB0(&qword_2800F6230, type metadata accessor for ORCHSchemaORCHHeadGestureMapping);
  sub_26738120C();
  v27(v9, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v41 | 0x8000000000000000);
  v29(v55, 0);
  sub_26738120C();
  v27(v9, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026746A760);
  v30(v55, 0);
  v49(v46, v44, v50);
  v55[0] = 1;
  sub_26738114C();
  v31 = v25;
  v27(v9, 0, 1, v25);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E45696669577369, 0xED000064656C6261);
  v32(v55, 0);
  type metadata accessor for ORCHSchemaORCHBluetoothState(0);
  sub_267191AB0(&qword_2800F6868, type metadata accessor for ORCHSchemaORCHBluetoothState);
  sub_26738120C();
  v27(v9, 0, 1, v25);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x746F6F7465756C62, 0xEE00657461745368);
  v33(v55, 0);
  type metadata accessor for ORCHSchemaORCHFlashlightLevel(0);
  sub_267191AB0(&qword_2800F6B30, type metadata accessor for ORCHSchemaORCHFlashlightLevel);
  sub_26738120C();
  v27(v9, 0, 1, v25);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0x67696C6873616C66, 0xEF6C6576654C7468);
  v34(v55, 0);
  v49(v46, v44, v50);
  v55[0] = 1;
  sub_26738114C();
  v27(v9, 0, 1, v25);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267468D30);
  v35(v55, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v54, 0xD000000000000010, 0x8000000267468D30);
  if (!v42(v38, 1, v31))
  {
    sub_266ECB128(&unk_28788B3B8);
    sub_26738115C();
  }

  (v37)(v54, 0);
  v36(v55, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_267191AB0(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent);
  sub_26738122C();
  v47(v9, 0, 1, v45);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267468DC0);
  return v39(v55, 0);
}

uint64_t sub_2671919A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267191A08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267191AB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267191AF8()
{
  result = qword_2800F69A8;
  if (!qword_2800F69A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F69A8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHDevicesAudioTopology.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026746E400, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026746E430, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026746E450, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026746E480, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x800000026746E4B0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267191E38(uint64_t a1)
{
  v2 = sub_267191F3C(&qword_2800F6B38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267191EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267191F3C(&qword_2800F6B38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267191F3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHDevicesAudioTopology(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHErrorCode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026746E510, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x800000026746E530, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026746E550, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026746E570, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_28788B3E0);
  return sub_26738112C();
}

uint64_t sub_267192218(uint64_t a1)
{
  v2 = sub_26719231C(&qword_2800F6B48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267192280(uint64_t a1, uint64_t a2)
{
  v4 = sub_26719231C(&qword_2800F6B48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26719231C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x800000026746E5C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v98;

  v1(v114, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026746E5E0, v11);
  v12 = *v9;
  *v9 = v99;

  v7(v114, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x800000026746E600, v17);
  v18 = *v15;
  *v15 = v100;

  v13(v114, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x800000026746E620, v23);
  v24 = *v21;
  *v21 = v101;

  v19(v114, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x800000026746E640, v29);
  v30 = *v27;
  *v27 = v102;

  v25(v114, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001CLL, 0x800000026746E670, v35);
  v36 = *v33;
  *v33 = v103;

  v31(v114, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x800000026746E690, v41);
  v42 = *v39;
  *v39 = v104;

  v37(v114, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x800000026746E6B0, v47);
  v48 = *v45;
  *v45 = v105;

  v43(v114, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000029, 0x800000026746E6E0, v53);
  v54 = *v51;
  *v51 = v106;

  v49(v114, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x800000026746E710, v59);
  v60 = *v57;
  *v57 = v107;

  v55(v114, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x800000026746E740, v65);
  v66 = *v63;
  *v63 = v108;

  v61(v114, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ALL, 0x800000026746E760, v71);
  v72 = *v69;
  *v69 = v109;

  v67(v114, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000019, 0x800000026746E780, v77);
  v78 = *v75;
  *v75 = v110;

  v73(v114, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001DLL, 0x800000026746E7A0, v83);
  v84 = *v81;
  *v81 = v111;

  v79(v114, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000019, 0x800000026746E7C0, v89);
  v90 = *v87;
  *v87 = v112;

  v85(v114, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000016, 0x800000026746E7E0, v95);
  v96 = *v93;
  *v93 = v113;

  return v91(v114, 0);
}

uint64_t sub_267192B28(uint64_t a1)
{
  v2 = sub_267192C2C(&qword_2800F6B58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267192B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_267192C2C(&qword_2800F6B58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267192C2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecuteOnRemoteRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6B60, 0x277D59648);
  sub_266ECAF2C(&qword_2800F6B68, &qword_2800F6B60, 0x277D59648);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F6B70, 0x277D59638);
  sub_266ECAF2C(&qword_2800F6B78, &qword_2800F6B70, 0x277D59638);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F6B80, 0x277D59640);
  sub_266ECAF2C(&qword_2800F6B88, &qword_2800F6B80, 0x277D59640);
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

uint64_t sub_26719324C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671932B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHExecuteOnRemoteRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_2671937C0(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v5(v7, 0);
}

uint64_t sub_267193520()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_2671937C0(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v5(v7, 0);
}

uint64_t sub_2671936B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267193718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671937C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267193808()
{
  result = qword_2800F6B70;
  if (!qword_2800F6B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B70);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecuteOnRemoteRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267193CC0(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v5(v7, 0);
}

uint64_t sub_267193A20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267193CC0(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v5(v7, 0);
}

uint64_t sub_267193BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267193C18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267193CC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267193D08()
{
  result = qword_2800F6B80;
  if (!qword_2800F6B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B80);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecuteOnRemoteRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x616D6D6F43656361, 0xEE00656D614E646ELL);
  v11(v14, 0);
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267194190(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v12(v14, 0);
}

uint64_t sub_267194084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671940E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267194190(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671941D8()
{
  result = qword_2800F6B60;
  if (!qword_2800F6B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B60);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecutionBridgeContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6B90, 0x277D59668);
  sub_266ECAF2C(&qword_2800F6B98, &qword_2800F6B90, 0x277D59668);
  sub_26738121C();
  v7 = sub_26738116C();
  v26 = *(v7 - 8);
  v8 = *(v26 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F6BA0, 0x277D59658);
  sub_266ECAF2C(&qword_2800F6BA8, &qword_2800F6BA0, 0x277D59658);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F6BB0, 0x277D59660);
  sub_266ECAF2C(&qword_2800F6BB8, &qword_2800F6BB0, 0x277D59660);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
  v12(v31, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6575716552627573, 0xEC00000064497473);
  v13(v31, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v30, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v26 + 48))(v16, 1, v7))
  {
    sub_266ECB128(&unk_28788B408);
    sub_26738115C();
  }

  (v15)(v30, 0);
  v14(v31, 0);
  v17 = v27;
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
  (*(v28 + 32))(v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v17, v29);
  return v18(v31, 0);
}

uint64_t sub_267194930(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267194994(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267194C80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267194CE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267194D48()
{
  result = qword_2800F6BA8;
  if (!qword_2800F6BA8)
  {
    sub_267194DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6BA8);
  }

  return result;
}

unint64_t sub_267194DA0()
{
  result = qword_2800F6BA0;
  if (!qword_2800F6BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6BA0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecutionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v10 = *MEMORY[0x277D3E530];
  v18 = *(v2 + 104);
  v18(v5, v10, v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x727453726F727265, 0xEB00000000676E69);
  v13(v21, 0);
  type metadata accessor for ORCHSchemaORCHErrorDomain(0);
  sub_2671952EC(&qword_2800F6B50, type metadata accessor for ORCHSchemaORCHErrorDomain);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F44726F727265, 0xEB000000006E6961);
  v14(v21, 0);
  v18(v5, *MEMORY[0x277D3E508], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F43726F727265, 0xE900000000000065);
  return v15(v21, 0);
}

uint64_t sub_2671951E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267195244(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671952EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267195334()
{
  result = qword_2800F6BB0;
  if (!qword_2800F6BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6BB0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecutionRequestReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHPreExecutionDecision(0);
  sub_267195888(&qword_2800F6BC0, type metadata accessor for ORCHSchemaORCHPreExecutionDecision);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026746E9E0);
  v11(v17, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746EA00);
  v12(v17, 0);
  type metadata accessor for ORCHSchemaORCHRSKESource(0);
  sub_267195888(&qword_2800F6BC8, type metadata accessor for ORCHSchemaORCHRSKESource);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x53646E616D6D6F63, 0xED0000656372756FLL);
  return v13(v17, 0);
}

uint64_t sub_26719577C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671957E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267195888(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671958D0()
{
  result = qword_2800F6B90;
  if (!qword_2800F6B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B90);
  }

  return result;
}

uint64_t static ORCHSchemaORCHFlashlightLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026746EA50, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026746EA70, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x800000026746EA90, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026746EAB0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x800000026746EAD0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x800000026746EAF0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_267195C84(uint64_t a1)
{
  v2 = sub_267195D88(&qword_2800F6BD0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267195CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267195D88(&qword_2800F6BD0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267195D88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHFlashlightLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHFlowOutputSubmitted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v33 = a1;
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
  v31 = "wOutputSubmitted";
  v10 = *MEMORY[0x277D3E508];
  v32 = *(v2 + 104);
  v30 = v1;
  v32(v5, v10, v1);
  v29 = v2 + 104;
  v36[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v34 = *(v11 - 8);
  v12 = *(v34 + 56);
  v28 = v11;
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v31 | 0x8000000000000000);
  v13(v36, 0);
  v31 = "flowOutputSubmissionId";
  v14 = *MEMORY[0x277D3E4E8];
  v15 = v1;
  v16 = v32;
  v32(v5, v14, v15);
  v36[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v31 | 0x8000000000000000);
  v17(v36, 0);
  v16(v5, v14, v30);
  v36[0] = 1;
  sub_26738114C();
  v18 = v28;
  v12(v9, 0, 1, v28);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x800000026746EB90);
  v19(v36, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12(v9, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x616D6D6F43656361, 0xEC0000006449646ELL);
  v20(v36, 0);
  sub_26738122C();
  v12(v9, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x4977656956656361, 0xEA00000000007364);
  v21(v36, 0);
  sub_26738120C();
  v12(v9, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6575716552627573, 0xEC00000064497473);
  v22(v36, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v35, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v34 + 48))(v25, 1, v18))
  {
    sub_266ECB128(&unk_28788B438);
    sub_26738115C();
  }

  (v24)(v35, 0);
  return v23(v36, 0);
}

uint64_t sub_267196480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671964E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHHeadGestureMapping.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026746EBE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x800000026746EC00, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026746EC30, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26719679C(uint64_t a1)
{
  v2 = sub_2671968A0(&qword_2800F6BD8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267196804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671968A0(&qword_2800F6BD8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671968A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHHeadGestureMapping(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIdentityBridgeRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6BE0, 0x277D59688);
  sub_266ECAF2C(&qword_2800F6BE8, &qword_2800F6BE0, 0x277D59688);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F6BF0, 0x277D59680);
  sub_266ECAF2C(&qword_2800F6BF8, &qword_2800F6BF0, 0x277D59680);
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
  return v11(v23, 0);
}

uint64_t sub_267196D30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267196D94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHIdentityBridgeRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267197080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671970E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267197148()
{
  result = qword_2800F6BF8;
  if (!qword_2800F6BF8)
  {
    sub_2671971A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6BF8);
  }

  return result;
}

unint64_t sub_2671971A0()
{
  result = qword_2800F6BF0;
  if (!qword_2800F6BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6BF0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIdentityBridgeRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267197434(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267197498(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671974FC()
{
  result = qword_2800F6BE8;
  if (!qword_2800F6BE8)
  {
    sub_267197554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6BE8);
  }

  return result;
}

unint64_t sub_267197554()
{
  result = qword_2800F6BE0;
  if (!qword_2800F6BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6BE0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x800000026746ED60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v110;

  v1(v128, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x800000026746ED90, v11);
  v12 = *v9;
  *v9 = v111;

  v7(v128, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003BLL, 0x800000026746EDD0, v17);
  v18 = *v15;
  *v15 = v112;

  v13(v128, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x800000026746EE10, v23);
  v24 = *v21;
  *v21 = v113;

  v19(v128, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026746EE50, v29);
  v30 = *v27;
  *v27 = v114;

  v25(v128, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000034, 0x800000026746EE80, v35);
  v36 = *v33;
  *v33 = v115;

  v31(v128, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000031, 0x800000026746EEC0, v41);
  v42 = *v39;
  *v39 = v116;

  v37(v128, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000031, 0x800000026746EF00, v47);
  v48 = *v45;
  *v45 = v117;

  v43(v128, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000037, 0x800000026746EF40, v53);
  v54 = *v51;
  *v51 = v118;

  v49(v128, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000003ELL, 0x800000026746EF80, v59);
  v60 = *v57;
  *v57 = v119;

  v55(v128, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000032, 0x800000026746EFC0, v65);
  v66 = *v63;
  *v63 = v120;

  v61(v128, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000034, 0x800000026746F000, v71);
  v72 = *v69;
  *v69 = v121;

  v67(v128, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000003FLL, 0x800000026746F040, v77);
  v78 = *v75;
  *v75 = v122;

  v73(v128, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000032, 0x800000026746F080, v83);
  v84 = *v81;
  *v81 = v123;

  v79(v128, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000030, 0x800000026746F0C0, v89);
  v90 = *v87;
  *v87 = v124;

  v85(v128, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000031, 0x800000026746F100, v95);
  v96 = *v93;
  *v93 = v125;

  v91(v128, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000039, 0x800000026746F140, v101);
  v102 = *v99;
  *v99 = v126;

  v97(v128, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000032, 0x800000026746F180, v107);
  v108 = *v105;
  *v105 = v127;

  return v103(v128, 0);
}

uint64_t sub_267197E50(uint64_t a1)
{
  v2 = sub_267197F54(&qword_2800F6C08);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267197EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267197F54(&qword_2800F6C08);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267197F54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHIntelligenceFlowFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowQuerySent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v34 = a1;
  v31 = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v30 = *(v10 + 56);
  v30(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x5172656E6E616C70, 0xEE00644979726575);
  v11(v36, 0);
  v32 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v35, 0x5172656E6E616C70, 0xEE00644979726575);
  v14 = *(v10 + 48);
  v33 = v10 + 48;
  v16 = v14(v15, 1, v9);
  v29 = v14;
  if (!v16)
  {
    sub_266ECB128(&unk_28788B468);
    sub_26738115C();
  }

  (v13)(v35, 0);
  v12(v36, 0);
  sub_26738120C();
  v17 = v30;
  v30(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v18(v36, 0);
  sub_26738120C();
  v17(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v19(v36, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v35, 0x6575716552627573, 0xEC00000064497473);
  v22 = v29;
  if (!v29(v23, 1, v9))
  {
    sub_266ECB128(&unk_28788B490);
    sub_26738115C();
  }

  (v21)(v35, 0);
  v20(v36, 0);
  sub_26738120C();
  v30(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496563617274, 0xE700000000000000);
  v24(v36, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v35, 0x64496563617274, 0xE700000000000000);
  if (!v22(v27, 1, v9))
  {
    sub_266ECB128(&unk_28788B4C0);
    sub_26738115C();
  }

  (v26)(v35, 0);
  return v25(v36, 0);
}

uint64_t sub_267198524(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267198588(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHIntelligenceFlowRequestContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v3 = sub_26738118C();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v37 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449707274, 0xE500000000000000);
  v14(v45, 0);
  v37[1] = v10;
  sub_26738120C();
  v41 = v13;
  v13(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6575716552627573, 0xEC00000064497473);
  v15(v45, 0);
  v42 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v44, 0x6575716552627573, 0xEC00000064497473);
  v18 = *(v12 + 48);
  if (!v18(v19, 1, v11))
  {
    sub_266ECB128(&unk_28788B4F0);
    sub_26738115C();
  }

  (v17)(v44, 0);
  v16(v45, 0);
  sub_26738120C();
  v41(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496563617274, 0xE700000000000000);
  v20(v45, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v44, 0x64496563617274, 0xE700000000000000);
  if (!v18(v23, 1, v11))
  {
    sub_266ECB128(&unk_28788B520);
    sub_26738115C();
  }

  (v22)(v44, 0);
  v21(v45, 0);
  sub_266ECB294(0, &qword_2800F6C10, 0x277D596B0);
  sub_266ECAF2C(&qword_2800F6C18, &qword_2800F6C10, 0x277D596B0);
  sub_26738121C();
  v24 = v41;
  v41(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026741EB30);
  v25(v45, 0);
  sub_266ECB294(0, &qword_2800F6C20, 0x277D596A8);
  sub_266ECAF2C(&qword_2800F6C28, &qword_2800F6C20, 0x277D596A8);
  sub_26738121C();
  v24(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x64656C696166, 0xE600000000000000);
  v26(v45, 0);
  sub_266ECB294(0, &qword_2800F6C30, 0x277D596A0);
  sub_266ECAF2C(&qword_2800F6C38, &qword_2800F6C30, 0x277D596A0);
  sub_26738121C();
  v24(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x6465646E65, 0xE500000000000000);
  v27(v45, 0);
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
  return v29(v45, 0);
}

uint64_t sub_267198E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267198ED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHIntelligenceFlowRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHShimAction(0);
  sub_2671993D8(&qword_2800F6C40, type metadata accessor for ORCHSchemaORCHShimAction);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697463416D696873, 0xEA00000000006E6FLL);
  return v5(v7, 0);
}

uint64_t sub_267199140()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHShimAction(0);
  sub_2671993D8(&qword_2800F6C40, type metadata accessor for ORCHSchemaORCHShimAction);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697463416D696873, 0xEA00000000006E6FLL);
  return v5(v7, 0);
}

uint64_t sub_2671992CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267199330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671993D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267199420()
{
  result = qword_2800F6C30;
  if (!qword_2800F6C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C30);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for ORCHSchemaORCHIntelligenceFlowFailureReason(0);
  sub_2671998A8(&qword_2800F6C00, type metadata accessor for ORCHSchemaORCHIntelligenceFlowFailureReason);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x4658697269537369, 0xEF6B6361626C6C61);
  return v11(v15, 0);
}

uint64_t sub_26719979C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267199800(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671998A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671998F0()
{
  result = qword_2800F6C20;
  if (!qword_2800F6C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C20);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267199B84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267199BE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267199C4C()
{
  result = qword_2800F6C18;
  if (!qword_2800F6C18)
  {
    sub_267199CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6C18);
  }

  return result;
}

unint64_t sub_267199CA4()
{
  result = qword_2800F6C10;
  if (!qword_2800F6C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C10);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowSubRequestFallback.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026746F340);
  v8(v22, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v21, 0xD000000000000012, 0x800000026746F340);
  v17 = *(v7 + 48);
  if (!v17(v11, 1, v6))
  {
    sub_266ECB128(&unk_28788B550);
    sub_26738115C();
  }

  (v10)(v21, 0);
  v9(v22, 0);
  sub_26738120C();
  v18(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026746F360);
  v12(v22, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0xD000000000000014, 0x800000026746F360);
  if (!v17(v15, 1, v6))
  {
    sub_266ECB128(&unk_28788B580);
    sub_26738115C();
  }

  (v14)(v21, 0);
  return v13(v22, 0);
}

uint64_t sub_26719A0B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719A118(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMemoryUsageMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x53535278616DLL, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_26719A404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719A468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719A4CC()
{
  result = qword_2800F6C48;
  if (!qword_2800F6C48)
  {
    sub_26719A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6C48);
  }

  return result;
}

unint64_t sub_26719A524()
{
  result = qword_2800F6C50;
  if (!qword_2800F6C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C50);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMitigationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026746F3F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026746F410, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026746F440, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26719A784(uint64_t a1)
{
  v2 = sub_26719A888(&qword_2800F6C60);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26719A7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26719A888(&qword_2800F6C60);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26719A888(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHMitigationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMotionActivity.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746F4A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026746F4C0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026746F4E0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x800000026746F500, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026746F530, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x800000026746F560, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26719AC34(uint64_t a1)
{
  v2 = sub_26719AD38(&qword_2800F6C68);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26719AC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26719AD38(&qword_2800F6C68);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26719AD38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHMotionActivity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMultiUserResultCandidateReceived.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26719AFC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719B028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719B08C()
{
  result = qword_2800F69E0;
  if (!qword_2800F69E0)
  {
    sub_26719B0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F69E0);
  }

  return result;
}

unint64_t sub_26719B0E4()
{
  result = qword_2800F69D8;
  if (!qword_2800F69D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F69D8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMultiUserResultCandidateSelected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26719B378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719B3DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719B440()
{
  result = qword_2800F69F0;
  if (!qword_2800F69F0)
  {
    sub_26719B498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F69F0);
  }

  return result;
}

unint64_t sub_26719B498()
{
  result = qword_2800F69E8;
  if (!qword_2800F69E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F69E8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMultiUserScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v39 = v4 + 104;
  v40 = v3;
  v38 = v12;
  (v12)(v7);
  v42[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = v14 + 56;
  v35 = *(v14 + 56);
  v35(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674206B0);
  v16(v42, 0);
  v37 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v41, 0xD000000000000014, 0x80000002674206B0);
  if (!(*(v14 + 48))(v19, 1, v13))
  {
    sub_266ECB128(&unk_28788B5B0);
    sub_26738115C();
  }

  (v18)(v41, 0);
  v17(v42, 0);
  v20 = *MEMORY[0x277D3E538];
  v38(v7, v20, v40);
  v42[0] = 1;
  sub_26738114C();
  v21 = v35;
  v35(v11, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x65726F6373, 0xE500000000000000);
  v22(v42, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v21(v11, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x6568704572657375, 0xEF64496C6172656DLL);
  v23(v42, 0);
  v24 = v20;
  v25 = v40;
  v32 = v13;
  v33 = v15;
  v26 = v13;
  v27 = v38;
  v38(v7, v24, v40);
  v42[0] = 1;
  sub_26738114C();
  v21(v11, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0x726F635372657375, 0xEF68736148644965);
  v28(v42, 0);
  v27(v7, v36, v25);
  v42[0] = 1;
  sub_26738114C();
  v21(v11, 0, 1, v32);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026746F640);
  return v29(v42, 0);
}

uint64_t sub_26719BB28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719BB8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMUXBridgeContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6C80, 0x277D596E0);
  sub_266ECAF2C(&qword_2800F6C88, &qword_2800F6C80, 0x277D596E0);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F6C90, 0x277D596D8);
  sub_266ECAF2C(&qword_2800F6C98, &qword_2800F6C90, 0x277D596D8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F6CA0, 0x277D596D0);
  sub_266ECAF2C(&qword_2800F6CA8, &qword_2800F6CA0, 0x277D596D0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x800000026742B660);
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

uint64_t sub_26719C14C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719C1B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_26738113C();
  v38 = *(v36 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v33 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v34 = a1;
  sub_26738120C();
  v37 = sub_26738116C();
  v11 = *(v37 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v37);
  v30 = a2;
  v31 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6568704572657375, 0xEF64496C6172656DLL);
  v14(v39, 0);
  v32 = v10;
  sub_26738120C();
  v15 = v37;
  v29 = v12;
  v12(v9, 0, 1, v37);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026742B9C0);
  v16(v39, 0);
  v28 = "userAggregationId";
  v17 = *MEMORY[0x277D3E540];
  v18 = *(v38 + 104);
  v38 += 104;
  v19 = v35;
  v20 = v36;
  v18(v35, v17, v36);
  v39[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v15);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v28 | 0x8000000000000000);
  v21(v39, 0);
  v18(v19, v17, v20);
  v39[0] = 1;
  sub_26738114C();
  v22 = v37;
  v23 = v29;
  v29(v9, 0, 1, v37);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000026, 0x800000026742BA10);
  v24(v39, 0);
  sub_26738120C();
  v23(v9, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026742BA40);
  v25(v39, 0);
  sub_266ECB128(&unk_28788B5E0);
  return sub_2673811CC();
}

uint64_t sub_26719C7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719C820(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6CB8, 0x277D596C8);
  sub_266ECAF2C(&qword_2800F6CB0, &qword_2800F6CB8, 0x277D596C8);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64657463656C6573, 0xEC00000072657355);
  v5(v7, 0);
  sub_266ECB128(&unk_28788B610);
  return sub_2673811CC();
}

uint64_t sub_26719CACC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719CB30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMUXRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v65 = a2;
  v66 = sub_26738113C();
  v2 = *(v66 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v66);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v2 + 104);
  v57 = *MEMORY[0x277D3E4E8];
  v10(v5);
  v68[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x5569746C754D7369, 0xEB00000000726573);
  v14(v68, 0);
  v15 = *MEMORY[0x277D3E538];
  v60 = v2 + 104;
  v64 = v10;
  (v10)(v5, v15, v66);
  v68[0] = 1;
  v58 = v5;
  sub_26738114C();
  v61 = v12 + 56;
  v62 = v13;
  v13(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x546E757265526C6ELL, 0xEF734D6E49656D69);
  v16(v68, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v67, 0x546E757265526C6ELL, 0xEF734D6E49656D69);
  v19 = *(v12 + 48);
  v59 = v11;
  v51 = v12 + 48;
  v50 = v19;
  if (!v19(v20, 1, v11))
  {
    sub_266ECB128(&unk_28788B640);
    sub_26738115C();
  }

  (v18)(v67, 0);
  v17(v68, 0);
  v21 = sub_266ECB294(0, &qword_2800F6C78, 0x277D59708);
  v54 = sub_266ECAF2C(&qword_2800F6C70, &qword_2800F6C78, 0x277D59708);
  v55 = v21;
  sub_26738122C();
  v22 = v59;
  v23 = v62;
  v62(v9, 0, 1, v59);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F635372657375, 0xEA00000000007365);
  v24(v68, 0);
  type metadata accessor for ORCHSchemaORCHUserIdentityClassification(0);
  v26 = v25;
  v52 = sub_26719D974();
  v53 = v26;
  sub_26738120C();
  v23(v9, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x800000026746F760);
  v27(v68, 0);
  v28 = v58;
  (v64)(v58, v57, v66);
  v68[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x64697374754F7369, 0xEA00000000007265);
  v29(v68, 0);
  v56 = *MEMORY[0x277D3E530];
  v30 = v66;
  v31 = v64;
  v64(v28);
  v68[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v22);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026746F780);
  v32(v68, 0);
  v49 = "voiceIdAssetVersion";
  (v31)(v28, v57, v30);
  v68[0] = 1;
  sub_26738114C();
  v33 = v59;
  v34 = v62;
  v62(v9, 0, 1, v59);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v49 | 0x8000000000000000);
  v35(v68, 0);
  (v64)(v28, v56, v66);
  v68[0] = 1;
  sub_26738114C();
  v34(v9, 0, 1, v33);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026746F7D0);
  v36(v68, 0);
  v37 = sub_2673811AC();
  v38 = sub_266ECB6CC(v67, 0xD000000000000014, 0x800000026746F7D0);
  if (!v50(v39, 1, v33))
  {
    sub_266ECB128(&unk_28788B668);
    sub_26738115C();
  }

  (v38)(v67, 0);
  v37(v68, 0);
  v40 = v58;
  (v64)(v58, *MEMORY[0x277D3E540], v66);
  v68[0] = 1;
  sub_26738114C();
  v41 = v59;
  v42 = v62;
  v62(v9, 0, 1, v59);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026746F7F0);
  v43(v68, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v42(v9, 0, 1, v41);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x800000026746F810);
  v44(v68, 0);
  (v64)(v40, v56, v66);
  v68[0] = 1;
  sub_26738114C();
  v42(v9, 0, 1, v41);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026746F830);
  v45(v68, 0);
  sub_26738122C();
  v42(v9, 0, 1, v41);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0x5364496563696F76, 0xED00007365726F63);
  v46(v68, 0);
  sub_26738120C();
  v42(v9, 0, 1, v41);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026746F850);
  return v47(v68, 0);
}

uint64_t sub_26719D8B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719D914(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719D974()
{
  result = qword_2800F6CC0;
  if (!qword_2800F6CC0)
  {
    type metadata accessor for ORCHSchemaORCHUserIdentityClassification(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6CC0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMUXRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26719DC58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719DCBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719DD20()
{
  result = qword_2800F6C88;
  if (!qword_2800F6C88)
  {
    sub_26719DD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6C88);
  }

  return result;
}

unint64_t sub_26719DD78()
{
  result = qword_2800F6C80;
  if (!qword_2800F6C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C80);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMUXUserSessionState.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for ORCHSchemaORCHUserSessionState(0);
  sub_26719E2B8(&qword_2800F6CC8, type metadata accessor for ORCHSchemaORCHUserSessionState);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574617473, 0xE500000000000000);
  v10(v16, 0);
  type metadata accessor for ORCHSchemaORCHUserSessionAccessLevel(0);
  sub_26719E2B8(&qword_2800F6CD0, type metadata accessor for ORCHSchemaORCHUserSessionAccessLevel);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x654C737365636361, 0xEB000000006C6576);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E4E8], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x52664F646E457369, 0xEE00747365757165);
  return v12(v16, 0);
}

uint64_t sub_26719E1AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719E210(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26719E2B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26719E300()
{
  result = qword_2800F6B08;
  if (!qword_2800F6B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B08);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLClassicDeprecationFlags.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "lassicDeprecationFlags";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026746F940);
  return v16(v21, 0);
}

uint64_t sub_26719E680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719E6E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719E748()
{
  result = qword_2800F6CD8;
  if (!qword_2800F6CD8)
  {
    sub_26719E7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6CD8);
  }

  return result;
}

unint64_t sub_26719E7A0()
{
  result = qword_2800F6CE0;
  if (!qword_2800F6CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6CE0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6CE8, 0x277D59738);
  sub_266ECAF2C(&qword_2800F6CF0, &qword_2800F6CE8, 0x277D59738);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F6CF8, 0x277D59720);
  sub_266ECAF2C(&qword_2800F6D00, &qword_2800F6CF8, 0x277D59720);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F6D08, 0x277D59728);
  sub_266ECAF2C(&qword_2800F6D10, &qword_2800F6D08, 0x277D59728);
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
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
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

uint64_t sub_26719EDC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719EE28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHNLRouterBridgeEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6D18, 0x277D59730);
  sub_266ECAF2C(&qword_2800F6D20, &qword_2800F6D18, 0x277D59730);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x44676E6974756F72, 0xEF6E6F6973696365);
  return v5(v7, 0);
}

uint64_t sub_26719F0AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6D18, 0x277D59730);
  sub_266ECAF2C(&qword_2800F6D20, &qword_2800F6D18, 0x277D59730);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x44676E6974756F72, 0xEF6E6F6973696365);
  return v5(v7, 0);
}

uint64_t sub_26719F254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719F2B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHNLRouterBridgeErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026746FA20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026746FA50, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_26719F500(uint64_t a1)
{
  v2 = sub_26719F604(&qword_2800F6D30);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26719F568(uint64_t a1, uint64_t a2)
{
  v4 = sub_26719F604(&qword_2800F6D30);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26719F604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterBridgeErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHNLRouterBridgeErrorDomain(0);
  sub_26719FAE4();
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v11(v16, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E508], v15[0]);
  v16[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F6D18, 0x277D59730);
  sub_266ECAF2C(&qword_2800F6D20, &qword_2800F6D18, 0x277D59730);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x44676E6974756F72, 0xEF6E6F6973696365);
  return v13(v16, 0);
}

uint64_t sub_26719FA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719FA84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719FAE4()
{
  result = qword_2800F6D28;
  if (!qword_2800F6D28)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterBridgeErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6D28);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeRoutingDecision.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource(0);
  sub_26719FF40(&qword_2800F6D38, type metadata accessor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267461610);
  v6(v9, 0);
  type metadata accessor for NLRouterSchemaNLRouterDecisionType(0);
  sub_26719FF40(&qword_2800F4FE0, type metadata accessor for NLRouterSchemaNLRouterDecisionType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267461630);
  return v7(v9, 0);
}

uint64_t sub_26719FE34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719FE98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26719FF40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26719FF88()
{
  result = qword_2800F6D18;
  if (!qword_2800F6D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6D18);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x800000026746FB50, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000038, 0x800000026746FB80, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ALL, 0x800000026746FBC0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x800000026746FC00, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000040, 0x800000026746FC40, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000044, 0x800000026746FC90, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000039, 0x800000026746FCE0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2671A03A8(uint64_t a1)
{
  v2 = sub_2671A04AC(&qword_2800F6D40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A0410(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A04AC(&qword_2800F6D40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A04AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A0738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A079C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A0800()
{
  result = qword_2800F6CF0;
  if (!qword_2800F6CF0)
  {
    sub_2671A0858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6CF0);
  }

  return result;
}

unint64_t sub_2671A0858()
{
  result = qword_2800F6CE8;
  if (!qword_2800F6CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6CE8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026746FDA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x800000026746FDD0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000034, 0x800000026746FE10, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026746FE50, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026746FE80, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671A0B9C(uint64_t a1)
{
  v2 = sub_2671A0CA0(&qword_2800F6D50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A0C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A0CA0(&qword_2800F6D50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A0CA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponentContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v27 = *(v0 - 8);
  v28 = v0;
  v1 = *(v27 + 64);
  MEMORY[0x28223BE20](v0);
  v26 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v25 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v25[1] = v7;
  v25[2] = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496563617274, 0xE700000000000000);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800F6D58, 0x277D59758);
  sub_266ECAF2C(&qword_2800F6D60, &qword_2800F6D58, 0x277D59758);
  sub_26738121C();
  v10(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800F6D68, 0x277D59748);
  sub_266ECAF2C(&qword_2800F6D70, &qword_2800F6D68, 0x277D59748);
  sub_26738121C();
  v10(v6, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800F6D78, 0x277D59750);
  sub_266ECAF2C(&qword_2800F6D80, &qword_2800F6D78, 0x277D59750);
  sub_26738121C();
  v10(v6, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v14(v29, 0);
  sub_26738120C();
  v10(v6, 0, 1, v9);
  v15 = v26;
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
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
  return v17(v29, 0);
}

uint64_t sub_2671A1334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A1398(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponentEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A1684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A16E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A174C()
{
  result = qword_2800F6D70;
  if (!qword_2800F6D70)
  {
    sub_2671A17A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6D70);
  }

  return result;
}

unint64_t sub_2671A17A4()
{
  result = qword_2800F6D68;
  if (!qword_2800F6D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6D68);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponentFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A1A40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A1AA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A1B08()
{
  result = qword_2800F6D80;
  if (!qword_2800F6D80)
  {
    sub_2671A1B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6D80);
  }

  return result;
}

unint64_t sub_2671A1B60()
{
  result = qword_2800F6D78;
  if (!qword_2800F6D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6D78);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponentStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent(0);
  sub_2671A1E9C(&qword_2800F6D48, type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674626E0);
  return v5(v7, 0);
}

uint64_t sub_2671A1D90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A1DF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A1E9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A1EE4()
{
  result = qword_2800F6D58;
  if (!qword_2800F6D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6D58);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterDecisionGenAIAppIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026746FFF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003DLL, 0x8000000267470020, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000004FLL, 0x8000000267470060, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004ALL, 0x80000002674700B0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671A21B4(uint64_t a1)
{
  v2 = sub_2671A22B8(&qword_2800F6D90);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A221C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A22B8(&qword_2800F6D90);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A22B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterDecisionGenAIMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x63696C7078457369, 0xEA00000000007469);
  v11(v14, 0);
  type metadata accessor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent(0);
  sub_2671A2738(&qword_2800F6D88, type metadata accessor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x70704149416E6567, 0xEE00746E65746E49);
  return v12(v14, 0);
}

uint64_t sub_2671A262C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A2690(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A2738(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A2780()
{
  result = qword_2800F6DA0;
  if (!qword_2800F6DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DA0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLV3ServerFallbackDeprecated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHServerFallbackReason(0);
  sub_2671A2C38(&qword_2800F6DA8, type metadata accessor for ORCHSchemaORCHServerFallbackReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B6361626C6C6166, 0xEE006E6F73616552);
  return v5(v7, 0);
}

uint64_t sub_2671A2998()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHServerFallbackReason(0);
  sub_2671A2C38(&qword_2800F6DA8, type metadata accessor for ORCHSchemaORCHServerFallbackReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B6361626C6C6166, 0xEE006E6F73616552);
  return v5(v7, 0);
}

uint64_t sub_2671A2B2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A2B90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A2C38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A2C80()
{
  result = qword_2800F6A18;
  if (!qword_2800F6A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6A18);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesBridgeContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6DB0, 0x277D59788);
  sub_266ECAF2C(&qword_2800F6DB8, &qword_2800F6DB0, 0x277D59788);
  sub_26738121C();
  v7 = sub_26738116C();
  v27 = *(v7 - 8);
  v8 = *(v27 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v9(v32, 0);
  sub_266ECB294(0, &qword_2800F6DC0, 0x277D59778);
  sub_266ECAF2C(&qword_2800F6DC8, &qword_2800F6DC0, 0x277D59778);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v10(v32, 0);
  sub_266ECB294(0, &qword_2800F6DD0, 0x277D59780);
  sub_266ECAF2C(&qword_2800F6DD8, &qword_2800F6DD0, 0x277D59780);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v11(v32, 0);
  sub_266ECB294(0, &qword_2800F6DE0, 0x277D59790);
  sub_266ECAF2C(&qword_2800F6DE8, &qword_2800F6DE0, 0x277D59790);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x656C6C65636E6163, 0xE900000000000064);
  v12(v32, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
  v13(v32, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6575716552627573, 0xEC00000064497473);
  v14(v32, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v31, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v27 + 48))(v17, 1, v7))
  {
    sub_266ECB128(&unk_28788B690);
    sub_26738115C();
  }

  (v16)(v31, 0);
  v15(v32, 0);
  v18 = v28;
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
  (*(v29 + 32))(v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v18, v30);
  return v19(v32, 0);
}

uint64_t sub_2671A34A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A350C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHPommesRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHPommesResponseStatus(0);
  sub_2671A39FC(&qword_2800F6DF0, type metadata accessor for ORCHSchemaORCHPommesResponseStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A376C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHPommesResponseStatus(0);
  sub_2671A39FC(&qword_2800F6DF0, type metadata accessor for ORCHSchemaORCHPommesResponseStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A38F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A3954(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A39FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A3A44()
{
  result = qword_2800F6DC0;
  if (!qword_2800F6DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DC0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason(0);
  sub_2671A3EDC(&qword_2800F6DF8, type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A3C4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason(0);
  sub_2671A3EDC(&qword_2800F6DF8, type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A3DD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A3E34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A3EDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A3F24()
{
  result = qword_2800F6DD0;
  if (!qword_2800F6DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DD0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesRequestFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267470270, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v66;

  v1(v76, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x80000002674702A0, v11);
  v12 = *v9;
  *v9 = v67;

  v7(v76, 0);
  v13 = sub_266ECB128(&unk_28788B6C0);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = *v17;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 1, v20);
  *v18 = v68;
  v16(v76, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = *v22;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x80000002674702F0, v25);
  v26 = *v23;
  *v23 = v69;

  v21(v76, 0);
  v27 = sub_266ECB128(&unk_28788B6E8);
  v29 = v28;
  v30 = sub_2673810FC();
  v32 = v31;
  v33 = *v31;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v32;
  *v32 = 0x8000000000000000;
  sub_266ECD4CC(v27, v29, 2, v34);
  *v32 = v70;
  v30(v76, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = *v36;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267470320, v39);
  v40 = *v37;
  *v37 = v71;

  v35(v76, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = *v42;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x8000000267470350, v45);
  v46 = *v43;
  *v43 = v72;

  v41(v76, 0);
  v47 = sub_26738111C();
  v49 = v48;
  v50 = *v48;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v49;
  *v49 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003FLL, 0x8000000267470380, v51);
  v52 = *v49;
  *v49 = v73;

  v47(v76, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = *v54;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000039, 0x80000002674703C0, v57);
  v58 = *v55;
  *v55 = v74;

  v53(v76, 0);
  v59 = sub_26738111C();
  v61 = v60;
  v62 = *v60;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v61;
  *v61 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002DLL, 0x8000000267470400, v63);
  v64 = *v61;
  *v61 = v75;

  return v59(v76, 0);
}

uint64_t sub_2671A44A4(uint64_t a1)
{
  v2 = sub_2671A45A8(&qword_2800F6E00);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A450C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A45A8(&qword_2800F6E00);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A45A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A4834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A4898(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A48FC()
{
  result = qword_2800F6DB8;
  if (!qword_2800F6DB8)
  {
    sub_2671A4954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6DB8);
  }

  return result;
}

unint64_t sub_2671A4954()
{
  result = qword_2800F6DB0;
  if (!qword_2800F6DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DB0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesRequestUnableToHandle.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A4BE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A4C4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A4CB0()
{
  result = qword_2800F6DE8;
  if (!qword_2800F6DE8)
  {
    sub_2671A4D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6DE8);
  }

  return result;
}

unint64_t sub_2671A4D08()
{
  result = qword_2800F6DE0;
  if (!qword_2800F6DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DE0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesResponseStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674704F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267470520, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267470550, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671A4F6C(uint64_t a1)
{
  v2 = sub_2671A5070(&qword_2800F6E08);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A4FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A5070(&qword_2800F6E08);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A5070(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHPommesResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPowerContextPolicies.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v11[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v11 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHASRPowerContextPolicy(0);
  sub_2671A5508(&qword_2800F67E8, type metadata accessor for ORCHSchemaORCHASRPowerContextPolicy);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000012, 0x80000002674705C0);
  v7(v12, 0);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000012, 0x80000002674705E0);
  v8(v12, 0);
  type metadata accessor for ORCHSchemaORCHTTSPowerContextPolicy(0);
  sub_2671A5508(&qword_2800F6E10, type metadata accessor for ORCHSchemaORCHTTSPowerContextPolicy);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x63696C6F50737474, 0xE900000000000079);
  return v9(v12, 0);
}

uint64_t sub_2671A53FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A5460(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A5508(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A5550()
{
  result = qword_2800F6E20;
  if (!qword_2800F6E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E20);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPowerContextPolicyReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6E20, 0x277D59798);
  sub_266ECAF2C(&qword_2800F6E18, &qword_2800F6E20, 0x277D59798);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267470640);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F6E28, 0x277D59890);
  sub_266ECAF2C(&qword_2800F6E30, &qword_2800F6E28, 0x277D59890);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267470660);
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

uint64_t sub_2671A59F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A5A54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHPreExecutionDecision.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674706E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v76;

  v1(v88, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000048, 0x8000000267470710, v11);
  v12 = *v9;
  *v9 = v77;

  v7(v88, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000042, 0x8000000267470760, v17);
  v18 = *v15;
  *v15 = v78;

  v13(v88, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000049, 0x80000002674707B0, v23);
  v24 = *v21;
  *v21 = v79;

  v19(v88, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003FLL, 0x8000000267470800, v29);
  v30 = *v27;
  *v27 = v80;

  v25(v88, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000040, 0x8000000267470840, v35);
  v36 = *v33;
  *v33 = v81;

  v31(v88, 0);
  v37 = sub_266ECB128(&unk_28788B710);
  v39 = v38;
  v40 = sub_2673810FC();
  v42 = v41;
  v43 = *v41;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v42;
  *v42 = 0x8000000000000000;
  sub_266ECD4CC(v37, v39, 5, v44);
  *v42 = v82;
  v40(v88, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = *v46;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000040, 0x8000000267470890, v49);
  v50 = *v47;
  *v47 = v83;

  v45(v88, 0);
  v51 = sub_26738111C();
  v53 = v52;
  v54 = *v52;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v53;
  *v53 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x80000002674708E0, v55);
  v56 = *v53;
  *v53 = v84;

  v51(v88, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = *v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000039, 0x8000000267470910, v61);
  v62 = *v59;
  *v59 = v85;

  v57(v88, 0);
  v63 = sub_26738111C();
  v65 = v64;
  v66 = *v64;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v65;
  *v65 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002BLL, 0x8000000267470950, v67);
  v68 = *v65;
  *v65 = v86;

  v63(v88, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = *v70;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000031, 0x8000000267470980, v73);
  v74 = *v71;
  *v71 = v87;

  return v69(v88, 0);
}

uint64_t sub_2671A610C(uint64_t a1)
{
  v2 = sub_2671A6210(&qword_2800F6E38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A6174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A6210(&qword_2800F6E38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A6210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHPreExecutionDecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestCancellationReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267470A00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267470A30, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267470A60, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671A6468(uint64_t a1)
{
  v2 = sub_2671A656C(&qword_2800F6E40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A64D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A656C(&qword_2800F6E40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A656C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHRequestCancellationReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestCancelled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHRequestCancellationReason(0);
  sub_2671A69FC(&qword_2800F66B0, type metadata accessor for ORCHSchemaORCHRequestCancellationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A676C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHRequestCancellationReason(0);
  sub_2671A69FC(&qword_2800F66B0, type metadata accessor for ORCHSchemaORCHRequestCancellationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A68F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A6954(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A69FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A6A44()
{
  result = qword_2800F6E50;
  if (!qword_2800F6E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E50);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F6E58, 0x277D597D0);
  sub_266ECAF2C(&qword_2800F6E60, &qword_2800F6E58, 0x277D597D0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F6E68, 0x277D597B8);
  sub_266ECAF2C(&qword_2800F6E70, &qword_2800F6E68, 0x277D597B8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F6E78, 0x277D597C0);
  sub_266ECAF2C(&qword_2800F6E80, &qword_2800F6E78, 0x277D597C0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F6E50, 0x277D597A8);
  sub_266ECAF2C(&qword_2800F6E48, &qword_2800F6E50, 0x277D597A8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v23;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x656C6C65636E6163, 0xE900000000000064);
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

uint64_t sub_2671A7074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A70D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A73C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A7428(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A748C()
{
  result = qword_2800F6E70;
  if (!qword_2800F6E70)
  {
    sub_2671A74E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6E70);
  }

  return result;
}

unint64_t sub_2671A74E4()
{
  result = qword_2800F6E68;
  if (!qword_2800F6E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E68);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHErrorCode(0);
  sub_2671A7AE0(&qword_2800F6B40, type metadata accessor for ORCHSchemaORCHErrorCode);
  v19 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v12(v24, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v23, 0x646F43726F727265, 0xE900000000000065);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_28788B738);
    sub_26738115C();
  }

  (v14)(v23, 0);
  v13(v24, 0);
  type metadata accessor for ORCHSchemaORCHErrorDomain(0);
  sub_2671A7AE0(&qword_2800F6B50, type metadata accessor for ORCHSchemaORCHErrorDomain);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v16(v24, 0);
  (*(v21 + 104))(v20, *MEMORY[0x277D3E508], v22);
  v24[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F7272456863726FLL, 0xED000065646F4372);
  return v17(v24, 0);
}

uint64_t sub_2671A79D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A7A38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A7AE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A7B28()
{
  result = qword_2800F6E78;
  if (!qword_2800F6E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E78);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestMitigated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHMitigationSource(0);
  sub_2671A7E64(&qword_2800F6C58, type metadata accessor for ORCHSchemaORCHMitigationSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267470B80);
  return v5(v7, 0);
}

uint64_t sub_2671A7D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A7DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A7E64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671A7EAC()
{
  result = qword_2800F6A08;
  if (!qword_2800F6A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6A08);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v41 = sub_26738113C();
  v45 = *(v41 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v48 = "iri.orch.ORCHRequestStarted";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  (v12)(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v48 | 0x8000000000000000);
  v13(v50, 0);
  type metadata accessor for ORCHSchemaORCHRequestType(0);
  sub_2671A8A60(&qword_2800F6E88, type metadata accessor for ORCHSchemaORCHRequestType);
  sub_26738120C();
  (v12)(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x5474736575716572, 0xEB00000000657079);
  v14(v50, 0);
  v15 = *(v45 + 104);
  v39 = *MEMORY[0x277D3E4E8];
  v45 += 104;
  v38 = v15;
  v15(v5);
  v50[0] = 1;
  v40 = v5;
  sub_26738114C();
  v48 = v12;
  v46 = v11 + 56;
  (v12)(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x45444F5569726973, 0xEE0064656C62616ELL);
  v16(v50, 0);
  v47 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v49, 0x45444F5569726973, 0xEE0064656C62616ELL);
  v42 = *(v11 + 48);
  v43 = v11 + 48;
  if (!v42(v19, 1, v10))
  {
    sub_266ECB128(&unk_28788B760);
    sub_26738115C();
  }

  (v18)(v49, 0);
  v17(v50, 0);
  type metadata accessor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode(0);
  sub_2671A8A60(&qword_2800F6E90, type metadata accessor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode);
  sub_26738120C();
  (v48)(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D444F5569726973, 0xEB0000000065646FLL);
  v20(v50, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v49, 0x4D444F5569726973, 0xEB0000000065646FLL);
  if (!v42(v23, 1, v10))
  {
    sub_266ECB128(&unk_28788B788);
    sub_26738115C();
  }

  (v22)(v49, 0);
  v21(v50, 0);
  type metadata accessor for ORCHSchemaORCHSiriAsrMode(0);
  sub_2671A8A60(&qword_2800F5F68, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
  sub_26738120C();
  (v48)(v9, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D72734169726973, 0xEB0000000065646FLL);
  v24(v50, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v49, 0x4D72734169726973, 0xEB0000000065646FLL);
  if (!v42(v27, 1, v10))
  {
    sub_266ECB128(&unk_28788B7B8);
    sub_26738115C();
  }

  (v26)(v49, 0);
  v25(v50, 0);
  type metadata accessor for ORCHSchemaORCHSiriNlMode(0);
  sub_2671A8A60(&qword_2800F5F70, type metadata accessor for ORCHSchemaORCHSiriNlMode);
  sub_26738120C();
  (v48)(v9, 0, 1, v10);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F4D6C4E69726973, 0xEA00000000006564);
  v28(v50, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v49, 0x6F4D6C4E69726973, 0xEA00000000006564);
  if (!v42(v31, 1, v10))
  {
    sub_266ECB128(&unk_28788B7E8);
    sub_26738115C();
  }

  (v30)(v49, 0);
  v29(v50, 0);
  sub_266ECB294(0, &qword_2800F6CE0, 0x277D59710);
  sub_266ECAF2C(&qword_2800F6CD8, &qword_2800F6CE0, 0x277D59710);
  sub_26738120C();
  v32 = v10;
  v33 = v10;
  v34 = v48;
  (v48)(v9, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267470BF0);
  v35(v50, 0);
  v38(v40, v39, v41);
  v50[0] = 1;
  sub_26738114C();
  v34(v9, 0, 1, v33);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267470C10);
  return v36(v50, 0);
}

uint64_t sub_2671A899C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A8A00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A8A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ORCHSchemaORCHRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267470C60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267470C80, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267470CA0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267470CC0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267470CF0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267470D10, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x8000000267470D40, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2671A8EC4(uint64_t a1)
{
  v2 = sub_2671A8FC8(&qword_2800F6E98);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A8F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A8FC8(&qword_2800F6E98);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A8FC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHResourceUtilizationMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6C50, 0x277D596F0);
  sub_266ECAF2C(&qword_2800F6C48, &qword_2800F6C50, 0x277D596F0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267470DB0);
  return v5(v7, 0);
}

uint64_t sub_2671A9204(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A9268(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHResultCandidateReceived.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A9554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A95B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A961C()
{
  result = qword_2800F6980;
  if (!qword_2800F6980)
  {
    sub_2671A9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6980);
  }

  return result;
}

unint64_t sub_2671A9674()
{
  result = qword_2800F6978;
  if (!qword_2800F6978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6978);
  }

  return result;
}

uint64_t static ORCHSchemaORCHResultSelected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A9908(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A996C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A99D0()
{
  result = qword_2800F6990;
  if (!qword_2800F6990)
  {
    sub_2671A9A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6990);
  }

  return result;
}

unint64_t sub_2671A9A28()
{
  result = qword_2800F6988;
  if (!qword_2800F6988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6988);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRSKESource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267470E70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267470E90, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267470EB0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267470ED0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671A9CFC(uint64_t a1)
{
  v2 = sub_2671A9E00(&qword_2800F6EA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A9D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A9E00(&qword_2800F6EA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A9E00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHRSKESource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHServerFallbackContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v27 = *(v0 - 8);
  v28 = v0;
  v1 = *(v27 + 64);
  MEMORY[0x28223BE20](v0);
  v26 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v25 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v25[1] = v7;
  v25[2] = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800F6EA8, 0x277D59808);
  sub_266ECAF2C(&qword_2800F6EB0, &qword_2800F6EA8, 0x277D59808);
  sub_26738121C();
  v10(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800F6EB8, 0x277D59810);
  sub_266ECAF2C(&qword_2800F6EC0, &qword_2800F6EB8, 0x277D59810);
  sub_26738121C();
  v10(v6, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800F6EC8, 0x277D59800);
  sub_266ECAF2C(&qword_2800F6ED0, &qword_2800F6EC8, 0x277D59800);
  sub_26738121C();
  v10(v6, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v14(v29, 0);
  sub_26738120C();
  v10(v6, 0, 1, v9);
  v15 = v26;
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
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
  return v17(v29, 0);
}

uint64_t sub_2671AA498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AA4FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHServerFallbackFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AA7F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AA854(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AA8B8()
{
  result = qword_2800F6ED0;
  if (!qword_2800F6ED0)
  {
    sub_2671AA910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6ED0);
  }

  return result;
}

unint64_t sub_2671AA910()
{
  result = qword_2800F6EC8;
  if (!qword_2800F6EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EC8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHServerFallbackInitiated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHServerFallbackReason(0);
  sub_2671AAD24(&qword_2800F6DA8, type metadata accessor for ORCHSchemaORCHServerFallbackReason);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B6361626C6C6166, 0xEE006E6F73616552);
  v6(v9, 0);
  type metadata accessor for ORCHSchemaORCHAssetType(0);
  sub_2671AAD24(&qword_2800F6370, type metadata accessor for ORCHSchemaORCHAssetType);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x41676E697373696DLL, 0xEC00000074657373);
  return v7(v9, 0);
}

uint64_t sub_2671AAC18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AAC7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671AAD24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671AAD6C()
{
  result = qword_2800F6EA8;
  if (!qword_2800F6EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EA8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHServerFallbackReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267470FF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267471020, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267471050, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x8000000267471070, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x80000002674710A0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674710D0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000032, 0x8000000267471100, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2671AB18C(uint64_t a1)
{
  v2 = sub_2671AB290(&qword_2800F6ED8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671AB1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671AB290(&qword_2800F6ED8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671AB290(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHServerFallbackReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHServerFallbackResponseReceived.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AB51C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AB580(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AB5E4()
{
  result = qword_2800F6EC0;
  if (!qword_2800F6EC0)
  {
    sub_2671AB63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6EC0);
  }

  return result;
}

unint64_t sub_2671AB63C()
{
  result = qword_2800F6EB8;
  if (!qword_2800F6EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EB8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHShimAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674711B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674711D0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x80000002674711F0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267471210, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267471230, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x8000000267471250, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x8000000267471270, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ALL, 0x8000000267471290, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2671ABAD0(uint64_t a1)
{
  v2 = sub_2671ABBD4(&qword_2800F6EE0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671ABB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671ABBD4(&qword_2800F6EE0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671ABBD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHShimAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHShimToolContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v11 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v42 = a1;
  v36 = v11;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v40 = *(v13 + 56);
  v41 = v13 + 56;
  v40(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x7254746E65696C63, 0xED00006449656361);
  v14(v45, 0);
  v43 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v44, 0x7254746E65696C63, 0xED00006449656361);
  v17 = *(v13 + 48);
  if (!v17(v18, 1, v12))
  {
    sub_266ECB128(&unk_28788B818);
    sub_26738115C();
  }

  (v16)(v44, 0);
  v15(v45, 0);
  sub_26738120C();
  v40(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x6575716552627573, 0xEC00000064497473);
  v19(v45, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v44, 0x6575716552627573, 0xEC00000064497473);
  if (!v17(v22, 1, v12))
  {
    sub_266ECB128(&unk_28788B848);
    sub_26738115C();
  }

  (v21)(v44, 0);
  v20(v45, 0);
  sub_266ECB294(0, &qword_2800F6EE8, 0x277D59830);
  sub_266ECAF2C(&qword_2800F6EF0, &qword_2800F6EE8, 0x277D59830);
  sub_26738121C();
  v23 = v40;
  v40(v10, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026741EB30);
  v24(v45, 0);
  sub_266ECB294(0, &qword_2800F6EF8, 0x277D59828);
  sub_266ECAF2C(&qword_2800F6F00, &qword_2800F6EF8, 0x277D59828);
  sub_26738121C();
  v23(v10, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x64656C696166, 0xE600000000000000);
  v25(v45, 0);
  sub_266ECB294(0, &qword_2800F6F08, 0x277D59820);
  sub_266ECAF2C(&qword_2800F6F10, &qword_2800F6F08, 0x277D59820);
  sub_26738121C();
  v23(v10, 0, 1, v12);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x6465646E65, 0xE500000000000000);
  v26(v45, 0);
  v27 = v37;
  sub_26738117C();
  v28 = sub_2673811BC();
  v30 = v29;
  v31 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_266ECAD54(0, v31[2] + 1, 1, v31);
    *v30 = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_266ECAD54(v33 > 1, v34 + 1, 1, v31);
    *v30 = v31;
  }

  v31[2] = v34 + 1;
  (*(v38 + 32))(v31 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34, v27, v39);
  return v28(v45, 0);
}

uint64_t sub_2671AC3E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AC448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHShimToolEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AC734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AC798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AC7FC()
{
  result = qword_2800F6F10;
  if (!qword_2800F6F10)
  {
    sub_2671AC854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F10);
  }

  return result;
}

unint64_t sub_2671AC854()
{
  result = qword_2800F6F08;
  if (!qword_2800F6F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F08);
  }

  return result;
}

uint64_t static ORCHSchemaORCHShimToolFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
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
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v26 = v2 + 104;
  v27 = v1;
  v24 = v11;
  v11(v5, v10, v1);
  v29[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v23 = *(v13 + 56);
  v23(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v14(v29, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v28, 0x737473697865, 0xE600000000000000);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_28788B878);
    sub_26738115C();
  }

  (v16)(v28, 0);
  v15(v29, 0);
  type metadata accessor for ORCHSchemaORCHErrorDomain(0);
  sub_2671ACE44(&qword_2800F6B50, type metadata accessor for ORCHSchemaORCHErrorDomain);
  sub_26738120C();
  v18 = v23;
  v23(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F44726F727265, 0xEB000000006E6961);
  v19(v29, 0);
  v24(v5, *MEMORY[0x277D3E508], v27);
  v29[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F43726F727265, 0xE900000000000065);
  return v20(v29, 0);
}

uint64_t sub_2671ACD38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671ACD9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671ACE44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671ACE8C()
{
  result = qword_2800F6EF8;
  if (!qword_2800F6EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EF8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHShimToolStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AD120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AD184(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AD1E8()
{
  result = qword_2800F6EF0;
  if (!qword_2800F6EF0)
  {
    sub_2671AD240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6EF0);
  }

  return result;
}

unint64_t sub_2671AD240()
{
  result = qword_2800F6EE8;
  if (!qword_2800F6EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EE8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSiriAsrMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674713A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674713C0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x80000002674713E0, v17);
  v18 = *v15;
  *v15 = v22;

  v13(v23, 0);
  sub_266ECB128(&unk_28788B8A0);
  return sub_26738112C();
}

uint64_t sub_2671AD4B8(uint64_t a1)
{
  v2 = sub_2671AD5BC(&qword_2800F6F18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671AD520(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671AD5BC(&qword_2800F6F18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671AD5BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHSiriAsrMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSiriNlMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267471430, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267471450, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267471470, v17);
  v18 = *v15;
  *v15 = v22;

  v13(v23, 0);
  sub_266ECB128(&unk_28788B8D0);
  return sub_26738112C();
}

uint64_t sub_2671AD828(uint64_t a1)
{
  v2 = sub_2671AD92C(&qword_2800F6F20);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671AD890(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671AD92C(&qword_2800F6F20);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671AD92C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHSiriNlMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSiriUnderstandingOnDeviceMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x80000002674714D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000043, 0x8000000267471500, v11);
  v12 = *v9;
  *v9 = v15;

  v7(v16, 0);
  sub_266ECB128(&unk_28788B900);
  return sub_26738112C();
}

uint64_t sub_2671ADB28(uint64_t a1)
{
  v2 = sub_2671ADC2C(&qword_2800F6F28);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671ADB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671ADC2C(&qword_2800F6F28);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671ADC2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSpeechTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267471580, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674715A0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x80000002674715C0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674715F0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267471610, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001CLL, 0x8000000267471630, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x8000000267471650, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x8000000267471670, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2671AE0B8(uint64_t a1)
{
  v2 = sub_2671AE1BC(&qword_2800F6F30);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671AE120(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671AE1BC(&qword_2800F6F30);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671AE1BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHSpeechTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSubRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v30 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v29 = *(v10 + 56);
  v29(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6575716552627573, 0xEC00000064497473);
  v11(v35, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v34, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_28788B930);
    sub_26738115C();
  }

  (v13)(v34, 0);
  v12(v35, 0);
  sub_266ECB294(0, &qword_2800F6F38, 0x277D59850);
  sub_266ECAF2C(&qword_2800F6F40, &qword_2800F6F38, 0x277D59850);
  sub_26738121C();
  v15 = v29;
  v29(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v16(v35, 0);
  sub_266ECB294(0, &qword_2800F6F48, 0x277D59848);
  sub_266ECAF2C(&qword_2800F6F50, &qword_2800F6F48, 0x277D59848);
  sub_26738121C();
  v15(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
  v17(v35, 0);
  sub_266ECB294(0, &qword_2800F6F58, 0x277D59840);
  sub_266ECAF2C(&qword_2800F6F60, &qword_2800F6F58, 0x277D59840);
  sub_26738121C();
  v15(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v18(v35, 0);
  v19 = v31;
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
  (*(v32 + 32))(v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v19, v33);
  return v20(v35, 0);
}

uint64_t sub_2671AE8A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AE908(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHSubRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AEBF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AEC58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AECBC()
{
  result = qword_2800F6F60;
  if (!qword_2800F6F60)
  {
    sub_2671AED14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F60);
  }

  return result;
}

unint64_t sub_2671AED14()
{
  result = qword_2800F6F58;
  if (!qword_2800F6F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F58);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSubRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
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
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v26 = v2 + 104;
  v27 = v1;
  v24 = v11;
  v11(v5, v10, v1);
  v29[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v23 = *(v13 + 56);
  v23(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v14(v29, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v28, 0x737473697865, 0xE600000000000000);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_28788B960);
    sub_26738115C();
  }

  (v16)(v28, 0);
  v15(v29, 0);
  type metadata accessor for ORCHSchemaORCHErrorDomain(0);
  sub_2671AF304(&qword_2800F6B50, type metadata accessor for ORCHSchemaORCHErrorDomain);
  sub_26738120C();
  v18 = v23;
  v23(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F44726F727265, 0xEB000000006E6961);
  v19(v29, 0);
  v24(v5, *MEMORY[0x277D3E508], v27);
  v29[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F43726F727265, 0xE900000000000065);
  return v20(v29, 0);
}

uint64_t sub_2671AF1F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AF25C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671AF304(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671AF34C()
{
  result = qword_2800F6F48;
  if (!qword_2800F6F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F48);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSubRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  v7(v15, 0);
  type metadata accessor for SISchemaSubRequestType(0);
  sub_2671AF86C();
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6575716552627573, 0xEE00657079547473);
  v8(v15, 0);
  sub_266ECB294(0, &qword_2800F6DA0, 0x277D59760);
  sub_266ECAF2C(&qword_2800F6D98, &qword_2800F6DA0, 0x277D59760);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x74654D49416E6567, 0xED00006174616461);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x74654D49416E6567, 0xED00006174616461);
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    sub_266ECB128(&unk_28788B988);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_2671AF7A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AF80C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AF86C()
{
  result = qword_2800F6F68;
  if (!qword_2800F6F68)
  {
    type metadata accessor for SISchemaSubRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F68);
  }

  return result;
}

uint64_t static ORCHSchemaORCHTRPCandidateCreated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x49707254746F6F72, 0xE900000000000064);
  v6(v9, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x4970725472657375, 0xEA00000000007364);
  return v7(v9, 0);
}

uint64_t sub_2671AFB94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AFBF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHTRPCandidateReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671AFE6C()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671B0004(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B0068(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHTRPFinalized.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671B02DC()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671B0474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B04D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHTTSPowerContextPolicy.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267471850, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267471880, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674718B0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x80000002674718E0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671B0804(uint64_t a1)
{
  v2 = sub_2671B0908(&qword_2800F6F70);

  return MEMORY[0x28219ED78](a1, v2);
}