uint64_t sub_267253CE8(uint64_t a1)
{
  v2 = sub_267253DEC(&qword_2800F8A88);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267253D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_267253DEC(&qword_2800F8A88);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267253DEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEMessageContactMatch(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSEMessageSignalGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8848, 0x277D5A1A0);
  sub_266ECAF2C(&qword_2800F8850, &qword_2800F8848, 0x277D5A1A0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xEC0000006C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F8A80, 0x277D5A1F8);
  sub_266ECAF2C(&qword_2800F8A78, &qword_2800F8A80, 0x277D5A1F8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x536567617373656DLL, 0xED00006C616E6769);
  return v7(v9, 0);
}

uint64_t sub_26725410C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267254170(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PSESchemaPSEMessageUserFollowupAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267486060, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267486090, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x80000002674860C0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x80000002674860F0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267486120, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267254514(uint64_t a1)
{
  v2 = sub_267254618(&qword_2800F8A90);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725457C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267254618(&qword_2800F8A90);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267254618(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSEMessageUserFollowupAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSESiriEngagementTaskSuccess.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267486190, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674861C0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x80000002674861F0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267486220, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x8000000267486250, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267254954(uint64_t a1)
{
  v2 = sub_267254A58(&qword_2800F8A98);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672549BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267254A58(&qword_2800F8A98);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267254A58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSESiriEngagementTaskSuccess(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PSESchemaPSETriggerOrigin.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674862B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674862D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x80000002674862F0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267486310, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267254D24(uint64_t a1)
{
  v2 = sub_267254E28(&qword_2800F8AA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267254D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267254E28(&qword_2800F8AA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267254E28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PSESchemaPSETriggerOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDAppPreLaunchTriggered.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.qd.QDAppPreLaunchTriggered";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267486380);
  return v16(v21, 0);
}

uint64_t sub_26725519C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267255200(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267255264()
{
  result = qword_2800F8AA8;
  if (!qword_2800F8AA8)
  {
    sub_2672552BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8AA8);
  }

  return result;
}

unint64_t sub_2672552BC()
{
  result = qword_2800F8AB0;
  if (!qword_2800F8AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8AB0);
  }

  return result;
}

uint64_t static QDSchemaQDCaller.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000010, 0x80000002674863C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x80000002674863E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267486400, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267486420, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000010, 0x8000000267486450, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267255604(uint64_t a1)
{
  v2 = sub_267255708(&qword_2800F8AC0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725566C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267255708(&qword_2800F8AC0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267255708(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDCaller(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8AC8, 0x277D5A218);
  sub_266ECAF2C(&qword_2800F8AD0, &qword_2800F8AC8, 0x277D5A218);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F8AD8, 0x277D5A228);
  sub_266ECAF2C(&qword_2800F8AE0, &qword_2800F8AD8, 0x277D5A228);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674864A0);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F8AE8, 0x277D5A248);
  sub_266ECAF2C(&qword_2800F8AF0, &qword_2800F8AE8, 0x277D5A248);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674864C0);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800F8AF8, 0x277D5A2C8);
  sub_266ECAF2C(&qword_2800F8B00, &qword_2800F8AF8, 0x277D5A2C8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x654773656C707574, 0xEF6465746172656ELL);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800F8B08, 0x277D5A250);
  sub_266ECAF2C(&qword_2800F8B10, &qword_2800F8B08, 0x277D5A250);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x7365697469746E65, 0xEE0064656B6E6152);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F8B18, 0x277D5A280);
  sub_266ECAF2C(&qword_2800F8B20, &qword_2800F8B18, 0x277D5A280);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674864E0);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800F8B28, 0x277D5A240);
  sub_266ECAF2C(&qword_2800F8B30, &qword_2800F8B28, 0x277D5A240);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267486500);
  v15(v31, 0);
  sub_266ECB294(0, &qword_2800F8AB0, 0x277D5A208);
  sub_266ECAF2C(&qword_2800F8AA8, &qword_2800F8AB0, 0x277D5A208);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267486520);
  v16(v31, 0);
  sub_266ECB294(0, &qword_2800F8B38, 0x277D5A2C0);
  sub_266ECAF2C(&qword_2800F8B40, &qword_2800F8B38, 0x277D5A2C0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = v28;
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267486540);
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
  sub_266ECB128(&unk_28788D5A8);
  return sub_2673811CC();
}

uint64_t sub_267256168(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267256200()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672562CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267256330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267256390(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8B48, &qword_2800F8B50, 0x277D5A210);
  a1[2] = sub_266ECAF2C(&qword_2800F8B58, &qword_2800F8B50, 0x277D5A210);
  result = sub_266ECAF2C(&qword_2800F8B60, &qword_2800F8B50, 0x277D5A210);
  a1[3] = result;
  return result;
}

uint64_t static QDSchemaQDClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682531441, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682531441, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788D5E0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267256724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267256788(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDCollectionCompleted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267256A74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267256AD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267256B3C()
{
  result = qword_2800F8B70;
  if (!qword_2800F8B70)
  {
    sub_267256B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8B70);
  }

  return result;
}

unint64_t sub_267256B94()
{
  result = qword_2800F8B78;
  if (!qword_2800F8B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8B78);
  }

  return result;
}

uint64_t static QDSchemaQDCollectionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8B80, 0x277D5A238);
  sub_266ECAF2C(&qword_2800F8B88, &qword_2800F8B80, 0x277D5A238);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8B78, 0x277D5A220);
  sub_266ECAF2C(&qword_2800F8B70, &qword_2800F8B78, 0x277D5A220);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F8B90, 0x277D5A230);
  sub_266ECAF2C(&qword_2800F8B98, &qword_2800F8B90, 0x277D5A230);
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

uint64_t sub_2672570F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725715C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDCollectionFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6D6F44726F727265, 0xEB000000006E6961);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E508], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xE900000000000065);
  return v15(v18, 0);
}

uint64_t sub_26725752C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267257590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672575F4()
{
  result = qword_2800F8B98;
  if (!qword_2800F8B98)
  {
    sub_26725764C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8B98);
  }

  return result;
}

unint64_t sub_26725764C()
{
  result = qword_2800F8B90;
  if (!qword_2800F8B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8B90);
  }

  return result;
}

uint64_t static QDSchemaQDCollectionStarted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for QDSchemaQDCaller(0);
  sub_267257AC0(&qword_2800F8AB8, type metadata accessor for QDSchemaQDCaller);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7372656C6C6163, 0xE700000000000000);
  return v12(v14, 0);
}

uint64_t sub_2672579B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267257A18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267257AC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267257B08()
{
  result = qword_2800F8B80;
  if (!qword_2800F8B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8B80);
  }

  return result;
}

uint64_t static QDSchemaQDContextStatementIdsReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_26738122C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267486690);
  v9(v20, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v19, 0xD000000000000013, 0x8000000267486690);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788D610);
    sub_26738115C();
  }

  (v11)(v19, 0);
  v10(v20, 0);
  (*(v16 + 104))(v17, *MEMORY[0x277D3E538], v18);
  v20[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x80000002674866B0);
  return v13(v20, 0);
}

uint64_t sub_267257F40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267257FA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDDataProtectionClass.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267486700, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267486720, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267486740, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267486760, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267486780, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x80000002674867A0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x80000002674867C0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_267258430(uint64_t a1)
{
  v2 = sub_267258534(&qword_2800F8BA8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267258498(uint64_t a1, uint64_t a2)
{
  v4 = sub_267258534(&qword_2800F8BA8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267258534(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDDataProtectionClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDEntitiesCollected.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v26 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v8 = sub_26738116C();
  v27 = *(v8 - 8);
  v9 = *(v27 + 56);
  v23[1] = v27 + 56;
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6576656972746572, 0xEE00736C6F6F5464);
  v10(v29, 0);
  v25 = "iri.qd.QDEntitiesCollected";
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v25 | 0x8000000000000000);
  v11(v29, 0);
  v25 = a1;
  sub_26738122C();
  v24 = v9;
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267486830);
  v12(v29, 0);
  v26 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v28, 0xD000000000000010, 0x8000000267486830);
  v15 = *(v27 + 48);
  v27 += 48;
  v23[0] = v15;
  if (!v15(v16, 1, v8))
  {
    sub_266ECB128(&unk_28788D638);
    sub_26738115C();
  }

  (v14)(v28, 0);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800F8BB0, 0x277D5A268);
  sub_266ECAF2C(&qword_2800F8BB8, &qword_2800F8BB0, 0x277D5A268);
  sub_26738122C();
  v24(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6465726975716572, 0xEF747865746E6F43);
  v17(v29, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v28, 0x6465726975716572, 0xEF747865746E6F43);
  if (!(v23[0])(v20, 1, v8))
  {
    sub_266ECB128(&unk_28788D660);
    sub_26738115C();
  }

  (v19)(v28, 0);
  v18(v29, 0);
  sub_26738122C();
  v24(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x747865746E6F63, 0xE700000000000000);
  return v21(v29, 0);
}

uint64_t sub_267258B5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267258BC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDEntitiesRanked.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8BC0, 0x277D5A270);
  sub_266ECAF2C(&qword_2800F8BC8, &qword_2800F8BC0, 0x277D5A270);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6576656972746572, 0xEE00736C6F6F5464);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F8BD0, 0x277D5A278);
  sub_266ECAF2C(&qword_2800F8BD8, &qword_2800F8BD0, 0x277D5A278);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267486810);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F8BB0, 0x277D5A268);
  sub_266ECAF2C(&qword_2800F8BB8, &qword_2800F8BB0, 0x277D5A268);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267486830);
  return v8(v10, 0);
}

uint64_t sub_267259014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267259078(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDEntityContextType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x80000002674868B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v194;

  v1(v226, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674868D0, v11);
  v12 = *v9;
  *v9 = v195;

  v7(v226, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267486900, v17);
  v18 = *v15;
  *v15 = v196;

  v13(v226, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267486930, v23);
  v24 = *v21;
  *v21 = v197;

  v19(v226, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267486960, v29);
  v30 = *v27;
  *v27 = v198;

  v25(v226, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267486990, v35);
  v36 = *v33;
  *v33 = v199;

  v31(v226, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ELL, 0x80000002674869C0, v41);
  v42 = *v39;
  *v39 = v200;

  v37(v226, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x80000002674869F0, v47);
  v48 = *v45;
  *v45 = v201;

  v43(v226, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x8000000267486A20, v53);
  v54 = *v51;
  *v51 = v202;

  v49(v226, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267486A50, v59);
  v60 = *v57;
  *v57 = v203;

  v55(v226, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000033, 0x8000000267486A80, v65);
  v66 = *v63;
  *v63 = v204;

  v61(v226, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000032, 0x8000000267486AC0, v71);
  v72 = *v69;
  *v69 = v205;

  v67(v226, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000034, 0x8000000267486B00, v77);
  v78 = *v75;
  *v75 = v206;

  v73(v226, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000002ELL, 0x8000000267486B40, v83);
  v84 = *v81;
  *v81 = v207;

  v79(v226, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v208 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000030, 0x8000000267486B70, v89);
  v90 = *v87;
  *v87 = v208;

  v85(v226, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000024, 0x8000000267486BB0, v95);
  v96 = *v93;
  *v93 = v209;

  v91(v226, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v210 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000022, 0x8000000267486BE0, v101);
  v102 = *v99;
  *v99 = v210;

  v97(v226, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v211 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000002ALL, 0x8000000267486C10, v107);
  v108 = *v105;
  *v105 = v211;

  v103(v226, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v212 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000027, 0x8000000267486C40, v113);
  v114 = *v111;
  *v111 = v212;

  v109(v226, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v213 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000002BLL, 0x8000000267486C70, v119);
  v120 = *v117;
  *v117 = v213;

  v115(v226, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v214 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000030, 0x8000000267486CA0, v125);
  v126 = *v123;
  *v123 = v214;

  v121(v226, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000029, 0x8000000267486CE0, v131);
  v132 = *v129;
  *v129 = v215;

  v127(v226, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000029, 0x8000000267486D10, v137);
  v138 = *v135;
  *v135 = v216;

  v133(v226, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v217 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000028, 0x8000000267486D40, v143);
  v144 = *v141;
  *v141 = v217;

  v139(v226, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v218 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000028, 0x8000000267486D70, v149);
  v150 = *v147;
  *v147 = v218;

  v145(v226, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v219 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000002ALL, 0x8000000267486DA0, v155);
  v156 = *v153;
  *v153 = v219;

  v151(v226, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v220 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000028, 0x8000000267486DD0, v161);
  v162 = *v159;
  *v159 = v220;

  v157(v226, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v221 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000028, 0x8000000267486E00, v167);
  v168 = *v165;
  *v165 = v221;

  v163(v226, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v222 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000032, 0x8000000267486E30, v173);
  v174 = *v171;
  *v171 = v222;

  v169(v226, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v223 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000002FLL, 0x8000000267486E70, v179);
  v180 = *v177;
  *v177 = v223;

  v175(v226, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v224 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000025, 0x8000000267486EA0, v185);
  v186 = *v183;
  *v183 = v224;

  v181(v226, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v225 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000021, 0x8000000267486ED0, v191);
  v192 = *v189;
  *v189 = v225;

  return v187(v226, 0);
}

uint64_t sub_267259FFC(uint64_t a1)
{
  v2 = sub_26725A100(&qword_2800F8BE0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725A064(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725A100(&qword_2800F8BE0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725A100(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDEntityContextType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDEntityMatch.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v33 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v2 + 104);
  v35 = v1;
  v11(v5, v10, v1);
  v31 = v11;
  v32 = v2 + 104;
  v37[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v34 = *(v12 - 8);
  v13 = *(v34 + 56);
  v28 = v12;
  v29 = v13;
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x646E497472617473, 0xEA00000000007865);
  v14(v37, 0);
  v30 = v5;
  v11(v5, v10, v1);
  v37[0] = 1;
  sub_26738114C();
  v15 = v28;
  v16 = v29;
  v29(v9, 0, 1, v28);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7865646E49646E65, 0xE800000000000000);
  v17(v37, 0);
  type metadata accessor for QDSchemaQDMatchingTransform(0);
  sub_26725A934(&qword_2800F8BE8, type metadata accessor for QDSchemaQDMatchingTransform);
  sub_26738122C();
  v16(v9, 0, 1, v15);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267486F30);
  v18(v37, 0);
  type metadata accessor for QDSchemaQDSpanMatcherType(0);
  sub_26725A934(&qword_2800F8BF0, type metadata accessor for QDSchemaQDSpanMatcherType);
  sub_26738120C();
  v16(v9, 0, 1, v15);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265686374616DLL, 0xE700000000000000);
  v19(v37, 0);
  v20 = v30;
  v21 = v31;
  v31(v30, *MEMORY[0x277D3E500], v35);
  v37[0] = 1;
  sub_26738114C();
  v16(v9, 0, 1, v15);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F6353686374616DLL, 0xEA00000000006572);
  v22(v37, 0);
  v21(v20, *MEMORY[0x277D3E530], v35);
  v37[0] = 1;
  sub_26738114C();
  v16(v9, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267486F50);
  v23(v37, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v36, 0xD000000000000011, 0x8000000267486F50);
  if (!(*(v34 + 48))(v26, 1, v15))
  {
    sub_266ECB128(&unk_28788D688);
    sub_26738115C();
  }

  (v25)(v36, 0);
  return v24(v37, 0);
}

uint64_t sub_26725A828(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725A88C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26725A934(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26725A97C()
{
  result = qword_2800F8C00;
  if (!qword_2800F8C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8C00);
  }

  return result;
}

uint64_t static QDSchemaQDEntityType.makeTypeManifestAndEnsureFields(in:)()
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
    sub_266ECB128(&unk_28788D6B8);
    sub_26738115C();
  }

  (v14)(v24, 0);
  v13(v25, 0);
  v20(v4, v21, v23);
  v25[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267486FA0);
  return v16(v25, 0);
}

uint64_t sub_26725AD98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725ADFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725AE60()
{
  result = qword_2800EF3A0;
  if (!qword_2800EF3A0)
  {
    sub_26725AEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF3A0);
  }

  return result;
}

unint64_t sub_26725AEB8()
{
  result = qword_2800EF398;
  if (!qword_2800EF398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF398);
  }

  return result;
}

uint64_t static QDSchemaQDMatchingTransform.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267486FF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267487010, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267487030, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267487050, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267487080, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x80000002674870B0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000026, 0x80000002674870E0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x8000000267487110, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_26725B34C(uint64_t a1)
{
  v2 = sub_26725B450(&qword_2800F8C08);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725B3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725B450(&qword_2800F8C08);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725B450(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDMatchingTransform(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDRetrievedContextStatement.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267487180);
  v6(v10, 0);
  type metadata accessor for QDSchemaQDEntityContextType(0);
  sub_26725B8B8();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x54747865746E6F63, 0xEB00000000657079);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x70795465756C6176, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_26725B7F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725B858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725B8B8()
{
  result = qword_2800EF390;
  if (!qword_2800EF390)
  {
    type metadata accessor for QDSchemaQDEntityContextType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF390);
  }

  return result;
}

uint64_t static QDSchemaQDRetrievedTool.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v32 = sub_26738113C();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v30 = "edContextStatement";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v31 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  (v12)(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v30 | 0x8000000000000000);
  v13(v34, 0);
  v14 = *MEMORY[0x277D3E530];
  v27 = *(v2 + 104);
  v28 = v2 + 104;
  v27(v5, v14, v32);
  v34[0] = 1;
  v29 = v5;
  sub_26738114C();
  v30 = v12;
  v26[1] = v11 + 56;
  (v12)(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496C6F6F74, 0xE600000000000000);
  v15(v34, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v33, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v11 + 48))(v18, 1, v10))
  {
    sub_266ECB128(&unk_28788D6E8);
    sub_26738115C();
  }

  (v17)(v33, 0);
  v16(v34, 0);
  type metadata accessor for QDSchemaQDToolSubtype(0);
  sub_26725C200(&qword_2800F8C10, type metadata accessor for QDSchemaQDToolSubtype);
  sub_26738120C();
  v19 = v30;
  (v30)(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x65707954627573, 0xE700000000000000);
  v20(v34, 0);
  v27(v29, *MEMORY[0x277D3E500], v32);
  v34[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6972616C696D6973, 0xEF65726F63537974);
  v21(v34, 0);
  type metadata accessor for QDSchemaQDToolSelectionCriteria(0);
  sub_26725C200(&qword_2800F8C18, type metadata accessor for QDSchemaQDToolSelectionCriteria);
  sub_26738120C();
  v19(v9, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674871D0);
  v22(v34, 0);
  sub_266ECB294(0, &qword_2800F8C20, 0x277D5A2B8);
  sub_266ECAF2C(&qword_2800F8C28, &qword_2800F8C20, 0x277D5A2B8);
  sub_26738120C();
  v19(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x72756F536C6F6F74, 0xEA00000000006563);
  v23(v34, 0);
  sub_266ECB294(0, &qword_2800F8C30, 0x277D5A2A0);
  sub_266ECAF2C(&qword_2800F8C38, &qword_2800F8C30, 0x277D5A2A0);
  sub_26738120C();
  v19(v9, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x696665446C6F6F74, 0xEE006E6F6974696ELL);
  return v24(v34, 0);
}

uint64_t sub_26725C13C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725C1A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26725C200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static QDSchemaQDSpanMatchedEntity.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267487180);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x70795465756C6176, 0xE900000000000065);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F8C00, 0x277D5A258);
  sub_266ECAF2C(&qword_2800F8BF8, &qword_2800F8C00, 0x277D5A258);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365686374616DLL, 0xE700000000000000);
  v8(v11, 0);
  type metadata accessor for QDSchemaQDDataProtectionClass(0);
  sub_26725C778();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267487220);
  return v9(v11, 0);
}

uint64_t sub_26725C6B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725C718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725C778()
{
  result = qword_2800F8BA0;
  if (!qword_2800F8BA0)
  {
    type metadata accessor for QDSchemaQDDataProtectionClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8BA0);
  }

  return result;
}

uint64_t static QDSchemaQDSpanMatcherType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267487270, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267487290, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674872C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26725CA28(uint64_t a1)
{
  v2 = sub_26725CB2C(&qword_2800F8C40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725CA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725CB2C(&qword_2800F8C40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725CB2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDSpanMatcherType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDSubComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267487320, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267487340, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267487360, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267487380, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674873B0, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674873E0, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x8000000267487400, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267487420, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267487440, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267487460, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x8000000267487480, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x80000002674874B0, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_26725D188(uint64_t a1)
{
  v2 = sub_26725D28C(&qword_2800F8C50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725D1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725D28C(&qword_2800F8C50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725D28C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDSubComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDSubComponentContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8C58, 0x277D5A298);
  sub_266ECAF2C(&qword_2800F8C60, &qword_2800F8C58, 0x277D5A298);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F8C68, 0x277D5A288);
  sub_266ECAF2C(&qword_2800F8C70, &qword_2800F8C68, 0x277D5A288);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F8C78, 0x277D5A290);
  sub_266ECAF2C(&qword_2800F8C80, &qword_2800F8C78, 0x277D5A290);
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

uint64_t sub_26725D8AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725D910(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDSubComponentEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26725DBFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725DC60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725DCC4()
{
  result = qword_2800F8C70;
  if (!qword_2800F8C70)
  {
    sub_26725DD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8C70);
  }

  return result;
}

unint64_t sub_26725DD1C()
{
  result = qword_2800F8C68;
  if (!qword_2800F8C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8C68);
  }

  return result;
}

uint64_t static QDSchemaQDSubComponentFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6D6F44726F727265, 0xEB000000006E6961);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E508], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xE900000000000065);
  return v15(v18, 0);
}

uint64_t sub_26725E094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725E0F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725E15C()
{
  result = qword_2800F8C80;
  if (!qword_2800F8C80)
  {
    sub_26725E1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8C80);
  }

  return result;
}

unint64_t sub_26725E1B4()
{
  result = qword_2800F8C78;
  if (!qword_2800F8C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8C78);
  }

  return result;
}

uint64_t static QDSchemaQDSubComponentStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for QDSchemaQDSubComponent(0);
  sub_26725E664(&qword_2800F8C48, type metadata accessor for QDSchemaQDSubComponent);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F706D6F43627573, 0xEC000000746E656ELL);
  return v5(v7, 0);
}

uint64_t sub_26725E3C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for QDSchemaQDSubComponent(0);
  sub_26725E664(&qword_2800F8C48, type metadata accessor for QDSchemaQDSubComponent);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F706D6F43627573, 0xEC000000746E656ELL);
  return v5(v7, 0);
}

uint64_t sub_26725E558(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725E5BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26725E664(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26725E6AC()
{
  result = qword_2800F8C58;
  if (!qword_2800F8C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8C58);
  }

  return result;
}

uint64_t static QDSchemaQDToolboxSizeReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6F6F546C61746F74, 0xEE00746E756F436CLL);
  return v10(v12, 0);
}

uint64_t sub_26725E950(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725E9B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26725EA18()
{
  result = qword_2800F8B40;
  if (!qword_2800F8B40)
  {
    sub_26725EA70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8B40);
  }

  return result;
}

unint64_t sub_26725EA70()
{
  result = qword_2800F8B38;
  if (!qword_2800F8B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8B38);
  }

  return result;
}

uint64_t static QDSchemaQDToolDefinition.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8C88, 0x277D5A2B0);
  sub_266ECAF2C(&qword_2800F8C90, &qword_2800F8C88, 0x277D5A2B0);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEA00000000007372);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800F8C98, 0x277D5A2A8);
  sub_266ECAF2C(&qword_2800F8CA0, &qword_2800F8C98, 0x277D5A2A8);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74757074756FLL, 0xE600000000000000);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E530], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7470697263736564, 0xEB000000006E6F69);
  return v12(v16, 0);
}

uint64_t sub_26725EEBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725EF20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDToolOutputDefinition.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954797469746E65, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_26725F19C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954797469746E65, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_26725F33C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725F3A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDToolParameterDefinition.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24 = a1;
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
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v20[1] = v2 + 104;
  v22 = v10;
  v23 = v1;
  v11(v5, v10, v1);
  v21 = v11;
  v25[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v20[0] = v13 + 56;
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 7955819, 0xE300000000000000);
  v15(v25, 0);
  v11(v5, v10, v1);
  v25[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 1701667182, 0xE400000000000000);
  v16(v25, 0);
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954797469746E65, 0xEA00000000006570);
  v17(v25, 0);
  v21(v5, v22, v23);
  v25[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7470697263736564, 0xEB000000006E6F69);
  return v18(v25, 0);
}

uint64_t sub_26725F8F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26725F95C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDToolSelectionCriteria.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674876B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x80000002674876D0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267487700, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267487730, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x8000000267487760, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002FLL, 0x8000000267487790, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26725FD68(uint64_t a1)
{
  v2 = sub_26725FE6C(&qword_2800F8CA8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26725FDD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26725FE6C(&qword_2800F8CA8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26725FE6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDToolSelectionCriteria(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDToolSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8BD0, 0x277D5A278);
  sub_266ECAF2C(&qword_2800F8BD8, &qword_2800F8BD0, 0x277D5A278);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6374614D6E617073, 0xEB00000000736568);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x80000002674877F0);
  return v7(v9, 0);
}

uint64_t sub_267260188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672601EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static QDSchemaQDToolSubtype.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267487840, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267487860, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267487880, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x80000002674878A0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x80000002674878C0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x80000002674878E0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2672605F8(uint64_t a1)
{
  v2 = sub_2672606FC(&qword_2800F8CB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267260660(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672606FC(&qword_2800F8CB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672606FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for QDSchemaQDToolSubtype(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static QDSchemaQDTuplesGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v19[1] = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v21 = v3 + 104;
  v12(v6, v11, v2);
  v22[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v20 = v13;
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x664F7265626D756ELL, 0xEE0073656C707554);
  v15(v22, 0);
  v19[0] = "iri.qd.QDTuplesGenerated";
  v12(v6, v11, v2);
  v22[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v19[0] | 0x8000000000000000);
  v16(v22, 0);
  v12(v6, *MEMORY[0x277D3E4E8], v2);
  v22[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v20);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267487950);
  return v17(v22, 0);
}

uint64_t sub_267260B44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267260BA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267260C0C()
{
  result = qword_2800F8B00;
  if (!qword_2800F8B00)
  {
    sub_267260C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8B00);
  }

  return result;
}

unint64_t sub_267260C64()
{
  result = qword_2800F8AF8;
  if (!qword_2800F8AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8AF8);
  }

  return result;
}

uint64_t static READSchemaREADClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8CB8, 0x277D5A2D8);
  sub_266ECAF2C(&qword_2800F8CC0, &qword_2800F8CB8, 0x277D5A2D8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F8CC8, 0x277D5A300);
  sub_266ECAF2C(&qword_2800F8CD0, &qword_2800F8CC8, 0x277D5A300);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x80000002674879A0);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F8CD8, 0x277D5A308);
  sub_266ECAF2C(&qword_2800F8CE0, &qword_2800F8CD8, 0x277D5A308);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000024, 0x80000002674879C0);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F8CE8, 0x277D5A2E0);
  sub_266ECAF2C(&qword_2800F8CF0, &qword_2800F8CE8, 0x277D5A2E0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x80000002674879F0);
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
  sub_266ECB128(&unk_28788D718);
  return sub_2673811CC();
}

uint64_t sub_26726128C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267261324()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672613F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267261454(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672614B4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8CF8, &qword_2800F8D00, 0x277D5A2D0);
  a1[2] = sub_266ECAF2C(&qword_2800F8D08, &qword_2800F8D00, 0x277D5A2D0);
  result = sub_266ECAF2C(&qword_2800F8D10, &qword_2800F8D00, 0x277D5A2D0);
  a1[3] = result;
  return result;
}

uint64_t static READSchemaREADClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x644964616572, 0xE600000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x644964616572, 0xE600000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788D750);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26726184C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672618B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static READSchemaREADPlaybackSessionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8D20, 0x277D5A2F8);
  sub_266ECAF2C(&qword_2800F8D28, &qword_2800F8D20, 0x277D5A2F8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F8D30, 0x277D5A2E8);
  sub_266ECAF2C(&qword_2800F8D38, &qword_2800F8D30, 0x277D5A2E8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F8D40, 0x277D5A2F0);
  sub_266ECAF2C(&qword_2800F8D48, &qword_2800F8D40, 0x277D5A2F0);
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

uint64_t sub_267261F30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267261F94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static READSchemaREADPlaybackSessionEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "ybackSessionEnded";
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x7275446C61746F74, 0xED00006E6F697461);
  return v16(v21, 0);
}

uint64_t sub_267262370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672623D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267262438()
{
  result = qword_2800F8D38;
  if (!qword_2800F8D38)
  {
    sub_267262490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D38);
  }

  return result;
}

unint64_t sub_267262490()
{
  result = qword_2800F8D30;
  if (!qword_2800F8D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D30);
  }

  return result;
}

uint64_t static READSchemaREADPlaybackSessionFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26726272C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267262790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672627F4()
{
  result = qword_2800F8D48;
  if (!qword_2800F8D48)
  {
    sub_26726284C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D48);
  }

  return result;
}

unint64_t sub_26726284C()
{
  result = qword_2800F8D40;
  if (!qword_2800F8D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D40);
  }

  return result;
}

uint64_t static READSchemaREADPlaybackSessionStartedOrChanged.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v18 = sub_26738113C();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v17 = *MEMORY[0x277D3E500];
  v16 = *(v1 + 104);
  v16(v4);
  v20[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267487B70);
  v11(v20, 0);
  sub_266ECB294(0, &qword_2800F8D50, 0x277D5B138);
  sub_266ECAF2C(&qword_2800F8D58, &qword_2800F8D50, 0x277D5B138);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E496F69647561, 0xEE00656361667265);
  v12(v20, 0);
  (v16)(v4, v17, v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D756C6F76, 0xE600000000000000);
  v13(v20, 0);
  type metadata accessor for READSchemaREADPlaybackState(0);
  sub_267262DF0();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267487B90);
  return v14(v20, 0);
}

uint64_t sub_267262D2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267262D90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267262DF0()
{
  result = qword_2800F8D60;
  if (!qword_2800F8D60)
  {
    type metadata accessor for READSchemaREADPlaybackState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D60);
  }

  return result;
}

uint64_t static READSchemaREADPlaybackState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267487BE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267487C00, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267487C20, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267487C40, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267487C60, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267263188(uint64_t a1)
{
  v2 = sub_26726328C(&qword_2800F8D68);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672631F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26726328C(&qword_2800F8D68);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26726328C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for READSchemaREADPlaybackState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static READSchemaREADRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8D70, 0x277D5A318);
  sub_266ECAF2C(&qword_2800F8D78, &qword_2800F8D70, 0x277D5A318);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
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

uint64_t sub_267263644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672636A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static READSchemaREADRequestPreprocessingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8D80, 0x277D5A310);
  sub_266ECAF2C(&qword_2800F8D88, &qword_2800F8D80, 0x277D5A310);
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

uint64_t sub_267263AB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267263B1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static READSchemaREADRequestPreprocessingEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v19 = sub_26738113C();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = "uestPreprocessingEnded";
  v20 = *MEMORY[0x277D3E538];
  v8 = *(v0 + 104);
  v8(v3);
  v17 = v8;
  v21[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = v10;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v18 | 0x8000000000000000);
  v12(v21, 0);
  v13 = v19;
  (v8)(v3, v20, v19);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x636E617265747475, 0xEE00746E756F4365);
  v14(v21, 0);
  (v17)(v3, *MEMORY[0x277D3E500], v13);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267487D50);
  return v15(v21, 0);
}

uint64_t sub_267263FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267264028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726408C()
{
  result = qword_2800F8D88;
  if (!qword_2800F8D88)
  {
    sub_2672640E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8D88);
  }

  return result;
}

unint64_t sub_2672640E4()
{
  result = qword_2800F8D80;
  if (!qword_2800F8D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D80);
  }

  return result;
}

uint64_t static READSchemaREADRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for READSchemaREADRequestTrigger(0);
  sub_267264584(&qword_2800F8D90, type metadata accessor for READSchemaREADRequestTrigger);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656767697274, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672642F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for READSchemaREADRequestTrigger(0);
  sub_267264584(&qword_2800F8D90, type metadata accessor for READSchemaREADRequestTrigger);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656767697274, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_267264478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672644DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267264584(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672645CC()
{
  result = qword_2800F8D70;
  if (!qword_2800F8D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8D70);
  }

  return result;
}

uint64_t static READSchemaREADRequestTrigger.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267487DD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267487DF0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267487E10, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26726482C(uint64_t a1)
{
  v2 = sub_267264930(&qword_2800F8D98);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267264894(uint64_t a1, uint64_t a2)
{
  v4 = sub_267264930(&qword_2800F8D98);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267264930(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for READSchemaREADRequestTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFGSchemaRFGClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = a1;
  v1 = sub_26738118C();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8DA0, 0x277D5A340);
  sub_266ECAF2C(&qword_2800F8DA8, &qword_2800F8DA0, 0x277D5A340);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800F8DB0, 0x277D5A350);
  sub_266ECAF2C(&qword_2800F8DB8, &qword_2800F8DB0, 0x277D5A350);
  sub_26738121C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267487E60);
  v12(v31, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v30, 0xD000000000000018, 0x8000000267487E60);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788D780);
    sub_26738115C();
  }

  (v14)(v30, 0);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F8DC0, 0x277D5A348);
  sub_266ECAF2C(&qword_2800F8DC8, &qword_2800F8DC0, 0x277D5A348);
  sub_26738121C();
  v10(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267487E80);
  v16(v31, 0);
  v17 = v26;
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
  (*(v27 + 32))(v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v17, v28);
  v18(v31, 0);
  sub_266ECB128(&unk_28788D7B0);
  return sub_2673811CC();
}

uint64_t sub_267264F24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267264FBC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267265088(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672650EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26726514C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8DD0, &qword_2800F1FC0, 0x277D5A320);
  a1[2] = sub_266ECAF2C(&qword_2800F8DD8, &qword_2800F1FC0, 0x277D5A320);
  result = sub_266ECAF2C(&qword_2800F8DE0, &qword_2800F1FC0, 0x277D5A320);
  a1[3] = result;
  return result;
}

uint64_t static RFSchemaRFClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8DE8, 0x277D5A330);
  sub_266ECAF2C(&qword_2800F8DF0, &qword_2800F8DE8, 0x277D5A330);
  sub_26738120C();
  v7 = sub_26738116C();
  v27 = *(v7 - 8);
  v8 = *(v27 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v32, 0);
  sub_266ECB294(0, &qword_2800F8DF8, 0x277D5A370);
  sub_266ECAF2C(&qword_2800F8E00, &qword_2800F8DF8, 0x277D5A370);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x456E726574746170, 0xEF64657475636578);
  v10(v32, 0);
  sub_266ECB294(0, &qword_2800F8E08, 0x277D5A368);
  sub_266ECAF2C(&qword_2800F8E10, &qword_2800F8E08, 0x277D5A368);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267487ED0);
  v11(v32, 0);
  sub_266ECB294(0, &qword_2800F8E18, 0x277D5A338);
  sub_266ECAF2C(&qword_2800F8E20, &qword_2800F8E18, 0x277D5A338);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656E6F706D6F63, 0xEE006E776F685374);
  v12(v32, 0);
  sub_266ECB294(0, &qword_2800F8E28, 0x277D5A380);
  sub_266ECAF2C(&qword_2800F8E30, &qword_2800F8E28, 0x277D5A380);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267487EF0);
  v13(v32, 0);
  sub_266ECB294(0, &qword_2800F8E38, 0x277D5A360);
  sub_266ECAF2C(&qword_2800F8E40, &qword_2800F8E38, 0x277D5A360);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x8000000267487F10);
  v14(v32, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v31, 0xD00000000000001CLL, 0x8000000267487F10);
  if (!(*(v27 + 48))(v17, 1, v7))
  {
    sub_266ECB128(&unk_28788D7E8);
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
  v19(v32, 0);
  sub_266ECB128(&unk_28788D810);
  return sub_2673811CC();
}

uint64_t sub_267265A88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267265B20()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267265BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267265C50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267265CB0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F8E48, &qword_2800F1F90, 0x277D5A328);
  a1[2] = sub_266ECAF2C(&qword_2800F8E50, &qword_2800F1F90, 0x277D5A328);
  result = sub_266ECAF2C(&qword_2800F8E58, &qword_2800F1F90, 0x277D5A328);
  a1[3] = result;
  return result;
}

uint64_t static RFSchemaRFClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v6 = a1;
  v27 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v25 = *(v8 + 56);
  v26 = v8 + 56;
  v25(v5, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496E727574, 0xE600000000000000);
  v9(v29, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v28, 0x64496E727574, 0xE600000000000000);
  v24 = *(v8 + 48);
  if (!v24(v12, 1, v7))
  {
    sub_266ECB128(&unk_28788D848);
    sub_26738115C();
  }

  (v11)(v28, 0);
  v10(v29, 0);
  sub_26738120C();
  v25(v5, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x4974736575716572, 0xE900000000000064);
  v13(v29, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v28, 0x4974736575716572, 0xE900000000000064);
  if (!v24(v16, 1, v7))
  {
    sub_266ECB128(&unk_28788D878);
    sub_26738115C();
  }

  (v15)(v28, 0);
  v14(v29, 0);
  v23[1] = v6;
  sub_26738120C();
  v25(v5, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0x6575716552627573, 0xEC00000064497473);
  v17(v29, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v28, 0x6575716552627573, 0xEC00000064497473);
  if (!v24(v20, 1, v7))
  {
    sub_266ECB128(&unk_28788D8A8);
    sub_26738115C();
  }

  (v19)(v28, 0);
  v18(v29, 0);
  sub_26738120C();
  v25(v5, 0, 1, v7);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0x4977656956656361, 0xE900000000000064);
  return v21(v29, 0);
}

uint64_t sub_267266324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267266388(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFCommandType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267487F90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267487FB0, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267487FD0, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267487FF0, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267488010, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267488030, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267488050, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x8000000267488070, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267488090, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x80000002674880B0, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_267266954(uint64_t a1)
{
  v2 = sub_267266A58(&qword_2800F8E68);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672669BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267266A58(&qword_2800F8E68);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267266A58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFCommandType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFComponent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v428 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267488100, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v428;

  v1(v499, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v429 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267488120, v11);
  v12 = *v9;
  *v9 = v429;

  v7(v499, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v430 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267488140, v17);
  v18 = *v15;
  *v15 = v430;

  v13(v499, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v431 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267488160, v23);
  v24 = *v21;
  *v21 = v431;

  v19(v499, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v432 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267488190, v29);
  v30 = *v27;
  *v27 = v432;

  v25(v499, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v433 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x80000002674881C0, v35);
  v36 = *v33;
  *v33 = v433;

  v31(v499, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v434 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x80000002674881F0, v41);
  v42 = *v39;
  *v39 = v434;

  v37(v499, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v435 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267488220, v47);
  v48 = *v45;
  *v45 = v435;

  v43(v499, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v436 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x8000000267488240, v53);
  v54 = *v51;
  *v51 = v436;

  v49(v499, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v437 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x8000000267488270, v59);
  v60 = *v57;
  *v57 = v437;

  v55(v499, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v438 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000020, 0x80000002674882A0, v65);
  v66 = *v63;
  *v63 = v438;

  v61(v499, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v439 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001CLL, 0x80000002674882D0, v71);
  v72 = *v69;
  *v69 = v439;

  v67(v499, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v440 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001ELL, 0x80000002674882F0, v77);
  v78 = *v75;
  *v75 = v440;

  v73(v499, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v441 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000023, 0x8000000267488310, v83);
  v84 = *v81;
  *v81 = v441;

  v79(v499, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v442 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000022, 0x8000000267488340, v89);
  v90 = *v87;
  *v87 = v442;

  v85(v499, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v443 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001FLL, 0x8000000267488370, v95);
  v96 = *v93;
  *v93 = v443;

  v91(v499, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v444 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000025, 0x8000000267488390, v101);
  v102 = *v99;
  *v99 = v444;

  v97(v499, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v445 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000012, 0x80000002674883C0, v107);
  v108 = *v105;
  *v105 = v445;

  v103(v499, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v446 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000019, 0x80000002674883E0, v113);
  v114 = *v111;
  *v111 = v446;

  v109(v499, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v447 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000024, 0x8000000267488400, v119);
  v120 = *v117;
  *v117 = v447;

  v115(v499, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v448 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000022, 0x8000000267488430, v125);
  v126 = *v123;
  *v123 = v448;

  v121(v499, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v449 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000028, 0x8000000267488460, v131);
  v132 = *v129;
  *v129 = v449;

  v127(v499, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v450 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000026, 0x8000000267488490, v137);
  v138 = *v135;
  *v135 = v450;

  v133(v499, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v451 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000016, 0x80000002674884C0, v143);
  v144 = *v141;
  *v141 = v451;

  v139(v499, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v452 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001ALL, 0x80000002674884E0, v149);
  v150 = *v147;
  *v147 = v452;

  v145(v499, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v453 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ALL, 0x8000000267488500, v155);
  v156 = *v153;
  *v153 = v453;

  v151(v499, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v454 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000011, 0x8000000267488520, v161);
  v162 = *v159;
  *v159 = v454;

  v157(v499, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v455 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001ELL, 0x8000000267488540, v167);
  v168 = *v165;
  *v165 = v455;

  v163(v499, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v456 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001ALL, 0x8000000267488560, v173);
  v174 = *v171;
  *v171 = v456;

  v169(v499, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v457 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001ALL, 0x8000000267488580, v179);
  v180 = *v177;
  *v177 = v457;

  v175(v499, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v458 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000001CLL, 0x80000002674885A0, v185);
  v186 = *v183;
  *v183 = v458;

  v181(v499, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v459 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001DLL, 0x80000002674885C0, v191);
  v192 = *v189;
  *v189 = v459;

  v187(v499, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v460 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000024, 0x80000002674885E0, v197);
  v198 = *v195;
  *v195 = v460;

  v193(v499, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v461 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001FLL, 0x8000000267488610, v203);
  v204 = *v201;
  *v201 = v461;

  v199(v499, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v462 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD00000000000001CLL, 0x8000000267488630, v209);
  v210 = *v207;
  *v207 = v462;

  v205(v499, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v463 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000015, 0x8000000267488650, v215);
  v216 = *v213;
  *v213 = v463;

  v211(v499, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v464 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001ELL, 0x8000000267488670, v221);
  v222 = *v219;
  *v219 = v464;

  v217(v499, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v465 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001ALL, 0x8000000267488690, v227);
  v228 = *v225;
  *v225 = v465;

  v223(v499, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v466 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001FLL, 0x80000002674886B0, v233);
  v234 = *v231;
  *v231 = v466;

  v229(v499, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v467 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD00000000000001FLL, 0x80000002674886D0, v239);
  v240 = *v237;
  *v237 = v467;

  v235(v499, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v468 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD00000000000001ELL, 0x80000002674886F0, v245);
  v246 = *v243;
  *v243 = v468;

  v241(v499, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v469 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000024, 0x8000000267488710, v251);
  v252 = *v249;
  *v249 = v469;

  v247(v499, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v470 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000002ELL, 0x8000000267488740, v257);
  v258 = *v255;
  *v255 = v470;

  v253(v499, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v471 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000001FLL, 0x8000000267488770, v263);
  v264 = *v261;
  *v261 = v471;

  v259(v499, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v472 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0xD00000000000002BLL, 0x8000000267488790, v269);
  v270 = *v267;
  *v267 = v472;

  v265(v499, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v473 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0xD00000000000001FLL, 0x80000002674887C0, v275);
  v276 = *v273;
  *v273 = v473;

  v271(v499, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v474 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0xD00000000000001DLL, 0x80000002674887E0, v281);
  v282 = *v279;
  *v279 = v474;

  v277(v499, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v475 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000018, 0x8000000267488800, v287);
  v288 = *v285;
  *v285 = v475;

  v283(v499, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v476 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000001FLL, 0x8000000267488820, v293);
  v294 = *v291;
  *v291 = v476;

  v289(v499, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v477 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000019, 0x8000000267488840, v299);
  v300 = *v297;
  *v297 = v477;

  v295(v499, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v478 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000017, 0x8000000267488860, v305);
  v306 = *v303;
  *v303 = v478;

  v301(v499, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v479 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000024, 0x8000000267488880, v311);
  v312 = *v309;
  *v309 = v479;

  v307(v499, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v480 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 0xD000000000000023, 0x80000002674888B0, v317);
  v318 = *v315;
  *v315 = v480;

  v313(v499, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v481 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 0xD00000000000001FLL, 0x80000002674888E0, v323);
  v324 = *v321;
  *v321 = v481;

  v319(v499, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v482 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 0xD00000000000001ELL, 0x8000000267488900, v329);
  v330 = *v327;
  *v327 = v482;

  v325(v499, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v483 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 0xD000000000000024, 0x8000000267488920, v335);
  v336 = *v333;
  *v333 = v483;

  v331(v499, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v484 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000020, 0x8000000267488950, v341);
  v342 = *v339;
  *v339 = v484;

  v337(v499, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v485 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 0xD00000000000002ALL, 0x8000000267488980, v347);
  v348 = *v345;
  *v345 = v485;

  v343(v499, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v486 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000021, 0x80000002674889B0, v353);
  v354 = *v351;
  *v351 = v486;

  v349(v499, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v487 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000025, 0x80000002674889E0, v359);
  v360 = *v357;
  *v357 = v487;

  v355(v499, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v488 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000024, 0x8000000267488A10, v365);
  v366 = *v363;
  *v363 = v488;

  v361(v499, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v489 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000028, 0x8000000267488A40, v371);
  v372 = *v369;
  *v369 = v489;

  v367(v499, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v490 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000021, 0x8000000267488A70, v377);
  v378 = *v375;
  *v375 = v490;

  v373(v499, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v491 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000025, 0x8000000267488AA0, v383);
  v384 = *v381;
  *v381 = v491;

  v379(v499, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v492 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(64, 0xD000000000000021, 0x8000000267488AD0, v389);
  v390 = *v387;
  *v387 = v492;

  v385(v499, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v493 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000026, 0x8000000267488B00, v395);
  v396 = *v393;
  *v393 = v493;

  v391(v499, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v494 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(66, 0xD00000000000001FLL, 0x8000000267488B30, v401);
  v402 = *v399;
  *v399 = v494;

  v397(v499, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v495 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(67, 0x4E4F504D4F434652, 0xEF50414D5F544E45, v407);
  v408 = *v405;
  *v405 = v495;

  v403(v499, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v496 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(68, 0xD000000000000020, 0x8000000267488B50, v413);
  v414 = *v411;
  *v411 = v496;

  v409(v499, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v497 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000017, 0x8000000267488B80, v419);
  v420 = *v417;
  *v417 = v497;

  v415(v499, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v498 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(70, 0xD000000000000020, 0x8000000267488BA0, v425);
  v426 = *v423;
  *v423 = v498;

  return v421(v499, 0);
}

uint64_t sub_267268AF8(uint64_t a1)
{
  v2 = sub_267268BFC(&qword_2800F8E78);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267268B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267268BFC(&qword_2800F8E78);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267268BFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFComponentShown.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v17 = v0;
  v18 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RFSchemaRFComponent(0);
  sub_26726914C(&qword_2800F8E70, type metadata accessor for RFSchemaRFComponent);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656E6F706D6F63, 0xE900000000000074);
  v11(v19, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v18 + 104);
  v18 += 104;
  v13(v4, v12, v0);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656E6F706D6F63, 0xED0000656D614E74);
  v14(v19, 0);
  v13(v4, v12, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656E6F706D6F63, 0xEE007865646E4974);
  return v15(v19, 0);
}

uint64_t sub_267269040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672690A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26726914C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267269194()
{
  result = qword_2800F8E18;
  if (!qword_2800F8E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8E18);
  }

  return result;
}

uint64_t static RFSchemaRFGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682531954, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682531954, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788D8D8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267269474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672694D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFGradingDialogLineTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v29 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v32 = *MEMORY[0x277D3E530];
  v11 = *(v3 + 104);
  v29[0] = v11;
  v12 = v2;
  v11(v6);
  v35[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v33 = *(v13 - 8);
  v14 = v33 + 56;
  v31 = *(v33 + 56);
  v31(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449676F6C616964, 0xE800000000000000);
  v15(v35, 0);
  v30 = "iri.rf.RFGradingDialogLineTier1";
  (v11)(v6, *MEMORY[0x277D3E4E8], v12);
  v35[0] = 1;
  sub_26738114C();
  v31(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v30 | 0x8000000000000000);
  v16(v35, 0);
  v30 = v12;
  v29[2] = v3 + 104;
  (v11)(v6, v32, v12);
  v35[0] = 1;
  v17 = v6;
  sub_26738114C();
  v29[1] = v14;
  v18 = v31;
  v31(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x69446E656B6F7073, 0xEC000000676F6C61);
  v19(v35, 0);
  v29[3] = a1;
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v34, 0x69446E656B6F7073, 0xEC000000676F6C61);
  v22 = *(v33 + 48);
  v33 += 48;
  if (!v22(v23, 1, v13))
  {
    sub_266ECB128(&unk_28788D908);
    sub_26738115C();
  }

  (v21)(v34, 0);
  v20(v35, 0);
  (v29[0])(v17, v32, v30);
  v35[0] = 1;
  sub_26738114C();
  v18(v10, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6579616C70736964, 0xEF676F6C61694464);
  v24(v35, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v34, 0x6579616C70736964, 0xEF676F6C61694464);
  if (!v22(v27, 1, v13))
  {
    sub_266ECB128(&unk_28788D930);
    sub_26738115C();
  }

  (v26)(v34, 0);
  return v25(v35, 0);
}

uint64_t sub_267269BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267269C04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267269C68()
{
  result = qword_2800F8E80;
  if (!qword_2800F8E80)
  {
    sub_267269CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8E80);
  }

  return result;
}

unint64_t sub_267269CC0()
{
  result = qword_2800F8E88;
  if (!qword_2800F8E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8E88);
  }

  return result;
}

uint64_t static RFSchemaRFGradingDialogReportedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8E88, 0x277D5A358);
  sub_266ECAF2C(&qword_2800F8E80, &qword_2800F8E88, 0x277D5A358);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x694C676F6C616964, 0xEB0000000073656ELL);
  return v5(v7, 0);
}

uint64_t sub_267269EE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8E88, 0x277D5A358);
  sub_266ECAF2C(&qword_2800F8E80, &qword_2800F8E88, 0x277D5A358);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x694C676F6C616964, 0xEB0000000073656ELL);
  return v5(v7, 0);
}

uint64_t sub_26726A08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726A0F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFGVisualResponseShownLink.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496E727574, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26726A364()
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
  sub_266EC637C(v3, 0x64496E727574, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26726A4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726A560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFGVisualResponseShownTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_26738119C();
  v11 = *(v3 + 104);
  v32 = *MEMORY[0x277D3E530];
  v33 = v3 + 104;
  v34 = v2;
  v31 = v11;
  v11(v6);
  v36[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v28 = *(v13 + 56);
  v29 = v13 + 56;
  v28(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x65736E6F70736572, 0xED00006C65646F4DLL);
  v14(v36, 0);
  v30 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0x65736E6F70736572, 0xED00006C65646F4DLL);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_28788D958);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  v18 = v32;
  v19 = v34;
  v31(v6, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v20 = v28;
  v28(v10, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x496E726574746170, 0xE900000000000064);
  v21(v36, 0);
  v22 = v18;
  v23 = v31;
  v31(v6, v22, v19);
  v36[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F6973726576, 0xE700000000000000);
  v24(v36, 0);
  v23(v6, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x65736E6F70736572, 0xEE00644977656956);
  return v25(v36, 0);
}

uint64_t sub_26726AB78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726ABDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726AC40()
{
  result = qword_2800F8DB8;
  if (!qword_2800F8DB8)
  {
    sub_26726AC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8DB8);
  }

  return result;
}

unint64_t sub_26726AC98()
{
  result = qword_2800F8DB0;
  if (!qword_2800F8DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8DB0);
  }

  return result;
}

uint64_t static RFSchemaRFInteraction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267488D70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267488D90, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267488DB0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267488DD0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x8000000267488DF0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x8000000267488E10, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x8000000267488E30, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_26726B0BC(uint64_t a1)
{
  v2 = sub_26726B1C0(&qword_2800F8E98);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26726B124(uint64_t a1, uint64_t a2)
{
  v4 = sub_26726B1C0(&qword_2800F8E98);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26726B1C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFInteraction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFInteractionPerformed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = a1;
  v24 = sub_26738113C();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v23 = *MEMORY[0x277D3E530];
  v9 = *(v1 + 104);
  v20[1] = v1 + 104;
  v21 = v9;
  v9(v4);
  v25[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x614E6E6F69746361, 0xEA0000000000656DLL);
  v12(v25, 0);
  type metadata accessor for RFSchemaRFInteraction(0);
  sub_26726B960(&qword_2800F8E90, type metadata accessor for RFSchemaRFInteraction);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x65746E4972657375, 0xEF6E6F6974636172);
  v13(v25, 0);
  type metadata accessor for RFSchemaRFComponent(0);
  sub_26726B960(&qword_2800F8E70, type metadata accessor for RFSchemaRFComponent);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F436C6175736976, 0xEF746E656E6F706DLL);
  v14(v25, 0);
  v15 = v21;
  v21(v4, v23, v24);
  v25[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656E6F706D6F63, 0xED0000656D614E74);
  v16(v25, 0);
  type metadata accessor for RFSchemaRFCommandType(0);
  sub_26726B960(&qword_2800F8E60, type metadata accessor for RFSchemaRFCommandType);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x54646E616D6D6F63, 0xEB00000000657079);
  v17(v25, 0);
  v15(v4, v23, v24);
  v25[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656E6F706D6F63, 0xEE007865646E4974);
  return v18(v25, 0);
}

uint64_t sub_26726B854(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726B8B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26726B960(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26726B9A8()
{
  result = qword_2800F8E08;
  if (!qword_2800F8E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8E08);
  }

  return result;
}

uint64_t static RFSchemaRFPattern.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267488EB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v116;

  v1(v135, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267488ED0, v11);
  v12 = *v9;
  *v9 = v117;

  v7(v135, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267488EF0, v17);
  v18 = *v15;
  *v15 = v118;

  v13(v135, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267488F10, v23);
  v24 = *v21;
  *v21 = v119;

  v19(v135, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267488F30, v29);
  v30 = *v27;
  *v27 = v120;

  v25(v135, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x8000000267488F60, v35);
  v36 = *v33;
  *v33 = v121;

  v31(v135, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x8000000267488F80, v41);
  v42 = *v39;
  *v39 = v122;

  v37(v135, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267488FA0, v47);
  v48 = *v45;
  *v45 = v123;

  v43(v135, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x8000000267488FC0, v53);
  v54 = *v51;
  *v51 = v124;

  v49(v135, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002CLL, 0x8000000267488FF0, v59);
  v60 = *v57;
  *v57 = v125;

  v55(v135, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002FLL, 0x8000000267489020, v65);
  v66 = *v63;
  *v63 = v126;

  v61(v135, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000018, 0x8000000267489050, v71);
  v72 = *v69;
  *v69 = v127;

  v67(v135, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000016, 0x8000000267489070, v77);
  v78 = *v75;
  *v75 = v128;

  v73(v135, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ALL, 0x8000000267489090, v83);
  v84 = *v81;
  *v81 = v129;

  v79(v135, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000019, 0x80000002674890B0, v89);
  v90 = *v87;
  *v87 = v130;

  v85(v135, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000028, 0x80000002674890D0, v95);
  v96 = *v93;
  *v93 = v131;

  v91(v135, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001BLL, 0x8000000267489100, v101);
  v102 = *v99;
  *v99 = v132;

  v97(v135, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000026, 0x8000000267489120, v107);
  v108 = *v105;
  *v105 = v133;

  v103(v135, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ELL, 0x8000000267489150, v113);
  v114 = *v111;
  *v111 = v134;

  return v109(v135, 0);
}

uint64_t sub_26726C30C(uint64_t a1)
{
  v2 = sub_26726C410(&qword_2800F8EA8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26726C374(uint64_t a1, uint64_t a2)
{
  v4 = sub_26726C410(&qword_2800F8EA8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26726C410(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFPattern(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFPatternExecuted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v16 = a1;
  v19 = sub_26738113C();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = *MEMORY[0x277D3E530];
  v17 = *(v1 + 104);
  v17(v4);
  v20[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x496E726574746170, 0xE900000000000064);
  v11(v20, 0);
  type metadata accessor for RFSchemaRFPattern(0);
  sub_26726CA08(&qword_2800F8EA0, type metadata accessor for RFSchemaRFPattern);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E726574746170, 0xE700000000000000);
  v12(v20, 0);
  type metadata accessor for RFSchemaRFSiriMode(0);
  sub_26726CA08(&qword_2800F8EB0, type metadata accessor for RFSchemaRFSiriMode);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 1701080941, 0xE400000000000000);
  v13(v20, 0);
  (v17)(v4, v18, v19);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x65736E6F70736572, 0xEE00644977656956);
  return v14(v20, 0);
}

uint64_t sub_26726C8FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726C960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26726CA08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26726CA50()
{
  result = qword_2800F8DF8;
  if (!qword_2800F8DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8DF8);
  }

  return result;
}

uint64_t static RFSchemaRFSiriMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x80000002674891D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674891F0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267489210, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267489230, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267489250, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26726CD94(uint64_t a1)
{
  v2 = sub_26726CE98(&qword_2800F8EB8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26726CDFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26726CE98(&qword_2800F8EB8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26726CE98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFSchemaRFSiriMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RFSchemaRFSnippetRenderingCancelled.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26726D124(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726D188(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726D1EC()
{
  result = qword_2800F8EC0;
  if (!qword_2800F8EC0)
  {
    sub_26726D244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8EC0);
  }

  return result;
}

unint64_t sub_26726D244()
{
  result = qword_2800F8EC8;
  if (!qword_2800F8EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8EC8);
  }

  return result;
}

uint64_t static RFSchemaRFSnippetRenderingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8ED0, 0x277D5A398);
  sub_266ECAF2C(&qword_2800F8ED8, &qword_2800F8ED0, 0x277D5A398);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F8EE0, 0x277D5A388);
  sub_266ECAF2C(&qword_2800F8EE8, &qword_2800F8EE0, 0x277D5A388);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F8EF0, 0x277D5A390);
  sub_266ECAF2C(&qword_2800F8EF8, &qword_2800F8EF0, 0x277D5A390);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F8EC8, 0x277D5A378);
  sub_266ECAF2C(&qword_2800F8EC0, &qword_2800F8EC8, 0x277D5A378);
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

uint64_t sub_26726D874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726D8D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RFSchemaRFSnippetRenderingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26726DBC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726DC28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726DC8C()
{
  result = qword_2800F8EE8;
  if (!qword_2800F8EE8)
  {
    sub_26726DCE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8EE8);
  }

  return result;
}

unint64_t sub_26726DCE4()
{
  result = qword_2800F8EE0;
  if (!qword_2800F8EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8EE0);
  }

  return result;
}

uint64_t static RFSchemaRFSnippetRenderingFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26726DF78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726DFDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726E040()
{
  result = qword_2800F8EF8;
  if (!qword_2800F8EF8)
  {
    sub_26726E098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8EF8);
  }

  return result;
}

unint64_t sub_26726E098()
{
  result = qword_2800F8EF0;
  if (!qword_2800F8EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8EF0);
  }

  return result;
}

uint64_t static RFSchemaRFSnippetRenderingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26726E32C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726E390(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726E3F4()
{
  result = qword_2800F8ED8;
  if (!qword_2800F8ED8)
  {
    sub_26726E44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8ED8);
  }

  return result;
}

unint64_t sub_26726E44C()
{
  result = qword_2800F8ED0;
  if (!qword_2800F8ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8ED0);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCacheManagerCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8F00, 0x277D5A3B8);
  sub_266ECAF2C(&qword_2800F8F08, &qword_2800F8F00, 0x277D5A3B8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F8F10, 0x277D5A3A8);
  sub_266ECAF2C(&qword_2800F8F18, &qword_2800F8F10, 0x277D5A3A8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F8F20, 0x277D5A3B0);
  sub_266ECAF2C(&qword_2800F8F28, &qword_2800F8F20, 0x277D5A3B0);
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

uint64_t sub_26726EA74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726EAD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGCacheManagerCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26726EDC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726EE28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726EE8C()
{
  result = qword_2800F8F18;
  if (!qword_2800F8F18)
  {
    sub_26726EEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F18);
  }

  return result;
}

unint64_t sub_26726EEE4()
{
  result = qword_2800F8F10;
  if (!qword_2800F8F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F10);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCacheManagerCallFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x7272456C61746166, 0xEA0000000000726FLL);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788D980);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F727265, 0xE500000000000000);
  return v13(v17, 0);
}

uint64_t sub_26726F268(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726F2CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726F32C()
{
  result = qword_2800F8F40;
  if (!qword_2800F8F40)
  {
    type metadata accessor for RGSiriSchemaRGFatalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F40);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCacheManagerCallStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26726F610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726F674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26726F6D8()
{
  result = qword_2800F8F08;
  if (!qword_2800F8F08)
  {
    sub_26726F730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F08);
  }

  return result;
}

unint64_t sub_26726F730()
{
  result = qword_2800F8F00;
  if (!qword_2800F8F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F00);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCatalogContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8F58, 0x277D5A3D8);
  sub_266ECAF2C(&qword_2800F8F60, &qword_2800F8F58, 0x277D5A3D8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8F68, 0x277D5A3C8);
  sub_266ECAF2C(&qword_2800F8F70, &qword_2800F8F68, 0x277D5A3C8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F8F78, 0x277D5A3D0);
  sub_266ECAF2C(&qword_2800F8F80, &qword_2800F8F78, 0x277D5A3D0);
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

uint64_t sub_26726FC94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26726FCF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGCatalogEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26726FFE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267270048(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672700AC()
{
  result = qword_2800F8F70;
  if (!qword_2800F8F70)
  {
    sub_267270104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F70);
  }

  return result;
}

unint64_t sub_267270104()
{
  result = qword_2800F8F68;
  if (!qword_2800F8F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F68);
  }

  return result;
}

uint64_t static RGSiriSchemaRGCatalogFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x7272456C61746166, 0xEA0000000000726FLL);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788D9A8);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F727265, 0xE500000000000000);
  return v13(v17, 0);
}

uint64_t sub_267270488(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672704EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGCatalogStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0xD000000000000021, 0x8000000267489530);
  return v15(v18, 0);
}

uint64_t sub_2672708B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267270914(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267270978()
{
  result = qword_2800F8F60;
  if (!qword_2800F8F60)
  {
    sub_2672709D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F60);
  }

  return result;
}

unint64_t sub_2672709D0()
{
  result = qword_2800F8F58;
  if (!qword_2800F8F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F58);
  }

  return result;
}

uint64_t static RGSiriSchemaRGClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v0);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8F98, 0x277D5A3E8);
  sub_266ECAF2C(&qword_2800F8FA0, &qword_2800F8F98, 0x277D5A3E8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v32, 0);
  sub_266ECB294(0, &qword_2800F8FA8, 0x277D5A478);
  sub_266ECAF2C(&qword_2800F8FB0, &qword_2800F8FA8, 0x277D5A478);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x4374736575716572, 0xEE00747865746E6FLL);
  v10(v32, 0);
  sub_266ECB294(0, &qword_2800F8FB8, 0x277D5A488);
  sub_266ECAF2C(&qword_2800F8FC0, &qword_2800F8FB8, 0x277D5A488);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267489590);
  v11(v32, 0);
  sub_266ECB294(0, &qword_2800F8FC8, 0x277D5A458);
  sub_266ECAF2C(&qword_2800F8FD0, &qword_2800F8FC8, 0x277D5A458);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x656469727265766FLL, 0xEF747865746E6F43);
  v12(v32, 0);
  sub_266ECB294(0, &qword_2800F8FD8, 0x277D5A4A0);
  sub_266ECAF2C(&qword_2800F8FE0, &qword_2800F8FD8, 0x277D5A4A0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674895B0);
  v13(v32, 0);
  sub_266ECB294(0, &qword_2800F8F90, 0x277D5A3C0);
  sub_266ECAF2C(&qword_2800F8F88, &qword_2800F8F90, 0x277D5A3C0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x43676F6C61746163, 0xEE00747865746E6FLL);
  v14(v32, 0);
  sub_266ECB294(0, &qword_2800F8FE8, 0x277D5A438);
  sub_266ECAF2C(&qword_2800F8FF0, &qword_2800F8FE8, 0x277D5A438);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674895D0);
  v15(v32, 0);
  sub_266ECB294(0, &qword_2800F8FF8, 0x277D5A418);
  sub_266ECAF2C(&qword_2800F9000, &qword_2800F8FF8, 0x277D5A418);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x80000002674895F0);
  v16(v32, 0);
  sub_266ECB294(0, &qword_2800F9008, 0x277D5A3F8);
  sub_266ECAF2C(&qword_2800F9010, &qword_2800F9008, 0x277D5A3F8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267489610);
  v17(v32, 0);
  sub_266ECB294(0, &qword_2800F8F38, 0x277D5A3A0);
  sub_266ECAF2C(&qword_2800F8F30, &qword_2800F8F38, 0x277D5A3A0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v18 = v29;
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267489630);
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
  v20(v32, 0);
  sub_266ECB128(&unk_28788D9D0);
  return sub_2673811CC();
}

uint64_t sub_26727151C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672715B4()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267271680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672716E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267271744(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9018, &qword_2800F9020, 0x277D5A3E0);
  a1[2] = sub_266ECAF2C(&qword_2800F9028, &qword_2800F9020, 0x277D5A3E0);
  result = sub_266ECAF2C(&qword_2800F9030, &qword_2800F9020, 0x277D5A3E0);
  a1[3] = result;
  return result;
}

uint64_t static RGSiriSchemaRGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_26738113C();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v11 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v31 = a1;
  v26[1] = v11;
  v28 = v10;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v26[0] = *(v13 + 56);
  (v26[0])(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x7365757165526669, 0xEB00000000644974);
  v14(v34, 0);
  v32 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v33, 0x7365757165526669, 0xEB00000000644974);
  v17 = *(v13 + 48);
  if (!v17(v18, 1, v12))
  {
    sub_266ECB128(&unk_28788DA00);
    sub_26738115C();
  }

  (v16)(v33, 0);
  v15(v34, 0);
  (*(v27 + 104))(v29, *MEMORY[0x277D3E540], v30);
  v34[0] = 1;
  sub_26738114C();
  v19 = v26[0];
  (v26[0])(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x53676E6974736F70, 0xED000064496E6170);
  v20(v34, 0);
  sub_26738120C();
  v19(v9, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 1682532210, 0xE400000000000000);
  v21(v34, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v33, 1682532210, 0xE400000000000000);
  if (!v17(v24, 1, v12))
  {
    sub_266ECB128(&unk_28788DA30);
    sub_26738115C();
  }

  (v23)(v33, 0);
  return v22(v34, 0);
}

uint64_t sub_267271D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267271DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6D6F44726F727265, 0xEB000000006E6961);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E508], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xE900000000000065);
  return v15(v18, 0);
}

uint64_t sub_26727218C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672721F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267272254()
{
  result = qword_2800F8F50;
  if (!qword_2800F8F50)
  {
    sub_2672722AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8F50);
  }

  return result;
}

unint64_t sub_2672722AC()
{
  result = qword_2800F8F48;
  if (!qword_2800F8F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8F48);
  }

  return result;
}

uint64_t static RGSiriSchemaRGFallbackReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674896D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674896F0, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267489720, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267489750, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000031, 0x8000000267489770, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x80000002674897B0, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x80000002674897E0, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000025, 0x8000000267489800, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x8000000267489830, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x8000000267489860, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002BLL, 0x8000000267489890, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_267272890(uint64_t a1)
{
  v2 = sub_267272994(&qword_2800F9048);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672728F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267272994(&qword_2800F9048);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267272994(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RGSiriSchemaRGFallbackReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RGSiriSchemaRGFatalError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x80000002674898F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v8;

  return v1(v9, 0);
}

uint64_t sub_267272AF8(uint64_t a1)
{
  v2 = sub_267272BFC(&qword_2800F9050);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267272B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267272BFC(&qword_2800F9050);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267272BFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RGSiriSchemaRGFatalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RGSiriSchemaRGGMSCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9058, 0x277D5A410);
  sub_266ECAF2C(&qword_2800F9060, &qword_2800F9058, 0x277D5A410);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F9068, 0x277D5A400);
  sub_266ECAF2C(&qword_2800F9070, &qword_2800F9068, 0x277D5A400);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F9078, 0x277D5A408);
  sub_266ECAF2C(&qword_2800F9080, &qword_2800F9078, 0x277D5A408);
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

uint64_t sub_26727321C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267273280(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGGMSCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26727356C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672735D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267273634()
{
  result = qword_2800F9070;
  if (!qword_2800F9070)
  {
    sub_26727368C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9070);
  }

  return result;
}

unint64_t sub_26727368C()
{
  result = qword_2800F9068;
  if (!qword_2800F9068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9068);
  }

  return result;
}

uint64_t static RGSiriSchemaRGGMSCallFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x7272456C61746166, 0xEA0000000000726FLL);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788DA60);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F727265, 0xE500000000000000);
  return v13(v17, 0);
}

uint64_t sub_267273A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267273A74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGGMSCallStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267273D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267273DC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267273E28()
{
  result = qword_2800F9060;
  if (!qword_2800F9060)
  {
    sub_267273E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9060);
  }

  return result;
}

unint64_t sub_267273E80()
{
  result = qword_2800F9058;
  if (!qword_2800F9058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9058);
  }

  return result;
}

uint64_t static RGSiriSchemaRGHallucinationDetectionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9088, 0x277D5A430);
  sub_266ECAF2C(&qword_2800F9090, &qword_2800F9088, 0x277D5A430);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F9098, 0x277D5A420);
  sub_266ECAF2C(&qword_2800F90A0, &qword_2800F9098, 0x277D5A420);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F90A8, 0x277D5A428);
  sub_266ECAF2C(&qword_2800F90B0, &qword_2800F90A8, 0x277D5A428);
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

uint64_t sub_2672743E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267274448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGHallucinationDetectionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267274734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267274798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672747FC()
{
  result = qword_2800F90A0;
  if (!qword_2800F90A0)
  {
    sub_267274854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F90A0);
  }

  return result;
}

unint64_t sub_267274854()
{
  result = qword_2800F9098;
  if (!qword_2800F9098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9098);
  }

  return result;
}

uint64_t static RGSiriSchemaRGHallucinationDetectionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x7272456C61746166, 0xEA0000000000726FLL);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788DA88);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F727265, 0xE500000000000000);
  return v13(v17, 0);
}

uint64_t sub_267274BD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267274C3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGHallucinationDetectionStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267274F28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267274F8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267274FF0()
{
  result = qword_2800F9090;
  if (!qword_2800F9090)
  {
    sub_267275048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9090);
  }

  return result;
}

unint64_t sub_267275048()
{
  result = qword_2800F9088;
  if (!qword_2800F9088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9088);
  }

  return result;
}

uint64_t static RGSiriSchemaRGInferenceContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F90B8, 0x277D5A450);
  sub_266ECAF2C(&qword_2800F90C0, &qword_2800F90B8, 0x277D5A450);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F90C8, 0x277D5A440);
  sub_266ECAF2C(&qword_2800F90D0, &qword_2800F90C8, 0x277D5A440);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F90D8, 0x277D5A448);
  sub_266ECAF2C(&qword_2800F90E0, &qword_2800F90D8, 0x277D5A448);
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

uint64_t sub_2672755AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267275610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGInferenceEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2672758FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267275960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672759C4()
{
  result = qword_2800F90D0;
  if (!qword_2800F90D0)
  {
    sub_267275A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F90D0);
  }

  return result;
}

unint64_t sub_267275A1C()
{
  result = qword_2800F90C8;
  if (!qword_2800F90C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F90C8);
  }

  return result;
}

uint64_t static RGSiriSchemaRGInferenceFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x7272456C61746166, 0xEA0000000000726FLL);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788DAB0);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F727265, 0xE500000000000000);
  return v13(v17, 0);
}

uint64_t sub_267275DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267275E04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGInferenceStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x655674706D6F7270, 0xED00006E6F697372);
  return v7(v9, 0);
}

uint64_t sub_267276140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672761A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGOverrideContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F90E8, 0x277D5A470);
  sub_266ECAF2C(&qword_2800F90F0, &qword_2800F90E8, 0x277D5A470);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F90F8, 0x277D5A460);
  sub_266ECAF2C(&qword_2800F9100, &qword_2800F90F8, 0x277D5A460);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F9108, 0x277D5A468);
  sub_266ECAF2C(&qword_2800F9110, &qword_2800F9108, 0x277D5A468);
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

uint64_t sub_267276760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672767C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGOverrideEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for RGSiriSchemaRGOverrideType(0);
  sub_267276CA8(&qword_2800F9118, type metadata accessor for RGSiriSchemaRGOverrideType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x656469727265766FLL, 0xEC00000065707954);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656469727265766FLL, 0xEA00000000006449);
  return v11(v15, 0);
}

uint64_t sub_267276B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267276C00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267276CA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267276CF0()
{
  result = qword_2800F90F8;
  if (!qword_2800F90F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F90F8);
  }

  return result;
}

uint64_t static RGSiriSchemaRGOverrideFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x7272456C61746166, 0xEA0000000000726FLL);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788DAD8);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F727265, 0xE500000000000000);
  return v13(v17, 0);
}

uint64_t sub_267277074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672770D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGOverrideStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267489C50);
  return v15(v18, 0);
}

uint64_t sub_26727749C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267277500(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267277564()
{
  result = qword_2800F90F0;
  if (!qword_2800F90F0)
  {
    sub_2672775BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F90F0);
  }

  return result;
}

unint64_t sub_2672775BC()
{
  result = qword_2800F90E8;
  if (!qword_2800F90E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F90E8);
  }

  return result;
}

uint64_t static RGSiriSchemaRGOverrideType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267489CA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267489CC0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267489CE0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267489D00, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26727788C(uint64_t a1)
{
  v2 = sub_267277990(&qword_2800F9120);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672778F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267277990(&qword_2800F9120);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267277990(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RGSiriSchemaRGOverrideType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RGSiriSchemaRGRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9128, 0x277D5A498);
  sub_266ECAF2C(&qword_2800F9130, &qword_2800F9128, 0x277D5A498);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F9138, 0x277D5A480);
  sub_266ECAF2C(&qword_2800F9140, &qword_2800F9138, 0x277D5A480);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F9148, 0x277D5A490);
  sub_266ECAF2C(&qword_2800F9150, &qword_2800F9148, 0x277D5A490);
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

uint64_t sub_267277EEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267277F50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = sub_26738113C();
  v32 = *(v29 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v9 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v30 = v8;
  v31 = v9;
  v28 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v12(v33, 0);
  type metadata accessor for RGSiriSchemaRGResponseSource(0);
  sub_267278708(&qword_2800F9158, type metadata accessor for RGSiriSchemaRGResponseSource);
  sub_26738120C();
  v13 = v10;
  v11(v7, 0, 1, v10);
  v14 = v11;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x65736E6F70736572, 0xEE00656372756F53);
  v15(v33, 0);
  v16 = *MEMORY[0x277D3E538];
  v17 = *(v32 + 104);
  v32 += 104;
  v26 = v17;
  v18 = v27;
  v19 = v29;
  v17(v27, v16, v29);
  v33[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574636172616863, 0xEE00746E756F4372);
  v20(v33, 0);
  v26(v18, v16, v19);
  v33[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E756F4364726F77, 0xE900000000000074);
  v21(v33, 0);
  type metadata accessor for RGSiriSchemaRGFallbackReason(0);
  sub_267278708(&qword_2800F9040, type metadata accessor for RGSiriSchemaRGFallbackReason);
  sub_26738120C();
  v14(v7, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B6361626C6C6166, 0xEE006E6F73616552);
  v22(v33, 0);
  sub_26738120C();
  v14(v7, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674779E0);
  return v23(v33, 0);
}

uint64_t sub_267278644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672786A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267278708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static RGSiriSchemaRGRequestEndedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v38 = sub_26738113C();
  v0 = *(v38 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v38);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
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
  v11(v40, 0);
  v12 = *(v0 + 104);
  v34 = *MEMORY[0x277D3E530];
  v37 = v0 + 104;
  v33 = v12;
  v12(v3);
  v40[0] = 1;
  sub_26738114C();
  v31 = v9 + 56;
  v35 = v10;
  v10(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x5379616C70736964, 0xED0000676E697274);
  v13(v40, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v39, 0x5379616C70736964, 0xED0000676E697274);
  v16 = *(v9 + 48);
  v36 = v9 + 48;
  v32 = v16;
  if (!v16(v17, 1, v8))
  {
    sub_266ECB128(&unk_28788DB00);
    sub_26738115C();
  }

  (v15)(v39, 0);
  v14(v40, 0);
  v33(v3, v34, v38);
  v40[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x74536E656B6F7073, 0xEC000000676E6972);
  v18(v40, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v39, 0x74536E656B6F7073, 0xEC000000676E6972);
  if (!v32(v21, 1, v8))
  {
    sub_266ECB128(&unk_28788DB28);
    sub_26738115C();
  }

  (v20)(v39, 0);
  v19(v40, 0);
  v33(v3, v34, v38);
  v40[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449746163, 0xE500000000000000);
  v22(v40, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v39, 0x6449746163, 0xE500000000000000);
  if (!v32(v25, 1, v8))
  {
    sub_266ECB128(&unk_28788DB50);
    sub_26738115C();
  }

  (v24)(v39, 0);
  v23(v40, 0);
  v33(v3, v34, v38);
  v40[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v8);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x6944636974617473, 0xEE006449676F6C61);
  v26(v40, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v39, 0x6944636974617473, 0xEE006449676F6C61);
  if (!v32(v29, 1, v8))
  {
    sub_266ECB128(&unk_28788DB78);
    sub_26738115C();
  }

  (v28)(v39, 0);
  return v27(v40, 0);
}

uint64_t sub_267278FA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267279004(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
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
    sub_266ECB128(&unk_28788DBA0);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F727265, 0xE500000000000000);
  return v13(v17, 0);
}

uint64_t sub_2672793D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267279438(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267279724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267279788(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672797EC()
{
  result = qword_2800F9130;
  if (!qword_2800F9130)
  {
    sub_267279844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9130);
  }

  return result;
}

unint64_t sub_267279844()
{
  result = qword_2800F9128;
  if (!qword_2800F9128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9128);
  }

  return result;
}

uint64_t static RGSiriSchemaRGResponseSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267489E40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267489E60, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267489E80, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267489EA0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267489EC0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267489EE0, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x8000000267489F10, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x8000000267489F30, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x8000000267489F50, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_267279D48(uint64_t a1)
{
  v2 = sub_267279E4C(&qword_2800F9160);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267279DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267279E4C(&qword_2800F9160);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267279E4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RGSiriSchemaRGResponseSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RGSiriSchemaRGValidationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9168, 0x277D5A4B8);
  sub_266ECAF2C(&qword_2800F9170, &qword_2800F9168, 0x277D5A4B8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F9178, 0x277D5A4A8);
  sub_266ECAF2C(&qword_2800F9180, &qword_2800F9178, 0x277D5A4A8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F9188, 0x277D5A4B0);
  sub_266ECAF2C(&qword_2800F9190, &qword_2800F9188, 0x277D5A4B0);
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

uint64_t sub_26727A3A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727A40C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGValidationEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26727A6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727A75C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26727A7C0()
{
  result = qword_2800F9180;
  if (!qword_2800F9180)
  {
    sub_26727A818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9180);
  }

  return result;
}

unint64_t sub_26727A818()
{
  result = qword_2800F9178;
  if (!qword_2800F9178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9178);
  }

  return result;
}

uint64_t static RGSiriSchemaRGValidationFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RGSiriSchemaRGFatalError(0);
  sub_26726F32C();
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x7272456C61746166, 0xEA0000000000726FLL);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x7272456C61746166, 0xEA0000000000726FLL);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788DBC8);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F8F48, 0x277D5A3F0);
  sub_266ECAF2C(&qword_2800F8F50, &qword_2800F8F48, 0x277D5A3F0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F727265, 0xE500000000000000);
  return v13(v17, 0);
}

uint64_t sub_26727AB9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727AC00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RGSiriSchemaRGValidationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x800000026748A040);
  return v15(v18, 0);
}

uint64_t sub_26727AFC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727B028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26727B08C()
{
  result = qword_2800F9170;
  if (!qword_2800F9170)
  {
    sub_26727B0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9170);
  }

  return result;
}

unint64_t sub_26727B0E4()
{
  result = qword_2800F9168;
  if (!qword_2800F9168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9168);
  }

  return result;
}

uint64_t static RRSchemaRRAnnotatedEntity.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v35 = sub_26738113C();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v29 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v13 = v11;
  v12(v10, 0, 1);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x68706172476F7375, 0xE800000000000000);
  v14(v36, 0);
  v15 = *MEMORY[0x277D3E530];
  v16 = *(v3 + 104);
  v33 = v3 + 104;
  v34 = v16;
  v32 = v6;
  v16(v6, v15, v35);
  v36[0] = 1;
  sub_26738114C();
  v17 = v13;
  (v12)(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x616C437466697773, 0xEE00656D614E7373);
  v18(v36, 0);
  sub_266ECB294(0, &qword_2800F9198, 0x277D5A508);
  sub_266ECAF2C(&qword_2800F91A0, &qword_2800F9198, 0x277D5A508);
  sub_26738120C();
  (v12)(v10, 0, 1, v13);
  v29[1] = a2;
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x70756F7267, 0xE500000000000000);
  v19(v36, 0);
  sub_266ECB294(0, &qword_2800F91A8, 0x277D5A4C8);
  sub_266ECAF2C(&qword_2800F91B0, &qword_2800F91A8, 0x277D5A4C8);
  sub_26738122C();
  v30 = v13;
  (v12)(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x697461746F6E6E61, 0xEB00000000736E6FLL);
  v20(v36, 0);
  v21 = v32;
  v22 = v34;
  v23 = v35;
  v34(v32, *MEMORY[0x277D3E500], v35);
  v36[0] = 1;
  sub_26738114C();
  (v12)(v10, 0, 1, v17);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x79636E65696C6173, 0xED000065726F6353);
  v24(v36, 0);
  v31 = "iri.rr.RRAnnotatedEntity";
  v22(v21, *MEMORY[0x277D3E540], v23);
  v36[0] = 1;
  sub_26738114C();
  v25 = v30;
  (v12)(v10, 0, 1, v30);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v31 | 0x8000000000000000);
  v26(v36, 0);
  v22(v21, *MEMORY[0x277D3E4E8], v35);
  v36[0] = 1;
  sub_26738114C();
  (v12)(v10, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x7265666552736168, 0xEC00000065636E65);
  return v27(v36, 0);
}

uint64_t sub_26727B888(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727B8EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRRAnnotation.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for RRSchemaRRAnnotationName(0);
  sub_26727BDBC(&qword_2800F91C8, type metadata accessor for RRSchemaRRAnnotationName);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 1701667182, 0xE400000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E540], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x800000026748A0F0);
  return v11(v15, 0);
}

uint64_t sub_26727BCB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727BD14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}