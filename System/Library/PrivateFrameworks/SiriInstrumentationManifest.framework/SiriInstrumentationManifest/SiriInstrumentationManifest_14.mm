uint64_t sub_267106F70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267107008()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2671070D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267107138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267107198(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4F00, &qword_2800F4F08, 0x277D58C30);
  a1[2] = sub_266ECAF2C(&qword_2800F4F10, &qword_2800F4F08, 0x277D58C30);
  result = sub_266ECAF2C(&qword_2800F4F18, &qword_2800F4F08, 0x277D58C30);
  a1[3] = result;
  return result;
}

uint64_t static NLGSchemaNLGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449676C6ELL, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449676C6ELL, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287888ED0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267107530(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267107594(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLGSchemaNLGDialogCandidateStatistics.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x746E756F63, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_267107880(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671078E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267107948()
{
  result = qword_2800F4F28;
  if (!qword_2800F4F28)
  {
    sub_2671079A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4F28);
  }

  return result;
}

unint64_t sub_2671079A0()
{
  result = qword_2800F4F30;
  if (!qword_2800F4F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4F30);
  }

  return result;
}

uint64_t static NLGSchemaNLGDialogScorer.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLGSchemaNLGDialogScorerType(0);
  sub_267107CDC(&qword_2800F4F38, type metadata accessor for NLGSchemaNLGDialogScorerType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267461280);
  return v5(v7, 0);
}

uint64_t sub_267107BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267107C34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267107CDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267107D24()
{
  result = qword_2800F4F48;
  if (!qword_2800F4F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4F48);
  }

  return result;
}

uint64_t static NLGSchemaNLGDialogScorerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x80000002674612D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674612F0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267461310, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267107F84(uint64_t a1)
{
  v2 = sub_267108088(&qword_2800F4F50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267107FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267108088(&qword_2800F4F50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267108088(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLGSchemaNLGDialogScorerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLGSchemaNLGScoredDialog.makeTypeManifestAndEnsureFields(in:)()
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
  v9 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v8, 0x6C696D6146746163, 0xE900000000000079);
  v13(v26, 0);
  v14 = v9;
  v15 = v25;
  v16 = v23;
  v23(v4, v14, v25);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E656449746163, 0xED00007265696669);
  v17(v26, 0);
  v16(v4, v22, v15);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267461360);
  v18(v26, 0);
  v16(v4, *MEMORY[0x277D3E500], v25);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  return v19(v26, 0);
}

uint64_t sub_267108580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671085E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267108648()
{
  result = qword_2800F4F58;
  if (!qword_2800F4F58)
  {
    sub_2671086A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4F58);
  }

  return result;
}

unint64_t sub_2671086A0()
{
  result = qword_2800F4F60;
  if (!qword_2800F4F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4F60);
  }

  return result;
}

uint64_t static NLGSchemaNLGScoredDialogSelected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4F48, 0x277D58C48);
  sub_266ECAF2C(&qword_2800F4F40, &qword_2800F4F48, 0x277D58C48);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6353676F6C616964, 0xEC0000007265726FLL);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F4F30, 0x277D58C40);
  sub_266ECAF2C(&qword_2800F4F28, &qword_2800F4F30, 0x277D58C40);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x80000002674613B0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F4F60, 0x277D58C50);
  sub_266ECAF2C(&qword_2800F4F58, &qword_2800F4F60, 0x277D58C50);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674613D0);
  return v8(v10, 0);
}

uint64_t sub_267108A98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267108AFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaHeuristicsHandleEndedData.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267108D70()
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

uint64_t sub_267108F08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267108F6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterBridgeErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267461470, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674614A0, v11);
  v12 = *v9;
  *v9 = v15;

  v7(v16, 0);
  sub_266ECB128(&unk_287888F00);
  return sub_26738112C();
}

uint64_t sub_2671091C8(uint64_t a1)
{
  v2 = sub_2671092CC(&qword_2800F4F80);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267109230(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671092CC(&qword_2800F4F80);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671092CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterBridgeErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterBridgeHandleContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4F88, 0x277D58C80);
  sub_266ECAF2C(&qword_2800F4F90, &qword_2800F4F88, 0x277D58C80);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F4F98, 0x277D58C70);
  sub_266ECAF2C(&qword_2800F4FA0, &qword_2800F4F98, 0x277D58C70);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F4FA8, 0x277D58C78);
  sub_266ECAF2C(&qword_2800F4FB0, &qword_2800F4FA8, 0x277D58C78);
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
  v12(v24, 0);
  sub_266ECB128(&unk_287888F28);
  return sub_2673811CC();
}

uint64_t sub_26710983C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671098A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterBridgeHandleEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4FC8, 0x277D58C88);
  sub_266ECAF2C(&qword_2800F4FD0, &qword_2800F4FC8, 0x277D58C88);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x44676E6974756F72, 0xEF6E6F6973696365);
  v5(v7, 0);
  sub_266ECB128(&unk_287888F50);
  return sub_2673811CC();
}

uint64_t sub_267109B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267109BB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterBridgeHandleFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLRouterSchemaNLRouterBridgeErrorDomain(0);
  sub_26710A108();
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
  sub_266ECB294(0, &qword_2800F4FC8, 0x277D58C88);
  sub_266ECAF2C(&qword_2800F4FD0, &qword_2800F4FC8, 0x277D58C88);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x44676E6974756F72, 0xEF6E6F6973696365);
  v13(v16, 0);
  sub_266ECB128(&unk_287888F78);
  return sub_2673811CC();
}

uint64_t sub_26710A044(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710A0A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26710A108()
{
  result = qword_2800F4F78;
  if (!qword_2800F4F78)
  {
    type metadata accessor for NLRouterSchemaNLRouterBridgeErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4F78);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterBridgeHandleStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287888FA0);
  return sub_2673811CC();
}

uint64_t sub_26710A404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710A468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26710A4CC()
{
  result = qword_2800F4F90;
  if (!qword_2800F4F90)
  {
    sub_26710A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4F90);
  }

  return result;
}

unint64_t sub_26710A524()
{
  result = qword_2800F4F88;
  if (!qword_2800F4F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4F88);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterBridgeRoutingDecision.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource(0);
  sub_26710A944(&qword_2800F4FD8, type metadata accessor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267461610);
  v6(v9, 0);
  type metadata accessor for NLRouterSchemaNLRouterDecisionType(0);
  sub_26710A944(&qword_2800F4FE0, type metadata accessor for NLRouterSchemaNLRouterDecisionType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267461630);
  v7(v9, 0);
  sub_266ECB128(&unk_287888FC8);
  return sub_2673811CC();
}

uint64_t sub_26710A838(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710A89C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710A944(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26710A98C()
{
  result = qword_2800F4FC8;
  if (!qword_2800F4FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4FC8);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterBridgeRoutingDecisionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x80000002674616A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x80000002674616D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x8000000267461710, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x8000000267461750, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_287888FF0);
  return sub_26738112C();
}

uint64_t sub_26710AC70(uint64_t a1)
{
  v2 = sub_26710AD74(&qword_2800F4FE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710ACD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710AD74(&qword_2800F4FE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710AD74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v42 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4FF0, 0x277D58C98);
  sub_266ECAF2C(&qword_2800F4FF8, &qword_2800F4FF0, 0x277D58C98);
  v11 = a1;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v10, 0, 1, v12);
  v49 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v15(v51, 0);
  v48 = "outerClientEvent";
  sub_266ECB294(0, &qword_2800F5000, 0x277D58CA8);
  sub_266ECAF2C(&qword_2800F5008, &qword_2800F5000, 0x277D58CA8);
  sub_26738121C();
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v48 | 0x8000000000000000);
  v16(v51, 0);
  sub_266ECB294(0, &qword_2800F4FC0, 0x277D58C68);
  sub_266ECAF2C(&qword_2800F4FB8, &qword_2800F4FC0, 0x277D58C68);
  v47 = v11;
  sub_26738121C();
  v46 = v14;
  v42[1] = v13 + 56;
  v14(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x80000002674617F0);
  v17(v51, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v50, 0xD00000000000001BLL, 0x80000002674617F0);
  v20 = *(v13 + 48);
  v48 = v12;
  v42[2] = v13 + 48;
  v42[0] = v20;
  if (!v20(v21, 1, v12))
  {
    sub_266ECB128(&unk_287889018);
    sub_26738115C();
  }

  (v19)(v50, 0);
  v18(v51, 0);
  sub_266ECB294(0, &qword_2800F5010, 0x277D58CE8);
  sub_266ECAF2C(&qword_2800F5018, &qword_2800F5010, 0x277D58CE8);
  sub_26738121C();
  v22 = v48;
  v23 = v46;
  v46(v10, 0, 1, v48);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x8000000267461810);
  v24(v51, 0);
  sub_266ECB294(0, &qword_2800F5020, 0x277D58D10);
  sub_266ECAF2C(&qword_2800F5028, &qword_2800F5020, 0x277D58D10);
  sub_26738121C();
  v23(v10, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x8000000267461840);
  v25(v51, 0);
  sub_266ECB294(0, &qword_2800F5030, 0x277D58D30);
  sub_266ECAF2C(&qword_2800F5038, &qword_2800F5030, 0x277D58D30);
  sub_26738121C();
  v23(v10, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002FLL, 0x8000000267461870);
  v26(v51, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v50, 0xD00000000000002FLL, 0x8000000267461870);
  if (!(v42[0])(v29, 1, v22))
  {
    sub_266ECB128(&unk_287889040);
    sub_26738115C();
  }

  (v28)(v50, 0);
  v27(v51, 0);
  sub_266ECB294(0, &qword_2800F5040, 0x277D58CE0);
  sub_266ECAF2C(&qword_2800F5048, &qword_2800F5040, 0x277D58CE0);
  sub_26738121C();
  v30 = v46;
  v46(v10, 0, 1, v48);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000027, 0x80000002674618A0);
  v31(v51, 0);
  sub_266ECB294(0, &qword_2800F5050, 0x277D58CD8);
  sub_266ECAF2C(&qword_2800F5058, &qword_2800F5050, 0x277D58CD8);
  sub_26738121C();
  v30(v10, 0, 1, v48);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x80000002674618D0);
  v32(v51, 0);
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
  v34(v51, 0);
  sub_266ECB128(&unk_287889068);
  return sub_2673811CC();
}

uint64_t sub_26710B87C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26710B914()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26710B9E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710BA44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710BAA4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F5060, &qword_2800F5068, 0x277D58C90);
  a1[2] = sub_266ECAF2C(&qword_2800F5070, &qword_2800F5068, 0x277D58C90);
  result = sub_266ECAF2C(&qword_2800F5078, &qword_2800F5068, 0x277D58C90);
  a1[3] = result;
  return result;
}

uint64_t static NLRouterSchemaNLRouterClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v23 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v24 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v22 = *(v9 + 56);
  v22(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x726574756F526C6ELL, 0xEA00000000006449);
  v10(v27, 0);
  v25 = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v26, 0x726574756F526C6ELL, 0xEA00000000006449);
  v21 = *(v9 + 48);
  if (!v21(v13, 1, v8))
  {
    sub_266ECB128(&unk_2878890A0);
    sub_26738115C();
  }

  (v12)(v26, 0);
  v11(v27, 0);
  sub_26738120C();
  v22(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000064);
  v14(v27, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v26, 0x4974736575716572, 0xE900000000000064);
  if (!v21(v17, 1, v8))
  {
    sub_266ECB128(&unk_2878890D0);
    sub_26738115C();
  }

  (v16)(v26, 0);
  v15(v27, 0);
  sub_26738120C();
  v22(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  return v18(v27, 0);
}

uint64_t sub_26710BFF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710C054(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterCorrectionOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267461970, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674619A0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x80000002674619C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26710C310(uint64_t a1)
{
  v2 = sub_26710C414(&qword_2800F5090);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710C378(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710C414(&qword_2800F5090);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710C414(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterCorrectionOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterDecisionGenAIAppIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267461A20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000039, 0x8000000267461A50, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000004BLL, 0x8000000267461A90, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000046, 0x8000000267461AE0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26710C6DC(uint64_t a1)
{
  v2 = sub_26710C7E0(&qword_2800F50A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710C744(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710C7E0(&qword_2800F50A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710C7E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterDecisionGenAIAppIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterDecisionGenAIMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x63696C7078457369, 0xEA00000000007469);
  v11(v15, 0);
  type metadata accessor for NLRouterSchemaNLRouterDecisionGenAIAppIntent(0);
  sub_26710CD1C(&qword_2800F5098, type metadata accessor for NLRouterSchemaNLRouterDecisionGenAIAppIntent);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x70704149416E6567, 0xEE00746E65746E49);
  v12(v15, 0);
  type metadata accessor for NLRouterSchemaNLRouterCorrectionOutcome(0);
  sub_26710CD1C(&qword_2800F5088, type metadata accessor for NLRouterSchemaNLRouterCorrectionOutcome);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267461B70);
  return v13(v15, 0);
}

uint64_t sub_26710CC10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710CC74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710CD1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26710CD64()
{
  result = qword_2800F50B0;
  if (!qword_2800F50B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F50B0);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterDecisionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267461BD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267461BF0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267461C20, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267461C50, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x8000000267461C80, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002CLL, 0x8000000267461CB0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26710D114(uint64_t a1)
{
  v2 = sub_26710D218(&qword_2800F50C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710D17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710D218(&qword_2800F50C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710D218(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterDecisionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterDecisionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267461D20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v92, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267461D40, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v92, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267461D70, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v92, 0);
  v19 = sub_266ECB128(&unk_287889100);
  v21 = v20;
  v22 = sub_2673810FC();
  v24 = v23;
  v25 = *v23;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v24;
  *v24 = 0x8000000000000000;
  sub_266ECD4CC(v19, v21, 2, v26);
  *v24 = v83;
  v22(v92, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = *v28;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267461DA0, v31);
  v32 = *v29;
  *v29 = v84;

  v27(v92, 0);
  v33 = sub_266ECB128(&unk_287889128);
  v35 = v34;
  v36 = sub_2673810FC();
  v38 = v37;
  v39 = *v37;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v38;
  *v38 = 0x8000000000000000;
  sub_266ECD4CC(v33, v35, 3, v40);
  *v38 = v85;
  v36(v92, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = *v42;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x8000000267461DC0, v45);
  v46 = *v43;
  *v43 = v86;

  v41(v92, 0);
  v47 = sub_26738111C();
  v49 = v48;
  v50 = *v48;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v49;
  *v49 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x8000000267461DF0, v51);
  v52 = *v49;
  *v49 = v87;

  v47(v92, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = *v54;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267461E20, v57);
  v58 = *v55;
  *v55 = v88;

  v53(v92, 0);
  v59 = sub_266ECB128(&unk_287889150);
  v61 = v60;
  v62 = sub_2673810FC();
  v64 = v63;
  v65 = *v63;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v64;
  *v64 = 0x8000000000000000;
  sub_266ECD4CC(v59, v61, 6, v66);
  *v64 = v89;
  v62(v92, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x8000000267461E40, v71);
  v72 = *v69;
  *v69 = v90;

  v67(v92, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x8000000267461E70, v77);
  v78 = *v75;
  *v75 = v91;

  return v73(v92, 0);
}

uint64_t sub_26710D86C(uint64_t a1)
{
  v2 = sub_26710D970(&qword_2800F50C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710D8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710D970(&qword_2800F50C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710D970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterDecisionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267461EE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267461F00, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267461F30, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267461F50, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26710DC38(uint64_t a1)
{
  v2 = sub_26710DD3C(&qword_2800F50D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710DCA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710DD3C(&qword_2800F50D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710DD3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterHandleContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F50E0, 0x277D58CC0);
  sub_266ECAF2C(&qword_2800F50E8, &qword_2800F50E0, 0x277D58CC0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F50F0, 0x277D58CB0);
  sub_266ECAF2C(&qword_2800F50F8, &qword_2800F50F0, 0x277D58CB0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F5100, 0x277D58CB8);
  sub_266ECAF2C(&qword_2800F5108, &qword_2800F5100, 0x277D58CB8);
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

uint64_t sub_26710E298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710E2FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterHandleEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v19 = *(v2 - 8);
  v20 = v2;
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLRouterSchemaNLRouterDecisionType(0);
  sub_26710EA10(&qword_2800F4FE0, type metadata accessor for NLRouterSchemaNLRouterDecisionType);
  v17 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267461FF0);
  v11(v21, 0);
  type metadata accessor for NLRouterSchemaNLRouterDecisionSource(0);
  sub_26710EA10(&qword_2800F50B8, type metadata accessor for NLRouterSchemaNLRouterDecisionSource);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267461610);
  v12(v21, 0);
  (*(v19 + 104))(v18, *MEMORY[0x277D3E538], v20);
  v21[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267462010);
  v13(v21, 0);
  sub_266ECB294(0, &qword_2800F50B0, 0x277D58CA0);
  sub_266ECAF2C(&qword_2800F50A8, &qword_2800F50B0, 0x277D58CA0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D49416E6567, 0xED00006174616461);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F5110, 0x277D58CC8);
  sub_266ECAF2C(&qword_2800F5118, &qword_2800F5110, 0x277D58CC8);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267462030);
  return v15(v21, 0);
}

uint64_t sub_26710E94C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710E9B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710EA10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static NLRouterSchemaNLRouterHandleFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLRouterSchemaNLRouterErrorDomain(0);
  sub_26710EEDC(&qword_2800F50D0, type metadata accessor for NLRouterSchemaNLRouterErrorDomain);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E508], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v11(v15, 0);
}

uint64_t sub_26710EDD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710EE34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710EEDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26710EF24()
{
  result = qword_2800F5100;
  if (!qword_2800F5100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5100);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterHandleStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26710F1B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710F21C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26710F280()
{
  result = qword_2800F50E8;
  if (!qword_2800F50E8)
  {
    sub_26710F2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F50E8);
  }

  return result;
}

unint64_t sub_26710F2D8()
{
  result = qword_2800F50E0;
  if (!qword_2800F50E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F50E0);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterOverrideMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x656469727265766FLL, 0xEA00000000006449);
  return v5(v7, 0);
}

uint64_t sub_26710F4FC()
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
  sub_266EC637C(v3, 0x656469727265766FLL, 0xEA00000000006449);
  return v5(v7, 0);
}

uint64_t sub_26710F69C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710F700(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterPromptComponent.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLRouterSchemaNLRouterPromptComponentType(0);
  sub_26710FBEC(&qword_2800F5120, type metadata accessor for NLRouterSchemaNLRouterPromptComponentType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656E6F706D6F63, 0xED00006570795474);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F546E49657A6973, 0xEC000000736E656BLL);
  return v11(v15, 0);
}

uint64_t sub_26710FAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710FB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710FBEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26710FC34()
{
  result = qword_2800F5130;
  if (!qword_2800F5130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5130);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterPromptComponentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267462190, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674621C0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x80000002674621F0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267462230, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x8000000267462260, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000027, 0x8000000267462290, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26710FFE4(uint64_t a1)
{
  v2 = sub_2671100E8(&qword_2800F5138);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711004C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671100E8(&qword_2800F5138);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671100E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterPromptComponentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterPromptGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5130, 0x277D58CD0);
  sub_266ECAF2C(&qword_2800F5128, &qword_2800F5130, 0x277D58CD0);
  sub_26738122C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656E6F706D6F63, 0xEA00000000007374);
  v12(v24, 0);
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v20 = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267462300);
  v13(v24, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = *(v23 + 104);
  v23 += 104;
  v16 = v21;
  v15(v21, v14, v22);
  v24[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267462320);
  v17(v24, 0);
  v15(v16, v14, v22);
  v24[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267462340);
  return v18(v24, 0);
}

uint64_t sub_2671105BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267110620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterPromptGenerationSignalsCaptured.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v30 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25[1] = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v29 = *(v3 + 104);
  v29(v6, v11, v2);
  v25[2] = v3 + 104;
  v31[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v28 = v13 + 56;
  v26 = v12;
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x636F467070417369, 0xEC00000064657375);
  v15(v31, 0);
  v25[0] = "ationSignalsCaptured";
  v16 = v11;
  v17 = v11;
  v27 = v11;
  v18 = v29;
  v19 = v30;
  v29(v6, v16, v30);
  v31[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v25[0] | 0x8000000000000000);
  v20(v31, 0);
  v18(v6, v17, v19);
  v31[0] = 1;
  sub_26738114C();
  v21 = v26;
  v14(v10, 0, 1, v26);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x46616964654D7369, 0xEE0064657375636FLL);
  v22(v31, 0);
  v18(v6, v27, v30);
  v31[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674623D0);
  return v23(v31, 0);
}

uint64_t sub_267110BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267110C04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267110C68()
{
  result = qword_2800F5048;
  if (!qword_2800F5048)
  {
    sub_267110CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5048);
  }

  return result;
}

unint64_t sub_267110CC0()
{
  result = qword_2800F5040;
  if (!qword_2800F5040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5040);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267462430, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267462450, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267462470, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267462490, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x80000002674624B0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x80000002674624E0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x8000000267462510, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2671110E4(uint64_t a1)
{
  v2 = sub_2671111E8(&qword_2800F5148);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711114C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671111E8(&qword_2800F5148);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671111E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterSubComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v31[1] = v9;
  v31[2] = a1;
  v31[0] = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x49747865746E6F63, 0xE900000000000064);
  v14(v36, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v12 + 48))(v17, 1, v11))
  {
    sub_266ECB128(&unk_287889178);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  sub_266ECB294(0, &qword_2800F5150, 0x277D58D08);
  sub_266ECAF2C(&qword_2800F5158, &qword_2800F5150, 0x277D58D08);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v18(v36, 0);
  sub_266ECB294(0, &qword_2800F5160, 0x277D58CF0);
  sub_266ECAF2C(&qword_2800F5168, &qword_2800F5160, 0x277D58CF0);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v19(v36, 0);
  sub_266ECB294(0, &qword_2800F5170, 0x277D58D00);
  sub_266ECAF2C(&qword_2800F5178, &qword_2800F5170, 0x277D58D00);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
  v20(v36, 0);
  sub_26738120C();
  v13(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496563617274, 0xE700000000000000);
  v21(v36, 0);
  v22 = v32;
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
  (*(v33 + 32))(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, v22, v34);
  return v23(v36, 0);
}

uint64_t sub_267111938(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711199C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F5180, 0x277D58CF8);
  sub_266ECAF2C(&qword_2800F5188, &qword_2800F5180, 0x277D58CF8);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x80000002674625C0);
  return v13(v16, 0);
}

uint64_t sub_267111D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267111DD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleEndedData.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4F70, 0x277D58C60);
  sub_266ECAF2C(&qword_2800F4F68, &qword_2800F4F70, 0x277D58C60);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267462640);
  return v5(v7, 0);
}

uint64_t sub_267112070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671120D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671123C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711242C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267112490()
{
  result = qword_2800F5178;
  if (!qword_2800F5178)
  {
    sub_2671124E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5178);
  }

  return result;
}

unint64_t sub_2671124E8()
{
  result = qword_2800F5170;
  if (!qword_2800F5170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5170);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleStarted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLRouterSchemaNLRouterSubComponent(0);
  sub_267112974(&qword_2800F5140, type metadata accessor for NLRouterSchemaNLRouterSubComponent);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x80000002674626E0);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265567465737361, 0xEC0000006E6F6973);
  return v11(v15, 0);
}

uint64_t sub_267112868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671128CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267112974(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671129BC()
{
  result = qword_2800F5150;
  if (!qword_2800F5150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5150);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentSetupContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v31[1] = v9;
  v31[2] = a1;
  v31[0] = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x49747865746E6F63, 0xE900000000000064);
  v14(v36, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v12 + 48))(v17, 1, v11))
  {
    sub_266ECB128(&unk_2878891A0);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  sub_266ECB294(0, &qword_2800F5190, 0x277D58D28);
  sub_266ECAF2C(&qword_2800F5198, &qword_2800F5190, 0x277D58D28);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v18(v36, 0);
  sub_266ECB294(0, &qword_2800F51A0, 0x277D58D18);
  sub_266ECAF2C(&qword_2800F51A8, &qword_2800F51A0, 0x277D58D18);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v19(v36, 0);
  sub_266ECB294(0, &qword_2800F51B0, 0x277D58D20);
  sub_266ECAF2C(&qword_2800F51B8, &qword_2800F51B0, 0x277D58D20);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
  v20(v36, 0);
  sub_26738120C();
  v13(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496563617274, 0xE700000000000000);
  v21(v36, 0);
  v22 = v32;
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
  (*(v33 + 32))(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, v22, v34);
  return v23(v36, 0);
}

uint64_t sub_267113114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267113178(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterSubComponentSetupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267113464(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671134C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26711352C()
{
  result = qword_2800F51A8;
  if (!qword_2800F51A8)
  {
    sub_267113584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51A8);
  }

  return result;
}

unint64_t sub_267113584()
{
  result = qword_2800F51A0;
  if (!qword_2800F51A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51A0);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentSetupFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267113820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267113884(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671138E8()
{
  result = qword_2800F51B8;
  if (!qword_2800F51B8)
  {
    sub_267113940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51B8);
  }

  return result;
}

unint64_t sub_267113940()
{
  result = qword_2800F51B0;
  if (!qword_2800F51B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51B0);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentSetupStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v14[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLRouterSchemaNLRouterSubComponent(0);
  sub_267113D94();
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000014, 0x80000002674626E0);
  v8(v16, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x7265567465737361, 0xEC0000006E6F6973);
  v9(v16, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v15, 0x7265567465737361, 0xEC0000006E6F6973);
  if (!(*(v6 + 48))(v12, 1, v5))
  {
    sub_266ECB128(&unk_2878891C8);
    sub_26738115C();
  }

  (v11)(v15, 0);
  return v10(v16, 0);
}

uint64_t sub_267113CD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267113D34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267113D94()
{
  result = qword_2800F5140;
  if (!qword_2800F5140)
  {
    type metadata accessor for NLRouterSchemaNLRouterSubComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5140);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0xD000000000000016, 0x8000000267462850);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0xD000000000000016, 0x8000000267462850);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_2878891F0);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_267114208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711426C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMAllServicesSetupContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F51C0, 0x277D58D50);
  sub_266ECAF2C(&qword_2800F51C8, &qword_2800F51C0, 0x277D58D50);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F51D0, 0x277D58D40);
  sub_266ECAF2C(&qword_2800F51D8, &qword_2800F51D0, 0x277D58D40);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F51E0, 0x277D58D48);
  sub_266ECAF2C(&qword_2800F51E8, &qword_2800F51E0, 0x277D58D48);
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

uint64_t sub_267114828(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711488C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMAllServicesSetupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267114B78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267114BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267114C40()
{
  result = qword_2800F51D8;
  if (!qword_2800F51D8)
  {
    sub_267114C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51D8);
  }

  return result;
}

unint64_t sub_267114C98()
{
  result = qword_2800F51D0;
  if (!qword_2800F51D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51D0);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesSetupFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267114F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267114F90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267114FF4()
{
  result = qword_2800F51E8;
  if (!qword_2800F51E8)
  {
    sub_26711504C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51E8);
  }

  return result;
}

unint64_t sub_26711504C()
{
  result = qword_2800F51E0;
  if (!qword_2800F51E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51E0);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesSetupStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671152E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267115344(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671153A8()
{
  result = qword_2800F51C8;
  if (!qword_2800F51C8)
  {
    sub_267115400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51C8);
  }

  return result;
}

unint64_t sub_267115400()
{
  result = qword_2800F51C0;
  if (!qword_2800F51C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51C0);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesWarmupContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5200, 0x277D58D70);
  sub_266ECAF2C(&qword_2800F5208, &qword_2800F5200, 0x277D58D70);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F5210, 0x277D58D60);
  sub_266ECAF2C(&qword_2800F5218, &qword_2800F5210, 0x277D58D60);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F5220, 0x277D58D68);
  sub_266ECAF2C(&qword_2800F5228, &qword_2800F5220, 0x277D58D68);
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

uint64_t sub_267115964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671159C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMAllServicesWarmupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267115CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267115D18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267115D7C()
{
  result = qword_2800F5218;
  if (!qword_2800F5218)
  {
    sub_267115DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5218);
  }

  return result;
}

unint64_t sub_267115DD4()
{
  result = qword_2800F5210;
  if (!qword_2800F5210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5210);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesWarmupFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267116068(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671160CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267116130()
{
  result = qword_2800F5228;
  if (!qword_2800F5228)
  {
    sub_267116188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5228);
  }

  return result;
}

unint64_t sub_267116188()
{
  result = qword_2800F5220;
  if (!qword_2800F5220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5220);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesWarmupStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26711641C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267116480(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671164E4()
{
  result = qword_2800F5208;
  if (!qword_2800F5208)
  {
    sub_26711653C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5208);
  }

  return result;
}

unint64_t sub_26711653C()
{
  result = qword_2800F5200;
  if (!qword_2800F5200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5200);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetSetupContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5240, 0x277D58D90);
  sub_266ECAF2C(&qword_2800F5248, &qword_2800F5240, 0x277D58D90);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F5250, 0x277D58D80);
  sub_266ECAF2C(&qword_2800F5258, &qword_2800F5250, 0x277D58D80);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F5260, 0x277D58D88);
  sub_266ECAF2C(&qword_2800F5268, &qword_2800F5260, 0x277D58D88);
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

uint64_t sub_267116B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267116BC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMAssetSetupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267116EB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267116F18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267116F7C()
{
  result = qword_2800F5258;
  if (!qword_2800F5258)
  {
    sub_267116FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5258);
  }

  return result;
}

unint64_t sub_267116FD4()
{
  result = qword_2800F5250;
  if (!qword_2800F5250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5250);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetSetupErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267462B10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x8000000267462B40, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x8000000267462B80, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000030, 0x8000000267462BB0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x8000000267462BF0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x8000000267462C20, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000034, 0x8000000267462C60, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000038, 0x8000000267462CA0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002DLL, 0x8000000267462CE0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_2671174DC(uint64_t a1)
{
  v2 = sub_2671175E0(&qword_2800F5288);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267117544(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671175E0(&qword_2800F5288);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671175E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMAssetSetupErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetSetupFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaCDMAssetSetupErrorDomain(0);
  sub_267117A64(&qword_2800F5280, type metadata accessor for NLXSchemaCDMAssetSetupErrorDomain);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v11(v15, 0);
}

uint64_t sub_267117958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671179BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267117A64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267117AAC()
{
  result = qword_2800F5260;
  if (!qword_2800F5260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5260);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetSetupStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_267117F4C(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365636976726573, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267117CB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_267117F4C(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365636976726573, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267117E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267117EA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267117F4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267117F94()
{
  result = qword_2800F5240;
  if (!qword_2800F5240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5240);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetsReported.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671181B0()
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

uint64_t sub_267118348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671183AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMClientSetupContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F52A8, 0x277D58DB8);
  sub_266ECAF2C(&qword_2800F52B0, &qword_2800F52A8, 0x277D58DB8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F52B8, 0x277D58DA8);
  sub_266ECAF2C(&qword_2800F52C0, &qword_2800F52B8, 0x277D58DA8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F52C8, 0x277D58DB0);
  sub_266ECAF2C(&qword_2800F52D0, &qword_2800F52C8, 0x277D58DB0);
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

uint64_t sub_267118968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671189CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMClientSetupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267118CB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267118D1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267118D80()
{
  result = qword_2800F52C0;
  if (!qword_2800F52C0)
  {
    sub_267118DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F52C0);
  }

  return result;
}

unint64_t sub_267118DD8()
{
  result = qword_2800F52B8;
  if (!qword_2800F52B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F52B8);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientSetupErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267462E40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x8000000267462E70, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267462EA0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26711903C(uint64_t a1)
{
  v2 = sub_267119140(&qword_2800F52F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671190A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267119140(&qword_2800F52F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267119140(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMClientSetupErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientSetupFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLXSchemaCDMClientSetupFailureReason(0);
  sub_267119720(&qword_2800F52F8, type metadata accessor for NLXSchemaCDMClientSetupFailureReason);
  v19 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F73616572, 0xE600000000000000);
  v12(v24, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v23, 0x6E6F73616572, 0xE600000000000000);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287889218);
    sub_26738115C();
  }

  (v14)(v23, 0);
  v13(v24, 0);
  type metadata accessor for NLXSchemaCDMClientSetupErrorDomain(0);
  sub_267119720(&qword_2800F52E8, type metadata accessor for NLXSchemaCDMClientSetupErrorDomain);
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
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v17(v24, 0);
}

uint64_t sub_267119614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267119678(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267119720(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267119768()
{
  result = qword_2800F52C8;
  if (!qword_2800F52C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F52C8);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientSetupFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267462F40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x8000000267462F70, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x8000000267462FB0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x8000000267462FE0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267119A38(uint64_t a1)
{
  v2 = sub_267119B3C(&qword_2800F5300);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267119AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267119B3C(&qword_2800F5300);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267119B3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMClientSetupFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientSetupStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = a1;
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
  v25 = *MEMORY[0x277D3E4E8];
  v27 = v2 + 104;
  v28 = v1;
  v24 = v10;
  v10(v5);
  v31[0] = 1;
  v23 = v5;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v26 = *(v12 + 56);
  v26(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v31, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v30, 0x737473697865, 0xE600000000000000);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_287889240);
    sub_26738115C();
  }

  (v15)(v30, 0);
  v14(v31, 0);
  type metadata accessor for NLXSchemaCDMServiceGraphName(0);
  sub_26711A1F4(&qword_2800F5308, type metadata accessor for NLXSchemaCDMServiceGraphName);
  sub_26738120C();
  v17 = v26;
  v26(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267463050);
  v18(v31, 0);
  v24(v23, v25, v28);
  v31[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267463070);
  v19(v31, 0);
  type metadata accessor for NLXSchemaCDMMemoryPressure(0);
  sub_26711A1F4(&qword_2800F5310, type metadata accessor for NLXSchemaCDMMemoryPressure);
  sub_26738120C();
  v17(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x725079726F6D656DLL, 0xEE00657275737365);
  return v20(v31, 0);
}

uint64_t sub_26711A0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711A14C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26711A1F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26711A23C()
{
  result = qword_2800F52A8;
  if (!qword_2800F52A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F52A8);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientWarmupContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5318, 0x277D58DD8);
  sub_266ECAF2C(&qword_2800F5320, &qword_2800F5318, 0x277D58DD8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F5328, 0x277D58DC8);
  sub_266ECAF2C(&qword_2800F5330, &qword_2800F5328, 0x277D58DC8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F5338, 0x277D58DD0);
  sub_266ECAF2C(&qword_2800F5340, &qword_2800F5338, 0x277D58DD0);
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

uint64_t sub_26711A7A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711A804(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMClientWarmupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26711AAF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711AB54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26711ABB8()
{
  result = qword_2800F5330;
  if (!qword_2800F5330)
  {
    sub_26711AC10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5330);
  }

  return result;
}

unint64_t sub_26711AC10()
{
  result = qword_2800F5328;
  if (!qword_2800F5328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5328);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientWarmupErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267463130, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267463160, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267463190, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26711AE70(uint64_t a1)
{
  v2 = sub_26711AF74(&qword_2800F5360);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711AED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26711AF74(&qword_2800F5360);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26711AF74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMClientWarmupErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientWarmupFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaCDMClientWarmupErrorDomain(0);
  sub_26711B3F8(&qword_2800F5358, type metadata accessor for NLXSchemaCDMClientWarmupErrorDomain);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E508], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v11(v15, 0);
}

uint64_t sub_26711B2EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711B350(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26711B3F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26711B440()
{
  result = qword_2800F5338;
  if (!qword_2800F5338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5338);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientWarmupStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceGraphName(0);
  sub_26711B77C(&qword_2800F5308, type metadata accessor for NLXSchemaCDMServiceGraphName);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267463050);
  return v5(v7, 0);
}

uint64_t sub_26711B670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711B6D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26711B77C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26711B7C4()
{
  result = qword_2800F5318;
  if (!qword_2800F5318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5318);
  }

  return result;
}

uint64_t static NLXSchemaCDMContextUpdateEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5368, 0x277D58E58);
  sub_266ECAF2C(&qword_2800F5370, &qword_2800F5368, 0x277D58E58);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267463250);
  return v7(v9, 0);
}

uint64_t sub_26711BAE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711BB48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMCorrectionOutcome.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMCorrectionType(0);
  sub_26711BEF8(&qword_2800F5388, type metadata accessor for NLXSchemaCDMCorrectionType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974636572726F63, 0xEE00657079546E6FLL);
  v5(v7, 0);
  sub_266ECB128(&unk_287889268);
  return sub_2673811CC();
}

uint64_t sub_26711BDEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711BE50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26711BEF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26711BF40()
{
  result = qword_2800F5398;
  if (!qword_2800F5398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5398);
  }

  return result;
}

uint64_t static NLXSchemaCDMCorrectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674632D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674632F0, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_26711C130(uint64_t a1)
{
  v2 = sub_26711C234(&qword_2800F53A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711C198(uint64_t a1, uint64_t a2)
{
  v4 = sub_26711C234(&qword_2800F53A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26711C234(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMCorrectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMDelegatedUserDialogAct.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v41 = sub_26738113C();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v39 = *MEMORY[0x277D3E538];
  v11 = *(v3 + 104);
  v34 = v3 + 104;
  v38 = v11;
  (v11)(v6);
  v43[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v35 = *(v12 - 8);
  v13 = *(v35 + 56);
  v13(v10, 0, 1, v12);
  v36 = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267463360);
  v14(v43, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v33 = v12;
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496B6E696CLL, 0xE600000000000000);
  v15(v43, 0);
  v32 = "asrHypothesisIndex";
  v17 = v37;
  v16 = v38;
  v18 = v41;
  v38(v37, *MEMORY[0x277D3E530], v41);
  v43[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v32 | 0x8000000000000000);
  v19(v43, 0);
  v32 = "externalParserId";
  v20 = v39;
  v16(v17, v39, v18);
  v43[0] = 1;
  sub_26738114C();
  v21 = v33;
  v13(v10, 0, 1, v33);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v32 | 0x8000000000000000);
  v22(v43, 0);
  v32 = "siriVocabularySpanCount";
  v23 = v37;
  v16(v37, v20, v41);
  v43[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v21);
  v24 = v13;
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v32 | 0x8000000000000000);
  v25(v43, 0);
  type metadata accessor for NLXSchemaCDMRewriteType(0);
  sub_26711CAF0();
  sub_26738120C();
  v13(v10, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x5465746972776572, 0xEB00000000657079);
  v26(v43, 0);
  v38(v23, v39, v41);
  v43[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x80000002674633E0);
  v27(v43, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v42, 0xD000000000000017, 0x80000002674633E0);
  if (!(*(v35 + 48))(v30, 1, v21))
  {
    sub_266ECB128(&unk_287889298);
    sub_26738115C();
  }

  (v29)(v42, 0);
  return v28(v43, 0);
}

uint64_t sub_26711CA2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711CA90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26711CAF0()
{
  result = qword_2800F53A8;
  if (!qword_2800F53A8)
  {
    type metadata accessor for NLXSchemaCDMRewriteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F53A8);
  }

  return result;
}

uint64_t static NLXSchemaCDMDelegatedUserDialogActTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267463440);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0xD000000000000012, 0x8000000267463440);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_2878892C8);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_26711CF64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711CFC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMEntityCandidate.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x797469746E65, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E518], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6373, 0xE500000000000000);
  return v11(v15, 0);
}

uint64_t sub_26711D398(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711D3FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMInternalSpanData.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F53E0, 0x277D58F20);
  sub_266ECAF2C(&qword_2800F53E8, &qword_2800F53E0, 0x277D58F20);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x80000002674634C0);
  v6(v12, 0);
  sub_266ECB294(0, &qword_2800F53F0, 0x277D59120);
  sub_266ECAF2C(&qword_2800F53F8, &qword_2800F53F0, 0x277D59120);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6170536D756C70, 0xEC00000061746144);
  v7(v12, 0);
  sub_266ECB294(0, &qword_2800F5400, 0x277D590E0);
  sub_266ECAF2C(&qword_2800F5408, &qword_2800F5400, 0x277D590E0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x80000002674634E0);
  v8(v12, 0);
  sub_266ECB294(0, &qword_2800F5410, 0x277D590E8);
  sub_266ECAF2C(&qword_2800F5418, &qword_2800F5410, 0x277D590E8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267463500);
  v9(v12, 0);
  sub_266ECB294(0, &qword_2800F5420, 0x277D59038);
  sub_266ECAF2C(&qword_2800F5428, &qword_2800F5420, 0x277D59038);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267463520);
  return v10(v12, 0);
}

uint64_t sub_26711D9EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711DA50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMInternalSpanDataTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5440, 0x277D58F28);
  sub_266ECAF2C(&qword_2800F5448, &qword_2800F5440, 0x277D58F28);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x80000002674634C0);
  return v5(v7, 0);
}

uint64_t sub_26711DCEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711DD50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMLanguageVariantResult.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5460, 0x277D58E40);
  sub_266ECAF2C(&qword_2800F5468, &qword_2800F5460, 0x277D58E40);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674635C0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5470, 0x277D58E50);
  sub_266ECAF2C(&qword_2800F5478, &qword_2800F5470, 0x277D58E50);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65737261506D6463, 0xE900000000000072);
  return v7(v9, 0);
}

uint64_t sub_26711E0C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711E128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMMatcherName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267463610, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267463630, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267463660, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267463680, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x80000002674636B0, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x80000002674636D0, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x80000002674636F0, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x8000000267463720, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ALL, 0x8000000267463740, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001CLL, 0x8000000267463760, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_26711E6F4(uint64_t a1)
{
  v2 = sub_26711E7F8(&qword_2800F5498);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711E75C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26711E7F8(&qword_2800F5498);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26711E7F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMMatcherName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMMatchingSpan.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v26 = a1;
  v1 = sub_26738113C();
  v24 = v1;
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
  v10 = *MEMORY[0x277D3E530];
  v25 = *(v2 + 104);
  v25(v5, v10, v1);
  v23 = v2 + 104;
  v27[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6562616CLL, 0xE500000000000000);
  v13(v27, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  v14(v27, 0);
  v15 = *MEMORY[0x277D3E538];
  v16 = v24;
  v25(v5, v15, v24);
  v27[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6B6F547472617473, 0xEF7865646E496E65);
  v17(v27, 0);
  v25(v5, v15, v16);
  v27[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656B6F54646E65, 0xED00007865646E49);
  v18(v27, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x68706172476F7375, 0xE800000000000000);
  v19(v27, 0);
  type metadata accessor for NLXSchemaCDMMatcherName(0);
  sub_26711F014();
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x4E7265686374616DLL, 0xEC00000073656D61);
  v20(v27, 0);
  sub_266ECB294(0, &qword_2800F5438, 0x277D58E08);
  sub_266ECAF2C(&qword_2800F5430, &qword_2800F5438, 0x277D58E08);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674637B0);
  return v21(v27, 0);
}

uint64_t sub_26711EF50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711EFB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26711F014()
{
  result = qword_2800F5490;
  if (!qword_2800F5490)
  {
    type metadata accessor for NLXSchemaCDMMatcherName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5490);
  }

  return result;
}

uint64_t static NLXSchemaCDMMatchingSpanEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v10 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x49747865746E6F63, 0xE900000000000064);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F54A8, 0x277D58E20);
  sub_266ECAF2C(&qword_2800F54A0, &qword_2800F54A8, 0x277D58E20);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x676E69686374616DLL, 0xED0000736E617053);
  v7(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v8(v11, 0);
}

uint64_t sub_26711F40C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711F470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMMatchingSpanEndedTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F54C0, 0x277D58E38);
  sub_266ECAF2C(&qword_2800F54C8, &qword_2800F54C0, 0x277D58E38);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x676E69686374616DLL, 0xED0000736E617053);
  return v7(v9, 0);
}

uint64_t sub_26711F7E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711F848(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMMatchingSpanTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v29 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  v12(v35, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v34, 0x64496B6E696CLL, 0xE600000000000000);
  v15 = *(v11 + 48);
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_2878892F0);
    sub_26738115C();
  }

  (v14)(v34, 0);
  v13(v35, 0);
  v17 = *(v33 + 104);
  v28 = *MEMORY[0x277D3E530];
  v33 += 104;
  v27 = v17;
  v17(v31);
  v35[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7475706E69, 0xE500000000000000);
  v18(v35, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v34, 0x7475706E69, 0xE500000000000000);
  if (!v15(v21, 1, v10))
  {
    sub_266ECB128(&unk_287889318);
    sub_26738115C();
  }

  (v20)(v34, 0);
  v19(v35, 0);
  sub_266ECB294(0, &qword_2800F5458, 0x277D58E10);
  sub_266ECAF2C(&qword_2800F5450, &qword_2800F5458, 0x277D58E10);
  sub_26738120C();
  v22 = v30;
  v30(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674637B0);
  v23(v35, 0);
  v27(v31, v28, v32);
  v35[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6369746E616D6573, 0xED000065756C6156);
  return v24(v35, 0);
}

uint64_t sub_26711FEF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711FF5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMMemoryPressure.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674638A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x80000002674638C0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x80000002674638E0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x8000000267463900, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267120284(uint64_t a1)
{
  v2 = sub_267120388(&qword_2800F54E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671202EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267120388(&qword_2800F54E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267120388(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMMemoryPressure(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMMultilingualVariant.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v18 = "iri.nlx.CDMMultilingualVariant";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v19[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v18 | 0x8000000000000000);
  v14(v19, 0);
  v11(v6, *MEMORY[0x277D3E518], v2);
  v19[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x8000000267463970);
  return v15(v19, 0);
}

uint64_t sub_267120700(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267120764(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671207C8()
{
  result = qword_2800F5468;
  if (!qword_2800F5468)
  {
    sub_267120820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5468);
  }

  return result;
}

unint64_t sub_267120820()
{
  result = qword_2800F5460;
  if (!qword_2800F5460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5460);
  }

  return result;
}

uint64_t static NLXSchemaCDMNLContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F54E8, 0x277D58F88);
  sub_266ECAF2C(&qword_2800F54F0, &qword_2800F54E8, 0x277D58F88);
  v6 = a1;
  sub_26738122C();
  v7 = sub_26738116C();
  v17[0] = *(v7 - 8);
  v8 = *(v17[0] + 56);
  v8(v5, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6154657669746361, 0xEB00000000736B73);
  v9(v19, 0);
  sub_26738122C();
  v8(v5, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465747563657865, 0xED0000736B736154);
  v10(v19, 0);
  sub_266ECB294(0, &qword_2800F53D8, 0x277D58E00);
  sub_266ECAF2C(&qword_2800F53D0, &qword_2800F53D8, 0x277D58E00);
  v17[1] = v6;
  sub_26738122C();
  v8(v5, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x45746E65696C6173, 0xEF7365697469746ELL);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x45746E65696C6173, 0xEF7365697469746ELL);
  if (!(*(v17[0] + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287889340);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F54F8, 0x277D58F48);
  sub_266ECAF2C(&qword_2800F5500, &qword_2800F54F8, 0x277D58F48);
  sub_26738122C();
  v8(v5, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x80000002674639C0);
  return v15(v19, 0);
}

uint64_t sub_267120D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267120DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMParser.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMParserAlgorithmType(0);
  sub_267121218(&qword_2800F5518, type metadata accessor for NLXSchemaCDMParserAlgorithmType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x687469726F676C61, 0xE90000000000006DLL);
  v6(v9, 0);
  type metadata accessor for NLXSchemaCDMParserIdentifier(0);
  sub_267121218(&qword_2800F5520, type metadata accessor for NLXSchemaCDMParserIdentifier);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449726573726170, 0xE800000000000000);
  return v7(v9, 0);
}

uint64_t sub_26712110C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267121170(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267121218(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267121260()
{
  result = qword_2800F5470;
  if (!qword_2800F5470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5470);
  }

  return result;
}

uint64_t static NLXSchemaCDMParserAlgorithmType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267463A40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267463A60, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267463A80, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267463AA0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267121534(uint64_t a1)
{
  v2 = sub_267121638(&qword_2800F5528);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26712159C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267121638(&qword_2800F5528);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267121638(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMParserAlgorithmType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMParserIdentifier.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267463AF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v94;

  v1(v108, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267463B10, v11);
  v12 = *v9;
  *v9 = v95;

  v7(v108, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267463B30, v17);
  v18 = *v15;
  *v15 = v96;

  v13(v108, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267463B50, v23);
  v24 = *v21;
  *v21 = v97;

  v19(v108, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267463B70, v29);
  v30 = *v27;
  *v27 = v98;

  v25(v108, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267463B90, v35);
  v36 = *v33;
  *v33 = v99;

  v31(v108, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267463BC0, v41);
  v42 = *v39;
  *v39 = v100;

  v37(v108, 0);
  v43 = sub_266ECB128(&unk_287889368);
  v45 = v44;
  v46 = sub_2673810FC();
  v48 = v47;
  v49 = *v47;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v48;
  *v48 = 0x8000000000000000;
  sub_266ECD4CC(v43, v45, 6, v50);
  *v48 = v101;
  v46(v108, 0);
  v51 = sub_26738111C();
  v53 = v52;
  v54 = *v52;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v53;
  *v53 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x8000000267463BF0, v55);
  v56 = *v53;
  *v53 = v102;

  v51(v108, 0);
  v57 = sub_266ECB128(&unk_287889398);
  v59 = v58;
  v60 = sub_2673810FC();
  v62 = v61;
  v63 = *v61;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v62;
  *v62 = 0x8000000000000000;
  sub_266ECD4CC(v57, v59, 7, v64);
  *v62 = v103;
  v60(v108, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = *v66;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267463C10, v69);
  v70 = *v67;
  *v67 = v104;

  v65(v108, 0);
  v71 = sub_266ECB128(&unk_2878893C8);
  v73 = v72;
  v74 = sub_2673810FC();
  v76 = v75;
  v77 = *v75;
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v76;
  *v76 = 0x8000000000000000;
  sub_266ECD4CC(v71, v73, 8, v78);
  *v76 = v105;
  v74(v108, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000017, 0x8000000267463C30, v83);
  v84 = *v81;
  *v81 = v106;

  v79(v108, 0);
  v85 = sub_266ECB128(&unk_2878893F8);
  v87 = v86;
  v88 = sub_2673810FC();
  v90 = v89;
  v91 = *v89;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v90;
  *v90 = 0x8000000000000000;
  sub_266ECD4CC(v85, v87, 9, v92);
  *v90 = v107;
  return v88(v108, 0);
}

uint64_t sub_267121D68(uint64_t a1)
{
  v2 = sub_267121E6C(&qword_2800F5530);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267121DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267121E6C(&qword_2800F5530);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267121E6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMParserIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMReformedTurnInputBundle.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaCDMReformType(0);
  sub_267122330();
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 1701869940, 0xE400000000000000);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800F5540, 0x277D58FB0);
  sub_266ECAF2C(&qword_2800F5548, &qword_2800F5540, 0x277D58FB0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x54746E6572727563, 0xEB000000006E7275);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E538], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267463C90);
  return v12(v16, 0);
}

uint64_t sub_26712226C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671222D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267122330()
{
  result = qword_2800F5538;
  if (!qword_2800F5538)
  {
    type metadata accessor for NLXSchemaCDMReformType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5538);
  }

  return result;
}

uint64_t static NLXSchemaCDMReformType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267463CE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267463D00, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267463D20, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267463D50, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267463D80, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671226C0(uint64_t a1)
{
  v2 = sub_2671227C4(&qword_2800F5550);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267122728(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671227C4(&qword_2800F5550);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671227C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMReformType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMRepetitionResult.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267463360);
  v11(v14, 0);
  type metadata accessor for NLXSchemaCDMRepetitionType(0);
  sub_267122C44(&qword_2800F5558, type metadata accessor for NLXSchemaCDMRepetitionType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974697465706572, 0xEE00657079546E6FLL);
  return v12(v14, 0);
}

uint64_t sub_267122B38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267122B9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267122C44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267122C8C()
{
  result = qword_2800F5568;
  if (!qword_2800F5568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5568);
  }

  return result;
}

uint64_t static NLXSchemaCDMRepetitionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267463E00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267463E20, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267463E40, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267463E60, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267463E80, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267122FD0(uint64_t a1)
{
  v2 = sub_2671230D4(&qword_2800F5570);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267123038(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671230D4(&qword_2800F5570);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671230D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMRepetitionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F5578, 0x277D58E80);
  sub_266ECAF2C(&qword_2800F5580, &qword_2800F5578, 0x277D58E80);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F5588, 0x277D58E70);
  sub_266ECAF2C(&qword_2800F5590, &qword_2800F5588, 0x277D58E70);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F5598, 0x277D58E78);
  sub_266ECAF2C(&qword_2800F55A0, &qword_2800F5598, 0x277D58E78);
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

uint64_t sub_267123630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267123694(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F55B8, 0x277D58FD8);
  sub_266ECAF2C(&qword_2800F55C0, &qword_2800F55B8, 0x277D58FD8);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x736573726170, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5488, 0x277D58E18);
  sub_266ECAF2C(&qword_2800F5480, &qword_2800F5488, 0x277D58E18);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001FLL, 0x8000000267463F00);
  return v7(v9, 0);
}

uint64_t sub_267123A04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267123A68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMRequestFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_26738113C();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMRequestFailureCode(0);
  sub_267124224(&qword_2800F55C8, type metadata accessor for NLXSchemaCDMRequestFailureCode);
  v38 = a1;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 1701080931, 0xE400000000000000);
  v15(v41, 0);
  v16 = *MEMORY[0x277D3E508];
  v17 = *(v4 + 104);
  v34 = v4 + 104;
  v31 = v17;
  v17(v7, v16, v39);
  v41[0] = 1;
  v35 = v7;
  sub_26738114C();
  v33 = v14;
  v14(v11, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C616E696769726FLL, 0xEC00000065646F43);
  v18(v41, 0);
  v36 = a2;
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v40, 0x6C616E696769726FLL, 0xEC00000065646F43);
  v21 = *(v13 + 48);
  v37 = v13 + 48;
  v32 = v21;
  if (!v21(v22, 1, v12))
  {
    sub_266ECB128(&unk_287889428);
    sub_26738115C();
  }

  (v20)(v40, 0);
  v19(v41, 0);
  v31(v35, v16, v39);
  v41[0] = 1;
  sub_26738114C();
  v23 = v33;
  v33(v11, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x646F43726F727265, 0xE900000000000065);
  v24(v41, 0);
  type metadata accessor for NLXSchemaCDMServiceGraphErrorDomain(0);
  sub_267124224(&qword_2800F55D0, type metadata accessor for NLXSchemaCDMServiceGraphErrorDomain);
  sub_26738120C();
  v23(v11, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D6F44726F727265, 0xEB000000006E6961);
  v25(v41, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v40, 0x6D6F44726F727265, 0xEB000000006E6961);
  if (!v32(v28, 1, v12))
  {
    sub_266ECB128(&unk_287889450);
    sub_26738115C();
  }

  (v27)(v40, 0);
  return v26(v41, 0);
}

uint64_t sub_267124118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712417C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267124224(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26712426C()
{
  result = qword_2800F5598;
  if (!qword_2800F5598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5598);
  }

  return result;
}

uint64_t static NLXSchemaCDMRequestFailureCode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267463F80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v136;

  v1(v156, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267463FA0, v11);
  v12 = *v9;
  *v9 = v137;

  v7(v156, 0);
  v13 = sub_266ECB128(&unk_287889480);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = *v17;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 1, v20);
  *v18 = v138;
  v16(v156, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = *v22;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267463FC0, v25);
  v26 = *v23;
  *v23 = v139;

  v21(v156, 0);
  v27 = sub_266ECB128(&unk_2878894A8);
  v29 = v28;
  v30 = sub_2673810FC();
  v32 = v31;
  v33 = *v31;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v32;
  *v32 = 0x8000000000000000;
  sub_266ECD4CC(v27, v29, 2, v34);
  *v32 = v140;
  v30(v156, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = *v36;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267463FF0, v39);
  v40 = *v37;
  *v37 = v141;

  v35(v156, 0);
  v41 = sub_266ECB128(&unk_2878894D0);
  v43 = v42;
  v44 = sub_2673810FC();
  v46 = v45;
  v47 = *v45;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v46;
  *v46 = 0x8000000000000000;
  sub_266ECD4CC(v41, v43, 3, v48);
  *v46 = v142;
  v44(v156, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267464020, v53);
  v54 = *v51;
  *v51 = v143;

  v49(v156, 0);
  v55 = sub_266ECB128(&unk_2878894F8);
  v57 = v56;
  v58 = sub_2673810FC();
  v60 = v59;
  v61 = *v59;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v60;
  *v60 = 0x8000000000000000;
  sub_266ECD4CC(v55, v57, 4, v62);
  *v60 = v144;
  v58(v156, 0);
  v63 = sub_26738111C();
  v65 = v64;
  v66 = *v64;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v65;
  *v65 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x8000000267464050, v67);
  v68 = *v65;
  *v65 = v145;

  v63(v156, 0);
  v69 = sub_266ECB128(&unk_287889520);
  v71 = v70;
  v72 = sub_2673810FC();
  v74 = v73;
  v75 = *v73;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v74;
  *v74 = 0x8000000000000000;
  sub_266ECD4CC(v69, v71, 5, v76);
  *v74 = v146;
  v72(v156, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = *v78;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ELL, 0x8000000267464080, v81);
  v82 = *v79;
  *v79 = v147;

  v77(v156, 0);
  v83 = sub_266ECB128(&unk_287889548);
  v85 = v84;
  v86 = sub_2673810FC();
  v88 = v87;
  v89 = *v87;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v88;
  *v88 = 0x8000000000000000;
  sub_266ECD4CC(v83, v85, 6, v90);
  *v88 = v148;
  v86(v156, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x80000002674640B0, v95);
  v96 = *v93;
  *v93 = v149;

  v91(v156, 0);
  v97 = sub_266ECB128(&unk_287889570);
  v99 = v98;
  v100 = sub_2673810FC();
  v102 = v101;
  v103 = *v101;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v102;
  *v102 = 0x8000000000000000;
  sub_266ECD4CC(v97, v99, 7, v104);
  *v102 = v150;
  v100(v156, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = *v106;
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x80000002674640E0, v109);
  v110 = *v107;
  *v107 = v151;

  v105(v156, 0);
  v111 = sub_26738111C();
  v113 = v112;
  v114 = *v112;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v113;
  *v113 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000029, 0x8000000267464110, v115);
  v116 = *v113;
  *v113 = v152;

  v111(v156, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = *v118;
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x8000000267464140, v121);
  v122 = *v119;
  *v119 = v153;

  v117(v156, 0);
  v123 = sub_26738111C();
  v125 = v124;
  v126 = *v124;
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v125;
  *v125 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002CLL, 0x8000000267464170, v127);
  v128 = *v125;
  *v125 = v154;

  v123(v156, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = *v130;
  v133 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000002CLL, 0x80000002674641A0, v133);
  v134 = *v131;
  *v131 = v155;

  return v129(v156, 0);
}

uint64_t sub_267124C48(uint64_t a1)
{
  v2 = sub_267124D4C(&qword_2800F55D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267124CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267124D4C(&qword_2800F55D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267124D4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMRequestFailureCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v19 = *(v0 - 8);
  v20 = v0;
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0);
  v18 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v17 = "iri.nlx.CDMRequestStarted";
  sub_266ECB294(0, &qword_2800F5540, 0x277D58FB0);
  sub_266ECAF2C(&qword_2800F5548, &qword_2800F5540, 0x277D58FB0);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, v17 | 0x8000000000000000);
  v10(v22, 0);
  type metadata accessor for NLXSchemaCDMServiceGraphName(0);
  sub_2671252D0();
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267463050);
  v11(v22, 0);
  (*(v19 + 104))(v18, *MEMORY[0x277D3E530], v20);
  v22[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x80000002674206B0);
  v12(v22, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0xD000000000000014, 0x80000002674206B0);
  if (!(*(v8 + 48))(v15, 1, v7))
  {
    sub_266ECB128(&unk_287889598);
    sub_26738115C();
  }

  (v14)(v21, 0);
  return v13(v22, 0);
}

uint64_t sub_26712520C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267125270(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671252D0()
{
  result = qword_2800F5308;
  if (!qword_2800F5308)
  {
    type metadata accessor for NLXSchemaCDMServiceGraphName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5308);
  }

  return result;
}

uint64_t static NLXSchemaCDMRewriteType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267464250, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267464270, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x8000000267464290, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x80000002674642B0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000012, 0x80000002674642D0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267125668(uint64_t a1)
{
  v2 = sub_26712576C(&qword_2800F55E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671256D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26712576C(&qword_2800F55E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26712576C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMRewriteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F55E8, 0x277D58EC0);
  sub_266ECAF2C(&qword_2800F55F0, &qword_2800F55E8, 0x277D58EC0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F55F8, 0x277D58E90);
  sub_266ECAF2C(&qword_2800F5600, &qword_2800F55F8, 0x277D58E90);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F5608, 0x277D58E98);
  sub_266ECAF2C(&qword_2800F5610, &qword_2800F5608, 0x277D58E98);
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
  v14(v26, 0);
  sub_266ECB128(&unk_2878895C8);
  return sub_2673811CC();
}

uint64_t sub_267125DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267125E04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMServiceEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671260F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267126154(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671261B8()
{
  result = qword_2800F5600;
  if (!qword_2800F5600)
  {
    sub_267126210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5600);
  }

  return result;
}

unint64_t sub_267126210()
{
  result = qword_2800F55F8;
  if (!qword_2800F55F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F55F8);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NLXSchemaCDMServiceFailureCode(0);
  sub_26712668C(&qword_2800F5628, type metadata accessor for NLXSchemaCDMServiceFailureCode);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 1701080931, 0xE400000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E508], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v11(v15, 0);
}

uint64_t sub_267126580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671265E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26712668C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2671266D4()
{
  result = qword_2800F5608;
  if (!qword_2800F5608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5608);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceFailureCode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674643B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674643D0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267464400, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x8000000267464430, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267464460, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x8000000267464480, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_267126A84(uint64_t a1)
{
  v2 = sub_267126B88(&qword_2800F5630);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267126AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267126B88(&qword_2800F5630);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267126B88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMServiceFailureCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceGraphErrorDomain.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000022, 0x80000002674644F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v140;

  v1(v163, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267464520, v11);
  v12 = *v9;
  *v9 = v141;

  v7(v163, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267464540, v17);
  v18 = *v15;
  *v15 = v142;

  v13(v163, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x8000000267464570, v23);
  v24 = *v21;
  *v21 = v143;

  v19(v163, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x80000002674645A0, v29);
  v30 = *v27;
  *v27 = v144;

  v25(v163, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x80000002674645C0, v35);
  v36 = *v33;
  *v33 = v145;

  v31(v163, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x80000002674645E0, v41);
  v42 = *v39;
  *v39 = v146;

  v37(v163, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267464600, v47);
  v48 = *v45;
  *v45 = v147;

  v43(v163, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x8000000267464620, v53);
  v54 = *v51;
  *v51 = v148;

  v49(v163, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000027, 0x8000000267464650, v59);
  v60 = *v57;
  *v57 = v149;

  v55(v163, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x8000000267464680, v65);
  v66 = *v63;
  *v63 = v150;

  v61(v163, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000023, 0x80000002674646A0, v71);
  v72 = *v69;
  *v69 = v151;

  v67(v163, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001FLL, 0x80000002674646D0, v77);
  v78 = *v75;
  *v75 = v152;

  v73(v163, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x80000002674646F0, v83);
  v84 = *v81;
  *v81 = v153;

  v79(v163, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000024, 0x8000000267464710, v89);
  v90 = *v87;
  *v87 = v154;

  v85(v163, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000025, 0x8000000267464740, v95);
  v96 = *v93;
  *v93 = v155;

  v91(v163, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000024, 0x8000000267464770, v101);
  v102 = *v99;
  *v99 = v156;

  v97(v163, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000023, 0x80000002674647A0, v107);
  v108 = *v105;
  *v105 = v157;

  v103(v163, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000002FLL, 0x80000002674647D0, v113);
  v114 = *v111;
  *v111 = v158;

  v109(v163, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000002CLL, 0x8000000267464800, v119);
  v120 = *v117;
  *v117 = v159;

  v115(v163, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000002BLL, 0x8000000267464830, v125);
  v126 = *v123;
  *v123 = v160;

  v121(v163, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000029, 0x8000000267464860, v131);
  v132 = *v129;
  *v129 = v161;

  v127(v163, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000032, 0x8000000267464890, v137);
  v138 = *v135;
  *v135 = v162;

  return v133(v163, 0);
}

uint64_t sub_2671276BC(uint64_t a1)
{
  v2 = sub_2671277C0(&qword_2800F5638);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267127724(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671277C0(&qword_2800F5638);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671277C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMServiceGraphErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceGraphName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267464900, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v114;

  v1(v130, 0);
  v7 = sub_266ECB128(&unk_2878895F0);
  v9 = v8;
  v10 = sub_2673810FC();
  v12 = v11;
  v13 = *v11;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v12;
  *v12 = 0x8000000000000000;
  sub_266ECD4CC(v7, v9, 0, v14);
  *v12 = v115;
  v10(v130, 0);
  v15 = sub_26738111C();
  v17 = v16;
  v18 = *v16;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v17;
  *v17 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267464920, v19);
  v20 = *v17;
  *v17 = v116;

  v15(v130, 0);
  v21 = sub_266ECB128(&unk_287889620);
  v23 = v22;
  v24 = sub_2673810FC();
  v26 = v25;
  v27 = *v25;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v26;
  *v26 = 0x8000000000000000;
  sub_266ECD4CC(v21, v23, 1, v28);
  *v26 = v117;
  v24(v130, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = *v30;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x8000000267464940, v33);
  v34 = *v31;
  *v31 = v118;

  v29(v130, 0);
  v35 = sub_266ECB128(&unk_287889650);
  v37 = v36;
  v38 = sub_2673810FC();
  v40 = v39;
  v41 = *v39;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v40;
  *v40 = 0x8000000000000000;
  sub_266ECD4CC(v35, v37, 2, v42);
  *v40 = v119;
  v38(v130, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267464970, v47);
  v48 = *v45;
  *v45 = v120;

  v43(v130, 0);
  v49 = sub_266ECB128(&unk_287889680);
  v51 = v50;
  v52 = sub_2673810FC();
  v54 = v53;
  v55 = *v53;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v54;
  *v54 = 0x8000000000000000;
  sub_266ECD4CC(v49, v51, 3, v56);
  *v54 = v121;
  v52(v130, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = *v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267464990, v61);
  v62 = *v59;
  *v59 = v122;

  v57(v130, 0);
  v63 = sub_266ECB128(&unk_2878896B0);
  v65 = v64;
  v66 = sub_2673810FC();
  v68 = v67;
  v69 = *v67;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v68;
  *v68 = 0x8000000000000000;
  sub_266ECD4CC(v63, v65, 4, v70);
  *v68 = v123;
  v66(v130, 0);
  v71 = sub_26738111C();
  v73 = v72;
  v74 = *v72;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v73;
  *v73 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x80000002674649B0, v75);
  v76 = *v73;
  *v73 = v124;

  v71(v130, 0);
  v77 = sub_266ECB128(&unk_2878896E0);
  v79 = v78;
  v80 = sub_2673810FC();
  v82 = v81;
  v83 = *v81;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v82;
  *v82 = 0x8000000000000000;
  sub_266ECD4CC(v77, v79, 5, v84);
  *v82 = v125;
  v80(v130, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x80000002674649D0, v89);
  v90 = *v87;
  *v87 = v126;

  v85(v130, 0);
  v91 = sub_266ECB128(&unk_287889710);
  v93 = v92;
  v94 = sub_2673810FC();
  v96 = v95;
  v97 = *v95;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v96;
  *v96 = 0x8000000000000000;
  sub_266ECD4CC(v91, v93, 6, v98);
  *v96 = v127;
  v94(v130, 0);
  v99 = sub_26738111C();
  v101 = v100;
  v102 = *v100;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v101;
  *v101 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x8000000267464A00, v103);
  v104 = *v101;
  *v101 = v128;

  v99(v130, 0);
  v105 = sub_266ECB128(&unk_287889740);
  v107 = v106;
  v108 = sub_2673810FC();
  v110 = v109;
  v111 = *v109;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v110;
  *v110 = 0x8000000000000000;
  sub_266ECD4CC(v105, v107, 7, v112);
  *v110 = v129;
  return v108(v130, 0);
}

uint64_t sub_267127FD8(uint64_t a1)
{
  v2 = sub_2671280DC(&qword_2800F5640);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267128040(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671280DC(&qword_2800F5640);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671280DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMServiceGraphName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceHandleMetric.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v30 = a2;
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceName(0);
  sub_2671287EC(&qword_2800F5648, type metadata accessor for NLXSchemaCDMServiceName);
  sub_26738120C();
  v31 = sub_26738116C();
  v12 = *(v31 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v11, 0, 1, v31);
  v28 = v13;
  v29 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x4E65636976726573, 0xEB00000000656D61);
  v15(v36, 0);
  v27 = "iri.nlx.CDMServiceHandleMetric";
  v16 = *MEMORY[0x277D3E510];
  v17 = *(v4 + 104);
  v26 = v7;
  v33 = v3;
  v17(v7, v16, v3);
  v32 = v17;
  v34 = v4 + 104;
  v36[0] = 1;
  sub_26738114C();
  v18 = v31;
  v13(v11, 0, 1, v31);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v27 | 0x8000000000000000);
  v19(v36, 0);
  v27 = "startLogicalTimestampInNs";
  v20 = v26;
  v17(v26, v16, v3);
  v36[0] = 1;
  sub_26738114C();
  v21 = v28;
  v28(v11, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v27 | 0x8000000000000000);
  v22(v36, 0);
  type metadata accessor for NLXSchemaCDMServiceFailureCode(0);
  sub_2671287EC(&qword_2800F5628, type metadata accessor for NLXSchemaCDMServiceFailureCode);
  sub_26738120C();
  v21(v11, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x526572756C696166, 0xED00006E6F736165);
  v23(v36, 0);
  v32(v20, *MEMORY[0x277D3E508], v33);
  v36[0] = 1;
  sub_26738114C();
  v21(v11, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x646F43726F727265, 0xE900000000000065);
  return v24(v36, 0);
}

uint64_t sub_2671286E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267128744(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671287EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267128834()
{
  result = qword_2800F5658;
  if (!qword_2800F5658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5658);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceHandleMetricsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5658, 0x277D58EA0);
  sub_266ECAF2C(&qword_2800F5650, &qword_2800F5658, 0x277D58EA0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x654D656C646E6168, 0xED00007363697274);
  return v5(v7, 0);
}

uint64_t sub_267128A60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5658, 0x277D58EA0);
  sub_266ECAF2C(&qword_2800F5650, &qword_2800F5658, 0x277D58EA0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x654D656C646E6168, 0xED00007363697274);
  return v5(v7, 0);
}

uint64_t sub_267128C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267128C6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMServiceName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v478 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267464B00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v478;

  v1(v548, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v479 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267464B20, v11);
  v12 = *v9;
  *v9 = v479;

  v7(v548, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v480 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267464B40, v17);
  v18 = *v15;
  *v15 = v480;

  v13(v548, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v481 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267464B70, v23);
  v24 = *v21;
  *v21 = v481;

  v19(v548, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v482 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267464B90, v29);
  v30 = *v27;
  *v27 = v482;

  v25(v548, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v483 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x8000000267464BB0, v35);
  v36 = *v33;
  *v33 = v483;

  v31(v548, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v484 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x8000000267464BD0, v41);
  v42 = *v39;
  *v39 = v484;

  v37(v548, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v485 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267464BF0, v47);
  v48 = *v45;
  *v45 = v485;

  v43(v548, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v486 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x8000000267464C10, v53);
  v54 = *v51;
  *v51 = v486;

  v49(v548, 0);
  v55 = sub_266ECB128(&unk_287889770);
  v57 = v56;
  v58 = sub_2673810FC();
  v60 = v59;
  v61 = *v59;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v487 = *v60;
  *v60 = 0x8000000000000000;
  sub_266ECD4CC(v55, v57, 8, v62);
  *v60 = v487;
  v58(v548, 0);
  v63 = sub_26738111C();
  v65 = v64;
  v66 = *v64;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v488 = *v65;
  *v65 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x8000000267464C30, v67);
  v68 = *v65;
  *v65 = v488;

  v63(v548, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = *v70;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v489 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001DLL, 0x8000000267464C50, v73);
  v74 = *v71;
  *v71 = v489;

  v69(v548, 0);
  v75 = sub_26738111C();
  v77 = v76;
  v78 = *v76;
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v490 = *v77;
  *v77 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000018, 0x8000000267464C70, v79);
  v80 = *v77;
  *v77 = v490;

  v75(v548, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = *v82;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v491 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000023, 0x8000000267464C90, v85);
  v86 = *v83;
  *v83 = v491;

  v81(v548, 0);
  v87 = sub_26738111C();
  v89 = v88;
  v90 = *v88;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v492 = *v89;
  *v89 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001BLL, 0x8000000267464CC0, v91);
  v92 = *v89;
  *v89 = v492;

  v87(v548, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = *v94;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v493 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000017, 0x8000000267464CE0, v97);
  v98 = *v95;
  *v95 = v493;

  v93(v548, 0);
  v99 = sub_26738111C();
  v101 = v100;
  v102 = *v100;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v494 = *v101;
  *v101 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002BLL, 0x8000000267464D00, v103);
  v104 = *v101;
  *v101 = v494;

  v99(v548, 0);
  v105 = sub_266ECB128(&unk_287889798);
  v107 = v106;
  v108 = sub_2673810FC();
  v110 = v109;
  v111 = *v109;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v495 = *v110;
  *v110 = 0x8000000000000000;
  sub_266ECD4CC(v105, v107, 15, v112);
  *v110 = v495;
  v108(v548, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = *v114;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v496 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000013, 0x8000000267464D30, v117);
  v118 = *v115;
  *v115 = v496;

  v113(v548, 0);
  v119 = sub_266ECB128(&unk_2878897C8);
  v121 = v120;
  v122 = sub_2673810FC();
  v124 = v123;
  v125 = *v123;
  v126 = swift_isUniquelyReferenced_nonNull_native();
  v497 = *v124;
  *v124 = 0x8000000000000000;
  sub_266ECD4CC(v119, v121, 16, v126);
  *v124 = v497;
  v122(v548, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v498 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000020, 0x8000000267464D50, v131);
  v132 = *v129;
  *v129 = v498;

  v127(v548, 0);
  v133 = sub_266ECB128(&unk_2878897F8);
  v135 = v134;
  v136 = sub_2673810FC();
  v138 = v137;
  v139 = *v137;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v499 = *v138;
  *v138 = 0x8000000000000000;
  sub_266ECD4CC(v133, v135, 17, v140);
  *v138 = v499;
  v136(v548, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = *v142;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v500 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001CLL, 0x8000000267464D80, v145);
  v146 = *v143;
  *v143 = v500;

  v141(v548, 0);
  v147 = sub_266ECB128(&unk_287889828);
  v149 = v148;
  v150 = sub_2673810FC();
  v152 = v151;
  v153 = *v151;
  v154 = swift_isUniquelyReferenced_nonNull_native();
  v501 = *v152;
  *v152 = 0x8000000000000000;
  sub_266ECD4CC(v147, v149, 18, v154);
  *v152 = v501;
  v150(v548, 0);
  v155 = sub_26738111C();
  v157 = v156;
  v158 = *v156;
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v502 = *v157;
  *v157 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000025, 0x8000000267464DA0, v159);
  v160 = *v157;
  *v157 = v502;

  v155(v548, 0);
  v161 = sub_266ECB128(&unk_287889858);
  v163 = v162;
  v164 = sub_2673810FC();
  v166 = v165;
  v167 = *v165;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v503 = *v166;
  *v166 = 0x8000000000000000;
  sub_266ECD4CC(v161, v163, 20, v168);
  *v166 = v503;
  v164(v548, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v504 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001BLL, 0x8000000267464DD0, v173);
  v174 = *v171;
  *v171 = v504;

  v169(v548, 0);
  v175 = sub_266ECB128(&unk_287889888);
  v177 = v176;
  v178 = sub_2673810FC();
  v180 = v179;
  v181 = *v179;
  v182 = swift_isUniquelyReferenced_nonNull_native();
  v505 = *v180;
  *v180 = 0x8000000000000000;
  sub_266ECD4CC(v175, v177, 21, v182);
  *v180 = v505;
  v178(v548, 0);
  v183 = sub_26738111C();
  v185 = v184;
  v186 = *v184;
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v506 = *v185;
  *v185 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001BLL, 0x8000000267464DF0, v187);
  v188 = *v185;
  *v185 = v506;

  v183(v548, 0);
  v189 = sub_266ECB128(&unk_2878898B8);
  v191 = v190;
  v192 = sub_2673810FC();
  v194 = v193;
  v195 = *v193;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v507 = *v194;
  *v194 = 0x8000000000000000;
  sub_266ECD4CC(v189, v191, 22, v196);
  *v194 = v507;
  v192(v548, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = *v198;
  v201 = swift_isUniquelyReferenced_nonNull_native();
  v508 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001BLL, 0x8000000267464E10, v201);
  v202 = *v199;
  *v199 = v508;

  v197(v548, 0);
  v203 = sub_266ECB128(&unk_2878898E8);
  v205 = v204;
  v206 = sub_2673810FC();
  v208 = v207;
  v209 = *v207;
  v210 = swift_isUniquelyReferenced_nonNull_native();
  v509 = *v208;
  *v208 = 0x8000000000000000;
  sub_266ECD4CC(v203, v205, 23, v210);
  *v208 = v509;
  v206(v548, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v510 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000026, 0x8000000267464E30, v215);
  v216 = *v213;
  *v213 = v510;

  v211(v548, 0);
  v217 = sub_266ECB128(&unk_287889918);
  v219 = v218;
  v220 = sub_2673810FC();
  v222 = v221;
  v223 = *v221;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v511 = *v222;
  *v222 = 0x8000000000000000;
  sub_266ECD4CC(v217, v219, 24, v224);
  *v222 = v511;
  v220(v548, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = *v226;
  v229 = swift_isUniquelyReferenced_nonNull_native();
  v512 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000024, 0x8000000267464E60, v229);
  v230 = *v227;
  *v227 = v512;

  v225(v548, 0);
  v231 = sub_266ECB128(&unk_287889948);
  v233 = v232;
  v234 = sub_2673810FC();
  v236 = v235;
  v237 = *v235;
  v238 = swift_isUniquelyReferenced_nonNull_native();
  v513 = *v236;
  *v236 = 0x8000000000000000;
  sub_266ECD4CC(v231, v233, 25, v238);
  *v236 = v513;
  v234(v548, 0);
  v239 = sub_26738111C();
  v241 = v240;
  v242 = *v240;
  v243 = swift_isUniquelyReferenced_nonNull_native();
  v514 = *v241;
  *v241 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001CLL, 0x8000000267464E90, v243);
  v244 = *v241;
  *v241 = v514;

  v239(v548, 0);
  v245 = sub_266ECB128(&unk_287889978);
  v247 = v246;
  v248 = sub_2673810FC();
  v250 = v249;
  v251 = *v249;
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v515 = *v250;
  *v250 = 0x8000000000000000;
  sub_266ECD4CC(v245, v247, 26, v252);
  *v250 = v515;
  v248(v548, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v516 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001CLL, 0x8000000267464EB0, v257);
  v258 = *v255;
  *v255 = v516;

  v253(v548, 0);
  v259 = sub_266ECB128(&unk_2878899A8);
  v261 = v260;
  v262 = sub_2673810FC();
  v264 = v263;
  v265 = *v263;
  v266 = swift_isUniquelyReferenced_nonNull_native();
  v517 = *v264;
  *v264 = 0x8000000000000000;
  sub_266ECD4CC(v259, v261, 27, v266);
  *v264 = v517;
  v262(v548, 0);
  v267 = sub_26738111C();
  v269 = v268;
  v270 = *v268;
  v271 = swift_isUniquelyReferenced_nonNull_native();
  v518 = *v269;
  *v269 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000025, 0x8000000267464ED0, v271);
  v272 = *v269;
  *v269 = v518;

  v267(v548, 0);
  v273 = sub_266ECB128(&unk_2878899D8);
  v275 = v274;
  v276 = sub_2673810FC();
  v278 = v277;
  v279 = *v277;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v519 = *v278;
  *v278 = 0x8000000000000000;
  sub_266ECD4CC(v273, v275, 28, v280);
  *v278 = v519;
  v276(v548, 0);
  v281 = sub_26738111C();
  v283 = v282;
  v284 = *v282;
  v285 = swift_isUniquelyReferenced_nonNull_native();
  v520 = *v283;
  *v283 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000021, 0x8000000267464F00, v285);
  v286 = *v283;
  *v283 = v520;

  v281(v548, 0);
  v287 = sub_266ECB128(&unk_287889A08);
  v289 = v288;
  v290 = sub_2673810FC();
  v292 = v291;
  v293 = *v291;
  v294 = swift_isUniquelyReferenced_nonNull_native();
  v521 = *v292;
  *v292 = 0x8000000000000000;
  sub_266ECD4CC(v287, v289, 29, v294);
  *v292 = v521;
  v290(v548, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v522 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000002BLL, 0x8000000267464F30, v299);
  v300 = *v297;
  *v297 = v522;

  v295(v548, 0);
  v301 = sub_266ECB128(&unk_287889A38);
  v303 = v302;
  v304 = sub_2673810FC();
  v306 = v305;
  v307 = *v305;
  v308 = swift_isUniquelyReferenced_nonNull_native();
  v523 = *v306;
  *v306 = 0x8000000000000000;
  sub_266ECD4CC(v301, v303, 30, v308);
  *v306 = v523;
  v304(v548, 0);
  v309 = sub_26738111C();
  v311 = v310;
  v312 = *v310;
  v313 = swift_isUniquelyReferenced_nonNull_native();
  v524 = *v311;
  *v311 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001FLL, 0x8000000267464F60, v313);
  v314 = *v311;
  *v311 = v524;

  v309(v548, 0);
  v315 = sub_266ECB128(&unk_287889A68);
  v317 = v316;
  v318 = sub_2673810FC();
  v320 = v319;
  v321 = *v319;
  v322 = swift_isUniquelyReferenced_nonNull_native();
  v525 = *v320;
  *v320 = 0x8000000000000000;
  sub_266ECD4CC(v315, v317, 31, v322);
  *v320 = v525;
  v318(v548, 0);
  v323 = sub_26738111C();
  v325 = v324;
  v326 = *v324;
  v327 = swift_isUniquelyReferenced_nonNull_native();
  v526 = *v325;
  *v325 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000020, 0x8000000267464F80, v327);
  v328 = *v325;
  *v325 = v526;

  v323(v548, 0);
  v329 = sub_266ECB128(&unk_287889A98);
  v331 = v330;
  v332 = sub_2673810FC();
  v334 = v333;
  v335 = *v333;
  v336 = swift_isUniquelyReferenced_nonNull_native();
  v527 = *v334;
  *v334 = 0x8000000000000000;
  sub_266ECD4CC(v329, v331, 32, v336);
  *v334 = v527;
  v332(v548, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v528 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000023, 0x8000000267464FB0, v341);
  v342 = *v339;
  *v339 = v528;

  v337(v548, 0);
  v343 = sub_266ECB128(&unk_287889AC8);
  v345 = v344;
  v346 = sub_2673810FC();
  v348 = v347;
  v349 = *v347;
  v350 = swift_isUniquelyReferenced_nonNull_native();
  v529 = *v348;
  *v348 = 0x8000000000000000;
  sub_266ECD4CC(v343, v345, 33, v350);
  *v348 = v529;
  v346(v548, 0);
  v351 = sub_26738111C();
  v353 = v352;
  v354 = *v352;
  v355 = swift_isUniquelyReferenced_nonNull_native();
  v530 = *v353;
  *v353 = 0x8000000000000000;
  sub_266ECD368(34, 0xD00000000000001DLL, 0x8000000267464FE0, v355);
  v356 = *v353;
  *v353 = v530;

  v351(v548, 0);
  v357 = sub_266ECB128(&unk_287889B00);
  v359 = v358;
  v360 = sub_2673810FC();
  v362 = v361;
  v363 = *v361;
  v364 = swift_isUniquelyReferenced_nonNull_native();
  v531 = *v362;
  *v362 = 0x8000000000000000;
  sub_266ECD4CC(v357, v359, 34, v364);
  *v362 = v531;
  v360(v548, 0);
  v365 = sub_26738111C();
  v367 = v366;
  v368 = *v366;
  v369 = swift_isUniquelyReferenced_nonNull_native();
  v532 = *v367;
  *v367 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000025, 0x8000000267465000, v369);
  v370 = *v367;
  *v367 = v532;

  v365(v548, 0);
  v371 = sub_266ECB128(&unk_287889B38);
  v373 = v372;
  v374 = sub_2673810FC();
  v376 = v375;
  v377 = *v375;
  v378 = swift_isUniquelyReferenced_nonNull_native();
  v533 = *v376;
  *v376 = 0x8000000000000000;
  sub_266ECD4CC(v371, v373, 35, v378);
  *v376 = v533;
  v374(v548, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v534 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000020, 0x8000000267465030, v383);
  v384 = *v381;
  *v381 = v534;

  v379(v548, 0);
  v385 = sub_266ECB128(&unk_287889B70);
  v387 = v386;
  v388 = sub_2673810FC();
  v390 = v389;
  v391 = *v389;
  v392 = swift_isUniquelyReferenced_nonNull_native();
  v535 = *v390;
  *v390 = 0x8000000000000000;
  sub_266ECD4CC(v385, v387, 36, v392);
  *v390 = v535;
  v388(v548, 0);
  v393 = sub_26738111C();
  v395 = v394;
  v396 = *v394;
  v397 = swift_isUniquelyReferenced_nonNull_native();
  v536 = *v395;
  *v395 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001DLL, 0x8000000267465060, v397);
  v398 = *v395;
  *v395 = v536;

  v393(v548, 0);
  v399 = sub_266ECB128(&unk_287889BA8);
  v401 = v400;
  v402 = sub_2673810FC();
  v404 = v403;
  v405 = *v403;
  v406 = swift_isUniquelyReferenced_nonNull_native();
  v537 = *v404;
  *v404 = 0x8000000000000000;
  sub_266ECD4CC(v399, v401, 37, v406);
  *v404 = v537;
  v402(v548, 0);
  v407 = sub_26738111C();
  v409 = v408;
  v410 = *v408;
  v411 = swift_isUniquelyReferenced_nonNull_native();
  v538 = *v409;
  *v409 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001DLL, 0x8000000267465080, v411);
  v412 = *v409;
  *v409 = v538;

  v407(v548, 0);
  v413 = sub_266ECB128(&unk_287889BE0);
  v415 = v414;
  v416 = sub_2673810FC();
  v418 = v417;
  v419 = *v417;
  v420 = swift_isUniquelyReferenced_nonNull_native();
  v539 = *v418;
  *v418 = 0x8000000000000000;
  sub_266ECD4CC(v413, v415, 38, v420);
  *v418 = v539;
  v416(v548, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v540 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(39, 0xD00000000000001BLL, 0x80000002674650A0, v425);
  v426 = *v423;
  *v423 = v540;

  v421(v548, 0);
  v427 = sub_266ECB128(&unk_287889C18);
  v429 = v428;
  v430 = sub_2673810FC();
  v432 = v431;
  v433 = *v431;
  v434 = swift_isUniquelyReferenced_nonNull_native();
  v541 = *v432;
  *v432 = 0x8000000000000000;
  sub_266ECD4CC(v427, v429, 39, v434);
  *v432 = v541;
  v430(v548, 0);
  v435 = sub_26738111C();
  v437 = v436;
  v438 = *v436;
  v439 = swift_isUniquelyReferenced_nonNull_native();
  v542 = *v437;
  *v437 = 0x8000000000000000;
  sub_266ECD368(40, 0xD00000000000001BLL, 0x80000002674650C0, v439);
  v440 = *v437;
  *v437 = v542;

  v435(v548, 0);
  v441 = sub_266ECB128(&unk_287889C50);
  v443 = v442;
  v444 = sub_2673810FC();
  v446 = v445;
  v447 = *v445;
  v448 = swift_isUniquelyReferenced_nonNull_native();
  v543 = *v446;
  *v446 = 0x8000000000000000;
  sub_266ECD4CC(v441, v443, 40, v448);
  *v446 = v543;
  v444(v548, 0);
  v449 = sub_26738111C();
  v451 = v450;
  v452 = *v450;
  v453 = swift_isUniquelyReferenced_nonNull_native();
  v544 = *v451;
  *v451 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001ELL, 0x80000002674650E0, v453);
  v454 = *v451;
  *v451 = v544;

  v449(v548, 0);
  v455 = sub_266ECB128(&unk_287889C88);
  v457 = v456;
  v458 = sub_2673810FC();
  v460 = v459;
  v461 = *v459;
  v462 = swift_isUniquelyReferenced_nonNull_native();
  v545 = *v460;
  *v460 = 0x8000000000000000;
  sub_266ECD4CC(v455, v457, 41, v462);
  *v460 = v545;
  v458(v548, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v546 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000022, 0x8000000267465100, v467);
  v468 = *v465;
  *v465 = v546;

  v463(v548, 0);
  v469 = sub_266ECB128(&unk_287889CC0);
  v471 = v470;
  v472 = sub_2673810FC();
  v474 = v473;
  v475 = *v473;
  v476 = swift_isUniquelyReferenced_nonNull_native();
  v547 = *v474;
  *v474 = 0x8000000000000000;
  sub_266ECD4CC(v469, v471, 42, v476);
  *v474 = v547;
  return v472(v548, 0);
}

uint64_t sub_26712ACDC(uint64_t a1)
{
  v2 = sub_26712ADE0(&qword_2800F5670);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26712AD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_26712ADE0(&qword_2800F5670);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26712ADE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMServiceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceSetupAttemptFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x8000000267465170, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x80000002674651A0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x80000002674651D0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26712B038(uint64_t a1)
{
  v2 = sub_26712B13C(&qword_2800F5680);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26712B0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26712B13C(&qword_2800F5680);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26712B13C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMServiceSetupAttemptFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceSetupMetric.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v30 = a2;
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_26712B84C(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType);
  sub_26738120C();
  v31 = sub_26738116C();
  v12 = *(v31 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v11, 0, 1, v31);
  v28 = v13;
  v29 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x5465636976726573, 0xEB00000000657079);
  v15(v36, 0);
  v27 = "iri.nlx.CDMServiceHandleMetric";
  v16 = *MEMORY[0x277D3E510];
  v17 = *(v4 + 104);
  v26 = v7;
  v33 = v3;
  v17(v7, v16, v3);
  v32 = v17;
  v34 = v4 + 104;
  v36[0] = 1;
  sub_26738114C();
  v18 = v31;
  v13(v11, 0, 1, v31);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v27 | 0x8000000000000000);
  v19(v36, 0);
  v27 = "startLogicalTimestampInNs";
  v20 = v26;
  v17(v26, v16, v3);
  v36[0] = 1;
  sub_26738114C();
  v21 = v28;
  v28(v11, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v27 | 0x8000000000000000);
  v22(v36, 0);
  type metadata accessor for NLXSchemaCDMServiceSetupAttemptFailureReason(0);
  sub_26712B84C(&qword_2800F5678, type metadata accessor for NLXSchemaCDMServiceSetupAttemptFailureReason);
  sub_26738120C();
  v21(v11, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x526572756C696166, 0xED00006E6F736165);
  v23(v36, 0);
  v32(v20, *MEMORY[0x277D3E538], v33);
  v36[0] = 1;
  sub_26738114C();
  v21(v11, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x646F43726F727265, 0xE900000000000065);
  return v24(v36, 0);
}

uint64_t sub_26712B740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712B7A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26712B84C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26712B894()
{
  result = qword_2800F5690;
  if (!qword_2800F5690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5690);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceSetupMetricsReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5690, 0x277D58EB0);
  sub_266ECAF2C(&qword_2800F5688, &qword_2800F5690, 0x277D58EB0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74654D7075746573, 0xEC00000073636972);
  return v5(v7, 0);
}

uint64_t sub_26712BABC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5690, 0x277D58EB0);
  sub_266ECAF2C(&qword_2800F5688, &qword_2800F5690, 0x277D58EB0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74654D7075746573, 0xEC00000073636972);
  return v5(v7, 0);
}

uint64_t sub_26712BC60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712BCC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMServiceStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceName(0);
  sub_26712C1CC(&qword_2800F5648, type metadata accessor for NLXSchemaCDMServiceName);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x4E65636976726573, 0xEB00000000656D61);
  return v5(v7, 0);
}

uint64_t sub_26712BF30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceName(0);
  sub_26712C1CC(&qword_2800F5648, type metadata accessor for NLXSchemaCDMServiceName);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x4E65636976726573, 0xEB00000000656D61);
  return v5(v7, 0);
}

uint64_t sub_26712C0C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712C124(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26712C1CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26712C214()
{
  result = qword_2800F55E8;
  if (!qword_2800F55E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F55E8);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v382 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674652E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v382;

  v1(v439, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v383 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267465300, v11);
  v12 = *v9;
  *v9 = v383;

  v7(v439, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v384 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267465320, v17);
  v18 = *v15;
  *v15 = v384;

  v13(v439, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v385 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267465340, v23);
  v24 = *v21;
  *v21 = v385;

  v19(v439, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v386 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x8000000267465360, v29);
  v30 = *v27;
  *v27 = v386;

  v25(v439, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v387 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x8000000267465380, v35);
  v36 = *v33;
  *v33 = v387;

  v31(v439, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v388 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x80000002674653A0, v41);
  v42 = *v39;
  *v39 = v388;

  v37(v439, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v389 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x80000002674653C0, v47);
  v48 = *v45;
  *v45 = v389;

  v43(v439, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v390 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x80000002674653E0, v53);
  v54 = *v51;
  *v51 = v390;

  v49(v439, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v391 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000013, 0x8000000267465400, v59);
  v60 = *v57;
  *v57 = v391;

  v55(v439, 0);
  v61 = sub_266ECB128(&unk_287889CF8);
  v63 = v62;
  v64 = sub_2673810FC();
  v66 = v65;
  v67 = *v65;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v392 = *v66;
  *v66 = 0x8000000000000000;
  sub_266ECD4CC(v61, v63, 9, v68);
  *v66 = v392;
  v64(v439, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = *v70;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v393 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000019, 0x8000000267465420, v73);
  v74 = *v71;
  *v71 = v393;

  v69(v439, 0);
  v75 = sub_26738111C();
  v77 = v76;
  v78 = *v76;
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v394 = *v77;
  *v77 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x8000000267465440, v79);
  v80 = *v77;
  *v77 = v394;

  v75(v439, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = *v82;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v395 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001FLL, 0x8000000267465460, v85);
  v86 = *v83;
  *v83 = v395;

  v81(v439, 0);
  v87 = sub_26738111C();
  v89 = v88;
  v90 = *v88;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v396 = *v89;
  *v89 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ELL, 0x8000000267465480, v91);
  v92 = *v89;
  *v89 = v396;

  v87(v439, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = *v94;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v397 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000017, 0x80000002674654A0, v97);
  v98 = *v95;
  *v95 = v397;

  v93(v439, 0);
  v99 = sub_26738111C();
  v101 = v100;
  v102 = *v100;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v398 = *v101;
  *v101 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000023, 0x80000002674654C0, v103);
  v104 = *v101;
  *v101 = v398;

  v99(v439, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = *v106;
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v399 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001FLL, 0x80000002674654F0, v109);
  v110 = *v107;
  *v107 = v399;

  v105(v439, 0);
  v111 = sub_26738111C();
  v113 = v112;
  v114 = *v112;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v400 = *v113;
  *v113 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001FLL, 0x8000000267465510, v115);
  v116 = *v113;
  *v113 = v400;

  v111(v439, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = *v118;
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v401 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001DLL, 0x8000000267465530, v121);
  v122 = *v119;
  *v119 = v401;

  v117(v439, 0);
  v123 = sub_26738111C();
  v125 = v124;
  v126 = *v124;
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v402 = *v125;
  *v125 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000026, 0x8000000267465550, v127);
  v128 = *v125;
  *v125 = v402;

  v123(v439, 0);
  v129 = sub_266ECB128(&unk_287889D20);
  v131 = v130;
  v132 = sub_2673810FC();
  v134 = v133;
  v135 = *v133;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v403 = *v134;
  *v134 = 0x8000000000000000;
  sub_266ECD4CC(v129, v131, 19, v136);
  *v134 = v403;
  v132(v439, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = *v138;
  v141 = swift_isUniquelyReferenced_nonNull_native();
  v404 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001ALL, 0x8000000267465580, v141);
  v142 = *v139;
  *v139 = v404;

  v137(v439, 0);
  v143 = sub_266ECB128(&unk_287889D50);
  v145 = v144;
  v146 = sub_2673810FC();
  v148 = v147;
  v149 = *v147;
  v150 = swift_isUniquelyReferenced_nonNull_native();
  v405 = *v148;
  *v148 = 0x8000000000000000;
  sub_266ECD4CC(v143, v145, 20, v150);
  *v148 = v405;
  v146(v439, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v406 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000017, 0x80000002674655A0, v155);
  v156 = *v153;
  *v153 = v406;

  v151(v439, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v407 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000012, 0x80000002674655C0, v161);
  v162 = *v159;
  *v159 = v407;

  v157(v439, 0);
  v163 = sub_266ECB128(&unk_287889D80);
  v165 = v164;
  v166 = sub_2673810FC();
  v168 = v167;
  v169 = *v167;
  v170 = swift_isUniquelyReferenced_nonNull_native();
  v408 = *v168;
  *v168 = 0x8000000000000000;
  sub_266ECD4CC(v163, v165, 22, v170);
  *v168 = v408;
  v166(v439, 0);
  v171 = sub_26738111C();
  v173 = v172;
  v174 = *v172;
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v409 = *v173;
  *v173 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000012, 0x80000002674655E0, v175);
  v176 = *v173;
  *v173 = v409;

  v171(v439, 0);
  v177 = sub_266ECB128(&unk_287889DB0);
  v179 = v178;
  v180 = sub_2673810FC();
  v182 = v181;
  v183 = *v181;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v410 = *v182;
  *v182 = 0x8000000000000000;
  sub_266ECD4CC(v177, v179, 23, v184);
  *v182 = v410;
  v180(v439, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = *v186;
  v189 = swift_isUniquelyReferenced_nonNull_native();
  v411 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000025, 0x8000000267465600, v189);
  v190 = *v187;
  *v187 = v411;

  v185(v439, 0);
  v191 = sub_266ECB128(&unk_287889DE0);
  v193 = v192;
  v194 = sub_2673810FC();
  v196 = v195;
  v197 = *v195;
  v198 = swift_isUniquelyReferenced_nonNull_native();
  v412 = *v196;
  *v196 = 0x8000000000000000;
  sub_266ECD4CC(v191, v193, 24, v198);
  *v196 = v412;
  v194(v439, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v413 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000021, 0x8000000267465630, v203);
  v204 = *v201;
  *v201 = v413;

  v199(v439, 0);
  v205 = sub_266ECB128(&unk_287889E10);
  v207 = v206;
  v208 = sub_2673810FC();
  v210 = v209;
  v211 = *v209;
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v414 = *v210;
  *v210 = 0x8000000000000000;
  sub_266ECD4CC(v205, v207, 25, v212);
  *v210 = v414;
  v208(v439, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = *v214;
  v217 = swift_isUniquelyReferenced_nonNull_native();
  v415 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000002BLL, 0x8000000267465660, v217);
  v218 = *v215;
  *v215 = v415;

  v213(v439, 0);
  v219 = sub_266ECB128(&unk_287889E40);
  v221 = v220;
  v222 = sub_2673810FC();
  v224 = v223;
  v225 = *v223;
  v226 = swift_isUniquelyReferenced_nonNull_native();
  v416 = *v224;
  *v224 = 0x8000000000000000;
  sub_266ECD4CC(v219, v221, 26, v226);
  *v224 = v416;
  v222(v439, 0);
  v227 = sub_26738111C();
  v229 = v228;
  v230 = *v228;
  v231 = swift_isUniquelyReferenced_nonNull_native();
  v417 = *v229;
  *v229 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001FLL, 0x8000000267465690, v231);
  v232 = *v229;
  *v229 = v417;

  v227(v439, 0);
  v233 = sub_266ECB128(&unk_287889E70);
  v235 = v234;
  v236 = sub_2673810FC();
  v238 = v237;
  v239 = *v237;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v418 = *v238;
  *v238 = 0x8000000000000000;
  sub_266ECD4CC(v233, v235, 27, v240);
  *v238 = v418;
  v236(v439, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v419 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000023, 0x80000002674656B0, v245);
  v246 = *v243;
  *v243 = v419;

  v241(v439, 0);
  v247 = sub_266ECB128(&unk_287889EA0);
  v249 = v248;
  v250 = sub_2673810FC();
  v252 = v251;
  v253 = *v251;
  v254 = swift_isUniquelyReferenced_nonNull_native();
  v420 = *v252;
  *v252 = 0x8000000000000000;
  sub_266ECD4CC(v247, v249, 28, v254);
  *v252 = v420;
  v250(v439, 0);
  v255 = sub_26738111C();
  v257 = v256;
  v258 = *v256;
  v259 = swift_isUniquelyReferenced_nonNull_native();
  v421 = *v257;
  *v257 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001DLL, 0x80000002674656E0, v259);
  v260 = *v257;
  *v257 = v421;

  v255(v439, 0);
  v261 = sub_266ECB128(&unk_287889ED8);
  v263 = v262;
  v264 = sub_2673810FC();
  v266 = v265;
  v267 = *v265;
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v422 = *v266;
  *v266 = 0x8000000000000000;
  sub_266ECD4CC(v261, v263, 29, v268);
  *v266 = v422;
  v264(v439, 0);
  v269 = sub_26738111C();
  v271 = v270;
  v272 = *v270;
  v273 = swift_isUniquelyReferenced_nonNull_native();
  v423 = *v271;
  *v271 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000025, 0x8000000267465700, v273);
  v274 = *v271;
  *v271 = v423;

  v269(v439, 0);
  v275 = sub_266ECB128(&unk_287889F10);
  v277 = v276;
  v278 = sub_2673810FC();
  v280 = v279;
  v281 = *v279;
  v282 = swift_isUniquelyReferenced_nonNull_native();
  v424 = *v280;
  *v280 = 0x8000000000000000;
  sub_266ECD4CC(v275, v277, 30, v282);
  *v280 = v424;
  v278(v439, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v425 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000020, 0x8000000267465730, v287);
  v288 = *v285;
  *v285 = v425;

  v283(v439, 0);
  v289 = sub_266ECB128(&unk_287889F48);
  v291 = v290;
  v292 = sub_2673810FC();
  v294 = v293;
  v295 = *v293;
  v296 = swift_isUniquelyReferenced_nonNull_native();
  v426 = *v294;
  *v294 = 0x8000000000000000;
  sub_266ECD4CC(v289, v291, 31, v296);
  *v294 = v426;
  v292(v439, 0);
  v297 = sub_26738111C();
  v299 = v298;
  v300 = *v298;
  v301 = swift_isUniquelyReferenced_nonNull_native();
  v427 = *v299;
  *v299 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001DLL, 0x8000000267465760, v301);
  v302 = *v299;
  *v299 = v427;

  v297(v439, 0);
  v303 = sub_266ECB128(&unk_287889F80);
  v305 = v304;
  v306 = sub_2673810FC();
  v308 = v307;
  v309 = *v307;
  v310 = swift_isUniquelyReferenced_nonNull_native();
  v428 = *v308;
  *v308 = 0x8000000000000000;
  sub_266ECD4CC(v303, v305, 32, v310);
  *v308 = v428;
  v306(v439, 0);
  v311 = sub_26738111C();
  v313 = v312;
  v314 = *v312;
  v315 = swift_isUniquelyReferenced_nonNull_native();
  v429 = *v313;
  *v313 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001DLL, 0x8000000267465780, v315);
  v316 = *v313;
  *v313 = v429;

  v311(v439, 0);
  v317 = sub_266ECB128(&unk_287889FB8);
  v319 = v318;
  v320 = sub_2673810FC();
  v322 = v321;
  v323 = *v321;
  v324 = swift_isUniquelyReferenced_nonNull_native();
  v430 = *v322;
  *v322 = 0x8000000000000000;
  sub_266ECD4CC(v317, v319, 33, v324);
  *v322 = v430;
  v320(v439, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v431 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(34, 0xD00000000000001BLL, 0x80000002674657A0, v329);
  v330 = *v327;
  *v327 = v431;

  v325(v439, 0);
  v331 = sub_266ECB128(&unk_287889FF0);
  v333 = v332;
  v334 = sub_2673810FC();
  v336 = v335;
  v337 = *v335;
  v338 = swift_isUniquelyReferenced_nonNull_native();
  v432 = *v336;
  *v336 = 0x8000000000000000;
  sub_266ECD4CC(v331, v333, 34, v338);
  *v336 = v432;
  v334(v439, 0);
  v339 = sub_26738111C();
  v341 = v340;
  v342 = *v340;
  v343 = swift_isUniquelyReferenced_nonNull_native();
  v433 = *v341;
  *v341 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001BLL, 0x80000002674657C0, v343);
  v344 = *v341;
  *v341 = v433;

  v339(v439, 0);
  v345 = sub_266ECB128(&unk_28788A028);
  v347 = v346;
  v348 = sub_2673810FC();
  v350 = v349;
  v351 = *v349;
  v352 = swift_isUniquelyReferenced_nonNull_native();
  v434 = *v350;
  *v350 = 0x8000000000000000;
  sub_266ECD4CC(v345, v347, 35, v352);
  *v350 = v434;
  v348(v439, 0);
  v353 = sub_26738111C();
  v355 = v354;
  v356 = *v354;
  v357 = swift_isUniquelyReferenced_nonNull_native();
  v435 = *v355;
  *v355 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001ELL, 0x80000002674657E0, v357);
  v358 = *v355;
  *v355 = v435;

  v353(v439, 0);
  v359 = sub_266ECB128(&unk_28788A060);
  v361 = v360;
  v362 = sub_2673810FC();
  v364 = v363;
  v365 = *v363;
  v366 = swift_isUniquelyReferenced_nonNull_native();
  v436 = *v364;
  *v364 = 0x8000000000000000;
  sub_266ECD4CC(v359, v361, 36, v366);
  *v364 = v436;
  v362(v439, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v437 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000022, 0x8000000267465800, v371);
  v372 = *v369;
  *v369 = v437;

  v367(v439, 0);
  v373 = sub_266ECB128(&unk_28788A098);
  v375 = v374;
  v376 = sub_2673810FC();
  v378 = v377;
  v379 = *v377;
  v380 = swift_isUniquelyReferenced_nonNull_native();
  v438 = *v378;
  *v378 = 0x8000000000000000;
  sub_266ECD4CC(v373, v375, 37, v380);
  *v378 = v438;
  return v376(v439, 0);
}