uint64_t static IFTSchemaIFTActionConfirmation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v42 = a1;
  v1 = sub_26738118C();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v13 = *(v5 + 104);
  v46 = *MEMORY[0x277D3E4E8];
  v49 = v5 + 104;
  v50 = v4;
  v48 = v13;
  v13(v8);
  v53[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v51 = *(v15 + 56);
  v51(v12, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v12, 0x737473697865, 0xE600000000000000);
  v16(v53, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v52, 0x737473697865, 0xE600000000000000);
  v47 = *(v15 + 48);
  if (!v47(v19, 1, v14))
  {
    sub_266ECB128(&unk_287886FC0);
    sub_26738115C();
  }

  (v18)(v52, 0);
  v17(v53, 0);
  v48(v8, v46, v50);
  v53[0] = 0;
  sub_26738114C();
  v51(v12, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v12, 0x656D7269666E6F63, 0xE900000000000064);
  v20(v53, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v52, 0x656D7269666E6F63, 0xE900000000000064);
  if (!v47(v23, 1, v14))
  {
    sub_266ECB128(&unk_287886FE8);
    sub_26738115C();
  }

  (v22)(v52, 0);
  v21(v53, 0);
  v48(v8, *MEMORY[0x277D3E510], v50);
  v53[0] = 0;
  sub_26738114C();
  v51(v12, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, 0x8000000267444E20);
  v24(v53, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v52, 0xD000000000000018, 0x8000000267444E20);
  if (!v47(v27, 1, v14))
  {
    sub_266ECB128(&unk_287887010);
    sub_26738115C();
  }

  (v26)(v52, 0);
  v25(v53, 0);
  v48(v8, v46, v50);
  v53[0] = 0;
  sub_26738114C();
  v51(v12, 0, 1, v14);
  v28 = sub_2673811AC();
  sub_266EC637C(v12, 0x6465696E6564, 0xE600000000000000);
  v28(v53, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v52, 0x6465696E6564, 0xE600000000000000);
  if (!v47(v31, 1, v14))
  {
    sub_266ECB128(&unk_287887038);
    sub_26738115C();
  }

  (v30)(v52, 0);
  v29(v53, 0);
  sub_266ECB294(0, &qword_2800F2940, 0x277D57CF0);
  sub_266ECAF2C(&qword_2800F2948, &qword_2800F2940, 0x277D57CF0);
  sub_26738120C();
  v51(v12, 0, 1, v14);
  v32 = sub_2673811AC();
  sub_266EC637C(v12, 0x74536D6574737973, 0xEB00000000656C79);
  v32(v53, 0);
  v33 = v43;
  sub_26738117C();
  v34 = sub_2673811BC();
  v36 = v35;
  v37 = *v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v36 = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = sub_266ECAD54(0, v37[2] + 1, 1, v37);
    *v36 = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = sub_266ECAD54(v39 > 1, v40 + 1, 1, v37);
    *v36 = v37;
  }

  v37[2] = v40 + 1;
  (*(v44 + 32))(v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40, v33, v45);
  return v34(v53, 0);
}

uint64_t sub_26700CC70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700CCD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionConfirmationSystemStyle.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2960, 0x277D57CF8);
  sub_266ECAF2C(&qword_2800F2968, &qword_2800F2960, 0x277D57CF8);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267444EA0);
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

uint64_t sub_26700D0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700D150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v10 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v14(v29, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v28, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_287887060);
    sub_26738115C();
  }

  (v16)(v28, 0);
  v15(v29, 0);
  type metadata accessor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource(0);
  sub_26700D798(&qword_2800F2970, type metadata accessor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource);
  sub_26738120C();
  v18 = v23;
  v23(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x656372756F73, 0xE600000000000000);
  v19(v29, 0);
  v24(v5, *MEMORY[0x277D3E4E8], v27);
  v29[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x63696C7078457369, 0xEA00000000007469);
  return v20(v29, 0);
}

uint64_t sub_26700D68C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700D6F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26700D798(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26700D7E0()
{
  result = qword_2800F2960;
  if (!qword_2800F2960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2960);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000044, 0x8000000267444FA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000045, 0x8000000267444FF0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000004FLL, 0x8000000267445040, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004DLL, 0x8000000267445090, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004BLL, 0x80000002674450E0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26700DB28(uint64_t a1)
{
  v2 = sub_26700DC2C(&qword_2800F2978);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26700DB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26700DC2C(&qword_2800F2978);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26700DC2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionFailure.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2980, 0x277D57D10);
  sub_266ECAF2C(&qword_2800F2988, &qword_2800F2980, 0x277D57D10);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6572756C696166, 0xE700000000000000);
  return v12(v14, 0);
}

uint64_t sub_26700DF9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700E000(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionFailureDeveloperDefinedError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11(v6, *MEMORY[0x277D3E510], v2);
  v18[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 1701080931, 0xE400000000000000);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E69616D6F64, 0xE600000000000000);
  return v15(v18, 0);
}

uint64_t sub_26700E3B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700E41C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700E480()
{
  result = qword_2800F29A0;
  if (!qword_2800F29A0)
  {
    sub_26700E4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F29A0);
  }

  return result;
}

unint64_t sub_26700E4D8()
{
  result = qword_2800F29A8;
  if (!qword_2800F29A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F29A8);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionFailureFailure.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v3 = sub_26738118C();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v85 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_26738113C();
  v6 = *(v95 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v95);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v81 - v12;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v82 = "iri.ift.IFTActionFailureFailure";
  v91 = *MEMORY[0x277D3E4E8];
  v93 = *(v6 + 104);
  v93(v9);
  v97[0] = 0;
  sub_26738114C();
  v90 = sub_26738116C();
  v83 = *(v90 - 8);
  v15 = v83 + 56;
  v14 = *(v83 + 56);
  v14(v13, 0, 1, v90);
  v92 = v15;
  v16 = v14;
  v17 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000015, v82 | 0x8000000000000000);
  v17(v97, 0);
  v82 = "preflightCheckFailure";
  v18 = v91;
  v19 = v93;
  (v93)(v9, v91, v95);
  v94 = v6 + 104;
  v97[0] = 0;
  sub_26738114C();
  v16(v13, 0, 1, v90);
  v20 = a2;
  v21 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000017, v82 | 0x8000000000000000);
  v21(v97, 0);
  v81 = "preciseLocationDisabled";
  v22 = v95;
  v19(v9, v18, v95);
  v97[0] = 0;
  sub_26738114C();
  v23 = v90;
  v16(v13, 0, 1, v90);
  v89 = v20;
  v24 = sub_2673811AC();
  v82 = 0xD000000000000010;
  sub_266EC637C(v13, 0xD000000000000010, v81 | 0x8000000000000000);
  v24(v97, 0);
  v25 = v91;
  v26 = v22;
  v27 = v93;
  (v93)(v9, v91, v26);
  v97[0] = 0;
  sub_26738114C();
  v16(v13, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v13, 0x6173694469666977, 0xEC00000064656C62);
  v28(v97, 0);
  v81 = "locationDisabled";
  v29 = v95;
  v27(v9, v25, v95);
  v97[0] = 0;
  sub_26738114C();
  v16(v13, 0, 1, v23);
  v30 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000011, v81 | 0x8000000000000000);
  v30(v97, 0);
  v31 = v25;
  v32 = v9;
  (v93)(v9, v31, v29);
  v97[0] = 0;
  sub_26738114C();
  v16(v13, 0, 1, v23);
  v33 = sub_2673811AC();
  sub_266EC637C(v13, 0x466B726F7774656ELL, 0xEE006572756C6961);
  v33(v97, 0);
  v34 = v93;
  (v93)(v9, v31, v95);
  v97[0] = 0;
  sub_26738114C();
  v16(v13, 0, 1, v23);
  v35 = sub_2673811AC();
  sub_266EC637C(v13, 0x466C616974726170, 0xEE006572756C6961);
  v35(v97, 0);
  v81 = "bluetoothDisabled";
  v36 = v91;
  v37 = v95;
  (v34)(v32, v91, v95);
  v97[0] = 0;
  sub_26738114C();
  v16(v13, 0, 1, v90);
  v38 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000013, v81 | 0x8000000000000000);
  v38(v97, 0);
  v81 = "unsupportedOnDevice";
  (v93)(v32, v36, v37);
  v97[0] = 0;
  sub_26738114C();
  v39 = v90;
  v16(v13, 0, 1, v90);
  v40 = sub_2673811AC();
  sub_266EC637C(v13, 0xD00000000000001ALL, v81 | 0x8000000000000000);
  v40(v97, 0);
  v41 = v91;
  v42 = v93;
  (v93)(v32, v91, v37);
  v97[0] = 0;
  sub_26738114C();
  v43 = v39;
  v16(v13, 0, 1, v39);
  v44 = v16;
  v45 = sub_2673811AC();
  sub_266EC637C(v13, 0x6F4E797469746E65, 0xEE00646E756F4674);
  v45(v97, 0);
  v81 = "featureCurrentlyRestricted";
  v46 = v95;
  v42(v32, v41, v95);
  v97[0] = 0;
  sub_26738114C();
  v16(v13, 0, 1, v43);
  v47 = sub_2673811AC();
  sub_266EC637C(v13, v82, v81 | 0x8000000000000000);
  v47(v97, 0);
  v48 = v91;
  v49 = v93;
  (v93)(v32, v91, v46);
  v97[0] = 0;
  sub_26738114C();
  v44(v13, 0, 1, v43);
  v50 = sub_2673811AC();
  sub_266EC637C(v13, 0x6F54656C62616E75, 0xEC0000006F646E55);
  v50(v97, 0);
  v49(v32, v48, v95);
  v97[0] = 0;
  sub_26738114C();
  v44(v13, 0, 1, v43);
  v51 = sub_2673811AC();
  sub_266EC637C(v13, 0x61436E6F69746361, 0xEE0064656C65636ELL);
  v51(v97, 0);
  v82 = "actionNotAllowed";
  v52 = v95;
  v53 = v93;
  (v93)(v32, v48, v95);
  v97[0] = 0;
  sub_26738114C();
  v54 = v90;
  v44(v13, 0, 1, v90);
  v88 = v44;
  v55 = sub_2673811AC();
  sub_266EC637C(v13, 0xD00000000000001BLL, v82 | 0x8000000000000000);
  v55(v97, 0);
  v56 = v91;
  (v53)(v32, v91, v52);
  v97[0] = 0;
  sub_26738114C();
  v44(v13, 0, 1, v54);
  v57 = sub_2673811AC();
  sub_266EC637C(v13, 0x69686374614D6F6ELL, 0xEE006C6F6F54676ELL);
  v57(v97, 0);
  (v93)(v32, v56, v95);
  v97[0] = 0;
  v82 = v32;
  sub_26738114C();
  v88(v13, 0, 1, v54);
  v58 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000015, 0x80000002674452D0);
  v58(v97, 0);
  v59 = sub_2673811AC();
  v60 = sub_266ECB6CC(v96, 0xD000000000000015, 0x80000002674452D0);
  v61 = v54;
  if (!(*(v83 + 48))(v62, 1, v54))
  {
    sub_266ECB128(&unk_287887090);
    sub_26738115C();
  }

  (v60)(v96, 0);
  v59(v97, 0);
  sub_266ECB294(0, &qword_2800F29A8, 0x277D57D08);
  sub_266ECAF2C(&qword_2800F29A0, &qword_2800F29A8, 0x277D57D08);
  sub_26738121C();
  v63 = v88;
  v88(v13, 0, 1, v54);
  v64 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000022, 0x80000002674452F0);
  v64(v97, 0);
  v65 = v82;
  v66 = v91;
  v67 = v95;
  v68 = v61;
  v69 = v93;
  (v93)(v82, v91, v95);
  v97[0] = 0;
  sub_26738114C();
  v63(v13, 0, 1, v68);
  v70 = sub_2673811AC();
  sub_266EC637C(v13, 0x6F54656C62616E75, 0xEE006C65636E6143);
  v70(v97, 0);
  v84 = "eloperDefinedError";
  v69(v65, v66, v67);
  v97[0] = 0;
  sub_26738114C();
  v63(v13, 0, 1, v90);
  v71 = sub_2673811AC();
  sub_266EC637C(v13, 0xD00000000000001DLL, v84 | 0x8000000000000000);
  v71(v97, 0);
  v72 = v85;
  sub_26738117C();
  v73 = sub_2673811BC();
  v75 = v74;
  v76 = *v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v76;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v76 = sub_266ECAD54(0, v76[2] + 1, 1, v76);
    *v75 = v76;
  }

  v79 = v76[2];
  v78 = v76[3];
  if (v79 >= v78 >> 1)
  {
    v76 = sub_266ECAD54(v78 > 1, v79 + 1, 1, v76);
    *v75 = v76;
  }

  v76[2] = v79 + 1;
  (*(v86 + 32))(v76 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v79, v72, v87);
  return v73(v97, 0);
}

uint64_t sub_26700F80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700F870(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionParameterContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20[0] = sub_26738113C();
  v2 = *(v20[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  v20[1] = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  v13(v22, 0);
  (*(v2 + 104))(v5, *MEMORY[0x277D3E530], v20[0]);
  v22[0] = 1;
  sub_26738114C();
  v20[0] = v12;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496C6F6F74, 0xE600000000000000);
  v14(v22, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v21, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v11 + 48))(v17, 1, v10))
  {
    sub_266ECB128(&unk_2878870B8);
    sub_26738115C();
  }

  (v16)(v21, 0);
  v15(v22, 0);
  type metadata accessor for IFTSchemaIFTActionClass(0);
  sub_26700FE54();
  sub_26738120C();
  (v20[0])(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C436E6F69746361, 0xEB00000000737361);
  return v18(v22, 0);
}

uint64_t sub_26700FD90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700FDF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700FE54()
{
  result = qword_2800F2930;
  if (!qword_2800F2930)
  {
    type metadata accessor for IFTSchemaIFTActionClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2930);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionParameterValue.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v0);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v33 = *MEMORY[0x277D3E4E8];
  v12 = *(v4 + 104);
  v31 = v3;
  v32 = v12;
  v12(v7);
  v37[0] = 0;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x656D7269666E6F63, 0xE900000000000064);
  v15(v37, 0);
  v30 = "iri.ift.IFTActionConfirmation";
  v16 = v3;
  v17 = v32;
  v32(v7, *MEMORY[0x277D3E510], v16);
  v37[0] = 0;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v30 | 0x8000000000000000);
  v18(v37, 0);
  v17(v7, v33, v31);
  v19 = v34;
  v37[0] = 0;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x6465696E6564, 0xE600000000000000);
  v20(v37, 0);
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
  (*(v35 + 32))(v24 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27, v19, v36);
  return v21(v37, 0);
}

uint64_t sub_26701043C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670104A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267010504()
{
  result = qword_2800F2908;
  if (!qword_2800F2908)
  {
    sub_26701055C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2908);
  }

  return result;
}

unint64_t sub_26701055C()
{
  result = qword_2800F2900;
  if (!qword_2800F2900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2900);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionRequirement.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v40 = a1;
  v1 = sub_26738118C();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v13 = *(v5 + 104);
  v36 = *MEMORY[0x277D3E4E8];
  v37 = v5 + 104;
  v38 = v4;
  v35 = v13;
  v13(v8);
  v45[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v39 = *(v15 + 56);
  v39(v12, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v12, 0x737473697865, 0xE600000000000000);
  v16(v45, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v44, 0x737473697865, 0xE600000000000000);
  if (!(*(v15 + 48))(v19, 1, v14))
  {
    sub_266ECB128(&unk_2878870E8);
    sub_26738115C();
  }

  (v18)(v44, 0);
  v17(v45, 0);
  v35(v8, v36, v38);
  v45[0] = 0;
  sub_26738114C();
  v20 = v39;
  v39(v12, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v12, 0x726F707075736E75, 0xEB00000000646574);
  v21(v45, 0);
  sub_266ECB294(0, &qword_2800F29C0, 0x277D57D48);
  sub_266ECAF2C(&qword_2800F29C8, &qword_2800F29C0, 0x277D57D48);
  sub_26738121C();
  v20(v12, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v12, 0x6975716552707061, 0xEE00746E656D6572);
  v22(v45, 0);
  sub_266ECB294(0, &qword_2800F29D0, 0x277D57EF8);
  sub_266ECAF2C(&qword_2800F29D8, &qword_2800F29D0, 0x277D57EF8);
  sub_26738121C();
  v20(v12, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x8000000267445400);
  v23(v45, 0);
  sub_266ECB294(0, &qword_2800F29E0, 0x277D580D8);
  sub_266ECAF2C(&qword_2800F29E8, &qword_2800F29E0, 0x277D580D8);
  sub_26738121C();
  v20(v12, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000011, 0x8000000267445420);
  v24(v45, 0);
  v25 = v41;
  sub_26738117C();
  v26 = sub_2673811BC();
  v28 = v27;
  v29 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_266ECAD54(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_266ECAD54(v31 > 1, v32 + 1, 1, v29);
    *v28 = v29;
  }

  v29[2] = v32 + 1;
  (*(v42 + 32))(v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, v25, v43);
  return v26(v45, 0);
}

uint64_t sub_267010D84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267010DE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionResolverRequest.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = sub_26738113C();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v36 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v43 = a2;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v38 = *(v3 + 104);
  v39 = v11;
  v38(v6);
  v46[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x737473697865, 0xE600000000000000);
  v15(v46, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656D6574617473, 0xEB00000000644974);
  v16(v46, 0);
  v17 = *MEMORY[0x277D3E530];
  v36[1] = v3 + 104;
  (v38)(v6, v17, v44);
  v46[0] = 1;
  sub_26738114C();
  v40 = v13 + 56;
  v41 = v14;
  v14(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496C6F6F74, 0xE600000000000000);
  v18(v46, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v45, 0x64496C6F6F74, 0xE600000000000000);
  v21 = *(v13 + 48);
  v37 = v12;
  if (!v21(v22, 1, v12))
  {
    sub_266ECB128(&unk_287887110);
    sub_26738115C();
  }

  (v20)(v45, 0);
  v19(v46, 0);
  v23 = v39;
  v24 = v38;
  (v38)(v6, v39, v44);
  v46[0] = 1;
  sub_26738114C();
  v25 = v37;
  v26 = v41;
  v41(v10, 0, 1, v37);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E65696C437369, 0xEE006E6F69746341);
  v27(v46, 0);
  v28 = v23;
  v29 = v44;
  v24(v6, v28, v44);
  v46[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x7269666E6F437369, 0xEB0000000064656DLL);
  v30(v46, 0);
  v24(v6, v39, v29);
  v46[0] = 1;
  sub_26738114C();
  v31 = v37;
  v26(v10, 0, 1, v37);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65687475417369, 0xEF64657461636974);
  v32(v46, 0);
  sub_266ECB294(0, &qword_2800F2A00, 0x277D57EE0);
  sub_266ECAF2C(&qword_2800F2A08, &qword_2800F2A00, 0x277D57EE0);
  sub_26738120C();
  v26(v10, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x80000002674454A0);
  v33(v46, 0);
  sub_26738122C();
  v41(v10, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x80000002674454C0);
  return v34(v46, 0);
}

uint64_t sub_26701170C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267011770(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionSuccess.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v35 = a1;
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
  v34 = *MEMORY[0x277D3E4E8];
  v36 = v2 + 104;
  v37 = v1;
  v33 = v10;
  (v10)(v5);
  v40[0] = 1;
  v31 = v5;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v38 = v12 + 56;
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v14(v40, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v39, 0x737473697865, 0xE600000000000000);
  if (!(*(v12 + 48))(v17, 1, v11))
  {
    sub_266ECB128(&unk_287887140);
    sub_26738115C();
  }

  (v16)(v39, 0);
  v15(v40, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138);
  sub_26738120C();
  v32 = v11;
  v13(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x61566E7275746572, 0xEB0000000065756CLL);
  v18(v40, 0);
  v19 = v31;
  v20 = v34;
  v21 = v37;
  v22 = v33;
  v33(v31, v34, v37);
  v40[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v32);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x636E75614C707061, 0xEB00000000646568);
  v23(v40, 0);
  v30 = "iri.ift.IFTActionSuccess";
  v22(v19, v20, v21);
  v40[0] = 1;
  sub_26738114C();
  v24 = v32;
  v13(v9, 0, 1, v32);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v30 | 0x8000000000000000);
  v25(v40, 0);
  sub_266ECB294(0, &qword_2800F2A30, 0x277D57E40);
  sub_266ECAF2C(&qword_2800F2A38, &qword_2800F2A30, 0x277D57E40);
  sub_26738120C();
  v13(v9, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x7055776F6C6C6F66, 0xEE006E6F69746341);
  v26(v40, 0);
  v33(v19, v34, v37);
  v40[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x704F646C756F6873, 0xEA00000000006E65);
  return v27(v40, 0);
}

uint64_t sub_267011F3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267011FA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTApp.makeTypeManifestAndEnsureFields(in:)()
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
    sub_266ECB128(&unk_287887168);
    sub_26738115C();
  }

  (v13)(v16, 0);
  return v12(v17, 0);
}

uint64_t sub_267012344(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670123A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701240C()
{
  result = qword_2800F2A50;
  if (!qword_2800F2A50)
  {
    sub_267012464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2A50);
  }

  return result;
}

unint64_t sub_267012464()
{
  result = qword_2800F2A58;
  if (!qword_2800F2A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2A58);
  }

  return result;
}

uint64_t static IFTSchemaIFTAppRequirement.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v39 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v36 = a1;
  sub_26738119C();
  v14 = *MEMORY[0x277D3E4E8];
  v15 = *(v6 + 104);
  v40 = v6 + 104;
  v38 = v14;
  v15(v9, v14, v5);
  v44[0] = 0;
  sub_26738114C();
  v16 = sub_26738116C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v13, 0, 1, v16);
  v37 = v19;
  v20 = sub_2673811AC();
  sub_266EC637C(v13, 0x65526E496E676973, 0xEE00646572697571);
  v20(v44, 0);
  v35 = "iri.ift.IFTAppRequirement";
  v21 = v14;
  v22 = v39;
  v15(v9, v21, v39);
  v44[0] = 0;
  sub_26738114C();
  v18(v13, 0, 1, v16);
  v23 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000014, v35 | 0x8000000000000000);
  v23(v44, 0);
  v15(v9, v38, v22);
  v24 = v41;
  v44[0] = 0;
  sub_26738114C();
  v18(v13, 0, 1, v16);
  v25 = sub_2673811AC();
  sub_266EC637C(v13, 0xD000000000000018, 0x80000002674455A0);
  v25(v44, 0);
  sub_26738117C();
  v26 = sub_2673811BC();
  v28 = v27;
  v29 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_266ECAD54(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_266ECAD54(v31 > 1, v32 + 1, 1, v29);
    *v28 = v29;
  }

  v29[2] = v32 + 1;
  (*(v42 + 32))(v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, v24, v43);
  return v26(v44, 0);
}

uint64_t sub_267012A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267012A84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267012AE8()
{
  result = qword_2800F29C8;
  if (!qword_2800F29C8)
  {
    sub_267012B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F29C8);
  }

  return result;
}

unint64_t sub_267012B40()
{
  result = qword_2800F29C0;
  if (!qword_2800F29C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F29C0);
  }

  return result;
}

uint64_t static IFTSchemaIFTASTFlatExpr.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v47 = *(v0 - 8);
  v48 = v0;
  v1 = *(v47 + 64);
  MEMORY[0x28223BE20](v0);
  v46 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43[-v9];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28F0, 0x277D57CB8);
  sub_266ECAF2C(&qword_2800F28E8, &qword_2800F28F0, 0x277D57CB8);
  sub_26738121C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x65756C6176, 0xE500000000000000);
  v13(v52, 0);
  sub_266ECB294(0, &qword_2800F2838, 0x277D57C70);
  sub_266ECAF2C(&qword_2800F2830, &qword_2800F2838, 0x277D57C70);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x786966657270, 0xE600000000000000);
  v14(v52, 0);
  sub_266ECB294(0, &qword_2800F27F8, 0x277D57C58);
  sub_266ECAF2C(&qword_2800F27F0, &qword_2800F27F8, 0x277D57C58);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x7869666E69, 0xE500000000000000);
  v15(v52, 0);
  sub_266ECB294(0, &qword_2800F27D8, 0x277D57C48);
  sub_266ECAF2C(&qword_2800F27D0, &qword_2800F27D8, 0x277D57C48);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 7630692, 0xE300000000000000);
  v16(v52, 0);
  sub_266ECB294(0, &qword_2800F27E8, 0x277D57C50);
  sub_266ECAF2C(&qword_2800F27E0, &qword_2800F27E8, 0x277D57C50);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x7865646E69, 0xE500000000000000);
  v17(v52, 0);
  sub_266ECB294(0, &qword_2800F27A8, 0x277D57C30);
  sub_266ECAF2C(&qword_2800F27A0, &qword_2800F27A8, 0x277D57C30);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 1819042147, 0xE400000000000000);
  v18(v52, 0);
  sub_266ECB294(0, &qword_2800F28A0, 0x277D57CB0);
  sub_266ECAF2C(&qword_2800F28A8, &qword_2800F28A0, 0x277D57CB0);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x657461647075, 0xE600000000000000);
  v19(v52, 0);
  v44 = *MEMORY[0x277D3E4E8];
  v20 = *(v51 + 104);
  v51 += 104;
  v45 = v20;
  v20(v49);
  v52[0] = 0;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x616C50664F646E65, 0xE90000000000006ELL);
  v21(v52, 0);
  sub_266ECB294(0, &qword_2800F2868, 0x277D57C88);
  sub_266ECAF2C(&qword_2800F2860, &qword_2800F2868, 0x277D57C88);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 7954803, 0xE300000000000000);
  v22(v52, 0);
  sub_266ECB294(0, &qword_2800F2828, 0x277D57C68);
  sub_266ECAF2C(&qword_2800F2820, &qword_2800F2828, 0x277D57C68);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 1801677168, 0xE400000000000000);
  v23(v52, 0);
  sub_266ECB294(0, &qword_2800F27C8, 0x277D57C40);
  sub_266ECAF2C(&qword_2800F27C0, &qword_2800F27C8, 0x277D57C40);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D7269666E6F63, 0xE700000000000000);
  v24(v52, 0);
  sub_266ECB294(0, &qword_2800F2878, 0x277D57C90);
  sub_266ECAF2C(&qword_2800F2870, &qword_2800F2878, 0x277D57C90);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x686372616573, 0xE600000000000000);
  v25(v52, 0);
  sub_266ECB294(0, &qword_2800F2808, 0x277D57C60);
  sub_266ECAF2C(&qword_2800F2800, &qword_2800F2808, 0x277D57C60);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x656E4F6B636970, 0xE700000000000000);
  v26(v52, 0);
  v45(v49, v44, v50);
  v52[0] = 0;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x69686374614D6F6ELL, 0xEE006C6F6F54676ELL);
  v27(v52, 0);
  sub_266ECB294(0, &qword_2800F2898, 0x277D57CA0);
  sub_266ECAF2C(&qword_2800F2890, &qword_2800F2898, 0x277D57CA0);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 1868852853, 0xE400000000000000);
  v28(v52, 0);
  sub_266ECB294(0, &qword_2800F2858, 0x277D57C80);
  sub_266ECAF2C(&qword_2800F2850, &qword_2800F2858, 0x277D57C80);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x5465766C6F736572, 0xEB000000006C6F6FLL);
  v29(v52, 0);
  sub_266ECB294(0, &qword_2800F2848, 0x277D57C78);
  sub_266ECAF2C(&qword_2800F2840, &qword_2800F2848, 0x277D57C78);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x7463656A6572, 0xE600000000000000);
  v30(v52, 0);
  sub_266ECB294(0, &qword_2800F27B8, 0x277D57C38);
  sub_266ECAF2C(&qword_2800F27B0, &qword_2800F27B8, 0x277D57C38);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C65636E6163, 0xE600000000000000);
  v31(v52, 0);
  sub_266ECB294(0, &qword_2800F2798, 0x277D57C28);
  sub_266ECAF2C(&qword_2800F2790, &qword_2800F2798, 0x277D57C28);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267445610);
  v32(v52, 0);
  sub_266ECB294(0, &qword_2800F28B8, 0x277D57CA8);
  sub_266ECAF2C(&qword_2800F28B0, &qword_2800F28B8, 0x277D57CA8);
  v33 = v46;
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267445630);
  v34(v52, 0);
  sub_26738117C();
  v35 = sub_2673811BC();
  v37 = v36;
  v38 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v37 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_266ECAD54(0, v38[2] + 1, 1, v38);
    *v37 = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    v38 = sub_266ECAD54(v40 > 1, v41 + 1, 1, v38);
    *v37 = v38;
  }

  v38[2] = v41 + 1;
  (*(v47 + 32))(v38 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41, v33, v48);
  v35(v52, 0);
  sub_266ECB128(&unk_287887198);
  return sub_2673811CC();
}

uint64_t sub_267013E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267013ED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTCallExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_2878871C0);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F2A70, 0x277D57D58);
  sub_266ECAF2C(&qword_2800F2A78, &qword_2800F2A70, 0x277D57D58);
  sub_26738122C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEA00000000007372);
  return v17(v21, 0);
}

uint64_t sub_267014354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670143B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTCallExpressionParameters.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674456E0);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6574617473, 0xEB00000000644974);
  return v12(v14, 0);
}

uint64_t sub_267014798(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670147FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTCancelExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267014A7C()
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

uint64_t sub_267014C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267014C84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTCandidate.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  v6(v11, 0);
  type metadata accessor for IFTSchemaIFTCandidateSource(0);
  sub_26701520C();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F2AA8, 0x277D57D70);
  sub_266ECAF2C(&qword_2800F2AB0, &qword_2800F2AA8, 0x277D57D70);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x745374706D6F7270, 0xEC00000073757461);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x65756C6176, 0xE500000000000000);
  return v9(v11, 0);
}

uint64_t sub_267015148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670151AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701520C()
{
  result = qword_2800F2AA0;
  if (!qword_2800F2AA0)
  {
    type metadata accessor for IFTSchemaIFTCandidateSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2AA0);
  }

  return result;
}

uint64_t static IFTSchemaIFTCandidatePromptStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - v12;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a1;
  sub_26738119C();
  v14 = *MEMORY[0x277D3E4E8];
  v15 = *(v6 + 104);
  v33 = v5;
  v34 = v15;
  v15(v9, v14, v5);
  v38[0] = 0;
  sub_26738114C();
  v16 = sub_26738116C();
  v17 = *(*(v16 - 8) + 56);
  v17(v13, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v13, 0x706D6F7250746F6ELL, 0xEB00000000646574);
  v18(v38, 0);
  v19 = v5;
  v20 = v34;
  v34(v9, v14, v19);
  v38[0] = 0;
  sub_26738114C();
  v17(v13, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v13, 0x656D7269666E6F63, 0xE900000000000064);
  v21(v38, 0);
  v20(v9, *MEMORY[0x277D3E510], v33);
  v22 = v35;
  v38[0] = 0;
  sub_26738114C();
  v17(v13, 0, 1, v16);
  v23 = sub_2673811AC();
  sub_266EC637C(v13, 0x64656B636970, 0xE600000000000000);
  v23(v38, 0);
  sub_26738117C();
  v24 = sub_2673811BC();
  v26 = v25;
  v27 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_266ECAD54(0, v27[2] + 1, 1, v27);
    *v26 = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_266ECAD54(v29 > 1, v30 + 1, 1, v27);
    *v26 = v27;
  }

  v27[2] = v30 + 1;
  (*(v36 + 32))(v27 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30, v22, v37);
  return v24(v38, 0);
}

uint64_t sub_2670157F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267015858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670158BC()
{
  result = qword_2800F2AB0;
  if (!qword_2800F2AB0)
  {
    sub_267015914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2AB0);
  }

  return result;
}

unint64_t sub_267015914()
{
  result = qword_2800F2AA8;
  if (!qword_2800F2AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2AA8);
  }

  return result;
}

uint64_t static IFTSchemaIFTCandidateSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674457F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267445810, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267445830, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267445860, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267445890, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x80000002674458B0, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x80000002674458E0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267445900, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x8000000267445920, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_267015E1C(uint64_t a1)
{
  v2 = sub_267015F20(&qword_2800F2AC8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267015E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_267015F20(&qword_2800F2AC8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267015F20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTCandidateSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTClientAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
  v1 = sub_26738113C();
  v23 = v1;
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
  v22 = v2 + 104;
  v24 = v11;
  v11(v5, v10, v1);
  v27[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v15(v27, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  v16(v27, 0);
  v24(v5, *MEMORY[0x277D3E530], v23);
  v27[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496C6F6F74, 0xE600000000000000);
  v17(v27, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v26, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v13 + 48))(v20, 1, v12))
  {
    sub_266ECB128(&unk_2878871F0);
    sub_26738115C();
  }

  (v19)(v26, 0);
  return v18(v27, 0);
}

uint64_t sub_267016404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267016468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTClientApplicationId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x80000002674459A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674459C0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674459F0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267445A20, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267016794(uint64_t a1)
{
  v2 = sub_267016898(&qword_2800F2AE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670167FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267016898(&qword_2800F2AE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267016898(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTClientApplicationId(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v3 = sub_26738118C();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v81 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v81 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2AF0, 0x277D57D88);
  sub_266ECAF2C(&qword_2800F2AF8, &qword_2800F2AF0, 0x277D57D88);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x74654D746E657665, 0xED00006174616461);
  v13(v92, 0);
  sub_266ECB294(0, &qword_2800F2B00, 0x277D57DA8);
  sub_266ECAF2C(&qword_2800F2B08, &qword_2800F2B00, 0x277D57DA8);
  sub_26738121C();
  v86 = v11 + 56;
  v87 = v12;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267445A70);
  v14(v92, 0);
  v89 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v91, 0xD000000000000015, 0x8000000267445A70);
  v85 = *(v11 + 48);
  if (!v85(v17, 1, v10))
  {
    sub_266ECB128(&unk_287887220);
    sub_26738115C();
  }

  (v16)(v91, 0);
  v15(v92, 0);
  sub_266ECB294(0, &qword_2800F2B10, 0x277D57DA0);
  sub_266ECAF2C(&qword_2800F2B18, &qword_2800F2B10, 0x277D57DA0);
  sub_26738121C();
  v87(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267445A90);
  v18(v92, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v91, 0xD000000000000017, 0x8000000267445A90);
  v22 = v85(v21, 1, v10);
  v84 = v11 + 48;
  if (!v22)
  {
    sub_266ECB128(&unk_287887248);
    sub_26738115C();
  }

  (v20)(v91, 0);
  v19(v92, 0);
  sub_266ECB294(0, &qword_2800F2B20, 0x277D58100);
  sub_266ECAF2C(&qword_2800F2B28, &qword_2800F2B20, 0x277D58100);
  sub_26738121C();
  v23 = v10;
  v88 = v10;
  v24 = v87;
  v87(v9, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x74616E696D726574, 0xE900000000000065);
  v25(v92, 0);
  sub_266ECB294(0, &qword_2800F2B30, 0x277D58060);
  sub_266ECAF2C(&qword_2800F2B38, &qword_2800F2B30, 0x277D58060);
  sub_26738121C();
  v24(v9, 0, 1, v88);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x536E6F6973736573, 0xEC00000074726174);
  v26(v92, 0);
  sub_266ECB294(0, &qword_2800F2B40, 0x277D57FA8);
  sub_266ECAF2C(&qword_2800F2B48, &qword_2800F2B40, 0x277D57FA8);
  sub_26738121C();
  v24(v9, 0, 1, v88);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x74736575716572, 0xE700000000000000);
  v27(v92, 0);
  sub_266ECB294(0, &qword_2800F2B50, 0x277D57FD8);
  sub_266ECAF2C(&qword_2800F2B58, &qword_2800F2B50, 0x277D57FD8);
  sub_26738121C();
  v24(v9, 0, 1, v88);
  v28 = v88;
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267445AB0);
  v29(v92, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v91, 0xD00000000000001ELL, 0x8000000267445AB0);
  if (!v85(v32, 1, v28))
  {
    sub_266ECB128(&unk_287887270);
    sub_26738115C();
  }

  (v31)(v91, 0);
  v30(v92, 0);
  sub_266ECB294(0, &qword_2800F2B60, 0x277D57DF8);
  sub_266ECAF2C(&qword_2800F2B68, &qword_2800F2B60, 0x277D57DF8);
  sub_26738121C();
  v87(v9, 0, 1, v28);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267445AD0);
  v33(v92, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v91, 0xD000000000000011, 0x8000000267445AD0);
  if (!v85(v36, 1, v28))
  {
    sub_266ECB128(&unk_287887298);
    sub_26738115C();
  }

  (v35)(v91, 0);
  v34(v92, 0);
  sub_266ECB294(0, &qword_2800F2B70, 0x277D57DB0);
  sub_266ECAF2C(&qword_2800F2B78, &qword_2800F2B70, 0x277D57DB0);
  sub_26738121C();
  v87(v9, 0, 1, v28);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267445AF0);
  v37(v92, 0);
  v38 = sub_2673811AC();
  v39 = sub_266ECB6CC(v91, 0xD000000000000010, 0x8000000267445AF0);
  if (!v85(v40, 1, v28))
  {
    sub_266ECB128(&unk_2878872C0);
    sub_26738115C();
  }

  (v39)(v91, 0);
  v38(v92, 0);
  sub_266ECB294(0, &qword_2800F2B80, 0x277D58120);
  sub_266ECAF2C(&qword_2800F2B88, &qword_2800F2B80, 0x277D58120);
  sub_26738121C();
  v87(v9, 0, 1, v28);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0x746552736C6F6F74, 0xEE00646576656972);
  v41(v92, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v91, 0x746552736C6F6F74, 0xEE00646576656972);
  if (!v85(v44, 1, v28))
  {
    sub_266ECB128(&unk_2878872E8);
    sub_26738115C();
  }

  (v43)(v91, 0);
  v42(v92, 0);
  sub_266ECB294(0, &qword_2800F2B90, 0x277D57F70);
  sub_266ECAF2C(&qword_2800F2B98, &qword_2800F2B90, 0x277D57F70);
  sub_26738121C();
  v45 = v28;
  v46 = v87;
  v87(v9, 0, 1, v45);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267445B10);
  v47(v92, 0);
  sub_266ECB294(0, &qword_2800F2BA0, 0x277D57F68);
  sub_266ECAF2C(&qword_2800F2BA8, &qword_2800F2BA0, 0x277D57F68);
  sub_26738121C();
  v46(v9, 0, 1, v88);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267445B30);
  v48(v92, 0);
  sub_266ECB294(0, &qword_2800F2BB0, 0x277D57F20);
  sub_266ECAF2C(&qword_2800F2BB8, &qword_2800F2BB0, 0x277D57F20);
  sub_26738121C();
  v46(v9, 0, 1, v88);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0x616572436E616C70, 0xEB00000000646574);
  v49(v92, 0);
  sub_266ECB294(0, &qword_2800F2888, 0x277D57C98);
  sub_266ECAF2C(&qword_2800F2880, &qword_2800F2888, 0x277D57C98);
  sub_26738121C();
  v46(v9, 0, 1, v88);
  v50 = v88;
  v51 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x8000000267445B50);
  v51(v92, 0);
  v52 = sub_2673811AC();
  v53 = sub_266ECB6CC(v91, 0xD00000000000001DLL, 0x8000000267445B50);
  if (!v85(v54, 1, v50))
  {
    sub_266ECB128(&unk_287887310);
    sub_26738115C();
  }

  (v53)(v91, 0);
  v52(v92, 0);
  sub_266ECB294(0, &qword_2800F2BC0, 0x277D58178);
  sub_266ECAF2C(&qword_2800F2BC8, &qword_2800F2BC0, 0x277D58178);
  sub_26738121C();
  v55 = v87;
  v87(v9, 0, 1, v50);
  v56 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C626169726176, 0xEC00000074655373);
  v56(v92, 0);
  sub_266ECB294(0, &qword_2800F2BD0, 0x277D58118);
  sub_266ECAF2C(&qword_2800F2BD8, &qword_2800F2BD0, 0x277D58118);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v57 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F7365526C6F6F74, 0xEE006E6F6974756CLL);
  v57(v92, 0);
  sub_266ECB294(0, &qword_2800F2BE0, 0x277D57F80);
  sub_266ECAF2C(&qword_2800F2BE8, &qword_2800F2BE0, 0x277D57F80);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v58 = sub_2673811AC();
  sub_266EC637C(v9, 0x4373656972657571, 0xEE00646574616572);
  v58(v92, 0);
  sub_266ECB294(0, &qword_2800F2A18, 0x277D57D30);
  sub_266ECAF2C(&qword_2800F2A10, &qword_2800F2A18, 0x277D57D30);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v59 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x8000000267445B70);
  v59(v92, 0);
  sub_266ECB294(0, &qword_2800F2BF0, 0x277D58028);
  sub_266ECAF2C(&qword_2800F2BF8, &qword_2800F2BF0, 0x277D58028);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v60 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267445B90);
  v60(v92, 0);
  sub_266ECB294(0, &qword_2800F2928, 0x277D57CE0);
  sub_266ECAF2C(&qword_2800F2920, &qword_2800F2928, 0x277D57CE0);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, 0x61436E6F69746361, 0xEF64656C6C65636ELL);
  v61(v92, 0);
  sub_266ECB294(0, &qword_2800F2C00, 0x277D57DB8);
  sub_266ECAF2C(&qword_2800F2C08, &qword_2800F2C00, 0x277D57DB8);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v62 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267445610);
  v62(v92, 0);
  sub_266ECB294(0, &qword_2800F2C10, 0x277D58068);
  sub_266ECAF2C(&qword_2800F2C18, &qword_2800F2C10, 0x277D58068);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0x7461745370696B73, 0xED0000746E656D65);
  v63(v92, 0);
  sub_266ECB294(0, &qword_2800F2C20, 0x277D57E10);
  sub_266ECAF2C(&qword_2800F2C28, &qword_2800F2C20, 0x277D57E10);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000025, 0x8000000267445BB0);
  v64(v92, 0);
  sub_266ECB294(0, &qword_2800F2918, 0x277D57CD8);
  sub_266ECAF2C(&qword_2800F2910, &qword_2800F2918, 0x277D57CD8);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v65 = sub_2673811AC();
  sub_266EC637C(v9, 0x72436E6F69746361, 0xED00006465746165);
  v65(v92, 0);
  sub_266ECB294(0, &qword_2800F2AD8, 0x277D57D78);
  sub_266ECAF2C(&qword_2800F2AD0, &qword_2800F2AD8, 0x277D57D78);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v66 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267445BE0);
  v66(v92, 0);
  sub_266ECB294(0, &qword_2800F2C30, 0x277D57F88);
  sub_266ECAF2C(&qword_2800F2C38, &qword_2800F2C30, 0x277D57F88);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v67 = sub_2673811AC();
  sub_266EC637C(v9, 0x4573656972657571, 0xEF64657475636578);
  v67(v92, 0);
  sub_266ECB294(0, &qword_2800F2C40, 0x277D58088);
  sub_266ECAF2C(&qword_2800F2C48, &qword_2800F2C40, 0x277D58088);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v68 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267445C00);
  v68(v92, 0);
  sub_266ECB294(0, &qword_2800F2C50, 0x277D580F8);
  sub_266ECAF2C(&qword_2800F2C58, &qword_2800F2C50, 0x277D580F8);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v69 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267445C20);
  v69(v92, 0);
  sub_266ECB294(0, &qword_2800F2C60, 0x277D58058);
  sub_266ECAF2C(&qword_2800F2C68, &qword_2800F2C60, 0x277D58058);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v70 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C61636974697263, 0xED0000726F727245);
  v70(v92, 0);
  sub_266ECB294(0, &qword_2800F2C70, 0x277D57F98);
  sub_266ECAF2C(&qword_2800F2C78, &qword_2800F2C70, 0x277D57F98);
  sub_26738121C();
  v55(v9, 0, 1, v50);
  v71 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267445C40);
  v71(v92, 0);
  v72 = v81;
  sub_26738117C();
  v73 = sub_2673811BC();
  v75 = v74;
  v76 = *v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v76;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v76 = sub_266ECAD54(0, v76[2] + 1, 1, v76);
    *v75 = v76;
  }

  v79 = v76[2];
  v78 = v76[3];
  if (v79 >= v78 >> 1)
  {
    v76 = sub_266ECAD54(v78 > 1, v79 + 1, 1, v76);
    *v75 = v76;
  }

  v76[2] = v79 + 1;
  (*(v82 + 32))(v76 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v79, v72, v83);
  v73(v92, 0);
  sub_266ECB128(&unk_287887338);
  return sub_2673811CC();
}

uint64_t sub_267018900(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267018998()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267018A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267018AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267018B28(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2C80, &qword_2800F2C88, 0x277D57D80);
  a1[2] = sub_266ECAF2C(&qword_2800F2C90, &qword_2800F2C88, 0x277D57D80);
  result = sub_266ECAF2C(&qword_2800F2C98, &qword_2800F2C88, 0x277D57D80);
  a1[3] = result;
  return result;
}

uint64_t static IFTSchemaIFTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v11 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v32 = a1;
  v27[1] = v11;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v31 = *(v13 + 56);
  v31(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x7365757165526669, 0xEB00000000644974);
  v14(v35, 0);
  v33 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v34, 0x7365757165526669, 0xEB00000000644974);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_287887370);
    sub_26738115C();
  }

  (v16)(v34, 0);
  v15(v35, 0);
  sub_26738120C();
  v18 = v31;
  v31(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x49746E6576456669, 0xE900000000000064);
  v19(v35, 0);
  sub_26738120C();
  v18(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F69737365536669, 0xEB0000000064496ELL);
  v20(v35, 0);
  sub_26738120C();
  v18(v10, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x7254746E65696C63, 0xED00006449656361);
  v21(v35, 0);
  type metadata accessor for SISchemaIFParticipant(0);
  sub_2670194E8(&qword_2800F2CA8, type metadata accessor for SISchemaIFParticipant);
  sub_26738120C();
  v18(v10, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x7265646E6573, 0xE600000000000000);
  v22(v35, 0);
  (*(v29 + 104))(v28, *MEMORY[0x277D3E540], v30);
  v35[0] = 1;
  sub_26738114C();
  v18(v10, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x53676E6974736F70, 0xED000064496E6170);
  v23(v35, 0);
  sub_266ECB294(0, &qword_2800F2CB0, 0x277D57E78);
  sub_266ECAF2C(&qword_2800F2CB8, &qword_2800F2CB0, 0x277D57E78);
  sub_26738122C();
  v18(v10, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6574616974696E69, 0xEE00736E61705364);
  v24(v35, 0);
  type metadata accessor for IFTSchemaIFTClientApplicationId(0);
  sub_2670194E8(&qword_2800F2AE0, type metadata accessor for IFTSchemaIFTClientApplicationId);
  sub_26738120C();
  v18(v10, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267445C90);
  return v25(v35, 0);
}

uint64_t sub_267019424(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267019488(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670194E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static IFTSchemaIFTCollectionValue.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65644965707974, 0xEE00726569666974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F2CD0, 0x277D58158);
  sub_266ECAF2C(&qword_2800F2CD8, &qword_2800F2CD0, 0x277D58158);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365756C6176, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_267019844(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670198A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTConfirmExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267019B28()
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

uint64_t sub_267019CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267019D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTContextPrewarmCompleted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD00000000000001BLL, 0x8000000267445D50);
  v5(v7, 0);
  sub_266ECB128(&unk_2878873A0);
  return sub_2673811CC();
}

uint64_t sub_267019FE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701A044(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTContextPrewarmRequest.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267445DB0);
  v5(v7, 0);
  sub_266ECB128(&unk_2878873C8);
  return sub_2673811CC();
}

uint64_t sub_26701A2F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701A358(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTContextRetrieved.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_2878873F0);
  return sub_2673811CC();
}

uint64_t sub_26701A65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701A6C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701A724()
{
  result = qword_2800F2B78;
  if (!qword_2800F2B78)
  {
    sub_26701A77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B78);
  }

  return result;
}

unint64_t sub_26701A77C()
{
  result = qword_2800F2B70;
  if (!qword_2800F2B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B70);
  }

  return result;
}

uint64_t static IFTSchemaIFTContinuePlanning.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701AA10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701AA74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701AAD8()
{
  result = qword_2800F2C08;
  if (!qword_2800F2C08)
  {
    sub_26701AB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2C08);
  }

  return result;
}

unint64_t sub_26701AB30()
{
  result = qword_2800F2C00;
  if (!qword_2800F2C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2C00);
  }

  return result;
}

uint64_t static IFTSchemaIFTContinuePlanningExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701ADC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701AE28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701AE8C()
{
  result = qword_2800F2D00;
  if (!qword_2800F2D00)
  {
    sub_26701AEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D00);
  }

  return result;
}

unint64_t sub_26701AEE4()
{
  result = qword_2800F2D08;
  if (!qword_2800F2D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D08);
  }

  return result;
}

uint64_t static IFTSchemaIFTCurrencyAmount.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701B178(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701B1DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701B240()
{
  result = qword_2800F2D10;
  if (!qword_2800F2D10)
  {
    sub_26701B298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D10);
  }

  return result;
}

unint64_t sub_26701B298()
{
  result = qword_2800F2D18;
  if (!qword_2800F2D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D18);
  }

  return result;
}

uint64_t static IFTSchemaIFTCustom.makeTypeManifestAndEnsureFields(in:)()
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
  v9 = *(v1 + 104);
  v21 = *MEMORY[0x277D3E530];
  v22 = v1 + 104;
  v23 = v0;
  v20 = v9;
  v9(v4);
  v25[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v19 = *(v11 + 56);
  v19(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449656C646E7562, 0xE800000000000000);
  v12(v25, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v24, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_287887418);
    sub_26738115C();
  }

  (v14)(v24, 0);
  v13(v25, 0);
  v20(v4, v21, v23);
  v25[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x79546D6F74737563, 0xEE00656D614E6570);
  return v16(v25, 0);
}

uint64_t sub_26701B6BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701B720(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701B784()
{
  result = qword_2800F2D20;
  if (!qword_2800F2D20)
  {
    sub_26701B7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D20);
  }

  return result;
}

unint64_t sub_26701B7DC()
{
  result = qword_2800F2D28;
  if (!qword_2800F2D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D28);
  }

  return result;
}

uint64_t static IFTSchemaIFTDateComponents.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701BA70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701BAD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701BB38()
{
  result = qword_2800F2D30;
  if (!qword_2800F2D30)
  {
    sub_26701BB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D30);
  }

  return result;
}

unint64_t sub_26701BB90()
{
  result = qword_2800F2D38;
  if (!qword_2800F2D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D38);
  }

  return result;
}

uint64_t static IFTSchemaIFTDisplayRepresentation.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701BE24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701BE88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701BEEC()
{
  result = qword_2800F2D40;
  if (!qword_2800F2D40)
  {
    sub_26701BF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D40);
  }

  return result;
}

unint64_t sub_26701BF44()
{
  result = qword_2800F2D48;
  if (!qword_2800F2D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D48);
  }

  return result;
}

uint64_t static IFTSchemaIFTDotExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701C1D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701C23C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701C2A0()
{
  result = qword_2800F2D50;
  if (!qword_2800F2D50)
  {
    sub_26701C2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D50);
  }

  return result;
}

unint64_t sub_26701C2F8()
{
  result = qword_2800F2D58;
  if (!qword_2800F2D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D58);
  }

  return result;
}

uint64_t static IFTSchemaIFTEndOfPlanExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701C58C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701C5F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701C654()
{
  result = qword_2800F2D60;
  if (!qword_2800F2D60)
  {
    sub_26701C6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D60);
  }

  return result;
}

unint64_t sub_26701C6AC()
{
  result = qword_2800F2D68;
  if (!qword_2800F2D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D68);
  }

  return result;
}

uint64_t static IFTSchemaIFTEntitySpanMatchResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287887448);
  return sub_2673811CC();
}

uint64_t sub_26701C958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701C9BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701CA20()
{
  result = qword_2800F2B68;
  if (!qword_2800F2B68)
  {
    sub_26701CA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B68);
  }

  return result;
}

unint64_t sub_26701CA78()
{
  result = qword_2800F2B60;
  if (!qword_2800F2B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B60);
  }

  return result;
}

uint64_t static IFTSchemaIFTEntityValue.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65644965707974, 0xEE00726569666974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F2D48, 0x277D57DE0);
  sub_266ECAF2C(&qword_2800F2D40, &qword_2800F2D48, 0x277D57DE0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267446010);
  return v7(v9, 0);
}

uint64_t sub_26701CDA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701CE04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTEnumerationValue.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65644965707974, 0xEE00726569666974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F2D48, 0x277D57DE0);
  sub_266ECAF2C(&qword_2800F2D40, &qword_2800F2D48, 0x277D57DE0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267446010);
  return v7(v9, 0);
}

uint64_t sub_26701D184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701D1E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTExecutionPreconditionEvaluatorRequest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2D90, 0x277D57E18);
  sub_266ECAF2C(&qword_2800F2D98, &qword_2800F2D90, 0x277D57E18);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74736575716572, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_26701D460()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2D90, 0x277D57E18);
  sub_266ECAF2C(&qword_2800F2D98, &qword_2800F2D90, 0x277D57E18);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74736575716572, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_26701D5FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701D660(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTExecutionPreconditionEvaluatorRequestActionRequest.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701D94C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701D9B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701DA14()
{
  result = qword_2800F2D98;
  if (!qword_2800F2D98)
  {
    sub_26701DA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D98);
  }

  return result;
}

unint64_t sub_26701DA6C()
{
  result = qword_2800F2D90;
  if (!qword_2800F2D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D90);
  }

  return result;
}

uint64_t static IFTSchemaIFTExecutorError.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  MEMORY[0x28223BE20](v0);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26738113C();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738121C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x726568746FLL, 0xE500000000000000);
  v13(v28, 0);
  (*(v3 + 104))(v6, *MEMORY[0x277D3E4E8], v24);
  v14 = v25;
  v28[0] = 0;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F5464656C696166, 0xEF65747563657845);
  v15(v28, 0);
  sub_26738117C();
  v16 = sub_2673811BC();
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_266ECAD54(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_266ECAD54(v21 > 1, v22 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v22 + 1;
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v14, v27);
  return v16(v28, 0);
}

uint64_t sub_26701DF64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701DFC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTExplicitResolutionRequest.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701E2B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701E318(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701E37C()
{
  result = qword_2800F2DB0;
  if (!qword_2800F2DB0)
  {
    sub_26701E3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2DB0);
  }

  return result;
}

unint64_t sub_26701E3D4()
{
  result = qword_2800F2DB8;
  if (!qword_2800F2DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2DB8);
  }

  return result;
}

uint64_t static IFTSchemaIFTExpression.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v46 = *(v0 - 8);
  v47 = v0;
  v1 = *(v46 + 64);
  MEMORY[0x28223BE20](v0);
  v45 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2DC0, 0x277D58168);
  sub_266ECAF2C(&qword_2800F2DC8, &qword_2800F2DC0, 0x277D58168);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x65756C6176, 0xE500000000000000);
  v9(v48, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656D6574617473, 0xEB00000000644974);
  v10(v48, 0);
  sub_266ECB294(0, &qword_2800F2DD0, 0x277D57F40);
  sub_266ECAF2C(&qword_2800F2DD8, &qword_2800F2DD0, 0x277D57F40);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x786966657270, 0xE600000000000000);
  v11(v48, 0);
  sub_266ECB294(0, &qword_2800F2DE0, 0x277D57E70);
  sub_266ECAF2C(&qword_2800F2DE8, &qword_2800F2DE0, 0x277D57E70);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x7869666E69, 0xE500000000000000);
  v12(v48, 0);
  sub_266ECB294(0, &qword_2800F2D58, 0x277D57DE8);
  sub_266ECAF2C(&qword_2800F2D50, &qword_2800F2D58, 0x277D57DE8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 7630692, 0xE300000000000000);
  v13(v48, 0);
  sub_266ECB294(0, &qword_2800F2DF0, 0x277D57E68);
  sub_266ECAF2C(&qword_2800F2DF8, &qword_2800F2DF0, 0x277D57E68);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x7865646E69, 0xE500000000000000);
  v14(v48, 0);
  sub_266ECB294(0, &qword_2800F2E00, 0x277D58150);
  sub_266ECAF2C(&qword_2800F2E08, &qword_2800F2E00, 0x277D58150);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267445630);
  v15(v48, 0);
  sub_266ECB294(0, &qword_2800F2A88, 0x277D57D50);
  sub_266ECAF2C(&qword_2800F2A80, &qword_2800F2A88, 0x277D57D50);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 1819042147, 0xE400000000000000);
  v16(v48, 0);
  sub_266ECB294(0, &qword_2800F2E10, 0x277D58040);
  sub_266ECAF2C(&qword_2800F2E18, &qword_2800F2E10, 0x277D58040);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 7954803, 0xE300000000000000);
  v17(v48, 0);
  sub_266ECB294(0, &qword_2800F2E20, 0x277D57F08);
  sub_266ECAF2C(&qword_2800F2E28, &qword_2800F2E20, 0x277D57F08);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 1801677168, 0xE400000000000000);
  v18(v48, 0);
  sub_266ECB294(0, &qword_2800F2CF8, 0x277D57D98);
  sub_266ECAF2C(&qword_2800F2CF0, &qword_2800F2CF8, 0x277D57D98);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D7269666E6F63, 0xE700000000000000);
  v19(v48, 0);
  sub_266ECB294(0, &qword_2800F2E30, 0x277D58048);
  sub_266ECAF2C(&qword_2800F2E38, &qword_2800F2E30, 0x277D58048);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0x686372616573, 0xE600000000000000);
  v20(v48, 0);
  sub_266ECB294(0, &qword_2800F2E40, 0x277D57F10);
  sub_266ECAF2C(&qword_2800F2E48, &qword_2800F2E40, 0x277D57F10);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0x656E4F6B636970, 0xE700000000000000);
  v21(v48, 0);
  sub_266ECB294(0, &qword_2800F2E50, 0x277D58020);
  sub_266ECAF2C(&qword_2800F2E58, &qword_2800F2E50, 0x277D58020);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0x5465766C6F736572, 0xEB000000006C6F6FLL);
  v22(v48, 0);
  sub_266ECB294(0, &qword_2800F2E60, 0x277D58140);
  sub_266ECAF2C(&qword_2800F2E68, &qword_2800F2E60, 0x277D58140);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 1868852853, 0xE400000000000000);
  v23(v48, 0);
  sub_266ECB294(0, &qword_2800F2E70, 0x277D57FA0);
  sub_266ECAF2C(&qword_2800F2E78, &qword_2800F2E70, 0x277D57FA0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0x7463656A6572, 0xE600000000000000);
  v24(v48, 0);
  sub_266ECB294(0, &qword_2800F2A98, 0x277D57D60);
  sub_266ECAF2C(&qword_2800F2A90, &qword_2800F2A98, 0x277D57D60);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C65636E6163, 0xE600000000000000);
  v25(v48, 0);
  sub_266ECB294(0, &qword_2800F2E80, 0x277D57E98);
  sub_266ECAF2C(&qword_2800F2E88, &qword_2800F2E80, 0x277D57E98);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v26 = sub_2673811AC();
  sub_266EC637C(v6, 0x69686374614D6F6ELL, 0xEE006C6F6F54676ELL);
  v26(v48, 0);
  sub_266ECB294(0, &qword_2800F2D08, 0x277D57DC0);
  sub_266ECAF2C(&qword_2800F2D00, &qword_2800F2D08, 0x277D57DC0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v27 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267445610);
  v27(v48, 0);
  sub_266ECB294(0, &qword_2800F2D68, 0x277D57DF0);
  sub_266ECAF2C(&qword_2800F2D60, &qword_2800F2D68, 0x277D57DF0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v28 = sub_2673811AC();
  sub_266EC637C(v6, 0x616C50664F646E65, 0xE90000000000006ELL);
  v28(v48, 0);
  sub_266ECB294(0, &qword_2800F2E90, 0x277D57E60);
  sub_266ECAF2C(&qword_2800F2E98, &qword_2800F2E90, 0x277D57E60);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v29 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674461C0);
  v29(v48, 0);
  sub_266ECB294(0, &qword_2800F2EA0, 0x277D57EA0);
  sub_266ECAF2C(&qword_2800F2EA8, &qword_2800F2EA0, 0x277D57EA0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v30 = sub_2673811AC();
  sub_266EC637C(v6, 1852141679, 0xE400000000000000);
  v30(v48, 0);
  sub_266ECB294(0, &qword_2800F2DB8, 0x277D57E28);
  sub_266ECAF2C(&qword_2800F2DB0, &qword_2800F2DB8, 0x277D57E28);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v31 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x80000002674461E0);
  v31(v48, 0);
  sub_266ECB294(0, &qword_2800F2EB0, 0x277D57EE8);
  sub_266ECAF2C(&qword_2800F2EB8, &qword_2800F2EB0, 0x277D57EE8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v32 = sub_2673811AC();
  sub_266EC637C(v6, 0x64616F6C796170, 0xE700000000000000);
  v32(v48, 0);
  sub_266ECB294(0, &qword_2800F2EC0, 0x277D57E58);
  sub_266ECAF2C(&qword_2800F2EC8, &qword_2800F2EC0, 0x277D57E58);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v33 = sub_2673811AC();
  sub_266EC637C(v6, 0x74616D726F66, 0xE600000000000000);
  v33(v48, 0);
  sub_266ECB294(0, &qword_2800F2ED0, 0x277D58098);
  sub_266ECAF2C(&qword_2800F2ED8, &qword_2800F2ED0, 0x277D58098);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v34 = v45;
  v35 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267446200);
  v35(v48, 0);
  sub_26738117C();
  v36 = sub_2673811BC();
  v38 = v37;
  v39 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v38 = v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_266ECAD54(0, v39[2] + 1, 1, v39);
    *v38 = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    v39 = sub_266ECAD54(v41 > 1, v42 + 1, 1, v39);
    *v38 = v39;
  }

  v39[2] = v42 + 1;
  (*(v46 + 32))(v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v42, v34, v47);
  return v36(v48, 0);
}

uint64_t sub_26701FB84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701FBE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTFile.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701FED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701FF38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701FF9C()
{
  result = qword_2800F2EF0;
  if (!qword_2800F2EF0)
  {
    sub_26701FFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2EF0);
  }

  return result;
}

unint64_t sub_26701FFF4()
{
  result = qword_2800F2EF8;
  if (!qword_2800F2EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2EF8);
  }

  return result;
}

uint64_t static IFTSchemaIFTFollowUpAction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F00, 0x277D57E48);
  sub_266ECAF2C(&qword_2800F2F08, &qword_2800F2F00, 0x277D57E48);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267020210()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F00, 0x277D57E48);
  sub_266ECAF2C(&qword_2800F2F08, &qword_2800F2F00, 0x277D57E48);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670203A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702040C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTFollowUpActionExecutableAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2F10, 0x277D57E50);
  sub_266ECAF2C(&qword_2800F2F18, &qword_2800F2F10, 0x277D57E50);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x697463416B6E696CLL, 0xEA00000000006E6FLL);
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

uint64_t sub_267020820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267020884(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTFollowUpActionExecutableActionLinkAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6449656C646E7562, 0xE800000000000000);
  v15(v28, 0);
  v26 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v27, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v14 + 48))(v18, 1, v13))
  {
    sub_266ECB128(&unk_287887470);
    sub_26738115C();
  }

  (v17)(v27, 0);
  v16(v28, 0);
  v23(v6, *MEMORY[0x277D3E540], v25);
  v28[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267446350);
  return v19(v28, 0);
}

uint64_t sub_267020D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267020D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267020DC8()
{
  result = qword_2800F2F18;
  if (!qword_2800F2F18)
  {
    sub_267020E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2F18);
  }

  return result;
}

unint64_t sub_267020E20()
{
  result = qword_2800F2F10;
  if (!qword_2800F2F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2F10);
  }

  return result;
}

uint64_t static IFTSchemaIFTFormatExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_267021048()
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
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_2670211EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267021250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTGetMentionedAppsExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702153C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670215A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267021604()
{
  result = qword_2800F2E98;
  if (!qword_2800F2E98)
  {
    sub_26702165C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2E98);
  }

  return result;
}

unint64_t sub_26702165C()
{
  result = qword_2800F2E90;
  if (!qword_2800F2E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2E90);
  }

  return result;
}

uint64_t static IFTSchemaIFTIndexExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4E8], v1);
  v25[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v22 = *(v11 + 56);
  v22(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v12(v25, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v24, 0x737473697865, 0xE600000000000000);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_2878874A0);
    sub_26738115C();
  }

  (v14)(v24, 0);
  v13(v25, 0);
  v21 = "iri.ift.IFTIndexExpression";
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v16 = v22;
  v22(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v21 | 0x8000000000000000);
  v17(v25, 0);
  sub_26738120C();
  v16(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  return v18(v25, 0);
}

uint64_t sub_267021B24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267021B88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTInfixExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267021E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267021ED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267021F3C()
{
  result = qword_2800F2DE8;
  if (!qword_2800F2DE8)
  {
    sub_267021F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2DE8);
  }

  return result;
}

unint64_t sub_267021F94()
{
  result = qword_2800F2DE0;
  if (!qword_2800F2DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2DE0);
  }

  return result;
}

uint64_t static IFTSchemaIFTInitiatedSpans.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaIFParticipant(0);
  sub_267022418(&qword_2800F2CA8, type metadata accessor for SISchemaIFParticipant);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x7069636974726170, 0xEB00000000746E61);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E540], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E617073, 0xE600000000000000);
  return v11(v15, 0);
}

uint64_t sub_26702230C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267022370(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267022418(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267022460()
{
  result = qword_2800F2CB0;
  if (!qword_2800F2CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2CB0);
  }

  return result;
}

uint64_t static IFTSchemaIFTIntelligenceFlowError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2670227C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267022824(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267022888()
{
  result = qword_2800F26F0;
  if (!qword_2800F26F0)
  {
    sub_2670228E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F26F0);
  }

  return result;
}

unint64_t sub_2670228E0()
{
  result = qword_2800F26E8;
  if (!qword_2800F26E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F26E8);
  }

  return result;
}

uint64_t static IFTSchemaIFTInterpretedStatementResult.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F20, 0x277D58080);
  sub_266ECAF2C(&qword_2800F2F28, &qword_2800F2F20, 0x277D58080);
  sub_26738120C();
  v11 = sub_26738116C();
  v28 = *(v11 - 8);
  v13 = v28 + 56;
  v12 = *(v28 + 56);
  v12(v10, 0, 1, v11);
  v35 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D6F6374756FLL, 0xE700000000000000);
  v14(v37, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  v15 = sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  v16 = a1;
  sub_26738120C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267446510);
  v17(v37, 0);
  v32 = v15;
  v33 = v16;
  sub_26738120C();
  v18 = v35;
  v35(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267446530);
  v19(v37, 0);
  (*(v30 + 104))(v29, *MEMORY[0x277D3E530], v31);
  v37[0] = 1;
  sub_26738114C();
  v31 = v13;
  v18(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496C6F6F74, 0xE600000000000000);
  v20(v37, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v36, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v28 + 48))(v23, 1, v11))
  {
    sub_266ECB128(&unk_2878874C8);
    sub_26738115C();
  }

  (v22)(v36, 0);
  v21(v37, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v24 = v35;
  v35(v10, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x76456E6F69746361, 0xED00006449746E65);
  v25(v37, 0);
  sub_26738120C();
  v24(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267446550);
  return v26(v37, 0);
}

uint64_t sub_267022FEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267023050(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTMeasurement.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702333C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670233A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267023404()
{
  result = qword_2800F2F40;
  if (!qword_2800F2F40)
  {
    sub_26702345C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2F40);
  }

  return result;
}

unint64_t sub_26702345C()
{
  result = qword_2800F2F48;
  if (!qword_2800F2F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2F48);
  }

  return result;
}

uint64_t static IFTSchemaIFTNoMatchingToolExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670236F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267023754(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670237B8()
{
  result = qword_2800F2E88;
  if (!qword_2800F2E88)
  {
    sub_267023810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2E88);
  }

  return result;
}

unint64_t sub_267023810()
{
  result = qword_2800F2E80;
  if (!qword_2800F2E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2E80);
  }

  return result;
}

uint64_t static IFTSchemaIFTOpenExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267023A38()
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

uint64_t sub_267023BDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267023C40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameter.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
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
  v19[0] = a2;
  sub_26738119C();
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E530], v3);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 7955819, 0xE300000000000000);
  v15(v20, 0);
  v12(v7, *MEMORY[0x277D3E510], v3);
  v20[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x697463656C6C6F63, 0xEF7865646E496E6FLL);
  v16(v20, 0);
  sub_266ECB294(0, &qword_2800F2AC0, 0x277D57D68);
  sub_266ECAF2C(&qword_2800F2AB8, &qword_2800F2AC0, 0x277D57D68);
  sub_26738120C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x74616469646E6163, 0xE900000000000065);
  return v17(v20, 0);
}

uint64_t sub_2670240DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267024140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterCandidatesNotFound.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
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
  v19[0] = a2;
  sub_26738119C();
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E4E8], v3);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x737473697865, 0xE600000000000000);
  v15(v20, 0);
  v12(v7, *MEMORY[0x277D3E530], v3);
  v20[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6574656D61726170, 0xEB00000000644972);
  v16(v20, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138);
  sub_26738120C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x65756C6176, 0xE500000000000000);
  return v17(v20, 0);
}

uint64_t sub_2670245D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267024638(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterConfirmation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24 = a1;
  v1 = sub_26738113C();
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
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v22 = v1;
  v23 = v11;
  v11(v5, v10, v1);
  v25[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v14(v25, 0);
  v15 = v1;
  v16 = v23;
  v23(v5, *MEMORY[0x277D3E530], v15);
  v25[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEB00000000644972);
  v17(v25, 0);
  v16(v5, *MEMORY[0x277D3E510], v22);
  v25[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEE007865646E4972);
  v18(v25, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 1835365481, 0xE400000000000000);
  return v19(v25, 0);
}

uint64_t sub_267024B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267024C00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterDisambiguation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24 = a1;
  v1 = sub_26738113C();
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
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v22 = v1;
  v23 = v11;
  v11(v5, v10, v1);
  v25[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v14(v25, 0);
  v15 = v1;
  v16 = v23;
  v23(v5, *MEMORY[0x277D3E530], v15);
  v25[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEB00000000644972);
  v17(v25, 0);
  v16(v5, *MEMORY[0x277D3E510], v22);
  v25[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEE007865646E4972);
  v18(v25, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138);
  sub_26738122C();
  v13(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x736D657469, 0xE500000000000000);
  return v19(v25, 0);
}

uint64_t sub_267025168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670251CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterNeedsValue.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x737473697865, 0xE600000000000000);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6574656D61726170, 0xEB00000000644972);
  return v15(v18, 0);
}

uint64_t sub_267025594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670255F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702565C()
{
  result = qword_2800F2F90;
  if (!qword_2800F2F90)
  {
    sub_2670256B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2F90);
  }

  return result;
}

unint64_t sub_2670256B4()
{
  result = qword_2800F2F98;
  if (!qword_2800F2F98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2F98);
  }

  return result;
}

uint64_t static IFTSchemaIFTParameterNotAllowed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v25 = v2 + 104;
  v26 = v1;
  v24 = v11;
  v11(v5, v10, v1);
  v30[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v27 = *(v13 + 56);
  v27(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v14(v30, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v29, 0x737473697865, 0xE600000000000000);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_2878874F8);
    sub_26738115C();
  }

  (v16)(v29, 0);
  v15(v30, 0);
  v24(v5, *MEMORY[0x277D3E530], v26);
  v30[0] = 1;
  sub_26738114C();
  v18 = v27;
  v27(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEB00000000644972);
  v19(v30, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138);
  sub_26738120C();
  v18(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x65756C6176, 0xE500000000000000);
  v20(v30, 0);
  type metadata accessor for IFTSchemaIFTParameterNotAllowedReason(0);
  sub_267025CE8();
  sub_26738120C();
  v18(v9, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F73616572, 0xE600000000000000);
  return v21(v30, 0);
}

uint64_t sub_267025C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267025C88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267025CE8()
{
  result = qword_2800F2FA0;
  if (!qword_2800F2FA0)
  {
    type metadata accessor for IFTSchemaIFTParameterNotAllowedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2FA0);
  }

  return result;
}

uint64_t static IFTSchemaIFTParameterNotAllowedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674467A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x80000002674467D0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003BLL, 0x8000000267446810, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267025F98(uint64_t a1)
{
  v2 = sub_26702609C(&qword_2800F2FB8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267026000(uint64_t a1, uint64_t a2)
{
  v4 = sub_26702609C(&qword_2800F2FB8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26702609C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTParameterNotAllowedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTParameterQuery.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F29B8, 0x277D57D18);
  sub_266ECAF2C(&qword_2800F29B0, &qword_2800F29B8, 0x277D57D18);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x747865746E6F63, 0xE700000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x747865746E6F63, 0xE700000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287887520);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_287887548);
  return sub_2673811CC();
}

uint64_t sub_267026394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670263F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterSet.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F58, 0x277D57EA8);
  sub_266ECAF2C(&qword_2800F2F50, &qword_2800F2F58, 0x277D57EA8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xEA00000000007372);
  return v5(v7, 0);
}

uint64_t sub_267026674()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F58, 0x277D57EA8);
  sub_266ECAF2C(&qword_2800F2F50, &qword_2800F2F58, 0x277D57EA8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xEA00000000007372);
  return v5(v7, 0);
}

uint64_t sub_267026814(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267026878(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPayloadExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_267026AF8()
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
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_267026C9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267026D00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPaymentMethod.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267026FEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267027050(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670270B4()
{
  result = qword_2800F2FD0;
  if (!qword_2800F2FD0)
  {
    sub_26702710C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2FD0);
  }

  return result;
}

unint64_t sub_26702710C()
{
  result = qword_2800F2FD8;
  if (!qword_2800F2FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2FD8);
  }

  return result;
}

uint64_t static IFTSchemaIFTPermissionRequirement.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_26738113C();
  v5 = *(v64 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v64);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v65 = *MEMORY[0x277D3E4E8];
  v13 = *(v5 + 104);
  v13(v8);
  v62 = v5 + 104;
  v60 = v13;
  v67[0] = 0;
  sub_26738114C();
  v63 = sub_26738116C();
  v14 = *(v63 - 8);
  v15 = *(v14 + 56);
  v66 = v14 + 56;
  v15(v12, 0, 1, v63);
  v16 = v15;
  v61 = a1;
  v17 = sub_2673811AC();
  v54 = 0xD000000000000016;
  sub_266EC637C(v12, 0xD000000000000016, 0x8000000267446950);
  v17(v67, 0);
  v55 = "siriPermissionRequired";
  v18 = v65;
  v19 = v64;
  (v13)(v8, v65, v64);
  v67[0] = 0;
  sub_26738114C();
  v20 = v63;
  v15(v12, 0, 1, v63);
  v59 = v15;
  v21 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001BLL, v55 | 0x8000000000000000);
  v21(v67, 0);
  v55 = "shortcutsPermissionRequired";
  v22 = v19;
  v23 = v19;
  v24 = v60;
  (v60)(v8, v18, v23);
  v67[0] = 0;
  sub_26738114C();
  v16(v12, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000021, v55 | 0x8000000000000000);
  v25(v67, 0);
  v53 = "ermissionRequired";
  v26 = v8;
  v27 = v65;
  v24(v8, v65, v22);
  v28 = v24;
  v67[0] = 0;
  sub_26738114C();
  v29 = v63;
  v30 = v59;
  v59(v12, 0, 1, v63);
  v31 = sub_2673811AC();
  v55 = 0xD00000000000001ALL;
  sub_266EC637C(v12, 0xD00000000000001ALL, v53 | 0x8000000000000000);
  v31(v67, 0);
  v53 = "locationPermissionRequired";
  v32 = v26;
  v33 = v26;
  v34 = v64;
  v28(v33, v27, v64);
  v67[0] = 0;
  sub_26738114C();
  v30(v12, 0, 1, v29);
  v35 = sub_2673811AC();
  sub_266EC637C(v12, v54, v53 | 0x8000000000000000);
  v35(v67, 0);
  v54 = "wifiPermissionRequired";
  v36 = v27;
  v37 = v34;
  v38 = v60;
  (v60)(v32, v27, v37);
  v67[0] = 0;
  sub_26738114C();
  v39 = v59;
  v59(v12, 0, 1, v29);
  v40 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001BLL, v54 | 0x8000000000000000);
  v40(v67, 0);
  v54 = "bluetoothPermissionRequired";
  v41 = v64;
  v38(v32, v36, v64);
  v67[0] = 0;
  sub_26738114C();
  v39(v12, 0, 1, v29);
  v42 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, v54 | 0x8000000000000000);
  v42(v67, 0);
  v38(v32, v65, v41);
  v67[0] = 0;
  sub_26738114C();
  v39(v12, 0, 1, v63);
  v43 = v56;
  v44 = sub_2673811AC();
  sub_266EC637C(v12, v55, 0x8000000267446A40);
  v44(v67, 0);
  sub_26738117C();
  v45 = sub_2673811BC();
  v47 = v46;
  v48 = *v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v47 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_266ECAD54(0, v48[2] + 1, 1, v48);
    *v47 = v48;
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    v48 = sub_266ECAD54(v50 > 1, v51 + 1, 1, v48);
    *v47 = v48;
  }

  v48[2] = v51 + 1;
  (*(v57 + 32))(v48 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v51, v43, v58);
  return v45(v67, 0);
}

uint64_t sub_267027ACC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267027B30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267027B94()
{
  result = qword_2800F29D8;
  if (!qword_2800F29D8)
  {
    sub_267027BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F29D8);
  }

  return result;
}

unint64_t sub_267027BEC()
{
  result = qword_2800F29D0;
  if (!qword_2800F29D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F29D0);
  }

  return result;
}

uint64_t static IFTSchemaIFTPerson.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267027E80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267027EE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267027F48()
{
  result = qword_2800F2FE0;
  if (!qword_2800F2FE0)
  {
    sub_267027FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2FE0);
  }

  return result;
}

unint64_t sub_267027FA0()
{
  result = qword_2800F2FE8;
  if (!qword_2800F2FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2FE8);
  }

  return result;
}

uint64_t static IFTSchemaIFTPickExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E510], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7865646E69, 0xE500000000000000);
  return v11(v15, 0);
}

uint64_t sub_267028324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267028388(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPickOneExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267028608()
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

uint64_t sub_2670287AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267028810(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPlacemark.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267028AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267028B60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267028BC4()
{
  result = qword_2800F2FF0;
  if (!qword_2800F2FF0)
  {
    sub_267028C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2FF0);
  }

  return result;
}

unint64_t sub_267028C1C()
{
  result = qword_2800F2FF8;
  if (!qword_2800F2FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2FF8);
  }

  return result;
}

uint64_t static IFTSchemaIFTPlan.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = a1;
  v1 = sub_26738113C();
  v20 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E4E8];
  v19 = *(v2 + 104);
  v19(v5, v10, v1);
  v22[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v22, 0);
  sub_266ECB294(0, &qword_2800F3000, 0x277D57F58);
  sub_266ECAF2C(&qword_2800F3008, &qword_2800F3000, 0x277D57F58);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEA00000000007374);
  v14(v22, 0);
  v19(v5, *MEMORY[0x277D3E530], v20);
  v22[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x656469727265766FLL, 0xEA00000000006449);
  v15(v22, 0);
  type metadata accessor for IFTSchemaIFTPlanSource(0);
  sub_2670291B4();
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x72756F536E616C70, 0xEA00000000006563);
  return v16(v22, 0);
}

uint64_t sub_2670290F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267029154(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670291B4()
{
  result = qword_2800F3010;
  if (!qword_2800F3010)
  {
    type metadata accessor for IFTSchemaIFTPlanSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3010);
  }

  return result;
}

uint64_t static IFTSchemaIFTPlanGenerationError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3018, 0x277D57F30);
  sub_266ECAF2C(&qword_2800F3020, &qword_2800F3018, 0x277D57F30);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x8000000267446B90);
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

uint64_t sub_2670295C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267029628(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPlanGenerationModelOutputError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_26702989C()
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
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_267029A34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267029A98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPlannerError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27[1] = a1;
  v1 = sub_26738118C();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26738113C();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  v27[0] = sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738121C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0x726568746FLL, 0xE500000000000000);
  v14(v32, 0);
  (*(v4 + 104))(v7, *MEMORY[0x277D3E4E8], v28);
  v32[0] = 0;
  sub_26738114C();
  v13(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F5464656C696166, 0xEC0000006E616C50);
  v15(v32, 0);
  sub_26738121C();
  v13(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  v17 = v11;
  v18 = v29;
  sub_266EC637C(v17, 0x456B726F7774656ELL, 0xEC000000726F7272);
  v16(v32, 0);
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
  (*(v30 + 32))(v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, v18, v31);
  return v19(v32, 0);
}

uint64_t sub_26702A070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702A0D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPlanSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267446C90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267446CB0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267446CD0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267446D00, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267446D20, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x8000000267446D40, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26702A4E0(uint64_t a1)
{
  v2 = sub_26702A5E4(&qword_2800F3048);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26702A548(uint64_t a1, uint64_t a2)
{
  v4 = sub_26702A5E4(&qword_2800F3048);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26702A5E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTPlanSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTPrefixExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702A870(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702A8D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702A938()
{
  result = qword_2800F2DD8;
  if (!qword_2800F2DD8)
  {
    sub_26702A990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2DD8);
  }

  return result;
}

unint64_t sub_26702A990()
{
  result = qword_2800F2DD0;
  if (!qword_2800F2DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2DD0);
  }

  return result;
}

uint64_t static IFTSchemaIFTPrimitive.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_287887570);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  type metadata accessor for IFTSchemaIFTPrimitiveType(0);
  sub_26702AEB8(&qword_2800F3050, type metadata accessor for IFTSchemaIFTPrimitiveType);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x766974696D697270, 0xED00006570795465);
  return v17(v21, 0);
}

uint64_t sub_26702ADAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702AE10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26702AEB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26702AF00()
{
  result = qword_2800F3060;
  if (!qword_2800F3060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3060);
  }

  return result;
}

uint64_t static IFTSchemaIFTPrimitiveType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267446DF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v122;

  v1(v142, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267446E10, v11);
  v12 = *v9;
  *v9 = v123;

  v7(v142, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267446E30, v17);
  v18 = *v15;
  *v15 = v124;

  v13(v142, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267446E50, v23);
  v24 = *v21;
  *v21 = v125;

  v19(v142, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267446E70, v29);
  v30 = *v27;
  *v27 = v126;

  v25(v142, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x8000000267446E90, v35);
  v36 = *v33;
  *v33 = v127;

  v31(v142, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x8000000267446EB0, v41);
  v42 = *v39;
  *v39 = v128;

  v37(v142, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000015, 0x8000000267446ED0, v47);
  v48 = *v45;
  *v45 = v129;

  v43(v142, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x8000000267446EF0, v53);
  v54 = *v51;
  *v51 = v130;

  v49(v142, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x8000000267446F20, v59);
  v60 = *v57;
  *v57 = v131;

  v55(v142, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001BLL, 0x8000000267446F40, v65);
  v66 = *v63;
  *v63 = v132;

  v61(v142, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000022, 0x8000000267446F60, v71);
  v72 = *v69;
  *v69 = v133;

  v67(v142, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001CLL, 0x8000000267446F90, v77);
  v78 = *v75;
  *v75 = v134;

  v73(v142, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000020, 0x8000000267446FB0, v83);
  v84 = *v81;
  *v81 = v135;

  v79(v142, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001FLL, 0x8000000267446FE0, v89);
  v90 = *v87;
  *v87 = v136;

  v85(v142, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ALL, 0x8000000267447000, v95);
  v96 = *v93;
  *v93 = v137;

  v91(v142, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000017, 0x8000000267447020, v101);
  v102 = *v99;
  *v99 = v138;

  v97(v142, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000015, 0x8000000267447040, v107);
  v108 = *v105;
  *v105 = v139;

  v103(v142, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000014, 0x8000000267447060, v113);
  v114 = *v111;
  *v111 = v140;

  v109(v142, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x8000000267447080, v119);
  v120 = *v117;
  *v117 = v141;

  return v115(v142, 0);
}

uint64_t sub_26702B8EC(uint64_t a1)
{
  v2 = sub_26702B9F0(&qword_2800F3068);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26702B954(uint64_t a1, uint64_t a2)
{
  v4 = sub_26702B9F0(&qword_2800F3068);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26702B9F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTPrimitiveType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTPrimitiveValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v44 = a1;
  v1 = sub_26738118C();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v13 = *MEMORY[0x277D3E4E8];
  v49 = *(v5 + 104);
  v50 = v4;
  v51 = v5 + 104;
  v49(v8, v13, v4);
  v52[0] = 0;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v48 = v15 + 56;
  v16(v12, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v12, 0x766974696D697270, 0xED00006C6C754E65);
  v17(v52, 0);
  v18 = v4;
  v19 = v49;
  v49(v8, v13, v18);
  v52[0] = 0;
  sub_26738114C();
  v16(v12, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v12, 0x766974696D697270, 0xED00006C6F6F4265);
  v20(v52, 0);
  v19(v8, *MEMORY[0x277D3E510], v50);
  v52[0] = 0;
  sub_26738114C();
  v16(v12, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v12, 0x766974696D697270, 0xEC000000746E4965);
  v21(v52, 0);
  v23 = v49;
  v22 = v50;
  v49(v8, *MEMORY[0x277D3E518], v50);
  v52[0] = 0;
  sub_26738114C();
  v16(v12, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v12, 0x766974696D697270, 0xEF656C62756F4465);
  v24(v52, 0);
  v23(v8, *MEMORY[0x277D3E530], v22);
  v52[0] = 0;
  sub_26738114C();
  v16(v12, 0, 1, v14);
  v25 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000010, 0x80000002674470E0);
  v25(v52, 0);
  sub_266ECB294(0, &qword_2800F2D38, 0x277D57DD8);
  sub_266ECAF2C(&qword_2800F2D30, &qword_2800F2D38, 0x277D57DD8);
  sub_26738121C();
  v16(v12, 0, 1, v14);
  v26 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000017, 0x8000000267447100);
  v26(v52, 0);
  sub_266ECB294(0, &qword_2800F2F48, 0x277D57E90);
  sub_266ECAF2C(&qword_2800F2F40, &qword_2800F2F48, 0x277D57E90);
  sub_26738121C();
  v16(v12, 0, 1, v14);
  v27 = sub_2673811AC();
  sub_266EC637C(v12, 0x6D6572757361656DLL, 0xEB00000000746E65);
  v27(v52, 0);
  sub_266ECB294(0, &qword_2800F2D18, 0x277D57DC8);
  sub_266ECAF2C(&qword_2800F2D10, &qword_2800F2D18, 0x277D57DC8);
  sub_26738121C();
  v16(v12, 0, 1, v14);
  v28 = sub_2673811AC();
  sub_266EC637C(v12, 0x79636E6572727563, 0xEE00746E756F6D41);
  v28(v52, 0);
  sub_266ECB294(0, &qword_2800F2FD8, 0x277D57EF0);
  sub_266ECAF2C(&qword_2800F2FD0, &qword_2800F2FD8, 0x277D57EF0);
  sub_26738121C();
  v16(v12, 0, 1, v14);
  v29 = sub_2673811AC();
  sub_266EC637C(v12, 0x4D746E656D796170, 0xED0000646F687465);
  v29(v52, 0);
  sub_266ECB294(0, &qword_2800F2FF8, 0x277D57F18);
  sub_266ECAF2C(&qword_2800F2FF0, &qword_2800F2FF8, 0x277D57F18);
  sub_26738121C();
  v16(v12, 0, 1, v14);
  v30 = sub_2673811AC();
  sub_266EC637C(v12, 0x72616D6563616C70, 0xE90000000000006BLL);
  v30(v52, 0);
  sub_266ECB294(0, &qword_2800F2FE8, 0x277D57F00);
  sub_266ECAF2C(&qword_2800F2FE0, &qword_2800F2FE8, 0x277D57F00);
  sub_26738121C();
  v16(v12, 0, 1, v14);
  v31 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E6F73726570, 0xE600000000000000);
  v31(v52, 0);
  sub_266ECB294(0, &qword_2800F2EF8, 0x277D57E38);
  sub_266ECAF2C(&qword_2800F2EF0, &qword_2800F2EF8, 0x277D57E38);
  sub_26738121C();
  v16(v12, 0, 1, v14);
  v32 = sub_2673811AC();
  sub_266EC637C(v12, 1701603686, 0xE400000000000000);
  v32(v52, 0);
  sub_266ECB294(0, &qword_2800F2A58, 0x277D57D40);
  sub_266ECAF2C(&qword_2800F2A50, &qword_2800F2A58, 0x277D57D40);
  sub_26738121C();
  v16(v12, 0, 1, v14);
  v33 = sub_2673811AC();
  v34 = v12;
  v35 = v45;
  sub_266EC637C(v34, 7368801, 0xE300000000000000);
  v33(v52, 0);
  sub_26738117C();
  v36 = sub_2673811BC();
  v38 = v37;
  v39 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v38 = v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_266ECAD54(0, v39[2] + 1, 1, v39);
    *v38 = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    v39 = sub_266ECAD54(v41 > 1, v42 + 1, 1, v39);
    *v38 = v39;
  }

  v39[2] = v42 + 1;
  (*(v46 + 32))(v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v42, v35, v47);
  return v36(v52, 0);
}

uint64_t sub_26702C7CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702C830(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTProgramStatement.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6574617473, 0xEB00000000644974);
  v12(v25, 0);
  sub_266ECB294(0, &qword_2800F2A68, 0x277D57CD0);
  sub_266ECAF2C(&qword_2800F2A60, &qword_2800F2A68, 0x277D57CD0);
  v20 = a1;
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6973736572707865, 0xEA00000000006E6FLL);
  v13(v25, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v24, 0x6973736572707865, 0xEA00000000006E6FLL);
  if (!(*(v10 + 48))(v16, 1, v9))
  {
    sub_266ECB128(&unk_287887598);
    sub_26738115C();
  }

  (v15)(v24, 0);
  v14(v25, 0);
  sub_266ECB294(0, &qword_2800F2EE8, 0x277D57E30);
  sub_266ECAF2C(&qword_2800F2EE0, &qword_2800F2EE8, 0x277D57E30);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6973736572707865, 0xEE00656D614E6E6FLL);
  v17(v25, 0);
  (*(v22 + 104))(v21, *MEMORY[0x277D3E4E8], v23);
  v25[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x746F6F527369, 0xE600000000000000);
  return v18(v25, 0);
}

uint64_t sub_26702CE60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702CEC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTQuery.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFTSchemaIFTSortOrder(0);
  sub_26702D3C4(&qword_2800F3080, type metadata accessor for IFTSchemaIFTSortOrder);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6564724F74726F73, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_26702D12C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFTSchemaIFTSortOrder(0);
  sub_26702D3C4(&qword_2800F3080, type metadata accessor for IFTSchemaIFTSortOrder);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6564724F74726F73, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_26702D2B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702D31C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26702D3C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26702D40C()
{
  result = qword_2800F3090;
  if (!qword_2800F3090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3090);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryDecorationPrePlannerResult.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702D6A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702D704(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702D768()
{
  result = qword_2800F2BA8;
  if (!qword_2800F2BA8)
  {
    sub_26702D7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2BA8);
  }

  return result;
}

unint64_t sub_26702D7C0()
{
  result = qword_2800F2BA0;
  if (!qword_2800F2BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2BA0);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryDecorationResult.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702DA54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702DAB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702DB1C()
{
  result = qword_2800F2B98;
  if (!qword_2800F2B98)
  {
    sub_26702DB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B98);
  }

  return result;
}

unint64_t sub_26702DB74()
{
  result = qword_2800F2B90;
  if (!qword_2800F2B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B90);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryPayloadType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267447250, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267447270, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674472A0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x80000002674472D0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x8000000267447300, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26702DEBC(uint64_t a1)
{
  v2 = sub_26702DFC0(&qword_2800F30A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26702DF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_26702DFC0(&qword_2800F30A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26702DFC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTQueryPayloadType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryResults.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2AC0, 0x277D57D68);
  sub_266ECAF2C(&qword_2800F2AB8, &qword_2800F2AC0, 0x277D57D68);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEA00000000007365);
  return v5(v7, 0);
}

uint64_t sub_26702E1DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2AC0, 0x277D57D68);
  sub_266ECAF2C(&qword_2800F2AB8, &qword_2800F2AC0, 0x277D57D68);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEA00000000007365);
  return v5(v7, 0);
}

uint64_t sub_26702E37C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702E3E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTQueryStep.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4E8], v1);
  v24[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v24, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  v14(v24, 0);
  sub_266ECB294(0, &qword_2800F2FC8, 0x277D57ED8);
  sub_266ECAF2C(&qword_2800F2FC0, &qword_2800F2FC8, 0x277D57ED8);
  sub_26738122C();
  v12(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x73656972657571, 0xE700000000000000);
  v15(v24, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v23, 0x73656972657571, 0xE700000000000000);
  if (!(*(v11 + 48))(v18, 1, v10))
  {
    sub_266ECB128(&unk_2878875C0);
    sub_26738115C();
  }

  (v17)(v23, 0);
  v16(v24, 0);
  sub_266ECB294(0, &qword_2800F29B8, 0x277D57D18);
  sub_266ECAF2C(&qword_2800F29B0, &qword_2800F29B8, 0x277D57D18);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x747865746E6F63, 0xE700000000000000);
  v19(v24, 0);
  type metadata accessor for IFTSchemaIFTQueryPayloadType(0);
  sub_26702EB54();
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x5464616F6C796170, 0xEB00000000657079);
  return v20(v24, 0);
}

uint64_t sub_26702EA90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702EAF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702EB54()
{
  result = qword_2800F3098;
  if (!qword_2800F3098)
  {
    type metadata accessor for IFTSchemaIFTQueryPayloadType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3098);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryStepResults.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267446530);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F30B0, 0x277D57F78);
  sub_266ECAF2C(&qword_2800F30A8, &qword_2800F30B0, 0x277D57F78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365527972657571, 0xEC00000073746C75);
  return v13(v15, 0);
}

uint64_t sub_26702EFF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702F05C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTQueryValue.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65644965707974, 0xEE00726569666974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3090, 0x277D57F60);
  sub_266ECAF2C(&qword_2800F3088, &qword_2800F3090, 0x277D57F60);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7972657571, 0xE500000000000000);
  return v7(v9, 0);
}

uint64_t sub_26702F3D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702F434(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRecoverableError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3030, 0x277D57F28);
  sub_266ECAF2C(&qword_2800F3028, &qword_2800F3030, 0x277D57F28);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267447420);
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

uint64_t sub_26702F84C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702F8B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRejectExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702FB30()
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

uint64_t sub_26702FCD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702FD38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v10 = *(v2 + 104);
  v23 = *MEMORY[0x277D3E4E8];
  v25 = v2 + 104;
  v26 = v1;
  v22 = v10;
  v10(v5);
  v29[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v24 = *(v12 + 56);
  v24(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v29, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v28, 0x737473697865, 0xE600000000000000);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_2878875E8);
    sub_26738115C();
  }

  (v15)(v28, 0);
  v14(v29, 0);
  sub_266ECB294(0, &qword_2800F30C8, 0x277D57FB0);
  sub_266ECAF2C(&qword_2800F30D0, &qword_2800F30C8, 0x277D57FB0);
  sub_26738120C();
  v17 = v24;
  v24(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E65746E6F63, 0xE700000000000000);
  v18(v29, 0);
  v22(v5, v23, v26);
  v29[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x7974656661537369, 0xEC00000065646F4DLL);
  v19(v29, 0);
  sub_266ECB294(0, &qword_2800F30D8, 0x277D57FE8);
  sub_266ECAF2C(&qword_2800F30E0, &qword_2800F30D8, 0x277D57FE8);
  sub_26738120C();
  v17(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6269726373657270, 0xEE006E616C506465);
  return v20(v29, 0);
}

uint64_t sub_267030350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670303B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F30E8, 0x277D57FD0);
  sub_266ECAF2C(&qword_2800F30F0, &qword_2800F30E8, 0x277D57FD0);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 1954047348, 0xE400000000000000);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F30F8, 0x277D57FC0);
  sub_266ECAF2C(&qword_2800F3100, &qword_2800F30F8, 0x277D57FC0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x686365657073, 0xE600000000000000);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F3108, 0x277D580B0);
  sub_266ECAF2C(&qword_2800F3110, &qword_2800F3108, 0x277D580B0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674474F0);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F3118, 0x277D57FC8);
  sub_266ECAF2C(&qword_2800F3120, &qword_2800F3118, 0x277D57FC8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 1886352499, 0xE400000000000000);
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

uint64_t sub_267030A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267030A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContentHeadGestureContent.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267030D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267030DE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267030E48()
{
  result = qword_2800F3128;
  if (!qword_2800F3128)
  {
    sub_267030EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3128);
  }

  return result;
}

unint64_t sub_267030EA0()
{
  result = qword_2800F3130;
  if (!qword_2800F3130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3130);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestContentSpeechContent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3138, 0x277D58070);
  sub_266ECAF2C(&qword_2800F3140, &qword_2800F3138, 0x277D58070);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEA00000000007365);
  return v5(v7, 0);
}

uint64_t sub_2670310C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3138, 0x277D58070);
  sub_266ECAF2C(&qword_2800F3140, &qword_2800F3138, 0x277D58070);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEA00000000007365);
  return v5(v7, 0);
}

uint64_t sub_267031264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670312C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContentStopContent.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670315B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267031618(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703167C()
{
  result = qword_2800F3120;
  if (!qword_2800F3120)
  {
    sub_2670316D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3120);
  }

  return result;
}

unint64_t sub_2670316D4()
{
  result = qword_2800F3118;
  if (!qword_2800F3118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3118);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestContentTextContent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_2670319EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267031A50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContentTextContentTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x7265755174786574, 0xE900000000000079);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x7265755174786574, 0xE900000000000079);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287887610);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_267031ED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267031F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContentTouchContent.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267032220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267032284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670322E8()
{
  result = qword_2800F3148;
  if (!qword_2800F3148)
  {
    sub_267032340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3148);
  }

  return result;
}

unint64_t sub_267032340()
{
  result = qword_2800F3150;
  if (!qword_2800F3150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3150);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlan.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  MEMORY[0x28223BE20](v0);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3158, 0x277D58010);
  sub_266ECAF2C(&qword_2800F3160, &qword_2800F3158, 0x277D58010);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F54686372616573, 0xEA00000000006C6FLL);
  v9(v28, 0);
  sub_266ECB294(0, &qword_2800F3168, 0x277D58018);
  sub_266ECAF2C(&qword_2800F3170, &qword_2800F3168, 0x277D58018);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C6F6F5474786574, 0xE800000000000000);
  v10(v28, 0);
  sub_266ECB294(0, &qword_2800F3178, 0x277D57FF0);
  sub_266ECAF2C(&qword_2800F3180, &qword_2800F3178, 0x277D57FF0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x54747265766E6F63, 0xEB000000006C6F6FLL);
  v11(v28, 0);
  sub_266ECB294(0, &qword_2800F3188, 0x277D57FF8);
  sub_266ECAF2C(&qword_2800F3190, &qword_2800F3188, 0x277D57FF8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6764656C776F6E6BLL, 0xED00006C6F6F5465);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800F3198, 0x277D58008);
  sub_266ECAF2C(&qword_2800F31A0, &qword_2800F3198, 0x277D58008);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C6F6F546E65706FLL, 0xE800000000000000);
  v13(v28, 0);
  sub_266ECB294(0, &qword_2800F31A8, 0x277D58000);
  sub_266ECAF2C(&qword_2800F31B0, &qword_2800F31A8, 0x277D58000);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000025, 0x80000002674476F0);
  v15(v28, 0);
  sub_26738117C();
  v16 = sub_2673811BC();
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_266ECAD54(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_266ECAD54(v21 > 1, v22 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v22 + 1;
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v14, v27);
  return v16(v28, 0);
}

uint64_t sub_267032B24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267032B88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanConvertTool.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x63696C7078457369, 0xEA00000000007469);
  return v10(v12, 0);
}

uint64_t sub_267032E7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267032EE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267032F44()
{
  result = qword_2800F3180;
  if (!qword_2800F3180)
  {
    sub_267032F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3180);
  }

  return result;
}

unint64_t sub_267032F9C()
{
  result = qword_2800F3178;
  if (!qword_2800F3178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3178);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanKnowledgeTool.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x63696C7078457369, 0xEA00000000007469);
  return v10(v12, 0);
}

uint64_t sub_267033238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703329C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267033300()
{
  result = qword_2800F3190;
  if (!qword_2800F3190)
  {
    sub_267033358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3190);
  }

  return result;
}

unint64_t sub_267033358()
{
  result = qword_2800F3188;
  if (!qword_2800F3188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3188);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E510], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x41746E656D656C65, 0xEE007865646E4974);
  return v10(v12, 0);
}

uint64_t sub_2670335FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267033660(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670336C4()
{
  result = qword_2800F31B0;
  if (!qword_2800F31B0)
  {
    sub_26703371C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F31B0);
  }

  return result;
}

unint64_t sub_26703371C()
{
  result = qword_2800F31A8;
  if (!qword_2800F31A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F31A8);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanOpenTool.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267446510);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E510], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x41746E656D656C65, 0xEE007865646E4974);
  return v11(v15, 0);
}

uint64_t sub_267033AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267033B10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanSearchTool.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267033DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267033E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267033EC4()
{
  result = qword_2800F3160;
  if (!qword_2800F3160)
  {
    sub_267033F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3160);
  }

  return result;
}

unint64_t sub_267033F1C()
{
  result = qword_2800F3158;
  if (!qword_2800F3158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3158);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanTextTool.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x63696C7078457369, 0xEA00000000007469);
  return v10(v12, 0);
}

uint64_t sub_2670341B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703421C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267034280()
{
  result = qword_2800F3170;
  if (!qword_2800F3170)
  {
    sub_2670342D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3170);
  }

  return result;
}

unint64_t sub_2670342D8()
{
  result = qword_2800F3168;
  if (!qword_2800F3168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3168);
  }

  return result;
}

uint64_t static IFTSchemaIFTResolveToolExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7364496C6F6F74, 0xE700000000000000);
  v11(v17, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v16, 0x7364496C6F6F74, 0xE700000000000000);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_287887638);
    sub_26738115C();
  }

  (v13)(v16, 0);
  return v12(v17, 0);
}

uint64_t sub_267034624(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267034688(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670346EC()
{
  result = qword_2800F2E58;
  if (!qword_2800F2E58)
  {
    sub_267034744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2E58);
  }

  return result;
}

unint64_t sub_267034744()
{
  result = qword_2800F2E50;
  if (!qword_2800F2E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2E50);
  }

  return result;
}

uint64_t static IFTSchemaIFTResponseGenerationRequest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267447960);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F2C40, 0x277D58088);
  sub_266ECAF2C(&qword_2800F2C48, &qword_2800F2C40, 0x277D58088);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267447980);
  return v7(v9, 0);
}

uint64_t sub_267034A68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267034ACC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTResponseManifest.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F31B8, 0x277D58038);
  sub_266ECAF2C(&qword_2800F31C0, &qword_2800F31B8, 0x277D58038);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEA00000000007372);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x80000002674479D0);
  return v11(v15, 0);
}

uint64_t sub_267034EA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267034F0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTResponseParameter.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x74696E61666F7270, 0xEF7265746C694679);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x7269757165527369, 0xEA00000000006465);
  return v16(v20, 0);
}

uint64_t sub_2670352E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267035344(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670353A8()
{
  result = qword_2800F31C0;
  if (!qword_2800F31C0)
  {
    sub_267035400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F31C0);
  }

  return result;
}

unint64_t sub_267035400()
{
  result = qword_2800F31B8;
  if (!qword_2800F31B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F31B8);
  }

  return result;
}

uint64_t static IFTSchemaIFTSayExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_267035628()
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
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_2670357CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267035830(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSearchExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x656E4F6B636970, 0xE700000000000000);
  return v10(v12, 0);
}

uint64_t sub_267035B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267035B84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267035BE8()
{
  result = qword_2800F2E38;
  if (!qword_2800F2E38)
  {
    sub_267035C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2E38);
  }

  return result;
}

unint64_t sub_267035C40()
{
  result = qword_2800F2E30;
  if (!qword_2800F2E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2E30);
  }

  return result;
}

uint64_t static IFTSchemaIFTSessionCoordinatorError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  v9 = sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  v24[1] = a1;
  v24[2] = v9;
  sub_26738121C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x726568746FLL, 0xE500000000000000);
  v12(v28, 0);
  sub_26738121C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267447AC0);
  v13(v28, 0);
  sub_26738121C();
  v11(v8, 0, 1, v10);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267447AE0);
  v15(v28, 0);
  sub_26738117C();
  v16 = sub_2673811BC();
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_266ECAD54(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_266ECAD54(v21 > 1, v22 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v22 + 1;
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v14, v27);
  return v16(v28, 0);
}

uint64_t sub_267036118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703617C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSessionError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x726568746FLL, 0xE500000000000000);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F31E0, 0x277D58050);
  sub_266ECAF2C(&qword_2800F31D8, &qword_2800F31E0, 0x277D58050);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267447B50);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F3040, 0x277D57F38);
  sub_266ECAF2C(&qword_2800F3038, &qword_2800F3040, 0x277D57F38);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x4572656E6E616C70, 0xEC000000726F7272);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F2DA8, 0x277D57E20);
  sub_266ECAF2C(&qword_2800F2DA0, &qword_2800F2DA8, 0x277D57E20);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x726F747563657865, 0xED0000726F727245);
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

uint64_t sub_267036818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703687C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSessionStart.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267447BC0);
  return v10(v12, 0);
}

uint64_t sub_267036B70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267036BD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267036C38()
{
  result = qword_2800F2B38;
  if (!qword_2800F2B38)
  {
    sub_267036C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B38);
  }

  return result;
}

unint64_t sub_267036C90()
{
  result = qword_2800F2B30;
  if (!qword_2800F2B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B30);
  }

  return result;
}

uint64_t static IFTSchemaIFTSkipStatement.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267036EB8()
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

uint64_t sub_26703705C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670370C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSortOrder.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267447C40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267447C60, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267447C80, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267037378(uint64_t a1)
{
  v2 = sub_26703747C(&qword_2800F31E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670373E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26703747C(&qword_2800F31E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26703747C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTSortOrder(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTSpeechRequestCandidate.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26703769C()
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

uint64_t sub_267037840(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670378A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStatementId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7865646E69, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_267037B90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267037BF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267037C58()
{
  result = qword_2800F28C8;
  if (!qword_2800F28C8)
  {
    sub_267037CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F28C8);
  }

  return result;
}

unint64_t sub_267037CB0()
{
  result = qword_2800F28C0;
  if (!qword_2800F28C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F28C0);
  }

  return result;
}

uint64_t static IFTSchemaIFTStatementOutcome.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x28223BE20](v0);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2A48, 0x277D57D38);
  sub_266ECAF2C(&qword_2800F2A40, &qword_2800F2A48, 0x277D57D38);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x73736563637573, 0xE700000000000000);
  v9(v33, 0);
  sub_266ECB294(0, &qword_2800F2958, 0x277D57CE8);
  sub_266ECAF2C(&qword_2800F2950, &qword_2800F2958, 0x277D57CE8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v29 = 0xD000000000000012;
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267447D40);
  v10(v33, 0);
  sub_266ECB294(0, &qword_2800F2F98, 0x277D57EC8);
  sub_266ECAF2C(&qword_2800F2F90, &qword_2800F2F98, 0x277D57EC8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267447D60);
  v11(v33, 0);
  sub_266ECB294(0, &qword_2800F2F78, 0x277D57EB8);
  sub_266ECAF2C(&qword_2800F2F70, &qword_2800F2F78, 0x277D57EB8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267447D80);
  v12(v33, 0);
  sub_266ECB294(0, &qword_2800F2F88, 0x277D57EC0);
  sub_266ECAF2C(&qword_2800F2F80, &qword_2800F2F88, 0x277D57EC0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267447DA0);
  v13(v33, 0);
  sub_266ECB294(0, &qword_2800F2FB0, 0x277D57ED0);
  sub_266ECAF2C(&qword_2800F2FA8, &qword_2800F2FB0, 0x277D57ED0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267447DC0);
  v14(v33, 0);
  sub_266ECB294(0, &qword_2800F2F68, 0x277D57EB0);
  sub_266ECAF2C(&qword_2800F2F60, &qword_2800F2F68, 0x277D57EB0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x8000000267447DE0);
  v15(v33, 0);
  sub_266ECB294(0, &qword_2800F29F8, 0x277D57D28);
  sub_266ECAF2C(&qword_2800F29F0, &qword_2800F29F8, 0x277D57D28);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267447E00);
  v16(v33, 0);
  sub_266ECB294(0, &qword_2800F31F0, 0x277D58110);
  sub_266ECAF2C(&qword_2800F31F8, &qword_2800F31F0, 0x277D58110);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, v29, 0x800000026742E6C0);
  v17(v33, 0);
  sub_266ECB294(0, &qword_2800F2998, 0x277D57D00);
  sub_266ECAF2C(&qword_2800F2990, &qword_2800F2998, 0x277D57D00);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x6572756C696166, 0xE700000000000000);
  v18(v33, 0);
  sub_266ECB294(0, &qword_2800F3200, 0x277D58160);
  sub_266ECAF2C(&qword_2800F3208, &qword_2800F3200, 0x277D58160);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v19 = v30;
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267447E20);
  v20(v33, 0);
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
  (*(v31 + 32))(v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27, v19, v32);
  return v21(v33, 0);
}

uint64_t sub_2670388C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703892C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStatementResult.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v36 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v13 = *MEMORY[0x277D3E4E8];
  v14 = *(v5 + 104);
  v35 = v5 + 104;
  v37 = v14;
  v32 = v8;
  v14(v8, v13, v4);
  v40[0] = 1;
  sub_26738114C();
  v15 = sub_26738116C();
  v33 = *(v15 - 8);
  v17 = v33 + 56;
  v16 = *(v33 + 56);
  v16(v12, 0, 1, v15);
  v18 = sub_2673811AC();
  sub_266EC637C(v12, 0x737473697865, 0xE600000000000000);
  v18(v40, 0);
  v34 = "pretedStatementResult";
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  v19 = sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  v38 = a1;
  sub_26738120C();
  v16(v12, 0, 1, v15);
  v20 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000011, v34 | 0x8000000000000000);
  v20(v40, 0);
  v34 = v19;
  sub_26738120C();
  v16(v12, 0, 1, v15);
  v21 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, 0x8000000267446530);
  v21(v40, 0);
  sub_266ECB294(0, &qword_2800F3210, 0x277D58090);
  sub_266ECAF2C(&qword_2800F3218, &qword_2800F3210, 0x277D58090);
  sub_26738120C();
  v16(v12, 0, 1, v15);
  v22 = sub_2673811AC();
  sub_266EC637C(v12, 0x64616F6C796170, 0xE700000000000000);
  v22(v40, 0);
  v37(v32, *MEMORY[0x277D3E530], v36);
  v40[0] = 1;
  sub_26738114C();
  v36 = v17;
  v37 = v16;
  v16(v12, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v12, 0x64496C6F6F74, 0xE600000000000000);
  v23(v40, 0);
  v35 = a2;
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v39, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v33 + 48))(v26, 1, v15))
  {
    sub_266ECB128(&unk_287887668);
    sub_26738115C();
  }

  (v25)(v39, 0);
  v24(v40, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v27 = v37;
  (v37)(v12, 0, 1, v15);
  v28 = sub_2673811AC();
  sub_266EC637C(v12, 0x76456E6F69746361, 0xED00006449746E65);
  v28(v40, 0);
  sub_26738120C();
  v27(v12, 0, 1, v15);
  v29 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x8000000267446550);
  return v29(v40, 0);
}

uint64_t sub_267039158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670391BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStatementResultPayload.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F20, 0x277D58080);
  sub_266ECAF2C(&qword_2800F2F28, &qword_2800F2F20, 0x277D58080);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F31D0, 0x277D58030);
  sub_266ECAF2C(&qword_2800F31C8, &qword_2800F31D0, 0x277D58030);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65736E6F70736572, 0xE800000000000000);
  return v7(v9, 0);
}

uint64_t sub_267039528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703958C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStructuredSearchExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x646E617078457369, 0xEA00000000006465);
  v11(v16, 0);
  sub_266ECB294(0, &qword_2800F3220, 0x277D580A8);
  sub_266ECAF2C(&qword_2800F3228, &qword_2800F3220, 0x277D580A8);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x69747265706F7270, 0xEA00000000007365);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F3230, 0x277D58130);
  sub_266ECAF2C(&qword_2800F3238, &qword_2800F3230, 0x277D58130);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x79546E7275746572, 0xEA00000000006570);
  v13(v16, 0);
  sub_266ECB294(0, &qword_2800F3240, 0x277D580A0);
  sub_266ECAF2C(&qword_2800F3248, &qword_2800F3240, 0x277D580A0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574656D61726170, 0xEA00000000007372);
  return v14(v16, 0);
}

uint64_t sub_267039B18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267039B7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStructuredSearchExpressionParameters.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267447F50);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6574617473, 0xEB00000000644974);
  return v12(v14, 0);
}

uint64_t sub_267039F5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267039FC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStructuredSearchProperty.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_287887698);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, 0x8000000267447FB0);
  return v17(v21, 0);
}

uint64_t sub_26703A43C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703A4A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}