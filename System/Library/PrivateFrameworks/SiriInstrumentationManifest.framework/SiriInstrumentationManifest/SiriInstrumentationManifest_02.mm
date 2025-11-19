uint64_t sub_266F19260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static CDASchemaCDAUserFeedbackParticipantCollectionReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6449796576727573, 0xE800000000000000);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800EFAE8, 0x277D56D28);
  sub_266ECAF2C(&qword_2800EFAE0, &qword_2800EFAE8, 0x277D56D28);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267425DF0);
  v12(v14, 0);
  sub_266ECB128(&unk_287884738);
  return sub_2673811CC();
}

uint64_t sub_266F19638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1969C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDAUserFeedbackStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267425E40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267425E60, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267425E80, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267425EA0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x8000000267425EC0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F19A38(uint64_t a1)
{
  v2 = sub_266F19B3C(&qword_2800EFAF0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F19AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F19B3C(&qword_2800EFAF0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F19B3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDAUserFeedbackStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CloudKitSchemaCKChangeReported.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for CloudKitSchemaCKChangeType(0);
  sub_266F19FB8(&qword_2800EFAF8, type metadata accessor for CloudKitSchemaCKChangeType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x795465676E616863, 0xEA00000000006570);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267425F20);
  return v11(v15, 0);
}

uint64_t sub_266F19EAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F19F10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F19FB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F1A000()
{
  result = qword_2800EFB08;
  if (!qword_2800EFB08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFB08);
  }

  return result;
}

uint64_t static CloudKitSchemaCKChangeType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267425F70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267425F90, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267425FB0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267425FD0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F1A2D0(uint64_t a1)
{
  v2 = sub_266F1A3D4(&qword_2800EFB10);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F1A338(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F1A3D4(&qword_2800EFB10);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F1A3D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudKitSchemaCKChangeType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CloudKitSchemaCKClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_266ECB294(0, &qword_2800EFB18, 0x277D57020);
  sub_266ECAF2C(&qword_2800EFB20, &qword_2800EFB18, 0x277D57020);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x74654D746E657665, 0xED00006174616461);
  v13(v39, 0);
  sub_266ECB294(0, &qword_2800EFB28, 0x277D57018);
  sub_266ECAF2C(&qword_2800EFB30, &qword_2800EFB28, 0x277D57018);
  sub_26738121C();
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267426020);
  v14(v39, 0);
  v36 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v38, 0xD000000000000015, 0x8000000267426020);
  v17 = *(v11 + 48);
  if (!v17(v18, 1, v10))
  {
    sub_266ECB128(&unk_287884768);
    sub_26738115C();
  }

  (v16)(v38, 0);
  v15(v39, 0);
  sub_266ECB294(0, &qword_2800EFB08, 0x277D57008);
  sub_266ECAF2C(&qword_2800EFB00, &qword_2800EFB08, 0x277D57008);
  sub_26738121C();
  v12(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267426040);
  v19(v39, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v38, 0xD000000000000016, 0x8000000267426040);
  if (!v17(v22, 1, v10))
  {
    sub_266ECB128(&unk_287884798);
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
  sub_266ECB128(&unk_2878847C8);
  return sub_2673811CC();
}

uint64_t sub_266F1AA58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F1AAF0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F1ABBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1AC20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1AC80(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EFB38, &qword_2800EFB40, 0x277D57010);
  a1[2] = sub_266ECAF2C(&qword_2800EFB48, &qword_2800EFB40, 0x277D57010);
  result = sub_266ECAF2C(&qword_2800EFB50, &qword_2800EFB40, 0x277D57010);
  a1[3] = result;
  return result;
}

uint64_t static CloudKitSchemaCKErrorReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CloudKitSchemaCKErrorType(0);
  sub_266F1B1DC(&qword_2800EFB60, type metadata accessor for CloudKitSchemaCKErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x707954726F727265, 0xE900000000000065);
  return v5(v7, 0);
}

uint64_t sub_266F1AF44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CloudKitSchemaCKErrorType(0);
  sub_266F1B1DC(&qword_2800EFB60, type metadata accessor for CloudKitSchemaCKErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x707954726F727265, 0xE900000000000065);
  return v5(v7, 0);
}

uint64_t sub_266F1B0D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1B134(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1B1DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F1B224()
{
  result = qword_2800EFB28;
  if (!qword_2800EFB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFB28);
  }

  return result;
}

uint64_t static CloudKitSchemaCKErrorType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674260C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x80000002674260E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267426100, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267426120, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267426140, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F1B564(uint64_t a1)
{
  v2 = sub_266F1B668(&qword_2800EFB68);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F1B5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F1B668(&qword_2800EFB68);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F1B668(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudKitSchemaCKErrorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CloudKitSchemaCloudKitEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682533219, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682533219, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878847F8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266F1B940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1B9A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPAppIntentClassifierModelType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x80000002674261E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x8000000267426210, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267426250, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F1BC5C(uint64_t a1)
{
  v2 = sub_266F1BD60(&qword_2800EFB78);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F1BCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F1BD60(&qword_2800EFB78);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F1BD60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPAppIntentClassifierModelType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCDMReplaySampleContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFB80, 0x277D56D50);
  sub_266ECAF2C(&qword_2800EFB88, &qword_2800EFB80, 0x277D56D50);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800EFB90, 0x277D56D40);
  sub_266ECAF2C(&qword_2800EFB98, &qword_2800EFB90, 0x277D56D40);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800EFBA0, 0x277D56D48);
  sub_266ECAF2C(&qword_2800EFBA8, &qword_2800EFBA0, 0x277D56D48);
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

uint64_t sub_266F1C380(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1C3E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCDMReplaySampleEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0xD000000000000012, 0x80000002674262F0);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800EFBC0, 0x277D56DF8);
  sub_266ECAF2C(&qword_2800EFBC8, &qword_2800EFBC0, 0x277D56DF8);
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267426310);
  return v13(v16, 0);
}

uint64_t sub_266F1C7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1C828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCDMReplaySampleFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPError(0);
  sub_266F1CD18(&qword_2800EFBD0, type metadata accessor for CLPInstSchemaCLPError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F1CA88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPError(0);
  sub_266F1CD18(&qword_2800EFBD0, type metadata accessor for CLPInstSchemaCLPError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F1CC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1CC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1CD18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F1CD60()
{
  result = qword_2800EFBA0;
  if (!qword_2800EFBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFBA0);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCDMReplaySampleStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v33 = a1;
  v35 = sub_26738113C();
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v35);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v31 = v9;
  v32 = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v30 = *(v12 + 56);
  v34 = v12 + 56;
  v28 = v11;
  v30(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674263B0);
  v13(v36, 0);
  v14 = *MEMORY[0x277D3E530];
  v29 = *(v1 + 104);
  v15 = v35;
  v29(v4, v14, v35);
  v36[0] = 1;
  sub_26738114C();
  v16 = v11;
  v17 = v30;
  v30(v8, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674206D0);
  v18(v36, 0);
  v27 = "originalRequestId";
  v19 = v15;
  v20 = v29;
  v29(v4, *MEMORY[0x277D3E538], v19);
  v36[0] = 1;
  sub_26738114C();
  v21 = v28;
  v17(v8, 0, 1, v28);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v27 | 0x8000000000000000);
  v22(v36, 0);
  v20(v4, *MEMORY[0x277D3E4E8], v35);
  v36[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267426400);
  v23(v36, 0);
  sub_26738120C();
  v17(v8, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449707274, 0xE500000000000000);
  return v24(v36, 0);
}

uint64_t sub_266F1D324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1D388(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCDMReplayTaskContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFBD8, 0x277D56D68);
  sub_266ECAF2C(&qword_2800EFBE0, &qword_2800EFBD8, 0x277D56D68);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EFBE8, 0x277D56D60);
  sub_266ECAF2C(&qword_2800EFBF0, &qword_2800EFBE8, 0x277D56D60);
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

uint64_t sub_266F1D878(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1D8DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCDMReplayTaskEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267426490);
  return v10(v12, 0);
}

uint64_t sub_266F1DBD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1DC34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F1DC98()
{
  result = qword_2800EFBF0;
  if (!qword_2800EFBF0)
  {
    sub_266F1DCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFBF0);
  }

  return result;
}

unint64_t sub_266F1DCF0()
{
  result = qword_2800EFBE8;
  if (!qword_2800EFBE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFBE8);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCDMReplayTaskStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x61546E6967756C70, 0xEF74657373416B73);
  v6(v11, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674264E0);
  v7(v11, 0);
  type metadata accessor for CLPInstSchemaCLPReplayType(0);
  sub_266F1E1F8();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x795479616C706572, 0xEA00000000006570);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800EFC10, 0x277D56DF0);
  sub_266ECAF2C(&qword_2800EFC18, &qword_2800EFC10, 0x277D56DF0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61757469626168, 0xED00006567617355);
  return v9(v11, 0);
}

uint64_t sub_266F1E134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1E198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F1E1F8()
{
  result = qword_2800EFC08;
  if (!qword_2800EFC08)
  {
    type metadata accessor for CLPInstSchemaCLPReplayType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFC08);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFC20, 0x277D56D78);
  sub_266ECAF2C(&qword_2800EFC28, &qword_2800EFC20, 0x277D56D78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800EFC30, 0x277D56DB8);
  sub_266ECAF2C(&qword_2800EFC38, &qword_2800EFC30, 0x277D56DB8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267426530);
  v10(v29, 0);
  sub_266ECB294(0, &qword_2800EFC40, 0x277D56DD8);
  sub_266ECAF2C(&qword_2800EFC48, &qword_2800EFC40, 0x277D56DD8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267426550);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800EFC50, 0x277D56D80);
  sub_266ECAF2C(&qword_2800EFC58, &qword_2800EFC50, 0x277D56D80);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002ALL, 0x8000000267426570);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800EFC60, 0x277D56DA0);
  sub_266ECAF2C(&qword_2800EFC68, &qword_2800EFC60, 0x277D56DA0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000028, 0x80000002674265A0);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800EFBB8, 0x277D56D38);
  sub_266ECAF2C(&qword_2800EFBB0, &qword_2800EFBB8, 0x277D56D38);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x80000002674265D0);
  v14(v29, 0);
  sub_266ECB294(0, &qword_2800EFC00, 0x277D56D58);
  sub_266ECAF2C(&qword_2800EFBF8, &qword_2800EFC00, 0x277D56D58);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = v26;
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x80000002674265F0);
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
  v17(v29, 0);
  sub_266ECB128(&unk_287884828);
  return sub_2673811CC();
}

uint64_t sub_266F1EAFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F1EB94()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F1EC60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1ECC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1ED24(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EFC70, &qword_2800EFC78, 0x277D56D70);
  a1[2] = sub_266ECAF2C(&qword_2800EFC80, &qword_2800EFC78, 0x277D56D70);
  result = sub_266ECAF2C(&qword_2800EFC88, &qword_2800EFC78, 0x277D56D70);
  a1[3] = result;
  return result;
}

uint64_t static CLPInstSchemaCLPClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449706C63, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449706C63, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287884858);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266F1F0BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1F120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPComparatorName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267426670, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267426690, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674266B0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x80000002674266E0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x8000000267426710, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x8000000267426740, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x8000000267426770, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_266F1F59C(uint64_t a1)
{
  v2 = sub_266F1F6A0(&qword_2800EFCA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F1F604(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F1F6A0(&qword_2800EFCA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F1F6A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPComparatorName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCurareAppIntentSampleClassificationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFCA8, 0x277D56D98);
  sub_266ECAF2C(&qword_2800EFCB0, &qword_2800EFCA8, 0x277D56D98);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800EFCB8, 0x277D56D88);
  sub_266ECAF2C(&qword_2800EFCC0, &qword_2800EFCB8, 0x277D56D88);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800EFCC8, 0x277D56D90);
  sub_266ECAF2C(&qword_2800EFCD0, &qword_2800EFCC8, 0x277D56D90);
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

uint64_t sub_266F1FCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1FD24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6C696261626F7270, 0xEB00000000797469);
  return v10(v12, 0);
}

uint64_t sub_266F2001C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F20080(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F200E4()
{
  result = qword_2800EFCC0;
  if (!qword_2800EFCC0)
  {
    sub_266F2013C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFCC0);
  }

  return result;
}

unint64_t sub_266F2013C()
{
  result = qword_2800EFCB8;
  if (!qword_2800EFCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFCB8);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCurareAppIntentSampleClassificationFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v10(v12, 0);
}

uint64_t sub_266F203D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2043C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F204A0()
{
  result = qword_2800EFCD0;
  if (!qword_2800EFCD0)
  {
    sub_266F204F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFCD0);
  }

  return result;
}

unint64_t sub_266F204F8()
{
  result = qword_2800EFCC8;
  if (!qword_2800EFCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFCC8);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  return v5(v7, 0);
}

uint64_t sub_266F2073C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F207A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCurareAppIntentTaskClassificationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFCD8, 0x277D56DB0);
  sub_266ECAF2C(&qword_2800EFCE0, &qword_2800EFCD8, 0x277D56DB0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EFCE8, 0x277D56DA8);
  sub_266ECAF2C(&qword_2800EFCF0, &qword_2800EFCE8, 0x277D56DA8);
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

uint64_t sub_266F20C90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F20CF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCurareAppIntentTaskClassificationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v26 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v28 = v3 + 104;
  v25 = v11;
  v12(v6, v11, v2);
  v13 = v12;
  v24 = v12;
  v29[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 0, 1, v14);
  v16 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F43656C706D6173, 0xEB00000000746E75);
  v17(v29, 0);
  v23 = "assificationEnded";
  v18 = v11;
  v19 = v27;
  v13(v6, v18, v27);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v23 | 0x8000000000000000);
  v20(v29, 0);
  v24(v6, v25, v19);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x6576697469736F70, 0xED0000746E756F43);
  return v21(v29, 0);
}

uint64_t sub_266F211A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2120C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F21270()
{
  result = qword_2800EFCF0;
  if (!qword_2800EFCF0)
  {
    sub_266F212C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFCF0);
  }

  return result;
}

unint64_t sub_266F212C8()
{
  result = qword_2800EFCE8;
  if (!qword_2800EFCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFCE8);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPAppIntentClassifierModelType(0);
  sub_266F21790();
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v15[0] = a2;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x80000002674269F0);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  v15[1] = a1;
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267426A10);
  v11(v16, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267426A30);
  v12(v16, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267426A50);
  return v13(v16, 0);
}

uint64_t sub_266F216CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F21730(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F21790()
{
  result = qword_2800EFB70;
  if (!qword_2800EFB70)
  {
    type metadata accessor for CLPInstSchemaCLPAppIntentClassifierModelType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFB70);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000010, 0x8000000267426AA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267426AC0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267426AE0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267426B00, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F21AB4(uint64_t a1)
{
  v2 = sub_266F21BB8(&qword_2800EFCF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F21B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F21BB8(&qword_2800EFCF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F21BB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPEvaluationEnvironment.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267426B70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267426BA0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267426BD0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267426BF0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F21E84(uint64_t a1)
{
  v2 = sub_266F21F88(&qword_2800EFD08);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F21EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F21F88(&qword_2800EFD08);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F21F88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPEvaluationEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPEvaluationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267426C40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267426C60, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_266F22170(uint64_t a1)
{
  v2 = sub_266F22274(&qword_2800EFD18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F221D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F22274(&qword_2800EFD18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F22274(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPEvaluationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPExperimentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267426CB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267426CD0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267426CF0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267426D20, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F22540(uint64_t a1)
{
  v2 = sub_266F22644(&qword_2800EFD28);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F225A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F22644(&qword_2800EFD28);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F22644(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPExperimentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPNLv4SampleEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFD30, 0x277D56DD0);
  sub_266ECAF2C(&qword_2800EFD38, &qword_2800EFD30, 0x277D56DD0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800EFD40, 0x277D56DC0);
  sub_266ECAF2C(&qword_2800EFD48, &qword_2800EFD40, 0x277D56DC0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800EFD50, 0x277D56DC8);
  sub_266ECAF2C(&qword_2800EFD58, &qword_2800EFD50, 0x277D56DC8);
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

uint64_t sub_266F22C64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F22CC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPNLv4SampleEvaluationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v43 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v39 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v40 = v12;
  v41 = v3 + 104;
  v44[0] = 1;
  sub_26738114C();
  v42 = sub_26738116C();
  v13 = *(v42 - 8);
  v37 = *(v13 + 56);
  v14 = v13 + 56;
  v37(v10, 0, 1, v42);
  v38 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x657461756C617665, 0xE900000000000064);
  v15(v44, 0);
  v35 = "ampleEvaluationEnded";
  v16 = v11;
  v17 = v11;
  v36 = v11;
  v18 = v43;
  v12(v6, v16, v43);
  v44[0] = 1;
  sub_26738114C();
  v19 = v42;
  v20 = v37;
  v37(v10, 0, 1, v42);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, v35 | 0x8000000000000000);
  v21(v44, 0);
  v22 = v18;
  v23 = v40;
  v40(v6, v17, v22);
  v44[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x8000000267426DF0);
  v24(v44, 0);
  v25 = v43;
  v23(v6, *MEMORY[0x277D3E508], v43);
  v44[0] = 1;
  sub_26738114C();
  v26 = v42;
  v27 = v37;
  v37(v10, 0, 1, v42);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x496465686374616DLL, 0xEC0000007865646ELL);
  v28(v44, 0);
  v35 = "TheFirstUserParse";
  v29 = v36;
  v30 = v40;
  v40(v6, v36, v25);
  v44[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v26);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v35 | 0x8000000000000000);
  v31(v44, 0);
  v30(v6, v29, v43);
  v44[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v42);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267426E40);
  return v32(v44, 0);
}

uint64_t sub_266F233DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F23440(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F234A4()
{
  result = qword_2800EFD48;
  if (!qword_2800EFD48)
  {
    sub_266F234FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFD48);
  }

  return result;
}

unint64_t sub_266F234FC()
{
  result = qword_2800EFD40;
  if (!qword_2800EFD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFD40);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPNLv4SampleEvaluationFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v23 = a1;
  sub_26738119C();
  v26 = "ampleEvaluationFailed";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v28 = v3 + 104;
  v25 = v11;
  v12(v6, v11, v2);
  v13 = v12;
  v24 = v12;
  v29[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 0, 1, v14);
  v16 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v26 | 0x8000000000000000);
  v17(v29, 0);
  v26 = "userProfileSandboxFailure";
  v18 = v11;
  v19 = v27;
  v13(v6, v18, v27);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v26 | 0x8000000000000000);
  v20(v29, 0);
  v24(v6, v25, v19);
  v29[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267426EE0);
  return v21(v29, 0);
}

uint64_t sub_266F2395C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F239C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F23A24()
{
  result = qword_2800EFD58;
  if (!qword_2800EFD58)
  {
    sub_266F23A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFD58);
  }

  return result;
}

unint64_t sub_266F23A7C()
{
  result = qword_2800EFD50;
  if (!qword_2800EFD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFD50);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPNLv4SampleEvaluationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v12 = *MEMORY[0x277D3E538];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v23[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D754E6863746162, 0xEE00736B6E756843);
  v16(v23, 0);
  v13(v7, v12, v21);
  v23[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x7568436863746162, 0xEC00000064496B6ELL);
  v17(v23, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x8000000267426F40);
  return v18(v23, 0);
}

uint64_t sub_266F23ED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F23F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPNLv4TaskEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFD60, 0x277D56DE8);
  sub_266ECAF2C(&qword_2800EFD68, &qword_2800EFD60, 0x277D56DE8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EFD70, 0x277D56DE0);
  sub_266ECAF2C(&qword_2800EFD78, &qword_2800EFD70, 0x277D56DE0);
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

uint64_t sub_266F24424(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F24488(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPNLv4TaskEvaluationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v20[1] = a1;
  sub_26738119C();
  v22 = "askEvaluationEnded";
  v11 = *MEMORY[0x277D3E518];
  v23 = *(v3 + 104);
  v24 = v3 + 104;
  v23(v6, v11, v2);
  v25[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v21 = v12;
  v13(v10, 0, 1, v12);
  v14 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v22 | 0x8000000000000000);
  v15(v25, 0);
  v22 = "stUserParseCount";
  v16 = v23;
  v23(v6, v11, v2);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v22 | 0x8000000000000000);
  v17(v25, 0);
  v16(v6, *MEMORY[0x277D3E538], v2);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v21);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x697461756C617665, 0xEF746E756F436E6FLL);
  return v18(v25, 0);
}

uint64_t sub_266F2493C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F249A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F24A04()
{
  result = qword_2800EFD78;
  if (!qword_2800EFD78)
  {
    sub_266F24A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFD78);
  }

  return result;
}

unint64_t sub_266F24A5C()
{
  result = qword_2800EFD70;
  if (!qword_2800EFD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFD70);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPNLv4TaskEvaluationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v30 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPEvaluationType(0);
  sub_266F253D0(&qword_2800EFD10, type metadata accessor for CLPInstSchemaCLPEvaluationType);
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0x697461756C617665, 0xEE00657079546E6FLL);
  v14(v34, 0);
  type metadata accessor for CLPInstSchemaCLPEvaluationEnvironment(0);
  sub_266F253D0(&qword_2800EFD00, type metadata accessor for CLPInstSchemaCLPEvaluationEnvironment);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x8000000267427070);
  v15(v34, 0);
  type metadata accessor for CLPInstSchemaCLPExperimentType(0);
  sub_266F253D0(&qword_2800EFD20, type metadata accessor for CLPInstSchemaCLPExperimentType);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x656D697265707865, 0xEE0065707954746ELL);
  v16(v34, 0);
  type metadata accessor for CLPInstSchemaCLPRecipeType(0);
  sub_266F253D0(&qword_2800EFD80, type metadata accessor for CLPInstSchemaCLPRecipeType);
  v30[4] = a1;
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v30[1] = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x7954657069636572, 0xEA00000000006570);
  v17(v34, 0);
  v18 = sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  v19 = sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  v30[2] = v18;
  v30[3] = v19;
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x8000000267426A30);
  v20(v34, 0);
  v21 = *MEMORY[0x277D3E538];
  v22 = v32;
  v23 = *(v33 + 104);
  v33 += 104;
  v24 = v31;
  v23(v31, v21, v32);
  v34[0] = 1;
  sub_26738114C();
  v13(v11, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F43656C706D6173, 0xEB00000000746E75);
  v25(v34, 0);
  v23(v24, *MEMORY[0x277D3E4E8], v22);
  v34[0] = 1;
  sub_26738114C();
  v13(v11, 0, 1, v12);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x5467756265447369, 0xEB000000006B7361);
  v26(v34, 0);
  v33 = "evaluationEnvironment";
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v33 | 0x8000000000000000);
  v27(v34, 0);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x8000000267426A50);
  return v28(v34, 0);
}

uint64_t sub_266F2530C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F25370(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F253D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static CLPInstSchemaCLPRecipeType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674270E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267427100, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267427120, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F25670(uint64_t a1)
{
  v2 = sub_266F25774(&qword_2800EFD88);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F256D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F25774(&qword_2800EFD88);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F25774(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPRecipeType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPReplayType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267427170, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267427190, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674271B0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x80000002674271D0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F25A40(uint64_t a1)
{
  v2 = sub_266F25B44(&qword_2800EFD90);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F25AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F25B44(&qword_2800EFD90);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F25B44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPReplayType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaHabitualUsageByCalendarWeekInformation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v18 = "UsageByCalendarWeekInformation";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v19[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v18 | 0x8000000000000000);
  v14(v19, 0);
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v19[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x8000000267426400);
  return v15(v19, 0);
}

uint64_t sub_266F25EBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F25F20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F25F84()
{
  result = qword_2800EFC18;
  if (!qword_2800EFC18)
  {
    sub_266F25FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFC18);
  }

  return result;
}

unint64_t sub_266F25FDC()
{
  result = qword_2800EFC10;
  if (!qword_2800EFC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFC10);
  }

  return result;
}

uint64_t static CLPInstSchemaServiceNodeComparatorResult.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPComparatorName(0);
  sub_266F266EC(&qword_2800EFC98, type metadata accessor for CLPInstSchemaCLPComparatorName);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v29 = *(v10 + 56);
  v11 = v10 + 56;
  v27 = v9;
  v29(v8, 0, 1, v9);
  v30 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74617261706D6F63, 0xEE00656D614E726FLL);
  v12(v32, 0);
  v24 = "odeComparatorResult";
  v13 = *MEMORY[0x277D3E4E8];
  v28 = *(v1 + 104);
  v31 = v1 + 104;
  v26 = v13;
  v25 = v0;
  v28(v4, v13, v0);
  v32[0] = 1;
  sub_26738114C();
  v14 = v29;
  v29(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v24 | 0x8000000000000000);
  v15(v32, 0);
  v24 = "isValidOriginalItem";
  v16 = v28;
  v28(v4, v13, v0);
  v32[0] = 1;
  sub_26738114C();
  v17 = v27;
  v18 = v14;
  v14(v8, 0, 1, v27);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v24 | 0x8000000000000000);
  v19(v32, 0);
  v20 = v25;
  v16(v4, v26, v25);
  v32[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x65686374614D7369, 0xE900000000000064);
  v21(v32, 0);
  v16(v4, *MEMORY[0x277D3E540], v20);
  v32[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674272D0);
  return v22(v32, 0);
}

uint64_t sub_266F265E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F26644(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F266EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F26734()
{
  result = qword_2800EFBC0;
  if (!qword_2800EFBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFBC0);
  }

  return result;
}

uint64_t static CMSchemaCMClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFD98, 0x277D56E08);
  sub_266ECAF2C(&qword_2800EFDA0, &qword_2800EFD98, 0x277D56E08);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800EFDA8, 0x277D56E30);
  sub_266ECAF2C(&qword_2800EFDB0, &qword_2800EFDA8, 0x277D56E30);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F43686372616573, 0xED0000747865746ELL);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800EFDB8, 0x277D56E10);
  sub_266ECAF2C(&qword_2800EFDC0, &qword_2800EFDB8, 0x277D56E10);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  v12 = v22;
  sub_266EC637C(v6, 0x6F43747265736E69, 0xED0000747865746ELL);
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
  v13(v25, 0);
  sub_266ECB128(&unk_287884888);
  return sub_2673811CC();
}

uint64_t sub_266F26C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F26D24()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F26DF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F26E54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F26EB4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EFDC8, &qword_2800EFDD0, 0x277D56E00);
  a1[2] = sub_266ECAF2C(&qword_2800EFDD8, &qword_2800EFDD0, 0x277D56E00);
  result = sub_266ECAF2C(&qword_2800EFDE0, &qword_2800EFDD0, 0x277D56E00);
  a1[3] = result;
  return result;
}

uint64_t static CMSchemaCMClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682533731, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682533731, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878848C0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266F27248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F272AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CMSchemaCMError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x5F524F5252454D43, 0xEF4E574F4E4B4E55, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267427370, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267427390, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F27570(uint64_t a1)
{
  v2 = sub_266F27674(&qword_2800EFDF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F275D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F27674(&qword_2800EFDF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F27674(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CMSchemaCMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CMSchemaCMInsertContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFE00, 0x277D56E28);
  sub_266ECAF2C(&qword_2800EFE08, &qword_2800EFE00, 0x277D56E28);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800EFE10, 0x277D56E18);
  sub_266ECAF2C(&qword_2800EFE18, &qword_2800EFE10, 0x277D56E18);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EFE20, 0x277D56E20);
  sub_266ECAF2C(&qword_2800EFE28, &qword_2800EFE20, 0x277D56E20);
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

uint64_t sub_266F27BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F27C34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CMSchemaCMInsertEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F27F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F27F84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F27FE8()
{
  result = qword_2800EFE18;
  if (!qword_2800EFE18)
  {
    sub_266F28040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFE18);
  }

  return result;
}

unint64_t sub_266F28040()
{
  result = qword_2800EFE10;
  if (!qword_2800EFE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE10);
  }

  return result;
}

uint64_t static CMSchemaCMInsertFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMError(0);
  sub_266F284D8(&qword_2800EFDF0, type metadata accessor for CMSchemaCMError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F28248()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMError(0);
  sub_266F284D8(&qword_2800EFDF0, type metadata accessor for CMSchemaCMError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F283CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F28430(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F284D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F28520()
{
  result = qword_2800EFE20;
  if (!qword_2800EFE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE20);
  }

  return result;
}

uint64_t static CMSchemaCMInsertStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F287B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F28818(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F2887C()
{
  result = qword_2800EFE08;
  if (!qword_2800EFE08)
  {
    sub_266F288D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFE08);
  }

  return result;
}

unint64_t sub_266F288D4()
{
  result = qword_2800EFE00;
  if (!qword_2800EFE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE00);
  }

  return result;
}

uint64_t static CMSchemaCMSearchContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFE30, 0x277D56E48);
  sub_266ECAF2C(&qword_2800EFE38, &qword_2800EFE30, 0x277D56E48);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800EFE40, 0x277D56E38);
  sub_266ECAF2C(&qword_2800EFE48, &qword_2800EFE40, 0x277D56E38);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EFE50, 0x277D56E40);
  sub_266ECAF2C(&qword_2800EFE58, &qword_2800EFE50, 0x277D56E40);
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

uint64_t sub_266F28E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F28E9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CMSchemaCMSearchEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738113C();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMSearchStrategy(0);
  sub_266F29520(&qword_2800EFE60, type metadata accessor for CMSchemaCMSearchStrategy);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x7453686372616573, 0xEE00796765746172);
  v9(v23, 0);
  v10 = *MEMORY[0x277D3E508];
  v11 = *(v0 + 104);
  v21 = v0 + 104;
  v12 = v20;
  v13 = v22;
  v11(v20, v10, v22);
  v23[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F43746C75736572, 0xEB00000000746E75);
  v14(v23, 0);
  v19 = "iri.cm.CMSearchEnded";
  v15 = *MEMORY[0x277D3E518];
  v11(v12, v15, v13);
  v23[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, v19 | 0x8000000000000000);
  v16(v23, 0);
  v11(v12, v15, v22);
  v23[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674274F0);
  return v17(v23, 0);
}

uint64_t sub_266F29414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F29478(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F29520(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F29568()
{
  result = qword_2800EFE40;
  if (!qword_2800EFE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE40);
  }

  return result;
}

uint64_t static CMSchemaCMSearchFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMError(0);
  sub_266F29A00(&qword_2800EFDF0, type metadata accessor for CMSchemaCMError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F29770()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMError(0);
  sub_266F29A00(&qword_2800EFDF0, type metadata accessor for CMSchemaCMError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F298F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F29958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F29A00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F29A48()
{
  result = qword_2800EFE50;
  if (!qword_2800EFE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE50);
  }

  return result;
}

uint64_t static CMSchemaCMSearchStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F29CDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F29D40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F29DA4()
{
  result = qword_2800EFE38;
  if (!qword_2800EFE38)
  {
    sub_266F29DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFE38);
  }

  return result;
}

unint64_t sub_266F29DFC()
{
  result = qword_2800EFE30;
  if (!qword_2800EFE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE30);
  }

  return result;
}

uint64_t static CMSchemaCMSearchStrategy.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674275A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x80000002674275C0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674275E0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F2A05C(uint64_t a1)
{
  v2 = sub_266F2A160(&qword_2800EFE68);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F2A0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F2A160(&qword_2800EFE68);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F2A160(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CMSchemaCMSearchStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVActionCandidate.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v13 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v38 = v12;
  v39 = v13;
  v37 = a1;
  sub_26738120C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x8000000267423200);
  v16(v46, 0);
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F2A9C0();
  sub_26738120C();
  v36 = v14;
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E6967756C70, 0xE600000000000000);
  v17(v46, 0);
  v35 = "iri.cnv.CNVActionCandidate";
  sub_26738121C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v35 | 0x8000000000000000);
  v18(v46, 0);
  sub_26738121C();
  v19 = v36;
  v20 = v15;
  v15(v11, 0, 1, v36);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x644973656D6D6F70, 0xE800000000000000);
  v21(v46, 0);
  (*(v41 + 104))(v40, *MEMORY[0x277D3E538], v42);
  v46[0] = 1;
  sub_26738114C();
  v20(v11, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x7974696E69666661, 0xED000065726F6353);
  v22(v46, 0);
  sub_266ECB294(0, &qword_2800EFE78, 0x277D56FB8);
  sub_266ECAF2C(&qword_2800EFE80, &qword_2800EFE78, 0x277D56FB8);
  sub_26738120C();
  v20(v11, 0, 1, v19);
  v23 = sub_2673811AC();
  v24 = v11;
  v25 = v43;
  sub_266EC637C(v24, 0x6174654D6B6E696CLL, 0xEC00000061746164);
  v23(v46, 0);
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
  (*(v44 + 32))(v29 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v32, v25, v45);
  return v26(v46, 0);
}

uint64_t sub_266F2A8FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2A960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F2A9C0()
{
  result = qword_2800EFE70;
  if (!qword_2800EFE70)
  {
    type metadata accessor for CNVSchemaCNVPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFE70);
  }

  return result;
}

uint64_t static CNVSchemaCNVActionCandidatesCollated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFE98, 0x277D57000);
  sub_266ECAF2C(&qword_2800EFEA0, &qword_2800EFE98, 0x277D57000);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x80000002674276A0);
  return v5(v7, 0);
}

uint64_t sub_266F2AC54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2ACB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVActionCandidatesGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFE90, 0x277D56E50);
  sub_266ECAF2C(&qword_2800EFE88, &qword_2800EFE90, 0x277D56E50);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267427700);
  return v5(v7, 0);
}

uint64_t sub_266F2AF54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2AFB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVActionCandidatesGeneratedTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFEC8, 0x277D56FC0);
  sub_266ECAF2C(&qword_2800EFED0, &qword_2800EFEC8, 0x277D56FC0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617461646174656DLL, 0xED00003172656954);
  return v5(v7, 0);
}

uint64_t sub_266F2B23C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFEC8, 0x277D56FC0);
  sub_266ECAF2C(&qword_2800EFED0, &qword_2800EFEC8, 0x277D56FC0);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617461646174656DLL, 0xED00003172656954);
  return v5(v7, 0);
}

uint64_t sub_266F2B3E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2B448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVBypassReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267427790, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674277B0, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_266F2B690(uint64_t a1)
{
  v2 = sub_266F2B794(&qword_2800EFEF0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F2B6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F2B794(&qword_2800EFEF0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F2B794(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVBypassReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVCancellationReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267427800, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267427820, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267427850, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267427870, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F2BA5C(uint64_t a1)
{
  v2 = sub_266F2BB60(&qword_2800EFF00);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F2BAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F2BB60(&qword_2800EFF00);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F2BB60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVCancellationReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFF08, 0x277D56E78);
  sub_266ECAF2C(&qword_2800EFF10, &qword_2800EFF08, 0x277D56E78);
  sub_26738120C();
  v11 = sub_26738116C();
  v51 = *(v11 - 8);
  v13 = v51 + 56;
  v12 = *(v51 + 56);
  v12(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v14(v61, 0);
  sub_266ECB294(0, &qword_2800EFF18, 0x277D56F98);
  sub_266ECAF2C(&qword_2800EFF20, &qword_2800EFF18, 0x277D56F98);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674278D0);
  v15(v61, 0);
  sub_266ECB294(0, &qword_2800EFF28, 0x277D56FF8);
  sub_266ECAF2C(&qword_2800EFF30, &qword_2800EFF28, 0x277D56FF8);
  v59 = a1;
  sub_26738121C();
  v52 = v12;
  v57 = v13;
  v12(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674278F0);
  v16(v61, 0);
  v58 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v60, 0xD000000000000010, 0x80000002674278F0);
  if (!(*(v51 + 48))(v19, 1, v11))
  {
    sub_266ECB128(&unk_2878848F0);
    sub_26738115C();
  }

  (v18)(v60, 0);
  v17(v61, 0);
  sub_266ECB294(0, &qword_2800EFF38, 0x277D56F50);
  sub_266ECAF2C(&qword_2800EFF40, &qword_2800EFF38, 0x277D56F50);
  sub_26738121C();
  v20 = v11;
  v21 = v11;
  v22 = v52;
  v52(v10, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267427910);
  v23(v61, 0);
  sub_266ECB294(0, &qword_2800EFF48, 0x277D56F78);
  sub_266ECAF2C(&qword_2800EFF50, &qword_2800EFF48, 0x277D56F78);
  sub_26738121C();
  v22(v10, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267427930);
  v24(v61, 0);
  sub_266ECB294(0, &qword_2800EFEC0, 0x277D56E60);
  sub_266ECAF2C(&qword_2800EFEB8, &qword_2800EFEC0, 0x277D56E60);
  sub_26738121C();
  v22(v10, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x8000000267427950);
  v25(v61, 0);
  sub_266ECB294(0, &qword_2800EFEE0, 0x277D56E68);
  sub_266ECAF2C(&qword_2800EFED8, &qword_2800EFEE0, 0x277D56E68);
  sub_26738121C();
  v56 = v20;
  v22(v10, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x8000000267427970);
  v26(v61, 0);
  sub_266ECB294(0, &qword_2800EFEB0, 0x277D56E58);
  sub_266ECAF2C(&qword_2800EFEA8, &qword_2800EFEB0, 0x277D56E58);
  sub_26738121C();
  v22(v10, 0, 1, v20);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267427990);
  v27(v61, 0);
  sub_266ECB294(0, &qword_2800EFF58, 0x277D56E88);
  sub_266ECAF2C(&qword_2800EFF60, &qword_2800EFF58, 0x277D56E88);
  sub_26738121C();
  v28 = v56;
  v22(v10, 0, 1, v56);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x80000002674279B0);
  v29(v61, 0);
  sub_266ECB294(0, &qword_2800EFF68, 0x277D56EC0);
  sub_266ECAF2C(&qword_2800EFF70, &qword_2800EFF68, 0x277D56EC0);
  sub_26738121C();
  v22(v10, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x80000002674279D0);
  v30(v61, 0);
  sub_266ECB294(0, &qword_2800EFF78, 0x277D56EC8);
  sub_266ECAF2C(&qword_2800EFF80, &qword_2800EFF78, 0x277D56EC8);
  sub_26738121C();
  v31 = v56;
  v22(v10, 0, 1, v56);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x80000002674279F0);
  v32(v61, 0);
  sub_266ECB294(0, &qword_2800EFF88, 0x277D56F28);
  sub_266ECAF2C(&qword_2800EFF90, &qword_2800EFF88, 0x277D56F28);
  sub_26738121C();
  v22(v10, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267427A10);
  v33(v61, 0);
  sub_266ECB294(0, &qword_2800EFF98, 0x277D56EE0);
  sub_266ECAF2C(&qword_2800EFFA0, &qword_2800EFF98, 0x277D56EE0);
  sub_26738121C();
  v22(v10, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x776F6C46646E6966, 0xEF747865746E6F43);
  v34(v61, 0);
  sub_266ECB294(0, &qword_2800EFFA8, 0x277D56F10);
  sub_266ECAF2C(&qword_2800EFFB0, &qword_2800EFFA8, 0x277D56F10);
  sub_26738121C();
  v22(v10, 0, 1, v31);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267427A30);
  v35(v61, 0);
  sub_266ECB294(0, &qword_2800EFFB8, 0x277D56EF8);
  sub_266ECAF2C(&qword_2800EFFC0, &qword_2800EFFB8, 0x277D56EF8);
  sub_26738121C();
  v22(v10, 0, 1, v31);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267427A50);
  v36(v61, 0);
  sub_266ECB294(0, &qword_2800EFFC8, 0x277D56FE0);
  sub_266ECAF2C(&qword_2800EFFD0, &qword_2800EFFC8, 0x277D56FE0);
  sub_26738121C();
  v22(v10, 0, 1, v31);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267427A70);
  v37(v61, 0);
  sub_266ECB294(0, &qword_2800EFFD8, 0x277D56FC8);
  sub_266ECAF2C(&qword_2800EFFE0, &qword_2800EFFD8, 0x277D56FC8);
  sub_26738121C();
  v22(v10, 0, 1, v31);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267427A90);
  v38(v61, 0);
  sub_266ECB294(0, &qword_2800EFFE8, 0x277D56EA8);
  sub_266ECAF2C(&qword_2800EFFF0, &qword_2800EFFE8, 0x277D56EA8);
  sub_26738121C();
  v22(v10, 0, 1, v31);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267427AB0);
  v39(v61, 0);
  sub_266ECB294(0, &qword_2800EFFF8, 0x277D56E80);
  sub_266ECAF2C(&qword_2800F0000, &qword_2800EFFF8, 0x277D56E80);
  sub_26738121C();
  v22(v10, 0, 1, v31);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x8000000267427AD0);
  v40(v61, 0);
  v41 = v53;
  sub_26738117C();
  v42 = sub_2673811BC();
  v44 = v43;
  v45 = *v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v44 = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_266ECAD54(0, v45[2] + 1, 1, v45);
    *v44 = v45;
  }

  v48 = v45[2];
  v47 = v45[3];
  if (v48 >= v47 >> 1)
  {
    v45 = sub_266ECAD54(v47 > 1, v48 + 1, 1, v45);
    *v44 = v45;
  }

  v45[2] = v48 + 1;
  (*(v54 + 32))(v45 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v48, v41, v55);
  v42(v61, 0);
  sub_266ECB128(&unk_287884918);
  return sub_2673811CC();
}

uint64_t sub_266F2CF28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F2CFC0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F2D08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2D0F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F2D150(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0008, &qword_2800F0010, 0x277D56E70);
  a1[2] = sub_266ECAF2C(&qword_2800F0018, &qword_2800F0010, 0x277D56E70);
  result = sub_266ECAF2C(&qword_2800F0020, &qword_2800F0010, 0x277D56E70);
  a1[3] = result;
  return result;
}

uint64_t static CNVSchemaCNVClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_26738113C();
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v40 = a1;
  v37 = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v36 = *(v12 + 56);
  v36(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449766E63, 0xE500000000000000);
  v13(v42, 0);
  v38 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v41, 0x6449766E63, 0xE500000000000000);
  v16 = *(v12 + 48);
  v39 = v12 + 48;
  v35 = v16;
  if (!v16(v17, 1, v11))
  {
    sub_266ECB128(&unk_287884950);
    sub_26738115C();
  }

  (v15)(v41, 0);
  v14(v42, 0);
  (*(v32 + 104))(v33, *MEMORY[0x277D3E530], v34);
  v42[0] = 1;
  sub_26738114C();
  v18 = v36;
  v36(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674206D0);
  v19(v42, 0);
  sub_26738120C();
  v18(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x4974736575716572, 0xE900000000000064);
  v20(v42, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v41, 0x4974736575716572, 0xE900000000000064);
  if (!v35(v23, 1, v11))
  {
    sub_266ECB128(&unk_287884980);
    sub_26738115C();
  }

  (v22)(v41, 0);
  v21(v42, 0);
  sub_26738120C();
  v24 = v36;
  v36(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449707274, 0xE500000000000000);
  v25(v42, 0);
  sub_26738120C();
  v24(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x6575716552627573, 0xEC00000064497473);
  v26(v42, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v41, 0x6575716552627573, 0xEC00000064497473);
  if (!v35(v29, 1, v11))
  {
    sub_266ECB128(&unk_2878849B0);
    sub_26738115C();
  }

  (v28)(v41, 0);
  return v27(v42, 0);
}

uint64_t sub_266F2D914(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2D978(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVDecisionEngineResponseReported.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_26738113C();
  v27 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v4 + 104);
  v28 = v4 + 104;
  v29 = v13;
  v13(v7, v12, v3);
  v32[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v31 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x646E6148776F6C66, 0xED0000644972656CLL);
  v16(v32, 0);
  v25 = "iri.cnv.CNVActionCandidate";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v26 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v25 | 0x8000000000000000);
  v17(v32, 0);
  v30 = "ionEngineResponseReported";
  v18 = *MEMORY[0x277D3E4E8];
  v19 = v27;
  v20 = v29;
  v29(v7, v18, v27);
  v32[0] = 1;
  sub_26738114C();
  v31(v11, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v30 | 0x8000000000000000);
  v21(v32, 0);
  v20(v7, v18, v19);
  v32[0] = 1;
  sub_26738114C();
  v31(v11, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, 0x8000000267423500);
  return v22(v32, 0);
}

uint64_t sub_266F2DF18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2DF7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVDisambiguationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0030, 0x277D56E90);
  sub_266ECAF2C(&qword_2800F0038, &qword_2800F0030, 0x277D56E90);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0040, 0x277D56EA0);
  sub_266ECAF2C(&qword_2800F0048, &qword_2800F0040, 0x277D56EA0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0050, 0x277D56E98);
  sub_266ECAF2C(&qword_2800F0058, &qword_2800F0050, 0x277D56E98);
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

uint64_t sub_266F2E538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2E59C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVDisambiguationDialogGenerated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267424350);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7954676F6C616964, 0xEA00000000006570);
  return v11(v15, 0);
}

uint64_t sub_266F2E97C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2E9E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVDisambiguationFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v10(v12, 0);
}

uint64_t sub_266F2ECD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2ED38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F2ED9C()
{
  result = qword_2800F0058;
  if (!qword_2800F0058)
  {
    sub_266F2EDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0058);
  }

  return result;
}

unint64_t sub_266F2EDF4()
{
  result = qword_2800F0050;
  if (!qword_2800F0050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0050);
  }

  return result;
}

uint64_t static CNVSchemaCNVDisambiguationFollowupHandled.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267423200);
  return v5(v7, 0);
}

uint64_t sub_266F2F038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2F09C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVEagerStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267427CA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267427CC0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267427CE0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267427D00, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F2F3C4(uint64_t a1)
{
  v2 = sub_266F2F4C8(&qword_2800F0068);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F2F42C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F2F4C8(&qword_2800F0068);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F2F4C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVEagerStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionCommitContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v30[1] = v9;
  v30[2] = a1;
  v30[0] = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x49747865746E6F63, 0xE900000000000064);
  v14(v35, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v34, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v12 + 48))(v17, 1, v11))
  {
    sub_266ECB128(&unk_2878849E0);
    sub_26738115C();
  }

  (v16)(v34, 0);
  v15(v35, 0);
  sub_266ECB294(0, &qword_2800F0070, 0x277D56EB8);
  sub_266ECAF2C(&qword_2800F0078, &qword_2800F0070, 0x277D56EB8);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v18(v35, 0);
  sub_266ECB294(0, &qword_2800F0080, 0x277D56EB0);
  sub_266ECAF2C(&qword_2800F0088, &qword_2800F0080, 0x277D56EB0);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v19(v35, 0);
  sub_26738120C();
  v13(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x736568746F707968, 0xEC00000064497369);
  v20(v35, 0);
  v21 = v31;
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
  (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v21, v33);
  return v22(v35, 0);
}

uint64_t sub_266F2FB58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2FBBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVExecutionCommitEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F2FEA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2FF0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F2FF70()
{
  result = qword_2800F0088;
  if (!qword_2800F0088)
  {
    sub_266F2FFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0088);
  }

  return result;
}

unint64_t sub_266F2FFC8()
{
  result = qword_2800F0080;
  if (!qword_2800F0080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0080);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionCommitStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3025C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F302C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F30324()
{
  result = qword_2800F0078;
  if (!qword_2800F0078)
  {
    sub_266F3037C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0078);
  }

  return result;
}

unint64_t sub_266F3037C()
{
  result = qword_2800F0070;
  if (!qword_2800F0070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0070);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267427E20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267427E40, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x8000000267427E70, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F305DC(uint64_t a1)
{
  v2 = sub_266F306E0(&qword_2800F0098);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F30644(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F306E0(&qword_2800F0098);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F306E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVExecutionFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionOverrideDecision.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267427EE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000044, 0x8000000267427F10, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267427F60, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000035, 0x8000000267427F90, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004CLL, 0x8000000267427FD0, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000043, 0x8000000267428020, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x8000000267428070, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000004BLL, 0x80000002674280A0, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_266F30B70(uint64_t a1)
{
  v2 = sub_266F30C74(&qword_2800F00A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F30BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F30C74(&qword_2800F00A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F30C74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVExecutionOverrideDecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionOverridesEvaluated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionOverrideDecision(0);
  sub_266F30FA8(&qword_2800F00A0, type metadata accessor for CNVSchemaCNVExecutionOverrideDecision);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267428130);
  return v5(v7, 0);
}

uint64_t sub_266F30E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F30F00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F30FA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F30FF0()
{
  result = qword_2800EFF68;
  if (!qword_2800EFF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFF68);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionPrepareContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v27 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x49747865746E6F63, 0xE900000000000064);
  v12(v32, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v31, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884A08);
    sub_26738115C();
  }

  (v14)(v31, 0);
  v13(v32, 0);
  sub_266ECB294(0, &qword_2800F00B0, 0x277D56ED8);
  sub_266ECAF2C(&qword_2800F00B8, &qword_2800F00B0, 0x277D56ED8);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v16(v32, 0);
  sub_266ECB294(0, &qword_2800F00C0, 0x277D56ED0);
  sub_266ECAF2C(&qword_2800F00C8, &qword_2800F00C0, 0x277D56ED0);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v17(v32, 0);
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

uint64_t sub_266F31604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F31668(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVExecutionPrepareEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F31954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F319B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F31A1C()
{
  result = qword_2800F00C8;
  if (!qword_2800F00C8)
  {
    sub_266F31A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00C8);
  }

  return result;
}

unint64_t sub_266F31A74()
{
  result = qword_2800F00C0;
  if (!qword_2800F00C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00C0);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionPrepareStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F31D08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F31D6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F31DD0()
{
  result = qword_2800F00B8;
  if (!qword_2800F00B8)
  {
    sub_266F31E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00B8);
  }

  return result;
}

unint64_t sub_266F31E28()
{
  result = qword_2800F00B0;
  if (!qword_2800F00B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00B0);
  }

  return result;
}

uint64_t static CNVSchemaCNVFindFlowContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v30[1] = v9;
  v30[2] = a1;
  v30[0] = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x49747865746E6F63, 0xE900000000000064);
  v14(v35, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v34, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v12 + 48))(v17, 1, v11))
  {
    sub_266ECB128(&unk_287884A30);
    sub_26738115C();
  }

  (v16)(v34, 0);
  v15(v35, 0);
  sub_266ECB294(0, &qword_2800F00D0, 0x277D56EF0);
  sub_266ECAF2C(&qword_2800F00D8, &qword_2800F00D0, 0x277D56EF0);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v18(v35, 0);
  sub_266ECB294(0, &qword_2800F00E0, 0x277D56EE8);
  sub_266ECAF2C(&qword_2800F00E8, &qword_2800F00E0, 0x277D56EE8);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v19(v35, 0);
  sub_26738120C();
  v13(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x736568746F707968, 0xEC00000064497369);
  v20(v35, 0);
  v21 = v31;
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
  (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v21, v33);
  return v22(v35, 0);
}

uint64_t sub_266F324C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F32524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVFindFlowEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F32810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F32874(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F328D8()
{
  result = qword_2800F00E8;
  if (!qword_2800F00E8)
  {
    sub_266F32930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00E8);
  }

  return result;
}

unint64_t sub_266F32930()
{
  result = qword_2800F00E0;
  if (!qword_2800F00E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00E0);
  }

  return result;
}

uint64_t static CNVSchemaCNVFindFlowStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F32BC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F32C28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F32C8C()
{
  result = qword_2800F00D8;
  if (!qword_2800F00D8)
  {
    sub_266F32CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00D8);
  }

  return result;
}

unint64_t sub_266F32CE4()
{
  result = qword_2800F00D0;
  if (!qword_2800F00D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00D0);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginExecutionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F00F0, 0x277D56F08);
  sub_266ECAF2C(&qword_2800F00F8, &qword_2800F00F0, 0x277D56F08);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F0100, 0x277D56F00);
  sub_266ECAF2C(&qword_2800F0108, &qword_2800F0100, 0x277D56F00);
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
  sub_266ECB128(&unk_287884A58);
  return sub_2673811CC();
}

uint64_t sub_266F3325C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F332C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVFlowPluginExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F335AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F33610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F33674()
{
  result = qword_2800F0108;
  if (!qword_2800F0108)
  {
    sub_266F336CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0108);
  }

  return result;
}

unint64_t sub_266F336CC()
{
  result = qword_2800F0100;
  if (!qword_2800F0100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0100);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F33960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F339C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F33A28()
{
  result = qword_2800F00F8;
  if (!qword_2800F00F8)
  {
    sub_266F33A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00F8);
  }

  return result;
}

unint64_t sub_266F33A80()
{
  result = qword_2800F00F0;
  if (!qword_2800F00F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00F0);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginInputContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v30[1] = v9;
  v30[2] = a1;
  v30[0] = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x49747865746E6F63, 0xE900000000000064);
  v14(v35, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v34, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v12 + 48))(v17, 1, v11))
  {
    sub_266ECB128(&unk_287884A80);
    sub_26738115C();
  }

  (v16)(v34, 0);
  v15(v35, 0);
  sub_266ECB294(0, &qword_2800F0110, 0x277D56F20);
  sub_266ECAF2C(&qword_2800F0118, &qword_2800F0110, 0x277D56F20);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v18(v35, 0);
  sub_266ECB294(0, &qword_2800F0120, 0x277D56F18);
  sub_266ECAF2C(&qword_2800F0128, &qword_2800F0120, 0x277D56F18);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v19(v35, 0);
  sub_26738120C();
  v13(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x736568746F707968, 0xEC00000064497369);
  v20(v35, 0);
  v21 = v31;
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
  (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v21, v33);
  return v22(v35, 0);
}

uint64_t sub_266F34118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3417C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVFlowPluginInputEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6369706F54736168, 0xEF6465676E616843);
  return v10(v12, 0);
}

uint64_t sub_266F34478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F344DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F34540()
{
  result = qword_2800F0128;
  if (!qword_2800F0128)
  {
    sub_266F34598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0128);
  }

  return result;
}

unint64_t sub_266F34598()
{
  result = qword_2800F0120;
  if (!qword_2800F0120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0120);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginInputStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3482C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F34890(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F348F4()
{
  result = qword_2800F0118;
  if (!qword_2800F0118)
  {
    sub_266F3494C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0118);
  }

  return result;
}

unint64_t sub_266F3494C()
{
  result = qword_2800F0110;
  if (!qword_2800F0110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0110);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginLoadContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_287884AA8);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  sub_266ECB294(0, &qword_2800F0130, 0x277D56F40);
  sub_266ECAF2C(&qword_2800F0138, &qword_2800F0130, 0x277D56F40);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v18(v36, 0);
  sub_266ECB294(0, &qword_2800F0140, 0x277D56F30);
  sub_266ECAF2C(&qword_2800F0148, &qword_2800F0140, 0x277D56F30);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v19(v36, 0);
  sub_266ECB294(0, &qword_2800F0150, 0x277D56F38);
  sub_266ECAF2C(&qword_2800F0158, &qword_2800F0150, 0x277D56F38);
  sub_26738121C();
  v13(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
  v20(v36, 0);
  sub_26738120C();
  v13(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x736568746F707968, 0xEC00000064497369);
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

uint64_t sub_266F350AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F35110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVFlowPluginLoadContextEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v21 = *MEMORY[0x277D3E4E8];
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
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v12(v25, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v24, 0x737473697865, 0xE600000000000000);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_287884AD0);
    sub_26738115C();
  }

  (v14)(v24, 0);
  v13(v25, 0);
  v20(v4, v21, v23);
  v25[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6967756C50736168, 0xEF6465686361436ELL);
  return v16(v25, 0);
}

uint64_t sub_266F35588(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F355EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F35650()
{
  result = qword_2800F0148;
  if (!qword_2800F0148)
  {
    sub_266F356A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0148);
  }

  return result;
}

unint64_t sub_266F356A8()
{
  result = qword_2800F0140;
  if (!qword_2800F0140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0140);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginLoadContextFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11(v6, *MEMORY[0x277D3E538], v2);
  v18[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xE900000000000065);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6967756C50736168, 0xEF6465686361436ELL);
  return v15(v18, 0);
}

uint64_t sub_266F35A24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F35A88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F35AEC()
{
  result = qword_2800F0158;
  if (!qword_2800F0158)
  {
    sub_266F35B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0158);
  }

  return result;
}

unint64_t sub_266F35B44()
{
  result = qword_2800F0150;
  if (!qword_2800F0150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0150);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginLoadContextStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F35FDC(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6967756C70, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F35D4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F35FDC(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6967756C70, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F35ED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F35F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F35FDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F36024()
{
  result = qword_2800F0130;
  if (!qword_2800F0130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0130);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentEagerExecutionCancelled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVCancellationReason(0);
  sub_266F36360(&qword_2800EFEF8, type metadata accessor for CNVSchemaCNVCancellationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267428550);
  return v5(v7, 0);
}

uint64_t sub_266F36254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F362B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F36360(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F363A8()
{
  result = qword_2800F0168;
  if (!qword_2800F0168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0168);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentEagerExecutionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0170, 0x277D56F68);
  sub_266ECAF2C(&qword_2800F0178, &qword_2800F0170, 0x277D56F68);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F0180, 0x277D56F58);
  sub_266ECAF2C(&qword_2800F0188, &qword_2800F0180, 0x277D56F58);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F0190, 0x277D56F60);
  sub_266ECAF2C(&qword_2800F0198, &qword_2800F0190, 0x277D56F60);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F0168, 0x277D56F48);
  sub_266ECAF2C(&qword_2800F0160, &qword_2800F0168, 0x277D56F48);
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

uint64_t sub_266F369D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F36A3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVIntentEagerExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F36D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F36D8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F36DF0()
{
  result = qword_2800F0188;
  if (!qword_2800F0188)
  {
    sub_266F36E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0188);
  }

  return result;
}

unint64_t sub_266F36E48()
{
  result = qword_2800F0180;
  if (!qword_2800F0180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0180);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentEagerExecutionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionFailureReason(0);
  sub_266F372E0(&qword_2800F0090, type metadata accessor for CNVSchemaCNVExecutionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F37050()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionFailureReason(0);
  sub_266F372E0(&qword_2800F0090, type metadata accessor for CNVSchemaCNVExecutionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F371D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F37238(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F372E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F37328()
{
  result = qword_2800F0190;
  if (!qword_2800F0190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0190);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentEagerExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F377C0(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6967756C70, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F37530()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F377C0(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6967756C70, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F376B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F37718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F377C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F37808()
{
  result = qword_2800F0170;
  if (!qword_2800F0170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0170);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentFinalExecutionCancelled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVCancellationReason(0);
  sub_266F37B44(&qword_2800EFEF8, type metadata accessor for CNVSchemaCNVCancellationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267428550);
  return v5(v7, 0);
}

uint64_t sub_266F37A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F37A9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F37B44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F37B8C()
{
  result = qword_2800F01A8;
  if (!qword_2800F01A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01A8);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentFinalExecutionContext.makeTypeManifestAndEnsureFields(in:)()
{
  v25 = sub_26738118C();
  v23 = *(v25 - 8);
  v0 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F01B0, 0x277D56F90);
  sub_266ECAF2C(&qword_2800F01B8, &qword_2800F01B0, 0x277D56F90);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800F01C0, 0x277D56F80);
  sub_266ECAF2C(&qword_2800F01C8, &qword_2800F01C0, 0x277D56F80);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F01D0, 0x277D56F88);
  sub_266ECAF2C(&qword_2800F01D8, &qword_2800F01D0, 0x277D56F88);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F01A8, 0x277D56F70);
  sub_266ECAF2C(&qword_2800F01A0, &qword_2800F01A8, 0x277D56F70);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x656C6C65636E6163, 0xE900000000000064);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v12 = v24;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x736568746F707968, 0xEC00000064497369);
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
  (*(v23 + 32))(v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, v12, v25);
  return v14(v26, 0);
}

uint64_t sub_266F3828C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F382F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVIntentFinalExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for CNVSchemaCNVEagerStatus(0);
  sub_266F38884(&qword_2800F0060, type metadata accessor for CNVSchemaCNVEagerStatus);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6174537265676165, 0xEB00000000737574);
  v10(v16, 0);
  type metadata accessor for CNVSchemaCNVBypassReason(0);
  sub_266F38884(&qword_2800EFEE8, type metadata accessor for CNVSchemaCNVBypassReason);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6552737361707962, 0xEC0000006E6F7361);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E540], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x73735278616DLL, 0xE600000000000000);
  return v12(v16, 0);
}

uint64_t sub_266F38778(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F387DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F38884(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F388CC()
{
  result = qword_2800F01C0;
  if (!qword_2800F01C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01C0);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentFinalExecutionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionFailureReason(0);
  sub_266F38D64(&qword_2800F0090, type metadata accessor for CNVSchemaCNVExecutionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F38AD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionFailureReason(0);
  sub_266F38D64(&qword_2800F0090, type metadata accessor for CNVSchemaCNVExecutionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F38C58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F38CBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F38D64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F38DAC()
{
  result = qword_2800F01D0;
  if (!qword_2800F01D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01D0);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentFinalExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F3922C(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6967756C70, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7065446B63617473, 0xEA00000000006874);
  return v11(v15, 0);
}

uint64_t sub_266F39120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F39184(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F3922C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F39274()
{
  result = qword_2800F01B0;
  if (!qword_2800F01B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01B0);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentReformationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F01E0, 0x277D56FB0);
  sub_266ECAF2C(&qword_2800F01E8, &qword_2800F01E0, 0x277D56FB0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F01F0, 0x277D56FA0);
  sub_266ECAF2C(&qword_2800F01F8, &qword_2800F01F0, 0x277D56FA0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0200, 0x277D56FA8);
  sub_266ECAF2C(&qword_2800F0208, &qword_2800F0200, 0x277D56FA8);
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

uint64_t sub_266F397D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3983C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVIntentReformationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64656D726F666572, 0xEE00746E65746E49);
  return v5(v7, 0);
}

uint64_t sub_266F39AC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64656D726F666572, 0xEE00746E65746E49);
  return v5(v7, 0);
}

uint64_t sub_266F39C68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F39CCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVIntentReformationFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVReformationFailureReason(0);
  sub_266F3A1BC(&qword_2800F0220, type metadata accessor for CNVSchemaCNVReformationFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F39F2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVReformationFailureReason(0);
  sub_266F3A1BC(&qword_2800F0220, type metadata accessor for CNVSchemaCNVReformationFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F3A0B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3A114(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F3A1BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F3A204()
{
  result = qword_2800F0200;
  if (!qword_2800F0200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0200);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentReformationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVTransformer(0);
  sub_266F3A614(&qword_2800F0228, type metadata accessor for CNVSchemaCNVTransformer);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F66736E617274, 0xEB0000000072656DLL);
  v6(v9, 0);
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F3A614(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C50746567726174, 0xEC0000006E696775);
  return v7(v9, 0);
}

uint64_t sub_266F3A508(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3A56C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F3A614(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F3A65C()
{
  result = qword_2800F01E0;
  if (!qword_2800F01E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01E0);
  }

  return result;
}

uint64_t static CNVSchemaCNVLinkMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x697463416B6E696CLL, 0xEC00000064496E6FLL);
  v12(v17, 0);
  type metadata accessor for LINKSchemaLINKSystemActionProtocol(0);
  sub_266F3AB3C();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x72506D6574737973, 0xEE006C6F636F746FLL);
  return v13(v17, 0);
}

uint64_t sub_266F3AA78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3AADC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3AB3C()
{
  result = qword_2800F0230;
  if (!qword_2800F0230)
  {
    type metadata accessor for LINKSchemaLINKSystemActionProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0230);
  }

  return result;
}

uint64_t static CNVSchemaCNVLinkMetadataTier1.makeTypeManifestAndEnsureFields(in:)()
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
    sub_266ECB128(&unk_287884AF8);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_266F3AFB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3B01C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVPlugin.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v236 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267428940, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v236;

  v1(v275, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v237 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x4947554C50564E43, 0xEF4D52414C415F4ELL, v11);
  v12 = *v9;
  *v9 = v237;

  v7(v275, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v238 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267428960, v17);
  v18 = *v15;
  *v15 = v238;

  v13(v275, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v239 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x4947554C50564E43, 0xEF4F494455415F4ELL, v23);
  v24 = *v21;
  *v21 = v239;

  v19(v275, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v240 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x8000000267428980, v29);
  v30 = *v27;
  *v27 = v240;

  v25(v275, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v241 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x80000002674289A0, v35);
  v36 = *v33;
  *v33 = v241;

  v31(v275, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v242 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000012, 0x80000002674289C0, v41);
  v42 = *v39;
  *v39 = v242;

  v37(v275, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v243 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000012, 0x80000002674289E0, v47);
  v48 = *v45;
  *v45 = v243;

  v43(v275, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267428A00, v53);
  v54 = *v51;
  *v51 = v244;

  v49(v275, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v245 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000015, 0x8000000267428A20, v59);
  v60 = *v57;
  *v57 = v245;

  v55(v275, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000010, 0x8000000267428A40, v65);
  v66 = *v63;
  *v63 = v246;

  v61(v275, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v247 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0x4947554C50564E43, 0xED00004F45475F4ELL, v71);
  v72 = *v69;
  *v69 = v247;

  v67(v275, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000010, 0x8000000267428A60, v77);
  v78 = *v75;
  *v75 = v248;

  v73(v275, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v249 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000018, 0x8000000267428A80, v83);
  v84 = *v81;
  *v81 = v249;

  v79(v275, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001BLL, 0x8000000267428AA0, v89);
  v90 = *v87;
  *v87 = v250;

  v85(v275, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000012, 0x8000000267428AC0, v95);
  v96 = *v93;
  *v93 = v251;

  v91(v275, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000012, 0x8000000267428AE0, v101);
  v102 = *v99;
  *v99 = v252;

  v97(v275, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v253 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000012, 0x8000000267428B00, v107);
  v108 = *v105;
  *v105 = v253;

  v103(v275, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v254 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000017, 0x8000000267428B20, v113);
  v114 = *v111;
  *v111 = v254;

  v109(v275, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v255 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000013, 0x8000000267428B40, v119);
  v120 = *v117;
  *v117 = v255;

  v115(v275, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v256 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000012, 0x8000000267428B60, v125);
  v126 = *v123;
  *v123 = v256;

  v121(v275, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v257 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0x4947554C50564E43, 0xEF52454D49545F4ELL, v131);
  v132 = *v129;
  *v129 = v257;

  v127(v275, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v258 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0x4947554C50564E43, 0xEF4F454449565F4ELL, v137);
  v138 = *v135;
  *v135 = v258;

  v133(v275, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000017, 0x8000000267428B80, v143);
  v144 = *v141;
  *v141 = v259;

  v139(v275, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v260 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000012, 0x8000000267428BA0, v149);
  v150 = *v147;
  *v147 = v260;

  v145(v275, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v261 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001CLL, 0x8000000267428BC0, v155);
  v156 = *v153;
  *v153 = v261;

  v151(v275, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v262 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000015, 0x8000000267428BE0, v161);
  v162 = *v159;
  *v159 = v262;

  v157(v275, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0x4947554C50564E43, 0xEE004B4E494C5F4ELL, v167);
  v168 = *v165;
  *v165 = v263;

  v163(v275, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000015, 0x8000000267428C00, v173);
  v174 = *v171;
  *v171 = v264;

  v169(v275, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v265 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0x4947554C50564E43, 0xEF4B434F4C435F4ELL, v179);
  v180 = *v177;
  *v177 = v265;

  v175(v275, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000012, 0x8000000267428C20, v185);
  v186 = *v183;
  *v183 = v266;

  v181(v275, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000019, 0x8000000267428C40, v191);
  v192 = *v189;
  *v189 = v267;

  v187(v275, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000015, 0x8000000267428C60, v197);
  v198 = *v195;
  *v195 = v268;

  v193(v275, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0x4947554C50564E43, 0xEE004C49414D5F4ELL, v203);
  v204 = *v201;
  *v201 = v269;

  v199(v275, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000012, 0x8000000267428C80, v209);
  v210 = *v207;
  *v207 = v270;

  v205(v275, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000015, 0x8000000267428CA0, v215);
  v216 = *v213;
  *v213 = v271;

  v211(v275, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000013, 0x8000000267428CC0, v221);
  v222 = *v219;
  *v219 = v272;

  v217(v275, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000010, 0x8000000267428CE0, v227);
  v228 = *v225;
  *v225 = v273;

  v223(v275, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000010, 0x8000000267428D00, v233);
  v234 = *v231;
  *v231 = v274;

  return v229(v275, 0);
}

uint64_t sub_266F3C304(uint64_t a1)
{
  v2 = sub_266F3C408(&qword_2800F0238);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F3C36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F3C408(&qword_2800F0238);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F3C408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVPostFlowPrepareContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0240, 0x277D56FD8);
  sub_266ECAF2C(&qword_2800F0248, &qword_2800F0240, 0x277D56FD8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0250, 0x277D56FD0);
  sub_266ECAF2C(&qword_2800F0258, &qword_2800F0250, 0x277D56FD0);
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

uint64_t sub_266F3C898(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3C8FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVPostFlowPrepareEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3CBE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3CC4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3CCB0()
{
  result = qword_2800F0258;
  if (!qword_2800F0258)
  {
    sub_266F3CD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0258);
  }

  return result;
}

unint64_t sub_266F3CD08()
{
  result = qword_2800F0250;
  if (!qword_2800F0250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0250);
  }

  return result;
}

uint64_t static CNVSchemaCNVPostFlowPrepareStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3CF9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3D000(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3D064()
{
  result = qword_2800F0248;
  if (!qword_2800F0248)
  {
    sub_266F3D0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0248);
  }

  return result;
}

unint64_t sub_266F3D0BC()
{
  result = qword_2800F0240;
  if (!qword_2800F0240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0240);
  }

  return result;
}

uint64_t static CNVSchemaCNVPreFlowPrepareContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0260, 0x277D56FF0);
  sub_266ECAF2C(&qword_2800F0268, &qword_2800F0260, 0x277D56FF0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0270, 0x277D56FE8);
  sub_266ECAF2C(&qword_2800F0278, &qword_2800F0270, 0x277D56FE8);
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

uint64_t sub_266F3D554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3D5B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVPreFlowPrepareEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3D8A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3D908(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3D96C()
{
  result = qword_2800F0278;
  if (!qword_2800F0278)
  {
    sub_266F3D9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0278);
  }

  return result;
}

unint64_t sub_266F3D9C4()
{
  result = qword_2800F0270;
  if (!qword_2800F0270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0270);
  }

  return result;
}

uint64_t static CNVSchemaCNVPreFlowPrepareStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3DC58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3DCBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3DD20()
{
  result = qword_2800F0268;
  if (!qword_2800F0268)
  {
    sub_266F3DD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0268);
  }

  return result;
}

unint64_t sub_266F3DD78()
{
  result = qword_2800F0260;
  if (!qword_2800F0260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0260);
  }

  return result;
}

uint64_t static CNVSchemaCNVReformationFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267428EC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267428EE0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267428F10, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F3DFD8(uint64_t a1)
{
  v2 = sub_266F3E0DC(&qword_2800F0280);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F3E040(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F3E0DC(&qword_2800F0280);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F3E0DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVReformationFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVTransformer.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267428F70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267428F90, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_266F3E2C4(uint64_t a1)
{
  v2 = sub_266F3E3C8(&qword_2800F0288);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F3E32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F3E3C8(&qword_2800F0288);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F3E3C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVTransformer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVUsoGraphTier1.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3E5EC()
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

uint64_t sub_266F3E794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3E7F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCollatedActionCandidate.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = "iri.cnv.CollatedActionCandidate";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, v10 | 0x8000000000000000);
  v6(v11, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001DLL, 0x8000000267429030);
  return v7(v11, 0);
}

uint64_t sub_266F3EB38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3EB9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DHTSchemaDHTDeleteTrigger.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v34 = sub_26738113C();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v9 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 25705, 0xE200000000000000);
  v13(v40, 0);
  v31 = v9;
  sub_26738120C();
  v36 = v12;
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449686365657073, 0xE800000000000000);
  v14(v40, 0);
  v37 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v39, 0x6449686365657073, 0xE800000000000000);
  v17 = *(v11 + 48);
  v35 = v10;
  v30 = v17;
  if (!v17(v18, 1, v10))
  {
    sub_266ECB128(&unk_287884B28);
    sub_26738115C();
  }

  (v16)(v39, 0);
  v15(v40, 0);
  sub_26738120C();
  v19 = v35;
  v36(v8, 0, 1, v35);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6976654469726973, 0xEC00000064496563);
  v20(v40, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v39, 0x6976654469726973, 0xEC00000064496563);
  if (!v30(v23, 1, v19))
  {
    sub_266ECB128(&unk_287884B50);
    sub_26738115C();
  }

  (v22)(v39, 0);
  v21(v40, 0);
  (*(v32 + 104))(v33, *MEMORY[0x277D3E540], v34);
  v40[0] = 1;
  sub_26738114C();
  v24 = v35;
  v25 = v36;
  v36(v8, 0, 1, v35);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267429080);
  v26(v40, 0);
  type metadata accessor for DHTSchemaDHTTriggerEvent(0);
  sub_266F3F354();
  sub_26738120C();
  v25(v8, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674290A0);
  v27(v40, 0);
  sub_266ECB128(&unk_287884B78);
  return sub_2673811CC();
}

uint64_t sub_266F3F290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3F2F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3F354()
{
  result = qword_2800F02A0;
  if (!qword_2800F02A0)
  {
    type metadata accessor for DHTSchemaDHTTriggerEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F02A0);
  }

  return result;
}

uint64_t static DHTSchemaDHTServerEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F02B0, 0x277D57028);
  sub_266ECAF2C(&qword_2800F02A8, &qword_2800F02B0, 0x277D57028);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x72546574656C6564, 0xED00007265676769);
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
  sub_266ECB128(&unk_287884BA8);
  return sub_2673811CC();
}

uint64_t sub_266F3F748(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F3F7E0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F3F8AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3F910(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F3F970(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F02B8, &qword_2800F02C0, 0x277D57030);
  a1[2] = sub_266ECAF2C(&qword_2800F02C8, &qword_2800F02C0, 0x277D57030);
  result = sub_266ECAF2C(&qword_2800F02D0, &qword_2800F02C0, 0x277D57030);
  a1[3] = result;
  return result;
}

uint64_t static DHTSchemaDHTTriggerEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267429120, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267429140, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267429170, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F3FC84(uint64_t a1)
{
  v2 = sub_266F3FD88(&qword_2800F02E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F3FCEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F3FD88(&qword_2800F02E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F3FD88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DHTSchemaDHTTriggerEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DialogEngineSchemaDialogEngineNamedEntity.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityParameter(0);
  sub_266F40208(&qword_2800F02E8, type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityParameter);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D61726150746163, 0xEC00000072657465);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674291E0);
  return v11(v15, 0);
}

uint64_t sub_266F400FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F40160(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F40208(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F40250()
{
  result = qword_2800F02F8;
  if (!qword_2800F02F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F02F8);
  }

  return result;
}

uint64_t static DialogEngineSchemaDialogEngineNamedEntityCatId.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v236 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267429240, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v236;

  v1(v275, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v237 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x8000000267429270, v11);
  v12 = *v9;
  *v9 = v237;

  v7(v275, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v238 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003CLL, 0x80000002674292C0, v17);
  v18 = *v15;
  *v15 = v238;

  v13(v275, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v239 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003FLL, 0x8000000267429300, v23);
  v24 = *v21;
  *v21 = v239;

  v19(v275, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v240 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000005DLL, 0x8000000267429340, v29);
  v30 = *v27;
  *v27 = v240;

  v25(v275, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v241 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000043, 0x80000002674293A0, v35);
  v36 = *v33;
  *v33 = v241;

  v31(v275, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v242 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003CLL, 0x80000002674293F0, v41);
  v42 = *v39;
  *v39 = v242;

  v37(v275, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v243 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000003ALL, 0x8000000267429430, v47);
  v48 = *v45;
  *v45 = v243;

  v43(v275, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000004ALL, 0x8000000267429470, v53);
  v54 = *v51;
  *v51 = v244;

  v49(v275, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v245 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000004DLL, 0x80000002674294C0, v59);
  v60 = *v57;
  *v57 = v245;

  v55(v275, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000047, 0x8000000267429510, v65);
  v66 = *v63;
  *v63 = v246;

  v61(v275, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v247 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000030, 0x8000000267429560, v71);
  v72 = *v69;
  *v69 = v247;

  v67(v275, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000034, 0x80000002674295A0, v77);
  v78 = *v75;
  *v75 = v248;

  v73(v275, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v249 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000038, 0x80000002674295E0, v83);
  v84 = *v81;
  *v81 = v249;

  v79(v275, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002ELL, 0x8000000267429620, v89);
  v90 = *v87;
  *v87 = v250;

  v85(v275, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000044, 0x8000000267429650, v95);
  v96 = *v93;
  *v93 = v251;

  v91(v275, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000033, 0x80000002674296A0, v101);
  v102 = *v99;
  *v99 = v252;

  v97(v275, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v253 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000044, 0x80000002674296E0, v107);
  v108 = *v105;
  *v105 = v253;

  v103(v275, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v254 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000043, 0x8000000267429730, v113);
  v114 = *v111;
  *v111 = v254;

  v109(v275, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v255 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000051, 0x8000000267429780, v119);
  v120 = *v117;
  *v117 = v255;

  v115(v275, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v256 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000044, 0x80000002674297E0, v125);
  v126 = *v123;
  *v123 = v256;

  v121(v275, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v257 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000042, 0x8000000267429830, v131);
  v132 = *v129;
  *v129 = v257;

  v127(v275, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v258 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000043, 0x8000000267429880, v137);
  v138 = *v135;
  *v135 = v258;

  v133(v275, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000042, 0x80000002674298D0, v143);
  v144 = *v141;
  *v141 = v259;

  v139(v275, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v260 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000003ELL, 0x8000000267429920, v149);
  v150 = *v147;
  *v147 = v260;

  v145(v275, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v261 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000004DLL, 0x8000000267429960, v155);
  v156 = *v153;
  *v153 = v261;

  v151(v275, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v262 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000003ALL, 0x80000002674299B0, v161);
  v162 = *v159;
  *v159 = v262;

  v157(v275, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000043, 0x80000002674299F0, v167);
  v168 = *v165;
  *v165 = v263;

  v163(v275, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000003FLL, 0x8000000267429A40, v173);
  v174 = *v171;
  *v171 = v264;

  v169(v275, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v265 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000050, 0x8000000267429A80, v179);
  v180 = *v177;
  *v177 = v265;

  v175(v275, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000048, 0x8000000267429AE0, v185);
  v186 = *v183;
  *v183 = v266;

  v181(v275, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000055, 0x8000000267429B30, v191);
  v192 = *v189;
  *v189 = v267;

  v187(v275, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000003BLL, 0x8000000267429B90, v197);
  v198 = *v195;
  *v195 = v268;

  v193(v275, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000004ELL, 0x8000000267429BD0, v203);
  v204 = *v201;
  *v201 = v269;

  v199(v275, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000030, 0x8000000267429C20, v209);
  v210 = *v207;
  *v207 = v270;

  v205(v275, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000039, 0x8000000267429C60, v215);
  v216 = *v213;
  *v213 = v271;

  v211(v275, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000030, 0x8000000267429CA0, v221);
  v222 = *v219;
  *v219 = v272;

  v217(v275, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000038, 0x8000000267429CE0, v227);
  v228 = *v225;
  *v225 = v273;

  v223(v275, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000003BLL, 0x8000000267429D20, v233);
  v234 = *v231;
  *v231 = v274;

  return v229(v275, 0);
}

uint64_t sub_266F414D4(uint64_t a1)
{
  v2 = sub_266F415D8(&qword_2800F0308);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F4153C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F415D8(&qword_2800F0308);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F415D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityCatId(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DialogEngineSchemaDialogEngineNamedEntityParameter.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v422 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267429DA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v422;

  v1(v492, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v423 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000004CLL, 0x8000000267429DD0, v11);
  v12 = *v9;
  *v9 = v423;

  v7(v492, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v424 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000004BLL, 0x8000000267429E20, v17);
  v18 = *v15;
  *v15 = v424;

  v13(v492, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v425 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000049, 0x8000000267429E70, v23);
  v24 = *v21;
  *v21 = v425;

  v19(v492, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v426 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004BLL, 0x8000000267429EC0, v29);
  v30 = *v27;
  *v27 = v426;

  v25(v492, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v427 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000004ALL, 0x8000000267429F10, v35);
  v36 = *v33;
  *v33 = v427;

  v31(v492, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v428 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000006FLL, 0x8000000267429F60, v41);
  v42 = *v39;
  *v39 = v428;

  v37(v492, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v429 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000050, 0x8000000267429FD0, v47);
  v48 = *v45;
  *v45 = v429;

  v43(v492, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v430 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000049, 0x800000026742A030, v53);
  v54 = *v51;
  *v51 = v430;

  v49(v492, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v431 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000047, 0x800000026742A080, v59);
  v60 = *v57;
  *v57 = v431;

  v55(v492, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v432 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000055, 0x800000026742A0D0, v65);
  v66 = *v63;
  *v63 = v432;

  v61(v492, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v433 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000058, 0x800000026742A130, v71);
  v72 = *v69;
  *v69 = v433;

  v67(v492, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v434 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000005ELL, 0x800000026742A190, v77);
  v78 = *v75;
  *v75 = v434;

  v73(v492, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v435 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000058, 0x800000026742A1F0, v83);
  v84 = *v81;
  *v81 = v435;

  v79(v492, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v436 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000005ELL, 0x800000026742A250, v89);
  v90 = *v87;
  *v87 = v436;

  v85(v492, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v437 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000052, 0x800000026742A2B0, v95);
  v96 = *v93;
  *v93 = v437;

  v91(v492, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v438 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000058, 0x800000026742A310, v101);
  v102 = *v99;
  *v99 = v438;

  v97(v492, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v439 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000044, 0x800000026742A370, v107);
  v108 = *v105;
  *v105 = v439;

  v103(v492, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v440 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000003DLL, 0x800000026742A3C0, v113);
  v114 = *v111;
  *v111 = v440;

  v109(v492, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v441 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000046, 0x800000026742A400, v119);
  v120 = *v117;
  *v117 = v441;

  v115(v492, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v442 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000004ELL, 0x800000026742A450, v125);
  v126 = *v123;
  *v123 = v442;

  v121(v492, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v443 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000047, 0x800000026742A4A0, v131);
  v132 = *v129;
  *v129 = v443;

  v127(v492, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v444 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000004CLL, 0x800000026742A4F0, v137);
  v138 = *v135;
  *v135 = v444;

  v133(v492, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v445 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000004DLL, 0x800000026742A540, v143);
  v144 = *v141;
  *v141 = v445;

  v139(v492, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v446 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000045, 0x800000026742A590, v149);
  v150 = *v147;
  *v147 = v446;

  v145(v492, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v447 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000003BLL, 0x800000026742A5E0, v155);
  v156 = *v153;
  *v153 = v447;

  v151(v492, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v448 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000042, 0x800000026742A620, v161);
  v162 = *v159;
  *v159 = v448;

  v157(v492, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v449 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000003BLL, 0x800000026742A670, v167);
  v168 = *v165;
  *v165 = v449;

  v163(v492, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v450 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000050, 0x800000026742A6B0, v173);
  v174 = *v171;
  *v171 = v450;

  v169(v492, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v451 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000004FLL, 0x800000026742A710, v179);
  v180 = *v177;
  *v177 = v451;

  v175(v492, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v452 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000003FLL, 0x800000026742A760, v185);
  v186 = *v183;
  *v183 = v452;

  v181(v492, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v453 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000003ELL, 0x800000026742A7A0, v191);
  v192 = *v189;
  *v189 = v453;

  v187(v492, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v454 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000050, 0x800000026742A7E0, v197);
  v198 = *v195;
  *v195 = v454;

  v193(v492, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v455 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000059, 0x800000026742A840, v203);
  v204 = *v201;
  *v201 = v455;

  v199(v492, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v456 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD00000000000004FLL, 0x800000026742A8A0, v209);
  v210 = *v207;
  *v207 = v456;

  v205(v492, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v457 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000004FLL, 0x800000026742A8F0, v215);
  v216 = *v213;
  *v213 = v457;

  v211(v492, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v458 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000058, 0x800000026742A940, v221);
  v222 = *v219;
  *v219 = v458;

  v217(v492, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v459 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000004ELL, 0x800000026742A9A0, v227);
  v228 = *v225;
  *v225 = v459;

  v223(v492, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v460 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000063, 0x800000026742A9F0, v233);
  v234 = *v231;
  *v231 = v460;

  v229(v492, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v461 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD00000000000006DLL, 0x800000026742AA60, v239);
  v240 = *v237;
  *v237 = v461;

  v235(v492, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v462 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000050, 0x800000026742AAD0, v245);
  v246 = *v243;
  *v243 = v462;

  v241(v492, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v463 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000059, 0x800000026742AB30, v251);
  v252 = *v249;
  *v249 = v463;

  v247(v492, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v464 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000004FLL, 0x800000026742AB90, v257);
  v258 = *v255;
  *v255 = v464;

  v253(v492, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v465 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000004ELL, 0x800000026742ABE0, v263);
  v264 = *v261;
  *v261 = v465;

  v259(v492, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v466 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0xD00000000000004DLL, 0x800000026742AC30, v269);
  v270 = *v267;
  *v267 = v466;

  v265(v492, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v467 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0xD00000000000004ELL, 0x800000026742AC80, v275);
  v276 = *v273;
  *v273 = v467;

  v271(v492, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v468 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0xD00000000000004ELL, 0x800000026742ACD0, v281);
  v282 = *v279;
  *v279 = v468;

  v277(v492, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v469 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0xD00000000000004CLL, 0x800000026742AD20, v287);
  v288 = *v285;
  *v285 = v469;

  v283(v492, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v470 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000049, 0x800000026742AD70, v293);
  v294 = *v291;
  *v291 = v470;

  v289(v492, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v471 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 0xD00000000000005FLL, 0x800000026742ADC0, v299);
  v300 = *v297;
  *v297 = v471;

  v295(v492, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v472 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000063, 0x800000026742AE20, v305);
  v306 = *v303;
  *v303 = v472;

  v301(v492, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v473 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000069, 0x800000026742AE90, v311);
  v312 = *v309;
  *v309 = v473;

  v307(v492, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v474 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 0xD00000000000004CLL, 0x800000026742AF00, v317);
  v318 = *v315;
  *v315 = v474;

  v313(v492, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v475 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000045, 0x800000026742AF50, v323);
  v324 = *v321;
  *v321 = v475;

  v319(v492, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v476 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 0xD00000000000004FLL, 0x800000026742AFA0, v329);
  v330 = *v327;
  *v327 = v476;

  v325(v492, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v477 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 0xD00000000000004ELL, 0x800000026742AFF0, v335);
  v336 = *v333;
  *v333 = v477;

  v331(v492, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v478 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 0xD00000000000004ALL, 0x800000026742B040, v341);
  v342 = *v339;
  *v339 = v478;

  v337(v492, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v479 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 0xD00000000000005BLL, 0x800000026742B090, v347);
  v348 = *v345;
  *v345 = v479;

  v343(v492, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v480 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000054, 0x800000026742B0F0, v353);
  v354 = *v351;
  *v351 = v480;

  v349(v492, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v481 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000053, 0x800000026742B150, v359);
  v360 = *v357;
  *v357 = v481;

  v355(v492, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v482 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000060, 0x800000026742B1B0, v365);
  v366 = *v363;
  *v363 = v482;

  v361(v492, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v483 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000048, 0x800000026742B220, v371);
  v372 = *v369;
  *v369 = v483;

  v367(v492, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v484 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000047, 0x800000026742B270, v377);
  v378 = *v375;
  *v375 = v484;

  v373(v492, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v485 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000059, 0x800000026742B2C0, v383);
  v384 = *v381;
  *v381 = v485;

  v379(v492, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v486 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(64, 0xD00000000000003BLL, 0x800000026742B320, v389);
  v390 = *v387;
  *v387 = v486;

  v385(v492, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v487 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000046, 0x800000026742B360, v395);
  v396 = *v393;
  *v393 = v487;

  v391(v492, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v488 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(66, 0xD00000000000003DLL, 0x800000026742B3B0, v401);
  v402 = *v399;
  *v399 = v488;

  v397(v492, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v489 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000042, 0x800000026742B3F0, v407);
  v408 = *v405;
  *v405 = v489;

  v403(v492, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v490 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(68, 0xD00000000000004ALL, 0x800000026742B440, v413);
  v414 = *v411;
  *v411 = v490;

  v409(v492, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v491 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000049, 0x800000026742B490, v419);
  v420 = *v417;
  *v417 = v491;

  return v415(v492, 0);
}