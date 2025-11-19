uint64_t sub_26715B46C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26715B4CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODDSiriSchemaODDAssistantExperimentCounts.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F5ED0, 0x277D593F0);
  sub_266ECAF2C(&qword_2800F5ED8, &qword_2800F5ED0, 0x277D593F0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436B736174, 0xEA00000000007374);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F5EE0, 0x277D593A8);
  sub_266ECAF2C(&qword_2800F5EE8, &qword_2800F5EE0, 0x277D593A8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267469360);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F5F90, 0x277D593D0);
  sub_266ECAF2C(&qword_2800F5F98, &qword_2800F5F90, 0x277D593D0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x436E6F6973736573, 0xED000073746E756FLL);
  return v9(v11, 0);
}

uint64_t sub_26715B9D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715BA38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantExperimentDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v15 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5FB0, 0x277D59268);
  sub_266ECAF2C(&qword_2800F5FB8, &qword_2800F5FB0, 0x277D59268);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v7(v16, 0);
  sub_266ECB294(0, &qword_2800F5FA8, 0x277D59250);
  sub_266ECAF2C(&qword_2800F5FA0, &qword_2800F5FA8, 0x277D59250);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  v8(v16, 0);
  sub_266ECB294(0, &qword_2800F5FC0, 0x277D59270);
  sub_266ECAF2C(&qword_2800F5FC8, &qword_2800F5FC0, 0x277D59270);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x7364496E727574, 0xE700000000000000);
  v10(v16, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v15, 0x7364496E727574, 0xE700000000000000);
  if (!(*(v5 + 48))(v13, 1, v4))
  {
    sub_266ECB128(&unk_28788A800);
    sub_26738115C();
  }

  (v12)(v15, 0);
  return v11(v16, 0);
}

uint64_t sub_26715BFE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715C044(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantExperimentDigestsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDExperimentDigestType(0);
  sub_26715C5DC();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954747365676964, 0xEA00000000006570);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F5FE8, 0x277D59348);
  sub_266ECAF2C(&qword_2800F5FF0, &qword_2800F5FE8, 0x277D59348);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267469600);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F5FD8, 0x277D59258);
  sub_266ECAF2C(&qword_2800F5FD0, &qword_2800F5FD8, 0x277D59258);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v9(v11, 0);
}

uint64_t sub_26715C518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715C57C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715C5DC()
{
  result = qword_2800F5FE0;
  if (!qword_2800F5FE0)
  {
    type metadata accessor for ODDSiriSchemaODDExperimentDigestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5FE0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAssistantExperimentDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a1;
  v30 = sub_26738113C();
  v32 = *(v30 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v29 = "AvailabilityFromBootDimensions";
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v29 | 0x8000000000000000);
  v13(v34, 0);
  type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(0);
  sub_266F6B05C();
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x8000000267469660);
  v14(v34, 0);
  v15 = *MEMORY[0x277D3E4E8];
  v16 = *(v32 + 104);
  v32 += 104;
  v25 = v16;
  v16(v5, v15, v30);
  v34[0] = 1;
  v28 = v5;
  sub_26738114C();
  v26 = v12;
  v27 = v11 + 56;
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6567676972547369, 0xEB00000000646572);
  v17(v34, 0);
  v29 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v33, 0x6567676972547369, 0xEB00000000646572);
  if (!(*(v11 + 48))(v20, 1, v10))
  {
    sub_266ECB128(&unk_28788A830);
    sub_26738115C();
  }

  (v19)(v33, 0);
  v18(v34, 0);
  v25(v28, v15, v30);
  v34[0] = 1;
  sub_26738114C();
  v21 = v26;
  v26(v9, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x8000000267469680);
  v22(v34, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v21(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6874615065646F63, 0xEA00000000006449);
  return v23(v34, 0);
}

uint64_t sub_26715CCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715CD24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantExperimentTuples.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v37 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v32 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v3 + 104);
  v35 = *MEMORY[0x277D3E500];
  v11 = v35;
  v12(v6, v35, v2);
  v36 = v12;
  v39[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v33 = *(v14 + 56);
  v34 = v14 + 56;
  v38 = v13;
  v33(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x695468636E75616CLL, 0xEE00734D6E49656DLL);
  v15(v39, 0);
  v16 = v11;
  v17 = v37;
  v12(v6, v16, v37);
  v39[0] = 1;
  sub_26738114C();
  v18 = v13;
  v19 = v33;
  v33(v10, 0, 1, v18);
  v32[1] = a1;
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674696F0);
  v20(v39, 0);
  v32[0] = "endpointDelayInMs";
  v21 = v35;
  v22 = v17;
  v23 = v36;
  v36(v6, v35, v22);
  v39[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v38);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v32[0] | 0x8000000000000000);
  v24(v39, 0);
  v25 = v21;
  v26 = v37;
  v23(v6, v25, v37);
  v39[0] = 1;
  sub_26738114C();
  v27 = v38;
  v28 = v33;
  v33(v10, 0, 1, v38);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x75556F54656D6974, 0xEE00734D6E497266);
  v29(v39, 0);
  v36(v6, v35, v26);
  v39[0] = 1;
  sub_26738114C();
  v28(v10, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267469730);
  return v30(v39, 0);
}

uint64_t sub_26715D370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715D3D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715D438()
{
  result = qword_2800F5FC8;
  if (!qword_2800F5FC8)
  {
    sub_26715D490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5FC8);
  }

  return result;
}

unint64_t sub_26715D490()
{
  result = qword_2800F5FC0;
  if (!qword_2800F5FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5FC0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAssistantProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v30 = a1;
  v27 = sub_26738113C();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v27);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v29 = *MEMORY[0x277D3E4E8];
  v9 = *(v1 + 104);
  v28 = v1 + 104;
  v31 = v9;
  v9(v4);
  v32[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267469780);
  v12(v32, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x636F4C7475706E69, 0xEB00000000656C61);
  v13(v32, 0);
  type metadata accessor for ODDSiriSchemaODDListenFor(0);
  sub_26715DF58(&qword_2800F6008, type metadata accessor for ODDSiriSchemaODDListenFor);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F466E657473696CLL, 0xE900000000000072);
  v14(v32, 0);
  v26 = "isAssistantEnabled";
  v15 = v4;
  v16 = v4;
  v17 = v27;
  v31(v16, *MEMORY[0x277D3E508], v27);
  v32[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v26 | 0x8000000000000000);
  v18(v32, 0);
  v31(v15, v29, v17);
  v32[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674697C0);
  v19(v32, 0);
  sub_266ECB294(0, &qword_2800F6010, 0x277D59410);
  sub_266ECAF2C(&qword_2800F6018, &qword_2800F6010, 0x277D59410);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6563696F76, 0xE500000000000000);
  v20(v32, 0);
  sub_266ECB294(0, &qword_2800F6020, 0x277D593A0);
  sub_266ECAF2C(&qword_2800F6028, &qword_2800F6020, 0x277D593A0);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E4974706FLL, 0xE500000000000000);
  v21(v32, 0);
  sub_266ECB294(0, &qword_2800F6030, 0x277D59370);
  sub_266ECAF2C(&qword_2800F6038, &qword_2800F6030, 0x277D59370);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x74694B656D6F68, 0xE700000000000000);
  v22(v32, 0);
  type metadata accessor for ODDSiriSchemaODDLocationAccessPermission(0);
  sub_26715DF58(&qword_2800F6040, type metadata accessor for ODDSiriSchemaODDLocationAccessPermission);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674697E0);
  v23(v32, 0);
  sub_266ECB294(0, &qword_2800F5DA0, 0x277D591C0);
  sub_266ECAF2C(&qword_2800F5D98, &qword_2800F5DA0, 0x277D591C0);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267469800);
  return v24(v32, 0);
}

uint64_t sub_26715DE94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715DEF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26715DF58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODDSiriSchemaODDAudibleVoiceFeedbackSetting.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267469860, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267469880, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674698B0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674698E0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267469910, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267469930, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000024, 0x8000000267469960, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_26715E3C0(uint64_t a1)
{
  v2 = sub_26715E4C4(&qword_2800F6060);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26715E428(uint64_t a1, uint64_t a2)
{
  v4 = sub_26715E4C4(&qword_2800F6060);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26715E4C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAutoSendMessageProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v26 = "endMessageProperties";
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
  sub_266EC637C(v10, 0xD000000000000022, v26 | 0x8000000000000000);
  v17(v29, 0);
  v26 = "nfirmationEnabled";
  v18 = v11;
  v19 = v27;
  v13(v6, v18, v27);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v26 | 0x8000000000000000);
  v20(v29, 0);
  v23(v6, v24, v19);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267469A00);
  return v21(v29, 0);
}

uint64_t sub_26715E91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715E980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715E9E4()
{
  result = qword_2800F6068;
  if (!qword_2800F6068)
  {
    sub_26715EA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6068);
  }

  return result;
}

unint64_t sub_26715EA3C()
{
  result = qword_2800F6070;
  if (!qword_2800F6070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6070);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDCarPlayProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.odd.ODDCarPlayProperties";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, 0x8000000267469A80);
  return v16(v21, 0);
}

uint64_t sub_26715EDBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715EE20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715EE84()
{
  result = qword_2800F6078;
  if (!qword_2800F6078)
  {
    sub_26715EEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6078);
  }

  return result;
}

unint64_t sub_26715EEDC()
{
  result = qword_2800F6080;
  if (!qword_2800F6080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6080);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = sub_26738113C();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v33 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v12 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v41 = v11;
  v42 = v12;
  sub_26738120C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x644964646FLL, 0xE500000000000000);
  v17(v44, 0);
  v34 = *MEMORY[0x277D3E540];
  v18 = *(v3 + 104);
  v39 = v3 + 104;
  v40 = v18;
  v37 = v6;
  (v18)(v6);
  v44[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267468710);
  v19(v44, 0);
  sub_266ECB294(0, &qword_2800F5D38, 0x277D593F8);
  sub_266ECAF2C(&qword_2800F5D40, &qword_2800F5D38, 0x277D593F8);
  sub_26738120C();
  v36 = v15;
  v33[1] = v16;
  v15(v10, 0, 1, v13);
  v35 = a2;
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674686F0);
  v20(v44, 0);
  sub_26738120C();
  v15(v10, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026742BA40);
  v21(v44, 0);
  v33[0] = "userAggregationId";
  v22 = v37;
  v23 = v34;
  v24 = v43;
  v25 = v40;
  v40(v37, v34, v43);
  v44[0] = 1;
  sub_26738114C();
  v36(v10, 0, 1, v13);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v33[0] | 0x8000000000000000);
  v26(v44, 0);
  v33[0] = "dRotationTimestampMs";
  v25(v22, v23, v24);
  v44[0] = 1;
  sub_26738114C();
  v27 = v36;
  v36(v10, 0, 1, v13);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, v33[0] | 0x8000000000000000);
  v28(v44, 0);
  type metadata accessor for ODDSiriSchemaODDEventOrigin(0);
  sub_26715F81C();
  sub_26738120C();
  v27(v10, 0, 1, v13);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x69724F746E657665, 0xEB000000006E6967);
  v29(v44, 0);
  sub_26738120C();
  v27(v10, 0, 1, v13);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026742B9C0);
  v30(v44, 0);
  v40(v37, *MEMORY[0x277D3E4E8], v43);
  v44[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v13);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267469AE0);
  return v31(v44, 0);
}

uint64_t sub_26715F758(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715F7BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715F81C()
{
  result = qword_2800F6088;
  if (!qword_2800F6088)
  {
    type metadata accessor for ODDSiriSchemaODDEventOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6088);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDClientProcessAssetAvailabilityStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F60A0, 0x277D59360);
  sub_266ECAF2C(&qword_2800F60A8, &qword_2800F60A0, 0x277D59360);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x8000000267469B40);
  return v5(v7, 0);
}

uint64_t sub_26715FAB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715FB14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDataAvailabilityState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267469BA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267469BD0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x8000000267469C00, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26715FDD0(uint64_t a1)
{
  v2 = sub_26715FED4(&qword_2800F60B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26715FE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_26715FED4(&qword_2800F60B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26715FED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDDataAvailabilityState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDeviceAndUsageAppTaskCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v33 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-v9];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v27 = a1;
  sub_26738119C();
  v31 = "eAndUsageAppTaskCounts";
  v11 = *MEMORY[0x277D3E538];
  v32 = *(v3 + 104);
  v32(v6, v11, v2);
  v28 = v3 + 104;
  v34[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v29 = v12;
  v30 = v13 + 56;
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v31 | 0x8000000000000000);
  v15(v34, 0);
  v31 = "completedSiriAppTaskCount";
  v16 = v11;
  v17 = v11;
  v26 = v11;
  v18 = v32;
  v19 = v33;
  v32(v6, v16, v33);
  v34[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v31 | 0x8000000000000000);
  v20(v34, 0);
  v31 = "failedSiriAppTaskCount";
  v18(v6, v17, v19);
  v34[0] = 1;
  sub_26738114C();
  v21 = v29;
  v14(v10, 0, 1, v29);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v31 | 0x8000000000000000);
  v22(v34, 0);
  v18(v6, v26, v33);
  v34[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267469CD0);
  return v23(v34, 0);
}

uint64_t sub_2671603F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267160458(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671604BC()
{
  result = qword_2800F5F38;
  if (!qword_2800F5F38)
  {
    sub_267160514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5F38);
  }

  return result;
}

unint64_t sub_267160514()
{
  result = qword_2800F5F30;
  if (!qword_2800F5F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5F30);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDeviceAndUsageDynamicDimensions.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x75706E4969726973, 0xEF656C61636F4C74);
  v6(v12, 0);
  type metadata accessor for SISchemaAssistantViewMode(0);
  sub_267160B3C(&qword_2800F5F60, type metadata accessor for SISchemaAssistantViewMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65746E4977656976, 0xED00006563616672);
  v7(v12, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
  sub_267160B3C(&qword_2800F3FD0, type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E496F69647561, 0xEE00656361667265);
  v8(v12, 0);
  type metadata accessor for ODDSiriSchemaODDAppTaskType(0);
  sub_267160B3C(&qword_2800F5DA8, type metadata accessor for ODDSiriSchemaODDAppTaskType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x546B736154707061, 0xEB00000000657079);
  v9(v12, 0);
  type metadata accessor for ODDSiriSchemaODDTaskAppBundleId(0);
  sub_267160B3C(&qword_2800F60C0, type metadata accessor for ODDSiriSchemaODDTaskAppBundleId);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x427070416B736174, 0xEF6449656C646E75);
  return v10(v12, 0);
}

uint64_t sub_267160A78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267160ADC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267160B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODDSiriSchemaODDDeviceCohort.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5D38, 0x277D593F8);
  sub_266ECAF2C(&qword_2800F5D40, &qword_2800F5D38, 0x277D593F8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E4974726F686F63, 0xEE006C6176726574);
  v6(v10, 0);
  type metadata accessor for ODDSiriSchemaODDDeviceCohortType(0);
  sub_267161010(&qword_2800F60C8, type metadata accessor for ODDSiriSchemaODDDeviceCohortType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x795474726F686F63, 0xEA00000000006570);
  v7(v10, 0);
  type metadata accessor for ODDSiriSchemaODDDataAvailabilityState(0);
  sub_267161010(&qword_2800F60B0, type metadata accessor for ODDSiriSchemaODDDataAvailabilityState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001BLL, 0x8000000267469D60);
  return v8(v10, 0);
}

uint64_t sub_267160F4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267160FB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267161010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODDSiriSchemaODDDeviceCohortsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F60D8, 0x277D592D0);
  sub_266ECAF2C(&qword_2800F60D0, &qword_2800F60D8, 0x277D592D0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7374726F686F63, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_267161270()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F60D8, 0x277D592D0);
  sub_266ECAF2C(&qword_2800F60D0, &qword_2800F60D8, 0x277D592D0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7374726F686F63, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_26716140C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267161470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDeviceCohortType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267469DF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267469E10, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267469E30, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26716172C(uint64_t a1)
{
  v2 = sub_267161830(&qword_2800F60F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267161794(uint64_t a1, uint64_t a2)
{
  v4 = sub_267161830(&qword_2800F60F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267161830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDDeviceCohortType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDeviceSegment.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDDeviceSegmentType(0);
  sub_267161C34(&qword_2800F60F8, type metadata accessor for ODDSiriSchemaODDDeviceSegmentType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x54746E656D676573, 0xEB00000000657079);
  v6(v9, 0);
  type metadata accessor for ODDSiriSchemaODDDataAvailabilityState(0);
  sub_267161C34(&qword_2800F60B0, type metadata accessor for ODDSiriSchemaODDDataAvailabilityState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x8000000267469E80);
  return v7(v9, 0);
}

uint64_t sub_267161B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267161B8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267161C34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267161C7C()
{
  result = qword_2800F6108;
  if (!qword_2800F6108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6108);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDeviceSegmentsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6108, 0x277D592E0);
  sub_266ECAF2C(&qword_2800F6100, &qword_2800F6108, 0x277D592E0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E656D676573, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267161E9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6108, 0x277D592E0);
  sub_266ECAF2C(&qword_2800F6100, &qword_2800F6108, 0x277D592E0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E656D676573, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267162038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716209C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDeviceSegmentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267469F10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267469F30, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267469F50, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267162354(uint64_t a1)
{
  v2 = sub_267162458(&qword_2800F6120);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671623BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267162458(&qword_2800F6120);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267162458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDDeviceSegmentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDictationCounts.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  return v5(v7, 0);
}

uint64_t sub_267162674()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  return v5(v7, 0);
}

uint64_t sub_267162814(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267162878(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationDeviceDigestsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6138, 0x277D59300);
  sub_266ECAF2C(&qword_2800F6140, &qword_2800F6138, 0x277D59300);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267162BF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267162C54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v14 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6158, 0x277D59308);
  sub_266ECAF2C(&qword_2800F6160, &qword_2800F6158, 0x277D59308);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v7(v15, 0);
  sub_266ECB294(0, &qword_2800F6130, 0x277D592F0);
  sub_266ECAF2C(&qword_2800F6128, &qword_2800F6130, 0x277D592F0);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  v8(v15, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x7364496E727574, 0xE700000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x7364496E727574, 0xE700000000000000);
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    sub_266ECB128(&unk_28788A858);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_267163134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267163198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v34 = sub_26738113C();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v33 = *MEMORY[0x277D3E530];
  v10 = *(v2 + 104);
  v35 = v2 + 104;
  v36 = v10;
  v31 = v5;
  (v10)(v5);
  v39[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x75426D6574737973, 0xEB00000000646C69);
  v15(v39, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_267163AFC(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState);
  v32 = a1;
  sub_26738120C();
  v37 = v13;
  v38 = v14;
  v13(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x80000002674694C0);
  v16(v39, 0);
  type metadata accessor for SISchemaAssistantViewMode(0);
  sub_267163AFC(&qword_2800F5F60, type metadata accessor for SISchemaAssistantViewMode);
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x65746E4977656976, 0xED00006563616672);
  v17(v39, 0);
  v30 = "ntDaemonAudioRecordingFailed";
  v18 = v31;
  v19 = v33;
  v20 = v34;
  v21 = v36;
  v36(v31, v33, v34);
  v39[0] = 1;
  sub_26738114C();
  v37(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v30 | 0x8000000000000000);
  v22(v39, 0);
  v21(v18, v19, v20);
  v39[0] = 1;
  sub_26738114C();
  v23 = v37;
  v37(v9, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267454710);
  v24(v39, 0);
  type metadata accessor for ORCHSchemaORCHSiriAsrMode(0);
  sub_267163AFC(&qword_2800F5F68, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
  sub_26738120C();
  v23(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x7461636F4C727361, 0xEB000000006E6F69);
  v25(v39, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v23(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69746174636964, 0xEF656C61636F4C6ELL);
  v26(v39, 0);
  type metadata accessor for SISchemaInvocationSource(0);
  sub_267163AFC(&qword_2800F5F88, type metadata accessor for SISchemaInvocationSource);
  sub_26738120C();
  v23(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267469520);
  return v27(v39, 0);
}

uint64_t sub_267163A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267163A9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267163AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODDSiriSchemaODDDictationExperimentCounts.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F5ED0, 0x277D593F0);
  sub_266ECAF2C(&qword_2800F5ED8, &qword_2800F5ED0, 0x277D593F0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436B736174, 0xEA00000000007374);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F5EE0, 0x277D593A8);
  sub_266ECAF2C(&qword_2800F5EE8, &qword_2800F5EE0, 0x277D593A8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267469360);
  return v8(v10, 0);
}

uint64_t sub_267163F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267163F90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationExperimentDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v15 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6178, 0x277D59328);
  sub_266ECAF2C(&qword_2800F6180, &qword_2800F6178, 0x277D59328);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v7(v16, 0);
  sub_266ECB294(0, &qword_2800F6170, 0x277D59310);
  sub_266ECAF2C(&qword_2800F6168, &qword_2800F6170, 0x277D59310);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  v8(v16, 0);
  sub_266ECB294(0, &qword_2800F6188, 0x277D59330);
  sub_266ECAF2C(&qword_2800F6190, &qword_2800F6188, 0x277D59330);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x7364496E727574, 0xE700000000000000);
  v10(v16, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v15, 0x7364496E727574, 0xE700000000000000);
  if (!(*(v5 + 48))(v13, 1, v4))
  {
    sub_266ECB128(&unk_28788A888);
    sub_26738115C();
  }

  (v12)(v15, 0);
  return v11(v16, 0);
}

uint64_t sub_267164538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716459C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationExperimentDigestsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDExperimentDigestType(0);
  sub_26715C5DC();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954747365676964, 0xEA00000000006570);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F5FE8, 0x277D59348);
  sub_266ECAF2C(&qword_2800F5FF0, &qword_2800F5FE8, 0x277D59348);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267469600);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F61A0, 0x277D59318);
  sub_266ECAF2C(&qword_2800F6198, &qword_2800F61A0, 0x277D59318);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v9(v11, 0);
}

uint64_t sub_267164A70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267164AD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationExperimentDimensions.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v16 = *(v0 - 8);
  v17 = v0;
  v1 = *(v16 + 64);
  MEMORY[0x28223BE20](v0);
  v15 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6158, 0x277D59308);
  sub_266ECAF2C(&qword_2800F6160, &qword_2800F6158, 0x277D59308);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026746A150);
  v9(v18, 0);
  type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(0);
  sub_266F6B05C();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x8000000267469660);
  v10(v18, 0);
  (*(v16 + 104))(v15, *MEMORY[0x277D3E4E8], v17);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x8000000267469680);
  v11(v18, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6874615065646F63, 0xEA00000000006449);
  return v12(v18, 0);
}

uint64_t sub_267165024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267165088(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationExperimentTuples.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v37 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v32 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v3 + 104);
  v35 = *MEMORY[0x277D3E500];
  v11 = v35;
  v12(v6, v35, v2);
  v36 = v12;
  v39[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v33 = *(v14 + 56);
  v34 = v14 + 56;
  v38 = v13;
  v33(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x695468636E75616CLL, 0xEE00734D6E49656DLL);
  v15(v39, 0);
  v16 = v11;
  v17 = v37;
  v12(v6, v16, v37);
  v39[0] = 1;
  sub_26738114C();
  v18 = v13;
  v19 = v33;
  v33(v10, 0, 1, v18);
  v32[1] = a1;
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674696F0);
  v20(v39, 0);
  v32[0] = "endpointDelayInMs";
  v21 = v35;
  v22 = v17;
  v23 = v36;
  v36(v6, v35, v22);
  v39[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v38);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v32[0] | 0x8000000000000000);
  v24(v39, 0);
  v25 = v21;
  v26 = v37;
  v23(v6, v25, v37);
  v39[0] = 1;
  sub_26738114C();
  v27 = v38;
  v28 = v33;
  v33(v10, 0, 1, v38);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x75556F54656D6974, 0xEE00734D6E497266);
  v29(v39, 0);
  v36(v6, v35, v26);
  v39[0] = 1;
  sub_26738114C();
  v28(v10, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267469730);
  return v30(v39, 0);
}

uint64_t sub_2671656D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267165738(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716579C()
{
  result = qword_2800F6190;
  if (!qword_2800F6190)
  {
    sub_2671657F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6190);
  }

  return result;
}

unint64_t sub_2671657F4()
{
  result = qword_2800F6188;
  if (!qword_2800F6188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6188);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDictationProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = a1;
  v19 = sub_26738113C();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v17 = *MEMORY[0x277D3E4E8];
  v9 = *(v1 + 104);
  v18 = v1 + 104;
  v20 = v9;
  v9(v4);
  v22[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026746A1E0);
  v12(v22, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948);
  sub_26738122C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026746A200);
  v13(v22, 0);
  v20(v4, v17, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026746A220);
  return v14(v22, 0);
}

uint64_t sub_267165C4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267165CB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDEventOrigin.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026746A270, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v34;

  v1(v39, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026746A290, v11);
  v12 = *v9;
  *v9 = v35;

  v7(v39, 0);
  v13 = sub_266ECB128(&unk_28788A8B8);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = *v17;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 1, v20);
  *v18 = v36;
  v16(v39, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = *v22;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026746A2B0, v25);
  v26 = *v23;
  *v23 = v37;

  v21(v39, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = *v28;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x800000026746A2D0, v31);
  v32 = *v29;
  *v29 = v38;

  return v27(v39, 0);
}

uint64_t sub_267166050(uint64_t a1)
{
  v2 = sub_267166154(&qword_2800F61D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671660B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267166154(&qword_2800F61D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267166154(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDEventOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDExecutionMetadataReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDExtensionName(0);
  sub_267166564(&qword_2800F61E0, type metadata accessor for ODDSiriSchemaODDExtensionName);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E65747865, 0xED0000656D614E6ELL);
  v6(v9, 0);
  type metadata accessor for ODDSiriSchemaODDExecutionStatus(0);
  sub_267166564(&qword_2800F61E8, type metadata accessor for ODDSiriSchemaODDExecutionStatus);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69747563657865, 0xEF7375746174536ELL);
  return v7(v9, 0);
}

uint64_t sub_267166458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671664BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267166564(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671665AC()
{
  result = qword_2800F61F8;
  if (!qword_2800F61F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F61F8);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDExecutionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746A360, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026746A380, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_26716679C(uint64_t a1)
{
  v2 = sub_2671668A0(&qword_2800F6200);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267166804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671668A0(&qword_2800F6200);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671668A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDExecutionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDExperimentDigestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026746A3D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026746A3F0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026746A410, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026746A430, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x800000026746A460, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267166BD8(uint64_t a1)
{
  v2 = sub_267166CDC(&qword_2800F6208);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267166C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_267166CDC(&qword_2800F6208);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267166CDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDExperimentDigestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDExperimentFixedDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0x656D697265707865, 0xEC0000006449746ELL);
  v13(v21, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D7461657274, 0xEB00000000644974);
  v14(v21, 0);
  v18(v5, *MEMORY[0x277D3E510], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D796F6C706564, 0xEC0000006449746ELL);
  return v15(v21, 0);
}

uint64_t sub_26716712C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267167190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDExtensionName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026746A4F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026746A510, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026746A540, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x800000026746A570, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x800000026746A5A0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x800000026746A5D0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_267167598(uint64_t a1)
{
  v2 = sub_26716769C(&qword_2800F6210);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267167600(uint64_t a1, uint64_t a2)
{
  v4 = sub_26716769C(&qword_2800F6210);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26716769C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDExtensionName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDFixedDimensions.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7954656369766564, 0xEA00000000006570);
  v11(v14, 0);
  type metadata accessor for SISchemaProgramCode(0);
  sub_267167B18(&qword_2800F0448, type metadata accessor for SISchemaProgramCode);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x436D6172676F7270, 0xEB0000000065646FLL);
  return v12(v14, 0);
}

uint64_t sub_267167A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267167A70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267167B18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267167B60()
{
  result = qword_2800F5DE8;
  if (!qword_2800F5DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5DE8);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDGeneralProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v46 = a1;
  v47 = sub_26738113C();
  v49 = *(v47 - 8);
  v1 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v8 = sub_26738116C();
  v48 = *(v8 - 8);
  v9 = *(v48 + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F4C6D6574737973, 0xEC000000656C6163);
  v10(v51, 0);
  v11 = *MEMORY[0x277D3E508];
  v12 = *(v49 + 104);
  v49 += 104;
  v44 = v12;
  v12(v3, v11, v47);
  v51[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F726665726F7473, 0xEC0000006449746ELL);
  v13(v51, 0);
  type metadata accessor for SISchemaUTCOffset(0);
  sub_267168680();
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v45 = v9;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x657366664F435455, 0xE900000000000074);
  v14(v51, 0);
  v15 = *MEMORY[0x277D3E530];
  v41 = v3;
  v16 = v15;
  v42 = v15;
  v17 = v47;
  v18 = v44;
  (v44)(v3);
  v51[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x7954656369766564, 0xEA00000000006570);
  v19(v51, 0);
  v20 = v41;
  v18(v41, v16, v17);
  v51[0] = 1;
  sub_26738114C();
  v21 = v8;
  v22 = v8;
  v43 = v8;
  v23 = v45;
  v45(v7, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v24(v51, 0);
  v25 = v47;
  v18(v20, v42, v47);
  v51[0] = 1;
  sub_26738114C();
  v23(v7, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x534F656369766564, 0xE800000000000000);
  v26(v51, 0);
  v27 = v44;
  v44(v20, *MEMORY[0x277D3E4E8], v25);
  v51[0] = 1;
  sub_26738114C();
  v28 = v43;
  v23(v7, 0, 1, v43);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0x4465726F74537369, 0xEF65646F4D6F6D65);
  v29(v51, 0);
  v27(v20, *MEMORY[0x277D3E540], v25);
  v51[0] = 1;
  sub_26738114C();
  v23(v7, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002CLL, 0x8000000267469030);
  v30(v51, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v50, 0xD00000000000002CLL, 0x8000000267469030);
  v33 = *(v48 + 48);
  v48 += 48;
  if (!v33(v34, 1, v28))
  {
    sub_266ECB128(&unk_28788A8E0);
    sub_26738115C();
  }

  (v32)(v50, 0);
  v31(v51, 0);
  sub_266ECB294(0, &qword_2800F5E48, 0x277D5B1E0);
  sub_266ECAF2C(&qword_2800F5E50, &qword_2800F5E48, 0x277D5B1E0);
  sub_26738120C();
  v45(v7, 0, 1, v28);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465537465737361, 0xEE00737574617453);
  v35(v51, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v50, 0x7465537465737361, 0xEE00737574617453);
  if (!v33(v38, 1, v28))
  {
    sub_266ECB128(&unk_28788A908);
    sub_26738115C();
  }

  (v37)(v50, 0);
  return v36(v51, 0);
}

uint64_t sub_2671685BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267168620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267168680()
{
  result = qword_2800F6218;
  if (!qword_2800F6218)
  {
    type metadata accessor for SISchemaUTCOffset(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6218);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDGmsAssetAvailabilityStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "setAvailabilityStatus";
  v11 = *MEMORY[0x277D3E540];
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
  sub_266EC637C(v10, 0x654D737574617473, 0xED00006567617373);
  return v16(v21, 0);
}

uint64_t sub_267168A54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267168AB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267168B1C()
{
  result = qword_2800F60A8;
  if (!qword_2800F60A8)
  {
    sub_267168B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F60A8);
  }

  return result;
}

unint64_t sub_267168B74()
{
  result = qword_2800F60A0;
  if (!qword_2800F60A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F60A0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDHeadGestureProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v3 = sub_26738113C();
  v23 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v21 = a2;
  sub_26738119C();
  v22 = "estureProperties";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v25[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v22 | 0x8000000000000000);
  v16(v25, 0);
  v13(v7, v12, v23);
  v25[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x800000026746A720);
  v17(v25, 0);
  v23 = "headGesturesEnabled";
  type metadata accessor for ORCHSchemaORCHHeadGestureMapping(0);
  sub_267169174(&qword_2800F6230, type metadata accessor for ORCHSchemaORCHHeadGestureMapping);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v23 | 0x8000000000000000);
  v18(v25, 0);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026746A760);
  return v19(v25, 0);
}

uint64_t sub_267169068(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671690CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267169174(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671691BC()
{
  result = qword_2800F6240;
  if (!qword_2800F6240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6240);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDHeySiriHangupEnablementState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x800000026746A7C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x800000026746A7F0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026746A820, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x800000026746A850, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267169490(uint64_t a1)
{
  v2 = sub_267169594(&qword_2800F6250);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671694F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267169594(&qword_2800F6250);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267169594(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDHeySiriHangupEnablementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDHomeKitProperties.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6B656D6F48736168, 0xEE00656D6F487469);
  return v10(v12, 0);
}

uint64_t sub_267169830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267169894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671698F8()
{
  result = qword_2800F6038;
  if (!qword_2800F6038)
  {
    sub_267169950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6038);
  }

  return result;
}

unint64_t sub_267169950()
{
  result = qword_2800F6030;
  if (!qword_2800F6030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6030);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDHomePodProperties.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5D68, 0x277D591B0);
  sub_266ECAF2C(&qword_2800F5D60, &qword_2800F5D68, 0x277D591B0);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6576697470616461, 0xEE00656D756C6F56);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026746A8E0);
  return v11(v15, 0);
}

uint64_t sub_267169CDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267169D40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDiOSAccessibilityProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = sub_26738113C();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v50 = *MEMORY[0x277D3E4E8];
  v49 = *(v3 + 104);
  v45 = v6;
  v46 = v3 + 104;
  v49(v6);
  v51[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v41 = v13;
  v15 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x800000026746A940);
  v16(v51, 0);
  type metadata accessor for SISchemaSiriPauseTimeState(0);
  sub_26716A704(&qword_2800F6268, type metadata accessor for SISchemaSiriPauseTimeState);
  sub_26738120C();
  v42 = v11;
  v13(v10, 0, 1, v11);
  v44 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026746A960);
  v17(v51, 0);
  v40 = "siriPauseTimeState";
  v18 = v45;
  v19 = v48;
  v20 = v49;
  (v49)(v45, v50, v48);
  v51[0] = 1;
  sub_26738114C();
  v21 = v11;
  v43 = v14;
  v22 = v41;
  v41(v10, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v40 | 0x8000000000000000);
  v23(v51, 0);
  (v20)(v18, *MEMORY[0x277D3E518], v19);
  v51[0] = 1;
  sub_26738114C();
  v24 = v42;
  v22(v10, 0, 1, v42);
  v25 = v22;
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x6565705369726973, 0xEE00657461526863);
  v26(v51, 0);
  v40 = "isShowAppsBehindSiriEnabled";
  v27 = v50;
  v28 = v48;
  v29 = v49;
  (v49)(v18, v50, v48);
  v51[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v24);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v40 | 0x8000000000000000);
  v30(v51, 0);
  v40 = "isVoiceOverEnabled";
  v31 = v45;
  v29(v45, v27, v28);
  v51[0] = 1;
  v32 = v31;
  sub_26738114C();
  v33 = v42;
  v34 = v41;
  v41(v10, 0, 1, v42);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v40 | 0x8000000000000000);
  v35(v51, 0);
  type metadata accessor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting(0);
  sub_26716A704(&qword_2800F6058, type metadata accessor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting);
  sub_26738120C();
  v34(v10, 0, 1, v33);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0x6565466563696F76, 0xED00006B63616264);
  v36(v51, 0);
  (v49)(v32, v50, v48);
  v51[0] = 1;
  sub_26738114C();
  v34(v10, 0, 1, v33);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x800000026746A9E0);
  return v37(v51, 0);
}

uint64_t sub_26716A5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716A65C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26716A704(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26716A74C()
{
  result = qword_2800F6278;
  if (!qword_2800F6278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6278);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDiOSAssistantProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
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
  v28[1] = a2;
  sub_26738119C();
  v31 = "sistantProperties";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v33[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v29 = *(v15 + 56);
  v30 = v15 + 56;
  v29(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, v31 | 0x8000000000000000);
  v16(v33, 0);
  v13(v7, v12, v3);
  v33[0] = 1;
  sub_26738114C();
  v17 = v29;
  v29(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, 0x800000026746AA60);
  v18(v33, 0);
  sub_266ECB294(0, &qword_2800F6280, 0x277D59438);
  sub_266ECAF2C(&qword_2800F6288, &qword_2800F6280, 0x277D59438);
  sub_26738120C();
  v17(v11, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x65736E6F70736572, 0xE800000000000000);
  v19(v33, 0);
  sub_266ECB294(0, &qword_2800F6278, 0x277D59418);
  sub_266ECAF2C(&qword_2800F6270, &qword_2800F6278, 0x277D59418);
  sub_26738120C();
  v17(v11, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x6269737365636361, 0xED00007974696C69);
  v20(v33, 0);
  sub_266ECB294(0, &qword_2800F6080, 0x277D592A8);
  sub_266ECAF2C(&qword_2800F6078, &qword_2800F6080, 0x277D592A8);
  sub_26738120C();
  v17(v11, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x79616C50726163, 0xE700000000000000);
  v21(v33, 0);
  sub_266ECB294(0, &qword_2800F6290, 0x277D593E8);
  sub_266ECAF2C(&qword_2800F6298, &qword_2800F6290, 0x277D593E8);
  sub_26738120C();
  v17(v11, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x61436E4969726973, 0xEA00000000006C6CLL);
  v22(v33, 0);
  sub_266ECB294(0, &qword_2800F5D90, 0x277D591B8);
  sub_266ECAF2C(&qword_2800F5D88, &qword_2800F5D90, 0x277D591B8);
  sub_26738120C();
  v17(v11, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x65636E756F6E6E61, 0xE800000000000000);
  v23(v33, 0);
  sub_266ECB294(0, &qword_2800F6070, 0x277D592A0);
  sub_266ECAF2C(&qword_2800F6068, &qword_2800F6070, 0x277D592A0);
  sub_26738120C();
  v17(v11, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x646E65536F747561, 0xEF6567617373654DLL);
  v24(v33, 0);
  type metadata accessor for SISchemaAppleMediaProductsSubscription(0);
  sub_26716B1E0();
  sub_26738122C();
  v17(v11, 0, 1, v14);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x8000000267435690);
  v25(v33, 0);
  sub_266ECB294(0, &qword_2800F6240, 0x277D59368);
  sub_266ECAF2C(&qword_2800F6238, &qword_2800F6240, 0x277D59368);
  sub_26738120C();
  v17(v11, 0, 1, v14);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x7473654764616568, 0xEC00000073657275);
  return v26(v33, 0);
}

uint64_t sub_26716B11C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716B180(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716B1E0()
{
  result = qword_2800F13F0;
  if (!qword_2800F13F0)
  {
    type metadata accessor for SISchemaAppleMediaProductsSubscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F13F0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDiOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v12, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v12, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  v8(v12, 0);
  sub_266ECB294(0, &qword_2800F62A8, 0x277D59420);
  sub_266ECAF2C(&qword_2800F62A0, &qword_2800F62A8, 0x277D59420);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x7369737341534F69, 0xEC000000746E6174);
  v9(v12, 0);
  sub_266ECB294(0, &qword_2800F62B0, 0x277D59430);
  sub_266ECAF2C(&qword_2800F62B8, &qword_2800F62B0, 0x277D59430);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656E6547534F69, 0xEA00000000006C61);
  return v10(v12, 0);
}

uint64_t sub_26716B7B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716B818(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDiOSGeneralProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.odd.ODDiOSGeneralProperties";
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
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026746AB10);
  return v16(v21, 0);
}

uint64_t sub_26716BBEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716BC50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716BCB4()
{
  result = qword_2800F62B8;
  if (!qword_2800F62B8)
  {
    sub_26716BD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F62B8);
  }

  return result;
}

unint64_t sub_26716BD0C()
{
  result = qword_2800F62B0;
  if (!qword_2800F62B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F62B0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDiOSResponseProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "sponseProperties";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026746AB90);
  return v16(v21, 0);
}

uint64_t sub_26716C08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716C0F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716C154()
{
  result = qword_2800F6288;
  if (!qword_2800F6288)
  {
    sub_26716C1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6288);
  }

  return result;
}

unint64_t sub_26716C1AC()
{
  result = qword_2800F6280;
  if (!qword_2800F6280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6280);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDListenFor.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026746ABE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026746AC00, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026746AC20, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x800000026746AC40, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26716C484(uint64_t a1)
{
  v2 = sub_26716C588(&qword_2800F62D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26716C4EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26716C588(&qword_2800F62D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26716C588(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDListenFor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDLocationAccessPermission.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026746ACA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x800000026746ACD0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026746AD10, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026746AD40, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x800000026746AD70, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x800000026746ADA0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x800000026746ADE0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_26716C9A0(uint64_t a1)
{
  v2 = sub_26716CAA4(&qword_2800F62D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26716CA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_26716CAA4(&qword_2800F62D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26716CAA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDLocationAccessPermission(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDmacOSAssistantProperties.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x800000026746AE50);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F6240, 0x277D59368);
  sub_266ECAF2C(&qword_2800F6238, &qword_2800F6240, 0x277D59368);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7473654764616568, 0xEC00000073657275);
  return v12(v14, 0);
}

uint64_t sub_26716CE24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716CE88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDmacOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F62E8, 0x277D59440);
  sub_266ECAF2C(&qword_2800F62E0, &qword_2800F62E8, 0x277D59440);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x737341534F63616DLL, 0xEE00746E61747369);
  return v9(v11, 0);
}

uint64_t sub_26716D39C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716D400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDMultiUserSetupStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v46 = sub_26738113C();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v44 = *MEMORY[0x277D3E538];
  v10 = *(v2 + 104);
  v47 = v2 + 104;
  v10(v5);
  v45 = v10;
  v50[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v49 = *(v12 + 56);
  v13 = v12 + 56;
  v49(v9, 0, 1, v11);
  v43 = v13;
  v48 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026746AEE0);
  v14(v50, 0);
  v41 = "numGuestsAccepted";
  v15 = v44;
  v16 = v46;
  (v10)(v5, v44, v46);
  v50[0] = 1;
  sub_26738114C();
  v17 = v49;
  v49(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v41 | 0x8000000000000000);
  v18(v50, 0);
  v41 = "numParticipantsWithTrust";
  v19 = v15;
  v20 = v16;
  v21 = v16;
  v22 = v45;
  (v45)(v5, v19, v20);
  v50[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v41 | 0x8000000000000000);
  v23(v50, 0);
  v41 = "dRecognizeMyVoice";
  v24 = v44;
  (v22)(v5, v44, v21);
  v50[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v41 | 0x8000000000000000);
  v25(v50, 0);
  v41 = "gnizeMyVoiceEnabled";
  v26 = v46;
  (v22)(v5, v24, v46);
  v50[0] = 1;
  sub_26738114C();
  v27 = v49;
  v49(v9, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v41 | 0x8000000000000000);
  v28(v50, 0);
  v41 = "numVoiceProfilesAvailable";
  v44 = *MEMORY[0x277D3E508];
  v29 = v45;
  v45(v5);
  v50[0] = 1;
  sub_26738114C();
  v27(v9, 0, 1, v11);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v41 | 0x8000000000000000);
  v30(v50, 0);
  v40 = "onalRequestsEnabled";
  v31 = v44;
  (v29)(v5, v44, v26);
  v50[0] = 1;
  sub_26738114C();
  v42 = v11;
  v32 = v49;
  v49(v9, 0, 1, v11);
  v33 = sub_2673811AC();
  v41 = 0xD000000000000020;
  sub_266EC637C(v9, 0xD000000000000020, v40 | 0x8000000000000000);
  v33(v50, 0);
  v40 = "hingSiriLanguage";
  v34 = v31;
  v36 = v45;
  v35 = v46;
  (v45)(v5, v34, v46);
  v50[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v11);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, v41, v40 | 0x8000000000000000);
  v37(v50, 0);
  (v36)(v5, v44, v35);
  v50[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v42);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x800000026746B030);
  return v38(v50, 0);
}

uint64_t sub_26716DD94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716DDF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716DE5C()
{
  result = qword_2800F6300;
  if (!qword_2800F6300)
  {
    sub_26716DEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6300);
  }

  return result;
}

unint64_t sub_26716DEB4()
{
  result = qword_2800F6308;
  if (!qword_2800F6308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6308);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDMultiUserState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6310, 0x277D59408);
  sub_266ECAF2C(&qword_2800F6318, &qword_2800F6310, 0x277D59408);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x64656C6C6F726E65, 0xED00007372657355);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6308, 0x277D59390);
  sub_266ECAF2C(&qword_2800F6300, &qword_2800F6308, 0x277D59390);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026746B090);
  return v7(v9, 0);
}

uint64_t sub_26716E1DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716E240(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDOptInProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17[1] = a1;
  v20 = sub_26738113C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = *MEMORY[0x277D3E4E8];
  v9 = *(v1 + 104);
  v19 = v1 + 104;
  v21 = v9;
  v17[0] = v4;
  v9(v4);
  v22[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026746B0E0);
  v12(v22, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_26716E854();
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674694C0);
  v13(v22, 0);
  sub_266ECB294(0, &qword_2800F1F50, 0x277D5A8C0);
  sub_266ECAF2C(&qword_2800F1F58, &qword_2800F1F50, 0x277D5A8C0);
  sub_26738122C();
  v11(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026746B100);
  v14(v22, 0);
  v21(v17[0], v18, v20);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026746B120);
  return v15(v22, 0);
}

uint64_t sub_26716E790(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716E7F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716E854()
{
  result = qword_2800F0418;
  if (!qword_2800F0418)
  {
    type metadata accessor for SISchemaDataSharingOptInState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0418);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDReliabilityCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v39 = sub_26738113C();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v38 = a1;
  sub_26738119C();
  v36 = *MEMORY[0x277D3E538];
  v35 = *(v2 + 104);
  v37 = v2 + 104;
  v35(v5);
  v40[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v32 = *(v11 + 56);
  v12 = v11 + 56;
  v32(v9, 0, 1, v10);
  v33 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x800000026746B170);
  v13(v40, 0);
  v31 = "reliabilityRequestCount";
  v14 = v36;
  v15 = v35;
  (v35)(v5, v36, v39);
  v40[0] = 1;
  sub_26738114C();
  v16 = v10;
  v17 = v10;
  v34 = v10;
  v18 = v32;
  v32(v9, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v31 | 0x8000000000000000);
  v19(v40, 0);
  v31 = "reliabilityTurnCount";
  v15(v5, v14, v39);
  v40[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v17);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v31 | 0x8000000000000000);
  v20(v40, 0);
  v31 = "clientErrorCount";
  v21 = v36;
  v22 = v39;
  v23 = v35;
  (v35)(v5, v36, v39);
  v40[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v34);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v31 | 0x8000000000000000);
  v24(v40, 0);
  v31 = "undesiredResponseCount";
  v23(v5, v21, v22);
  v40[0] = 1;
  sub_26738114C();
  v25 = v34;
  v18(v9, 0, 1, v34);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v31 | 0x8000000000000000);
  v26(v40, 0);
  v31 = "fatalResponseCount";
  v23(v5, v21, v39);
  v40[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v31 | 0x8000000000000000);
  v27(v40, 0);
  v23(v5, v36, v39);
  v40[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x800000026746B230);
  return v28(v40, 0);
}

uint64_t sub_26716F030(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716F094(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716F0F8()
{
  result = qword_2800F5EE8;
  if (!qword_2800F5EE8)
  {
    sub_26716F150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5EE8);
  }

  return result;
}

unint64_t sub_26716F150()
{
  result = qword_2800F5EE0;
  if (!qword_2800F5EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5EE0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDRequestsWithoutAssetsCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v26 = "stsWithoutAssetsCounts";
  v11 = *MEMORY[0x277D3E538];
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
  sub_266EC637C(v10, 0xD00000000000001CLL, v26 | 0x8000000000000000);
  v17(v29, 0);
  v26 = "requestsRequiringAssetsCount";
  v18 = v11;
  v19 = v27;
  v13(v6, v18, v27);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v26 | 0x8000000000000000);
  v20(v29, 0);
  v23(v6, v24, v19);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026746B2D0);
  return v21(v29, 0);
}

uint64_t sub_26716F5B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716F614(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716F678()
{
  result = qword_2800F6330;
  if (!qword_2800F6330)
  {
    sub_26716F6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6330);
  }

  return result;
}

unint64_t sub_26716F6D0()
{
  result = qword_2800F6338;
  if (!qword_2800F6338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6338);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDRequestsWithoutAssetsDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6340, 0x277D593C8);
  sub_266ECAF2C(&qword_2800F6348, &qword_2800F6340, 0x277D593C8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6338, 0x277D593B0);
  sub_266ECAF2C(&qword_2800F6330, &qword_2800F6338, 0x277D593B0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26716F9E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716FA48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDRequestsWithoutAssetsDigestReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6358, 0x277D593B8);
  sub_266ECAF2C(&qword_2800F6350, &qword_2800F6358, 0x277D593B8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26716FDC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716FE24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDRequestsWithoutAssetsDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v29 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248);
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v11, 0, 1, v12);
  v29[0] = a2;
  v29[1] = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x8000000267468FF0);
  v16(v36, 0);
  v17 = *MEMORY[0x277D3E530];
  v18 = v34;
  v30 = *(v35 + 104);
  v35 += 104;
  v32 = v17;
  v30(v7, v17, v34);
  v36[0] = 1;
  sub_26738114C();
  v31 = v12;
  v14(v11, 0, 1, v12);
  v19 = v14;
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x7465537465737361, 0xEA00000000006449);
  v20(v36, 0);
  v21 = v30;
  v30(v7, v17, v18);
  v36[0] = 1;
  sub_26738114C();
  v19(v11, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x7465537465737361, 0xEC000000656D614ELL);
  v22(v36, 0);
  v21(v7, v32, v18);
  v23 = v21;
  v36[0] = 1;
  sub_26738114C();
  v24 = v31;
  v19(v11, 0, 1, v31);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x8000000267469010);
  v25(v36, 0);
  v23(v7, *MEMORY[0x277D3E540], v34);
  v36[0] = 1;
  sub_26738114C();
  v19(v11, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002CLL, 0x8000000267469030);
  v26(v36, 0);
  type metadata accessor for ORCHSchemaORCHAssetType(0);
  sub_2671705C0();
  sub_26738122C();
  v19(v11, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026746B3B0);
  return v27(v36, 0);
}

uint64_t sub_2671704FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267170560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671705C0()
{
  result = qword_2800F6370;
  if (!qword_2800F6370)
  {
    type metadata accessor for ORCHSchemaORCHAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6370);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDSessionCounts.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746B400);
  return v10(v12, 0);
}

uint64_t sub_2671708AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267170910(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267170974()
{
  result = qword_2800F5F98;
  if (!qword_2800F5F98)
  {
    sub_2671709CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5F98);
  }

  return result;
}

unint64_t sub_2671709CC()
{
  result = qword_2800F5F90;
  if (!qword_2800F5F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5F90);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDSiriAccountInformation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6E61747369737361, 0xEB00000000644974);
  v10(v12, 0);
  sub_266ECB128(&unk_28788A930);
  return sub_2673811CC();
}

uint64_t sub_267170C84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267170CE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267170D4C()
{
  result = qword_2800F6378;
  if (!qword_2800F6378)
  {
    sub_267170DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6378);
  }

  return result;
}

unint64_t sub_267170DA4()
{
  result = qword_2800F6380;
  if (!qword_2800F6380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6380);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDSiriClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v105 = a1;
  v1 = sub_26738118C();
  v99 = *(v1 - 8);
  v100 = v1;
  v2 = *(v99 + 64);
  MEMORY[0x28223BE20](v1);
  v98 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v96 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6098, 0x277D592B0);
  sub_266ECAF2C(&qword_2800F6090, &qword_2800F6098, 0x277D592B0);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v107, 0);
  sub_266ECB294(0, &qword_2800F6118, 0x277D592E8);
  sub_266ECAF2C(&qword_2800F6110, &qword_2800F6118, 0x277D592E8);
  sub_26738121C();
  v101 = v10;
  v102 = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026746B490);
  v12(v107, 0);
  v13 = sub_2673811AC();
  v97 = 0xD000000000000016;
  v14 = sub_266ECB6CC(v106, 0xD000000000000016, 0x800000026746B490);
  v103 = *(v9 + 48);
  v104 = v9 + 48;
  if (!v103(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788A960);
    sub_26738115C();
  }

  (v14)(v106, 0);
  v13(v107, 0);
  sub_266ECB294(0, &qword_2800F60E8, 0x277D592D8);
  sub_266ECAF2C(&qword_2800F60E0, &qword_2800F60E8, 0x277D592D8);
  sub_26738121C();
  v101(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026746B4B0);
  v16(v107, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v106, 0xD000000000000015, 0x800000026746B4B0);
  if (!v103(v19, 1, v8))
  {
    sub_266ECB128(&unk_28788A988);
    sub_26738115C();
  }

  (v18)(v106, 0);
  v17(v107, 0);
  sub_266ECB294(0, &qword_2800F5F18, 0x277D59228);
  sub_266ECAF2C(&qword_2800F5F10, &qword_2800F5F18, 0x277D59228);
  sub_26738121C();
  v20 = v101;
  v101(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026746B4D0);
  v21(v107, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v106, 0xD00000000000001DLL, 0x800000026746B4D0);
  if (!v103(v24, 1, v8))
  {
    sub_266ECB128(&unk_28788A9B0);
    sub_26738115C();
  }

  (v23)(v106, 0);
  v22(v107, 0);
  sub_266ECB294(0, &qword_2800F6150, 0x277D592F8);
  sub_266ECAF2C(&qword_2800F6148, &qword_2800F6150, 0x277D592F8);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026746B4F0);
  v25(v107, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v106, 0xD00000000000001DLL, 0x800000026746B4F0);
  if (!v103(v28, 1, v8))
  {
    sub_266ECB128(&unk_28788A9D8);
    sub_26738115C();
  }

  (v27)(v106, 0);
  v26(v107, 0);
  sub_266ECB294(0, &qword_2800F6380, 0x277D593D8);
  sub_266ECAF2C(&qword_2800F6378, &qword_2800F6380, 0x277D593D8);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v29 = sub_2673811AC();
  v30 = v97;
  sub_266EC637C(v7, v97, 0x800000026742B600);
  v29(v107, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v106, v30, 0x800000026742B600);
  if (!v103(v33, 1, v8))
  {
    sub_266ECB128(&unk_28788AA00);
    sub_26738115C();
  }

  (v32)(v106, 0);
  v31(v107, 0);
  sub_266ECB294(0, &qword_2800F6000, 0x277D59260);
  sub_266ECAF2C(&qword_2800F5FF8, &qword_2800F6000, 0x277D59260);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x800000026746B510);
  v34(v107, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v106, 0xD000000000000021, 0x800000026746B510);
  if (!v103(v37, 1, v8))
  {
    sub_266ECB128(&unk_28788AA28);
    sub_26738115C();
  }

  (v36)(v106, 0);
  v35(v107, 0);
  sub_266ECB294(0, &qword_2800F5F58, 0x277D59238);
  sub_266ECAF2C(&qword_2800F5F50, &qword_2800F5F58, 0x277D59238);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v38 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002ELL, 0x800000026746B540);
  v38(v107, 0);
  v39 = sub_2673811AC();
  v40 = sub_266ECB6CC(v106, 0xD00000000000002ELL, 0x800000026746B540);
  if (!v103(v41, 1, v8))
  {
    sub_266ECB128(&unk_28788AA50);
    sub_26738115C();
  }

  (v40)(v106, 0);
  v39(v107, 0);
  sub_266ECB294(0, &qword_2800F62C8, 0x277D59428);
  sub_266ECAF2C(&qword_2800F62C0, &qword_2800F62C8, 0x277D59428);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026746B570);
  v42(v107, 0);
  v43 = sub_2673811AC();
  v44 = sub_266ECB6CC(v106, 0xD00000000000001BLL, 0x800000026746B570);
  if (!v103(v45, 1, v8))
  {
    sub_266ECB128(&unk_28788AA78);
    sub_26738115C();
  }

  (v44)(v106, 0);
  v43(v107, 0);
  sub_266ECB294(0, &qword_2800F6388, 0x277D59470);
  sub_266ECAF2C(&qword_2800F6390, &qword_2800F6388, 0x277D59470);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v46 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x800000026746B590);
  v46(v107, 0);
  v47 = sub_2673811AC();
  v48 = sub_266ECB6CC(v106, 0xD00000000000001FLL, 0x800000026746B590);
  if (!v103(v49, 1, v8))
  {
    sub_266ECB128(&unk_28788AAA0);
    sub_26738115C();
  }

  (v48)(v106, 0);
  v47(v107, 0);
  sub_266ECB294(0, &qword_2800F6398, 0x277D59458);
  sub_266ECAF2C(&qword_2800F63A0, &qword_2800F6398, 0x277D59458);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v50 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026746B5B0);
  v50(v107, 0);
  v51 = sub_2673811AC();
  v97 = 0xD00000000000001CLL;
  v52 = sub_266ECB6CC(v106, 0xD00000000000001CLL, 0x800000026746B5B0);
  if (!v103(v53, 1, v8))
  {
    sub_266ECB128(&unk_28788AAC8);
    sub_26738115C();
  }

  (v52)(v106, 0);
  v51(v107, 0);
  sub_266ECB294(0, &qword_2800F62F8, 0x277D59448);
  sub_266ECAF2C(&qword_2800F62F0, &qword_2800F62F8, 0x277D59448);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v54 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026746B5D0);
  v54(v107, 0);
  v55 = sub_2673811AC();
  v56 = sub_266ECB6CC(v106, 0xD00000000000001DLL, 0x800000026746B5D0);
  if (!v103(v57, 1, v8))
  {
    sub_266ECB128(&unk_28788AAF0);
    sub_26738115C();
  }

  (v56)(v106, 0);
  v55(v107, 0);
  sub_266ECB294(0, &qword_2800F63A8, 0x277D59460);
  sub_266ECAF2C(&qword_2800F63B0, &qword_2800F63A8, 0x277D59460);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v58 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, 0x800000026746B5F0);
  v58(v107, 0);
  v59 = sub_2673811AC();
  v60 = sub_266ECB6CC(v106, 0xD000000000000020, 0x800000026746B5F0);
  if (!v103(v61, 1, v8))
  {
    sub_266ECB128(&unk_28788AB18);
    sub_26738115C();
  }

  (v60)(v106, 0);
  v59(v107, 0);
  sub_266ECB294(0, &qword_2800F5EB0, 0x277D59210);
  sub_266ECAF2C(&qword_2800F5EA8, &qword_2800F5EB0, 0x277D59210);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v62 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x800000026746B620);
  v62(v107, 0);
  v63 = sub_2673811AC();
  v64 = sub_266ECB6CC(v106, 0xD00000000000001ELL, 0x800000026746B620);
  if (!v103(v65, 1, v8))
  {
    sub_266ECB128(&unk_28788AB40);
    sub_26738115C();
  }

  (v64)(v106, 0);
  v63(v107, 0);
  sub_266ECB294(0, &qword_2800F6368, 0x277D593C0);
  sub_266ECAF2C(&qword_2800F6360, &qword_2800F6368, 0x277D593C0);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v66 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, 0x800000026746B640);
  v66(v107, 0);
  v67 = sub_2673811AC();
  v68 = sub_266ECB6CC(v106, 0xD000000000000023, 0x800000026746B640);
  if (!v103(v69, 1, v8))
  {
    sub_266ECB128(&unk_28788AB68);
    sub_26738115C();
  }

  (v68)(v106, 0);
  v67(v107, 0);
  sub_266ECB294(0, &qword_2800F5E00, 0x277D591D0);
  sub_266ECAF2C(&qword_2800F5DF8, &qword_2800F5E00, 0x277D591D0);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v70 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000027, 0x800000026746B670);
  v70(v107, 0);
  v71 = sub_2673811AC();
  v72 = sub_266ECB6CC(v106, 0xD000000000000027, 0x800000026746B670);
  if (!v103(v73, 1, v8))
  {
    sub_266ECB128(&unk_28788AB90);
    sub_26738115C();
  }

  (v72)(v106, 0);
  v71(v107, 0);
  sub_266ECB294(0, &qword_2800F5E40, 0x277D591F0);
  sub_266ECAF2C(&qword_2800F5E38, &qword_2800F5E40, 0x277D591F0);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v74 = sub_2673811AC();
  v75 = v97;
  sub_266EC637C(v7, v97, 0x800000026746B6A0);
  v74(v107, 0);
  v76 = sub_2673811AC();
  v77 = sub_266ECB6CC(v106, v75, 0x800000026746B6A0);
  if (!v103(v78, 1, v8))
  {
    sub_266ECB128(&unk_28788ABB8);
    sub_26738115C();
  }

  (v77)(v106, 0);
  v76(v107, 0);
  sub_266ECB294(0, &qword_2800F61F8, 0x277D59340);
  sub_266ECAF2C(&qword_2800F61F0, &qword_2800F61F8, 0x277D59340);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v79 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026746B6C0);
  v79(v107, 0);
  v80 = sub_2673811AC();
  v81 = sub_266ECB6CC(v106, 0xD000000000000019, 0x800000026746B6C0);
  if (!v103(v82, 1, v8))
  {
    sub_266ECB128(&unk_28788ABE0);
    sub_26738115C();
  }

  (v81)(v106, 0);
  v80(v107, 0);
  sub_266ECB294(0, &qword_2800F61B0, 0x277D59320);
  sub_266ECAF2C(&qword_2800F61A8, &qword_2800F61B0, 0x277D59320);
  sub_26738121C();
  v20(v7, 0, 1, v8);
  v83 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, 0x800000026746B6E0);
  v83(v107, 0);
  v84 = sub_2673811AC();
  v85 = sub_266ECB6CC(v106, 0xD000000000000022, 0x800000026746B6E0);
  if (!v103(v86, 1, v8))
  {
    sub_266ECB128(&unk_28788AC08);
    sub_26738115C();
  }

  (v85)(v106, 0);
  v84(v107, 0);
  v87 = v98;
  sub_26738117C();
  v88 = sub_2673811BC();
  v90 = v89;
  v91 = *v89;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v90 = v91;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v91 = sub_266ECAD54(0, v91[2] + 1, 1, v91);
    *v90 = v91;
  }

  v94 = v91[2];
  v93 = v91[3];
  if (v94 >= v93 >> 1)
  {
    v91 = sub_266ECAD54(v93 > 1, v94 + 1, 1, v91);
    *v90 = v91;
  }

  v91[2] = v94 + 1;
  (*(v99 + 32))(v91 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v94, v87, v100);
  v88(v107, 0);
  sub_266ECB128(&unk_28788AC30);
  return sub_2673811CC();
}

uint64_t sub_267172A9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267172B34()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267172C00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267172C64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267172CC4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F63B8, &qword_2800F63C0, 0x277D593E0);
  a1[2] = sub_266ECAF2C(&qword_2800F63C8, &qword_2800F63C0, 0x277D593E0);
  result = sub_266ECAF2C(&qword_2800F63D0, &qword_2800F63C0, 0x277D593E0);
  a1[3] = result;
  return result;
}

uint64_t static ODDSiriSchemaODDSiriInCallEnablementState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026746B750, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026746B780, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026746B7B0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026746B7E0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26717304C(uint64_t a1)
{
  v2 = sub_267173150(&qword_2800F63E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671730B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267173150(&qword_2800F63E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267173150(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDSiriInCallEnablementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDSiriInCallProperties.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDHeySiriHangupEnablementState(0);
  sub_267173554(&qword_2800F6248, type metadata accessor for ODDSiriSchemaODDHeySiriHangupEnablementState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x800000026746B840);
  v6(v9, 0);
  type metadata accessor for ODDSiriSchemaODDSiriInCallEnablementState(0);
  sub_267173554(&qword_2800F63E0, type metadata accessor for ODDSiriSchemaODDSiriInCallEnablementState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x800000026746B860);
  return v7(v9, 0);
}

uint64_t sub_267173448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671734AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267173554(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26717359C()
{
  result = qword_2800F6290;
  if (!qword_2800F6290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6290);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDTaskAppBundleId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746B8B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026746B8D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026746B900, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026746B930, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267173870(uint64_t a1)
{
  v2 = sub_267173974(&qword_2800F63F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671738D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267173974(&qword_2800F63F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267173974(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDTaskAppBundleId(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDTaskCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v29 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v26 = "iri.odd.ODDTaskCounts";
  v11 = *MEMORY[0x277D3E538];
  v27 = *(v3 + 104);
  v25 = v11;
  v27(v6, v11, v2);
  v24[2] = v3 + 104;
  v30[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v28 = v13 + 56;
  v14(v10, 0, 1, v12);
  v24[1] = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v26 | 0x8000000000000000);
  v15(v30, 0);
  v26 = "siriTasksStarted";
  v16 = v11;
  v17 = v29;
  v18 = v27;
  v27(v6, v16, v29);
  v30[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v26 | 0x8000000000000000);
  v19(v30, 0);
  v26 = "siriTasksCompleted";
  v20 = v25;
  v18(v6, v25, v17);
  v30[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v26 | 0x8000000000000000);
  v21(v30, 0);
  v18(v6, v20, v29);
  v30[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026746B9F0);
  return v22(v30, 0);
}

uint64_t sub_267173E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267173EFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267173F60()
{
  result = qword_2800F5ED8;
  if (!qword_2800F5ED8)
  {
    sub_267173FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5ED8);
  }

  return result;
}

unint64_t sub_267173FB8()
{
  result = qword_2800F5ED0;
  if (!qword_2800F5ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5ED0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDTimeInterval.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v18 = "iri.odd.ODDTimeInterval";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E540], v2);
  v19[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v18 | 0x8000000000000000);
  v14(v19, 0);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v19[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x664F7265626D756ELL, 0xEF73646E6F636553);
  return v15(v19, 0);
}

uint64_t sub_26717433C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671743A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267174404()
{
  result = qword_2800F5D40;
  if (!qword_2800F5D40)
  {
    sub_26717445C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5D40);
  }

  return result;
}

unint64_t sub_26717445C()
{
  result = qword_2800F5D38;
  if (!qword_2800F5D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5D38);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDTurnCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x7275546C61746F74, 0xEE00746E756F436ELL);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x72755464696C6176, 0xEE00746E756F436ELL);
  return v16(v20, 0);
}

uint64_t sub_2671747E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267174844(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671748A8()
{
  result = qword_2800F5E70;
  if (!qword_2800F5E70)
  {
    sub_267174900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5E70);
  }

  return result;
}

unint64_t sub_267174900()
{
  result = qword_2800F5E68;
  if (!qword_2800F5E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5E68);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDtvOSAssistantProperties.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6328, 0x277D59398);
  sub_266ECAF2C(&qword_2800F6320, &qword_2800F6328, 0x277D59398);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x65735569746C756DLL, 0xEE00657461745372);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6260, 0x277D59378);
  sub_266ECAF2C(&qword_2800F6258, &qword_2800F6260, 0x277D59378);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026746BAE0);
  return v7(v9, 0);
}

uint64_t sub_267174C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267174C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDtvOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F6400, 0x277D59450);
  sub_266ECAF2C(&qword_2800F63F8, &qword_2800F6400, 0x277D59450);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x69737341534F7674, 0xED0000746E617473);
  return v9(v11, 0);
}

uint64_t sub_2671751A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267175204(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDUserPersonalization.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026746BB70);
  v11(v15, 0);
  type metadata accessor for SISchemaAppleMediaProductsSubscription(0);
  sub_26716B1E0();
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267435690);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7465536563696F76, 0xED000073676E6974);
  return v13(v15, 0);
}

uint64_t sub_267175678(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671756DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDvisionOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  return v8(v10, 0);
}

uint64_t sub_267175B1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267175B80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDVoiceProperties.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaVoiceGender(0);
  sub_2671760E4(&qword_2800F6408, type metadata accessor for SISchemaVoiceGender);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265646E6567, 0xE600000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E65636361, 0xE600000000000000);
  v7(v11, 0);
  type metadata accessor for SISchemaVoiceName(0);
  sub_2671760E4(&qword_2800F6410, type metadata accessor for SISchemaVoiceName);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 1701667182, 0xE400000000000000);
  v8(v11, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C6C6174736E69, 0xEF736563696F5664);
  return v9(v11, 0);
}

uint64_t sub_267176020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267176084(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671760E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODDSiriSchemaODDwatchOSAssistantProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v17 = "OSAssistantProperties";
  v10 = *MEMORY[0x277D3E4E8];
  v18 = *(v2 + 104);
  v18(v5, v10, v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v17 | 0x8000000000000000);
  v13(v21, 0);
  v18(v5, v10, v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026746BC60);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F6240, 0x277D59368);
  sub_266ECAF2C(&qword_2800F6238, &qword_2800F6240, 0x277D59368);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7473654764616568, 0xEC00000073657275);
  return v15(v21, 0);
}

uint64_t sub_267176584(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671765E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDwatchOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F6420, 0x277D59468);
  sub_266ECAF2C(&qword_2800F6418, &qword_2800F6420, 0x277D59468);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026746BCC0);
  return v9(v11, 0);
}

uint64_t sub_267176AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267176B60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODFUNNELSiriSchemaODFUNNELClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[3] = a1;
  v36 = sub_26738113C();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v11 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v32 = v10;
  v33 = v11;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C656E6E7566646FLL, 0xEA00000000006449);
  v16(v37, 0);
  v29 = *MEMORY[0x277D3E540];
  v17 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v17;
  (v17)(v35);
  v37[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267468710);
  v18(v37, 0);
  sub_266ECB294(0, &qword_2800F5D38, 0x277D593F8);
  sub_266ECAF2C(&qword_2800F5D40, &qword_2800F5D38, 0x277D593F8);
  sub_26738120C();
  v34 = v12;
  v28[2] = v15;
  v14(v9, 0, 1, v12);
  v28[1] = a2;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x80000002674686F0);
  v19(v37, 0);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v28[0] = v14;
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026742BA40);
  v20(v37, 0);
  v33 = "userAggregationId";
  v21 = v35;
  v22 = v36;
  v23 = v29;
  v24 = v31;
  v31(v35, v29, v36);
  v37[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v34);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v33 | 0x8000000000000000);
  v25(v37, 0);
  v24(v21, v23, v22);
  v37[0] = 1;
  sub_26738114C();
  (v28[0])(v9, 0, 1, v34);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000026, 0x800000026742BA10);
  return v26(v37, 0);
}

uint64_t sub_26717724C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671772B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODFUNNELSiriSchemaODFUNNELCoreDimensions.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x75426D6574737973, 0xEB00000000646C69);
  v11(v15, 0);
  type metadata accessor for SISchemaAssistantViewMode(0);
  sub_2671777F0();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x65746E4977656976, 0xED00006563616672);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x75706E4969726973, 0xEF656C61636F4C74);
  return v13(v15, 0);
}

uint64_t sub_26717772C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267177790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671777F0()
{
  result = qword_2800F5F60;
  if (!qword_2800F5F60)
  {
    type metadata accessor for SISchemaAssistantViewMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5F60);
  }

  return result;
}

uint64_t static ODFUNNELSiriSchemaODFUNNELSiriClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
  v1 = sub_26738118C();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6430, 0x277D59478);
  sub_266ECAF2C(&qword_2800F6428, &qword_2800F6430, 0x277D59478);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F6448, 0x277D594A0);
  sub_266ECAF2C(&qword_2800F6450, &qword_2800F6448, 0x277D594A0);
  sub_26738121C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, 0x800000026746BDA0);
  v12(v30, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v29, 0xD000000000000024, 0x800000026746BDA0);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788AC60);
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
  v17(v30, 0);
  sub_266ECB128(&unk_28788AC88);
  return sub_2673811CC();
}

uint64_t sub_267177D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267177DFC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267177EC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267177F2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267177F8C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6458, &qword_2800F6460, 0x277D59488);
  a1[2] = sub_266ECAF2C(&qword_2800F6468, &qword_2800F6460, 0x277D59488);
  result = sub_266ECAF2C(&qword_2800F6470, &qword_2800F6460, 0x277D59488);
  a1[3] = result;
  return result;
}

uint64_t static ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6480, 0x277D59498);
  sub_266ECAF2C(&qword_2800F6488, &qword_2800F6480, 0x277D59498);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  return v5(v7, 0);
}

uint64_t sub_267178264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6480, 0x277D59498);
  sub_266ECAF2C(&qword_2800F6488, &qword_2800F6480, 0x277D59498);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  return v5(v7, 0);
}

uint64_t sub_267178404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267178468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v18 = *(v0 - 8);
  v19 = v0;
  v1 = *(v18 + 64);
  MEMORY[0x28223BE20](v0);
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6440, 0x277D59480);
  sub_266ECAF2C(&qword_2800F6438, &qword_2800F6440, 0x277D59480);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D694465726F63, 0xEE00736E6F69736ELL);
  v9(v20, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode(0);
  sub_267178C28(&qword_2800F64A0, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D6C6C6F726E65, 0xEE0065646F4D746ELL);
  v10(v20, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType(0);
  sub_267178C28(&qword_2800F64A8, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026746BE70);
  v11(v20, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome(0);
  sub_267178C28(&qword_2800F64B0, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026746BE90);
  v12(v20, 0);
  (*(v18 + 104))(v17, *MEMORY[0x277D3E538], v19);
  v20[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026746BEB0);
  v13(v20, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome(0);
  sub_267178C28(&qword_2800F64B8, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x676E696E69617274, 0xEF656D6F6374754FLL);
  return v14(v20, 0);
}

uint64_t sub_267178B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267178BC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267178C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6498, 0x277D59490);
  sub_266ECAF2C(&qword_2800F6490, &qword_2800F6498, 0x277D59490);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267178F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267178FEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMDynamicDimensions.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x75706E4969726973, 0xEF656C61636F4C74);
  v6(v12, 0);
  type metadata accessor for ODMSiriSchemaODMSiriUIViewMode(0);
  sub_26717966C(&qword_2800F64C0, type metadata accessor for ODMSiriSchemaODMSiriUIViewMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65646F4D77656976, 0xE800000000000000);
  v7(v12, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
  sub_26717966C(&qword_2800F3FD0, type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E496F69647561, 0xEE00656361667265);
  v8(v12, 0);
  type metadata accessor for ODMSiriSchemaODMSiriTaskType(0);
  sub_26717966C(&qword_2800F64C8, type metadata accessor for ODMSiriSchemaODMSiriTaskType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  v9(v12, 0);
  type metadata accessor for ODMSiriSchemaODMSiriTaskAppBundleId(0);
  sub_26717966C(&qword_2800F64D0, type metadata accessor for ODMSiriSchemaODMSiriTaskAppBundleId);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x427070416B736174, 0xEF6449656C646E75);
  v10(v12, 0);
  sub_266ECB128(&unk_28788ACB8);
  return sub_2673811CC();
}

uint64_t sub_2671795A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717960C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26717966C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODMSiriSchemaODMDynamicDimensionsAll.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x75706E4969726973, 0xEF656C61636F4C74);
  v6(v14, 0);
  type metadata accessor for ODMSiriSchemaODMSiriUIViewMode(0);
  sub_267179E54(&qword_2800F64C0, type metadata accessor for ODMSiriSchemaODMSiriUIViewMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65646F4D77656976, 0xE800000000000000);
  v7(v14, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
  sub_267179E54(&qword_2800F3FD0, type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E496F69647561, 0xEE00656361667265);
  v8(v14, 0);
  type metadata accessor for SISchemaProduct(0);
  sub_267179E54(&qword_2800F64E8, type metadata accessor for SISchemaProduct);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x746375646F7270, 0xE700000000000000);
  v9(v14, 0);
  type metadata accessor for ORCHSchemaORCHSiriAsrMode(0);
  sub_267179E54(&qword_2800F5F68, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x4C72734169726973, 0xEF6E6F697461636FLL);
  v10(v14, 0);
  type metadata accessor for ORCHSchemaORCHSiriNlMode(0);
  sub_267179E54(&qword_2800F5F70, type metadata accessor for ORCHSchemaORCHSiriNlMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v11 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F4C6C4E69726973, 0xEE006E6F69746163);
  v11(v14, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_267179E54(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x800000026746BF80);
  v12(v14, 0);
  sub_266ECB128(&unk_28788ACE0);
  return sub_2673811CC();
}

uint64_t sub_267179D90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267179DF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267179E54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODMSiriSchemaODMSiriAggregationDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v21 = sub_26738113C();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v20[1] = a1;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x75706E4969726973, 0xEF656C61636F4C74);
  v12(v22, 0);
  v20[0] = "ggregationDimensions";
  v13 = *MEMORY[0x277D3E538];
  v14 = v2 + 104;
  v15 = *(v2 + 104);
  v20[2] = v14;
  v16 = v21;
  v15(v5, v13, v21);
  v22[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v20[0] | 0x8000000000000000);
  v17(v22, 0);
  v15(v5, *MEMORY[0x277D3E518], v16);
  v22[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000033, 0x800000026746C000);
  v18(v22, 0);
  sub_266ECB128(&unk_28788AD08);
  return sub_2673811CC();
}

uint64_t sub_26717A318(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717A37C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriAggregationInterval.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v18 = "ggregationDimensions";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v19[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v18 | 0x8000000000000000);
  v14(v19, 0);
  v11(v6, *MEMORY[0x277D3E518], v2);
  v19[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000033, 0x800000026746C000);
  v15(v19, 0);
  sub_266ECB128(&unk_28788AD30);
  return sub_2673811CC();
}

uint64_t sub_26717A76C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717A7D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717A834()
{
  result = qword_2800F6510;
  if (!qword_2800F6510)
  {
    sub_26717A88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6510);
  }

  return result;
}

unint64_t sub_26717A88C()
{
  result = qword_2800F6518;
  if (!qword_2800F6518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6518);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v43 = a1;
  v1 = sub_26738118C();
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v1);
  v38 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v37 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6520, 0x277D594F0);
  sub_266ECAF2C(&qword_2800F6528, &qword_2800F6520, 0x277D594F0);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v45, 0);
  sub_266ECB294(0, &qword_2800F6530, 0x277D59508);
  sub_266ECAF2C(&qword_2800F6538, &qword_2800F6530, 0x277D59508);
  sub_26738121C();
  v42 = v10;
  v37[1] = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026746C0B0);
  v12(v45, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v44, 0xD000000000000012, 0x800000026746C0B0);
  v41 = *(v9 + 48);
  if (!v41(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788AD58);
    sub_26738115C();
  }

  (v14)(v44, 0);
  v13(v45, 0);
  sub_266ECB294(0, &qword_2800F6540, 0x277D594E0);
  sub_266ECAF2C(&qword_2800F6548, &qword_2800F6540, 0x277D594E0);
  sub_26738121C();
  v42(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x655273746E756F63, 0xEE00646574726F70);
  v16(v45, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v44, 0x655273746E756F63, 0xEE00646574726F70);
  if (!v41(v19, 1, v8))
  {
    sub_266ECB128(&unk_28788AD88);
    sub_26738115C();
  }

  (v18)(v44, 0);
  v17(v45, 0);
  sub_266ECB294(0, &qword_2800F6550, 0x277D594E8);
  sub_266ECAF2C(&qword_2800F6558, &qword_2800F6550, 0x277D594E8);
  sub_26738121C();
  v42(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026746C0D0);
  v20(v45, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v44, 0xD000000000000011, 0x800000026746C0D0);
  if (!v41(v23, 1, v8))
  {
    sub_266ECB128(&unk_28788ADB8);
    sub_26738115C();
  }

  (v22)(v44, 0);
  v21(v45, 0);
  sub_266ECB294(0, &qword_2800F6560, 0x277D59518);
  sub_266ECAF2C(&qword_2800F6568, &qword_2800F6560, 0x277D59518);
  sub_26738121C();
  v42(v7, 0, 1, v8);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x8000000267468690);
  v24(v45, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v44, 0xD00000000000001DLL, 0x8000000267468690);
  if (!v41(v27, 1, v8))
  {
    sub_266ECB128(&unk_28788ADE0);
    sub_26738115C();
  }

  (v26)(v44, 0);
  v25(v45, 0);
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
  v29(v45, 0);
  sub_266ECB128(&unk_28788AE08);
  return sub_2673811CC();
}

uint64_t sub_26717B208(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26717B2A0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26717B36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717B3D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26717B430(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6570, &qword_2800F6578, 0x277D594C8);
  a1[2] = sub_266ECAF2C(&qword_2800F6580, &qword_2800F6578, 0x277D594C8);
  result = sub_266ECAF2C(&qword_2800F6588, &qword_2800F6578, 0x277D594C8);
  a1[3] = result;
  return result;
}

uint64_t static ODMSiriSchemaODMSiriCounts.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F64E0, 0x277D594A8);
  sub_266ECAF2C(&qword_2800F64D8, &qword_2800F64E0, 0x277D594A8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6598, 0x277D59500);
  sub_266ECAF2C(&qword_2800F65A0, &qword_2800F6598, 0x277D59500);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436B736174, 0xEA00000000007374);
  v7(v9, 0);
  sub_266ECB128(&unk_28788AE40);
  return sub_2673811CC();
}

uint64_t sub_26717B818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717B87C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriCountsAll.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F64F8, 0x277D594B0);
  sub_266ECAF2C(&qword_2800F64F0, &qword_2800F64F8, 0x277D594B0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F65B8, 0x277D594F8);
  sub_266ECAF2C(&qword_2800F65C0, &qword_2800F65B8, 0x277D594F8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x4374736575716572, 0xED000073746E756FLL);
  v7(v9, 0);
  sub_266ECB128(&unk_28788AE68);
  return sub_2673811CC();
}

uint64_t sub_26717BC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717BC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriCountsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6518, 0x277D594C0);
  sub_266ECAF2C(&qword_2800F6510, &qword_2800F6518, 0x277D594C0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674686F0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F65B0, 0x277D594D0);
  sub_266ECAF2C(&qword_2800F65A8, &qword_2800F65B0, 0x277D594D0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F4369726973, 0xEA00000000007374);
  v7(v9, 0);
  sub_266ECB128(&unk_28788AE90);
  return sub_2673811CC();
}

uint64_t sub_26717BFF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717C05C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriCountsReportedAll.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6518, 0x277D594C0);
  sub_266ECAF2C(&qword_2800F6510, &qword_2800F6518, 0x277D594C0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674686F0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F65D0, 0x277D594D8);
  sub_266ECAF2C(&qword_2800F65C8, &qword_2800F65D0, 0x277D594D8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F4369726973, 0xED00006C6C417374);
  v7(v10, 0);
  type metadata accessor for ODMSiriSchemaODMSiriSegment(0);
  sub_26717C538();
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E656D676573, 0xE800000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_28788AEB8);
  return sub_2673811CC();
}

uint64_t sub_26717C474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717C4D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717C538()
{
  result = qword_2800F65D8;
  if (!qword_2800F65D8)
  {
    type metadata accessor for ODMSiriSchemaODMSiriSegment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F65D8);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v8, 0x64496D646FLL, 0xE500000000000000);
  v11(v17, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x65566E6967756C70, 0xED00006E6F697372);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F65E0, 0x277D59520);
  sub_266ECAF2C(&qword_2800F65E8, &qword_2800F65E0, 0x277D59520);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026746C1F0);
  v13(v17, 0);
  sub_266ECB128(&unk_28788AEE0);
  return sub_2673811CC();
}

uint64_t sub_26717C9F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717CA5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriRequestCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x65757165526C6C61, 0xEF746E756F437473);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026746C240);
  v16(v20, 0);
  sub_266ECB128(&unk_28788AF08);
  return sub_2673811CC();
}

uint64_t sub_26717CE48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717CEAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717CF10()
{
  result = qword_2800F65C0;
  if (!qword_2800F65C0)
  {
    sub_26717CF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F65C0);
  }

  return result;
}

unint64_t sub_26717CF68()
{
  result = qword_2800F65B8;
  if (!qword_2800F65B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F65B8);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriSegment.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x800000026746C290, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026746C2B0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026746C2D0, v17);
  v18 = *v15;
  *v15 = v22;

  v13(v23, 0);
  sub_266ECB128(&unk_28788AF30);
  return sub_26738112C();
}

uint64_t sub_26717D1DC(uint64_t a1)
{
  v2 = sub_26717D2E0(&qword_2800F65F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26717D244(uint64_t a1, uint64_t a2)
{
  v4 = sub_26717D2E0(&qword_2800F65F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26717D2E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODMSiriSchemaODMSiriSegment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTaskAppBundleId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026746C330, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026746C350, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026746C380, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x800000026746C3B0, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_28788AF58);
  return sub_26738112C();
}

uint64_t sub_26717D5C0(uint64_t a1)
{
  v2 = sub_26717D6C4(&qword_2800F65F8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26717D628(uint64_t a1, uint64_t a2)
{
  v4 = sub_26717D6C4(&qword_2800F65F8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26717D6C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODMSiriSchemaODMSiriTaskAppBundleId(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTaskCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v33 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-v9];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v27 = a1;
  sub_26738119C();
  v31 = "dm.siri.ODMSiriTaskCounts";
  v11 = *MEMORY[0x277D3E538];
  v32 = *(v3 + 104);
  v32(v6, v11, v2);
  v28 = v3 + 104;
  v34[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v29 = v12;
  v30 = v13 + 56;
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v31 | 0x8000000000000000);
  v15(v34, 0);
  v31 = "completedSiriTaskCount";
  v16 = v11;
  v17 = v11;
  v26 = v11;
  v18 = v32;
  v19 = v33;
  v32(v6, v16, v33);
  v34[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v31 | 0x8000000000000000);
  v20(v34, 0);
  v31 = "failedSiriTaskCount";
  v18(v6, v17, v19);
  v34[0] = 1;
  sub_26738114C();
  v21 = v29;
  v14(v10, 0, 1, v29);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v31 | 0x8000000000000000);
  v22(v34, 0);
  v32(v6, v26, v33);
  v34[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026746C470);
  v23(v34, 0);
  sub_266ECB128(&unk_28788AF80);
  return sub_2673811CC();
}

uint64_t sub_26717DBF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717DC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717DCC0()
{
  result = qword_2800F65A0;
  if (!qword_2800F65A0)
  {
    sub_26717DD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F65A0);
  }

  return result;
}

unint64_t sub_26717DD18()
{
  result = qword_2800F6598;
  if (!qword_2800F6598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6598);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTaskCountsReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6508, 0x277D594B8);
  sub_266ECAF2C(&qword_2800F6500, &qword_2800F6508, 0x277D594B8);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v33 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v14(v37, 0);
  type metadata accessor for ODMSiriSchemaODMSiriTaskType(0);
  sub_26717E484();
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v31 = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x657079546B736174, 0xE800000000000000);
  v15(v37, 0);
  v29 = "dm.siri.ODMSiriTaskCounts";
  v34 = *MEMORY[0x277D3E538];
  v16 = v36;
  v35 = *(v35 + 104);
  v17 = v5;
  (v35)(v5);
  v37[0] = 1;
  sub_26738114C();
  v18 = v10;
  v32 = v13;
  v19 = v33;
  v33(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v29 | 0x8000000000000000);
  v20(v37, 0);
  v29 = "completedSiriTaskCount";
  v21 = v34;
  (v35)(v17, v34, v16);
  v37[0] = 1;
  sub_26738114C();
  v30 = v18;
  v19(v9, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v29 | 0x8000000000000000);
  v22(v37, 0);
  v29 = "failedSiriTaskCount";
  v23 = v21;
  v25 = v35;
  v24 = v36;
  (v35)(v17, v23, v36);
  v37[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v18);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v29 | 0x8000000000000000);
  v26(v37, 0);
  v25(v17, v34, v24);
  v37[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v30);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026746C470);
  v27(v37, 0);
  sub_266ECB128(&unk_28788AFA8);
  return sub_2673811CC();
}

uint64_t sub_26717E3C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717E424(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717E484()
{
  result = qword_2800F64C8;
  if (!qword_2800F64C8)
  {
    type metadata accessor for ODMSiriSchemaODMSiriTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F64C8);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x800000026746C500, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026746C520, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026746C540, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026746C560, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026746C580, v29);
  v30 = *v27;
  *v27 = v36;

  v25(v37, 0);
  sub_266ECB128(&unk_28788AFD0);
  return sub_26738112C();
}

uint64_t sub_26717E828(uint64_t a1)
{
  v2 = sub_26717E92C(&qword_2800F6600);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26717E890(uint64_t a1, uint64_t a2)
{
  v4 = sub_26717E92C(&qword_2800F6600);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26717E92C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODMSiriSchemaODMSiriTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTurnRestatementScore.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v28 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v8);
  v26[1] = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x54746E6572727563, 0xED000064496E7275);
  v12(v31, 0);
  sub_26738120C();
  v13 = v10;
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E7275547478656ELL, 0xEA00000000006449);
  v14(v31, 0);
  v15 = *MEMORY[0x277D3E4E8];
  v16 = v29;
  v17 = v30 + 104;
  v27 = *(v30 + 104);
  v18 = v28;
  v27(v28, v15, v29);
  v30 = v17;
  v31[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x6552726573557369, 0xED00007473657571);
  v19(v31, 0);
  v26[0] = "TCHTurnRestatementScore";
  v20 = *MEMORY[0x277D3E518];
  v21 = v16;
  v22 = v27;
  v27(v18, v20, v21);
  v31[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v8);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v26[0] | 0x8000000000000000);
  v23(v31, 0);
  v22(v18, v20, v29);
  v31[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v8);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026746C5E0);
  v24(v31, 0);
  sub_266ECB128(&unk_28788AFF8);
  return sub_2673811CC();
}

uint64_t sub_26717EF00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717EF64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriTurnRestatementScoresReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6610, 0x277D59510);
  sub_266ECAF2C(&qword_2800F6608, &qword_2800F6610, 0x277D59510);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x800000026746C640);
  v5(v7, 0);
  sub_266ECB128(&unk_28788B020);
  return sub_2673811CC();
}

uint64_t sub_26717F214(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717F278(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriUIViewMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026746C690, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026746C6B0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026746C6D0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026746C6F0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x800000026746C710, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x800000026746C730, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x800000026746C750, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x800000026746C770, v47);
  v48 = *v45;
  *v45 = v57;

  v43(v58, 0);
  sub_266ECB128(&unk_28788B048);
  return sub_26738112C();
}

uint64_t sub_26717F77C(uint64_t a1)
{
  v2 = sub_26717F880(&qword_2800F6618);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26717F7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26717F880(&qword_2800F6618);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26717F880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODMSiriSchemaODMSiriUIViewMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMTrialExperimentIdentifiers.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0x656D697265707865, 0xEC0000006449746ELL);
  v13(v21, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D7461657274, 0xEB00000000644974);
  v14(v21, 0);
  v18(v5, *MEMORY[0x277D3E510], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v15(v21, 0);
  sub_266ECB128(&unk_28788B070);
  return sub_2673811CC();
}

uint64_t sub_26717FCE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717FD48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODSAMPLESiriSchemaODSAMPLEClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = sub_26738118C();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v40 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6620, 0x277D59530);
  sub_266ECAF2C(&qword_2800F6628, &qword_2800F6620, 0x277D59530);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x74654D746E657665, 0xED00006174616461);
  v13(v50, 0);
  sub_266ECB294(0, &qword_2800F6630, 0x277D59538);
  sub_266ECAF2C(&qword_2800F6638, &qword_2800F6630, 0x277D59538);
  v44 = a2;
  sub_26738121C();
  v40[1] = v11 + 56;
  v46 = v12;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x800000026746C820);
  v14(v50, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v49, 0xD00000000000001CLL, 0x800000026746C820);
  v17 = *(v11 + 48);
  v47 = v11 + 48;
  v45 = v17;
  if (!v17(v18, 1, v10))
  {
    sub_266ECB128(&unk_28788B098);
    sub_26738115C();
  }

  (v16)(v49, 0);
  v15(v50, 0);
  sub_266ECB294(0, &qword_2800F6640, 0x277D59548);
  sub_266ECAF2C(&qword_2800F6648, &qword_2800F6640, 0x277D59548);
  sub_26738121C();
  v46(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x800000026746C840);
  v19(v50, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v49, 0xD00000000000001CLL, 0x800000026746C840);
  if (!v45(v22, 1, v10))
  {
    sub_266ECB128(&unk_28788B0C8);
    sub_26738115C();
  }

  (v21)(v49, 0);
  v20(v50, 0);
  sub_266ECB294(0, &qword_2800F6650, 0x277D59540);
  sub_266ECAF2C(&qword_2800F6658, &qword_2800F6650, 0x277D59540);
  sub_26738121C();
  v46(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x800000026746C860);
  v23(v50, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v49, 0xD000000000000024, 0x800000026746C860);
  if (!v45(v26, 1, v10))
  {
    sub_266ECB128(&unk_28788B0F8);
    sub_26738115C();
  }

  (v25)(v49, 0);
  v24(v50, 0);
  sub_266ECB294(0, &qword_2800F6660, 0x277D59550);
  sub_266ECAF2C(&qword_2800F6668, &qword_2800F6660, 0x277D59550);
  sub_26738121C();
  v46(v9, 0, 1, v10);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x800000026746C890);
  v27(v50, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v49, 0xD00000000000001BLL, 0x800000026746C890);
  if (!v45(v30, 1, v10))
  {
    sub_266ECB128(&unk_28788B128);
    sub_26738115C();
  }

  (v29)(v49, 0);
  v28(v50, 0);
  v31 = v41;
  sub_26738117C();
  v32 = sub_2673811BC();
  v34 = v33;
  v35 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v34 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_266ECAD54(0, v35[2] + 1, 1, v35);
    *v34 = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_266ECAD54(v37 > 1, v38 + 1, 1, v35);
    *v34 = v35;
  }

  v35[2] = v38 + 1;
  (*(v42 + 32))(v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38, v31, v43);
  v32(v50, 0);
  sub_266ECB128(&unk_28788B158);
  return sub_2673811CC();
}

uint64_t sub_267180728(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671807C0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26718088C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671808F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267180950(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6670, &qword_2800F6678, 0x277D59528);
  a1[2] = sub_266ECAF2C(&qword_2800F6680, &qword_2800F6678, 0x277D59528);
  result = sub_266ECAF2C(&qword_2800F6688, &qword_2800F6678, 0x277D59528);
  a1[3] = result;
  return result;
}

uint64_t static ODSAMPLESiriSchemaODSAMPLEClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x656C706D6173646FLL, 0xEA00000000006449);
  return v5(v7, 0);
}

uint64_t sub_267180C28()
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
  sub_266EC637C(v3, 0x656C706D6173646FLL, 0xEA00000000006449);
  return v5(v7, 0);
}

uint64_t sub_267180DC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267180E2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODSAMPLESiriSchemaODSAMPLECollectionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026746C930, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x800000026746C960, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026746C990, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x800000026746C9C0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267181158(uint64_t a1)
{
  v2 = sub_26718125C(&qword_2800F66A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671811C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718125C(&qword_2800F66A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718125C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODSAMPLESiriSchemaODSAMPLECollectionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746CA50);
  return v10(v12, 0);
}

uint64_t sub_2671814F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267181554(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671815B8()
{
  result = qword_2800F6638;
  if (!qword_2800F6638)
  {
    sub_267181610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6638);
  }

  return result;
}

unint64_t sub_267181610()
{
  result = qword_2800F6630;
  if (!qword_2800F6630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6630);
  }

  return result;
}

uint64_t static ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x706D615372657375, 0xEE006449676E696CLL);
  v6(v10, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C706D6173646FLL, 0xEB00000000736449);
  v7(v10, 0);
  type metadata accessor for ODSAMPLESiriSchemaODSAMPLECollectionStatus(0);
  sub_267181A44();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026746CAC0);
  return v8(v10, 0);
}

uint64_t sub_267181980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671819E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267181A44()
{
  result = qword_2800F6698;
  if (!qword_2800F6698)
  {
    type metadata accessor for ODSAMPLESiriSchemaODSAMPLECollectionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6698);
  }

  return result;
}

uint64_t static ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v81 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v87 = "delSampleReported";
  v86 = *MEMORY[0x277D3E4E8];
  v94 = *(v4 + 104);
  v88 = v3;
  v94(v7);
  v12 = v4 + 104;
  v95[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v90 = v13;
  v15(v11, 0, 1, v13);
  v91 = a2;
  v92 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v87 | 0x8000000000000000);
  v17(v95, 0);
  v87 = "isEnrollmentSample";
  LODWORD(v83) = *MEMORY[0x277D3E540];
  v94(v7);
  v95[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v13);
  v84 = v16;
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v87 | 0x8000000000000000);
  v18(v95, 0);
  v19 = *MEMORY[0x277D3E530];
  v93 = v7;
  v20 = v88;
  v89 = v12;
  v21 = v94;
  (v94)(v7, v19, v88);
  v95[0] = 1;
  sub_26738114C();
  v22 = v90;
  v23 = v92;
  v92(v11, 0, 1, v90);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x7954656369766564, 0xEA00000000006570);
  v24(v95, 0);
  v25 = v93;
  v26 = v19;
  v27 = v19;
  v28 = v20;
  v21(v93, v26, v20);
  v95[0] = 1;
  sub_26738114C();
  v23(v11, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x75426D6574737973, 0xEB00000000646C69);
  v29(v95, 0);
  v82 = "ntDaemonAudioRecordingFailed";
  LODWORD(v87) = v27;
  v30 = v94;
  (v94)(v25, v27, v28);
  v95[0] = 1;
  sub_26738114C();
  v31 = v90;
  v23(v11, 0, 1, v90);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v82 | 0x8000000000000000);
  v32(v95, 0);
  v82 = "startDatestampInDaysSince1970";
  v30(v93, v27, v28);
  v95[0] = 1;
  sub_26738114C();
  v33 = v92;
  v92(v11, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, v82 | 0x8000000000000000);
  v34(v95, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v33(v11, 0, 1, v31);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0x75706E4969726973, 0xEF656C61636F4C74);
  v35(v95, 0);
  type metadata accessor for SISchemaInvocationSource(0);
  sub_267183230(&qword_2800F5F88, type metadata accessor for SISchemaInvocationSource);
  sub_26738120C();
  v36 = v31;
  v37 = v31;
  v38 = v92;
  v92(v11, 0, 1, v37);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x8000000267469520);
  v39(v95, 0);
  type metadata accessor for ORCHSchemaORCHMotionActivity(0);
  sub_267183230(&qword_2800F66A8, type metadata accessor for ORCHSchemaORCHMotionActivity);
  sub_26738120C();
  v38(v11, 0, 1, v36);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0x63416E6F69746F6DLL, 0xEE00797469766974);
  v40(v95, 0);
  v41 = v93;
  v42 = v94;
  v43 = v86;
  v44 = v88;
  (v94)(v93, v86, v88);
  v95[0] = 1;
  sub_26738114C();
  v92(v11, 0, 1, v36);
  v45 = sub_2673811AC();
  sub_266EC637C(v11, 0x7246656B61577369, 0xEF7065656C536D6FLL);
  v45(v95, 0);
  v42(v41, v43, v44);
  v95[0] = 1;
  sub_26738114C();
  v46 = v92;
  v92(v11, 0, 1, v90);
  v47 = sub_2673811AC();
  sub_266EC637C(v11, 0x50616964654D7369, 0xEE00676E6979616CLL);
  v47(v95, 0);
  v82 = "nterfaceProductId";
  v42(v93, v43, v44);
  v95[0] = 1;
  sub_26738114C();
  v48 = v90;
  v46(v11, 0, 1, v90);
  v49 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, v82 | 0x8000000000000000);
  v49(v95, 0);
  type metadata accessor for MHSchemaMHASRAudioCodec(0);
  sub_267183230(&qword_2800EF690, type metadata accessor for MHSchemaMHASRAudioCodec);
  sub_26738120C();
  v46(v11, 0, 1, v48);
  v50 = sub_2673811AC();
  sub_266EC637C(v11, 0x646F436F69647561, 0xEA00000000006365);
  v50(v95, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioSource(0);
  sub_267183230(&qword_2800F4168, type metadata accessor for MHSchemaMHAssistantDaemonAudioSource);
  sub_26738120C();
  v51 = v48;
  v46(v11, 0, 1, v48);
  v52 = sub_2673811AC();
  sub_266EC637C(v11, 0x756F536F69647561, 0xEB00000000656372);
  v52(v95, 0);
  type metadata accessor for ASRSchemaASRDatapackTask(0);
  sub_267183230(&qword_2800EF3B8, type metadata accessor for ASRSchemaASRDatapackTask);
  sub_26738120C();
  v46(v11, 0, 1, v48);
  v53 = v46;
  v54 = sub_2673811AC();
  sub_266EC637C(v11, 0x6B736154727361, 0xE700000000000000);
  v54(v95, 0);
  v82 = "audioSkippedTimeInNs";
  v55 = v93;
  v56 = v94;
  v57 = v88;
  (v94)(v93, v83, v88);
  v95[0] = 1;
  sub_26738114C();
  v53(v11, 0, 1, v51);
  v58 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v82 | 0x8000000000000000);
  v58(v95, 0);
  v59 = v87;
  (v56)(v55, v87, v57);
  v95[0] = 1;
  v60 = v55;
  sub_26738114C();
  v61 = v90;
  v62 = v92;
  v92(v11, 0, 1, v90);
  v63 = sub_2673811AC();
  sub_266EC637C(v11, 0x42316E7449657270, 0xEB00000000747365);
  v63(v95, 0);
  v64 = v88;
  (v94)(v60, v59, v88);
  v95[0] = 1;
  sub_26738114C();
  v65 = v61;
  v62(v11, 0, 1, v61);
  v66 = sub_2673811AC();
  sub_266EC637C(v11, 0x69616D6F44627573, 0xE90000000000006ELL);
  v66(v95, 0);
  v83 = "isDeviceHandHeld";
  v67 = v94;
  (v94)(v93, v86, v64);
  v95[0] = 1;
  sub_26738114C();
  v62(v11, 0, 1, v65);
  v68 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v83 | 0x8000000000000000);
  v68(v95, 0);
  v83 = "isPersonalRequest";
  v69 = v93;
  (v67)(v93, v86, v64);
  v70 = v67;
  v95[0] = 1;
  sub_26738114C();
  v71 = v90;
  v72 = v92;
  v92(v11, 0, 1, v90);
  v73 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v83 | 0x8000000000000000);
  v73(v95, 0);
  (v70)(v69, v87, v64);
  v95[0] = 1;
  sub_26738114C();
  v72(v11, 0, 1, v71);
  v74 = sub_2673811AC();
  sub_266EC637C(v11, 0x65736E6F70736572, 0xEA00000000006449);
  v74(v95, 0);
  type metadata accessor for ORCHSchemaORCHRequestCancellationReason(0);
  sub_267183230(&qword_2800F66B0, type metadata accessor for ORCHSchemaORCHRequestCancellationReason);
  sub_26738120C();
  v72(v11, 0, 1, v71);
  v75 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x800000026746CC00);
  v75(v95, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v72(v11, 0, 1, v71);
  v76 = sub_2673811AC();
  sub_266EC637C(v11, 0x64496F69647561, 0xE700000000000000);
  v76(v95, 0);
  type metadata accessor for SISchemaTriggerPhrase(0);
  sub_267183230(&qword_2800F66B8, type metadata accessor for SISchemaTriggerPhrase);
  sub_26738120C();
  v72(v11, 0, 1, v71);
  v77 = sub_2673811AC();
  sub_266EC637C(v11, 0x5072656767697274, 0xED00006573617268);
  v77(v95, 0);
  sub_266ECB294(0, &qword_2800F66C0, 0x277D5A950);
  sub_266ECAF2C(&qword_2800F66C8, &qword_2800F66C0, 0x277D5A950);
  sub_26738120C();
  v72(v11, 0, 1, v71);
  v78 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E6F697461636F6CLL, 0xE800000000000000);
  v78(v95, 0);
  (v94)(v93, v87, v88);
  v95[0] = 1;
  sub_26738114C();
  v72(v11, 0, 1, v71);
  v79 = sub_2673811AC();
  sub_266EC637C(v11, 0x316E744974736F70, 0xEC00000074736542);
  return v79(v95, 0);
}

uint64_t sub_26718316C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671831D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267183230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_28788B188);
  return sub_2673811CC();
}

uint64_t sub_2671834C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267183524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static OPTINSchemaOPTINClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F66D0, 0x277D59560);
  sub_266ECAF2C(&qword_2800F66D8, &qword_2800F66D0, 0x277D59560);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026746CCA0);
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
  v11(v19, 0);
  sub_266ECB128(&unk_28788B1B8);
  return sub_2673811CC();
}

uint64_t sub_267183918(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671839B0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267183A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267183AE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267183B40(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F66E0, &qword_2800F1FF0, 0x277D59558);
  a1[2] = sub_266ECAF2C(&qword_2800F66E8, &qword_2800F1FF0, 0x277D59558);
  result = sub_266ECAF2C(&qword_2800F66F0, &qword_2800F1FF0, 0x277D59558);
  a1[3] = result;
  return result;
}

uint64_t static OPTINSchemaOPTINInconsistentStateDetected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for OPTINSchemaOPTINStateInconsistencyCondition(0);
  sub_267184000(&qword_2800F66F8, type metadata accessor for OPTINSchemaOPTINStateInconsistencyCondition);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026746CD00);
  v6(v9, 0);
  type metadata accessor for OPTINSchemaOPTINStateInconsistencyTrigger(0);
  sub_267184000(&qword_2800F6700, type metadata accessor for OPTINSchemaOPTINStateInconsistencyTrigger);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026746CD20);
  return v7(v9, 0);
}

uint64_t sub_267183EF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267183F58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267184000(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267184048()
{
  result = qword_2800F66D0;
  if (!qword_2800F66D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F66D0);
  }

  return result;
}

uint64_t static OPTINSchemaOPTINPropagationState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026746CD70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026746CD90, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026746CDB0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x800000026746CDD0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026746CDF0, v29);
  v30 = *v27;
  *v27 = v36;

  v25(v37, 0);
  sub_266ECB128(&unk_28788B1F0);
  return sub_26738112C();
}

uint64_t sub_2671843A8(uint64_t a1)
{
  v2 = sub_2671844AC(&qword_2800F6710);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267184410(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671844AC(&qword_2800F6710);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671844AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OPTINSchemaOPTINPropagationState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OPTINSchemaOPTINStateInconsistencyCondition.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x800000026746CE50, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x800000026746CE80, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x800000026746CEC0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003CLL, 0x800000026746CF00, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267184774(uint64_t a1)
{
  v2 = sub_267184878(&qword_2800F6718);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671847DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267184878(&qword_2800F6718);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267184878(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OPTINSchemaOPTINStateInconsistencyCondition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OPTINSchemaOPTINStateInconsistencyTrigger.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x800000026746CF80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x800000026746CFB0, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_267184A60(uint64_t a1)
{
  v2 = sub_267184B64(&qword_2800F6720);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267184AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267184B64(&qword_2800F6720);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267184B64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OPTINSchemaOPTINStateInconsistencyTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OPTINSchemaOPTINStatePropagationEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_267185138(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6174536E4974706FLL, 0xEA00000000006574);
  v6(v10, 0);
  type metadata accessor for OPTINSchemaOPTINPropagationState(0);
  sub_267185138(&qword_2800F6708, type metadata accessor for OPTINSchemaOPTINPropagationState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026746D030);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026746D050);
  v8(v10, 0);
  sub_266ECB128(&unk_28788B218);
  return sub_2673811CC();
}

uint64_t sub_267184F10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267184FA8()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267185074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671850D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267185138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267185180(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6728, &qword_2800F1F60, 0x277D59568);
  a1[2] = sub_266ECAF2C(&qword_2800F6730, &qword_2800F1F60, 0x277D59568);
  result = sub_266ECAF2C(&qword_2800F6738, &qword_2800F1F60, 0x277D59568);
  a1[3] = result;
  return result;
}

uint64_t static ORCHSchemaNLRouterRewrittenUtteranceTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_26738113C();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v25 = *(v9 + 56);
  v25(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v10(v31, 0);
  v28 = a1;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v30, 0x6575716552627573, 0xEC00000064497473);
  v24 = *(v9 + 48);
  if (!v24(v13, 1, v8))
  {
    sub_266ECB128(&unk_28788B250);
    sub_26738115C();
  }

  (v12)(v30, 0);
  v11(v31, 0);
  v14 = *MEMORY[0x277D3E530];
  v15 = *(v29 + 104);
  v29 += 104;
  v23 = v15;
  v15(v26, v14, v27);
  v31[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x636E617265747475, 0xED00007478655465);
  v16(v31, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v30, 0x636E617265747475, 0xED00007478655465);
  if (!v24(v19, 1, v8))
  {
    sub_266ECB128(&unk_28788B280);
    sub_26738115C();
  }

  (v18)(v30, 0);
  v17(v31, 0);
  v23(v26, *MEMORY[0x277D3E508], v27);
  v31[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x636E617265747475, 0xEE007865646E4965);
  return v20(v31, 0);
}

uint64_t sub_2671857E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718584C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHAceCommandContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6449656361, 0xE500000000000000);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F6750, 0x277D595B0);
  sub_266ECAF2C(&qword_2800F6758, &qword_2800F6750, 0x277D595B0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F6760, 0x277D595A0);
  sub_266ECAF2C(&qword_2800F6768, &qword_2800F6760, 0x277D595A0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F6770, 0x277D595A8);
  sub_266ECAF2C(&qword_2800F6778, &qword_2800F6770, 0x277D595A8);
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

uint64_t sub_267185EC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267185F28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHAceCommandEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267186400(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v12(v14, 0);
}

uint64_t sub_2671862F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267186358(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267186400(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267186448()
{
  result = qword_2800F6760;
  if (!qword_2800F6760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6760);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAceCommandFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_2671868C8(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v12(v14, 0);
}

uint64_t sub_2671867BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267186820(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671868C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267186910()
{
  result = qword_2800F6770;
  if (!qword_2800F6770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6770);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAceCommandStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_267186D98(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v12(v14, 0);
}

uint64_t sub_267186C8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267186CF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267186D98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267186DE0()
{
  result = qword_2800F6750;
  if (!qword_2800F6750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6750);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAceCommandType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746D1A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026746D1C0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026746D1F0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026746D220, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x800000026746D250, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000034, 0x800000026746D280, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_267187194(uint64_t a1)
{
  v2 = sub_267187298(&qword_2800F6798);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671871FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267187298(&qword_2800F6798);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267187298(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHAceCommandType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHASRBridgeContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F67A0, 0x277D59590);
  sub_266ECAF2C(&qword_2800F67A8, &qword_2800F67A0, 0x277D59590);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F67B0, 0x277D59580);
  sub_266ECAF2C(&qword_2800F67B8, &qword_2800F67B0, 0x277D59580);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F67C0, 0x277D59588);
  sub_266ECAF2C(&qword_2800F67C8, &qword_2800F67C0, 0x277D59588);
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

uint64_t sub_2671877F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267187858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHASRCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267187B44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267187BA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267187C0C()
{
  result = qword_2800F67B8;
  if (!qword_2800F67B8)
  {
    sub_267187C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F67B8);
  }

  return result;
}

unint64_t sub_267187C64()
{
  result = qword_2800F67B0;
  if (!qword_2800F67B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F67B0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHASRCallFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x726F727265, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_267187EF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267187F5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267187FC0()
{
  result = qword_2800F67C8;
  if (!qword_2800F67C8)
  {
    sub_267188018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F67C8);
  }

  return result;
}

unint64_t sub_267188018()
{
  result = qword_2800F67C0;
  if (!qword_2800F67C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F67C0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHASRCallStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHSpeechTaskType(0);
  sub_2671884B8(&qword_2800F67E0, type metadata accessor for ORCHSchemaORCHSpeechTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267188224()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHSpeechTaskType(0);
  sub_2671884B8(&qword_2800F67E0, type metadata accessor for ORCHSchemaORCHSpeechTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671883AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267188410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671884B8(unint64_t *a1, void (*a2)(uint64_t))
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