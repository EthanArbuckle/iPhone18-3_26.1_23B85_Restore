uint64_t sub_26712DC98(uint64_t a1)
{
  v2 = sub_26712DD9C(&qword_2800F56A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26712DD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_26712DD9C(&qword_2800F56A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26712DD9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceWarmupAttemptFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x8000000267465870, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x80000002674658A0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x80000002674658D0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26712DFF4(uint64_t a1)
{
  v2 = sub_26712E0F8(&qword_2800F56B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26712E05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26712E0F8(&qword_2800F56B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26712E0F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMServiceWarmupAttemptFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMSetupLink.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F56C0, 0x277D58F18);
  sub_266ECAF2C(&qword_2800F56C8, &qword_2800F56C0, 0x277D58F18);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267465940);
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

uint64_t sub_26712E4AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712E510(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSetupMissingAssetsDetected.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_26712E908();
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674659A0);
  return v7(v9, 0);
}

uint64_t sub_26712E844(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712E8A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26712E908()
{
  result = qword_2800F5290;
  if (!qword_2800F5290)
  {
    type metadata accessor for NLXSchemaCDMServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5290);
  }

  return result;
}

uint64_t static NLXSchemaCDMSingleServiceSetupAttemptContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F56F0, 0x277D58EF0);
  sub_266ECAF2C(&qword_2800F56F8, &qword_2800F56F0, 0x277D58EF0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F5700, 0x277D58EE0);
  sub_266ECAF2C(&qword_2800F5708, &qword_2800F5700, 0x277D58EE0);
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
  v13(v25, 0);
  sub_266ECB128(&unk_28788A0D0);
  return sub_2673811CC();
}

uint64_t sub_26712EED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712EF34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSingleServiceSetupAttemptEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26712F220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712F284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26712F2E8()
{
  result = qword_2800F5708;
  if (!qword_2800F5708)
  {
    sub_26712F340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5708);
  }

  return result;
}

unint64_t sub_26712F340()
{
  result = qword_2800F5700;
  if (!qword_2800F5700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5700);
  }

  return result;
}

uint64_t static NLXSchemaCDMSingleServiceSetupAttemptFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_26712F968(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x5465636976726573, 0xEB00000000657079);
  v11(v22, 0);
  v12 = *MEMORY[0x277D3E538];
  v13 = *(v21 + 104);
  v21 += 104;
  v13(v4, v12, v1);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D754E7972746572, 0xEB00000000726562);
  v14(v22, 0);
  type metadata accessor for NLXSchemaCDMServiceSetupAttemptFailureReason(0);
  sub_26712F968(&qword_2800F5678, type metadata accessor for NLXSchemaCDMServiceSetupAttemptFailureReason);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F73616572, 0xE600000000000000);
  v15(v22, 0);
  v13(v4, v12, v19);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v16(v22, 0);
  sub_266ECB128(&unk_28788A0F8);
  return sub_2673811CC();
}

uint64_t sub_26712F85C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712F8C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26712F968(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26712F9B0()
{
  result = qword_2800F5728;
  if (!qword_2800F5728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5728);
  }

  return result;
}

uint64_t static NLXSchemaCDMSingleServiceSetupAttemptStarted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_26712FE40(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x5465636976726573, 0xEB00000000657079);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D754E7972746572, 0xEB00000000726562);
  return v11(v15, 0);
}

uint64_t sub_26712FD34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712FD98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26712FE40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26712FE88()
{
  result = qword_2800F56F0;
  if (!qword_2800F56F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F56F0);
  }

  return result;
}

uint64_t static NLXSchemaCDMSingleServiceWarmupAttemptContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5730, 0x277D58F10);
  sub_266ECAF2C(&qword_2800F5738, &qword_2800F5730, 0x277D58F10);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F5740, 0x277D58F00);
  sub_266ECAF2C(&qword_2800F5748, &qword_2800F5740, 0x277D58F00);
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

uint64_t sub_2671303EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267130450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSingleServiceWarmupAttemptEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26713073C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671307A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267130804()
{
  result = qword_2800F5748;
  if (!qword_2800F5748)
  {
    sub_26713085C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5748);
  }

  return result;
}

unint64_t sub_26713085C()
{
  result = qword_2800F5740;
  if (!qword_2800F5740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5740);
  }

  return result;
}

uint64_t static NLXSchemaCDMSingleServiceWarmupAttemptFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_267130E70(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x5465636976726573, 0xEB00000000657079);
  v11(v22, 0);
  v12 = *MEMORY[0x277D3E538];
  v13 = *(v21 + 104);
  v21 += 104;
  v13(v4, v12, v1);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D754E7972746572, 0xEB00000000726562);
  v14(v22, 0);
  type metadata accessor for NLXSchemaCDMServiceWarmupAttemptFailureReason(0);
  sub_267130E70(&qword_2800F56B0, type metadata accessor for NLXSchemaCDMServiceWarmupAttemptFailureReason);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F73616572, 0xE600000000000000);
  v15(v22, 0);
  v13(v4, v12, v19);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v16(v22, 0);
}

uint64_t sub_267130D64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267130DC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267130E70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267130EB8()
{
  result = qword_2800F5768;
  if (!qword_2800F5768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5768);
  }

  return result;
}

uint64_t static NLXSchemaCDMSingleServiceWarmupAttemptStarted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_267131348(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x5465636976726573, 0xEB00000000657079);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D754E7972746572, 0xEB00000000726562);
  return v11(v15, 0);
}

uint64_t sub_26713123C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671312A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267131348(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267131390()
{
  result = qword_2800F5730;
  if (!qword_2800F5730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5730);
  }

  return result;
}

uint64_t static NLXSchemaCDMSiriClientSetupLink.makeTypeManifestAndEnsureFields(in:)()
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
  return v5(v7, 0);
}

uint64_t sub_2671315B4()
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
  return v5(v7, 0);
}

uint64_t sub_267131754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671317B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSiriVocabularySpanData.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E518], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F6353686374616DLL, 0xEA00000000006572);
  return v10(v12, 0);
}

uint64_t sub_267131AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267131B10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267131B74()
{
  result = qword_2800F53E8;
  if (!qword_2800F53E8)
  {
    sub_267131BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F53E8);
  }

  return result;
}

unint64_t sub_267131BCC()
{
  result = qword_2800F53E0;
  if (!qword_2800F53E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F53E0);
  }

  return result;
}

uint64_t static NLXSchemaCDMSiriVocabularySpanDataTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v28 = v3 + 104;
  v29 = v2;
  v27 = v12;
  v12(v6, v11, v2);
  v32[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v26 = *(v14 + 56);
  v26(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x64724F726F697270, 0xEF7974696C616E69);
  v15(v32, 0);
  v30 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v31, 0x64724F726F697270, 0xEF7974696C616E69);
  v18 = *(v14 + 48);
  if (!v18(v19, 1, v13))
  {
    sub_266ECB128(&unk_28788A120);
    sub_26738115C();
  }

  (v17)(v31, 0);
  v16(v32, 0);
  v27(v6, *MEMORY[0x277D3E518], v29);
  v32[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F6353726F697270, 0xEA00000000006572);
  v20(v32, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v31, 0x6F6353726F697270, 0xEA00000000006572);
  if (!v18(v23, 1, v13))
  {
    sub_266ECB128(&unk_28788A148);
    sub_26738115C();
  }

  (v22)(v31, 0);
  return v21(v32, 0);
}

uint64_t sub_267132094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671320F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26713215C()
{
  result = qword_2800F5448;
  if (!qword_2800F5448)
  {
    sub_2671321B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5448);
  }

  return result;
}

unint64_t sub_2671321B4()
{
  result = qword_2800F5440;
  if (!qword_2800F5440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5440);
  }

  return result;
}

uint64_t static NLXSchemaCDMSpanMatcherContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5770, 0x277D58F40);
  sub_266ECAF2C(&qword_2800F5778, &qword_2800F5770, 0x277D58F40);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F5780, 0x277D58F38);
  sub_266ECAF2C(&qword_2800F5788, &qword_2800F5780, 0x277D58F38);
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

uint64_t sub_267132718(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713277C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSpanMatcherEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267132A68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267132ACC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267132B30()
{
  result = qword_2800F5788;
  if (!qword_2800F5788)
  {
    sub_267132B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5788);
  }

  return result;
}

unint64_t sub_267132B88()
{
  result = qword_2800F5780;
  if (!qword_2800F5780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5780);
  }

  return result;
}

uint64_t static NLXSchemaCDMSpanMatcherStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMMatcherName(0);
  sub_267133018(&qword_2800F5490, type metadata accessor for NLXSchemaCDMMatcherName);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 1701667182, 0xE400000000000000);
  return v5(v7, 0);
}

uint64_t sub_267132D8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMMatcherName(0);
  sub_267133018(&qword_2800F5490, type metadata accessor for NLXSchemaCDMMatcherName);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 1701667182, 0xE400000000000000);
  return v5(v7, 0);
}

uint64_t sub_267132F0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267132F70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267133018(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267133060()
{
  result = qword_2800F5770;
  if (!qword_2800F5770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5770);
  }

  return result;
}

uint64_t static NLXSchemaCDMSystemDialogAct.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 25705, 0xE200000000000000);
  v9(v30, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F57A0, 0x277D58F70);
  sub_266ECAF2C(&qword_2800F57A8, &qword_2800F57A0, 0x277D58F70);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x646574706D6F7270, 0xE800000000000000);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F57B0, 0x277D58F68);
  sub_266ECAF2C(&qword_2800F57B8, &qword_2800F57B0, 0x277D58F68);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465726566666FLL, 0xE700000000000000);
  v12(v30, 0);
  sub_266ECB294(0, &qword_2800F57C0, 0x277D58F58);
  sub_266ECAF2C(&qword_2800F57C8, &qword_2800F57C0, 0x277D58F58);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6974704F65766167, 0xEB00000000736E6FLL);
  v13(v30, 0);
  sub_266ECB294(0, &qword_2800F57D0, 0x277D58F60);
  sub_266ECAF2C(&qword_2800F57D8, &qword_2800F57D0, 0x277D58F60);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656D726F666E69, 0xE800000000000000);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F57E0, 0x277D58F80);
  sub_266ECAF2C(&qword_2800F57E8, &qword_2800F57E0, 0x277D58F80);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x646574726F706572, 0xEF73736563637553);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F57F0, 0x277D58F78);
  sub_266ECAF2C(&qword_2800F57F8, &qword_2800F57F0, 0x277D58F78);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x646574726F706572, 0xEF6572756C696146);
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
  return v18(v30, 0);
}

uint64_t sub_26713399C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267133A00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSystemDialogActTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x64657265646E6572, 0xEC00000074786554);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x64657265646E6572, 0xEC00000074786554);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788A170);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_267133E84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267133EE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSystemGaveOptions.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5810, 0x277D58FD0);
  sub_266ECAF2C(&qword_2800F5818, &qword_2800F5810, 0x277D58FD0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x736563696F6863, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_267134160()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5810, 0x277D58FD0);
  sub_266ECAF2C(&qword_2800F5818, &qword_2800F5810, 0x277D58FD0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x736563696F6863, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671342FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267134360(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSystemInformed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365697469746E65, 0xE800000000000000);
  return v7(v9, 0);
}

uint64_t sub_2671346C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713472C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSystemOffered.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5810, 0x277D58FD0);
  sub_266ECAF2C(&qword_2800F5818, &qword_2800F5810, 0x277D58FD0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x416465726566666FLL, 0xEA00000000007463);
  return v5(v7, 0);
}

uint64_t sub_2671349A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5810, 0x277D58FD0);
  sub_266ECAF2C(&qword_2800F5818, &qword_2800F5810, 0x277D58FD0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x416465726566666FLL, 0xEA00000000007463);
  return v5(v7, 0);
}

uint64_t sub_267134B48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267134BAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSystemPrompted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746567726174, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_267134F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267134F74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSystemReportedFailure.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v7(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 1802723700, 0xE400000000000000);
  return v8(v10, 0);
}

uint64_t sub_267135358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671353BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMSystemReportedSuccess.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 1802723700, 0xE400000000000000);
  return v7(v9, 0);
}

uint64_t sub_26713571C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267135780(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMTask.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x64496B736174, 0xE600000000000000);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 1802723700, 0xE400000000000000);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E518], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6373, 0xE500000000000000);
  return v12(v16, 0);
}

uint64_t sub_267135C0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267135C70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMToken.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v59 = *MEMORY[0x277D3E530];
  v66 = v3 + 104;
  v67 = v2;
  v63 = v11;
  (v11)(v6);
  v69[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v61 = v13 + 56;
  v65 = v14;
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x65756C6176, 0xE500000000000000);
  v15(v69, 0);
  v64 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v68, 0x65756C6176, 0xE500000000000000);
  v18 = *(v13 + 48);
  v62 = v12;
  v60 = v13 + 48;
  v20 = v18(v19, 1, v12);
  v58 = v18;
  if (!v20)
  {
    sub_266ECB128(&unk_28788A198);
    sub_26738115C();
  }

  (v17)(v68, 0);
  v16(v69, 0);
  v57 = *MEMORY[0x277D3E538];
  v21 = v57;
  v22 = v63;
  v63(v6, v57, v67);
  v69[0] = 1;
  sub_26738114C();
  v23 = v62;
  v24 = v65;
  v65(v10, 0, 1, v62);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E69676562, 0xE500000000000000);
  v25(v69, 0);
  v26 = v21;
  v27 = v67;
  v22(v6, v26, v67);
  v69[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 6581861, 0xE300000000000000);
  v28(v69, 0);
  v29 = *MEMORY[0x277D3E4E8];
  v22(v6, v29, v27);
  v30 = v22;
  v69[0] = 1;
  sub_26738114C();
  v31 = v62;
  v32 = v65;
  v65(v10, 0, 1, v62);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0x66696E6769537369, 0xED0000746E616369);
  v33(v69, 0);
  v34 = v67;
  v30(v6, v29, v67);
  v69[0] = 1;
  sub_26738114C();
  v32(v10, 0, 1, v31);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0x7365746968577369, 0xEC00000065636170);
  v35(v69, 0);
  v36 = v57;
  v30(v6, v57, v34);
  v69[0] = 1;
  sub_26738114C();
  v37 = v65;
  v65(v10, 0, 1, v31);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0x646E496E656B6F74, 0xEA00000000007865);
  v38(v69, 0);
  v56 = "iri.nlx.CDMToken";
  v39 = v36;
  v40 = v67;
  v41 = v63;
  v63(v6, v39, v67);
  v69[0] = 1;
  sub_26738114C();
  v42 = v31;
  v37(v10, 0, 1, v31);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v56 | 0x8000000000000000);
  v43(v69, 0);
  v41(v6, v59, v40);
  v69[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v42);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C61566E61656C63, 0xEA00000000006575);
  v44(v69, 0);
  v45 = sub_2673811AC();
  v46 = sub_266ECB6CC(v68, 0x6C61566E61656C63, 0xEA00000000006575);
  v47 = v58;
  if (!v58(v48, 1, v42))
  {
    sub_266ECB128(&unk_28788A1C0);
    sub_26738115C();
  }

  (v46)(v68, 0);
  v45(v69, 0);
  v63(v6, v59, v67);
  v69[0] = 1;
  sub_26738114C();
  v49 = v62;
  v65(v10, 0, 1, v62);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267465F30);
  v50(v69, 0);
  v51 = sub_2673811AC();
  v52 = sub_266ECB6CC(v68, 0xD000000000000010, 0x8000000267465F30);
  if (!v47(v53, 1, v49))
  {
    sub_266ECB128(&unk_28788A1E8);
    sub_26738115C();
  }

  (v52)(v68, 0);
  return v51(v69, 0);
}

uint64_t sub_267136788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671367EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267136850()
{
  result = qword_2800F5820;
  if (!qword_2800F5820)
  {
    sub_2671368A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5820);
  }

  return result;
}

unint64_t sub_2671368A8()
{
  result = qword_2800F5828;
  if (!qword_2800F5828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5828);
  }

  return result;
}

uint64_t static NLXSchemaCDMTokenChain.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5828, 0x277D58F90);
  sub_266ECAF2C(&qword_2800F5820, &qword_2800F5828, 0x277D58F90);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x736E656B6F74, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746F707948727361, 0xEF64497369736568);
  return v7(v9, 0);
}

uint64_t sub_267136BC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267136C28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMTokenizationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x49747865746E6F63, 0xE900000000000064);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F5838, 0x277D58F98);
  sub_266ECAF2C(&qword_2800F5830, &qword_2800F5838, 0x277D58F98);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6168436E656B6F74, 0xEB00000000736E69);
  v7(v10, 0);
  type metadata accessor for NLXSchemaCDMTokenizationInputType(0);
  sub_2671370F4();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7079547475706E69, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_267137030(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267137094(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671370F4()
{
  result = qword_2800F5840;
  if (!qword_2800F5840)
  {
    type metadata accessor for NLXSchemaCDMTokenizationInputType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5840);
  }

  return result;
}

uint64_t static NLXSchemaCDMTokenizationInputType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267465FF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267466020, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267466050, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x8000000267466080, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267137414(uint64_t a1)
{
  v2 = sub_267137518(&qword_2800F5858);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26713747C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267137518(&qword_2800F5858);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267137518(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMTokenizationInputType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMTurnContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5510, 0x277D58E48);
  sub_266ECAF2C(&qword_2800F5508, &qword_2800F5510, 0x277D58E48);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x7865746E6F436C6ELL, 0xE900000000000074);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F5860, 0x277D59110);
  sub_266ECAF2C(&qword_2800F5868, &qword_2800F5860, 0x277D59110);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C4E79636167656CLL, 0xEF747865746E6F43);
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

uint64_t sub_2671379BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267137A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMTurnInput.makeTypeManifestAndEnsureFields(in:)()
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
  sub_26738122C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267466110);
  v9(v17, 0);
  sub_266ECB294(0, &qword_2800F5878, 0x277D58FA8);
  sub_266ECAF2C(&qword_2800F5870, &qword_2800F5878, 0x277D58FA8);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E6F436E727574, 0xEB00000000747865);
  v10(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E4E8], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x456F547061547369, 0xEB00000000746964);
  return v11(v17, 0);
}

uint64_t sub_267137ED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267137F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserAccepted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449726566666FLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671381AC()
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
  sub_266EC637C(v3, 0x6449726566666FLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_267138348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671383AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserAcknowledged.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267466190);
  return v5(v7, 0);
}

uint64_t sub_267138648(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671386AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserCancelled.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267138920()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267138AB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267138B1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserDialogAct.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v32 = *(v0 - 8);
  v33 = v0;
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v0);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F58B0, 0x277D5B2A8);
  sub_266ECAF2C(&qword_2800F58B8, &qword_2800F58B0, 0x277D5B2A8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656D6E67696C61, 0xE900000000000074);
  v9(v34, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x636E657265666572, 0xE900000000000065);
  v10(v34, 0);
  sub_266ECB294(0, &qword_2800F5888, 0x277D58FB8);
  sub_266ECAF2C(&qword_2800F5880, &qword_2800F5888, 0x277D58FB8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465747065636361, 0xE800000000000000);
  v11(v34, 0);
  sub_266ECB294(0, &qword_2800F58C0, 0x277D58FE0);
  sub_266ECAF2C(&qword_2800F58C8, &qword_2800F58C0, 0x277D58FE0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x64657463656A6572, 0xE800000000000000);
  v12(v34, 0);
  sub_266ECB294(0, &qword_2800F58A8, 0x277D58FC8);
  sub_266ECAF2C(&qword_2800F58A0, &qword_2800F58A8, 0x277D58FC8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x656C6C65636E6163, 0xE900000000000064);
  v13(v34, 0);
  sub_266ECB294(0, &qword_2800F58D0, 0x277D59000);
  sub_266ECAF2C(&qword_2800F58D8, &qword_2800F58D0, 0x277D59000);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F546465746E6177, 0xEE00746165706552);
  v14(v34, 0);
  sub_266ECB294(0, &qword_2800F5898, 0x277D58FC0);
  sub_266ECAF2C(&qword_2800F5890, &qword_2800F5898, 0x277D58FC0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x656C776F6E6B6361, 0xEC00000064656764);
  v15(v34, 0);
  sub_266ECB294(0, &qword_2800F58E0, 0x277D58FF8);
  sub_266ECAF2C(&qword_2800F58E8, &qword_2800F58E0, 0x277D58FF8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F546465746E6177, 0xEF646565636F7250);
  v16(v34, 0);
  sub_266ECB294(0, &qword_2800F58F0, 0x277D58FF0);
  sub_266ECAF2C(&qword_2800F58F8, &qword_2800F58F0, 0x277D58FF0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F546465746E6177, 0xED00006573756150);
  v17(v34, 0);
  sub_266ECB294(0, &qword_2800F53B8, 0x277D58DF0);
  sub_266ECAF2C(&qword_2800F53B0, &qword_2800F53B8, 0x277D58DF0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x65746167656C6564, 0xE900000000000064);
  v18(v34, 0);
  sub_266ECB294(0, &qword_2800F5900, 0x277D58FE8);
  sub_266ECAF2C(&qword_2800F5908, &qword_2800F5900, 0x277D58FE8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x7461745372657375, 0xEE006B7361546465);
  v19(v34, 0);
  sub_266ECB294(0, &qword_2800F5910, 0x277D59008);
  sub_266ECAF2C(&qword_2800F5918, &qword_2800F5910, 0x277D59008);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v20 = v31;
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F546465746E6177, 0xEC0000006F646E55);
  v21(v34, 0);
  sub_26738117C();
  v22 = sub_2673811BC();
  v24 = v23;
  v25 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_266ECAD54(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_266ECAD54(v27 > 1, v28 + 1, 1, v25);
    *v24 = v25;
  }

  v25[2] = v28 + 1;
  (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v20, v33);
  return v22(v34, 0);
}

uint64_t sub_26713984C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671398B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserParse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24[-v8];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v28 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v27 = *(v10 - 8);
  v11 = *(v27 + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 25705, 0xE200000000000000);
  v12(v33, 0);
  sub_266ECB294(0, &qword_2800F5810, 0x277D58FD0);
  sub_266ECAF2C(&qword_2800F5818, &qword_2800F5810, 0x277D58FD0);
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C61694472657375, 0xEE0073746341676FLL);
  v13(v33, 0);
  v25 = *MEMORY[0x277D3E518];
  v14 = *(v31 + 104);
  v31 += 104;
  v26 = v14;
  v14(v29);
  v33[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C696261626F7270, 0xEB00000000797469);
  v15(v33, 0);
  sub_266ECB294(0, &qword_2800F5568, 0x277D58E60);
  sub_266ECAF2C(&qword_2800F5560, &qword_2800F5568, 0x277D58E60);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267466260);
  v16(v33, 0);
  sub_266ECB294(0, &qword_2800F5470, 0x277D58E50);
  sub_266ECAF2C(&qword_2800F5478, &qword_2800F5470, 0x277D58E50);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x726573726170, 0xE600000000000000);
  v17(v33, 0);
  v26(v29, v25, v30);
  v33[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267466280);
  v18(v33, 0);
  sub_266ECB294(0, &qword_2800F5398, 0x277D58DE8);
  sub_266ECAF2C(&qword_2800F5390, &qword_2800F5398, 0x277D58DE8);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267461B70);
  v19(v33, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v32, 0xD000000000000011, 0x8000000267461B70);
  if (!(*(v27 + 48))(v22, 1, v10))
  {
    sub_266ECB128(&unk_28788A210);
    sub_26738115C();
  }

  (v21)(v32, 0);
  return v20(v33, 0);
}

uint64_t sub_26713A154(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713A1B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserRejected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449726566666FLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_26713A430()
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
  sub_266EC637C(v3, 0x6449726566666FLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_26713A5CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713A630(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserStatedTask.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26713A91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713A980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26713A9E4()
{
  result = qword_2800F5908;
  if (!qword_2800F5908)
  {
    sub_26713AA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5908);
  }

  return result;
}

unint64_t sub_26713AA3C()
{
  result = qword_2800F5900;
  if (!qword_2800F5900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5900);
  }

  return result;
}

uint64_t static NLXSchemaCDMUserWantedToPause.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26713AC58()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26713ADF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713AE54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserWantedToProceed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26713B0C8()
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
  sub_266EC637C(v3, 0x64496B736174, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26713B260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713B2C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserWantedToRepeat.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267466190);
  return v5(v7, 0);
}

uint64_t sub_26713B560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713B5C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMUserWantedToUndo.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26713B8B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713B914(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26713B978()
{
  result = qword_2800F5918;
  if (!qword_2800F5918)
  {
    sub_26713B9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5918);
  }

  return result;
}

unint64_t sub_26713B9D0()
{
  result = qword_2800F5910;
  if (!qword_2800F5910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5910);
  }

  return result;
}

uint64_t static NLXSchemaCDMUsoGraphTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x68706172476F7375, 0xED00003172656954);
  return v5(v7, 0);
}

uint64_t sub_26713BBFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x68706172476F7375, 0xED00003172656954);
  return v5(v7, 0);
}

uint64_t sub_26713BDA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713BE08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMXPCEventProcessingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5930, 0x277D59030);
  sub_266ECAF2C(&qword_2800F5938, &qword_2800F5930, 0x277D59030);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F5940, 0x277D59020);
  sub_266ECAF2C(&qword_2800F5948, &qword_2800F5940, 0x277D59020);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F5950, 0x277D59028);
  sub_266ECAF2C(&qword_2800F5958, &qword_2800F5950, 0x277D59028);
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

uint64_t sub_26713C48C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713C4F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMXPCEventProcessingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26713C7DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713C840(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26713C8A4()
{
  result = qword_2800F5948;
  if (!qword_2800F5948)
  {
    sub_26713C8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5948);
  }

  return result;
}

unint64_t sub_26713C8FC()
{
  result = qword_2800F5940;
  if (!qword_2800F5940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5940);
  }

  return result;
}

uint64_t static NLXSchemaCDMXPCEventProcessingFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaCDMXPCEventProcessingFailureReason(0);
  sub_26713CD7C(&qword_2800F5970, type metadata accessor for NLXSchemaCDMXPCEventProcessingFailureReason);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v11(v15, 0);
}

uint64_t sub_26713CC70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713CCD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26713CD7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26713CDC4()
{
  result = qword_2800F5950;
  if (!qword_2800F5950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5950);
  }

  return result;
}

uint64_t static NLXSchemaCDMXPCEventProcessingFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x80000002674664F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003CLL, 0x8000000267466520, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000034, 0x8000000267466560, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000031, 0x80000002674665A0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26713D094(uint64_t a1)
{
  v2 = sub_26713D198(&qword_2800F5978);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26713D0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26713D198(&qword_2800F5978);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26713D198(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMXPCEventProcessingFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMXPCEventProcessingStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMXPCEventProcessingType(0);
  sub_26713D7D0(&qword_2800F5980, type metadata accessor for NLXSchemaCDMXPCEventProcessingType);
  v17[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v17[0] = *(v7 + 56);
  (v17[0])(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x69737365636F7270, 0xEE0065707954676ELL);
  v8(v19, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v18, 0x69737365636F7270, 0xEE0065707954676ELL);
  if (!(*(v7 + 48))(v11, 1, v6))
  {
    sub_266ECB128(&unk_28788A240);
    sub_26738115C();
  }

  (v10)(v18, 0);
  v9(v19, 0);
  type metadata accessor for NLXSchemaCDMXPCType(0);
  sub_26713D7D0(&qword_2800F5988, type metadata accessor for NLXSchemaCDMXPCType);
  sub_26738120C();
  v12 = v17[0];
  (v17[0])(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x65707954637078, 0xE700000000000000);
  v13(v19, 0);
  type metadata accessor for NLXSchemaCDMXPCSystemEventType(0);
  sub_26713D7D0(&qword_2800F5990, type metadata accessor for NLXSchemaCDMXPCSystemEventType);
  sub_26738120C();
  v12(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x8000000267466620);
  v14(v19, 0);
  type metadata accessor for NLXSchemaCDMServiceName(0);
  sub_26713D7D0(&qword_2800F5648, type metadata accessor for NLXSchemaCDMServiceName);
  sub_26738120C();
  v12(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x4E65636976726573, 0xEB00000000656D61);
  return v15(v19, 0);
}

uint64_t sub_26713D6C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713D728(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26713D7D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26713D818()
{
  result = qword_2800F5930;
  if (!qword_2800F5930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5930);
  }

  return result;
}

uint64_t static NLXSchemaCDMXPCEventProcessingType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267466680, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674666B0, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_26713DA08(uint64_t a1)
{
  v2 = sub_26713DB0C(&qword_2800F5998);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26713DA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_26713DB0C(&qword_2800F5998);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26713DB0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMXPCEventProcessingType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMXPCSystemEventType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267466710, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267466730, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267466760, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267466790, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x80000002674667C0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x80000002674667F0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003BLL, 0x8000000267466820, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_26713DF2C(uint64_t a1)
{
  v2 = sub_26713E030(&qword_2800F59A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26713DF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_26713E030(&qword_2800F59A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26713E030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMXPCSystemEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMXPCType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267466890, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x80000002674668B0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674668D0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26713E288(uint64_t a1)
{
  v2 = sub_26713E38C(&qword_2800F59A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26713E2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26713E38C(&qword_2800F59A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26713E38C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMXPCType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaContextualSpanData.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267466920);
  return v10(v12, 0);
}

uint64_t sub_26713E620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713E684(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26713E6E8()
{
  result = qword_2800F5428;
  if (!qword_2800F5428)
  {
    sub_26713E740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5428);
  }

  return result;
}

unint64_t sub_26713E740()
{
  result = qword_2800F5420;
  if (!qword_2800F5420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5420);
  }

  return result;
}

uint64_t static NLXSchemaMARRSContextualSpanMatcherEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F54A8, 0x277D58E20);
  sub_266ECAF2C(&qword_2800F54A0, &qword_2800F54A8, 0x277D58E20);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x75747865746E6F63, 0xEF736E6170536C61);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26713EA5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713EAC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSContextualSpanMatcherEndedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F54C0, 0x277D58E38);
  sub_266ECAF2C(&qword_2800F54C8, &qword_2800F54C0, 0x277D58E38);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674669C0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26713EE2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713EE90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSErrorType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267466A10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267466A30, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267466A50, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26713F14C(uint64_t a1)
{
  v2 = sub_26713F250(&qword_2800F59D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26713F1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26713F250(&qword_2800F59D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26713F250(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaMARRSErrorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaMARRSMentionDetectorEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F54A8, 0x277D58E20);
  sub_266ECAF2C(&qword_2800F54A0, &qword_2800F54A8, 0x277D58E20);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267466AB0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26713F55C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713F5C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSMentionDetectorEndedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F54C0, 0x277D58E38);
  sub_266ECAF2C(&qword_2800F54C8, &qword_2800F54C0, 0x277D58E38);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267466B10);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26713F92C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713F990(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSMentionResolverEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F54A8, 0x277D58E20);
  sub_266ECAF2C(&qword_2800F54A0, &qword_2800F54A8, 0x277D58E20);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267466B70);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26713FCFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26713FD60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSMentionResolverEndedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F54C0, 0x277D58E38);
  sub_266ECAF2C(&qword_2800F54C8, &qword_2800F54C0, 0x277D58E38);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267466BD0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_2671400CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267140130(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSQueryRewriteContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800F5A20, 0x277D59098);
  v10 = sub_266ECAF2C(&qword_2800F5A28, &qword_2800F5A20, 0x277D59098);
  v43 = a1;
  v37 = v10;
  v38 = v9;
  sub_26738121C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v42 = *(v12 + 56);
  v42(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x64657472617473, 0xE700000000000000);
  v13(v45, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v44, 0x64657472617473, 0xE700000000000000);
  v35 = *(v12 + 48);
  if (!v35(v16, 1, v11))
  {
    sub_266ECB128(&unk_28788A268);
    sub_26738115C();
  }

  (v15)(v44, 0);
  v14(v45, 0);
  sub_266ECB294(0, &qword_2800F5A30, 0x277D59078);
  v36 = sub_266ECAF2C(&qword_2800F5A38, &qword_2800F5A30, 0x277D59078);
  sub_26738121C();
  v42(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x657461756C617665, 0xE900000000000064);
  v17(v45, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v44, 0x657461756C617665, 0xE900000000000064);
  if (!v35(v20, 1, v11))
  {
    sub_266ECB128(&unk_28788A290);
    sub_26738115C();
  }

  (v19)(v44, 0);
  v18(v45, 0);
  sub_266ECB294(0, &qword_2800F5A40, 0x277D59088);
  sub_266ECAF2C(&qword_2800F5A48, &qword_2800F5A40, 0x277D59088);
  sub_26738121C();
  v21 = v42;
  v42(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
  v22(v45, 0);
  sub_26738121C();
  v21(v8, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v23(v45, 0);
  sub_26738121C();
  v21(v8, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v24(v45, 0);
  v25 = v39;
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
  (*(v40 + 32))(v29 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v25, v41);
  return v26(v45, 0);
}

uint64_t sub_267140944(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671409A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSQueryRewriteEvaluated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5A60, 0x277D59090);
  sub_266ECAF2C(&qword_2800F5A68, &qword_2800F5A60, 0x277D59090);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x8000000267466C70);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_267140D14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267140D78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSQueryRewriteEvaluatedTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267466CD0);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0xD000000000000017, 0x8000000267466CD0);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788A2B8);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_2671411F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267141258(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSQueryRewriteFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaMARRSErrorType(0);
  sub_267141748(&qword_2800F59D0, type metadata accessor for NLXSchemaMARRSErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671414B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaMARRSErrorType(0);
  sub_267141748(&qword_2800F59D0, type metadata accessor for NLXSchemaMARRSErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26714163C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671416A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267141748(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267141790()
{
  result = qword_2800F5A40;
  if (!qword_2800F5A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5A40);
  }

  return result;
}

uint64_t static NLXSchemaMARRSQueryRewriteHypothesis.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E518], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656469666E6F63, 0xEA00000000006563);
  v11(v14, 0);
  type metadata accessor for NLXSchemaMARRSQueryRewriteType(0);
  sub_267141C14(&qword_2800F5A80, type metadata accessor for NLXSchemaMARRSQueryRewriteType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x5465746972776572, 0xEB00000000657079);
  return v12(v14, 0);
}

uint64_t sub_267141B08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267141B6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267141C14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267141C5C()
{
  result = qword_2800F5A60;
  if (!qword_2800F5A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5A60);
  }

  return result;
}

uint64_t static NLXSchemaMARRSQueryRewriteStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267141EF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267141F54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267141FB8()
{
  result = qword_2800F5A28;
  if (!qword_2800F5A28)
  {
    sub_267142010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5A28);
  }

  return result;
}

unint64_t sub_267142010()
{
  result = qword_2800F5A20;
  if (!qword_2800F5A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5A20);
  }

  return result;
}

uint64_t static NLXSchemaMARRSQueryRewriteType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267466DD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267466DF0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x8000000267466E20, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267142270(uint64_t a1)
{
  v2 = sub_267142374(&qword_2800F5A88);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671422D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267142374(&qword_2800F5A88);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267142374(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaMARRSQueryRewriteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaMARRSRepetitionDetectionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800F5A90, 0x277D590B8);
  v10 = sub_266ECAF2C(&qword_2800F5A98, &qword_2800F5A90, 0x277D590B8);
  v43 = a1;
  v37 = v10;
  v38 = v9;
  sub_26738121C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v42 = *(v12 + 56);
  v42(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x64657472617473, 0xE700000000000000);
  v13(v45, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v44, 0x64657472617473, 0xE700000000000000);
  v35 = *(v12 + 48);
  if (!v35(v16, 1, v11))
  {
    sub_266ECB128(&unk_28788A2E0);
    sub_26738115C();
  }

  (v15)(v44, 0);
  v14(v45, 0);
  sub_266ECB294(0, &qword_2800F5AA0, 0x277D590A8);
  v36 = sub_266ECAF2C(&qword_2800F5AA8, &qword_2800F5AA0, 0x277D590A8);
  sub_26738121C();
  v42(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x657461756C617665, 0xE900000000000064);
  v17(v45, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v44, 0x657461756C617665, 0xE900000000000064);
  if (!v35(v20, 1, v11))
  {
    sub_266ECB128(&unk_28788A308);
    sub_26738115C();
  }

  (v19)(v44, 0);
  v18(v45, 0);
  sub_266ECB294(0, &qword_2800F5AB0, 0x277D590B0);
  sub_266ECAF2C(&qword_2800F5AB8, &qword_2800F5AB0, 0x277D590B0);
  sub_26738121C();
  v21 = v42;
  v42(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
  v22(v45, 0);
  sub_26738121C();
  v21(v8, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v23(v45, 0);
  sub_26738121C();
  v21(v8, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v24(v45, 0);
  v25 = v39;
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
  (*(v40 + 32))(v29 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v25, v41);
  return v26(v45, 0);
}

uint64_t sub_267142B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267142B8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMARRSRepetitionDetectionEvaluated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  type metadata accessor for NLXSchemaMARRSRepetitionType(0);
  sub_2671432E4(&qword_2800F5AD0, type metadata accessor for NLXSchemaMARRSRepetitionType);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v28 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6974697465706572, 0xEE00657079546E6FLL);
  v15(v31, 0);
  type metadata accessor for NLXSchemaMARRSRepetitionDetectionRuleType(0);
  sub_2671432E4(&qword_2800F5AD8, type metadata accessor for NLXSchemaMARRSRepetitionDetectionRuleType);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v16 = v13;
  v27 = a1;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x65707954656C7572, 0xE800000000000000);
  v17(v31, 0);
  v25 = "etitionDetectionEvaluated";
  v18 = *MEMORY[0x277D3E500];
  v19 = v29;
  v20 = *(v30 + 104);
  v30 += 104;
  v26 = v18;
  v20(v6, v18, v29);
  v31[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v25 | 0x8000000000000000);
  v21(v31, 0);
  v25 = "noRepetitionConfidence";
  v20(v6, v18, v19);
  v31[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v25 | 0x8000000000000000);
  v22(v31, 0);
  v20(v6, v26, v29);
  v31[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267466F20);
  return v23(v31, 0);
}

uint64_t sub_2671431D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714323C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671432E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26714332C()
{
  result = qword_2800F5AA0;
  if (!qword_2800F5AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5AA0);
  }

  return result;
}

uint64_t static NLXSchemaMARRSRepetitionDetectionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaMARRSErrorType(0);
  sub_2671437C4(&qword_2800F59D0, type metadata accessor for NLXSchemaMARRSErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267143534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaMARRSErrorType(0);
  sub_2671437C4(&qword_2800F59D0, type metadata accessor for NLXSchemaMARRSErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671436B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714371C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671437C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26714380C()
{
  result = qword_2800F5AB0;
  if (!qword_2800F5AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5AB0);
  }

  return result;
}

uint64_t static NLXSchemaMARRSRepetitionDetectionRuleType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267466FC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267466FF0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x8000000267467020, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267143A6C(uint64_t a1)
{
  v2 = sub_267143B70(&qword_2800F5AE0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267143AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267143B70(&qword_2800F5AE0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267143B70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaMARRSRepetitionDetectionRuleType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaMARRSRepetitionDetectionStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267143DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267143E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267143EC4()
{
  result = qword_2800F5A98;
  if (!qword_2800F5A98)
  {
    sub_267143F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5A98);
  }

  return result;
}

unint64_t sub_267143F1C()
{
  result = qword_2800F5A90;
  if (!qword_2800F5A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5A90);
  }

  return result;
}

uint64_t static NLXSchemaMARRSRepetitionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x80000002674670D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674670F0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267467120, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267467150, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671441EC(uint64_t a1)
{
  v2 = sub_2671442F0(&qword_2800F5AE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267144254(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671442F0(&qword_2800F5AE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671442F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaMARRSRepetitionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaMentionDetectorSpanData.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E518], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_26714457C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671445E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267144644()
{
  result = qword_2800F5408;
  if (!qword_2800F5408)
  {
    sub_26714469C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5408);
  }

  return result;
}

unint64_t sub_26714469C()
{
  result = qword_2800F5400;
  if (!qword_2800F5400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5400);
  }

  return result;
}

uint64_t static NLXSchemaMentionResolverSpanData.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E518];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F6353746E696F6ALL, 0xEA00000000006572);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F63536C65646F6DLL, 0xEA00000000006572);
  return v16(v20, 0);
}

uint64_t sub_267144A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267144A74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267144AD8()
{
  result = qword_2800F5418;
  if (!qword_2800F5418)
  {
    sub_267144B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5418);
  }

  return result;
}

unint64_t sub_267144B30()
{
  result = qword_2800F5410;
  if (!qword_2800F5410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5410);
  }

  return result;
}

uint64_t static NLXSchemaMILAssetAcquisitionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5AF0, 0x277D590D8);
  sub_266ECAF2C(&qword_2800F5AF8, &qword_2800F5AF0, 0x277D590D8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F5B00, 0x277D590C8);
  sub_266ECAF2C(&qword_2800F5B08, &qword_2800F5B00, 0x277D590C8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F5B10, 0x277D590D0);
  sub_266ECAF2C(&qword_2800F5B18, &qword_2800F5B10, 0x277D590D0);
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

uint64_t sub_267145158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671451BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaMILAssetAcquisitionEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaMILAssetAcquisitionType(0);
  sub_2671456CC(&qword_2800F5B30, type metadata accessor for NLXSchemaMILAssetAcquisitionType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7469736975716361, 0xEF657079546E6F69);
  return v5(v7, 0);
}

uint64_t sub_26714542C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaMILAssetAcquisitionType(0);
  sub_2671456CC(&qword_2800F5B30, type metadata accessor for NLXSchemaMILAssetAcquisitionType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7469736975716361, 0xEF657079546E6F69);
  return v5(v7, 0);
}

uint64_t sub_2671455C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267145624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671456CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267145714()
{
  result = qword_2800F5B00;
  if (!qword_2800F5B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5B00);
  }

  return result;
}

uint64_t static NLXSchemaMILAssetAcquisitionErrorCode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674672A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x80000002674672D0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000031, 0x8000000267467300, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000036, 0x8000000267467340, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000033, 0x8000000267467380, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674673C0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x80000002674673F0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x8000000267467420, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_267145BA8(uint64_t a1)
{
  v2 = sub_267145CAC(&qword_2800F5B40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267145C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_267145CAC(&qword_2800F5B40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267145CAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaMILAssetAcquisitionErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaMILAssetAcquisitionFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaMILAssetAcquisitionType(0);
  sub_2671461EC(&qword_2800F5B30, type metadata accessor for NLXSchemaMILAssetAcquisitionType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x7469736975716361, 0xEF657079546E6F69);
  v10(v16, 0);
  type metadata accessor for NLXSchemaMILAssetAcquisitionErrorCode(0);
  sub_2671461EC(&qword_2800F5B38, type metadata accessor for NLXSchemaMILAssetAcquisitionErrorCode);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E530], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x73654D726F727265, 0xEC00000065676173);
  return v12(v16, 0);
}

uint64_t sub_2671460E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267146144(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671461EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267146234()
{
  result = qword_2800F5B10;
  if (!qword_2800F5B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5B10);
  }

  return result;
}

uint64_t static NLXSchemaMILAssetAcquisitionModel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674674D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267467500, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_267146424(uint64_t a1)
{
  v2 = sub_267146528(&qword_2800F5B50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26714648C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267146528(&qword_2800F5B50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267146528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaMILAssetAcquisitionModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaMILAssetAcquisitionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaMILAssetAcquisitionModel(0);
  sub_2671469B8(&qword_2800F5B48, type metadata accessor for NLXSchemaMILAssetAcquisitionModel);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C65646F6DLL, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_267146728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaMILAssetAcquisitionModel(0);
  sub_2671469B8(&qword_2800F5B48, type metadata accessor for NLXSchemaMILAssetAcquisitionModel);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C65646F6DLL, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671468AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267146910(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671469B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267146A00()
{
  result = qword_2800F5AF0;
  if (!qword_2800F5AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5AF0);
  }

  return result;
}

uint64_t static NLXSchemaMILAssetAcquisitionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267467590, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x80000002674675B0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x80000002674675D0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267146C60(uint64_t a1)
{
  v2 = sub_267146D64(&qword_2800F5B58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267146CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267146D64(&qword_2800F5B58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267146D64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaMILAssetAcquisitionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaNLXClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a1;
  v3 = sub_26738118C();
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = *(v128 + 64);
  MEMORY[0x28223BE20](v3);
  v127 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v126 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5B60, 0x277D590F8);
  sub_266ECAF2C(&qword_2800F5B68, &qword_2800F5B60, 0x277D590F8);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x74654D746E657665, 0xED00006174616461);
  v13(v142, 0);
  sub_266ECB294(0, &qword_2800F5620, 0x277D58E88);
  sub_266ECAF2C(&qword_2800F5618, &qword_2800F5620, 0x277D58E88);
  sub_26738121C();
  v138 = v12;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267467630);
  v14(v142, 0);
  v135 = a2;
  v15 = sub_2673811AC();
  v131 = 0xD000000000000011;
  v16 = sub_266ECB6CC(v141, 0xD000000000000011, 0x8000000267467630);
  v136 = *(v11 + 48);
  v137 = v10;
  v134 = v11 + 48;
  if (!v136(v17, 1, v10))
  {
    sub_266ECB128(&unk_28788A330);
    sub_26738115C();
  }

  (v16)(v141, 0);
  v15(v142, 0);
  sub_266ECB294(0, &qword_2800F55B0, 0x277D58E68);
  sub_266ECAF2C(&qword_2800F55A8, &qword_2800F55B0, 0x277D58E68);
  sub_26738121C();
  v19 = v137;
  v18 = v138;
  v138(v9, 0, 1, v137);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, v131, 0x8000000267467650);
  v20(v142, 0);
  sub_266ECB294(0, &qword_2800F5B70, 0x277D59108);
  sub_266ECAF2C(&qword_2800F5B78, &qword_2800F5B70, 0x277D59108);
  sub_26738121C();
  v18(v9, 0, 1, v19);
  v21 = sub_2673811AC();
  v133 = 0xD000000000000015;
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267467670);
  v21(v142, 0);
  sub_266ECB294(0, &qword_2800F54B8, 0x277D58E28);
  sub_266ECAF2C(&qword_2800F54B0, &qword_2800F54B8, 0x277D58E28);
  sub_26738121C();
  v18(v9, 0, 1, v19);
  v22 = sub_2673811AC();
  v132 = 0xD000000000000014;
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267467690);
  v22(v142, 0);
  sub_266ECB294(0, &qword_2800F5928, 0x277D59010);
  sub_266ECAF2C(&qword_2800F5920, &qword_2800F5928, 0x277D59010);
  sub_26738121C();
  v139 = v11 + 56;
  v18(v9, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674676B0);
  v23(v142, 0);
  v24 = v19;
  v25 = sub_2673811AC();
  v126 = 0xD000000000000010;
  v26 = sub_266ECB6CC(v141, 0xD000000000000010, 0x80000002674676B0);
  if (!v136(v27, 1, v24))
  {
    sub_266ECB128(&unk_28788A358);
    sub_26738115C();
  }

  (v26)(v141, 0);
  v25(v142, 0);
  sub_266ECB294(0, &qword_2800F54C0, 0x277D58E38);
  sub_266ECAF2C(&qword_2800F54C8, &qword_2800F54C0, 0x277D58E38);
  sub_26738121C();
  v138(v9, 0, 1, v24);
  v28 = sub_2673811AC();
  v29 = v132;
  sub_266EC637C(v9, v132, 0x80000002674676D0);
  v28(v142, 0);
  v30 = v137;
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v141, v29, 0x80000002674676D0);
  if (!v136(v33, 1, v30))
  {
    sub_266ECB128(&unk_28788A380);
    sub_26738115C();
  }

  (v32)(v141, 0);
  v31(v142, 0);
  sub_266ECB294(0, &qword_2800F5B80, 0x277D59118);
  sub_266ECAF2C(&qword_2800F5B88, &qword_2800F5B80, 0x277D59118);
  sub_26738121C();
  v138(v9, 0, 1, v30);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x80000002674676F0);
  v34(v142, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v141, 0xD000000000000017, 0x80000002674676F0);
  if (!v136(v37, 1, v30))
  {
    sub_266ECB128(&unk_28788A3B0);
    sub_26738115C();
  }

  (v36)(v141, 0);
  v35(v142, 0);
  sub_266ECB294(0, &qword_2800F53C8, 0x277D58DF8);
  sub_266ECAF2C(&qword_2800F53C0, &qword_2800F53C8, 0x277D58DF8);
  sub_26738121C();
  v138(v9, 0, 1, v30);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267467710);
  v38(v142, 0);
  v39 = sub_2673811AC();
  v40 = sub_266ECB6CC(v141, 0xD00000000000001ELL, 0x8000000267467710);
  if (!v136(v41, 1, v30))
  {
    sub_266ECB128(&unk_28788A3D8);
    sub_26738115C();
  }

  (v40)(v141, 0);
  v39(v142, 0);
  sub_266ECB294(0, &qword_2800F5808, 0x277D58F50);
  sub_266ECAF2C(&qword_2800F5800, &qword_2800F5808, 0x277D58F50);
  sub_26738121C();
  v138(v9, 0, 1, v30);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267467730);
  v42(v142, 0);
  v43 = sub_2673811AC();
  v44 = sub_266ECB6CC(v141, 0xD000000000000017, 0x8000000267467730);
  if (!v136(v45, 1, v30))
  {
    sub_266ECB128(&unk_28788A400);
    sub_26738115C();
  }

  (v44)(v141, 0);
  v43(v142, 0);
  sub_266ECB294(0, &qword_2800F5850, 0x277D58FA0);
  sub_266ECAF2C(&qword_2800F5848, &qword_2800F5850, 0x277D58FA0);
  sub_26738121C();
  v138(v9, 0, 1, v30);
  v46 = sub_2673811AC();
  v47 = v132;
  sub_266EC637C(v9, v132, 0x8000000267467750);
  v46(v142, 0);
  v48 = v137;
  v49 = sub_2673811AC();
  v50 = sub_266ECB6CC(v141, v47, 0x8000000267467750);
  if (!v136(v51, 1, v48))
  {
    sub_266ECB128(&unk_28788A428);
    sub_26738115C();
  }

  (v50)(v141, 0);
  v49(v142, 0);
  sub_266ECB294(0, &qword_2800F5380, 0x277D58DE0);
  sub_266ECAF2C(&qword_2800F5378, &qword_2800F5380, 0x277D58DE0);
  sub_26738121C();
  v52 = v138;
  v138(v9, 0, 1, v48);
  v53 = sub_2673811AC();
  sub_266EC637C(v9, v133, 0x8000000267467770);
  v53(v142, 0);
  sub_266ECB294(0, &qword_2800F5AC8, 0x277D590A0);
  sub_266ECAF2C(&qword_2800F5AC0, &qword_2800F5AC8, 0x277D590A0);
  sub_26738121C();
  v52(v9, 0, 1, v137);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267467790);
  v54(v142, 0);
  sub_266ECB294(0, &qword_2800F5A58, 0x277D59070);
  sub_266ECAF2C(&qword_2800F5A50, &qword_2800F5A58, 0x277D59070);
  sub_26738121C();
  v52(v9, 0, 1, v137);
  v55 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x80000002674677B0);
  v55(v142, 0);
  sub_266ECB294(0, &qword_2800F5A78, 0x277D59080);
  sub_266ECAF2C(&qword_2800F5A70, &qword_2800F5A78, 0x277D59080);
  sub_26738121C();
  v52(v9, 0, 1, v137);
  v56 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x80000002674677D0);
  v56(v142, 0);
  v57 = v137;
  v58 = sub_2673811AC();
  v59 = sub_266ECB6CC(v141, 0xD00000000000001FLL, 0x80000002674677D0);
  if (!v136(v60, 1, v57))
  {
    sub_266ECB128(&unk_28788A450);
    sub_26738115C();
  }

  (v59)(v141, 0);
  v58(v142, 0);
  sub_266ECB294(0, &qword_2800F54D8, 0x277D58E30);
  sub_266ECAF2C(&qword_2800F54D0, &qword_2800F54D8, 0x277D58E30);
  sub_26738121C();
  v138(v9, 0, 1, v57);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x80000002674677F0);
  v61(v142, 0);
  v62 = sub_2673811AC();
  v130 = 0xD000000000000019;
  v63 = sub_266ECB6CC(v141, 0xD000000000000019, 0x80000002674677F0);
  if (!v136(v64, 1, v57))
  {
    sub_266ECB128(&unk_28788A478);
    sub_26738115C();
  }

  (v63)(v141, 0);
  v62(v142, 0);
  sub_266ECB294(0, &qword_2800F5B90, 0x277D59100);
  sub_266ECAF2C(&qword_2800F5B98, &qword_2800F5B90, 0x277D59100);
  sub_26738121C();
  v65 = v138;
  v138(v9, 0, 1, v57);
  v66 = sub_2673811AC();
  sub_266EC637C(v9, v126, 0x8000000267467810);
  v66(v142, 0);
  sub_266ECB294(0, &qword_2800F59E8, 0x277D59050);
  sub_266ECAF2C(&qword_2800F59E0, &qword_2800F59E8, 0x277D59050);
  sub_26738121C();
  v65(v9, 0, 1, v137);
  v67 = sub_2673811AC();
  sub_266EC637C(v9, v130, 0x8000000267467830);
  v67(v142, 0);
  sub_266ECB294(0, &qword_2800F59F8, 0x277D59058);
  sub_266ECAF2C(&qword_2800F59F0, &qword_2800F59F8, 0x277D59058);
  sub_26738121C();
  v65(v9, 0, 1, v137);
  v68 = v137;
  v69 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267467850);
  v69(v142, 0);
  v70 = sub_2673811AC();
  v71 = sub_266ECB6CC(v141, 0xD00000000000001ELL, 0x8000000267467850);
  if (!v136(v72, 1, v68))
  {
    sub_266ECB128(&unk_28788A4A0);
    sub_26738115C();
  }

  (v71)(v141, 0);
  v70(v142, 0);
  sub_266ECB294(0, &qword_2800F5A08, 0x277D59060);
  sub_266ECAF2C(&qword_2800F5A00, &qword_2800F5A08, 0x277D59060);
  sub_26738121C();
  v73 = v138;
  v138(v9, 0, 1, v68);
  v74 = sub_2673811AC();
  sub_266EC637C(v9, v130, 0x8000000267467870);
  v74(v142, 0);
  sub_266ECB294(0, &qword_2800F5A18, 0x277D59068);
  sub_266ECAF2C(&qword_2800F5A10, &qword_2800F5A18, 0x277D59068);
  sub_26738121C();
  v73(v9, 0, 1, v68);
  v75 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267467890);
  v75(v142, 0);
  v76 = sub_2673811AC();
  v77 = sub_266ECB6CC(v141, 0xD00000000000001ELL, 0x8000000267467890);
  if (!v136(v78, 1, v68))
  {
    sub_266ECB128(&unk_28788A4C8);
    sub_26738115C();
  }

  (v77)(v141, 0);
  v76(v142, 0);
  sub_266ECB294(0, &qword_2800F52E0, 0x277D58DA0);
  sub_266ECAF2C(&qword_2800F52D8, &qword_2800F52E0, 0x277D58DA0);
  sub_26738121C();
  v80 = v137;
  v79 = v138;
  v138(v9, 0, 1, v137);
  v81 = sub_2673811AC();
  sub_266EC637C(v9, v133, 0x80000002674678B0);
  v81(v142, 0);
  sub_266ECB294(0, &qword_2800F51F8, 0x277D58D38);
  sub_266ECAF2C(&qword_2800F51F0, &qword_2800F51F8, 0x277D58D38);
  sub_26738121C();
  v79(v9, 0, 1, v80);
  v82 = sub_2673811AC();
  v130 = 0xD00000000000001ALL;
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x80000002674678D0);
  v82(v142, 0);
  sub_266ECB294(0, &qword_2800F5718, 0x277D58ED8);
  sub_266ECAF2C(&qword_2800F5710, &qword_2800F5718, 0x277D58ED8);
  sub_26738121C();
  v79(v9, 0, 1, v80);
  v83 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x80000002674678F0);
  v83(v142, 0);
  v84 = sub_2673811AC();
  v85 = sub_266ECB6CC(v141, 0xD000000000000023, 0x80000002674678F0);
  v86 = v136;
  if (!v136(v87, 1, v80))
  {
    sub_266ECB128(&unk_28788A4F0);
    sub_26738115C();
  }

  (v85)(v141, 0);
  v84(v142, 0);
  sub_266ECB294(0, &qword_2800F5728, 0x277D58EE8);
  sub_266ECAF2C(&qword_2800F5720, &qword_2800F5728, 0x277D58EE8);
  sub_26738121C();
  v88 = v137;
  v138(v9, 0, 1, v137);
  v89 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, 0x8000000267467920);
  v89(v142, 0);
  v90 = sub_2673811AC();
  v91 = sub_266ECB6CC(v141, 0xD000000000000022, 0x8000000267467920);
  if (!v86(v92, 1, v88))
  {
    sub_266ECB128(&unk_28788A518);
    sub_26738115C();
  }

  (v91)(v141, 0);
  v90(v142, 0);
  sub_266ECB294(0, &qword_2800F5798, 0x277D58F30);
  sub_266ECAF2C(&qword_2800F5790, &qword_2800F5798, 0x277D58F30);
  sub_26738121C();
  v94 = v137;
  v93 = v138;
  v138(v9, 0, 1, v137);
  v95 = sub_2673811AC();
  sub_266EC637C(v9, v133, 0x8000000267467950);
  v95(v142, 0);
  sub_266ECB294(0, &qword_2800F59B8, 0x277D59040);
  sub_266ECAF2C(&qword_2800F59B0, &qword_2800F59B8, 0x277D59040);
  sub_26738121C();
  v93(v9, 0, 1, v94);
  v96 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267467970);
  v96(v142, 0);
  sub_266ECB294(0, &qword_2800F59C8, 0x277D59048);
  sub_266ECAF2C(&qword_2800F59C0, &qword_2800F59C8, 0x277D59048);
  sub_26738121C();
  v93(v9, 0, 1, v94);
  v97 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x8000000267467990);
  v97(v142, 0);
  v98 = sub_2673811AC();
  v99 = sub_266ECB6CC(v141, 0xD000000000000024, 0x8000000267467990);
  if (!v136(v100, 1, v94))
  {
    sub_266ECB128(&unk_28788A540);
    sub_26738115C();
  }

  (v99)(v141, 0);
  v98(v142, 0);
  sub_266ECB294(0, &qword_2800F5968, 0x277D59018);
  sub_266ECAF2C(&qword_2800F5960, &qword_2800F5968, 0x277D59018);
  sub_26738121C();
  v101 = v137;
  v102 = v138;
  v138(v9, 0, 1, v137);
  v103 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x80000002674679C0);
  v103(v142, 0);
  sub_266ECB294(0, &qword_2800F5278, 0x277D58D78);
  sub_266ECAF2C(&qword_2800F5270, &qword_2800F5278, 0x277D58D78);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v104 = sub_2673811AC();
  sub_266EC637C(v9, v132, 0x80000002674679E0);
  v104(v142, 0);
  sub_266ECB294(0, &qword_2800F56E8, 0x277D58ED0);
  sub_266ECAF2C(&qword_2800F56E0, &qword_2800F56E8, 0x277D58ED0);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v105 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x8000000267467A00);
  v105(v142, 0);
  sub_266ECB294(0, &qword_2800F5350, 0x277D58DC0);
  sub_266ECAF2C(&qword_2800F5348, &qword_2800F5350, 0x277D58DC0);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v106 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267467A20);
  v106(v142, 0);
  sub_266ECB294(0, &qword_2800F5238, 0x277D58D58);
  sub_266ECAF2C(&qword_2800F5230, &qword_2800F5238, 0x277D58D58);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v107 = sub_2673811AC();
  v136 = 0xD00000000000001BLL;
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267467A40);
  v107(v142, 0);
  sub_266ECB294(0, &qword_2800F5758, 0x277D58EF8);
  sub_266ECAF2C(&qword_2800F5750, &qword_2800F5758, 0x277D58EF8);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v108 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x8000000267467A60);
  v108(v142, 0);
  sub_266ECB294(0, &qword_2800F5768, 0x277D58F08);
  sub_266ECAF2C(&qword_2800F5760, &qword_2800F5768, 0x277D58F08);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v109 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x8000000267467A90);
  v109(v142, 0);
  sub_266ECB294(0, &qword_2800F52A0, 0x277D58D98);
  sub_266ECAF2C(&qword_2800F5298, &qword_2800F52A0, 0x277D58D98);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v110 = sub_2673811AC();
  sub_266EC637C(v9, v131, 0x8000000267467AC0);
  v110(v142, 0);
  sub_266ECB294(0, &qword_2800F5BA0, 0x277D59160);
  sub_266ECAF2C(&qword_2800F5BA8, &qword_2800F5BA0, 0x277D59160);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v111 = sub_2673811AC();
  sub_266EC637C(v9, v133, 0x8000000267467AE0);
  v111(v142, 0);
  sub_266ECB294(0, &qword_2800F5BB0, 0x277D59138);
  sub_266ECAF2C(&qword_2800F5BB8, &qword_2800F5BB0, 0x277D59138);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v112 = sub_2673811AC();
  sub_266EC637C(v9, v136, 0x8000000267467B00);
  v112(v142, 0);
  sub_266ECB294(0, &qword_2800F5668, 0x277D58EA8);
  sub_266ECAF2C(&qword_2800F5660, &qword_2800F5668, 0x277D58EA8);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v113 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267467B20);
  v113(v142, 0);
  sub_266ECB294(0, &qword_2800F56A0, 0x277D58EB8);
  sub_266ECAF2C(&qword_2800F5698, &qword_2800F56A0, 0x277D58EB8);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v114 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267467B40);
  v114(v142, 0);
  sub_266ECB294(0, &qword_2800F5B28, 0x277D590C0);
  sub_266ECAF2C(&qword_2800F5B20, &qword_2800F5B28, 0x277D590C0);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v115 = sub_2673811AC();
  sub_266EC637C(v9, v130, 0x8000000267467B60);
  v115(v142, 0);
  sub_266ECB294(0, &qword_2800F56D8, 0x277D58EC8);
  sub_266ECAF2C(&qword_2800F56D0, &qword_2800F56D8, 0x277D58EC8);
  sub_26738121C();
  v102(v9, 0, 1, v101);
  v116 = sub_2673811AC();
  sub_266EC637C(v9, 0x70757465536D6463, 0xEC0000006B6E694CLL);
  v116(v142, 0);
  v117 = v127;
  sub_26738117C();
  v118 = sub_2673811BC();
  v120 = v119;
  v121 = *v119;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v120 = v121;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v121 = sub_266ECAD54(0, v121[2] + 1, 1, v121);
    *v120 = v121;
  }

  v124 = v121[2];
  v123 = v121[3];
  if (v124 >= v123 >> 1)
  {
    v121 = sub_266ECAD54(v123 > 1, v124 + 1, 1, v121);
    *v120 = v121;
  }

  v121[2] = v124 + 1;
  (*(v128 + 32))(v121 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v124, v117, v129);
  v118(v142, 0);
  sub_266ECB128(&unk_28788A568);
  return sub_2673811CC();
}

uint64_t sub_267149BF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267149C8C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267149D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267149DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267149E1C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F5BC0, &qword_2800F1E70, 0x277D590F0);
  a1[2] = sub_266ECAF2C(&qword_2800F5BC8, &qword_2800F1E70, 0x277D590F0);
  result = sub_266ECAF2C(&qword_2800F5BD0, &qword_2800F1E70, 0x277D590F0);
  a1[3] = result;
  return result;
}

uint64_t static NLXSchemaNLXClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v12 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v41 = a1;
  v38 = v12;
  sub_26738120C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v37 = *(v14 + 56);
  v37(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 1682533486, 0xE400000000000000);
  v15(v43, 0);
  v39 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v42, 1682533486, 0xE400000000000000);
  v18 = *(v14 + 48);
  v40 = v14 + 48;
  v36 = v18;
  if (!v18(v19, 1, v13))
  {
    sub_266ECB128(&unk_28788A5A0);
    sub_26738115C();
  }

  (v17)(v42, 0);
  v16(v43, 0);
  (*(v34 + 104))(v7, *MEMORY[0x277D3E530], v35);
  v43[0] = 1;
  sub_26738114C();
  v20 = v37;
  v37(v11, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x80000002674206D0);
  v21(v43, 0);
  type metadata accessor for SISchemaComponentInvocationSource(0);
  sub_26714A730();
  sub_26738120C();
  v20(v11, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x8000000267467BB0);
  v22(v43, 0);
  sub_26738120C();
  v20(v11, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x4974736575716572, 0xE900000000000064);
  v23(v43, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v42, 0x4974736575716572, 0xE900000000000064);
  if (!v36(v26, 1, v13))
  {
    sub_266ECB128(&unk_28788A5D0);
    sub_26738115C();
  }

  (v25)(v42, 0);
  v24(v43, 0);
  sub_26738120C();
  v27 = v37;
  v37(v11, 0, 1, v13);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0x6449707274, 0xE500000000000000);
  v28(v43, 0);
  sub_26738120C();
  v27(v11, 0, 1, v13);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x6575716552627573, 0xEC00000064497473);
  v29(v43, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v42, 0x6575716552627573, 0xEC00000064497473);
  if (!v36(v32, 1, v13))
  {
    sub_266ECB128(&unk_28788A600);
    sub_26738115C();
  }

  (v31)(v42, 0);
  return v30(v43, 0);
}

uint64_t sub_26714A66C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714A6D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26714A730()
{
  result = qword_2800F5BD8;
  if (!qword_2800F5BD8)
  {
    type metadata accessor for SISchemaComponentInvocationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5BD8);
  }

  return result;
}

uint64_t static NLXSchemaNLXCurareContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449657261727563, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_26714A9A0()
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
  sub_266EC637C(v3, 0x6449657261727563, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_26714AB3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714ABA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaNLXDeviceFixedContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7645747365547369, 0xEB00000000746E65);
  return v10(v12, 0);
}

uint64_t sub_26714AE98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714AEFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26714AF60()
{
  result = qword_2800F5B78;
  if (!qword_2800F5B78)
  {
    sub_26714AFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5B78);
  }

  return result;
}

unint64_t sub_26714AFB8()
{
  result = qword_2800F5B70;
  if (!qword_2800F5B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5B70);
  }

  return result;
}

uint64_t static NLXSchemaNLXLegacyContextSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267467C60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267467C80, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267467CA0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26714B218(uint64_t a1)
{
  v2 = sub_26714B31C(&qword_2800F5BE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26714B280(uint64_t a1, uint64_t a2)
{
  v4 = sub_26714B31C(&qword_2800F5BE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26714B31C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaNLXLegacyContextSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaNLXLegacyNLContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v32 = a1;
  v1 = sub_26738113C();
  v33 = v1;
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
  v30 = "iri.nlx.NLXLegacyNLContext";
  v10 = *MEMORY[0x277D3E4E8];
  v34 = *(v2 + 104);
  v31 = v10;
  v34(v5, v10, v1);
  v35[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v27 = v11;
  v13(v9, 0, 1, v11);
  v28 = v13;
  v29 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v30 | 0x8000000000000000);
  v15(v35, 0);
  v16 = v10;
  v17 = v33;
  v34(v5, v16, v33);
  v35[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7463697274537369, 0xEE0074706D6F7250);
  v18(v35, 0);
  v30 = "isDictationPrompt";
  v19 = v34;
  v34(v5, *MEMORY[0x277D3E530], v17);
  v35[0] = 1;
  sub_26738114C();
  v21 = v27;
  v20 = v28;
  v28(v9, 0, 1, v27);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v30 | 0x8000000000000000);
  v22(v35, 0);
  v19(v5, v31, v33);
  v35[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267467D30);
  v23(v35, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v20(v9, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  v24(v35, 0);
  type metadata accessor for NLXSchemaNLXLegacyContextSource(0);
  sub_26714BA60();
  sub_26738120C();
  v20(v9, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267467D50);
  return v25(v35, 0);
}

uint64_t sub_26714B99C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714BA00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26714BA60()
{
  result = qword_2800F5BE0;
  if (!qword_2800F5BE0)
  {
    type metadata accessor for NLXSchemaNLXLegacyContextSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5BE0);
  }

  return result;
}

uint64_t static NLXSchemaNLXLegacyNLContextTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x64657265646E6572, 0xED00007374786554);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x64657265646E6572, 0xED00007374786554);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788A630);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_26714BEE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714BF44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaPLUMSpanData.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E518], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_26714C230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714C294(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26714C2F8()
{
  result = qword_2800F53F8;
  if (!qword_2800F53F8)
  {
    sub_26714C350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F53F8);
  }

  return result;
}

unint64_t sub_26714C350()
{
  result = qword_2800F53F0;
  if (!qword_2800F53F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F53F0);
  }

  return result;
}

uint64_t static NLXSchemaSSUBackgroundUpdateAppCategoryInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19[2] = a1;
  v20 = sub_26738113C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaSSUCategoryType(0);
  sub_26714C970(&qword_2800F5BF0, type metadata accessor for NLXSchemaSSUCategoryType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x79726F6765746163, 0xEC00000065707954);
  v11(v21, 0);
  v19[0] = "roundUpdateAppCategoryInfo";
  v12 = *MEMORY[0x277D3E538];
  v13 = v1 + 104;
  v14 = *(v1 + 104);
  v19[1] = v13;
  v14(v4, v12, v20);
  v21[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v19[0] | 0x8000000000000000);
  v15(v21, 0);
  v14(v4, v12, v20);
  v21[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267467E30);
  v16(v21, 0);
  type metadata accessor for NLXSchemaSSUCacheAction(0);
  sub_26714C970(&qword_2800F5BF8, type metadata accessor for NLXSchemaSSUCacheAction);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x7463416568636163, 0xEB000000006E6F69);
  return v17(v21, 0);
}

uint64_t sub_26714C864(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714C8C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26714C970(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26714C9B8()
{
  result = qword_2800F5C08;
  if (!qword_2800F5C08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5C08);
  }

  return result;
}

uint64_t static NLXSchemaSSUBackgroundUpdateAppInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v20 = "roundUpdateAppInfo";
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E530], v3);
  v22[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v20 | 0x8000000000000000);
  v15(v22, 0);
  v12(v7, *MEMORY[0x277D3E538], v3);
  v22[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x8000000267467EB0);
  v16(v22, 0);
  sub_266ECB294(0, &qword_2800F5C08, 0x277D59128);
  sub_266ECAF2C(&qword_2800F5C00, &qword_2800F5C08, 0x277D59128);
  sub_26738122C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x79726F6765746163, 0xED0000736F666E49);
  return v17(v22, 0);
}

uint64_t sub_26714CE18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714CE7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaSSUBackgroundUpdateContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5C20, 0x277D59150);
  sub_266ECAF2C(&qword_2800F5C28, &qword_2800F5C20, 0x277D59150);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F5C30, 0x277D59140);
  sub_266ECAF2C(&qword_2800F5C38, &qword_2800F5C30, 0x277D59140);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F5C40, 0x277D59148);
  sub_266ECAF2C(&qword_2800F5C48, &qword_2800F5C40, 0x277D59148);
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

uint64_t sub_26714D438(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714D49C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaSSUBackgroundUpdateEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267467F50);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F5C18, 0x277D59130);
  sub_266ECAF2C(&qword_2800F5C10, &qword_2800F5C18, 0x277D59130);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F666E49707061, 0xE700000000000000);
  return v12(v14, 0);
}

uint64_t sub_26714D874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714D8D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaSSUBackgroundUpdateFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26714DBCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714DC30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26714DC94()
{
  result = qword_2800F5C48;
  if (!qword_2800F5C48)
  {
    sub_26714DCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5C48);
  }

  return result;
}

unint64_t sub_26714DCEC()
{
  result = qword_2800F5C40;
  if (!qword_2800F5C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5C40);
  }

  return result;
}

uint64_t static NLXSchemaSSUBackgroundUpdateStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaSSUBackgroundUpdateType(0);
  sub_26714E028(&qword_2800F5C50, type metadata accessor for NLXSchemaSSUBackgroundUpdateType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267467FF0);
  return v5(v7, 0);
}

uint64_t sub_26714DF1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714DF80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26714E028(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26714E070()
{
  result = qword_2800F5C20;
  if (!qword_2800F5C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5C20);
  }

  return result;
}

uint64_t static NLXSchemaSSUBackgroundUpdateType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267468040, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267468060, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x8000000267468090, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x80000002674680C0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000036, 0x80000002674680F0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26714E3B0(uint64_t a1)
{
  v2 = sub_26714E4B4(&qword_2800F5C58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26714E418(uint64_t a1, uint64_t a2)
{
  v4 = sub_26714E4B4(&qword_2800F5C58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26714E4B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaSSUBackgroundUpdateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaSSUCacheAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267468160, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267468180, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674681A0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x80000002674681C0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26714E780(uint64_t a1)
{
  v2 = sub_26714E884(&qword_2800F5C60);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26714E7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26714E884(&qword_2800F5C60);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26714E884(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaSSUCacheAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaSSUCacheTriggerReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267468210, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267468230, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267468260, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267468290, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26714EB4C(uint64_t a1)
{
  v2 = sub_26714EC50(&qword_2800F5C70);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26714EBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26714EC50(&qword_2800F5C70);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26714EC50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaSSUCacheTriggerReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaSSUCategoryType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674682F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267468310, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267468330, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267468350, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x8000000267468370, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26714EF8C(uint64_t a1)
{
  v2 = sub_26714F090(&qword_2800F5C78);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26714EFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26714F090(&qword_2800F5C78);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26714F090(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaSSUCategoryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaSSUUserRequestCacheEntryInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v33 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaSSUCacheTriggerReason(0);
  sub_26714F814(&qword_2800F5C68, type metadata accessor for NLXSchemaSSUCacheTriggerReason);
  v37 = a1;
  sub_26738120C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v12, 0, 1, v13);
  v35 = v15;
  v36 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v12, 0x5272656767697274, 0xED00006E6F736165);
  v17(v40, 0);
  type metadata accessor for NLXSchemaSSUCategoryType(0);
  sub_26714F814(&qword_2800F5BF0, type metadata accessor for NLXSchemaSSUCategoryType);
  sub_26738120C();
  v15(v12, 0, 1, v13);
  v33[1] = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v12, 0x79726F6765746163, 0xEC00000065707954);
  v18(v40, 0);
  v33[0] = "equestCacheEntryInfo";
  v19 = *MEMORY[0x277D3E538];
  v20 = v38;
  v21 = v39 + 104;
  v34 = *(v39 + 104);
  v34(v8, v19, v38);
  v39 = v21;
  v40[0] = 1;
  sub_26738114C();
  v22 = v13;
  v23 = v13;
  v24 = v35;
  v35(v12, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000025, v33[0] | 0x8000000000000000);
  v25(v40, 0);
  v33[0] = "arityScoreComparisons";
  v26 = *MEMORY[0x277D3E518];
  v27 = v34;
  v34(v8, v26, v20);
  v40[0] = 1;
  sub_26738114C();
  v24(v12, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001BLL, v33[0] | 0x8000000000000000);
  v28(v40, 0);
  v27(v8, v26, v38);
  v40[0] = 1;
  sub_26738114C();
  v29 = v23;
  v24(v12, 0, 1, v23);
  v30 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001BLL, 0x8000000267468420);
  v30(v40, 0);
  sub_266ECB294(0, &qword_2800F5C80, 0x277D59178);
  sub_266ECAF2C(&qword_2800F5C88, &qword_2800F5C80, 0x277D59178);
  sub_26738120C();
  v24(v12, 0, 1, v29);
  v31 = sub_2673811AC();
  sub_266EC637C(v12, 0x666E49686374616DLL, 0xE90000000000006FLL);
  return v31(v40, 0);
}

uint64_t sub_26714F750(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714F7B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26714F814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static NLXSchemaSSUUserRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5CA0, 0x277D59180);
  sub_266ECAF2C(&qword_2800F5CA8, &qword_2800F5CA0, 0x277D59180);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F5CB0, 0x277D59168);
  sub_266ECAF2C(&qword_2800F5CB8, &qword_2800F5CB0, 0x277D59168);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F5CC0, 0x277D59170);
  sub_266ECAF2C(&qword_2800F5CC8, &qword_2800F5CC0, 0x277D59170);
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

uint64_t sub_26714FDB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26714FE1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaSSUUserRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5C98, 0x277D59158);
  sub_266ECAF2C(&qword_2800F5C90, &qword_2800F5C98, 0x277D59158);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x80000002674684A0);
  return v5(v7, 0);
}

uint64_t sub_2671500B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715011C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaSSUUserRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267150410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267150474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671504D8()
{
  result = qword_2800F5CC8;
  if (!qword_2800F5CC8)
  {
    sub_267150530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5CC8);
  }

  return result;
}

unint64_t sub_267150530()
{
  result = qword_2800F5CC0;
  if (!qword_2800F5CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5CC0);
  }

  return result;
}

uint64_t static NLXSchemaSSUUserRequestMatchInfo.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaSSUUtteranceCandidateType(0);
  sub_2671509BC(&qword_2800F5CD0, type metadata accessor for NLXSchemaSSUUtteranceCandidateType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267468520);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7469746E456D756ELL, 0xEB00000000736569);
  return v11(v15, 0);
}

uint64_t sub_2671508B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267150914(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671509BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267150A04()
{
  result = qword_2800F5C80;
  if (!qword_2800F5C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5C80);
  }

  return result;
}

uint64_t static NLXSchemaSSUUserRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267150C98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267150CFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267150D60()
{
  result = qword_2800F5CA8;
  if (!qword_2800F5CA8)
  {
    sub_267150DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5CA8);
  }

  return result;
}

unint64_t sub_267150DB8()
{
  result = qword_2800F5CA0;
  if (!qword_2800F5CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5CA0);
  }

  return result;
}

uint64_t static NLXSchemaSSUUtteranceCandidateType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674685B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x80000002674685E0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267468610, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267151018(uint64_t a1)
{
  v2 = sub_26715111C(&qword_2800F5CD8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267151080(uint64_t a1, uint64_t a2)
{
  v4 = sub_26715111C(&qword_2800F5CD8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26715111C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaSSUUtteranceCandidateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODBATCHSiriSchemaODBATCHClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_26738118C();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5CE0, 0x277D59190);
  sub_266ECAF2C(&qword_2800F5CE8, &qword_2800F5CE0, 0x277D59190);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x74654D746E657665, 0xED00006174616461);
  v13(v39, 0);
  sub_266ECB294(0, &qword_2800F5CF0, 0x277D59198);
  sub_266ECAF2C(&qword_2800F5CF8, &qword_2800F5CF0, 0x277D59198);
  sub_26738121C();
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267468670);
  v14(v39, 0);
  v36 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v38, 0xD000000000000013, 0x8000000267468670);
  v17 = *(v11 + 48);
  if (!v17(v18, 1, v10))
  {
    sub_266ECB128(&unk_28788A658);
    sub_26738115C();
  }

  (v16)(v38, 0);
  v15(v39, 0);
  sub_266ECB294(0, &qword_2800F5D00, 0x277D591A8);
  sub_266ECAF2C(&qword_2800F5D08, &qword_2800F5D00, 0x277D591A8);
  sub_26738121C();
  v12(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x8000000267468690);
  v19(v39, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v38, 0xD00000000000001DLL, 0x8000000267468690);
  if (!v17(v22, 1, v10))
  {
    sub_266ECB128(&unk_28788A680);
    sub_26738115C();
  }

  (v21)(v38, 0);
  v20(v39, 0);
  v23 = v33;
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
  (*(v34 + 32))(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30, v23, v35);
  v24(v39, 0);
  sub_266ECB128(&unk_28788A6A8);
  return sub_2673811CC();
}

uint64_t sub_2671517A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267151838()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267151904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267151968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671519C8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F5D10, &qword_2800F5D18, 0x277D59188);
  a1[2] = sub_266ECAF2C(&qword_2800F5D20, &qword_2800F5D18, 0x277D59188);
  result = sub_266ECAF2C(&qword_2800F5D28, &qword_2800F5D18, 0x277D59188);
  a1[3] = result;
  return result;
}

uint64_t static ODBATCHSiriSchemaODBATCHClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x496863746162646FLL, 0xE900000000000064);
  v9(v17, 0);
  sub_266ECB294(0, &qword_2800F5D38, 0x277D593F8);
  sub_266ECAF2C(&qword_2800F5D40, &qword_2800F5D38, 0x277D593F8);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674686F0);
  v10(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E540], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267468710);
  return v11(v17, 0);
}

uint64_t sub_267151ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267151F3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODBATCHSiriSchemaODBATCHDataReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v24 = sub_26738113C();
  v26 = *(v24 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v25 = *(v9 - 8);
  v10 = *(v25 + 56);
  v10(v8, 0, 1, v9);
  v23 = a1;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E696769726FLL, 0xEF64496B636F6C43);
  v11(v28, 0);
  v22 = "iri.dim.DIMOnDeviceDigest";
  v12 = *MEMORY[0x277D3E538];
  v13 = *(v26 + 104);
  v26 += 104;
  v14 = v24;
  v13(v4, v12, v24);
  v28[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v22 | 0x8000000000000000);
  v15(v28, 0);
  v13(v4, v12, v14);
  v28[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x800000026742BBD0);
  v16(v28, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v27, 0xD000000000000029, 0x800000026742BBD0);
  if (!(*(v25 + 48))(v19, 1, v9))
  {
    sub_266ECB128(&unk_28788A6D8);
    sub_26738115C();
  }

  (v18)(v27, 0);
  return v17(v28, 0);
}

uint64_t sub_2671524AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267152510(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODBATCHSiriSchemaODBATCHTurnRestatementScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v31 = sub_26738113C();
  v29 = *(v31 - 8);
  v2 = *(v29 + 8);
  MEMORY[0x28223BE20](v31);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v26 = v8;
  v10(v7, 0, 1, v8);
  v27 = v10;
  v28 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x54746E6572727563, 0xED000064496E7275);
  v12(v32, 0);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v25[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E7275547478656ELL, 0xEA00000000006449);
  v13(v32, 0);
  v25[0] = "TCHTurnRestatementScore";
  v14 = *MEMORY[0x277D3E518];
  v15 = *(v29 + 13);
  v16 = v31;
  v15(v30, v14, v31);
  v29 = v15;
  v32[0] = 1;
  sub_26738114C();
  v18 = v26;
  v17 = v27;
  v27(v7, 0, 1, v26);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v25[0] | 0x8000000000000000);
  v19(v32, 0);
  v20 = v30;
  v15(v30, v14, v16);
  v32[0] = 1;
  sub_26738114C();
  v21 = v18;
  v17(v7, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x80000002674687C0);
  v22(v32, 0);
  v29(v20, *MEMORY[0x277D3E4E8], v31);
  v32[0] = 1;
  sub_26738114C();
  v17(v7, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x4473736F72437369, 0xED00006563697665);
  return v23(v32, 0);
}

uint64_t sub_267152B40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267152BA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODBATCHSiriSchemaODBATCHTurnRestatementScoresReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5D50, 0x277D591A0);
  sub_266ECAF2C(&qword_2800F5D48, &qword_2800F5D50, 0x277D591A0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267468830);
  return v5(v7, 0);
}

uint64_t sub_267152E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267152EA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAdaptiveVolumeProperties.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v21 = a1;
  v22 = sub_26738113C();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v19 = *MEMORY[0x277D3E4E8];
  v18 = *(v1 + 104);
  v20 = v1 + 104;
  v18(v4);
  v23[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267468890);
  v11(v23, 0);
  type metadata accessor for ODDSiriSchemaODDAdaptiveVolumeUserIntent(0);
  sub_267153528(&qword_2800F5D58, type metadata accessor for ODDSiriSchemaODDAdaptiveVolumeUserIntent);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6576697470616461, 0xEE00656D756C6F56);
  v12(v23, 0);
  v21 = "isMediaPlaybackOn";
  v13 = v18;
  (v18)(v4, v19, v22);
  v23[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v21 | 0x8000000000000000);
  v14(v23, 0);
  (v13)(v4, *MEMORY[0x277D3E500], v22);
  v23[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267453850);
  return v15(v23, 0);
}

uint64_t sub_26715341C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267153480(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267153528(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267153570()
{
  result = qword_2800F5D68;
  if (!qword_2800F5D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5D68);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAdaptiveVolumeUserIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x80000002674688F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267468920, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267468950, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267468970, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x80000002674689A0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671538B4(uint64_t a1)
{
  v2 = sub_2671539B8(&qword_2800F5D70);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26715391C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671539B8(&qword_2800F5D70);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671539B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDAdaptiveVolumeUserIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x8000000267468A10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003BLL, 0x8000000267468A40, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x8000000267468A80, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000040, 0x8000000267468AC0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ELL, 0x8000000267468B10, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267153CF0(uint64_t a1)
{
  v2 = sub_267153DF4(&qword_2800F5D80);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267153D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_267153DF4(&qword_2800F5D80);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267153DF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAnnounceProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = sub_26738113C();
  v49 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v42 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v50 = a2;
  sub_26738119C();
  v43 = "iri.odd.ODDAnnounceProperties";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v47 = v13;
  v51[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v48 = *(v15 + 56);
  v16 = v15 + 56;
  v46 = v14;
  v48(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v43 | 0x8000000000000000);
  v17(v51, 0);
  v43 = "isAnnounceCallsEnabled";
  v18 = v49;
  v13(v7, v12, v49);
  v42[0] = v4 + 104;
  v51[0] = 1;
  sub_26738114C();
  v42[1] = v16;
  v19 = v48;
  v48(v11, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, v43 | 0x8000000000000000);
  v20(v51, 0);
  v43 = "isAnnounceNotificationsEnabled";
  v21 = v12;
  v22 = v12;
  v45 = v12;
  v23 = v18;
  v24 = v18;
  v25 = v47;
  v47(v7, v21, v23);
  v51[0] = 1;
  sub_26738114C();
  v26 = v46;
  v19(v11, 0, 1, v46);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v43 | 0x8000000000000000);
  v27(v51, 0);
  v43 = "isProximityCardSeen";
  v25(v7, v22, v24);
  v28 = v25;
  v51[0] = 1;
  sub_26738114C();
  v29 = v48;
  v48(v11, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, v43 | 0x8000000000000000);
  v30(v51, 0);
  v43 = "nfirmationEnabled";
  v31 = v45;
  v32 = v49;
  v28(v7, v45, v49);
  v51[0] = 1;
  sub_26738114C();
  v33 = v46;
  v29(v11, 0, 1, v46);
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v43 | 0x8000000000000000);
  v34(v51, 0);
  v43 = "isEnabledForHeadphones";
  v35 = v47;
  v47(v7, v31, v32);
  v51[0] = 1;
  sub_26738114C();
  v36 = v48;
  v48(v11, 0, 1, v33);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002FLL, v43 | 0x8000000000000000);
  v37(v51, 0);
  v35(v7, v45, v49);
  v51[0] = 1;
  sub_26738114C();
  v38 = v36;
  v36(v11, 0, 1, v33);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0x616C507261437369, 0xEE00646574754D79);
  v39(v51, 0);
  type metadata accessor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus(0);
  sub_26715476C(&qword_2800F5D78, type metadata accessor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus);
  sub_26738120C();
  v38(v11, 0, 1, v33);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0x5379616C50726163, 0xED00007375746174);
  return v40(v51, 0);
}

uint64_t sub_267154660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671546C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26715476C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671547B4()
{
  result = qword_2800F5D90;
  if (!qword_2800F5D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5D90);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAppleIntelligenceProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v70 = sub_26738113C();
  v3 = *(v70 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v70);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v58 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v67 = "IntelligenceProperties";
  v68 = *MEMORY[0x277D3E4E8];
  v11 = *(v3 + 104);
  v69 = v3 + 104;
  (v11)(v6);
  v72[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v67 | 0x8000000000000000);
  v15(v72, 0);
  v64 = "isAppleIntelligenceEnabled";
  v67 = v11;
  (v11)(v6, v68, v70);
  v72[0] = 1;
  sub_26738114C();
  v59 = v14;
  v60 = v13 + 56;
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  v17 = v64;
  v58[0] = v10;
  sub_266EC637C(v10, 0xD000000000000021, v64 | 0x8000000000000000);
  v16(v72, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v71, 0xD000000000000021, v17 | 0x8000000000000000);
  v20 = *(v13 + 48);
  v66 = v12;
  v63 = v20;
  v64 = v13 + 48;
  v22 = v20(v21, 1, v12);
  v65 = a2;
  if (!v22)
  {
    sub_266ECB128(&unk_28788A700);
    sub_26738115C();
  }

  (v19)(v71, 0);
  v18(v72, 0);
  v61 = "elligenceActivity";
  v23 = v68;
  (v67)(v6, v68, v70);
  v72[0] = 1;
  v24 = v58[0];
  sub_26738114C();
  v25 = v66;
  v26 = v59;
  v59(v24, 0, 1, v66);
  v27 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000022, v61 | 0x8000000000000000);
  v27(v72, 0);
  v61 = "nceHardwareCapable";
  (v67)(v6, v23, v70);
  v72[0] = 1;
  sub_26738114C();
  v26(v24, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v24, 0xD00000000000001CLL, v61 | 0x8000000000000000);
  v28(v72, 0);
  (v67)(v6, v23, v70);
  v72[0] = 1;
  v61 = v6;
  sub_26738114C();
  v26(v24, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000010, 0x8000000267468D30);
  v29(v72, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v71, 0xD000000000000010, 0x8000000267468D30);
  if (!v63(v32, 1, v25))
  {
    sub_266ECB128(&unk_28788A730);
    sub_26738115C();
  }

  (v31)(v71, 0);
  v30(v72, 0);
  (v67)(v61, v68, v70);
  v72[0] = 1;
  sub_26738114C();
  v33 = v66;
  v26(v24, 0, 1, v66);
  v34 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000023, 0x8000000267468D50);
  v34(v72, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v71, 0xD000000000000023, 0x8000000267468D50);
  if (!v63(v37, 1, v33))
  {
    sub_266ECB128(&unk_28788A758);
    sub_26738115C();
  }

  (v36)(v71, 0);
  v35(v72, 0);
  type metadata accessor for GATSchemaGATAccountType(0);
  v39 = v38;
  v58[1] = sub_2671556D4(&qword_2800F1938, type metadata accessor for GATSchemaGATAccountType);
  v58[2] = v39;
  sub_26738120C();
  v40 = v66;
  v26(v24, 0, 1, v66);
  v41 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000012, 0x8000000267468D80);
  v41(v72, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v71, 0xD000000000000012, 0x8000000267468D80);
  if (!v63(v44, 1, v40))
  {
    sub_266ECB128(&unk_28788A780);
    sub_26738115C();
  }

  (v43)(v71, 0);
  v42(v72, 0);
  (v67)(v61, v68, v70);
  v72[0] = 1;
  sub_26738114C();
  v45 = v66;
  v26(v24, 0, 1, v66);
  v46 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000015, 0x8000000267468DA0);
  v46(v72, 0);
  v47 = sub_2673811AC();
  v48 = sub_266ECB6CC(v71, 0xD000000000000015, 0x8000000267468DA0);
  if (!v63(v49, 1, v45))
  {
    sub_266ECB128(&unk_28788A7A8);
    sub_26738115C();
  }

  (v48)(v71, 0);
  v47(v72, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_2671556D4(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent);
  sub_26738122C();
  v50 = v66;
  v26(v24, 0, 1, v66);
  v51 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000012, 0x8000000267468DC0);
  v51(v72, 0);
  v52 = v61;
  v53 = v67;
  (v67)(v61, v68, v70);
  v72[0] = 1;
  sub_26738114C();
  v26(v24, 0, 1, v50);
  v54 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000021, 0x8000000267468DE0);
  v54(v72, 0);
  sub_26738120C();
  v26(v24, 0, 1, v50);
  v55 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000010, 0x8000000267468E10);
  v55(v72, 0);
  v53(v52, v68, v70);
  v72[0] = 1;
  sub_26738114C();
  v26(v24, 0, 1, v50);
  v56 = sub_2673811AC();
  sub_266EC637C(v24, 0xD000000000000013, 0x8000000267468E30);
  return v56(v72, 0);
}

uint64_t sub_2671555C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715562C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671556D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26715571C()
{
  result = qword_2800F5DA0;
  if (!qword_2800F5DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5DA0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAppTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267468E80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267468EA0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267468EC0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267468EE0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267468F00, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267155A5C(uint64_t a1)
{
  v2 = sub_267155B60(&qword_2800F5DB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267155AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267155B60(&qword_2800F5DB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267155B60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDAppTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAssetAvailabilityFromBootDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DB8, 0x277D591D8);
  sub_266ECAF2C(&qword_2800F5DC0, &qword_2800F5DB8, 0x277D591D8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5DC8, 0x277D591E0);
  sub_266ECAF2C(&qword_2800F5DD0, &qword_2800F5DC8, 0x277D591E0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_267155E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267155ED0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetAvailabilityFromBootDigestReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5DE0, 0x277D591C8);
  sub_266ECAF2C(&qword_2800F5DD8, &qword_2800F5DE0, 0x277D591C8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267156248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671562AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetAvailabilityFromBootDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v30 = sub_26738113C();
  v33 = *(v30 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v31 = v8;
  v32 = v9 + 56;
  v10(v7, 0, 1, v8);
  v25 = v10;
  v26 = a1;
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267468FF0);
  v11(v34, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v33 + 104);
  v33 += 104;
  v14 = v29;
  v15 = v30;
  v28 = v12;
  v13(v29, v12, v30);
  v27 = v13;
  v34[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465537465737361, 0xEA00000000006449);
  v16(v34, 0);
  v13(v14, v12, v15);
  v34[0] = 1;
  sub_26738114C();
  v17 = v31;
  v18 = v25;
  v25(v7, 0, 1, v31);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465537465737361, 0xEC000000656D614ELL);
  v19(v34, 0);
  v20 = v27;
  v27(v14, v28, v15);
  v34[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267469010);
  v21(v34, 0);
  v20(v14, *MEMORY[0x277D3E540], v15);
  v34[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v31);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002CLL, 0x8000000267469030);
  return v22(v34, 0);
}

uint64_t sub_267156900(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267156964(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetAvailabilityFromBootTuples.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674690A0);
  return v10(v12, 0);
}

uint64_t sub_267156C58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267156CBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267156D20()
{
  result = qword_2800F5DD0;
  if (!qword_2800F5DD0)
  {
    sub_267156D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5DD0);
  }

  return result;
}

unint64_t sub_267156D78()
{
  result = qword_2800F5DC8;
  if (!qword_2800F5DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5DC8);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAssetSetStatusDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E18, 0x277D591F8);
  sub_266ECAF2C(&qword_2800F5E20, &qword_2800F5E18, 0x277D591F8);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  return v5(v7, 0);
}

uint64_t sub_267156F9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E18, 0x277D591F8);
  sub_266ECAF2C(&qword_2800F5E20, &qword_2800F5E18, 0x277D591F8);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  return v5(v7, 0);
}

uint64_t sub_26715713C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671571A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetSetStatusDigestReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5E30, 0x277D591E8);
  sub_266ECAF2C(&qword_2800F5E28, &qword_2800F5E30, 0x277D591E8);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267157518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715757C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetSetStatusDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = sub_26738113C();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v26 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v27 = v11 + 56;
  v25 = v10;
  v12(v9, 0, 1, v10);
  v24 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267468FF0);
  v13(v34, 0);
  v28 = "assistantDimensions";
  v14 = *(v3 + 104);
  v15 = v32;
  v14(v32, *MEMORY[0x277D3E530], v33);
  v29 = v14;
  v30 = v3 + 104;
  v34[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v28 | 0x8000000000000000);
  v16(v34, 0);
  LODWORD(v28) = *MEMORY[0x277D3E540];
  (v14)(v15);
  v34[0] = 1;
  sub_26738114C();
  v17 = v24;
  v18 = v25;
  v24(v9, 0, 1, v25);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, 0x8000000267469030);
  v19(v34, 0);
  sub_266ECB294(0, &qword_2800F5E48, 0x277D5B1E0);
  sub_266ECAF2C(&qword_2800F5E50, &qword_2800F5E48, 0x277D5B1E0);
  sub_26738120C();
  v17(v9, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x7465537465737361, 0xEE00737574617453);
  v20(v34, 0);
  sub_266ECB294(0, &qword_2800F5E58, 0x277D592B8);
  sub_266ECAF2C(&qword_2800F5E60, &qword_2800F5E58, 0x277D592B8);
  sub_26738122C();
  v17(v9, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x8000000267469170);
  v21(v34, 0);
  v29(v32, v28, v33);
  v34[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002ELL, 0x80000002674691A0);
  return v22(v34, 0);
}

uint64_t sub_267157CC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267157D24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantCarPlayCounts.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267157FA0()
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

uint64_t sub_267158140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671581A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantCarPlayDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E88, 0x277D59218);
  sub_266ECAF2C(&qword_2800F5E90, &qword_2800F5E88, 0x277D59218);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5E80, 0x277D59200);
  sub_266ECAF2C(&qword_2800F5E78, &qword_2800F5E80, 0x277D59200);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_267158510(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267158574(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantCarPlayDigestReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5EA0, 0x277D59208);
  sub_266ECAF2C(&qword_2800F5E98, &qword_2800F5EA0, 0x277D59208);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2671588EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267158950(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantCarPlayDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v34 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v33 = "AvailabilityFromBootDimensions";
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v31 = v10;
  v32 = v11;
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v33 | 0x8000000000000000);
  v12(v37, 0);
  v30 = "tantCarPlayDimensions";
  v13 = *MEMORY[0x277D3E530];
  v14 = v35;
  v15 = v36 + 104;
  v33 = *(v36 + 104);
  (v33)(v5, v13, v35);
  v36 = v15;
  v37[0] = 1;
  sub_26738114C();
  v16 = v10;
  v17 = v32;
  v32(v9, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v30 | 0x8000000000000000);
  v18(v37, 0);
  v19 = v14;
  v20 = v33;
  (v33)(v5, v13, v19);
  v37[0] = 1;
  sub_26738114C();
  v21 = v31;
  v17(v9, 0, 1, v31);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x4E656C6369686576, 0xEB00000000656D61);
  v22(v37, 0);
  v20(v5, v13, v35);
  v37[0] = 1;
  sub_26738114C();
  v23 = v17;
  v17(v9, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D656C6369686576, 0xEC0000006C65646FLL);
  v24(v37, 0);
  type metadata accessor for SISchemaEnhancedVoiceTriggerMode(0);
  sub_2671591F0(&qword_2800F5EB8, type metadata accessor for SISchemaEnhancedVoiceTriggerMode);
  sub_26738120C();
  v23(v9, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x80000002674692F0);
  v25(v37, 0);
  type metadata accessor for SISchemaSiriDirectAction(0);
  sub_2671591F0(&qword_2800F5EC0, type metadata accessor for SISchemaSiriDirectAction);
  sub_26738120C();
  v23(v9, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x6341746365726964, 0xEC0000006E6F6974);
  v26(v37, 0);
  type metadata accessor for SISchemaCarPlayConnection(0);
  sub_2671591F0(&qword_2800F5EC8, type metadata accessor for SISchemaCarPlayConnection);
  sub_26738120C();
  v23(v9, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267469310);
  return v27(v37, 0);
}

uint64_t sub_26715912C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267159190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671591F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ODDSiriSchemaODDAssistantCounts.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267159620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267159684(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDeviceDigestsReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5F00, 0x277D59240);
  sub_266ECAF2C(&qword_2800F5F08, &qword_2800F5F00, 0x277D59240);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2671599FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267159A60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5F20, 0x277D592C8);
  sub_266ECAF2C(&qword_2800F5F28, &qword_2800F5F20, 0x277D592C8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5F30, 0x277D592C0);
  sub_266ECAF2C(&qword_2800F5F38, &qword_2800F5F30, 0x277D592C0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x436B736154707061, 0xED000073746E756FLL);
  return v7(v9, 0);
}

uint64_t sub_267159DDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267159E40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigestsReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5F48, 0x277D59230);
  sub_266ECAF2C(&qword_2800F5F40, &qword_2800F5F48, 0x277D59230);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26715A1B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715A21C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDigest.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v14 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v7(v15, 0);
  sub_266ECB294(0, &qword_2800F5EF8, 0x277D59220);
  sub_266ECAF2C(&qword_2800F5EF0, &qword_2800F5EF8, 0x277D59220);
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
    sub_266ECB128(&unk_28788A7D0);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_26715A6FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715A760(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = sub_26738113C();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v47 = *MEMORY[0x277D3E530];
  v50 = *(v4 + 104);
  v51 = v4 + 104;
  v46 = v7;
  v50(v7);
  v52[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x75426D6574737973, 0xEB00000000646C69);
  v16(v52, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_26715B4CC(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState);
  v48 = a1;
  sub_26738120C();
  v44 = v15;
  v14(v11, 0, 1, v12);
  v45 = v14;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, 0x80000002674694C0);
  v17(v52, 0);
  type metadata accessor for SISchemaAssistantViewMode(0);
  sub_26715B4CC(&qword_2800F5F60, type metadata accessor for SISchemaAssistantViewMode);
  sub_26738120C();
  v18 = v12;
  v43 = v12;
  v14(v11, 0, 1, v12);
  v42 = a2;
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x65746E4977656976, 0xED00006563616672);
  v19(v52, 0);
  v41 = "ntDaemonAudioRecordingFailed";
  v20 = v46;
  v21 = v47;
  v22 = v49;
  v23 = v50;
  (v50)(v46, v47, v49);
  v52[0] = 1;
  sub_26738114C();
  v45(v11, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v41 | 0x8000000000000000);
  v24(v52, 0);
  v23(v20, v21, v22);
  v52[0] = 1;
  sub_26738114C();
  v25 = v43;
  v26 = v45;
  v45(v11, 0, 1, v43);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, 0x8000000267454710);
  v27(v52, 0);
  type metadata accessor for ORCHSchemaORCHSiriAsrMode(0);
  sub_26715B4CC(&qword_2800F5F68, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
  sub_26738120C();
  v26(v11, 0, 1, v25);
  v28 = v26;
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x7461636F4C727361, 0xEB000000006E6F69);
  v29(v52, 0);
  type metadata accessor for ORCHSchemaORCHSiriNlMode(0);
  sub_26715B4CC(&qword_2800F5F70, type metadata accessor for ORCHSchemaORCHSiriNlMode);
  sub_26738120C();
  v30 = v25;
  v28(v11, 0, 1, v25);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0x697461636F4C6C6ELL, 0xEA00000000006E6FLL);
  v31(v52, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v28(v11, 0, 1, v25);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0x75706E4969726973, 0xEF656C61636F4C74);
  v32(v52, 0);
  v33 = v46;
  (v50)(v46, v47, v49);
  v52[0] = 1;
  sub_26738114C();
  v28(v11, 0, 1, v30);
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0x69616D6F44627573, 0xE90000000000006ELL);
  v34(v52, 0);
  type metadata accessor for SISchemaResponseCategory(0);
  sub_26715B4CC(&qword_2800F5F78, type metadata accessor for SISchemaResponseCategory);
  sub_26738120C();
  v28(v11, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674694E0);
  v35(v52, 0);
  (v50)(v33, *MEMORY[0x277D3E4E8], v49);
  v52[0] = 1;
  sub_26738114C();
  v28(v11, 0, 1, v30);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, 0x8000000267469500);
  v36(v52, 0);
  type metadata accessor for SISchemaIERouting(0);
  sub_26715B4CC(&qword_2800F5F80, type metadata accessor for SISchemaIERouting);
  sub_26738122C();
  v28(v11, 0, 1, v30);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0x676E6974756F72, 0xE700000000000000);
  v37(v52, 0);
  type metadata accessor for SISchemaInvocationSource(0);
  sub_26715B4CC(&qword_2800F5F88, type metadata accessor for SISchemaInvocationSource);
  sub_26738120C();
  v28(v11, 0, 1, v30);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x8000000267469520);
  return v38(v52, 0);
}

uint64_t sub_26715B408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}