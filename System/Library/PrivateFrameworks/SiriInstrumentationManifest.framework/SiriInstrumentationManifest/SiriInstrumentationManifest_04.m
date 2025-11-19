uint64_t sub_266F70928(uint64_t a1)
{
  v2 = sub_266F70A2C(&qword_2800F0C00);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F70990(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F70A2C(&qword_2800F0C00);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F70A2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EXPSiriSchemaEXPSiriDiffOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static EXPSiriSchemaEXPSiriPegasusResponseSummary.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v32 = v0;
  v33 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSDomain(0);
  sub_266F711F0(&qword_2800F0C08, type metadata accessor for PEGASUSSchemaPEGASUSDomain);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v31 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  v11(v34, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSResponseStatus(0);
  sub_266F711F0(&qword_2800F0C10, type metadata accessor for PEGASUSSchemaPEGASUSResponseStatus);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x65736E6F70736572, 0xEE00737574617453);
  v12(v34, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = v32;
  v16 = v33 + 104;
  v15 = *(v33 + 104);
  v28 = v4;
  v29 = v15;
  v15(v4, v13, v32);
  v33 = v16;
  v34[0] = 1;
  sub_26738114C();
  v30 = v9;
  v17 = v31;
  v31(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6163696E6F6E6163, 0xEC0000007364496CLL);
  v18(v34, 0);
  v19 = v28;
  v20 = v14;
  v21 = v14;
  v22 = v29;
  v29(v28, v13, v21);
  v34[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449746163, 0xE500000000000000);
  v23(v34, 0);
  v22(v19, *MEMORY[0x277D3E500], v20);
  v34[0] = 1;
  sub_26738114C();
  v24 = v30;
  v17(v8, 0, 1, v30);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656469666E6F63, 0xEF65726F63536563);
  v25(v34, 0);
  v22(v19, *MEMORY[0x277D3E4E8], v32);
  v34[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026742F8E0);
  return v26(v34, 0);
}

uint64_t sub_266F710E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F71148(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F711F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F71238()
{
  result = qword_2800F0B98;
  if (!qword_2800F0B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0B98);
  }

  return result;
}

uint64_t static EXPSiriSchemaEXPSiriServerEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0BD0, 0x277D57288);
  sub_266ECAF2C(&qword_2800F0BC8, &qword_2800F0BD0, 0x277D57288);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026742F420);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F0BC0, 0x277D57280);
  sub_266ECAF2C(&qword_2800F0BB8, &qword_2800F0BC0, 0x277D57280);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026742F930);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F0BB0, 0x277D57278);
  sub_266ECAF2C(&qword_2800F0BA8, &qword_2800F0BB0, 0x277D57278);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x800000026742F950);
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
  sub_266ECB128(&unk_287885470);
  return sub_2673811CC();
}

uint64_t sub_266F71790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F71828()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F718F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F71958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F719B8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0C18, &qword_2800F0C20, 0x277D572A0);
  a1[2] = sub_266ECAF2C(&qword_2800F0C28, &qword_2800F0C20, 0x277D572A0);
  result = sub_266ECAF2C(&qword_2800F0C30, &qword_2800F0C20, 0x277D572A0);
  a1[3] = result;
  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17 = a1;
  v18 = sub_26738113C();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
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
  v11(v19, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v18);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026742F9A0);
  v12(v19, 0);
  type metadata accessor for LINKSchemaLINKSystemActionProtocol(0);
  sub_266F72110(&qword_2800F0230, type metadata accessor for LINKSchemaLINKSystemActionProtocol);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x72506D6574737973, 0xEE006C6F636F746FLL);
  v13(v19, 0);
  type metadata accessor for LINKSchemaLINKActionPresentationStyle(0);
  sub_266F72110(&qword_2800F0C40, type metadata accessor for LINKSchemaLINKActionPresentationStyle);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742F9C0);
  v14(v19, 0);
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574656D61726170, 0xEA00000000007372);
  return v15(v19, 0);
}

uint64_t sub_266F7204C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F720B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F72110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLOWLINKSchemaFLOWLINKActionCancellationInitiator.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026742FA30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026742FA60, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026742FA90, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F723B4(uint64_t a1)
{
  v2 = sub_266F724B8(&qword_2800F0C70);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7241C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F724B8(&qword_2800F0C70);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F724B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLinkActionCancelled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator(0);
  sub_266F727EC(&qword_2800F0C68, type metadata accessor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026742FB00);
  return v5(v7, 0);
}

uint64_t sub_266F726E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F72744(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F727EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F72834()
{
  result = qword_2800F0C80;
  if (!qword_2800F0C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0C80);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConfirmationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0C88, 0x277D573D8);
  sub_266ECAF2C(&qword_2800F0C90, &qword_2800F0C88, 0x277D573D8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0C98, 0x277D573D0);
  sub_266ECAF2C(&qword_2800F0CA0, &qword_2800F0C98, 0x277D573D0);
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

uint64_t sub_266F72CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F72D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConfirmationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x636572726F437369, 0xEF6E6F6974634174);
  return v10(v12, 0);
}

uint64_t sub_266F7302C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F73090(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F730F4()
{
  result = qword_2800F0CA0;
  if (!qword_2800F0CA0)
  {
    sub_266F7314C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0CA0);
  }

  return result;
}

unint64_t sub_266F7314C()
{
  result = qword_2800F0C98;
  if (!qword_2800F0C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0C98);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConfirmationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F733E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F73444(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F734A8()
{
  result = qword_2800F0C90;
  if (!qword_2800F0C90)
  {
    sub_266F73500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0C90);
  }

  return result;
}

unint64_t sub_266F73500()
{
  result = qword_2800F0C88;
  if (!qword_2800F0C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0C88);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0CB8, 0x277D574E8);
  sub_266ECAF2C(&qword_2800F0CC0, &qword_2800F0CB8, 0x277D574E8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F0CC8, 0x277D574D8);
  sub_266ECAF2C(&qword_2800F0CD0, &qword_2800F0CC8, 0x277D574D8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F0CD8, 0x277D574E0);
  sub_266ECAF2C(&qword_2800F0CE0, &qword_2800F0CD8, 0x277D574E0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F0C80, 0x277D574D0);
  sub_266ECAF2C(&qword_2800F0C78, &qword_2800F0C80, 0x277D574D0);
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

uint64_t sub_266F73B30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F73B94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConversionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0CF8, 0x277D57400);
  sub_266ECAF2C(&qword_2800F0D00, &qword_2800F0CF8, 0x277D57400);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0D08, 0x277D573F0);
  sub_266ECAF2C(&qword_2800F0D10, &qword_2800F0D08, 0x277D573F0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0D18, 0x277D573F8);
  sub_266ECAF2C(&qword_2800F0D20, &qword_2800F0D18, 0x277D573F8);
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

uint64_t sub_266F74150(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F741B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConversionEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C60, 0x277D573C0);
  sub_266ECAF2C(&qword_2800F0C58, &qword_2800F0C60, 0x277D573C0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F74428()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C60, 0x277D573C0);
  sub_266ECAF2C(&qword_2800F0C58, &qword_2800F0C60, 0x277D573C0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F745C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F74624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConversionFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F74910(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F74974(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F749D8()
{
  result = qword_2800F0D20;
  if (!qword_2800F0D20)
  {
    sub_266F74A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0D20);
  }

  return result;
}

unint64_t sub_266F74A30()
{
  result = qword_2800F0D18;
  if (!qword_2800F0D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0D18);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConversionStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267427640);
  return v5(v7, 0);
}

uint64_t sub_266F74C74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F74CD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLinkActionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F74FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F75028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7508C()
{
  result = qword_2800F0CD0;
  if (!qword_2800F0CD0)
  {
    sub_266F750E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0CD0);
  }

  return result;
}

unint64_t sub_266F750E4()
{
  result = qword_2800F0CC8;
  if (!qword_2800F0CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0CC8);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionExecutionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0D38, 0x277D57418);
  sub_266ECAF2C(&qword_2800F0D40, &qword_2800F0D38, 0x277D57418);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0D48, 0x277D57410);
  sub_266ECAF2C(&qword_2800F0D50, &qword_2800F0D48, 0x277D57410);
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

uint64_t sub_266F7557C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F755E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742FDE0);
  return v10(v12, 0);
}

uint64_t sub_266F758D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F75938(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7599C()
{
  result = qword_2800F0D50;
  if (!qword_2800F0D50)
  {
    sub_266F759F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0D50);
  }

  return result;
}

unint64_t sub_266F759F4()
{
  result = qword_2800F0D48;
  if (!qword_2800F0D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0D48);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F75C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F75CEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F75D50()
{
  result = qword_2800F0D40;
  if (!qword_2800F0D40)
  {
    sub_266F75DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0D40);
  }

  return result;
}

unint64_t sub_266F75DA8()
{
  result = qword_2800F0D38;
  if (!qword_2800F0D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0D38);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLinkActionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError(0);
  sub_266F76240(&qword_2800F0D68, type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F75FB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError(0);
  sub_266F76240(&qword_2800F0D68, type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F76134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F76198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F76240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F76288()
{
  result = qword_2800F0CD8;
  if (!qword_2800F0CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0CD8);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameter.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_266EC637C(v11, 1701667182, 0xE400000000000000);
  v15(v20, 0);
  v12(v7, *MEMORY[0x277D3E4E8], v3);
  v20[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x79617272417369, 0xE700000000000000);
  v16(v20, 0);
  type metadata accessor for LINKSchemaLINKParameterType(0);
  sub_266F767B0(&qword_2800F0D70, type metadata accessor for LINKSchemaLINKParameterType);
  sub_26738120C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 1701869940, 0xE400000000000000);
  return v17(v20, 0);
}

uint64_t sub_266F766A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F76708(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F767B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F767F8()
{
  result = qword_2800F0C48;
  if (!qword_2800F0C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0C48);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0D78, 0x277D57438);
  sub_266ECAF2C(&qword_2800F0D80, &qword_2800F0D78, 0x277D57438);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0D88, 0x277D57430);
  sub_266ECAF2C(&qword_2800F0D90, &qword_2800F0D88, 0x277D57430);
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

uint64_t sub_266F76C90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F76CF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterConfirmationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742FF60);
  return v10(v12, 0);
}

uint64_t sub_266F76FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7704C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F770B0()
{
  result = qword_2800F0D90;
  if (!qword_2800F0D90)
  {
    sub_266F77108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0D90);
  }

  return result;
}

unint64_t sub_266F77108()
{
  result = qword_2800F0D88;
  if (!qword_2800F0D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0D88);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F7732C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F774CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F77530(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0DA8, 0x277D57450);
  sub_266ECAF2C(&qword_2800F0DB0, &qword_2800F0DA8, 0x277D57450);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0DB8, 0x277D57448);
  sub_266ECAF2C(&qword_2800F0DC0, &qword_2800F0DB8, 0x277D57448);
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

uint64_t sub_266F77A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F77A84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterDisambiguationEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F77D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F77DD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F77E38()
{
  result = qword_2800F0DC0;
  if (!qword_2800F0DC0)
  {
    sub_266F77E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0DC0);
  }

  return result;
}

unint64_t sub_266F77E90()
{
  result = qword_2800F0DB8;
  if (!qword_2800F0DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0DB8);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F780B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F78254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F782B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionParametersUpdated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xEA00000000007372);
  return v5(v7, 0);
}

uint64_t sub_266F78534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xEA00000000007372);
  return v5(v7, 0);
}

uint64_t sub_266F786D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F78738(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionPromptForValueContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0DE8, 0x277D57470);
  sub_266ECAF2C(&qword_2800F0DF0, &qword_2800F0DE8, 0x277D57470);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0DF8, 0x277D57468);
  sub_266ECAF2C(&qword_2800F0E00, &qword_2800F0DF8, 0x277D57468);
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

uint64_t sub_266F78C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F78C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionPromptForValueEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F78F78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F78FDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F79040()
{
  result = qword_2800F0E00;
  if (!qword_2800F0E00)
  {
    sub_266F79098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E00);
  }

  return result;
}

unint64_t sub_266F79098()
{
  result = qword_2800F0DF8;
  if (!qword_2800F0DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0DF8);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionPromptForValueStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F792BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_266F7945C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F794C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLinkActionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C60, 0x277D573C0);
  sub_266ECAF2C(&qword_2800F0C58, &qword_2800F0C60, 0x277D573C0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x41746E6572727563, 0xED00006E6F697463);
  return v5(v7, 0);
}

uint64_t sub_266F79744()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C60, 0x277D573C0);
  sub_266ECAF2C(&qword_2800F0C58, &qword_2800F0C60, 0x277D573C0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x41746E6572727563, 0xED00006E6F697463);
  return v5(v7, 0);
}

uint64_t sub_266F798EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F79950(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x6C646E7542707061, 0xEB00000000644965);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x6C646E7542707061, 0xEB00000000644965);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_2878854A8);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_266F79DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F79E38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0E28, 0x277D57490);
  sub_266ECAF2C(&qword_2800F0E30, &qword_2800F0E28, 0x277D57490);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0E38, 0x277D57488);
  sub_266ECAF2C(&qword_2800F0E40, &qword_2800F0E38, 0x277D57488);
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

uint64_t sub_266F7A328(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7A38C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267430300);
  return v10(v12, 0);
}

uint64_t sub_266F7A680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7A6E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7A748()
{
  result = qword_2800F0E40;
  if (!qword_2800F0E40)
  {
    sub_266F7A7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E40);
  }

  return result;
}

unint64_t sub_266F7A7A0()
{
  result = qword_2800F0E38;
  if (!qword_2800F0E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0E38);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F7AA34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7AA98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7AAFC()
{
  result = qword_2800F0E30;
  if (!qword_2800F0E30)
  {
    sub_266F7AB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E30);
  }

  return result;
}

unint64_t sub_266F7AB54()
{
  result = qword_2800F0E28;
  if (!qword_2800F0E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0E28);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x74726F6853707061, 0xED00006449747563);
  return v10(v12, 0);
}

uint64_t sub_266F7ADF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7AE5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7AEC0()
{
  result = qword_2800F0E58;
  if (!qword_2800F0E58)
  {
    sub_266F7AF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E58);
  }

  return result;
}

unint64_t sub_266F7AF18()
{
  result = qword_2800F0E60;
  if (!qword_2800F0E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0E60);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267430400);
  return v10(v12, 0);
}

uint64_t sub_266F7B1B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7B218(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7B27C()
{
  result = qword_2800F0E68;
  if (!qword_2800F0E68)
  {
    sub_266F7B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0E68);
  }

  return result;
}

unint64_t sub_266F7B2D4()
{
  result = qword_2800F0E70;
  if (!qword_2800F0E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0E70);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0E78, 0x277D57568);
  sub_266ECAF2C(&qword_2800F0E80, &qword_2800F0E78, 0x277D57568);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v36, 0);
  sub_266ECB294(0, &qword_2800F0CF0, 0x277D573E0);
  sub_266ECAF2C(&qword_2800F0CE8, &qword_2800F0CF0, 0x277D573E0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267430460);
  v10(v36, 0);
  sub_266ECB294(0, &qword_2800F0E88, 0x277D574B0);
  sub_266ECAF2C(&qword_2800F0E90, &qword_2800F0E88, 0x277D574B0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267430480);
  v11(v36, 0);
  sub_266ECB294(0, &qword_2800F0D30, 0x277D573E8);
  sub_266ECAF2C(&qword_2800F0D28, &qword_2800F0D30, 0x277D573E8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x80000002674304A0);
  v12(v36, 0);
  sub_266ECB294(0, &qword_2800F0D60, 0x277D57408);
  sub_266ECAF2C(&qword_2800F0D58, &qword_2800F0D60, 0x277D57408);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x80000002674304C0);
  v13(v36, 0);
  sub_266ECB294(0, &qword_2800F0E10, 0x277D57460);
  sub_266ECAF2C(&qword_2800F0E08, &qword_2800F0E10, 0x277D57460);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x80000002674304E0);
  v14(v36, 0);
  sub_266ECB294(0, &qword_2800F0DD0, 0x277D57440);
  sub_266ECAF2C(&qword_2800F0DC8, &qword_2800F0DD0, 0x277D57440);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000024, 0x8000000267430500);
  v15(v36, 0);
  sub_266ECB294(0, &qword_2800F0DA0, 0x277D57428);
  sub_266ECAF2C(&qword_2800F0D98, &qword_2800F0DA0, 0x277D57428);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x8000000267430530);
  v16(v36, 0);
  sub_266ECB294(0, &qword_2800F0CB0, 0x277D573C8);
  sub_266ECAF2C(&qword_2800F0CA8, &qword_2800F0CB0, 0x277D573C8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267430560);
  v17(v36, 0);
  sub_266ECB294(0, &qword_2800F0E70, 0x277D574A0);
  sub_266ECAF2C(&qword_2800F0E68, &qword_2800F0E70, 0x277D574A0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267430580);
  v18(v36, 0);
  sub_266ECB294(0, &qword_2800F0E20, 0x277D57478);
  sub_266ECAF2C(&qword_2800F0E18, &qword_2800F0E20, 0x277D57478);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x697463416B6E696CLL, 0xEF31726569546E6FLL);
  v19(v36, 0);
  sub_266ECB294(0, &qword_2800F0DE0, 0x277D57458);
  sub_266ECAF2C(&qword_2800F0DD8, &qword_2800F0DE0, 0x277D57458);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x80000002674305A0);
  v20(v36, 0);
  sub_266ECB294(0, &qword_2800F0E50, 0x277D57480);
  sub_266ECAF2C(&qword_2800F0E48, &qword_2800F0E50, 0x277D57480);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000026, 0x80000002674305C0);
  v21(v36, 0);
  sub_266ECB294(0, &qword_2800F0E60, 0x277D57498);
  sub_266ECAF2C(&qword_2800F0E58, &qword_2800F0E60, 0x277D57498);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v22 = v33;
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x80000002674305F0);
  v23(v36, 0);
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
  (*(v34 + 32))(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30, v22, v35);
  v24(v36, 0);
  sub_266ECB128(&unk_2878854D8);
  return sub_2673811CC();
}

uint64_t sub_266F7C174(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F7C20C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F7C2D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7C33C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F7C39C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0E98, &qword_2800F0EA0, 0x277D574A8);
  a1[2] = sub_266ECAF2C(&qword_2800F0EA8, &qword_2800F0EA0, 0x277D574A8);
  result = sub_266ECAF2C(&qword_2800F0EB0, &qword_2800F0EA0, 0x277D574A8);
  a1[3] = result;
  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0EC0, 0x277D574C8);
  sub_266ECAF2C(&qword_2800F0EC8, &qword_2800F0EC0, 0x277D574C8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0ED0, 0x277D574B8);
  sub_266ECAF2C(&qword_2800F0ED8, &qword_2800F0ED0, 0x277D574B8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0EE0, 0x277D574C0);
  sub_266ECAF2C(&qword_2800F0EE8, &qword_2800F0EE0, 0x277D574C0);
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

uint64_t sub_266F7C9B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7CA18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F7CD04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7CD68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7CDCC()
{
  result = qword_2800F0ED8;
  if (!qword_2800F0ED8)
  {
    sub_266F7CE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0ED8);
  }

  return result;
}

unint64_t sub_266F7CE24()
{
  result = qword_2800F0ED0;
  if (!qword_2800F0ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0ED0);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F7D0B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7D11C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7D180()
{
  result = qword_2800F0EE8;
  if (!qword_2800F0EE8)
  {
    sub_266F7D1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0EE8);
  }

  return result;
}

unint64_t sub_266F7D1D8()
{
  result = qword_2800F0EE0;
  if (!qword_2800F0EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0EE0);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x8000000267430750, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x8000000267430780, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x80000002674307C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F7D438(uint64_t a1)
{
  v2 = sub_266F7D53C(&qword_2800F0EF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7D4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F7D53C(&qword_2800F0EF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F7D53C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKEntityDisambiguationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason(0);
  sub_266F7D9CC(&qword_2800F0EF0, type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F7D73C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason(0);
  sub_266F7D9CC(&qword_2800F0EF0, type metadata accessor for FLOWLINKSchemaFLOWLINKEntityDisambiguationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F7D8C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7D924(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F7D9CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F7DA14()
{
  result = qword_2800F0EC0;
  if (!qword_2800F0EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0EC0);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKExecutionError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267430890, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v92;

  v1(v107, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x80000002674308B0, v11);
  v12 = *v9;
  *v9 = v93;

  v7(v107, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x80000002674308E0, v17);
  v18 = *v15;
  *v15 = v94;

  v13(v107, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x8000000267430910, v23);
  v24 = *v21;
  *v21 = v95;

  v19(v107, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(2000, 0xD000000000000037, 0x8000000267430940, v29);
  v30 = *v27;
  *v27 = v96;

  v25(v107, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(2001, 0xD000000000000040, 0x8000000267430980, v35);
  v36 = *v33;
  *v33 = v97;

  v31(v107, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(2002, 0xD000000000000040, 0x80000002674309D0, v41);
  v42 = *v39;
  *v39 = v98;

  v37(v107, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(2003, 0xD000000000000043, 0x8000000267430A20, v47);
  v48 = *v45;
  *v45 = v99;

  v43(v107, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(2004, 0xD000000000000046, 0x8000000267430A70, v53);
  v54 = *v51;
  *v51 = v100;

  v49(v107, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(2005, 0xD00000000000004DLL, 0x8000000267430AC0, v59);
  v60 = *v57;
  *v57 = v101;

  v55(v107, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(2006, 0xD00000000000003ALL, 0x8000000267430B10, v65);
  v66 = *v63;
  *v63 = v102;

  v61(v107, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(2007, 0xD00000000000003ELL, 0x8000000267430B50, v71);
  v72 = *v69;
  *v69 = v103;

  v67(v107, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(2008, 0xD000000000000044, 0x8000000267430B90, v77);
  v78 = *v75;
  *v75 = v104;

  v73(v107, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(2009, 0xD00000000000003DLL, 0x8000000267430BE0, v83);
  v84 = *v81;
  *v81 = v105;

  v79(v107, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(2010, 0xD000000000000040, 0x8000000267430C20, v89);
  v90 = *v87;
  *v87 = v106;

  return v85(v107, 0);
}

uint64_t sub_266F7E1C0(uint64_t a1)
{
  v2 = sub_266F7E2C4(&qword_2800F0F00);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7E228(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F7E2C4(&qword_2800F0F00);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F7E2C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWLINKSchemaFLOWLINKExecutionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWAppContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v36 = a1;
  v1 = sub_26738113C();
  v33 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v34 = (v2 + 104);
  v35 = v11;
  v11(v5, v10, v1);
  v39[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v37 = *(v12 - 8);
  v13 = (v37 + 56);
  v14 = *(v37 + 56);
  v32 = v12;
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v15(v39, 0);
  v16 = v33;
  v17 = v35;
  v35(v5, v10, v33);
  v39[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6973726556707061, 0xEA00000000006E6FLL);
  v18(v39, 0);
  v17(v5, *MEMORY[0x277D3E4E8], v16);
  v39[0] = 1;
  sub_26738114C();
  v19 = v32;
  v34 = v14;
  v35 = v13;
  v14(v9, 0, 1, v32);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x8000000267430CA0);
  v20(v39, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v38, 0xD00000000000001DLL, 0x8000000267430CA0);
  v23 = *(v37 + 48);
  v37 += 48;
  v33 = v23;
  if (!v23(v24, 1, v19))
  {
    sub_266ECB128(&unk_287885510);
    sub_26738115C();
  }

  (v22)(v38, 0);
  v21(v39, 0);
  type metadata accessor for FLOWSchemaFLOWAppResolutionType(0);
  sub_266F7EAE4(&qword_2800F0F08, type metadata accessor for FLOWSchemaFLOWAppResolutionType);
  sub_26738120C();
  v25 = v34;
  v34(v9, 0, 1, v19);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267430CC0);
  v26(v39, 0);
  type metadata accessor for FLOWSchemaFLOWProtectedAppType(0);
  sub_266F7EAE4(&qword_2800F0F10, type metadata accessor for FLOWSchemaFLOWProtectedAppType);
  sub_26738120C();
  v25(v9, 0, 1, v19);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267430CE0);
  v27(v39, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v38, 0xD000000000000010, 0x8000000267430CE0);
  if (!v33(v30, 1, v19))
  {
    sub_266ECB128(&unk_287885538);
    sub_26738115C();
  }

  (v29)(v38, 0);
  return v28(v39, 0);
}

uint64_t sub_266F7E9D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7EA3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F7EAE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F7EB2C()
{
  result = qword_2800F0F20;
  if (!qword_2800F0F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0F20);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWAppResolutionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267430D30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v86;

  v1(v100, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267430D50, v11);
  v12 = *v9;
  *v9 = v87;

  v7(v100, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267430D70, v17);
  v18 = *v15;
  *v15 = v88;

  v13(v100, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x8000000267430D90, v23);
  v24 = *v21;
  *v21 = v89;

  v19(v100, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000038, 0x8000000267430DC0, v29);
  v30 = *v27;
  *v27 = v90;

  v25(v100, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x8000000267430E00, v35);
  v36 = *v33;
  *v33 = v91;

  v31(v100, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000037, 0x8000000267430E40, v41);
  v42 = *v39;
  *v39 = v92;

  v37(v100, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x8000000267430E80, v47);
  v48 = *v45;
  *v45 = v93;

  v43(v100, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000027, 0x8000000267430EB0, v53);
  v54 = *v51;
  *v51 = v94;

  v49(v100, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002FLL, 0x8000000267430EE0, v59);
  v60 = *v57;
  *v57 = v95;

  v55(v100, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000046, 0x8000000267430F10, v65);
  v66 = *v63;
  *v63 = v96;

  v61(v100, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x8000000267430F60, v71);
  v72 = *v69;
  *v69 = v97;

  v67(v100, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000023, 0x8000000267430F90, v77);
  v78 = *v75;
  *v75 = v98;

  v73(v100, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000024, 0x8000000267430FC0, v83);
  v84 = *v81;
  *v81 = v99;

  return v79(v100, 0);
}

uint64_t sub_266F7F260(uint64_t a1)
{
  v2 = sub_266F7F364(&qword_2800F0F28);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7F2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F7F364(&qword_2800F0F28);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F7F364(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWAppResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWBriefingContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWBriefingEnabledFeatures(0);
  sub_266F7F76C(&qword_2800F0F30, type metadata accessor for FLOWSchemaFLOWBriefingEnabledFeatures);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x4664656C62616E65, 0xEF73657275746165);
  v6(v9, 0);
  type metadata accessor for FLOWSchemaFLOWBriefingTaskAttribute(0);
  sub_266F7F76C(&qword_2800F0F38, type metadata accessor for FLOWSchemaFLOWBriefingTaskAttribute);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267431020);
  return v7(v9, 0);
}

uint64_t sub_266F7F660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F7F6C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F7F76C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F7F7B4()
{
  result = qword_2800F0F48;
  if (!qword_2800F0F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0F48);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWBriefingEnabledFeatures.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267431080, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674310B0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674310E0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267431110, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x8000000267431140, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267431170, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x80000002674311A0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x80000002674311D0, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_266F7FC50(uint64_t a1)
{
  v2 = sub_266F7FD54(&qword_2800F0F50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7FCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F7FD54(&qword_2800F0F50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F7FD54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWBriefingEnabledFeatures(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWBriefingTaskAttribute.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267431240, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267431270, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x80000002674312A0, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674312D0, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267431300, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267431330, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x8000000267431360, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267431390, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x80000002674313B0, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x80000002674313E0, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000021, 0x8000000267431410, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000020, 0x8000000267431440, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000020, 0x8000000267431470, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_266F8041C(uint64_t a1)
{
  v2 = sub_266F80520(&qword_2800F0F58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F80484(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F80520(&qword_2800F0F58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F80520(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWBriefingTaskAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0E78, 0x277D57568);
  sub_266ECAF2C(&qword_2800F0E80, &qword_2800F0E78, 0x277D57568);
  v59 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v14(v62, 0);
  sub_266ECB294(0, &qword_2800F0F60, 0x277D57710);
  sub_266ECAF2C(&qword_2800F0F68, &qword_2800F0F60, 0x277D57710);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x70657453776F6C66, 0xE800000000000000);
  v15(v62, 0);
  sub_266ECB294(0, &qword_2800F0F70, 0x277D57558);
  sub_266ECAF2C(&qword_2800F0F78, &qword_2800F0F70, 0x277D57558);
  sub_26738121C();
  v56 = v13;
  v57 = v12 + 56;
  v13(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x80000002674314D0);
  v16(v62, 0);
  v60 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v61, 0xD000000000000016, 0x80000002674314D0);
  v55 = *(v12 + 48);
  v58 = v12 + 48;
  if (!v55(v19, 1, v11))
  {
    sub_266ECB128(&unk_287885560);
    sub_26738115C();
  }

  (v18)(v61, 0);
  v17(v62, 0);
  sub_266ECB294(0, &qword_2800F0F80, 0x277D576D0);
  sub_266ECAF2C(&qword_2800F0F88, &qword_2800F0F80, 0x277D576D0);
  sub_26738121C();
  v20 = v56;
  v56(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x80000002674314F0);
  v21(v62, 0);
  sub_266ECB294(0, &qword_2800F0F90, 0x277D57678);
  sub_266ECAF2C(&qword_2800F0F98, &qword_2800F0F90, 0x277D57678);
  sub_26738121C();
  v20(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267431510);
  v22(v62, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v61, 0xD000000000000013, 0x8000000267431510);
  v25 = v55;
  if (!v55(v26, 1, v11))
  {
    sub_266ECB128(&unk_287885588);
    sub_26738115C();
  }

  (v24)(v61, 0);
  v23(v62, 0);
  sub_266ECB294(0, &qword_2800F0FA0, 0x277D57640);
  sub_266ECAF2C(&qword_2800F0FA8, &qword_2800F0FA0, 0x277D57640);
  sub_26738121C();
  v56(v10, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x8000000267431530);
  v27(v62, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v61, 0xD00000000000001FLL, 0x8000000267431530);
  if (!v25(v30, 1, v11))
  {
    sub_266ECB128(&unk_2878855B0);
    sub_26738115C();
  }

  (v29)(v61, 0);
  v28(v62, 0);
  sub_266ECB294(0, &qword_2800F0FB0, 0x277D57658);
  sub_266ECAF2C(&qword_2800F0FB8, &qword_2800F0FB0, 0x277D57658);
  sub_26738121C();
  v56(v10, 0, 1, v11);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, 0x8000000267431550);
  v31(v62, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v61, 0xD000000000000023, 0x8000000267431550);
  if (!v25(v34, 1, v11))
  {
    sub_266ECB128(&unk_2878855D8);
    sub_26738115C();
  }

  (v33)(v61, 0);
  v32(v62, 0);
  sub_266ECB294(0, &qword_2800F0FC0, 0x277D57528);
  sub_266ECAF2C(&qword_2800F0FC8, &qword_2800F0FC0, 0x277D57528);
  sub_26738121C();
  v35 = v56;
  v56(v10, 0, 1, v11);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267431580);
  v36(v62, 0);
  sub_266ECB294(0, &qword_2800F0FD0, 0x277D575F0);
  sub_266ECAF2C(&qword_2800F0FD8, &qword_2800F0FD0, 0x277D575F0);
  sub_26738121C();
  v35(v10, 0, 1, v11);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x80000002674315A0);
  v37(v62, 0);
  sub_266ECB294(0, &qword_2800F0FE0, 0x277D57510);
  sub_266ECAF2C(&qword_2800F0FE8, &qword_2800F0FE0, 0x277D57510);
  sub_26738121C();
  v35(v10, 0, 1, v11);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674315D0);
  v38(v62, 0);
  v39 = sub_2673811AC();
  v40 = sub_266ECB6CC(v61, 0xD000000000000010, 0x80000002674315D0);
  if (!v55(v41, 1, v11))
  {
    sub_266ECB128(&unk_287885600);
    sub_26738115C();
  }

  (v40)(v61, 0);
  v39(v62, 0);
  v42 = v52;
  sub_26738117C();
  v43 = sub_2673811BC();
  v45 = v44;
  v46 = *v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v45 = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_266ECAD54(0, v46[2] + 1, 1, v46);
    *v45 = v46;
  }

  v49 = v46[2];
  v48 = v46[3];
  if (v49 >= v48 >> 1)
  {
    v46 = sub_266ECAD54(v48 > 1, v49 + 1, 1, v46);
    *v45 = v46;
  }

  v46[2] = v49 + 1;
  (*(v53 + 32))(v46 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v49, v42, v54);
  v43(v62, 0);
  sub_266ECB128(&unk_287885628);
  return sub_2673811CC();
}

uint64_t sub_266F81364(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F813FC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F814C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8152C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8158C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0FF0, &qword_2800F0FF8, 0x277D57500);
  a1[2] = sub_266ECAF2C(&qword_2800F1000, &qword_2800F0FF8, 0x277D57500);
  result = sub_266ECAF2C(&qword_2800F1008, &qword_2800F0FF8, 0x277D57500);
  a1[3] = result;
  return result;
}

uint64_t static FLOWSchemaFLOWContact.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  v11(v19, 0);
  v12 = *MEMORY[0x277D3E4E8];
  v13 = *(v18 + 104);
  v18 += 104;
  v13(v4, v12, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974616C65527369, 0xEE00706968736E6FLL);
  v14(v19, 0);
  v13(v4, v12, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267431620);
  return v15(v19, 0);
}

uint64_t sub_266F81A88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F81AEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWContactTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x4E746361746E6F63, 0xEB00000000656D61);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x4E746361746E6F63, 0xEB00000000656D61);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287885658);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_266F81F70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F81FD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWCrossIntentRankerResponse.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "ssIntentRankerResponse";
  v11 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x80000002674316D0);
  v16(v21, 0);
  sub_266ECB128(&unk_287885680);
  return sub_2673811CC();
}

uint64_t sub_266F823C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F82424(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F82488()
{
  result = qword_2800F1028;
  if (!qword_2800F1028)
  {
    sub_266F824E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1028);
  }

  return result;
}

unint64_t sub_266F824E0()
{
  result = qword_2800F1030;
  if (!qword_2800F1030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1030);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v0);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1038, 0x277D57728);
  sub_266ECAF2C(&qword_2800F1040, &qword_2800F1038, 0x277D57728);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267431720);
  v9(v35, 0);
  sub_266ECB294(0, &qword_2800F1048, 0x277D57578);
  sub_266ECAF2C(&qword_2800F1050, &qword_2800F1048, 0x277D57578);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267431740);
  v10(v35, 0);
  sub_266ECB294(0, &qword_2800F1058, 0x277D57680);
  sub_266ECAF2C(&qword_2800F1060, &qword_2800F1058, 0x277D57680);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267431760);
  v11(v35, 0);
  sub_266ECB294(0, &qword_2800F1068, 0x277D576E0);
  sub_266ECAF2C(&qword_2800F1070, &qword_2800F1068, 0x277D576E0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x65746E6F43736D73, 0xEA00000000007478);
  v12(v35, 0);
  sub_266ECB294(0, &qword_2800F1078, 0x277D57628);
  sub_266ECAF2C(&qword_2800F1080, &qword_2800F1078, 0x277D57628);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267431780);
  v13(v35, 0);
  sub_266ECB294(0, &qword_2800F1088, 0x277D575B0);
  sub_266ECAF2C(&qword_2800F1090, &qword_2800F1088, 0x277D575B0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x797469746E656469, 0xEF747865746E6F43);
  v14(v35, 0);
  sub_266ECB294(0, &qword_2800F0F48, 0x277D574F8);
  sub_266ECAF2C(&qword_2800F0F40, &qword_2800F0F48, 0x277D574F8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x676E696665697262, 0xEF747865746E6F43);
  v15(v35, 0);
  sub_266ECB294(0, &qword_2800F1098, 0x277D57670);
  sub_266ECAF2C(&qword_2800F10A0, &qword_2800F1098, 0x277D57670);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x4373757361676570, 0xEE00747865746E6FLL);
  v16(v35, 0);
  sub_266ECB294(0, &qword_2800F10A8, 0x277D575B8);
  sub_266ECAF2C(&qword_2800F10B0, &qword_2800F10A8, 0x277D575B8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x80000002674317A0);
  v17(v35, 0);
  sub_266ECB294(0, &qword_2800F10B8, 0x277D57590);
  sub_266ECAF2C(&qword_2800F10C0, &qword_2800F10B8, 0x277D57590);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x80000002674317C0);
  v18(v35, 0);
  sub_266ECB294(0, &qword_2800F10C8, 0x277D57668);
  sub_266ECAF2C(&qword_2800F10D0, &qword_2800F10C8, 0x277D57668);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674317E0);
  v19(v35, 0);
  sub_266ECB294(0, &qword_2800F10D8, 0x277D57690);
  sub_266ECAF2C(&qword_2800F10E0, &qword_2800F10D8, 0x277D57690);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F43736F746F6870, 0xED0000747865746ELL);
  v20(v35, 0);
  sub_266ECB294(0, &qword_2800F10E8, 0x277D576B8);
  sub_266ECAF2C(&qword_2800F10F0, &qword_2800F10E8, 0x277D576B8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v21 = v32;
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F43697261666173, 0xED0000747865746ELL);
  v22(v35, 0);
  sub_26738117C();
  v23 = sub_2673811BC();
  v25 = v24;
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_266ECAD54(0, v26[2] + 1, 1, v26);
    *v25 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_266ECAD54(v28 > 1, v29 + 1, 1, v26);
    *v25 = v26;
  }

  v26[2] = v29 + 1;
  (*(v33 + 32))(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, v21, v34);
  return v23(v35, 0);
}

uint64_t sub_266F832B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F83318(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWDomainExecutionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1108, 0x277D57548);
  sub_266ECAF2C(&qword_2800F1110, &qword_2800F1108, 0x277D57548);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F1118, 0x277D57530);
  sub_266ECAF2C(&qword_2800F1120, &qword_2800F1118, 0x277D57530);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F1128, 0x277D57538);
  sub_266ECAF2C(&qword_2800F1130, &qword_2800F1128, 0x277D57538);
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

uint64_t sub_266F83998(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F839FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWDomainExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F83CE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F83D4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F83DB0()
{
  result = qword_2800F1120;
  if (!qword_2800F1120)
  {
    sub_266F83E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1120);
  }

  return result;
}

unint64_t sub_266F83E08()
{
  result = qword_2800F1118;
  if (!qword_2800F1118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1118);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainExecutionFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F8409C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F84100(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F84164()
{
  result = qword_2800F1130;
  if (!qword_2800F1130)
  {
    sub_266F841BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1130);
  }

  return result;
}

unint64_t sub_266F841BC()
{
  result = qword_2800F1128;
  if (!qword_2800F1128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1128);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainExecutionMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000020, 0x8000000267431900);
  v11(v17, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v16, 0xD000000000000020, 0x8000000267431900);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_2878856B0);
    sub_26738115C();
  }

  (v13)(v16, 0);
  v12(v17, 0);
  sub_266ECB128(&unk_2878856E0);
  return sub_2673811CC();
}

uint64_t sub_266F84524(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F84588(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F845EC()
{
  result = qword_2800F1138;
  if (!qword_2800F1138)
  {
    sub_266F84644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1138);
  }

  return result;
}

unint64_t sub_266F84644()
{
  result = qword_2800F1140;
  if (!qword_2800F1140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1140);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWDomainExecutionType(0);
  sub_266F849EC();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267431970);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F1140, 0x277D57540);
  sub_266ECAF2C(&qword_2800F1138, &qword_2800F1140, 0x277D57540);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267431990);
  return v7(v9, 0);
}

uint64_t sub_266F84928(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8498C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F849EC()
{
  result = qword_2800F1148;
  if (!qword_2800F1148)
  {
    type metadata accessor for FLOWSchemaFLOWDomainExecutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1148);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWDomainExecutionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v362 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674319F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v362;

  v1(v422, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v363 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(100, 0xD000000000000036, 0x8000000267431A10, v11);
  v12 = *v9;
  *v9 = v363;

  v7(v422, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v364 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000039, 0x8000000267431A50, v17);
  v18 = *v15;
  *v15 = v364;

  v13(v422, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v365 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(102, 0xD000000000000047, 0x8000000267431A90, v23);
  v24 = *v21;
  *v21 = v365;

  v19(v422, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v366 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(103, 0xD00000000000003ELL, 0x8000000267431AE0, v29);
  v30 = *v27;
  *v27 = v366;

  v25(v422, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v367 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(104, 0xD000000000000037, 0x8000000267431B20, v35);
  v36 = *v33;
  *v33 = v367;

  v31(v422, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v368 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(200, 0xD000000000000038, 0x8000000267431B60, v41);
  v42 = *v39;
  *v39 = v368;

  v37(v422, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v369 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(201, 0xD00000000000003BLL, 0x8000000267431BA0, v47);
  v48 = *v45;
  *v45 = v369;

  v43(v422, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v370 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(202, 0xD00000000000003ALL, 0x8000000267431BE0, v53);
  v54 = *v51;
  *v51 = v370;

  v49(v422, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v371 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(203, 0xD000000000000044, 0x8000000267431C20, v59);
  v60 = *v57;
  *v57 = v371;

  v55(v422, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v372 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(204, 0xD000000000000040, 0x8000000267431C70, v65);
  v66 = *v63;
  *v63 = v372;

  v61(v422, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v373 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(205, 0xD000000000000046, 0x8000000267431CC0, v71);
  v72 = *v69;
  *v69 = v373;

  v67(v422, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v374 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(206, 0xD000000000000048, 0x8000000267431D10, v77);
  v78 = *v75;
  *v75 = v374;

  v73(v422, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v375 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(207, 0xD000000000000038, 0x8000000267431D60, v83);
  v84 = *v81;
  *v81 = v375;

  v79(v422, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v376 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(208, 0xD000000000000037, 0x8000000267431DA0, v89);
  v90 = *v87;
  *v87 = v376;

  v85(v422, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v377 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(300, 0xD000000000000029, 0x8000000267431DE0, v95);
  v96 = *v93;
  *v93 = v377;

  v91(v422, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v378 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(301, 0xD00000000000002ELL, 0x8000000267431E10, v101);
  v102 = *v99;
  *v99 = v378;

  v97(v422, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v379 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(302, 0xD000000000000029, 0x8000000267431E40, v107);
  v108 = *v105;
  *v105 = v379;

  v103(v422, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v380 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(400, 0xD00000000000003ALL, 0x8000000267431E70, v113);
  v114 = *v111;
  *v111 = v380;

  v109(v422, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v381 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(401, 0xD000000000000036, 0x8000000267431EB0, v119);
  v120 = *v117;
  *v117 = v381;

  v115(v422, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v382 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(1000, 0xD000000000000039, 0x8000000267431EF0, v125);
  v126 = *v123;
  *v123 = v382;

  v121(v422, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v383 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(1001, 0xD000000000000046, 0x8000000267431F30, v131);
  v132 = *v129;
  *v129 = v383;

  v127(v422, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v384 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(1002, 0xD00000000000004CLL, 0x8000000267431F80, v137);
  v138 = *v135;
  *v135 = v384;

  v133(v422, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v385 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(1003, 0xD00000000000004DLL, 0x8000000267431FD0, v143);
  v144 = *v141;
  *v141 = v385;

  v139(v422, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v386 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(1004, 0xD00000000000003ELL, 0x8000000267432020, v149);
  v150 = *v147;
  *v147 = v386;

  v145(v422, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v387 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(1005, 0xD00000000000003ALL, 0x8000000267432060, v155);
  v156 = *v153;
  *v153 = v387;

  v151(v422, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v388 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(1006, 0xD000000000000034, 0x80000002674320A0, v161);
  v162 = *v159;
  *v159 = v388;

  v157(v422, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v389 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(1007, 0xD000000000000030, 0x80000002674320E0, v167);
  v168 = *v165;
  *v165 = v389;

  v163(v422, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v390 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(1008, 0xD000000000000038, 0x8000000267432120, v173);
  v174 = *v171;
  *v171 = v390;

  v169(v422, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v391 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(1009, 0xD000000000000047, 0x8000000267432160, v179);
  v180 = *v177;
  *v177 = v391;

  v175(v422, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v392 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(1010, 0xD000000000000041, 0x80000002674321B0, v185);
  v186 = *v183;
  *v183 = v392;

  v181(v422, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v393 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(1011, 0xD000000000000046, 0x8000000267432200, v191);
  v192 = *v189;
  *v189 = v393;

  v187(v422, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v394 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(1012, 0xD000000000000046, 0x8000000267432250, v197);
  v198 = *v195;
  *v195 = v394;

  v193(v422, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v395 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(1013, 0xD000000000000045, 0x80000002674322A0, v203);
  v204 = *v201;
  *v201 = v395;

  v199(v422, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v396 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(1014, 0xD000000000000049, 0x80000002674322F0, v209);
  v210 = *v207;
  *v207 = v396;

  v205(v422, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v397 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(1015, 0xD000000000000048, 0x8000000267432340, v215);
  v216 = *v213;
  *v213 = v397;

  v211(v422, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v398 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(1016, 0xD00000000000004ALL, 0x8000000267432390, v221);
  v222 = *v219;
  *v219 = v398;

  v217(v422, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v399 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(1017, 0xD00000000000004ALL, 0x80000002674323E0, v227);
  v228 = *v225;
  *v225 = v399;

  v223(v422, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v400 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(1018, 0xD00000000000004CLL, 0x8000000267432430, v233);
  v234 = *v231;
  *v231 = v400;

  v229(v422, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v401 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(1019, 0xD000000000000045, 0x8000000267432480, v239);
  v240 = *v237;
  *v237 = v401;

  v235(v422, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v402 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(1020, 0xD000000000000048, 0x80000002674324D0, v245);
  v246 = *v243;
  *v243 = v402;

  v241(v422, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v403 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(1021, 0xD000000000000045, 0x8000000267432520, v251);
  v252 = *v249;
  *v249 = v403;

  v247(v422, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v404 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(1022, 0xD000000000000054, 0x8000000267432570, v257);
  v258 = *v255;
  *v255 = v404;

  v253(v422, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v405 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(1023, 0xD000000000000055, 0x80000002674325D0, v263);
  v264 = *v261;
  *v261 = v405;

  v259(v422, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v406 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(1024, 0xD000000000000057, 0x8000000267432630, v269);
  v270 = *v267;
  *v267 = v406;

  v265(v422, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v407 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(1025, 0xD000000000000047, 0x8000000267432690, v275);
  v276 = *v273;
  *v273 = v407;

  v271(v422, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v408 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(1026, 0xD00000000000002ALL, 0x80000002674326E0, v281);
  v282 = *v279;
  *v279 = v408;

  v277(v422, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v409 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(1027, 0xD000000000000035, 0x8000000267432710, v287);
  v288 = *v285;
  *v285 = v409;

  v283(v422, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v410 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(1028, 0xD000000000000035, 0x8000000267432750, v293);
  v294 = *v291;
  *v291 = v410;

  v289(v422, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v411 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(1029, 0xD000000000000045, 0x8000000267432790, v299);
  v300 = *v297;
  *v297 = v411;

  v295(v422, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v412 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(1030, 0xD000000000000048, 0x80000002674327E0, v305);
  v306 = *v303;
  *v303 = v412;

  v301(v422, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v413 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(1031, 0xD00000000000004BLL, 0x8000000267432830, v311);
  v312 = *v309;
  *v309 = v413;

  v307(v422, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v414 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(1032, 0xD000000000000036, 0x8000000267432880, v317);
  v318 = *v315;
  *v315 = v414;

  v313(v422, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v415 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(1033, 0xD000000000000033, 0x80000002674328C0, v323);
  v324 = *v321;
  *v321 = v415;

  v319(v422, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v416 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(1034, 0xD000000000000032, 0x8000000267432900, v329);
  v330 = *v327;
  *v327 = v416;

  v325(v422, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v417 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(1035, 0xD000000000000039, 0x8000000267432940, v335);
  v336 = *v333;
  *v333 = v417;

  v331(v422, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v418 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(1036, 0xD000000000000038, 0x8000000267432980, v341);
  v342 = *v339;
  *v339 = v418;

  v337(v422, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v419 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(1037, 0xD000000000000034, 0x80000002674329C0, v347);
  v348 = *v345;
  *v345 = v419;

  v343(v422, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v420 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(1038, 0xD000000000000033, 0x8000000267432A00, v353);
  v354 = *v351;
  *v351 = v420;

  v349(v422, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v421 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(1039, 0xD000000000000021, 0x8000000267432A40, v359);
  v360 = *v357;
  *v357 = v421;

  return v355(v422, 0);
}

uint64_t sub_266F865BC(uint64_t a1)
{
  v2 = sub_266F866C0(&qword_2800F1150);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F86624(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F866C0(&qword_2800F1150);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F866C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWDomainExecutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWEmergencyCallType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267432AA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267432AC0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267432AE0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267432B00, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F86990(uint64_t a1)
{
  v2 = sub_266F86A94(&qword_2800F1160);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F869F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F86A94(&qword_2800F1160);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F86A94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWEmergencyCallType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWEntityContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267432B50);
  return v11(v15, 0);
}

uint64_t sub_266F86E08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F86E6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWEntityContextTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v12 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12[1] = a1;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v8(v13, 0);
  v12[0] = "iri.flow.FLOWEntityContextTier1";
  sub_266ECB294(0, &qword_2800F1178, 0x277D57560);
  sub_266ECAF2C(&qword_2800F1180, &qword_2800F1178, 0x277D57560);
  sub_26738122C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, v12[0] | 0x8000000000000000);
  v9(v13, 0);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6553797469746E65, 0xEE0064657463656CLL);
  return v10(v13, 0);
}

uint64_t sub_266F87280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F872E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWEntityTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6449797469746E65, 0xE800000000000000);
  v11(v17, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v16, 0x6449797469746E65, 0xE800000000000000);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_287885710);
    sub_26738115C();
  }

  (v13)(v16, 0);
  return v12(v17, 0);
}

uint64_t sub_266F87688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F876EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F87750()
{
  result = qword_2800F1180;
  if (!qword_2800F1180)
  {
    sub_266F877A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1180);
  }

  return result;
}

unint64_t sub_266F877A8()
{
  result = qword_2800F1178;
  if (!qword_2800F1178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1178);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = sub_26738113C();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v36 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v36[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v10, 0, 1, v12);
  v41 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496B736174, 0xE600000000000000);
  v15(v44, 0);
  (*(v39 + 104))(v6, *MEMORY[0x277D3E530], v40);
  v44[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674206D0);
  v16(v44, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v14(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F6973726576, 0xE700000000000000);
  v17(v44, 0);
  v39 = v11;
  sub_26738120C();
  v38 = v14;
  v14(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449776F6C66, 0xE600000000000000);
  v18(v44, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v43, 0x6449776F6C66, 0xE600000000000000);
  v21 = *(v13 + 48);
  v40 = v13 + 48;
  v37 = v21;
  if (!v21(v22, 1, v12))
  {
    sub_266ECB128(&unk_287885738);
    sub_26738115C();
  }

  (v20)(v43, 0);
  v19(v44, 0);
  sub_26738120C();
  v38(v10, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x4974736575716572, 0xE900000000000064);
  v23(v44, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v43, 0x4974736575716572, 0xE900000000000064);
  if (!v37(v26, 1, v12))
  {
    sub_266ECB128(&unk_287885768);
    sub_26738115C();
  }

  (v25)(v43, 0);
  v24(v44, 0);
  sub_26738120C();
  v27 = v12;
  v28 = v12;
  v29 = v38;
  v38(v10, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449707274, 0xE500000000000000);
  v30(v44, 0);
  sub_26738120C();
  v29(v10, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0x6575716552627573, 0xEC00000064497473);
  v31(v44, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v43, 0x6575716552627573, 0xEC00000064497473);
  if (!v37(v34, 1, v28))
  {
    sub_266ECB128(&unk_287885798);
    sub_26738115C();
  }

  (v33)(v43, 0);
  return v32(v44, 0);
}

uint64_t sub_266F8801C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F88080(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWholeHouseAudioDestinationContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "eHouseAudioDestinationContext";
  v11 = *MEMORY[0x277D3E538];
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
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267432C80);
  return v16(v21, 0);
}

uint64_t sub_266F88458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F884BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F88520()
{
  result = qword_2800F1188;
  if (!qword_2800F1188)
  {
    sub_266F88578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1188);
  }

  return result;
}

unint64_t sub_266F88578()
{
  result = qword_2800F1190;
  if (!qword_2800F1190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1190);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationCommand.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v17 = *(v0 - 8);
  v18 = v0;
  v1 = *(v17 + 64);
  MEMORY[0x28223BE20](v0);
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
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x49646E616D6D6F63, 0xE900000000000064);
  v10(v19, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandType(0);
  sub_266F88CE0(&qword_2800F1198, type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x54646E616D6D6F63, 0xEB00000000657079);
  v11(v19, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome(0);
  sub_266F88CE0(&qword_2800F11A0, type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x4F646E616D6D6F63, 0xEE00656D6F637475);
  v12(v19, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandErrorReason(0);
  sub_266F88CE0(&qword_2800F11A8, type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandErrorReason);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267432CE0);
  v13(v19, 0);
  (*(v17 + 104))(v3, *MEMORY[0x277D3E538], v18);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x44646E616D6D6F63, 0xEF6E6F6974617275);
  v14(v19, 0);
  sub_266ECB294(0, &qword_2800F11B0, 0x277D57580);
  sub_266ECAF2C(&qword_2800F11B8, &qword_2800F11B0, 0x277D57580);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x8000000267432D00);
  return v15(v19, 0);
}

uint64_t sub_266F88C1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F88C80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F88CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLOWSchemaFLOWHomeAutomationCommandErrorReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x8000000267432D60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x8000000267432D90, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003FLL, 0x8000000267432DD0, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x8000000267432E10, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003DLL, 0x8000000267432E50, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000035, 0x8000000267432E90, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003ALL, 0x8000000267432ED0, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000036, 0x8000000267432F10, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003ALL, 0x8000000267432F50, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000039, 0x8000000267432F90, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003BLL, 0x8000000267432FD0, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_266F89308(uint64_t a1)
{
  v2 = sub_266F8940C(&qword_2800F11D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F89370(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8940C(&qword_2800F11D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8940C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandErrorReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationCommandType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267433050, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267433080, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674330B0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x80000002674330E0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267433110, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F89748(uint64_t a1)
{
  v2 = sub_266F8984C(&qword_2800F11D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F897B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8984C(&qword_2800F11D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8984C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationCommandType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationConditionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x8000000267433180, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674331B0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x80000002674331E0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x8000000267433220, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000037, 0x8000000267433260, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000036, 0x80000002674332A0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_266F89BF4(uint64_t a1)
{
  v2 = sub_266F89CF8(&qword_2800F11E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F89C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F89CF8(&qword_2800F11E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F89CF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationConditionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F11F0, 0x277D575A8);
  sub_266ECAF2C(&qword_2800F11F8, &qword_2800F11F0, 0x277D575A8);
  v16[1] = a1;
  sub_26738122C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x8000000267433320);
  v9(v18, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v17, 0xD000000000000016, 0x8000000267433320);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_2878857C8);
    sub_26738115C();
  }

  (v11)(v17, 0);
  v10(v18, 0);
  sub_266ECB294(0, &qword_2800F1200, 0x277D575A0);
  sub_266ECAF2C(&qword_2800F1208, &qword_2800F1200, 0x277D575A0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x746E6F43656D6F68, 0xEB00000000747865);
  v13(v18, 0);
  sub_266ECB294(0, &qword_2800F11C8, 0x277D57570);
  sub_266ECAF2C(&qword_2800F11C0, &qword_2800F11C8, 0x277D57570);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x8000000267433340);
  return v14(v18, 0);
}

uint64_t sub_266F8A194(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8A1F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWHomeAutomationOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674333A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674333D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267433400, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267433430, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F8A524(uint64_t a1)
{
  v2 = sub_266F8A628(&qword_2800F1210);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8A58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8A628(&qword_2800F1210);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8A628(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
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
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674334A0);
  v13(v33, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationRequestType(0);
  sub_266F8ADBC(&qword_2800F1218, type metadata accessor for FLOWSchemaFLOWHomeAutomationRequestType);
  v29 = a1;
  sub_26738120C();
  v26 = v11;
  v27 = v12;
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x80000002674334C0);
  v14(v33, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome(0);
  sub_266F8ADBC(&qword_2800F11A0, type metadata accessor for FLOWSchemaFLOWHomeAutomationOutcome);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x80000002674334E0);
  v15(v33, 0);
  v25 = "homeAutomationRequestOutcome";
  v16 = *MEMORY[0x277D3E530];
  v17 = v30;
  v31 = *(v31 + 104);
  v18 = v32;
  (v31)(v30, v16, v32);
  v33[0] = 1;
  sub_26738114C();
  v28 = v9;
  v19 = v26;
  v26(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v25 | 0x8000000000000000);
  v20(v33, 0);
  (v31)(v17, *MEMORY[0x277D3E538], v18);
  v33[0] = 1;
  sub_26738114C();
  v21 = v19;
  v19(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267433530);
  v22(v33, 0);
  sub_266ECB294(0, &qword_2800F1220, 0x277D57588);
  sub_266ECAF2C(&qword_2800F1228, &qword_2800F1220, 0x277D57588);
  sub_26738120C();
  v21(v8, 0, 1, v28);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267433550);
  return v23(v33, 0);
}

uint64_t sub_266F8ACF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8AD5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8ADBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLOWSchemaFLOWHomeAutomationRequestMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v41 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12 = a2;
  sub_26738119C();
  v43 = "eAutomationRequestMetadata";
  v45 = *MEMORY[0x277D3E4E8];
  v13 = *(v4 + 104);
  v48 = v4 + 104;
  v49 = v13;
  v50 = v3;
  (v13)(v7);
  v51[0] = 1;
  sub_26738114C();
  v46 = sub_26738116C();
  v14 = *(v46 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v11, 0, 1, v46);
  v41[1] = v12;
  v41[2] = v16;
  v47 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000023, v43 | 0x8000000000000000);
  v17(v51, 0);
  v43 = "RequestAsynchronous";
  v18 = *MEMORY[0x277D3E538];
  v19 = v49;
  v49(v7, v18, v3);
  v51[0] = 1;
  sub_26738114C();
  v20 = v46;
  v15(v11, 0, 1, v46);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v43 | 0x8000000000000000);
  v21(v51, 0);
  v43 = "targetedEntityCount";
  v19(v7, v18, v50);
  v51[0] = 1;
  sub_26738114C();
  v22 = v20;
  v23 = v47;
  v47(v11, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v43 | 0x8000000000000000);
  v24(v51, 0);
  LODWORD(v43) = *MEMORY[0x277D3E530];
  (v19)(v7);
  v51[0] = 1;
  sub_26738114C();
  v25 = v46;
  v23(v11, 0, 1, v46);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x8000000267433620);
  v26(v51, 0);
  type metadata accessor for FLOWSchemaFLOWHomeContainerType(0);
  sub_266F8B848(&qword_2800F1230, type metadata accessor for FLOWSchemaFLOWHomeContainerType);
  sub_26738120C();
  v27 = v47;
  v47(v11, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x8000000267433640);
  v28(v51, 0);
  v42 = v7;
  v49(v7, v43, v50);
  v51[0] = 1;
  sub_26738114C();
  v29 = v25;
  v27(v11, 0, 1, v25);
  v30 = v27;
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0x7441746567726174, 0xEF65747562697274);
  v31(v51, 0);
  type metadata accessor for FLOWSchemaFLOWHomeAutomationConditionType(0);
  sub_266F8B848(&qword_2800F11E0, type metadata accessor for FLOWSchemaFLOWHomeAutomationConditionType);
  sub_26738120C();
  v30(v11, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F697469646E6F63, 0xED0000657079546ELL);
  v32(v51, 0);
  v33 = v42;
  v34 = v45;
  v35 = v49;
  v49(v42, v45, v50);
  v51[0] = 1;
  sub_26738114C();
  v36 = v29;
  v37 = v47;
  v47(v11, 0, 1, v36);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0x7272756365527369, 0xEB00000000676E69);
  v38(v51, 0);
  v35(v33, v34, v50);
  v51[0] = 1;
  sub_26738114C();
  v37(v11, 0, 1, v46);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x8000000267433660);
  return v39(v51, 0);
}

uint64_t sub_266F8B73C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8B7A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8B848(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F8B890()
{
  result = qword_2800F1220;
  if (!qword_2800F1220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1220);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeAutomationRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x80000002674336C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674336F0, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267433720, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x8000000267433750, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x8000000267433780, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x80000002674337B0, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x80000002674337E0, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x8000000267433810, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x8000000267433840, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267433870, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x80000002674338A0, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_266F8BE7C(uint64_t a1)
{
  v2 = sub_266F8BF80(&qword_2800F1238);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8BEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8BF80(&qword_2800F1238);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8BF80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeAutomationRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeCommunicationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1200, 0x277D575A0);
  sub_266ECAF2C(&qword_2800F1208, &qword_2800F1200, 0x277D575A0);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E6F43656D6F68, 0xEB00000000747865);
  v9(v25, 0);
  type metadata accessor for FLOWSchemaFLOWHomeCommunicationTaskType(0);
  sub_266F8C560();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x657079546B736174, 0xE800000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F1248, 0x277D57598);
  sub_266ECAF2C(&qword_2800F1250, &qword_2800F1248, 0x277D57598);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  v12 = v22;
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267433910);
  v11(v25, 0);
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
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v12, v24);
  return v13(v25, 0);
}

uint64_t sub_266F8C49C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8C500(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F8C560()
{
  result = qword_2800F1240;
  if (!qword_2800F1240)
  {
    type metadata accessor for FLOWSchemaFLOWHomeCommunicationTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1240);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeCommunicationEntityType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x8000000267433970, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674339A0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x80000002674339D0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267433A00, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267433A30, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267433A60, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x8000000267433A90, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_266F8C9DC(uint64_t a1)
{
  v2 = sub_266F8CAE0(&qword_2800F1260);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8CA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8CAE0(&qword_2800F1260);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8CAE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeCommunicationSendOrReply.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType(0);
  sub_266F8CF80(&qword_2800F1258, type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954746567726174, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_266F8CCE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType(0);
  sub_266F8CF80(&qword_2800F1258, type metadata accessor for FLOWSchemaFLOWHomeCommunicationEntityType);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954746567726174, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_266F8CE74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8CED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8CF80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F8CFC8()
{
  result = qword_2800F1248;
  if (!qword_2800F1248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1248);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeCommunicationTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267433B40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267433B70, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267433BA0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267433BD0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267433C00, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F8D310(uint64_t a1)
{
  v2 = sub_266F8D414(&qword_2800F1268);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8D378(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8D414(&qword_2800F1268);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8D414(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeCommunicationTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeContainerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267433C60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267433C80, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267433CA0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x8000000267433CC0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267433CE0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F8D754(uint64_t a1)
{
  v2 = sub_266F8D858(&qword_2800F1270);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8D7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8D858(&qword_2800F1270);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8D858(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeContainerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v24 = *(v1 + 104);
  v25 = v1 + 104;
  v10 = v9;
  v23 = v9;
  v22 = v0;
  v24(v4);
  v27[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v26 = v12 + 56;
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F43656D6F68, 0xE900000000000074);
  v14(v27, 0);
  v15 = v24;
  (v24)(v4, v10, v0);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x43646F50656D6F68, 0xEC000000746E756FLL);
  v16(v27, 0);
  v17 = v22;
  (v15)(v4, v23, v22);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x437654656C707061, 0xEC000000746E756FLL);
  v18(v27, 0);
  (v15)(v4, *MEMORY[0x277D3E4E8], v17);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6572727543736168, 0xEE00656D6F48746ELL);
  return v19(v27, 0);
}

uint64_t sub_266F8DD60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8DDC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F8DE28()
{
  result = qword_2800F1208;
  if (!qword_2800F1208)
  {
    sub_266F8DE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1208);
  }

  return result;
}

unint64_t sub_266F8DE80()
{
  result = qword_2800F1200;
  if (!qword_2800F1200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1200);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeKitServiceResponse.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v20 = v0;
  v21 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWHomeKitServiceType(0);
  sub_266F8E3F4(&qword_2800F1278, type metadata accessor for FLOWSchemaFLOWHomeKitServiceType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v19 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267433D70);
  v11(v22, 0);
  v18 = "homeKitServiceType";
  v12 = *MEMORY[0x277D3E508];
  v13 = v20;
  v14 = *(v21 + 104);
  v21 += 104;
  v14(v4, v12, v20);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v18 | 0x8000000000000000);
  v15(v22, 0);
  v14(v4, v12, v13);
  v22[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267433DB0);
  v16(v22, 0);
  sub_266ECB128(&unk_2878857F0);
  return sub_2673811CC();
}

uint64_t sub_266F8E2E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8E34C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F8E3F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F8E43C()
{
  result = qword_2800F11F0;
  if (!qword_2800F11F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F11F0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWHomeKitServiceType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267433E00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v266;

  v1(v310, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267433E20, v11);
  v12 = *v9;
  *v9 = v267;

  v7(v310, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267433E50, v17);
  v18 = *v15;
  *v15 = v268;

  v13(v310, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267433E80, v23);
  v24 = *v21;
  *v21 = v269;

  v19(v310, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x8000000267433EB0, v29);
  v30 = *v27;
  *v27 = v270;

  v25(v310, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x8000000267433EE0, v35);
  v36 = *v33;
  *v33 = v271;

  v31(v310, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267433F00, v41);
  v42 = *v39;
  *v39 = v272;

  v37(v310, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x8000000267433F30, v47);
  v48 = *v45;
  *v45 = v273;

  v43(v310, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x8000000267433F60, v53);
  v54 = *v51;
  *v51 = v274;

  v49(v310, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v275 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x8000000267433F80, v59);
  v60 = *v57;
  *v57 = v275;

  v55(v310, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v276 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000029, 0x8000000267433FA0, v65);
  v66 = *v63;
  *v63 = v276;

  v61(v310, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v277 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000026, 0x8000000267433FD0, v71);
  v72 = *v69;
  *v69 = v277;

  v67(v310, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v278 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000029, 0x8000000267434000, v77);
  v78 = *v75;
  *v75 = v278;

  v73(v310, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v279 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000023, 0x8000000267434030, v83);
  v84 = *v81;
  *v81 = v279;

  v79(v310, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v280 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002DLL, 0x8000000267434060, v89);
  v90 = *v87;
  *v87 = v280;

  v85(v310, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v281 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001DLL, 0x8000000267434090, v95);
  v96 = *v93;
  *v93 = v281;

  v91(v310, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v282 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000025, 0x80000002674340B0, v101);
  v102 = *v99;
  *v99 = v282;

  v97(v310, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v283 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000026, 0x80000002674340E0, v107);
  v108 = *v105;
  *v105 = v283;

  v103(v310, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v284 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000027, 0x8000000267434110, v113);
  v114 = *v111;
  *v111 = v284;

  v109(v310, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000027, 0x8000000267434140, v119);
  v120 = *v117;
  *v117 = v285;

  v115(v310, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v286 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000025, 0x8000000267434170, v125);
  v126 = *v123;
  *v123 = v286;

  v121(v310, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v287 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000024, 0x80000002674341A0, v131);
  v132 = *v129;
  *v129 = v287;

  v127(v310, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v288 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000024, 0x80000002674341D0, v137);
  v138 = *v135;
  *v135 = v288;

  v133(v310, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v289 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000022, 0x8000000267434200, v143);
  v144 = *v141;
  *v141 = v289;

  v139(v310, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v290 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000002CLL, 0x8000000267434230, v149);
  v150 = *v147;
  *v147 = v290;

  v145(v310, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v291 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000026, 0x8000000267434260, v155);
  v156 = *v153;
  *v153 = v291;

  v151(v310, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v292 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001DLL, 0x8000000267434290, v161);
  v162 = *v159;
  *v159 = v292;

  v157(v310, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v293 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000023, 0x80000002674342B0, v167);
  v168 = *v165;
  *v165 = v293;

  v163(v310, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v294 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000029, 0x80000002674342E0, v173);
  v174 = *v171;
  *v171 = v294;

  v169(v310, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v295 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000024, 0x8000000267434310, v179);
  v180 = *v177;
  *v177 = v295;

  v175(v310, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000002ELL, 0x8000000267434340, v185);
  v186 = *v183;
  *v183 = v296;

  v181(v310, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v297 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001BLL, 0x8000000267434370, v191);
  v192 = *v189;
  *v189 = v297;

  v187(v310, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v298 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001ELL, 0x8000000267434390, v197);
  v198 = *v195;
  *v195 = v298;

  v193(v310, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v299 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001FLL, 0x80000002674343B0, v203);
  v204 = *v201;
  *v201 = v299;

  v199(v310, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v300 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000025, 0x80000002674343D0, v209);
  v210 = *v207;
  *v207 = v300;

  v205(v310, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v301 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000028, 0x8000000267434400, v215);
  v216 = *v213;
  *v213 = v301;

  v211(v310, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v302 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001CLL, 0x8000000267434430, v221);
  v222 = *v219;
  *v219 = v302;

  v217(v310, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v303 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001DLL, 0x8000000267434450, v227);
  v228 = *v225;
  *v225 = v303;

  v223(v310, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v304 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000021, 0x8000000267434470, v233);
  v234 = *v231;
  *v231 = v304;

  v229(v310, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v305 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000027, 0x80000002674344A0, v239);
  v240 = *v237;
  *v237 = v305;

  v235(v310, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v306 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000021, 0x80000002674344D0, v245);
  v246 = *v243;
  *v243 = v306;

  v241(v310, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v307 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001DLL, 0x8000000267434500, v251);
  v252 = *v249;
  *v249 = v307;

  v247(v310, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v308 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000001BLL, 0x8000000267434520, v257);
  v258 = *v255;
  *v255 = v308;

  v253(v310, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v309 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000001FLL, 0x8000000267434540, v263);
  v264 = *v261;
  *v261 = v309;

  v259(v310, 0);
  sub_266ECB128(&unk_287885818);
  return sub_26738112C();
}

uint64_t sub_266F8F8C4(uint64_t a1)
{
  v2 = sub_266F8F9C8(&qword_2800F1280);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F8F92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F8F9C8(&qword_2800F1280);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F8F9C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWHomeKitServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWIdentityContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1288, 0x277D576A0);
  sub_266ECAF2C(&qword_2800F1290, &qword_2800F1288, 0x277D576A0);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267434590);
  return v5(v7, 0);
}

uint64_t sub_266F8FC04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F8FC68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWInformationPluginContext.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for FLOWSchemaFLOWInformationPluginEventType(0);
  sub_266F901EC(&qword_2800F1298, type metadata accessor for FLOWSchemaFLOWInformationPluginEventType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x707954746E657665, 0xE900000000000065);
  v11(v20, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x80000002674345F0);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0xD000000000000015, 0x80000002674345F0);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287885840);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_266F900E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F90144(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F901EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F90234()
{
  result = qword_2800F10A8;
  if (!qword_2800F10A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F10A8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWInformationPluginEventType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267434650, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267434680, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674346B0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F90494(uint64_t a1)
{
  v2 = sub_266F90598(&qword_2800F12A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F904FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F90598(&qword_2800F12A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F90598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWInformationPluginEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWKeyboardUsageMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v25 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v23 = *(v1 + 104);
  v22 = v9;
  v23(v4, v9, v0);
  v21[1] = v1 + 104;
  v26[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v24 = v11 + 56;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x73726168436D756ELL, 0xED00006465646441);
  v13(v26, 0);
  v14 = v9;
  v15 = v25;
  v16 = v23;
  v23(v4, v14, v25);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x73726168436D756ELL, 0xEF646574656C6544);
  v17(v26, 0);
  v16(v4, v22, v15);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267434720);
  v18(v26, 0);
  v16(v4, *MEMORY[0x277D3E4E8], v25);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x55696A6F6D457369, 0xEB00000000646573);
  return v19(v26, 0);
}

uint64_t sub_266F90AA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F90B08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F90B6C()
{
  result = qword_2800F12A8;
  if (!qword_2800F12A8)
  {
    sub_266F90BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F12A8);
  }

  return result;
}

unint64_t sub_266F90BC4()
{
  result = qword_2800F12B0;
  if (!qword_2800F12B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F12B0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWKGQAExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  type metadata accessor for FLOWSchemaFLOWKGQAUsecase(0);
  sub_266F912C0(&qword_2800F12B8, type metadata accessor for FLOWSchemaFLOWKGQAUsecase);
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

uint64_t sub_266F911B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F91218(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F912C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F91308()
{
  result = qword_2800F12C8;
  if (!qword_2800F12C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F12C8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWKGQAExecutionTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v37 = v3 + 104;
  v38 = v2;
  v34 = v11;
  v11(v6);
  v40[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v32 = *(v13 + 56);
  v33 = v13 + 56;
  v32(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x457972616D697270, 0xEF7365697469746ELL);
  v14(v40, 0);
  v35 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v39, 0x457972616D697270, 0xEF7365697469746ELL);
  v17 = *(v13 + 48);
  v36 = v13 + 48;
  v31 = v17;
  if (!v17(v18, 1, v12))
  {
    sub_266ECB128(&unk_287885870);
    sub_26738115C();
  }

  (v16)(v39, 0);
  v15(v40, 0);
  v19 = v30;
  v34(v6, v30, v38);
  v40[0] = 1;
  sub_26738114C();
  v32(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674347E0);
  v20(v40, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v39, 0xD000000000000011, 0x80000002674347E0);
  if (!v31(v23, 1, v12))
  {
    sub_266ECB128(&unk_287885898);
    sub_26738115C();
  }

  (v22)(v39, 0);
  v21(v40, 0);
  v34(v6, v19, v38);
  v40[0] = 1;
  sub_26738114C();
  v32(v10, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449726577736E61, 0xE800000000000000);
  v24(v40, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v39, 0x6449726577736E61, 0xE800000000000000);
  if (!v31(v27, 1, v12))
  {
    sub_266ECB128(&unk_2878858C0);
    sub_26738115C();
  }

  (v26)(v39, 0);
  return v25(v40, 0);
}

uint64_t sub_266F91924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F91988(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F919EC()
{
  result = qword_2800F12D0;
  if (!qword_2800F12D0)
  {
    sub_266F91A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F12D0);
  }

  return result;
}

unint64_t sub_266F91A44()
{
  result = qword_2800F12D8;
  if (!qword_2800F12D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F12D8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWKGQAUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267434830, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267434850, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267434870, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267434890, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x80000002674348B0, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x80000002674348D0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x80000002674348F0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000019, 0x8000000267434910, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_266F91EDC(uint64_t a1)
{
  v2 = sub_266F91FE0(&qword_2800F12E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F91F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F91FE0(&qword_2800F12E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F91FE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWKGQAUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLanguageConfidence.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaISOLanguageCode(0);
  sub_266F9246C(&qword_2800F12E8, type metadata accessor for SISchemaISOLanguageCode);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x65676175676E616CLL, 0xEC00000065646F43);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E540], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656469666E6F63, 0xEF65726F63536563);
  return v11(v15, 0);
}

uint64_t sub_266F92360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F923C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F9246C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F924B4()
{
  result = qword_2800F12F8;
  if (!qword_2800F12F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F12F8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLanguageConfidenceArray.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F12F8, 0x277D575D8);
  sub_266ECAF2C(&qword_2800F12F0, &qword_2800F12F8, 0x277D575D8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674349A0);
  return v5(v7, 0);
}

uint64_t sub_266F926F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9275C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWLanguageConfidenceMatrix.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1308, 0x277D575E0);
  sub_266ECAF2C(&qword_2800F1300, &qword_2800F1308, 0x277D575E0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267434A00);
  return v5(v7, 0);
}

uint64_t sub_266F929F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F92A5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000031, 0x8000000267434A70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x8000000267434AB0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000043, 0x8000000267434AF0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x8000000267434B40, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003ELL, 0x8000000267434B80, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000040, 0x8000000267434BC0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_266F92E68(uint64_t a1)
{
  v2 = sub_266F92F6C(&qword_2800F1328);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F92ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F92F6C(&qword_2800F1328);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F92F6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionPromptContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1330, 0x277D57608);
  sub_266ECAF2C(&qword_2800F1338, &qword_2800F1330, 0x277D57608);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F1340, 0x277D575F8);
  sub_266ECAF2C(&qword_2800F1348, &qword_2800F1340, 0x277D575F8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F1350, 0x277D57600);
  sub_266ECAF2C(&qword_2800F1358, &qword_2800F1350, 0x277D57600);
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

uint64_t sub_266F934C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9352C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionPromptEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionStatusResult(0);
  sub_266F93A10(&qword_2800F1360, type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionStatusResult);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x8000000267434CB0);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267434CD0);
  return v11(v15, 0);
}

uint64_t sub_266F93904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F93968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F93A10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F93A58()
{
  result = qword_2800F1340;
  if (!qword_2800F1340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1340);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionPromptFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason(0);
  sub_266F93F10(&qword_2800F1320, type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266F93C70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason(0);
  sub_266F93F10(&qword_2800F1320, type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266F93E04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F93E68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F93F10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F93F58()
{
  result = qword_2800F1350;
  if (!qword_2800F1350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1350);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionPromptStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F941EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F94250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F942B4()
{
  result = qword_2800F1338;
  if (!qword_2800F1338)
  {
    sub_266F9430C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1338);
  }

  return result;
}

unint64_t sub_266F9430C()
{
  result = qword_2800F1330;
  if (!qword_2800F1330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1330);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWLocationAccessPermissionStatusResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000030, 0x8000000267434DE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267434E20, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x8000000267434E50, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003FLL, 0x8000000267434E90, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F945E0(uint64_t a1)
{
  v2 = sub_266F946E4(&qword_2800F1368);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F94648(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F946E4(&qword_2800F1368);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F946E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionStatusResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMapsEntity.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
    sub_266ECB128(&unk_2878858E8);
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
    sub_266ECB128(&unk_287885910);
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
    sub_266ECB128(&unk_287885938);
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
  v33(v52, 0);
  sub_266ECB128(&unk_287885960);
  return sub_2673811CC();
}

uint64_t sub_266F94E78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F94EDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F94F40()
{
  result = qword_2800F1370;
  if (!qword_2800F1370)
  {
    sub_266F94F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1370);
  }

  return result;
}

unint64_t sub_266F94F98()
{
  result = qword_2800F1378;
  if (!qword_2800F1378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1378);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMapsExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  type metadata accessor for FLOWSchemaFLOWMapsFeature(0);
  sub_266F956B8(&qword_2800F1380, type metadata accessor for FLOWSchemaFLOWMapsFeature);
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
  type metadata accessor for FLOWSchemaFLOWMapsQueryLabel(0);
  sub_266F956B8(&qword_2800F1388, type metadata accessor for FLOWSchemaFLOWMapsQueryLabel);
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
  v23(v31, 0);
  sub_266ECB128(&unk_287885990);
  return sub_2673811CC();
}

uint64_t sub_266F955AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F95610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F956B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F95700()
{
  result = qword_2800F1398;
  if (!qword_2800F1398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1398);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMapsExecutionTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1378, 0x277D57610);
  sub_266ECAF2C(&qword_2800F1370, &qword_2800F1378, 0x277D57610);
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
    sub_266ECB128(&unk_2878859C0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_2878859E8);
  return sub_2673811CC();
}

uint64_t sub_266F95A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F95A70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWMapsFeature.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267434FF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267435010, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267435030, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267435050, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x8000000267435070, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267435090, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x80000002674350C0, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x80000002674350F0, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000019, 0x8000000267435120, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001FLL, 0x8000000267435140, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267435160, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000017, 0x8000000267435180, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000015, 0x80000002674351A0, v77);
  v78 = *v75;
  *v75 = v92;

  v73(v93, 0);
  sub_266ECB128(&unk_287885A18);
  return sub_26738112C();
}

uint64_t sub_266F961A4(uint64_t a1)
{
  v2 = sub_266F962A8(&qword_2800F13B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9620C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F962A8(&qword_2800F13B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F962A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMapsFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMapsQueryLabel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674351F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267435210, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267435230, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x8000000267435260, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x8000000267435290, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x80000002674352C0, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x80000002674352F0, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x8000000267435320, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267435350, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000022, 0x8000000267435370, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000019, 0x80000002674353A0, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000017, 0x80000002674353C0, v71);
  v72 = *v69;
  *v69 = v85;

  v67(v86, 0);
  sub_266ECB128(&unk_287885A48);
  return sub_26738112C();
}

uint64_t sub_266F96918(uint64_t a1)
{
  v2 = sub_266F96A1C(&qword_2800F13B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F96980(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F96A1C(&qword_2800F13B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F96A1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMapsQueryLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerChosenExecutionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x8000000267435420, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267435450, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x8000000267435480, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x80000002674354B0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000033, 0x80000002674354E0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F96D58(uint64_t a1)
{
  v2 = sub_266F96E5C(&qword_2800F13C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F96DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F96E5C(&qword_2800F13C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F96E5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerContentSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267435560, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267435590, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x80000002674355C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F970B4(uint64_t a1)
{
  v2 = sub_266F971B8(&qword_2800F13D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9711C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F971B8(&qword_2800F13D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F971B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerContentSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}