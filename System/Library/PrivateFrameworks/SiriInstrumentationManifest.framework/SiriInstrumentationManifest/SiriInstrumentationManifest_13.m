uint64_t static MTSchemaMTLocalePairResolved.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v5(v7, 0);
}

uint64_t sub_2670E4748()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v5(v7, 0);
}

uint64_t sub_2670E48E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E494C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTSourceOrTargetLanguage.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026745B9D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026745BA00, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026745BA20, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670E4C08(uint64_t a1)
{
  v2 = sub_2670E4D0C(&qword_2800F4AD0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E4C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E4D0C(&qword_2800F4AD0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E4D0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTSourceOrTargetLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTTask.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x555F4B534154544DLL, 0xEE004E574F4E4B4ELL, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026745BA60, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x575F4B534154544DLL, 0xEA00000000004245, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x535F4B534154544DLL, 0xED00004D45545359, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0x535F4B534154544DLL, 0xEB00000000495249, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670E5058(uint64_t a1)
{
  v2 = sub_2670E515C(&qword_2800F4AD8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E50C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E515C(&qword_2800F4AD8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E515C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTTranslationTTSPlayed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v16 = a1;
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MTSchemaMTSourceOrTargetLanguage(0);
  sub_2670E5770(&qword_2800F4AC8, type metadata accessor for MTSchemaMTSourceOrTargetLanguage);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x724F656372756F73, 0xEE00746567726154);
  v11(v18, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v17);
  v18[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026745BAB0);
  v12(v18, 0);
  type metadata accessor for MTSchemaMTTTSPlaybackSpeed(0);
  sub_2670E5770(&qword_2800F4AE0, type metadata accessor for MTSchemaMTTTSPlaybackSpeed);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6B63616279616C70, 0xED00006465657053);
  v13(v18, 0);
  type metadata accessor for MTSchemaMTAudioChannel(0);
  sub_2670E5770(&qword_2800F4890, type metadata accessor for MTSchemaMTAudioChannel);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6168436F69647561, 0xEC0000006C656E6ELL);
  return v14(v18, 0);
}

uint64_t sub_2670E5664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E56C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E5770(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670E57B8()
{
  result = qword_2800F49F8;
  if (!qword_2800F49F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F49F8);
  }

  return result;
}

uint64_t static MTSchemaMTTTSPlaybackSpeed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026745BB00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026745BB20, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x800000026745BB40, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026745BB60, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026745BB80, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670E5B04(uint64_t a1)
{
  v2 = sub_2670E5C08(&qword_2800F4AE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E5B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E5C08(&qword_2800F4AE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E5C08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTTTSPlaybackSpeed(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTAssetEndPoint.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026745BBD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026745BBF0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026745BC10, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026745BC30, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026745BC60, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x800000026745BC80, v35);
  v36 = *v33;
  *v33 = v43;

  v31(v44, 0);
  sub_266ECB128(&unk_287888A20);
  return sub_26738112C();
}

uint64_t sub_2670E5FC8(uint64_t a1)
{
  v2 = sub_2670E60CC(&qword_2800F4AF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E6030(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E60CC(&qword_2800F4AF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E60CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTAssetEndPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTAssetLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026745BCD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026745BCF0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026745BD10, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670E6324(uint64_t a1)
{
  v2 = sub_2670E6428(&qword_2800F4B08);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E638C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E6428(&qword_2800F4B08);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E6428(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTAssetLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTAssetSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026745BD60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x800000026745BD80, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745BDA0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026745BDC0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x800000026745BDE0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x800000026745BE00, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x800000026745BE30, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2670E6844(uint64_t a1)
{
  v2 = sub_2670E6948(&qword_2800F4B18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E68AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E6948(&qword_2800F4B18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E6948(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTAssetSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTAudioRouteType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026745BE80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026745BEA0, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026745BED0, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026745BEF0, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026745BF10, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x800000026745BF40, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x800000026745BF70, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x800000026745BF90, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000016, 0x800000026745BFB0, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x800000026745BFD0, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_2670E6EB4(uint64_t a1)
{
  v2 = sub_2670E6FB8(&qword_2800F4B28);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E6F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E6FB8(&qword_2800F4B28);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E6FB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTAudioRouteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTCheckpoint.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x800000026745C020, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v176;

  v1(v205, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026745C040, v11);
  v12 = *v9;
  *v9 = v177;

  v7(v205, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026745C070, v17);
  v18 = *v15;
  *v15 = v178;

  v13(v205, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x800000026745C0A0, v23);
  v24 = *v21;
  *v21 = v179;

  v19(v205, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026745C0E0, v29);
  v30 = *v27;
  *v27 = v180;

  v25(v205, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x800000026745C110, v35);
  v36 = *v33;
  *v33 = v181;

  v31(v205, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x800000026745C130, v41);
  v42 = *v39;
  *v39 = v182;

  v37(v205, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x800000026745C150, v47);
  v48 = *v45;
  *v45 = v183;

  v43(v205, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x800000026745C170, v53);
  v54 = *v51;
  *v51 = v184;

  v49(v205, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x800000026745C190, v59);
  v60 = *v57;
  *v57 = v185;

  v55(v205, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x800000026745C1C0, v65);
  v66 = *v63;
  *v63 = v186;

  v61(v205, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x800000026745C1F0, v71);
  v72 = *v69;
  *v69 = v187;

  v67(v205, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x800000026745C210, v77);
  v78 = *v75;
  *v75 = v188;

  v73(v205, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001DLL, 0x800000026745C230, v83);
  v84 = *v81;
  *v81 = v189;

  v79(v205, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000023, 0x800000026745C250, v89);
  v90 = *v87;
  *v87 = v190;

  v85(v205, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000020, 0x800000026745C280, v95);
  v96 = *v93;
  *v93 = v191;

  v91(v205, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000022, 0x800000026745C2B0, v101);
  v102 = *v99;
  *v99 = v192;

  v97(v205, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000020, 0x800000026745C2E0, v107);
  v108 = *v105;
  *v105 = v193;

  v103(v205, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001FLL, 0x800000026745C310, v113);
  v114 = *v111;
  *v111 = v194;

  v109(v205, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000027, 0x800000026745C330, v119);
  v120 = *v117;
  *v117 = v195;

  v115(v205, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001ELL, 0x800000026745C360, v125);
  v126 = *v123;
  *v123 = v196;

  v121(v205, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000020, 0x800000026745C380, v131);
  v132 = *v129;
  *v129 = v197;

  v127(v205, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000023, 0x800000026745C3B0, v137);
  v138 = *v135;
  *v135 = v198;

  v133(v205, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001DLL, 0x800000026745C3E0, v143);
  v144 = *v141;
  *v141 = v199;

  v139(v205, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001ELL, 0x800000026745C400, v149);
  v150 = *v147;
  *v147 = v200;

  v145(v205, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001FLL, 0x800000026745C420, v155);
  v156 = *v153;
  *v153 = v201;

  v151(v205, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001DLL, 0x800000026745C440, v161);
  v162 = *v159;
  *v159 = v202;

  v157(v205, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000012, 0x800000026745C460, v167);
  v168 = *v165;
  *v165 = v203;

  v163(v205, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001FLL, 0x800000026745C480, v173);
  v174 = *v171;
  *v171 = v204;

  return v169(v205, 0);
}

uint64_t sub_2670E7D88(uint64_t a1)
{
  v2 = sub_2670E7E8C(&qword_2800F4B38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E7DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E7E8C(&qword_2800F4B38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E7E8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTCheckpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTCheckpointReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MWTSchemaMWTCheckpoint(0);
  sub_2670E8324(&qword_2800F4B30, type metadata accessor for MWTSchemaMWTCheckpoint);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6570795470657473, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E8090()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MWTSchemaMWTCheckpoint(0);
  sub_2670E8324(&qword_2800F4B30, type metadata accessor for MWTSchemaMWTCheckpoint);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6570795470657473, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E8218(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E827C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E8324(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670E836C()
{
  result = qword_2800F4B48;
  if (!qword_2800F4B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4B48);
  }

  return result;
}

uint64_t static MWTSchemaMWTClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4B50, 0x277D58B58);
  sub_266ECAF2C(&qword_2800F4B58, &qword_2800F4B50, 0x277D58B58);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F4B48, 0x277D58B48);
  sub_266ECAF2C(&qword_2800F4B40, &qword_2800F4B48, 0x277D58B48);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026745C500);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F4B60, 0x277D58B60);
  sub_266ECAF2C(&qword_2800F4B68, &qword_2800F4B60, 0x277D58B60);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026745C520);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F4B70, 0x277D58B68);
  sub_266ECAF2C(&qword_2800F4B78, &qword_2800F4B70, 0x277D58B68);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026745C540);
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
  sub_266ECB128(&unk_287888A48);
  return sub_2673811CC();
}

uint64_t sub_2670E8994(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2670E8A2C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670E8AF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E8B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E8BBC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4B80, &qword_2800F1F30, 0x277D58B50);
  a1[2] = sub_266ECAF2C(&qword_2800F4B88, &qword_2800F1F30, 0x277D58B50);
  result = sub_266ECAF2C(&qword_2800F4B90, &qword_2800F1F30, 0x277D58B50);
  a1[3] = result;
  return result;
}

uint64_t static MWTSchemaMWTEndPointType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x800000026745C590, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026745C5B0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026745C5D0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026745C5F0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2670E8F40(uint64_t a1)
{
  v2 = sub_2670E9044(&qword_2800F4BA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E8FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E9044(&qword_2800F4BA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E9044(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTEndPointType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v6 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v27 = a1;
  v23[1] = v6;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v25 = *(v8 + 56);
  v25(v5, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x644974776DLL, 0xE500000000000000);
  v9(v29, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v28, 0x644974776DLL, 0xE500000000000000);
  v12 = *(v8 + 48);
  v26 = v8 + 48;
  v24 = v12;
  if (!v12(v13, 1, v7))
  {
    sub_266ECB128(&unk_287888A80);
    sub_26738115C();
  }

  (v11)(v28, 0);
  v10(v29, 0);
  sub_26738120C();
  v25(v5, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x4974736575716572, 0xE900000000000064);
  v14(v29, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v28, 0x4974736575716572, 0xE900000000000064);
  if (!v24(v17, 1, v7))
  {
    sub_266ECB128(&unk_287888AB0);
    sub_26738115C();
  }

  (v16)(v28, 0);
  v15(v29, 0);
  sub_26738120C();
  v25(v5, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0x6575716552627573, 0xEC00000064497473);
  v18(v29, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v28, 0x6575716552627573, 0xEC00000064497473);
  if (!v24(v21, 1, v7))
  {
    sub_266ECB128(&unk_287888AE0);
    sub_26738115C();
  }

  (v20)(v28, 0);
  return v19(v29, 0);
}

uint64_t sub_2670E9578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E95DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MWTSchemaMWTFormatCodec.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026745C670, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v248;

  v1(v289, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v249 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026745C690, v11);
  v12 = *v9;
  *v9 = v249;

  v7(v289, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x800000026745C6B0, v17);
  v18 = *v15;
  *v15 = v250;

  v13(v289, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x800000026745C6D0, v23);
  v24 = *v21;
  *v21 = v251;

  v19(v289, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x800000026745C6F0, v29);
  v30 = *v27;
  *v27 = v252;

  v25(v289, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v253 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x800000026745C710, v35);
  v36 = *v33;
  *v33 = v253;

  v31(v289, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v254 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x800000026745C730, v41);
  v42 = *v39;
  *v39 = v254;

  v37(v289, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v255 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x800000026745C750, v47);
  v48 = *v45;
  *v45 = v255;

  v43(v289, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v256 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x800000026745C770, v53);
  v54 = *v51;
  *v51 = v256;

  v49(v289, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v257 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000019, 0x800000026745C790, v59);
  v60 = *v57;
  *v57 = v257;

  v55(v289, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v258 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x800000026745C7B0, v65);
  v66 = *v63;
  *v63 = v258;

  v61(v289, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000013, 0x800000026745C7D0, v71);
  v72 = *v69;
  *v69 = v259;

  v67(v289, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v260 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000013, 0x800000026745C7F0, v77);
  v78 = *v75;
  *v75 = v260;

  v73(v289, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v261 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000016, 0x800000026745C810, v83);
  v84 = *v81;
  *v81 = v261;

  v79(v289, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v262 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001ALL, 0x800000026745C830, v89);
  v90 = *v87;
  *v87 = v262;

  v85(v289, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000017, 0x800000026745C850, v95);
  v96 = *v93;
  *v93 = v263;

  v91(v289, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001DLL, 0x800000026745C870, v101);
  v102 = *v99;
  *v99 = v264;

  v97(v289, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v265 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001DLL, 0x800000026745C890, v107);
  v108 = *v105;
  *v105 = v265;

  v103(v289, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001FLL, 0x800000026745C8B0, v113);
  v114 = *v111;
  *v111 = v266;

  v109(v289, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000018, 0x800000026745C8D0, v119);
  v120 = *v117;
  *v117 = v267;

  v115(v289, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001ALL, 0x800000026745C8F0, v125);
  v126 = *v123;
  *v123 = v268;

  v121(v289, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000025, 0x800000026745C910, v131);
  v132 = *v129;
  *v129 = v269;

  v127(v289, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001DLL, 0x800000026745C940, v137);
  v138 = *v135;
  *v135 = v270;

  v133(v289, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000019, 0x800000026745C960, v143);
  v144 = *v141;
  *v141 = v271;

  v139(v289, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000019, 0x800000026745C980, v149);
  v150 = *v147;
  *v147 = v272;

  v145(v289, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ALL, 0x800000026745C9A0, v155);
  v156 = *v153;
  *v153 = v273;

  v151(v289, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001ELL, 0x800000026745C9C0, v161);
  v162 = *v159;
  *v159 = v274;

  v157(v289, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v275 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001CLL, 0x800000026745C9E0, v167);
  v168 = *v165;
  *v165 = v275;

  v163(v289, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v276 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001BLL, 0x800000026745CA00, v173);
  v174 = *v171;
  *v171 = v276;

  v169(v289, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v277 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001ELL, 0x800000026745CA20, v179);
  v180 = *v177;
  *v177 = v277;

  v175(v289, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v278 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000019, 0x800000026745CA40, v185);
  v186 = *v183;
  *v183 = v278;

  v181(v289, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v279 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000012, 0x800000026745CA60, v191);
  v192 = *v189;
  *v189 = v279;

  v187(v289, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v280 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000015, 0x800000026745CA80, v197);
  v198 = *v195;
  *v195 = v280;

  v193(v289, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v281 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000016, 0x800000026745CAA0, v203);
  v204 = *v201;
  *v201 = v281;

  v199(v289, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v282 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000014, 0x800000026745CAC0, v209);
  v210 = *v207;
  *v207 = v282;

  v205(v289, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v283 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001CLL, 0x800000026745CAE0, v215);
  v216 = *v213;
  *v213 = v283;

  v211(v289, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v284 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001CLL, 0x800000026745CB00, v221);
  v222 = *v219;
  *v219 = v284;

  v217(v289, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000012, 0x800000026745CB20, v227);
  v228 = *v225;
  *v225 = v285;

  v223(v289, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v286 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001ALL, 0x800000026745CB40, v233);
  v234 = *v231;
  *v231 = v286;

  v229(v289, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v287 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000013, 0x800000026745CB60, v239);
  v240 = *v237;
  *v237 = v287;

  v235(v289, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v288 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000013, 0x800000026745CB80, v245);
  v246 = *v243;
  *v243 = v288;

  return v241(v289, 0);
}

uint64_t sub_2670EA9AC(uint64_t a1)
{
  v2 = sub_2670EAAB0(&qword_2800F4BB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670EAA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670EAAB0(&qword_2800F4BB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670EAAB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTFormatCodec(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTFormatLayout.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1052 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x800000026745CBD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v1052;

  v1(v1227, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v1053 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026745CBF0, v11);
  v12 = *v9;
  *v9 = v1053;

  v7(v1227, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v1054 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026745CC10, v17);
  v18 = *v15;
  *v15 = v1054;

  v13(v1227, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v1055 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026745CC30, v23);
  v24 = *v21;
  *v21 = v1055;

  v19(v1227, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v1056 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026745CC60, v29);
  v30 = *v27;
  *v27 = v1056;

  v25(v1227, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v1057 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x800000026745CC80, v35);
  v36 = *v33;
  *v33 = v1057;

  v31(v1227, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v1058 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000012, 0x800000026745CCA0, v41);
  v42 = *v39;
  *v39 = v1058;

  v37(v1227, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v1059 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x800000026745CCC0, v47);
  v48 = *v45;
  *v45 = v1059;

  v43(v1227, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v1060 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x800000026745CCE0, v53);
  v54 = *v51;
  *v51 = v1060;

  v49(v1227, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v1061 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001CLL, 0x800000026745CD10, v59);
  v60 = *v57;
  *v57 = v1061;

  v55(v1227, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v1062 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x800000026745CD30, v65);
  v66 = *v63;
  *v63 = v1062;

  v61(v1227, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v1063 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000019, 0x800000026745CD50, v71);
  v72 = *v69;
  *v69 = v1063;

  v67(v1227, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v1064 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000019, 0x800000026745CD70, v77);
  v78 = *v75;
  *v75 = v1064;

  v73(v1227, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v1065 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000014, 0x800000026745CD90, v83);
  v84 = *v81;
  *v81 = v1065;

  v79(v1227, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v1066 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001BLL, 0x800000026745CDB0, v89);
  v90 = *v87;
  *v87 = v1066;

  v85(v1227, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v1067 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001BLL, 0x800000026745CDD0, v95);
  v96 = *v93;
  *v93 = v1067;

  v91(v1227, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v1068 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000018, 0x800000026745CDF0, v101);
  v102 = *v99;
  *v99 = v1068;

  v97(v1227, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v1069 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000018, 0x800000026745CE10, v107);
  v108 = *v105;
  *v105 = v1069;

  v103(v1227, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v1070 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ALL, 0x800000026745CE30, v113);
  v114 = *v111;
  *v111 = v1070;

  v109(v1227, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v1071 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001ALL, 0x800000026745CE50, v119);
  v120 = *v117;
  *v117 = v1071;

  v115(v1227, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v1072 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001ALL, 0x800000026745CE70, v125);
  v126 = *v123;
  *v123 = v1072;

  v121(v1227, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v1073 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001ALL, 0x800000026745CE90, v131);
  v132 = *v129;
  *v129 = v1073;

  v127(v1227, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v1074 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001ALL, 0x800000026745CEB0, v137);
  v138 = *v135;
  *v135 = v1074;

  v133(v1227, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v1075 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001ALL, 0x800000026745CED0, v143);
  v144 = *v141;
  *v141 = v1075;

  v139(v1227, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v1076 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001ALL, 0x800000026745CEF0, v149);
  v150 = *v147;
  *v147 = v1076;

  v145(v1227, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v1077 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ALL, 0x800000026745CF10, v155);
  v156 = *v153;
  *v153 = v1077;

  v151(v1227, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v1078 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001ALL, 0x800000026745CF30, v161);
  v162 = *v159;
  *v159 = v1078;

  v157(v1227, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v1079 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001ALL, 0x800000026745CF50, v167);
  v168 = *v165;
  *v165 = v1079;

  v163(v1227, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v1080 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001ALL, 0x800000026745CF70, v173);
  v174 = *v171;
  *v171 = v1080;

  v169(v1227, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v1081 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001ALL, 0x800000026745CF90, v179);
  v180 = *v177;
  *v177 = v1081;

  v175(v1227, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v1082 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000001ALL, 0x800000026745CFB0, v185);
  v186 = *v183;
  *v183 = v1082;

  v181(v1227, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v1083 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001ALL, 0x800000026745CFD0, v191);
  v192 = *v189;
  *v189 = v1083;

  v187(v1227, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v1084 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001ALL, 0x800000026745CFF0, v197);
  v198 = *v195;
  *v195 = v1084;

  v193(v1227, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v1085 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001ALL, 0x800000026745D010, v203);
  v204 = *v201;
  *v201 = v1085;

  v199(v1227, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v1086 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000022, 0x800000026745D030, v209);
  v210 = *v207;
  *v207 = v1086;

  v205(v1227, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v1087 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000019, 0x800000026745D060, v215);
  v216 = *v213;
  *v213 = v1087;

  v211(v1227, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v1088 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000017, 0x800000026745D080, v221);
  v222 = *v219;
  *v219 = v1088;

  v217(v1227, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v1089 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000017, 0x800000026745D0A0, v227);
  v228 = *v225;
  *v225 = v1089;

  v223(v1227, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v1090 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000017, 0x800000026745D0C0, v233);
  v234 = *v231;
  *v231 = v1090;

  v229(v1227, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v1091 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000017, 0x800000026745D0E0, v239);
  v240 = *v237;
  *v237 = v1091;

  v235(v1227, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v1092 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000017, 0x800000026745D100, v245);
  v246 = *v243;
  *v243 = v1092;

  v241(v1227, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v1093 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000017, 0x800000026745D120, v251);
  v252 = *v249;
  *v249 = v1093;

  v247(v1227, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v1094 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000017, 0x800000026745D140, v257);
  v258 = *v255;
  *v255 = v1094;

  v253(v1227, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v1095 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000019, 0x800000026745D160, v263);
  v264 = *v261;
  *v261 = v1095;

  v259(v1227, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v1096 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000019, 0x800000026745D180, v269);
  v270 = *v267;
  *v267 = v1096;

  v265(v1227, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v1097 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000015, 0x800000026745D1A0, v275);
  v276 = *v273;
  *v273 = v1097;

  v271(v1227, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v1098 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000015, 0x800000026745D1C0, v281);
  v282 = *v279;
  *v279 = v1098;

  v277(v1227, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v1099 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000015, 0x800000026745D1E0, v287);
  v288 = *v285;
  *v285 = v1099;

  v283(v1227, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v1100 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000015, 0x800000026745D200, v293);
  v294 = *v291;
  *v291 = v1100;

  v289(v1227, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v1101 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000015, 0x800000026745D220, v299);
  v300 = *v297;
  *v297 = v1101;

  v295(v1227, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v1102 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000015, 0x800000026745D240, v305);
  v306 = *v303;
  *v303 = v1102;

  v301(v1227, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v1103 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000015, 0x800000026745D260, v311);
  v312 = *v309;
  *v309 = v1103;

  v307(v1227, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v1104 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 0xD000000000000015, 0x800000026745D280, v317);
  v318 = *v315;
  *v315 = v1104;

  v313(v1227, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v1105 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000015, 0x800000026745D2A0, v323);
  v324 = *v321;
  *v321 = v1105;

  v319(v1227, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v1106 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 0xD000000000000015, 0x800000026745D2C0, v329);
  v330 = *v327;
  *v327 = v1106;

  v325(v1227, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v1107 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 0xD000000000000016, 0x800000026745D2E0, v335);
  v336 = *v333;
  *v333 = v1107;

  v331(v1227, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v1108 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000016, 0x800000026745D300, v341);
  v342 = *v339;
  *v339 = v1108;

  v337(v1227, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v1109 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000016, 0x800000026745D320, v347);
  v348 = *v345;
  *v345 = v1109;

  v343(v1227, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v1110 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000016, 0x800000026745D340, v353);
  v354 = *v351;
  *v351 = v1110;

  v349(v1227, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v1111 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000016, 0x800000026745D360, v359);
  v360 = *v357;
  *v357 = v1111;

  v355(v1227, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v1112 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000016, 0x800000026745D380, v365);
  v366 = *v363;
  *v363 = v1112;

  v361(v1227, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v1113 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000016, 0x800000026745D3A0, v371);
  v372 = *v369;
  *v369 = v1113;

  v367(v1227, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v1114 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000016, 0x800000026745D3C0, v377);
  v378 = *v375;
  *v375 = v1114;

  v373(v1227, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v1115 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000016, 0x800000026745D3E0, v383);
  v384 = *v381;
  *v381 = v1115;

  v379(v1227, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v1116 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(64, 0xD000000000000016, 0x800000026745D400, v389);
  v390 = *v387;
  *v387 = v1116;

  v385(v1227, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v1117 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000016, 0x800000026745D420, v395);
  v396 = *v393;
  *v393 = v1117;

  v391(v1227, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v1118 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(66, 0xD00000000000001CLL, 0x800000026745D440, v401);
  v402 = *v399;
  *v399 = v1118;

  v397(v1227, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v1119 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(67, 0xD00000000000001CLL, 0x800000026745D460, v407);
  v408 = *v405;
  *v405 = v1119;

  v403(v1227, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v1120 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(68, 0xD00000000000001CLL, 0x800000026745D480, v413);
  v414 = *v411;
  *v411 = v1120;

  v409(v1227, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v1121 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(69, 0xD00000000000001CLL, 0x800000026745D4A0, v419);
  v420 = *v417;
  *v417 = v1121;

  v415(v1227, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v1122 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(70, 0xD00000000000001ELL, 0x800000026745D4C0, v425);
  v426 = *v423;
  *v423 = v1122;

  v421(v1227, 0);
  v427 = sub_26738111C();
  v429 = v428;
  v430 = *v428;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v1123 = *v429;
  *v429 = 0x8000000000000000;
  sub_266ECD368(71, 0xD00000000000001ELL, 0x800000026745D4E0, v431);
  v432 = *v429;
  *v429 = v1123;

  v427(v1227, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = *v434;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  v1124 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(72, 0xD00000000000001ELL, 0x800000026745D500, v437);
  v438 = *v435;
  *v435 = v1124;

  v433(v1227, 0);
  v439 = sub_26738111C();
  v441 = v440;
  v442 = *v440;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v1125 = *v441;
  *v441 = 0x8000000000000000;
  sub_266ECD368(73, 0xD000000000000024, 0x800000026745D520, v443);
  v444 = *v441;
  *v441 = v1125;

  v439(v1227, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v1126 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(74, 0xD00000000000001ELL, 0x800000026745D550, v449);
  v450 = *v447;
  *v447 = v1126;

  v445(v1227, 0);
  v451 = sub_26738111C();
  v453 = v452;
  v454 = *v452;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v1127 = *v453;
  *v453 = 0x8000000000000000;
  sub_266ECD368(75, 0xD00000000000001ELL, 0x800000026745D570, v455);
  v456 = *v453;
  *v453 = v1127;

  v451(v1227, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = *v458;
  v461 = swift_isUniquelyReferenced_nonNull_native();
  v1128 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(76, 0xD00000000000001ELL, 0x800000026745D590, v461);
  v462 = *v459;
  *v459 = v1128;

  v457(v1227, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v1129 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(77, 0xD000000000000024, 0x800000026745D5B0, v467);
  v468 = *v465;
  *v465 = v1129;

  v463(v1227, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = *v470;
  v473 = swift_isUniquelyReferenced_nonNull_native();
  v1130 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(78, 0xD00000000000001CLL, 0x800000026745D5E0, v473);
  v474 = *v471;
  *v471 = v1130;

  v469(v1227, 0);
  v475 = sub_26738111C();
  v477 = v476;
  v478 = *v476;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v1131 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD368(79, 0xD00000000000001DLL, 0x800000026745D600, v479);
  v480 = *v477;
  *v477 = v1131;

  v475(v1227, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = *v482;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  v1132 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(80, 0xD000000000000017, 0x800000026745D620, v485);
  v486 = *v483;
  *v483 = v1132;

  v481(v1227, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v1133 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(81, 0xD000000000000020, 0x800000026745D640, v491);
  v492 = *v489;
  *v489 = v1133;

  v487(v1227, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = *v494;
  v497 = swift_isUniquelyReferenced_nonNull_native();
  v1134 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(82, 0xD000000000000017, 0x800000026745D670, v497);
  v498 = *v495;
  *v495 = v1134;

  v493(v1227, 0);
  v499 = sub_26738111C();
  v501 = v500;
  v502 = *v500;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v1135 = *v501;
  *v501 = 0x8000000000000000;
  sub_266ECD368(83, 0xD000000000000017, 0x800000026745D690, v503);
  v504 = *v501;
  *v501 = v1135;

  v499(v1227, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v1136 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(84, 0xD000000000000017, 0x800000026745D6B0, v509);
  v510 = *v507;
  *v507 = v1136;

  v505(v1227, 0);
  v511 = sub_26738111C();
  v513 = v512;
  v514 = *v512;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v1137 = *v513;
  *v513 = 0x8000000000000000;
  sub_266ECD368(85, 0xD000000000000017, 0x800000026745D6D0, v515);
  v516 = *v513;
  *v513 = v1137;

  v511(v1227, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = *v518;
  v521 = swift_isUniquelyReferenced_nonNull_native();
  v1138 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(86, 0xD000000000000017, 0x800000026745D6F0, v521);
  v522 = *v519;
  *v519 = v1138;

  v517(v1227, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = *v524;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v1139 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(87, 0xD000000000000017, 0x800000026745D710, v527);
  v528 = *v525;
  *v525 = v1139;

  v523(v1227, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = *v530;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v1140 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(88, 0xD000000000000017, 0x800000026745D730, v533);
  v534 = *v531;
  *v531 = v1140;

  v529(v1227, 0);
  v535 = sub_26738111C();
  v537 = v536;
  v538 = *v536;
  v539 = swift_isUniquelyReferenced_nonNull_native();
  v1141 = *v537;
  *v537 = 0x8000000000000000;
  sub_266ECD368(89, 0xD000000000000019, 0x800000026745D750, v539);
  v540 = *v537;
  *v537 = v1141;

  v535(v1227, 0);
  v541 = sub_26738111C();
  v543 = v542;
  v544 = *v542;
  v545 = swift_isUniquelyReferenced_nonNull_native();
  v1142 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD368(90, 0xD000000000000019, 0x800000026745D770, v545);
  v546 = *v543;
  *v543 = v1142;

  v541(v1227, 0);
  v547 = sub_26738111C();
  v549 = v548;
  v550 = *v548;
  v551 = swift_isUniquelyReferenced_nonNull_native();
  v1143 = *v549;
  *v549 = 0x8000000000000000;
  sub_266ECD368(91, 0xD00000000000001DLL, 0x800000026745D790, v551);
  v552 = *v549;
  *v549 = v1143;

  v547(v1227, 0);
  v553 = sub_26738111C();
  v555 = v554;
  v556 = *v554;
  v557 = swift_isUniquelyReferenced_nonNull_native();
  v1144 = *v555;
  *v555 = 0x8000000000000000;
  sub_266ECD368(92, 0xD000000000000019, 0x800000026745D7B0, v557);
  v558 = *v555;
  *v555 = v1144;

  v553(v1227, 0);
  v559 = sub_26738111C();
  v561 = v560;
  v562 = *v560;
  v563 = swift_isUniquelyReferenced_nonNull_native();
  v1145 = *v561;
  *v561 = 0x8000000000000000;
  sub_266ECD368(93, 0xD000000000000017, 0x800000026745D7D0, v563);
  v564 = *v561;
  *v561 = v1145;

  v559(v1227, 0);
  v565 = sub_26738111C();
  v567 = v566;
  v568 = *v566;
  v569 = swift_isUniquelyReferenced_nonNull_native();
  v1146 = *v567;
  *v567 = 0x8000000000000000;
  sub_266ECD368(94, 0xD000000000000017, 0x800000026745D7F0, v569);
  v570 = *v567;
  *v567 = v1146;

  v565(v1227, 0);
  v571 = sub_26738111C();
  v573 = v572;
  v574 = *v572;
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v1147 = *v573;
  *v573 = 0x8000000000000000;
  sub_266ECD368(95, 0xD000000000000019, 0x800000026745D810, v575);
  v576 = *v573;
  *v573 = v1147;

  v571(v1227, 0);
  v577 = sub_26738111C();
  v579 = v578;
  v580 = *v578;
  v581 = swift_isUniquelyReferenced_nonNull_native();
  v1148 = *v579;
  *v579 = 0x8000000000000000;
  sub_266ECD368(96, 0xD000000000000019, 0x800000026745D830, v581);
  v582 = *v579;
  *v579 = v1148;

  v577(v1227, 0);
  v583 = sub_26738111C();
  v585 = v584;
  v586 = *v584;
  v587 = swift_isUniquelyReferenced_nonNull_native();
  v1149 = *v585;
  *v585 = 0x8000000000000000;
  sub_266ECD368(97, 0xD000000000000019, 0x800000026745D850, v587);
  v588 = *v585;
  *v585 = v1149;

  v583(v1227, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = *v590;
  v593 = swift_isUniquelyReferenced_nonNull_native();
  v1150 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(98, 0xD000000000000019, 0x800000026745D870, v593);
  v594 = *v591;
  *v591 = v1150;

  v589(v1227, 0);
  v595 = sub_26738111C();
  v597 = v596;
  v598 = *v596;
  v599 = swift_isUniquelyReferenced_nonNull_native();
  v1151 = *v597;
  *v597 = 0x8000000000000000;
  sub_266ECD368(99, 0xD000000000000019, 0x800000026745D890, v599);
  v600 = *v597;
  *v597 = v1151;

  v595(v1227, 0);
  v601 = sub_26738111C();
  v603 = v602;
  v604 = *v602;
  v605 = swift_isUniquelyReferenced_nonNull_native();
  v1152 = *v603;
  *v603 = 0x8000000000000000;
  sub_266ECD368(100, 0xD00000000000001ALL, 0x800000026745D8B0, v605);
  v606 = *v603;
  *v603 = v1152;

  v601(v1227, 0);
  v607 = sub_26738111C();
  v609 = v608;
  v610 = *v608;
  v611 = swift_isUniquelyReferenced_nonNull_native();
  v1153 = *v609;
  *v609 = 0x8000000000000000;
  sub_266ECD368(101, 0xD00000000000001ALL, 0x800000026745D8D0, v611);
  v612 = *v609;
  *v609 = v1153;

  v607(v1227, 0);
  v613 = sub_26738111C();
  v615 = v614;
  v616 = *v614;
  v617 = swift_isUniquelyReferenced_nonNull_native();
  v1154 = *v615;
  *v615 = 0x8000000000000000;
  sub_266ECD368(102, 0xD00000000000001ALL, 0x800000026745D8F0, v617);
  v618 = *v615;
  *v615 = v1154;

  v613(v1227, 0);
  v619 = sub_26738111C();
  v621 = v620;
  v622 = *v620;
  v623 = swift_isUniquelyReferenced_nonNull_native();
  v1155 = *v621;
  *v621 = 0x8000000000000000;
  sub_266ECD368(103, 0xD00000000000001ALL, 0x800000026745D910, v623);
  v624 = *v621;
  *v621 = v1155;

  v619(v1227, 0);
  v625 = sub_26738111C();
  v627 = v626;
  v628 = *v626;
  v629 = swift_isUniquelyReferenced_nonNull_native();
  v1156 = *v627;
  *v627 = 0x8000000000000000;
  sub_266ECD368(104, 0xD00000000000001ALL, 0x800000026745D930, v629);
  v630 = *v627;
  *v627 = v1156;

  v625(v1227, 0);
  v631 = sub_26738111C();
  v633 = v632;
  v634 = *v632;
  v635 = swift_isUniquelyReferenced_nonNull_native();
  v1157 = *v633;
  *v633 = 0x8000000000000000;
  sub_266ECD368(105, 0xD00000000000001ALL, 0x800000026745D950, v635);
  v636 = *v633;
  *v633 = v1157;

  v631(v1227, 0);
  v637 = sub_26738111C();
  v639 = v638;
  v640 = *v638;
  v641 = swift_isUniquelyReferenced_nonNull_native();
  v1158 = *v639;
  *v639 = 0x8000000000000000;
  sub_266ECD368(106, 0xD00000000000001ALL, 0x800000026745D970, v641);
  v642 = *v639;
  *v639 = v1158;

  v637(v1227, 0);
  v643 = sub_26738111C();
  v645 = v644;
  v646 = *v644;
  v647 = swift_isUniquelyReferenced_nonNull_native();
  v1159 = *v645;
  *v645 = 0x8000000000000000;
  sub_266ECD368(107, 0xD00000000000001ALL, 0x800000026745D990, v647);
  v648 = *v645;
  *v645 = v1159;

  v643(v1227, 0);
  v649 = sub_26738111C();
  v651 = v650;
  v652 = *v650;
  v653 = swift_isUniquelyReferenced_nonNull_native();
  v1160 = *v651;
  *v651 = 0x8000000000000000;
  sub_266ECD368(108, 0xD00000000000001ALL, 0x800000026745D9B0, v653);
  v654 = *v651;
  *v651 = v1160;

  v649(v1227, 0);
  v655 = sub_26738111C();
  v657 = v656;
  v658 = *v656;
  v659 = swift_isUniquelyReferenced_nonNull_native();
  v1161 = *v657;
  *v657 = 0x8000000000000000;
  sub_266ECD368(109, 0xD00000000000001ALL, 0x800000026745D9D0, v659);
  v660 = *v657;
  *v657 = v1161;

  v655(v1227, 0);
  v661 = sub_26738111C();
  v663 = v662;
  v664 = *v662;
  v665 = swift_isUniquelyReferenced_nonNull_native();
  v1162 = *v663;
  *v663 = 0x8000000000000000;
  sub_266ECD368(110, 0xD00000000000001ALL, 0x800000026745D9F0, v665);
  v666 = *v663;
  *v663 = v1162;

  v661(v1227, 0);
  v667 = sub_26738111C();
  v669 = v668;
  v670 = *v668;
  v671 = swift_isUniquelyReferenced_nonNull_native();
  v1163 = *v669;
  *v669 = 0x8000000000000000;
  sub_266ECD368(111, 0xD000000000000017, 0x800000026745DA10, v671);
  v672 = *v669;
  *v669 = v1163;

  v667(v1227, 0);
  v673 = sub_26738111C();
  v675 = v674;
  v676 = *v674;
  v677 = swift_isUniquelyReferenced_nonNull_native();
  v1164 = *v675;
  *v675 = 0x8000000000000000;
  sub_266ECD368(112, 0xD000000000000017, 0x800000026745DA30, v677);
  v678 = *v675;
  *v675 = v1164;

  v673(v1227, 0);
  v679 = sub_26738111C();
  v681 = v680;
  v682 = *v680;
  v683 = swift_isUniquelyReferenced_nonNull_native();
  v1165 = *v681;
  *v681 = 0x8000000000000000;
  sub_266ECD368(113, 0xD000000000000019, 0x800000026745DA50, v683);
  v684 = *v681;
  *v681 = v1165;

  v679(v1227, 0);
  v685 = sub_26738111C();
  v687 = v686;
  v688 = *v686;
  v689 = swift_isUniquelyReferenced_nonNull_native();
  v1166 = *v687;
  *v687 = 0x8000000000000000;
  sub_266ECD368(114, 0xD000000000000019, 0x800000026745DA70, v689);
  v690 = *v687;
  *v687 = v1166;

  v685(v1227, 0);
  v691 = sub_26738111C();
  v693 = v692;
  v694 = *v692;
  v695 = swift_isUniquelyReferenced_nonNull_native();
  v1167 = *v693;
  *v693 = 0x8000000000000000;
  sub_266ECD368(115, 0xD000000000000019, 0x800000026745DA90, v695);
  v696 = *v693;
  *v693 = v1167;

  v691(v1227, 0);
  v697 = sub_26738111C();
  v699 = v698;
  v700 = *v698;
  v701 = swift_isUniquelyReferenced_nonNull_native();
  v1168 = *v699;
  *v699 = 0x8000000000000000;
  sub_266ECD368(116, 0xD000000000000019, 0x800000026745DAB0, v701);
  v702 = *v699;
  *v699 = v1168;

  v697(v1227, 0);
  v703 = sub_26738111C();
  v705 = v704;
  v706 = *v704;
  v707 = swift_isUniquelyReferenced_nonNull_native();
  v1169 = *v705;
  *v705 = 0x8000000000000000;
  sub_266ECD368(117, 0xD000000000000019, 0x800000026745DAD0, v707);
  v708 = *v705;
  *v705 = v1169;

  v703(v1227, 0);
  v709 = sub_26738111C();
  v711 = v710;
  v712 = *v710;
  v713 = swift_isUniquelyReferenced_nonNull_native();
  v1170 = *v711;
  *v711 = 0x8000000000000000;
  sub_266ECD368(118, 0xD000000000000019, 0x800000026745DAF0, v713);
  v714 = *v711;
  *v711 = v1170;

  v709(v1227, 0);
  v715 = sub_26738111C();
  v717 = v716;
  v718 = *v716;
  v719 = swift_isUniquelyReferenced_nonNull_native();
  v1171 = *v717;
  *v717 = 0x8000000000000000;
  sub_266ECD368(119, 0xD000000000000019, 0x800000026745DB10, v719);
  v720 = *v717;
  *v717 = v1171;

  v715(v1227, 0);
  v721 = sub_26738111C();
  v723 = v722;
  v724 = *v722;
  v725 = swift_isUniquelyReferenced_nonNull_native();
  v1172 = *v723;
  *v723 = 0x8000000000000000;
  sub_266ECD368(120, 0xD000000000000017, 0x800000026745DB30, v725);
  v726 = *v723;
  *v723 = v1172;

  v721(v1227, 0);
  v727 = sub_26738111C();
  v729 = v728;
  v730 = *v728;
  v731 = swift_isUniquelyReferenced_nonNull_native();
  v1173 = *v729;
  *v729 = 0x8000000000000000;
  sub_266ECD368(121, 0xD000000000000017, 0x800000026745DB50, v731);
  v732 = *v729;
  *v729 = v1173;

  v727(v1227, 0);
  v733 = sub_26738111C();
  v735 = v734;
  v736 = *v734;
  v737 = swift_isUniquelyReferenced_nonNull_native();
  v1174 = *v735;
  *v735 = 0x8000000000000000;
  sub_266ECD368(122, 0xD000000000000019, 0x800000026745DB70, v737);
  v738 = *v735;
  *v735 = v1174;

  v733(v1227, 0);
  v739 = sub_26738111C();
  v741 = v740;
  v742 = *v740;
  v743 = swift_isUniquelyReferenced_nonNull_native();
  v1175 = *v741;
  *v741 = 0x8000000000000000;
  sub_266ECD368(123, 0xD000000000000019, 0x800000026745DB90, v743);
  v744 = *v741;
  *v741 = v1175;

  v739(v1227, 0);
  v745 = sub_26738111C();
  v747 = v746;
  v748 = *v746;
  v749 = swift_isUniquelyReferenced_nonNull_native();
  v1176 = *v747;
  *v747 = 0x8000000000000000;
  sub_266ECD368(124, 0xD000000000000019, 0x800000026745DBB0, v749);
  v750 = *v747;
  *v747 = v1176;

  v745(v1227, 0);
  v751 = sub_26738111C();
  v753 = v752;
  v754 = *v752;
  v755 = swift_isUniquelyReferenced_nonNull_native();
  v1177 = *v753;
  *v753 = 0x8000000000000000;
  sub_266ECD368(125, 0xD000000000000019, 0x800000026745DBD0, v755);
  v756 = *v753;
  *v753 = v1177;

  v751(v1227, 0);
  v757 = sub_26738111C();
  v759 = v758;
  v760 = *v758;
  v761 = swift_isUniquelyReferenced_nonNull_native();
  v1178 = *v759;
  *v759 = 0x8000000000000000;
  sub_266ECD368(126, 0xD00000000000001BLL, 0x800000026745DBF0, v761);
  v762 = *v759;
  *v759 = v1178;

  v757(v1227, 0);
  v763 = sub_26738111C();
  v765 = v764;
  v766 = *v764;
  v767 = swift_isUniquelyReferenced_nonNull_native();
  v1179 = *v765;
  *v765 = 0x8000000000000000;
  sub_266ECD368(127, 0xD00000000000001CLL, 0x800000026745DC10, v767);
  v768 = *v765;
  *v765 = v1179;

  v763(v1227, 0);
  v769 = sub_26738111C();
  v771 = v770;
  v772 = *v770;
  v773 = swift_isUniquelyReferenced_nonNull_native();
  v1180 = *v771;
  *v771 = 0x8000000000000000;
  sub_266ECD368(128, 0xD000000000000021, 0x800000026745DC30, v773);
  v774 = *v771;
  *v771 = v1180;

  v769(v1227, 0);
  v775 = sub_26738111C();
  v777 = v776;
  v778 = *v776;
  v779 = swift_isUniquelyReferenced_nonNull_native();
  v1181 = *v777;
  *v777 = 0x8000000000000000;
  sub_266ECD368(129, 0xD000000000000018, 0x800000026745DC60, v779);
  v780 = *v777;
  *v777 = v1181;

  v775(v1227, 0);
  v781 = sub_26738111C();
  v783 = v782;
  v784 = *v782;
  v785 = swift_isUniquelyReferenced_nonNull_native();
  v1182 = *v783;
  *v783 = 0x8000000000000000;
  sub_266ECD368(130, 0xD000000000000018, 0x800000026745DC80, v785);
  v786 = *v783;
  *v783 = v1182;

  v781(v1227, 0);
  v787 = sub_26738111C();
  v789 = v788;
  v790 = *v788;
  v791 = swift_isUniquelyReferenced_nonNull_native();
  v1183 = *v789;
  *v789 = 0x8000000000000000;
  sub_266ECD368(131, 0xD00000000000001ALL, 0x800000026745DCA0, v791);
  v792 = *v789;
  *v789 = v1183;

  v787(v1227, 0);
  v793 = sub_26738111C();
  v795 = v794;
  v796 = *v794;
  v797 = swift_isUniquelyReferenced_nonNull_native();
  v1184 = *v795;
  *v795 = 0x8000000000000000;
  sub_266ECD368(132, 0xD00000000000001ALL, 0x800000026745DCC0, v797);
  v798 = *v795;
  *v795 = v1184;

  v793(v1227, 0);
  v799 = sub_26738111C();
  v801 = v800;
  v802 = *v800;
  v803 = swift_isUniquelyReferenced_nonNull_native();
  v1185 = *v801;
  *v801 = 0x8000000000000000;
  sub_266ECD368(133, 0xD00000000000001ALL, 0x800000026745DCE0, v803);
  v804 = *v801;
  *v801 = v1185;

  v799(v1227, 0);
  v805 = sub_26738111C();
  v807 = v806;
  v808 = *v806;
  v809 = swift_isUniquelyReferenced_nonNull_native();
  v1186 = *v807;
  *v807 = 0x8000000000000000;
  sub_266ECD368(134, 0xD00000000000001ALL, 0x800000026745DD00, v809);
  v810 = *v807;
  *v807 = v1186;

  v805(v1227, 0);
  v811 = sub_26738111C();
  v813 = v812;
  v814 = *v812;
  v815 = swift_isUniquelyReferenced_nonNull_native();
  v1187 = *v813;
  *v813 = 0x8000000000000000;
  sub_266ECD368(135, 0xD00000000000001ALL, 0x800000026745DD20, v815);
  v816 = *v813;
  *v813 = v1187;

  v811(v1227, 0);
  v817 = sub_26738111C();
  v819 = v818;
  v820 = *v818;
  v821 = swift_isUniquelyReferenced_nonNull_native();
  v1188 = *v819;
  *v819 = 0x8000000000000000;
  sub_266ECD368(136, 0xD00000000000001ALL, 0x800000026745DD40, v821);
  v822 = *v819;
  *v819 = v1188;

  v817(v1227, 0);
  v823 = sub_26738111C();
  v825 = v824;
  v826 = *v824;
  v827 = swift_isUniquelyReferenced_nonNull_native();
  v1189 = *v825;
  *v825 = 0x8000000000000000;
  sub_266ECD368(137, 0xD000000000000018, 0x800000026745DD60, v827);
  v828 = *v825;
  *v825 = v1189;

  v823(v1227, 0);
  v829 = sub_26738111C();
  v831 = v830;
  v832 = *v830;
  v833 = swift_isUniquelyReferenced_nonNull_native();
  v1190 = *v831;
  *v831 = 0x8000000000000000;
  sub_266ECD368(138, 0xD000000000000018, 0x800000026745DD80, v833);
  v834 = *v831;
  *v831 = v1190;

  v829(v1227, 0);
  v835 = sub_26738111C();
  v837 = v836;
  v838 = *v836;
  v839 = swift_isUniquelyReferenced_nonNull_native();
  v1191 = *v837;
  *v837 = 0x8000000000000000;
  sub_266ECD368(139, 0xD00000000000001BLL, 0x800000026745DDA0, v839);
  v840 = *v837;
  *v837 = v1191;

  v835(v1227, 0);
  v841 = sub_26738111C();
  v843 = v842;
  v844 = *v842;
  v845 = swift_isUniquelyReferenced_nonNull_native();
  v1192 = *v843;
  *v843 = 0x8000000000000000;
  sub_266ECD368(140, 0xD00000000000001BLL, 0x800000026745DDC0, v845);
  v846 = *v843;
  *v843 = v1192;

  v841(v1227, 0);
  v847 = sub_26738111C();
  v849 = v848;
  v850 = *v848;
  v851 = swift_isUniquelyReferenced_nonNull_native();
  v1193 = *v849;
  *v849 = 0x8000000000000000;
  sub_266ECD368(141, 0xD00000000000001BLL, 0x800000026745DDE0, v851);
  v852 = *v849;
  *v849 = v1193;

  v847(v1227, 0);
  v853 = sub_26738111C();
  v855 = v854;
  v856 = *v854;
  v857 = swift_isUniquelyReferenced_nonNull_native();
  v1194 = *v855;
  *v855 = 0x8000000000000000;
  sub_266ECD368(142, 0xD00000000000001BLL, 0x800000026745DE00, v857);
  v858 = *v855;
  *v855 = v1194;

  v853(v1227, 0);
  v859 = sub_26738111C();
  v861 = v860;
  v862 = *v860;
  v863 = swift_isUniquelyReferenced_nonNull_native();
  v1195 = *v861;
  *v861 = 0x8000000000000000;
  sub_266ECD368(143, 0xD00000000000001BLL, 0x800000026745DE20, v863);
  v864 = *v861;
  *v861 = v1195;

  v859(v1227, 0);
  v865 = sub_26738111C();
  v867 = v866;
  v868 = *v866;
  v869 = swift_isUniquelyReferenced_nonNull_native();
  v1196 = *v867;
  *v867 = 0x8000000000000000;
  sub_266ECD368(144, 0xD00000000000001BLL, 0x800000026745DE40, v869);
  v870 = *v867;
  *v867 = v1196;

  v865(v1227, 0);
  v871 = sub_26738111C();
  v873 = v872;
  v874 = *v872;
  v875 = swift_isUniquelyReferenced_nonNull_native();
  v1197 = *v873;
  *v873 = 0x8000000000000000;
  sub_266ECD368(145, 0xD00000000000001BLL, 0x800000026745DE60, v875);
  v876 = *v873;
  *v873 = v1197;

  v871(v1227, 0);
  v877 = sub_26738111C();
  v879 = v878;
  v880 = *v878;
  v881 = swift_isUniquelyReferenced_nonNull_native();
  v1198 = *v879;
  *v879 = 0x8000000000000000;
  sub_266ECD368(146, 0xD00000000000001BLL, 0x800000026745DE80, v881);
  v882 = *v879;
  *v879 = v1198;

  v877(v1227, 0);
  v883 = sub_26738111C();
  v885 = v884;
  v886 = *v884;
  v887 = swift_isUniquelyReferenced_nonNull_native();
  v1199 = *v885;
  *v885 = 0x8000000000000000;
  sub_266ECD368(147, 0xD00000000000001BLL, 0x800000026745DEA0, v887);
  v888 = *v885;
  *v885 = v1199;

  v883(v1227, 0);
  v889 = sub_26738111C();
  v891 = v890;
  v892 = *v890;
  v893 = swift_isUniquelyReferenced_nonNull_native();
  v1200 = *v891;
  *v891 = 0x8000000000000000;
  sub_266ECD368(148, 0xD00000000000001BLL, 0x800000026745DEC0, v893);
  v894 = *v891;
  *v891 = v1200;

  v889(v1227, 0);
  v895 = sub_26738111C();
  v897 = v896;
  v898 = *v896;
  v899 = swift_isUniquelyReferenced_nonNull_native();
  v1201 = *v897;
  *v897 = 0x8000000000000000;
  sub_266ECD368(149, 0xD00000000000001BLL, 0x800000026745DEE0, v899);
  v900 = *v897;
  *v897 = v1201;

  v895(v1227, 0);
  v901 = sub_26738111C();
  v903 = v902;
  v904 = *v902;
  v905 = swift_isUniquelyReferenced_nonNull_native();
  v1202 = *v903;
  *v903 = 0x8000000000000000;
  sub_266ECD368(150, 0xD00000000000001BLL, 0x800000026745DF00, v905);
  v906 = *v903;
  *v903 = v1202;

  v901(v1227, 0);
  v907 = sub_26738111C();
  v909 = v908;
  v910 = *v908;
  v911 = swift_isUniquelyReferenced_nonNull_native();
  v1203 = *v909;
  *v909 = 0x8000000000000000;
  sub_266ECD368(151, 0xD00000000000001BLL, 0x800000026745DF20, v911);
  v912 = *v909;
  *v909 = v1203;

  v907(v1227, 0);
  v913 = sub_26738111C();
  v915 = v914;
  v916 = *v914;
  v917 = swift_isUniquelyReferenced_nonNull_native();
  v1204 = *v915;
  *v915 = 0x8000000000000000;
  sub_266ECD368(152, 0xD00000000000001BLL, 0x800000026745DF40, v917);
  v918 = *v915;
  *v915 = v1204;

  v913(v1227, 0);
  v919 = sub_26738111C();
  v921 = v920;
  v922 = *v920;
  v923 = swift_isUniquelyReferenced_nonNull_native();
  v1205 = *v921;
  *v921 = 0x8000000000000000;
  sub_266ECD368(153, 0xD00000000000001BLL, 0x800000026745DF60, v923);
  v924 = *v921;
  *v921 = v1205;

  v919(v1227, 0);
  v925 = sub_26738111C();
  v927 = v926;
  v928 = *v926;
  v929 = swift_isUniquelyReferenced_nonNull_native();
  v1206 = *v927;
  *v927 = 0x8000000000000000;
  sub_266ECD368(154, 0xD00000000000001BLL, 0x800000026745DF80, v929);
  v930 = *v927;
  *v927 = v1206;

  v925(v1227, 0);
  v931 = sub_26738111C();
  v933 = v932;
  v934 = *v932;
  v935 = swift_isUniquelyReferenced_nonNull_native();
  v1207 = *v933;
  *v933 = 0x8000000000000000;
  sub_266ECD368(155, 0xD00000000000001BLL, 0x800000026745DFA0, v935);
  v936 = *v933;
  *v933 = v1207;

  v931(v1227, 0);
  v937 = sub_26738111C();
  v939 = v938;
  v940 = *v938;
  v941 = swift_isUniquelyReferenced_nonNull_native();
  v1208 = *v939;
  *v939 = 0x8000000000000000;
  sub_266ECD368(156, 0xD00000000000001BLL, 0x800000026745DFC0, v941);
  v942 = *v939;
  *v939 = v1208;

  v937(v1227, 0);
  v943 = sub_26738111C();
  v945 = v944;
  v946 = *v944;
  v947 = swift_isUniquelyReferenced_nonNull_native();
  v1209 = *v945;
  *v945 = 0x8000000000000000;
  sub_266ECD368(157, 0xD00000000000001BLL, 0x800000026745DFE0, v947);
  v948 = *v945;
  *v945 = v1209;

  v943(v1227, 0);
  v949 = sub_26738111C();
  v951 = v950;
  v952 = *v950;
  v953 = swift_isUniquelyReferenced_nonNull_native();
  v1210 = *v951;
  *v951 = 0x8000000000000000;
  sub_266ECD368(158, 0xD00000000000001BLL, 0x800000026745E000, v953);
  v954 = *v951;
  *v951 = v1210;

  v949(v1227, 0);
  v955 = sub_26738111C();
  v957 = v956;
  v958 = *v956;
  v959 = swift_isUniquelyReferenced_nonNull_native();
  v1211 = *v957;
  *v957 = 0x8000000000000000;
  sub_266ECD368(159, 0xD00000000000001BLL, 0x800000026745E020, v959);
  v960 = *v957;
  *v957 = v1211;

  v955(v1227, 0);
  v961 = sub_26738111C();
  v963 = v962;
  v964 = *v962;
  v965 = swift_isUniquelyReferenced_nonNull_native();
  v1212 = *v963;
  *v963 = 0x8000000000000000;
  sub_266ECD368(160, 0xD00000000000001BLL, 0x800000026745E040, v965);
  v966 = *v963;
  *v963 = v1212;

  v961(v1227, 0);
  v967 = sub_26738111C();
  v969 = v968;
  v970 = *v968;
  v971 = swift_isUniquelyReferenced_nonNull_native();
  v1213 = *v969;
  *v969 = 0x8000000000000000;
  sub_266ECD368(161, 0xD00000000000001BLL, 0x800000026745E060, v971);
  v972 = *v969;
  *v969 = v1213;

  v967(v1227, 0);
  v973 = sub_26738111C();
  v975 = v974;
  v976 = *v974;
  v977 = swift_isUniquelyReferenced_nonNull_native();
  v1214 = *v975;
  *v975 = 0x8000000000000000;
  sub_266ECD368(162, 0xD00000000000001BLL, 0x800000026745E080, v977);
  v978 = *v975;
  *v975 = v1214;

  v973(v1227, 0);
  v979 = sub_26738111C();
  v981 = v980;
  v982 = *v980;
  v983 = swift_isUniquelyReferenced_nonNull_native();
  v1215 = *v981;
  *v981 = 0x8000000000000000;
  sub_266ECD368(163, 0xD000000000000020, 0x800000026745E0A0, v983);
  v984 = *v981;
  *v981 = v1215;

  v979(v1227, 0);
  v985 = sub_26738111C();
  v987 = v986;
  v988 = *v986;
  v989 = swift_isUniquelyReferenced_nonNull_native();
  v1216 = *v987;
  *v987 = 0x8000000000000000;
  sub_266ECD368(164, 0xD000000000000020, 0x800000026745E0D0, v989);
  v990 = *v987;
  *v987 = v1216;

  v985(v1227, 0);
  v991 = sub_26738111C();
  v993 = v992;
  v994 = *v992;
  v995 = swift_isUniquelyReferenced_nonNull_native();
  v1217 = *v993;
  *v993 = 0x8000000000000000;
  sub_266ECD368(165, 0xD000000000000020, 0x800000026745E100, v995);
  v996 = *v993;
  *v993 = v1217;

  v991(v1227, 0);
  v997 = sub_26738111C();
  v999 = v998;
  v1000 = *v998;
  v1001 = swift_isUniquelyReferenced_nonNull_native();
  v1218 = *v999;
  *v999 = 0x8000000000000000;
  sub_266ECD368(166, 0xD000000000000021, 0x800000026745E130, v1001);
  v1002 = *v999;
  *v999 = v1218;

  v997(v1227, 0);
  v1003 = sub_26738111C();
  v1005 = v1004;
  v1006 = *v1004;
  v1007 = swift_isUniquelyReferenced_nonNull_native();
  v1219 = *v1005;
  *v1005 = 0x8000000000000000;
  sub_266ECD368(167, 0xD000000000000021, 0x800000026745E160, v1007);
  v1008 = *v1005;
  *v1005 = v1219;

  v1003(v1227, 0);
  v1009 = sub_26738111C();
  v1011 = v1010;
  v1012 = *v1010;
  v1013 = swift_isUniquelyReferenced_nonNull_native();
  v1220 = *v1011;
  *v1011 = 0x8000000000000000;
  sub_266ECD368(168, 0xD000000000000021, 0x800000026745E190, v1013);
  v1014 = *v1011;
  *v1011 = v1220;

  v1009(v1227, 0);
  v1015 = sub_26738111C();
  v1017 = v1016;
  v1018 = *v1016;
  v1019 = swift_isUniquelyReferenced_nonNull_native();
  v1221 = *v1017;
  *v1017 = 0x8000000000000000;
  sub_266ECD368(169, 0xD000000000000023, 0x800000026745E1C0, v1019);
  v1020 = *v1017;
  *v1017 = v1221;

  v1015(v1227, 0);
  v1021 = sub_26738111C();
  v1023 = v1022;
  v1024 = *v1022;
  v1025 = swift_isUniquelyReferenced_nonNull_native();
  v1222 = *v1023;
  *v1023 = 0x8000000000000000;
  sub_266ECD368(170, 0xD000000000000023, 0x800000026745E1F0, v1025);
  v1026 = *v1023;
  *v1023 = v1222;

  v1021(v1227, 0);
  v1027 = sub_26738111C();
  v1029 = v1028;
  v1030 = *v1028;
  v1031 = swift_isUniquelyReferenced_nonNull_native();
  v1223 = *v1029;
  *v1029 = 0x8000000000000000;
  sub_266ECD368(171, 0xD000000000000021, 0x800000026745E220, v1031);
  v1032 = *v1029;
  *v1029 = v1223;

  v1027(v1227, 0);
  v1033 = sub_26738111C();
  v1035 = v1034;
  v1036 = *v1034;
  v1037 = swift_isUniquelyReferenced_nonNull_native();
  v1224 = *v1035;
  *v1035 = 0x8000000000000000;
  sub_266ECD368(172, 0xD00000000000001ALL, 0x800000026745E250, v1037);
  v1038 = *v1035;
  *v1035 = v1224;

  v1033(v1227, 0);
  v1039 = sub_26738111C();
  v1041 = v1040;
  v1042 = *v1040;
  v1043 = swift_isUniquelyReferenced_nonNull_native();
  v1225 = *v1041;
  *v1041 = 0x8000000000000000;
  sub_266ECD368(173, 0xD000000000000022, 0x800000026745E270, v1043);
  v1044 = *v1041;
  *v1041 = v1225;

  v1039(v1227, 0);
  v1045 = sub_26738111C();
  v1047 = v1046;
  v1048 = *v1046;
  v1049 = swift_isUniquelyReferenced_nonNull_native();
  v1226 = *v1047;
  *v1047 = 0x8000000000000000;
  sub_266ECD368(174, 0xD00000000000001CLL, 0x800000026745E2A0, v1049);
  v1050 = *v1047;
  *v1047 = v1226;

  return v1045(v1227, 0);
}

uint64_t sub_2670EF93C(uint64_t a1)
{
  v2 = sub_2670EFA40(&qword_2800F4BC0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670EF9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670EFA40(&qword_2800F4BC0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670EFA40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTFormatLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTFormatTier.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026745E2F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026745E310, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026745E340, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x800000026745E370, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026745E390, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x800000026745E3C0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2670EFDEC(uint64_t a1)
{
  v2 = sub_2670EFEF0(&qword_2800F4BD0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670EFE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670EFEF0(&qword_2800F4BD0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670EFEF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTFormatTier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTMusicDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026745E410, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026745E430, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026745E450, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026745E480, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x800000026745E4B0, v29);
  v30 = *v27;
  *v27 = v36;

  v25(v37, 0);
  sub_266ECB128(&unk_287888B10);
  return sub_26738112C();
}

uint64_t sub_2670F023C(uint64_t a1)
{
  v2 = sub_2670F0340(&qword_2800F4BE0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F02A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F0340(&qword_2800F4BE0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F0340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTMusicDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTMusicMetadataReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v221 = sub_26738113C();
  v4 = *(v221 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v221);
  v218 = v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v213 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MWTSchemaMWTMusicDomain(0);
  sub_2670F3A90(&qword_2800F4BD8, type metadata accessor for MWTSchemaMWTMusicDomain);
  v213[1] = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v222 = v12 + 56;
  v225 = v13;
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D6F44636973756DLL, 0xEB000000006E6961);
  v14(v227, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v226, 0x6D6F44636973756DLL, 0xEB000000006E6961);
  v17 = *(v12 + 48);
  v223 = v11;
  v216 = v17;
  v217 = v12 + 48;
  if (!(v17)(v18, 1, v11))
  {
    sub_266ECB128(&unk_287888B38);
    sub_26738115C();
  }

  (v16)(v226, 0);
  v15(v227, 0);
  type metadata accessor for MWTSchemaMWTQueueType(0);
  sub_2670F3A90(&qword_2800F4BE8, type metadata accessor for MWTSchemaMWTQueueType);
  sub_26738120C();
  v19 = v223;
  v225(v10, 0, 1, v223);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x7079546575657571, 0xE900000000000065);
  v20(v227, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v226, 0x7079546575657571, 0xE900000000000065);
  if (!(v216)(v23, 1, v19))
  {
    sub_266ECB128(&unk_287888B60);
    sub_26738115C();
  }

  (v22)(v226, 0);
  v21(v227, 0);
  v24 = *(v4 + 104);
  v214 = *MEMORY[0x277D3E538];
  v220 = v4 + 104;
  v224 = v24;
  v24(v218);
  v227[0] = 1;
  sub_26738114C();
  v25 = v223;
  v225(v10, 0, 1, v223);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x7A69536575657571, 0xE900000000000065);
  v26(v227, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v226, 0x7A69536575657571, 0xE900000000000065);
  if (!(v216)(v29, 1, v25))
  {
    sub_266ECB128(&unk_287888B88);
    sub_26738115C();
  }

  (v28)(v226, 0);
  v27(v227, 0);
  v215 = *MEMORY[0x277D3E4E8];
  v224(v218);
  v227[0] = 1;
  sub_26738114C();
  v30 = v223;
  v31 = v225;
  v225(v10, 0, 1, v223);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C66667568537369, 0xEA00000000006465);
  v32(v227, 0);
  type metadata accessor for MWTSchemaMWTPrefetchedMetadataSource(0);
  sub_2670F3A90(&qword_2800F4BF0, type metadata accessor for MWTSchemaMWTPrefetchedMetadataSource);
  sub_26738120C();
  v31(v10, 0, 1, v30);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026745E520);
  v33(v227, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v226, 0xD000000000000018, 0x800000026745E520);
  if (!(v216)(v36, 1, v30))
  {
    sub_266ECB128(&unk_287888BB0);
    sub_26738115C();
  }

  (v35)(v226, 0);
  v34(v227, 0);
  type metadata accessor for MWTSchemaMWTAssetEndPoint(0);
  sub_2670F3A90(&qword_2800F4AF0, type metadata accessor for MWTSchemaMWTAssetEndPoint);
  sub_26738120C();
  v37 = v223;
  v225(v10, 0, 1, v223);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0x646E457465737361, 0xED0000746E696F50);
  v38(v227, 0);
  v39 = sub_2673811AC();
  v40 = sub_266ECB6CC(v226, 0x646E457465737361, 0xED0000746E696F50);
  if (!(v216)(v41, 1, v37))
  {
    sub_266ECB128(&unk_287888BD8);
    sub_26738115C();
  }

  (v40)(v226, 0);
  v39(v227, 0);
  type metadata accessor for MWTSchemaMWTStreamingContentType(0);
  sub_2670F3A90(&qword_2800F4BF8, type metadata accessor for MWTSchemaMWTStreamingContentType);
  sub_26738120C();
  v42 = v223;
  v43 = v225;
  v225(v10, 0, 1, v223);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026745E540);
  v44(v227, 0);
  type metadata accessor for MWTSchemaMWTFormatCodec(0);
  sub_2670F3A90(&qword_2800F4BA8, type metadata accessor for MWTSchemaMWTFormatCodec);
  sub_26738120C();
  v45 = v42;
  v43(v10, 0, 1, v42);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F4374616D726F66, 0xEB00000000636564);
  v46(v227, 0);
  v47 = v218;
  v219 = a2;
  v48 = v221;
  v49 = v224;
  (v224)(v218, v214, v221);
  v227[0] = 1;
  sub_26738114C();
  v43(v10, 0, 1, v45);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0x694274616D726F66, 0xED00006574617274);
  v50(v227, 0);
  v51 = v214;
  (v49)(v47, v214, v48);
  v227[0] = 1;
  sub_26738114C();
  v52 = v225;
  v225(v10, 0, 1, v45);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0x694274616D726F66, 0xEE00687470654474);
  v53(v227, 0);
  (v49)(v47, v51, v48);
  v227[0] = 1;
  sub_26738114C();
  v52(v10, 0, 1, v45);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0x684374616D726F66, 0xEE00736C656E6E61);
  v54(v227, 0);
  type metadata accessor for MWTSchemaMWTFormatLayout(0);
  sub_2670F3A90(&qword_2800F4BB8, type metadata accessor for MWTSchemaMWTFormatLayout);
  sub_26738120C();
  v55 = v45;
  v52(v10, 0, 1, v45);
  v56 = sub_2673811AC();
  sub_266EC637C(v10, 0x614C74616D726F66, 0xEC00000074756F79);
  v56(v227, 0);
  v57 = sub_2673811AC();
  v58 = sub_266ECB6CC(v226, 0x614C74616D726F66, 0xEC00000074756F79);
  if (!(v216)(v59, 1, v55))
  {
    sub_266ECB128(&unk_287888C00);
    sub_26738115C();
  }

  (v58)(v226, 0);
  v57(v227, 0);
  v60 = v218;
  (v224)(v218, v214, v221);
  v227[0] = 1;
  sub_26738114C();
  v61 = v223;
  v62 = v225;
  v225(v10, 0, 1, v223);
  v63 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026745E560);
  v63(v227, 0);
  type metadata accessor for MWTSchemaMWTFormatTier(0);
  sub_2670F3A90(&qword_2800F4BC8, type metadata accessor for MWTSchemaMWTFormatTier);
  sub_26738120C();
  v62(v10, 0, 1, v61);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0x695474616D726F66, 0xEA00000000007265);
  v64(v227, 0);
  (v224)(v60, v214, v221);
  v227[0] = 1;
  sub_26738114C();
  v62(v10, 0, 1, v61);
  v65 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026745E580);
  v65(v227, 0);
  v66 = sub_2673811AC();
  v67 = sub_266ECB6CC(v226, 0xD000000000000010, 0x800000026745E580);
  if (!(v216)(v68, 1, v61))
  {
    sub_266ECB128(&unk_287888C28);
    sub_26738115C();
  }

  (v67)(v226, 0);
  v66(v227, 0);
  type metadata accessor for MWTSchemaMWTRouteConfiguration(0);
  sub_2670F3A90(&qword_2800F4C00, type metadata accessor for MWTSchemaMWTRouteConfiguration);
  sub_26738120C();
  v69 = v223;
  v225(v10, 0, 1, v223);
  v70 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026745E5A0);
  v70(v227, 0);
  v71 = sub_2673811AC();
  v72 = sub_266ECB6CC(v226, 0xD000000000000012, 0x800000026745E5A0);
  if (!(v216)(v73, 1, v69))
  {
    sub_266ECB128(&unk_287888C50);
    sub_26738115C();
  }

  (v72)(v226, 0);
  v71(v227, 0);
  v213[0] = "routeConfiguration";
  v74 = v218;
  v75 = v215;
  v76 = v221;
  (v224)(v218, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v77 = v225;
  v225(v10, 0, 1, v223);
  v78 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v213[0] | 0x8000000000000000);
  v78(v227, 0);
  v79 = v76;
  v80 = v224;
  (v224)(v74, v75, v79);
  v227[0] = 1;
  sub_26738114C();
  v81 = v223;
  v77(v10, 0, 1, v223);
  v82 = sub_2673811AC();
  sub_266EC637C(v10, 0x4265726F74537369, 0xEF79646165526761);
  v82(v227, 0);
  (v80)(v74, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v77(v10, 0, 1, v81);
  v83 = sub_2673811AC();
  sub_266EC637C(v10, 0x52657361654C7369, 0xEC00000079646165);
  v83(v227, 0);
  v84 = sub_2673811AC();
  v85 = sub_266ECB6CC(v226, 0x52657361654C7369, 0xEC00000079646165);
  if (!(v216)(v86, 1, v81))
  {
    sub_266ECB128(&unk_287888C78);
    sub_26738115C();
  }

  (v85)(v226, 0);
  v84(v227, 0);
  v213[0] = "isAccountDataReady";
  v87 = v218;
  v88 = v215;
  v89 = v221;
  (v224)(v218, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v90 = v225;
  v225(v10, 0, 1, v223);
  v91 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v213[0] | 0x8000000000000000);
  v91(v227, 0);
  v213[0] = "isOnlineKeyReady";
  v92 = v89;
  v93 = v224;
  (v224)(v87, v88, v92);
  v227[0] = 1;
  sub_26738114C();
  v94 = v223;
  v90(v10, 0, 1, v223);
  v95 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v213[0] | 0x8000000000000000);
  v95(v227, 0);
  (v93)(v87, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v90(v10, 0, 1, v94);
  v96 = sub_2673811AC();
  sub_266EC637C(v10, 0x79654B736C487369, 0xEE00796461655273);
  v96(v227, 0);
  v97 = sub_2673811AC();
  v98 = sub_266ECB6CC(v226, 0x79654B736C487369, 0xEE00796461655273);
  if (!(v216)(v99, 1, v94))
  {
    sub_266ECB128(&unk_287888CA0);
    sub_26738115C();
  }

  (v98)(v226, 0);
  v97(v227, 0);
  v100 = v218;
  v101 = v215;
  v102 = v221;
  v103 = v224;
  (v224)(v218, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v104 = v223;
  v225(v10, 0, 1, v223);
  v105 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026745E620);
  v105(v227, 0);
  v213[0] = "isInterruptingPlayback";
  v103(v100, v101, v102);
  v227[0] = 1;
  sub_26738114C();
  v106 = v225;
  v225(v10, 0, 1, v104);
  v107 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v213[0] | 0x8000000000000000);
  v107(v227, 0);
  v213[0] = "isRemoteSetQueue";
  v103(v100, v101, v102);
  v227[0] = 1;
  sub_26738114C();
  v108 = v223;
  v106(v10, 0, 1, v223);
  v109 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v213[0] | 0x8000000000000000);
  v109(v227, 0);
  v103(v100, v101, v102);
  v227[0] = 1;
  sub_26738114C();
  v225(v10, 0, 1, v108);
  v110 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026745E680);
  v110(v227, 0);
  v111 = sub_2673811AC();
  v112 = sub_266ECB6CC(v226, 0xD000000000000010, 0x800000026745E680);
  if (!(v216)(v113, 1, v108))
  {
    sub_266ECB128(&unk_287888CC8);
    sub_26738115C();
  }

  (v112)(v226, 0);
  v111(v227, 0);
  v114 = v218;
  v115 = v215;
  v116 = v221;
  (v224)(v218, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v225(v10, 0, 1, v223);
  v117 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C506F7475417369, 0xEA00000000007961);
  v117(v227, 0);
  v213[0] = "isNonDefaultUser";
  v118 = v224;
  (v224)(v114, v115, v116);
  v227[0] = 1;
  sub_26738114C();
  v119 = v225;
  v225(v10, 0, 1, v223);
  v120 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v213[0] | 0x8000000000000000);
  v120(v227, 0);
  v118(v114, v115, v116);
  v227[0] = 1;
  sub_26738114C();
  v121 = v223;
  v119(v10, 0, 1, v223);
  v122 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026745E6C0);
  v122(v227, 0);
  v123 = sub_2673811AC();
  v124 = sub_266ECB6CC(v226, 0xD000000000000013, 0x800000026745E6C0);
  if (!(v216)(v125, 1, v121))
  {
    sub_266ECB128(&unk_287888CF0);
    sub_26738115C();
  }

  (v124)(v226, 0);
  v123(v227, 0);
  v213[0] = "isMiniSinfAvailable";
  v126 = v218;
  v127 = v224;
  (v224)(v218, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v128 = v223;
  v129 = v225;
  v225(v10, 0, 1, v223);
  v130 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v213[0] | 0x8000000000000000);
  v130(v227, 0);
  (v127)(v126, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v129(v10, 0, 1, v128);
  v131 = v128;
  v132 = sub_2673811AC();
  sub_266EC637C(v10, 0x654C657A75537369, 0xEB00000000657361);
  v132(v227, 0);
  v133 = sub_2673811AC();
  v134 = sub_266ECB6CC(v226, 0x654C657A75537369, 0xEB00000000657361);
  if (!(v216)(v135, 1, v131))
  {
    sub_266ECB128(&unk_287888D18);
    sub_26738115C();
  }

  (v134)(v226, 0);
  v133(v227, 0);
  type metadata accessor for MWTSchemaMWTNetworkConnectionType(0);
  sub_2670F3A90(&qword_2800F4C08, type metadata accessor for MWTSchemaMWTNetworkConnectionType);
  sub_26738120C();
  v136 = v223;
  v137 = v225;
  v225(v10, 0, 1, v223);
  v138 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x800000026745E700);
  v138(v227, 0);
  v139 = v218;
  (v224)(v218, v215, v221);
  v227[0] = 1;
  v140 = v139;
  sub_26738114C();
  v137(v10, 0, 1, v136);
  v141 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x800000026745E720);
  v141(v227, 0);
  v142 = sub_2673811AC();
  v143 = sub_266ECB6CC(v226, 0xD00000000000001FLL, 0x800000026745E720);
  if (!(v216)(v144, 1, v136))
  {
    sub_266ECB128(&unk_287888D40);
    sub_26738115C();
  }

  (v143)(v226, 0);
  v142(v227, 0);
  (v224)(v139, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v145 = v223;
  v146 = v225;
  v225(v10, 0, 1, v223);
  v147 = sub_2673811AC();
  sub_266EC637C(v10, 0x72616D6972507369, 0xED00007265735579);
  v147(v227, 0);
  LODWORD(v217) = *MEMORY[0x277D3E530];
  v224(v140);
  v227[0] = 1;
  sub_26738114C();
  v146(v10, 0, 1, v145);
  v148 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026745E740);
  v148(v227, 0);
  type metadata accessor for MWTSchemaMWTEndPointType(0);
  sub_2670F3A90(&qword_2800F4B98, type metadata accessor for MWTSchemaMWTEndPointType);
  sub_26738120C();
  v146(v10, 0, 1, v145);
  v149 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E696F50646E65, 0xEC00000065707954);
  v149(v227, 0);
  type metadata accessor for MWTSchemaMWTAudioRouteType(0);
  sub_2670F3A90(&qword_2800F4B20, type metadata accessor for MWTSchemaMWTAudioRouteType);
  sub_26738120C();
  v146(v10, 0, 1, v145);
  v150 = sub_2673811AC();
  sub_266EC637C(v10, 0x7079546574756F72, 0xE900000000000065);
  v150(v227, 0);
  (v224)(v218, v214, v221);
  v227[0] = 1;
  sub_26738114C();
  v146(v10, 0, 1, v145);
  v151 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026745E760);
  v151(v227, 0);
  type metadata accessor for MWTSchemaMWTAssetSource(0);
  sub_2670F3A90(&qword_2800F4B10, type metadata accessor for MWTSchemaMWTAssetSource);
  sub_26738120C();
  v146(v10, 0, 1, v145);
  v152 = sub_2673811AC();
  sub_266EC637C(v10, 0x756F537465737361, 0xEB00000000656372);
  v152(v227, 0);
  type metadata accessor for MWTSchemaMWTAssetLocation(0);
  sub_2670F3A90(&qword_2800F4B00, type metadata accessor for MWTSchemaMWTAssetLocation);
  sub_26738120C();
  v146(v10, 0, 1, v145);
  v153 = sub_2673811AC();
  sub_266EC637C(v10, 0x636F4C7465737361, 0xED00006E6F697461);
  v153(v227, 0);
  type metadata accessor for MWTSchemaMWTSubscriptionType(0);
  sub_2670F3A90(&qword_2800F4C10, type metadata accessor for MWTSchemaMWTSubscriptionType);
  sub_26738120C();
  v146(v10, 0, 1, v145);
  v154 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026745E780);
  v154(v227, 0);
  v216 = "subscriptionType";
  v155 = v218;
  v156 = v215;
  v157 = v221;
  v158 = v224;
  (v224)(v218, v215, v221);
  v227[0] = 1;
  sub_26738114C();
  v146(v10, 0, 1, v145);
  v159 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v216 | 0x8000000000000000);
  v159(v227, 0);
  v158(v155, v156, v157);
  v227[0] = 1;
  v160 = v155;
  sub_26738114C();
  v161 = v225;
  v225(v10, 0, 1, v145);
  v162 = sub_2673811AC();
  sub_266EC637C(v10, 0x6157676142736168, 0xEE00656D69547469);
  v162(v227, 0);
  v216 = "hasLookupWaitTime";
  v163 = v156;
  v164 = v156;
  v165 = v221;
  (v224)(v160, v164, v221);
  v227[0] = 1;
  sub_26738114C();
  v166 = v223;
  v161(v10, 0, 1, v223);
  v167 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v216 | 0x8000000000000000);
  v167(v227, 0);
  v216 = "hasLeaseWaitTime";
  v168 = v218;
  v169 = v163;
  v170 = v163;
  v171 = v224;
  (v224)(v218, v169, v165);
  v227[0] = 1;
  sub_26738114C();
  v172 = v166;
  v173 = v166;
  v174 = v225;
  v225(v10, 0, 1, v173);
  v175 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v216 | 0x8000000000000000);
  v175(v227, 0);
  v216 = "hasSuzeLeaseWaitTime";
  v176 = v221;
  v171(v168, v170, v221);
  v227[0] = 1;
  sub_26738114C();
  v174(v10, 0, 1, v172);
  v177 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v216 | 0x8000000000000000);
  v177(v227, 0);
  v216 = "ssetLoadWaitTime";
  v178 = v218;
  v179 = v224;
  (v224)(v218, v215, v176);
  v227[0] = 1;
  sub_26738114C();
  v180 = v172;
  v181 = v172;
  v182 = v225;
  v225(v10, 0, 1, v181);
  v183 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v216 | 0x8000000000000000);
  v183(v227, 0);
  v216 = "hasMediaRedownloadWaitTime";
  v184 = v214;
  v185 = v221;
  (v179)(v178, v214, v221);
  v227[0] = 1;
  sub_26738114C();
  v182(v10, 0, 1, v180);
  v186 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000035, v216 | 0x8000000000000000);
  v186(v227, 0);
  v216 = "adyToPlayDurationInMs";
  v187 = v224;
  (v224)(v178, v184, v185);
  v227[0] = 1;
  sub_26738114C();
  v188 = v223;
  v189 = v225;
  v225(v10, 0, 1, v223);
  v190 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002ELL, v216 | 0x8000000000000000);
  v190(v227, 0);
  v216 = "ItemCreationToLtluDurationInMs";
  (v187)(v178, v214, v185);
  v227[0] = 1;
  sub_26738114C();
  v189(v10, 0, 1, v188);
  v191 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000030, v216 | 0x8000000000000000);
  v191(v227, 0);
  v216 = "hakeDurationInMs";
  v192 = v214;
  v193 = v221;
  (v187)(v178, v214, v221);
  v227[0] = 1;
  sub_26738114C();
  v194 = v223;
  v195 = v225;
  v225(v10, 0, 1, v223);
  v196 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v216 | 0x8000000000000000);
  v196(v227, 0);
  v216 = "questDurationInMs";
  v197 = v192;
  v198 = v224;
  (v224)(v178, v197, v193);
  v227[0] = 1;
  sub_26738114C();
  v195(v10, 0, 1, v194);
  v199 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002DLL, v216 | 0x8000000000000000);
  v199(v227, 0);
  v216 = "ctionTlsHandshakeDurationInMs";
  v200 = v218;
  v201 = v214;
  (v198)(v218, v214, v193);
  v227[0] = 1;
  sub_26738114C();
  v202 = v225;
  v225(v10, 0, 1, v194);
  v203 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v216 | 0x8000000000000000);
  v203(v227, 0);
  v216 = "subPlaylistRequestDurationInMs";
  v204 = v201;
  v205 = v221;
  v206 = v224;
  (v224)(v200, v204, v221);
  v227[0] = 1;
  sub_26738114C();
  v207 = v223;
  v202(v10, 0, 1, v223);
  v208 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000029, v216 | 0x8000000000000000);
  v208(v227, 0);
  v209 = v218;
  (v206)(v218, v214, v205);
  v227[0] = 1;
  sub_26738114C();
  v202(v10, 0, 1, v207);
  v210 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x800000026745E9B0);
  v210(v227, 0);
  (v224)(v209, v217, v205);
  v227[0] = 1;
  sub_26738114C();
  v202(v10, 0, 1, v223);
  v211 = sub_2673811AC();
  sub_266EC637C(v10, 0x6575516F69647561, 0xEE00657079546575);
  return v211(v227, 0);
}

uint64_t sub_2670F3984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F39E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670F3A90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670F3AD8()
{
  result = qword_2800F4B60;
  if (!qword_2800F4B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4B60);
  }

  return result;
}

uint64_t static MWTSchemaMWTNetworkConnectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026745EA10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v92;

  v1(v107, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x800000026745EA40, v11);
  v12 = *v9;
  *v9 = v93;

  v7(v107, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026745EA80, v17);
  v18 = *v15;
  *v15 = v94;

  v13(v107, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x800000026745EAB0, v23);
  v24 = *v21;
  *v21 = v95;

  v19(v107, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026745EAE0, v29);
  v30 = *v27;
  *v27 = v96;

  v25(v107, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026745EB10, v35);
  v36 = *v33;
  *v33 = v97;

  v31(v107, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000024, 0x800000026745EB40, v41);
  v42 = *v39;
  *v39 = v98;

  v37(v107, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x800000026745EB70, v47);
  v48 = *v45;
  *v45 = v99;

  v43(v107, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x800000026745EBA0, v53);
  v54 = *v51;
  *v51 = v100;

  v49(v107, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000024, 0x800000026745EBD0, v59);
  v60 = *v57;
  *v57 = v101;

  v55(v107, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000021, 0x800000026745EC00, v65);
  v66 = *v63;
  *v63 = v102;

  v61(v107, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000003ALL, 0x800000026745EC30, v71);
  v72 = *v69;
  *v69 = v103;

  v67(v107, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x800000026745EC70, v77);
  v78 = *v75;
  *v75 = v104;

  v73(v107, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000024, 0x800000026745EC90, v83);
  v84 = *v81;
  *v81 = v105;

  v79(v107, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000027, 0x800000026745ECC0, v89);
  v90 = *v87;
  *v87 = v106;

  return v85(v107, 0);
}

uint64_t sub_2670F429C(uint64_t a1)
{
  v2 = sub_2670F43A0(&qword_2800F4C18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F4304(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F43A0(&qword_2800F4C18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F43A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTNetworkConnectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTPrefetchedMetadataSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026745ED30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026745ED60, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026745ED90, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x800000026745EDC0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x800000026745EE00, v29);
  v30 = *v27;
  *v27 = v36;

  v25(v37, 0);
  sub_266ECB128(&unk_287888D68);
  return sub_26738112C();
}

uint64_t sub_2670F46F8(uint64_t a1)
{
  v2 = sub_2670F47FC(&qword_2800F4C20);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F4760(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F47FC(&qword_2800F4C20);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F47FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTPrefetchedMetadataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTQueueType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026745EE60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v66;

  v1(v76, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026745EE80, v11);
  v12 = *v9;
  *v9 = v67;

  v7(v76, 0);
  v13 = sub_266ECB128(&unk_287888D90);
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
  sub_266ECD368(2, 0xD000000000000023, 0x800000026745EEA0, v25);
  v26 = *v23;
  *v23 = v69;

  v21(v76, 0);
  v27 = sub_266ECB128(&unk_287888DB8);
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
  sub_266ECD368(3, 0xD000000000000018, 0x800000026745EED0, v39);
  v40 = *v37;
  *v37 = v71;

  v35(v76, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = *v42;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026745EEF0, v45);
  v46 = *v43;
  *v43 = v72;

  v41(v76, 0);
  v47 = sub_26738111C();
  v49 = v48;
  v50 = *v48;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v49;
  *v49 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000012, 0x800000026745EF10, v51);
  v52 = *v49;
  *v49 = v73;

  v47(v76, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = *v54;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x800000026745EF30, v57);
  v58 = *v55;
  *v55 = v74;

  v53(v76, 0);
  v59 = sub_26738111C();
  v61 = v60;
  v62 = *v60;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v61;
  *v61 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000012, 0x800000026745EF50, v63);
  v64 = *v61;
  *v61 = v75;

  v59(v76, 0);
  sub_266ECB128(&unk_287888DE0);
  return sub_26738112C();
}

uint64_t sub_2670F4D88(uint64_t a1)
{
  v2 = sub_2670F4E8C(&qword_2800F4C28);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F4DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F4E8C(&qword_2800F4C28);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F4E8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTQueueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTRouteConfiguration.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026745EFA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026745EFC0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745EFF0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026745F010, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x800000026745F030, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026745F070, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x800000026745F090, v41);
  v42 = *v39;
  *v39 = v50;

  v37(v51, 0);
  sub_266ECB128(&unk_287888E08);
  return sub_26738112C();
}

uint64_t sub_2670F52BC(uint64_t a1)
{
  v2 = sub_2670F53C0(&qword_2800F4C30);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F5324(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F53C0(&qword_2800F4C30);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F53C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTRouteConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTStreamingContentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026745F0E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026745F100, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745F120, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x800000026745F140, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026745F170, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670F56FC(uint64_t a1)
{
  v2 = sub_2670F5800(&qword_2800F4C38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F5764(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F5800(&qword_2800F4C38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F5800(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTStreamingContentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTSubscriptionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026745F1C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026745F1E0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026745F210, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026745F240, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2670F5AC8(uint64_t a1)
{
  v2 = sub_2670F5BCC(&qword_2800F4C40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F5B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F5BCC(&qword_2800F4C40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F5BCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTSubscriptionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTVMCPUSnapshotStage.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026745F290, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026745F2B0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026745F2E0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026745F300, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026745F320, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026745F340, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2670F5F7C(uint64_t a1)
{
  v2 = sub_2670F6080(&qword_2800F4C50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F5FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F6080(&qword_2800F4C50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F6080(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MWTSchemaMWTVMCPUSnapshotStage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MWTSchemaMWTVMCPUStatsReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v48 = sub_26738113C();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v48);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MWTSchemaMWTVMCPUSnapshotStage(0);
  sub_2670F6A9C(&qword_2800F4C48, type metadata accessor for MWTSchemaMWTVMCPUSnapshotStage);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v41 = *(v11 + 56);
  v47 = v11 + 56;
  v41(v9, 0, 1, v10);
  v42 = a1;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x746F687370616E73, 0xED00006567617453);
  v12(v49, 0);
  v14 = v2 + 104;
  v15 = *(v2 + 104);
  v46 = *MEMORY[0x277D3E540];
  v13 = v46;
  v16 = v48;
  v15(v5, v46, v48);
  v49[0] = 1;
  sub_26738114C();
  v17 = v41;
  v41(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x736B636954757063, 0xEE006D6574737953);
  v18(v49, 0);
  v43 = v14;
  v15(v5, v13, v16);
  v49[0] = 1;
  sub_26738114C();
  v45 = v10;
  v17(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x736B636954757063, 0xEC00000072657355);
  v19(v49, 0);
  v15(v5, v46, v48);
  v44 = v15;
  v49[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x736B636954757063, 0xEC000000656C6449);
  v20(v49, 0);
  v40 = v5;
  v21 = v46;
  v22 = v48;
  v15(v5, v46, v48);
  v49[0] = 1;
  sub_26738114C();
  v23 = v45;
  v17(v9, 0, 1, v45);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x736B636954757063, 0xEC0000006563694ELL);
  v24(v49, 0);
  v25 = v40;
  v26 = v22;
  v27 = v44;
  v44(v40, v21, v26);
  v49[0] = 1;
  sub_26738114C();
  v28 = v23;
  v17(v9, 0, 1, v23);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x73736572706D6F63, 0xEC000000736E6F69);
  v29(v49, 0);
  v30 = v46;
  v31 = v48;
  v27(v25, v46, v48);
  v49[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x6572706D6F636564, 0xEE00736E6F697373);
  v32(v49, 0);
  v33 = v30;
  v34 = v44;
  v44(v25, v33, v31);
  v49[0] = 1;
  sub_26738114C();
  v35 = v45;
  v17(v9, 0, 1, v45);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0x736E6965676170, 0xE700000000000000);
  v36(v49, 0);
  v34(v25, v46, v48);
  v49[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v35);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0x73746C756166, 0xE600000000000000);
  return v37(v49, 0);
}

uint64_t sub_2670F6990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F69F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670F6A9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670F6AE4()
{
  result = qword_2800F4B70;
  if (!qword_2800F4B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4B70);
  }

  return result;
}

uint64_t static NETSchemaNETBluetoothDevice.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x7865646E69, 0xE500000000000000);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E518], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 1769173874, 0xE400000000000000);
  return v15(v18, 0);
}

uint64_t sub_2670F6E44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F6EA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670F6F0C()
{
  result = qword_2800F4C58;
  if (!qword_2800F4C58)
  {
    sub_2670F6F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4C58);
  }

  return result;
}

unint64_t sub_2670F6F64()
{
  result = qword_2800F4C60;
  if (!qword_2800F4C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4C60);
  }

  return result;
}

uint64_t static NETSchemaNETClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4C68, 0x277D58B80);
  sub_266ECAF2C(&qword_2800F4C70, &qword_2800F4C68, 0x277D58B80);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v32, 0);
  sub_266ECB294(0, &qword_2800F4C78, 0x277D58C18);
  sub_266ECAF2C(&qword_2800F4C80, &qword_2800F4C78, 0x277D58C18);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x800000026745F3F0);
  v10(v32, 0);
  sub_266ECB294(0, &qword_2800F4C88, 0x277D58C28);
  sub_266ECAF2C(&qword_2800F4C90, &qword_2800F4C88, 0x277D58C28);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x800000026745F420);
  v11(v32, 0);
  sub_266ECB294(0, &qword_2800F4C98, 0x277D58BB8);
  sub_266ECAF2C(&qword_2800F4CA0, &qword_2800F4C98, 0x277D58BB8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000026, 0x800000026745F450);
  v12(v32, 0);
  sub_266ECB294(0, &qword_2800F4CA8, 0x277D58C10);
  sub_266ECAF2C(&qword_2800F4CB0, &qword_2800F4CA8, 0x277D58C10);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026745F480);
  v13(v32, 0);
  sub_266ECB294(0, &qword_2800F4CB8, 0x277D58C00);
  sub_266ECAF2C(&qword_2800F4CC0, &qword_2800F4CB8, 0x277D58C00);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026745F4A0);
  v14(v32, 0);
  sub_266ECB294(0, &qword_2800F4CC8, 0x277D58BE0);
  sub_266ECAF2C(&qword_2800F4CD0, &qword_2800F4CC8, 0x277D58BE0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000031, 0x800000026745F4C0);
  v15(v32, 0);
  sub_266ECB294(0, &qword_2800F4CD8, 0x277D58B88);
  sub_266ECAF2C(&qword_2800F4CE0, &qword_2800F4CD8, 0x277D58B88);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000036, 0x800000026745F500);
  v16(v32, 0);
  sub_266ECB294(0, &qword_2800F4CE8, 0x277D58BE8);
  sub_266ECAF2C(&qword_2800F4CF0, &qword_2800F4CE8, 0x277D58BE8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002BLL, 0x800000026745F540);
  v17(v32, 0);
  sub_266ECB294(0, &qword_2800F4CF8, 0x277D58B90);
  sub_266ECAF2C(&qword_2800F4D00, &qword_2800F4CF8, 0x277D58B90);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v18 = v29;
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000030, 0x800000026745F570);
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
  sub_266ECB128(&unk_287888E30);
  return sub_2673811CC();
}

uint64_t sub_2670F7AA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2670F7B40()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670F7C0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F7C70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670F7CD0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4D08, &qword_2800F1EE0, 0x277D58B78);
  a1[2] = sub_266ECAF2C(&qword_2800F4D10, &qword_2800F1EE0, 0x277D58B78);
  result = sub_266ECAF2C(&qword_2800F4D18, &qword_2800F1EE0, 0x277D58B78);
  a1[3] = result;
  return result;
}

uint64_t static NETSchemaNETClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v6 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v19 = a1;
  v17[1] = v6;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v18 = *(v8 + 56);
  v18(v5, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x644974656ELL, 0xE500000000000000);
  v9(v21, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v20, 0x644974656ELL, 0xE500000000000000);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_287888E68);
    sub_26738115C();
  }

  (v11)(v20, 0);
  v10(v21, 0);
  sub_26738120C();
  v13 = v18;
  v18(v5, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026745F5E0);
  v14(v21, 0);
  type metadata accessor for NETSchemaNETProvider(0);
  sub_2670F8250();
  sub_26738120C();
  v13(v5, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x72656469766F7270, 0xE800000000000000);
  return v15(v21, 0);
}

uint64_t sub_2670F818C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670F81F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670F8250()
{
  result = qword_2800F4D20;
  if (!qword_2800F4D20)
  {
    type metadata accessor for NETSchemaNETProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4D20);
  }

  return result;
}

uint64_t static NETSchemaNETConnectionMethod.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026745F630, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026745F650, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745F670, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026745F690, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026745F6B0, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026745F6E0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000019, 0x800000026745F710, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x800000026745F730, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2670F8734(uint64_t a1)
{
  v2 = sub_2670F8838(&qword_2800F4D30);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F879C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F8838(&qword_2800F4D30);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F8838(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETConnectionMethod(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETConnectionMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026745F780, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026745F7A0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026745F7C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670F8A90(uint64_t a1)
{
  v2 = sub_2670F8B94(&qword_2800F4D40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F8AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F8B94(&qword_2800F4D40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F8B94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETConnectionMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETConnectionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026745F820, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026745F840, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026745F860, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026745F880, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026745F8A0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x800000026745F8C0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x800000026745F8E0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2670F8FB4(uint64_t a1)
{
  v2 = sub_2670F90B8(&qword_2800F4D50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F901C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F90B8(&qword_2800F4D50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F90B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETConnectionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETConnectionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x800000026745F930, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v146;

  v1(v170, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026745F950, v11);
  v12 = *v9;
  *v9 = v147;

  v7(v170, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026745F970, v17);
  v18 = *v15;
  *v15 = v148;

  v13(v170, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026745F990, v23);
  v24 = *v21;
  *v21 = v149;

  v19(v170, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x800000026745F9B0, v29);
  v30 = *v27;
  *v27 = v150;

  v25(v170, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x800000026745F9D0, v35);
  v36 = *v33;
  *v33 = v151;

  v31(v170, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x800000026745F9F0, v41);
  v42 = *v39;
  *v39 = v152;

  v37(v170, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x800000026745FA10, v47);
  v48 = *v45;
  *v45 = v153;

  v43(v170, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x800000026745FA30, v53);
  v54 = *v51;
  *v51 = v154;

  v49(v170, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000017, 0x800000026745FA50, v59);
  v60 = *v57;
  *v57 = v155;

  v55(v170, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ELL, 0x800000026745FA70, v65);
  v66 = *v63;
  *v63 = v156;

  v61(v170, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x800000026745FA90, v71);
  v72 = *v69;
  *v69 = v157;

  v67(v170, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001ELL, 0x800000026745FAB0, v77);
  v78 = *v75;
  *v75 = v158;

  v73(v170, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000016, 0x800000026745FAD0, v83);
  v84 = *v81;
  *v81 = v159;

  v79(v170, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000017, 0x800000026745FAF0, v89);
  v90 = *v87;
  *v87 = v160;

  v85(v170, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ALL, 0x800000026745FB10, v95);
  v96 = *v93;
  *v93 = v161;

  v91(v170, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000015, 0x800000026745FB30, v101);
  v102 = *v99;
  *v99 = v162;

  v97(v170, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000015, 0x800000026745FB50, v107);
  v108 = *v105;
  *v105 = v163;

  v103(v170, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ALL, 0x800000026745FB70, v113);
  v114 = *v111;
  *v111 = v164;

  v109(v170, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000017, 0x800000026745FB90, v119);
  v120 = *v117;
  *v117 = v165;

  v115(v170, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000019, 0x800000026745FBB0, v125);
  v126 = *v123;
  *v123 = v166;

  v121(v170, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000017, 0x800000026745FBD0, v131);
  v132 = *v129;
  *v129 = v167;

  v127(v170, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000014, 0x800000026745FBF0, v137);
  v138 = *v135;
  *v135 = v168;

  v133(v170, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000017, 0x800000026745FC10, v143);
  v144 = *v141;
  *v141 = v169;

  return v139(v170, 0);
}

uint64_t sub_2670F9C68(uint64_t a1)
{
  v2 = sub_2670F9D6C(&qword_2800F4D60);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670F9CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670F9D6C(&qword_2800F4D60);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670F9D6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETConnectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v35 = sub_26738113C();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v36 = *MEMORY[0x277D3E4E8];
  v11 = *(v3 + 104);
  v33 = v3 + 104;
  v38 = v11;
  v11(v6);
  v39[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v12);
  v34 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x736E657078457369, 0xEB00000000657669);
  v16(v39, 0);
  sub_266ECB294(0, &qword_2800F4D68, 0x277D58BC0);
  sub_266ECAF2C(&qword_2800F4D70, &qword_2800F4D68, 0x277D58BC0);
  sub_26738122C();
  v14(v10, 0, 1, v12);
  v31 = a2;
  v32 = v14;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x6574614768746170, 0xEC00000073796177);
  v17(v39, 0);
  v18 = v35;
  v19 = v38;
  v38(v6, *MEMORY[0x277D3E530], v35);
  v39[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x697463656E6E6F63, 0xEE006F666E496E6FLL);
  v20(v39, 0);
  v21 = v36;
  v19(v6, v36, v18);
  v39[0] = 1;
  sub_26738114C();
  v22 = v32;
  v32(v10, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x36767049736168, 0xE700000000000000);
  v23(v39, 0);
  v24 = v21;
  v25 = v35;
  v38(v6, v24, v35);
  v39[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v12);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x34767049736168, 0xE700000000000000);
  v26(v39, 0);
  v38(v6, v36, v25);
  v39[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v12);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x7274736E6F437369, 0xED000064656E6961);
  v27(v39, 0);
  sub_266ECB294(0, &qword_2800F4D78, 0x277D58BF8);
  sub_266ECAF2C(&qword_2800F4D80, &qword_2800F4D78, 0x277D58BF8);
  sub_26738122C();
  v22(v10, 0, 1, v12);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x65746E4968746170, 0xEE00736563616672);
  v28(v39, 0);
  type metadata accessor for NETSchemaNETPathStatus(0);
  sub_2670FA660();
  sub_26738120C();
  v22(v10, 0, 1, v12);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x737574617473, 0xE600000000000000);
  return v29(v39, 0);
}

uint64_t sub_2670FA59C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FA600(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FA660()
{
  result = qword_2800F4D88;
  if (!qword_2800F4D88)
  {
    type metadata accessor for NETSchemaNETPathStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4D88);
  }

  return result;
}

uint64_t static NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v17 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4D90, 0x277D58BD0);
  sub_266ECAF2C(&qword_2800F4D98, &qword_2800F4D90, 0x277D58BD0);
  v16 = a1;
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974756C6F736572, 0xEA00000000006E6FLL);
  v11(v20, 0);
  sub_266ECB294(0, &qword_2800F4DA0, 0x277D58C08);
  sub_266ECAF2C(&qword_2800F4DA8, &qword_2800F4DA0, 0x277D58C08);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026745FCE0);
  v12(v20, 0);
  (*(v18 + 104))(v17, *MEMORY[0x277D3E540], v19);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F697461727564, 0xEC000000734D6E49);
  v13(v20, 0);
  sub_266ECB294(0, &qword_2800F4DB0, 0x277D58BD8);
  sub_266ECAF2C(&qword_2800F4DB8, &qword_2800F4DB0, 0x277D58BD8);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026745FD00);
  return v14(v20, 0);
}

uint64_t sub_2670FABE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FAC48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETDebugNetworkInterface.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72[1] = a1;
  v3 = sub_26738113C();
  v76 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v72 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v77 = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E538];
  v81 = *(v4 + 104);
  v78 = v4 + 104;
  v81(v7, v12, v3);
  v83[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v11, 0, 1, v13);
  v79 = v16;
  v82 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6572727543747472, 0xEA0000000000746ELL);
  v17(v83, 0);
  v80 = v7;
  v18 = v7;
  v19 = v76;
  v20 = v81;
  v81(v18, v12, v76);
  v83[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x746F6F6D53747472, 0xEB00000000646568);
  v21(v83, 0);
  v22 = v80;
  v73 = v12;
  v20(v80, v12, v19);
  v83[0] = 1;
  sub_26738114C();
  v23 = v82;
  v82(v11, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x6169726156747472, 0xEB0000000065636ELL);
  v24(v83, 0);
  v25 = v81;
  v81(v22, v12, v19);
  v83[0] = 1;
  sub_26738114C();
  v74 = v13;
  v23(v11, 0, 1, v13);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x74736542747472, 0xE700000000000000);
  v26(v83, 0);
  v27 = *MEMORY[0x277D3E540];
  v28 = v80;
  v25(v80, v27, v19);
  v83[0] = 1;
  sub_26738114C();
  v23(v11, 0, 1, v13);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x537374656B636170, 0xEB00000000746E65);
  v29(v83, 0);
  v30 = v76;
  v81(v28, v27, v76);
  v83[0] = 1;
  sub_26738114C();
  v31 = v74;
  v23(v11, 0, 1, v74);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0x527374656B636170, 0xEF64657669656365);
  v32(v83, 0);
  v75 = v27;
  v33 = v30;
  v34 = v30;
  v35 = v81;
  v81(v80, v27, v33);
  v83[0] = 1;
  sub_26738114C();
  v36 = v82;
  v82(v11, 0, 1, v31);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E65537365747962, 0xE900000000000074);
  v37(v83, 0);
  v72[0] = "NetworkInterface";
  v38 = v80;
  v35(v80, v27, v34);
  v83[0] = 1;
  sub_26738114C();
  v39 = v74;
  v36(v11, 0, 1, v74);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v72[0] | 0x8000000000000000);
  v40(v83, 0);
  v41 = v75;
  v42 = v81;
  v81(v38, v75, v34);
  v83[0] = 1;
  sub_26738114C();
  v82(v11, 0, 1, v39);
  v43 = sub_2673811AC();
  sub_266EC637C(v11, 0x616E557365747962, 0xEC00000064656B63);
  v43(v83, 0);
  v42(v80, v41, v34);
  v83[0] = 1;
  sub_26738114C();
  v44 = v39;
  v45 = v82;
  v82(v11, 0, 1, v39);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0x6365527365747962, 0xED00006465766965);
  v46(v83, 0);
  v72[0] = "bytesRetransmitted";
  v47 = v80;
  v48 = v75;
  v42(v80, v75, v34);
  v83[0] = 1;
  sub_26738114C();
  v49 = v44;
  v45(v11, 0, 1, v44);
  v50 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v72[0] | 0x8000000000000000);
  v50(v83, 0);
  v72[0] = "duplicateBytesReceived";
  v51 = v76;
  v52 = v81;
  v81(v47, v48, v76);
  v83[0] = 1;
  sub_26738114C();
  v82(v11, 0, 1, v49);
  v53 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v72[0] | 0x8000000000000000);
  v53(v83, 0);
  v54 = v80;
  v52(v80, v48, v51);
  v83[0] = 1;
  sub_26738114C();
  v55 = v49;
  v56 = v49;
  v57 = v82;
  v82(v11, 0, 1, v55);
  v58 = sub_2673811AC();
  sub_266EC637C(v11, 0x66667542646E6573, 0xEF73657479427265);
  v58(v83, 0);
  v52(v54, v75, v51);
  v59 = v52;
  v83[0] = 1;
  sub_26738114C();
  v57(v11, 0, 1, v56);
  v60 = sub_2673811AC();
  sub_266EC637C(v11, 0x646E6142646E6573, 0xED00006874646977);
  v60(v83, 0);
  v61 = v73;
  v62 = v76;
  v59(v54, v73, v76);
  v83[0] = 1;
  sub_26738114C();
  v63 = v56;
  v64 = v82;
  v82(v11, 0, 1, v63);
  v65 = sub_2673811AC();
  sub_266EC637C(v11, 0x61727465526E7973, 0xEE007374696D736ELL);
  v65(v83, 0);
  v59(v54, v61, v62);
  v83[0] = 1;
  sub_26738114C();
  v66 = v74;
  v64(v11, 0, 1, v74);
  v67 = sub_2673811AC();
  sub_266EC637C(v11, 0x61446E79536F6674, 0xEF64656B63416174);
  v67(v83, 0);
  v81(v54, v73, v76);
  v83[0] = 1;
  sub_26738114C();
  v68 = v64;
  v64(v11, 0, 1, v66);
  v69 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026745FDD0);
  v69(v83, 0);
  sub_266ECB294(0, &qword_2800F4DC0, 0x277D58BF0);
  sub_266ECAF2C(&qword_2800F4DC8, &qword_2800F4DC0, 0x277D58BF0);
  sub_26738120C();
  v68(v11, 0, 1, v66);
  v70 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026745FDF0);
  return v70(v83, 0);
}

uint64_t sub_2670FBD4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FBDB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETDebugSessionConnectionNetwork.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v29 = sub_26738113C();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v27 = a1;
  sub_26738119C();
  type metadata accessor for NETSchemaNETPhyMode(0);
  sub_2670FC444(&qword_2800F4DE0, type metadata accessor for NETSchemaNETPhyMode);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v28 = v11 + 56;
  v12(v9, 0, 1, v10);
  v26 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D79685069466977, 0xEB0000000065646FLL);
  v13(v30, 0);
  v25 = "SessionConnectionNetwork";
  v14 = *MEMORY[0x277D3E518];
  v15 = *(v2 + 104);
  v24 = v5;
  v16 = v5;
  v17 = v29;
  v15(v16, v14, v29);
  v30[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v25 | 0x8000000000000000);
  v18(v30, 0);
  v19 = v24;
  v15(v24, v14, v17);
  v30[0] = 1;
  sub_26738114C();
  v20 = v26;
  v26(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D69546E65706FLL, 0xEC000000734D6E49);
  v21(v30, 0);
  v15(v19, *MEMORY[0x277D3E538], v29);
  v30[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026745FE70);
  return v22(v30, 0);
}

uint64_t sub_2670FC338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FC39C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FC444(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670FC48C()
{
  result = qword_2800F4DF0;
  if (!qword_2800F4DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4DF0);
  }

  return result;
}

uint64_t static NETSchemaNETDebugSessionConnectionPingInfo.makeTypeManifestAndEnsureFields(in:)()
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
  v21 = *MEMORY[0x277D3E538];
  v9 = *(v1 + 104);
  v19 = v0;
  v20 = v9;
  v9(v4);
  v22[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F43676E6970, 0xE900000000000074);
  v12(v22, 0);
  v13 = v0;
  v14 = v20;
  v20(v4, *MEMORY[0x277D3E518], v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x676E69506E61656DLL, 0xEC000000734D6E49);
  v15(v22, 0);
  v14(v4, v21, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026745FED0);
  return v16(v22, 0);
}

uint64_t sub_2670FC8C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FC928(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FC98C()
{
  result = qword_2800F4DF8;
  if (!qword_2800F4DF8)
  {
    sub_2670FC9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4DF8);
  }

  return result;
}

unint64_t sub_2670FC9E4()
{
  result = qword_2800F4E00;
  if (!qword_2800F4E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4E00);
  }

  return result;
}

uint64_t static NETSchemaNETDebugSessionConnectionQuality.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v12 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NETSchemaNETQuality(0);
  sub_2670FCEF0(&qword_2800F4E08, type metadata accessor for NETSchemaNETQuality);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v12[1] = v5 + 56;
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x800000026745FF30);
  v7(v13, 0);
  v12[0] = "symptomsCellularHistorical";
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, v12[0] | 0x8000000000000000);
  v8(v13, 0);
  v12[0] = "symptomsCellularInstant";
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, v12[0] | 0x8000000000000000);
  v9(v13, 0);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026745FF90);
  return v10(v13, 0);
}

uint64_t sub_2670FCDE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FCE48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FCEF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670FCF38()
{
  result = qword_2800F4E18;
  if (!qword_2800F4E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4E18);
  }

  return result;
}

uint64_t static NETSchemaNETDebugSessionConnectionSnapshotCaptured.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v17[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x65636E6575716573, 0xEE007265626D754ELL);
  v11(v17, 0);
  sub_266ECB294(0, &qword_2800F4DF0, 0x277D58BA0);
  sub_266ECAF2C(&qword_2800F4DE8, &qword_2800F4DF0, 0x277D58BA0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6B726F7774656ELL, 0xE700000000000000);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F4DD8, 0x277D58B98);
  sub_266ECAF2C(&qword_2800F4DD0, &qword_2800F4DD8, 0x277D58B98);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267460000);
  v13(v17, 0);
  sub_266ECB294(0, &qword_2800F4E00, 0x277D58BA8);
  sub_266ECAF2C(&qword_2800F4DF8, &qword_2800F4E00, 0x277D58BA8);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F666E49676E6970, 0xE800000000000000);
  v14(v17, 0);
  sub_266ECB294(0, &qword_2800F4E18, 0x277D58BB0);
  sub_266ECAF2C(&qword_2800F4E10, &qword_2800F4E18, 0x277D58BB0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x7974696C617571, 0xE700000000000000);
  return v15(v17, 0);
}

uint64_t sub_2670FD528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FD58C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETEndpoint.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NETSchemaNETEndpointType(0);
  sub_2670FDA54(&qword_2800F4E20, type metadata accessor for NETSchemaNETEndpointType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 1701869940, 0xE400000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 1953656688, 0xE400000000000000);
  return v11(v15, 0);
}

uint64_t sub_2670FD948(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FD9AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FDA54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670FDA9C()
{
  result = qword_2800F4D68;
  if (!qword_2800F4D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4D68);
  }

  return result;
}

uint64_t static NETSchemaNETEndpointType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267460080, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674600A0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x80000002674600C0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674600E0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267460100, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x8000000267460120, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2670FDE54(uint64_t a1)
{
  v2 = sub_2670FDF58(&qword_2800F4E28);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670FDEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670FDF58(&qword_2800F4E28);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670FDF58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETEndpointType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETError.makeTypeManifestAndEnsureFields(in:)()
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
  v20 = *MEMORY[0x277D3E530];
  v8 = *(v0 + 104);
  v8(v3);
  v18 = v8;
  v21[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = v10;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E69616D6F64, 0xE600000000000000);
  v12(v21, 0);
  v13 = v19;
  (v8)(v3, v20, v19);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x7470697263736564, 0xEB000000006E6F69);
  v14(v21, 0);
  (v18)(v3, *MEMORY[0x277D3E510], v13);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v15(v21, 0);
}

uint64_t sub_2670FE38C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FE3F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FE454()
{
  result = qword_2800F4E30;
  if (!qword_2800F4E30)
  {
    sub_2670FE4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4E30);
  }

  return result;
}

unint64_t sub_2670FE4AC()
{
  result = qword_2800F4E38;
  if (!qword_2800F4E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4E38);
  }

  return result;
}

uint64_t static NETSchemaNETEstablishmentResolution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v26 = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E540];
  v13 = *(v4 + 104);
  v30 = v3;
  v13(v7, v12, v3);
  v31 = v13;
  v32 = v4 + 104;
  v34[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v16(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E6F697461727564, 0xE800000000000000);
  v17(v34, 0);
  v29 = *MEMORY[0x277D3E538];
  v28 = v7;
  (v13)(v7);
  v34[0] = 1;
  sub_26738114C();
  v24 = v14;
  v16(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674601B0);
  v18(v34, 0);
  v25 = "resolutionSource";
  sub_266ECB294(0, &qword_2800F4D68, 0x277D58BC0);
  sub_266ECAF2C(&qword_2800F4D70, &qword_2800F4D68, 0x277D58BC0);
  sub_26738120C();
  v16(v11, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v25 | 0x8000000000000000);
  v19(v34, 0);
  sub_26738120C();
  v20 = v24;
  v16(v11, 0, 1, v24);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x80000002674601F0);
  v21(v34, 0);
  v31(v28, v29, v30);
  v34[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x746E696F70646E65, 0xED0000746E756F43);
  return v22(v34, 0);
}

uint64_t sub_2670FEA80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FEAE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETHandShakeProtocol.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for NETSchemaNETProtocol(0);
  sub_2670FF090(&qword_2800F4E40, type metadata accessor for NETSchemaNETProtocol);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C6F636F746F7270, 0xE800000000000000);
  v10(v19, 0);
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v0 + 104);
  v17 = v0 + 104;
  v13 = v18;
  v12(v3, v11, v18);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B616853646E6168, 0xEC00000054545265);
  v14(v19, 0);
  v12(v3, *MEMORY[0x277D3E540], v13);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267460240);
  return v15(v19, 0);
}

uint64_t sub_2670FEF84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FEFE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FF090(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670FF0D8()
{
  result = qword_2800F4DB0;
  if (!qword_2800F4DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4DB0);
  }

  return result;
}

uint64_t static NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x534E44736168, 0xE600000000000000);
  return v10(v12, 0);
}

uint64_t sub_2670FF36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FF3D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FF434()
{
  result = qword_2800F4CD0;
  if (!qword_2800F4CD0)
  {
    sub_2670FF48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4CD0);
  }

  return result;
}

unint64_t sub_2670FF48C()
{
  result = qword_2800F4CC8;
  if (!qword_2800F4CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4CC8);
  }

  return result;
}

uint64_t static NETSchemaNETNetworkConnectionStateReadySnapshotCaptured.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v26 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25 = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v23 = v11;
  v24 = v3 + 104;
  v27[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x697463656E6E6F63, 0xEE006F666E496E6FLL);
  v15(v27, 0);
  v22 = "eReadySnapshotCaptured";
  v16 = *MEMORY[0x277D3E538];
  v17 = v26;
  v11(v6, v16, v26);
  v27[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002BLL, v22 | 0x8000000000000000);
  v18(v27, 0);
  v23(v6, v16, v17);
  v27[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, 0x8000000267460330);
  return v19(v27, 0);
}

uint64_t sub_2670FF8E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FF948(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FF9AC()
{
  result = qword_2800F4CF0;
  if (!qword_2800F4CF0)
  {
    sub_2670FFA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4CF0);
  }

  return result;
}

unint64_t sub_2670FFA04()
{
  result = qword_2800F4CE8;
  if (!qword_2800F4CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4CE8);
  }

  return result;
}

uint64_t static NETSchemaNETNetworkInterface.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 1701667182, 0xE400000000000000);
  v11(v14, 0);
  type metadata accessor for NETSchemaNETConnectionType(0);
  sub_2670FFE80(&qword_2800F4D58, type metadata accessor for NETSchemaNETConnectionType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x697463656E6E6F63, 0xEE00657079546E6FLL);
  return v12(v14, 0);
}

uint64_t sub_2670FFD74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FFDD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FFE80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670FFEC8()
{
  result = qword_2800F4DC0;
  if (!qword_2800F4DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4DC0);
  }

  return result;
}

uint64_t static NETSchemaNETPathInterface.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v18 = v0;
  v19 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NETSchemaNETPathType(0);
  sub_2671003F4(&qword_2800F4E48, type metadata accessor for NETSchemaNETPathType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 1701869940, 0xE400000000000000);
  v11(v20, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = v18;
  v14 = *(v19 + 104);
  v19 += 104;
  v14(v4, v12, v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 1701667182, 0xE400000000000000);
  v15(v20, 0);
  v14(v4, *MEMORY[0x277D3E538], v13);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x7865646E69, 0xE500000000000000);
  return v16(v20, 0);
}

uint64_t sub_2671002E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710034C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671003F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26710043C()
{
  result = qword_2800F4D78;
  if (!qword_2800F4D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4D78);
  }

  return result;
}

uint64_t static NETSchemaNETPathStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674603F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267460410, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267460430, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267460450, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267460470, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267100780(uint64_t a1)
{
  v2 = sub_267100884(&qword_2800F4E50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671007E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267100884(&qword_2800F4E50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267100884(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETPathStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETPathType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674604C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x80000002674604E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267460500, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000011, 0x8000000267460520, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x8000000267460540, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267100BC0(uint64_t a1)
{
  v2 = sub_267100CC4(&qword_2800F4E58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267100C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_267100CC4(&qword_2800F4E58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267100CC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETPathType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETPeerConnectionFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v36 = sub_26738113C();
  v34 = *(v36 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4C60, 0x277D58B70);
  sub_266ECAF2C(&qword_2800F4C58, &qword_2800F4C60, 0x277D58B70);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v31 = *(v10 + 56);
  v32 = v10 + 56;
  v33 = v9;
  v31(v8, 0, 1, v9);
  v29 = a1;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267460590);
  v11(v37, 0);
  v12 = *MEMORY[0x277D3E4E8];
  v13 = v34 + 104;
  v35 = *(v34 + 104);
  v35(v4, v12, v36);
  v37[0] = 1;
  sub_26738114C();
  v14 = v9;
  v15 = v31;
  v31(v8, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674605B0);
  v16(v37, 0);
  v30 = v12;
  v17 = v35;
  v18 = v36;
  v35(v4, v12, v36);
  v37[0] = 1;
  sub_26738114C();
  v15(v8, 0, 1, v33);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x63656E6E6F437369, 0xEB00000000646574);
  v19(v37, 0);
  v17(v4, v12, v18);
  v34 = v13;
  v37[0] = 1;
  sub_26738114C();
  v20 = v31;
  v31(v8, 0, 1, v33);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6369766544736168, 0xE900000000000065);
  v21(v37, 0);
  v22 = v36;
  v35(v4, *MEMORY[0x277D3E518], v36);
  v37[0] = 1;
  sub_26738114C();
  v23 = v33;
  v20(v8, 0, 1, v33);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x80000002674605D0);
  v24(v37, 0);
  v25 = v30;
  v35(v4, v30, v22);
  v37[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x79627261654E7369, 0xE800000000000000);
  v26(v37, 0);
  v35(v4, v25, v36);
  v37[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267460600);
  return v27(v37, 0);
}

uint64_t sub_26710142C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267101490(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETPhyMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267460650, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267460670, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267460690, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x80000002674606B0, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x80000002674606D0, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x80000002674606F0, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x8000000267460710, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000014, 0x8000000267460730, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000014, 0x8000000267460750, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x8000000267460770, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_267101A74(uint64_t a1)
{
  v2 = sub_267101B78(&qword_2800F4E60);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267101ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267101B78(&qword_2800F4E60);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267101B78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETPhyMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETProtocol.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674607C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x4F544F525054454ELL, 0xEF5043545F4C4F43, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x4F544F525054454ELL, 0xEF534C545F4C4F43, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x80000002674607E0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267101E50(uint64_t a1)
{
  v2 = sub_267101F54(&qword_2800F4E68);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267101EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267101F54(&qword_2800F4E68);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267101F54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETProvider.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267460830, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x8000000267460850, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267460870, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267460890, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x80000002674608B0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674608E0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_267102304(uint64_t a1)
{
  v2 = sub_267102408(&qword_2800F4E70);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710236C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267102408(&qword_2800F4E70);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267102408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETProxyConfiguration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.net.NETProxyConfiguration";
  v11 = *MEMORY[0x277D3E4E8];
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
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267460950);
  return v16(v21, 0);
}

uint64_t sub_267102780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671027E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267102848()
{
  result = qword_2800F4DA8;
  if (!qword_2800F4DA8)
  {
    sub_2671028A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4DA8);
  }

  return result;
}

unint64_t sub_2671028A0()
{
  result = qword_2800F4DA0;
  if (!qword_2800F4DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4DA0);
  }

  return result;
}

uint64_t static NETSchemaNETQuality.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x80000002674609A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674609C0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x494C41555154454ELL, 0xEF444F4F475F5954, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x494C41555154454ELL, 0xEE004441425F5954, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267102B84(uint64_t a1)
{
  v2 = sub_267102C88(&qword_2800F4E78);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267102BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267102C88(&qword_2800F4E78);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267102C88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETQuality(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETSessionConnectionFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v35 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NETSchemaNETConnectionType(0);
  sub_2671036F4(&qword_2800F4D58, type metadata accessor for NETSchemaNETConnectionType);
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v16 = v12;
  v14(v11, 0, 1);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x697463656E6E6F63, 0xEE00657079546E6FLL);
  v17(v42, 0);
  type metadata accessor for NETSchemaNETConnectionMode(0);
  sub_2671036F4(&qword_2800F4D38, type metadata accessor for NETSchemaNETConnectionMode);
  sub_26738120C();
  (v14)(v11, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x697463656E6E6F63, 0xEE0065646F4D6E6FLL);
  v18(v42, 0);
  type metadata accessor for NETSchemaNETSessionType(0);
  sub_2671036F4(&qword_2800F4E80, type metadata accessor for NETSchemaNETSessionType);
  v39 = a1;
  sub_26738120C();
  (v14)(v11, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x546E6F6973736573, 0xEB00000000657079);
  v19(v42, 0);
  type metadata accessor for NETSchemaNETSessionState(0);
  sub_2671036F4(&qword_2800F4E88, type metadata accessor for NETSchemaNETSessionState);
  sub_26738120C();
  v20 = v16;
  v35[1] = v15;
  (v14)(v11, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x8000000267460A20);
  v21(v42, 0);
  v36 = *MEMORY[0x277D3E4E8];
  v22 = v40;
  v23 = *(v41 + 104);
  v41 += 104;
  v35[0] = v23;
  v24 = v38;
  v23(v38);
  v42[0] = 1;
  sub_26738114C();
  (v14)(v11, 0, 1, v20);
  v37 = a2;
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x72506E6177577369, 0xEF64657272656665);
  v25(v42, 0);
  v26 = v35[0];
  (v35[0])(v24, v36, v22);
  v42[0] = 1;
  sub_26738114C();
  (v14)(v11, 0, 1, v20);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E616D726F447369, 0xE900000000000074);
  v27(v42, 0);
  v26(v24, *MEMORY[0x277D3E540], v22);
  v28 = v26;
  v42[0] = 1;
  sub_26738114C();
  v29 = v20;
  (v14)(v11, 0, 1, v20);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0x66667542646E6573, 0xEE00657A69537265);
  v30(v42, 0);
  v28(v24, *MEMORY[0x277D3E530], v22);
  v42[0] = 1;
  sub_26738114C();
  (v14)(v11, 0, 1, v20);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0x64497963696C6F70, 0xE800000000000000);
  v31(v42, 0);
  sub_266ECB294(0, &qword_2800F4E38, 0x277D58BC8);
  sub_266ECAF2C(&qword_2800F4E30, &qword_2800F4E38, 0x277D58BC8);
  sub_26738120C();
  (v14)(v11, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0x726F727265, 0xE500000000000000);
  v32(v42, 0);
  sub_26738120C();
  (v14)(v11, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0x69796C7265646E75, 0xEF726F727245676ELL);
  return v33(v42, 0);
}

uint64_t sub_267103630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267103694(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671036F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static NETSchemaNETSessionConnectionHttpHeaderCreated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65674172657375, 0xE900000000000074);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x74736F48656361, 0xE700000000000000);
  return v16(v20, 0);
}

uint64_t sub_267103AA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267103B08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267103B6C()
{
  result = qword_2800F4C80;
  if (!qword_2800F4C80)
  {
    sub_267103BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4C80);
  }

  return result;
}

unint64_t sub_267103BC4()
{
  result = qword_2800F4C78;
  if (!qword_2800F4C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4C78);
  }

  return result;
}

uint64_t static NETSchemaNETSessionConnectionNetwork.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v70 = sub_26738113C();
  v3 = *(v70 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v70);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v57 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v64 = *MEMORY[0x277D3E530];
  v11 = *(v3 + 104);
  v68 = v3 + 104;
  v69 = v11;
  v11(v6);
  v71[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x4E72656972726163, 0xEB00000000656D61);
  v16(v71, 0);
  type metadata accessor for NETSchemaNETConnectionMethod(0);
  sub_267104B70(&qword_2800F4D28, type metadata accessor for NETSchemaNETConnectionMethod);
  sub_26738120C();
  v67 = v12;
  v14(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  v60 = 0xD000000000000010;
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267460AC0);
  v17(v71, 0);
  v61 = "connectionMethod";
  v18 = v69;
  v69(v6, v64, v70);
  v71[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v63 = v15;
  v66 = a2;
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v61 | 0x8000000000000000);
  v19(v71, 0);
  v20 = v70;
  v18(v6, *MEMORY[0x277D3E4E8], v70);
  v71[0] = 1;
  sub_26738114C();
  v21 = v67;
  v65 = v14;
  v14(v10, 0, 1, v67);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x7669747061437369, 0xE900000000000065);
  v22(v71, 0);
  LODWORD(v61) = *MEMORY[0x277D3E518];
  v23 = v61;
  v18(v6, v61, v20);
  v71[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 1769173874, 0xE400000000000000);
  v24(v71, 0);
  v62 = v6;
  v18(v6, v23, v20);
  v25 = v18;
  v71[0] = 1;
  sub_26738114C();
  v26 = v67;
  v27 = v65;
  v65(v10, 0, 1, v67);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 7499379, 0xE300000000000000);
  v28(v71, 0);
  v29 = v62;
  v25(v62, *MEMORY[0x277D3E538], v70);
  v71[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F43706D65747461, 0xEB00000000746E75);
  v30(v71, 0);
  v64 = *MEMORY[0x277D3E540];
  v31 = v69;
  (v69)(v29);
  v71[0] = 1;
  sub_26738114C();
  v32 = v26;
  v33 = v65;
  v65(v10, 0, 1, v26);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x7479427473726966, 0xED0000656D695465);
  v34(v71, 0);
  v58 = "primarySubflowInterfaceName";
  v35 = v64;
  v36 = v70;
  v31(v29, v64, v70);
  v71[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v32);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v58 | 0x8000000000000000);
  v37(v71, 0);
  v38 = v62;
  v69(v62, v35, v36);
  v71[0] = 1;
  sub_26738114C();
  v39 = v65;
  v65(v10, 0, 1, v32);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267460B20);
  v40(v71, 0);
  type metadata accessor for NETSchemaNETTLSVersion(0);
  sub_267104B70(&qword_2800F4E90, type metadata accessor for NETSchemaNETTLSVersion);
  sub_26738120C();
  v39(v10, 0, 1, v32);
  v41 = v39;
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0x6973726556736C74, 0xEA00000000006E6FLL);
  v42(v71, 0);
  v59 = "dnsResolutionTime";
  v43 = v64;
  v45 = v69;
  v44 = v70;
  v69(v38, v64, v70);
  v71[0] = 1;
  sub_26738114C();
  v41(v10, 0, 1, v67);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, v60, v59 | 0x8000000000000000);
  v46(v71, 0);
  v60 = "tlsHandshakeTime";
  v45(v38, v43, v44);
  v71[0] = 1;
  sub_26738114C();
  v47 = v67;
  v48 = v65;
  v65(v10, 0, 1, v67);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v60 | 0x8000000000000000);
  v49(v71, 0);
  v60 = "connectionEstablishmentTime";
  v50 = v70;
  v69(v38, v43, v70);
  v71[0] = 1;
  sub_26738114C();
  v48(v10, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, v60 | 0x8000000000000000);
  v51(v71, 0);
  v60 = "oEstablishmentTime";
  v52 = v69;
  v69(v38, v64, v50);
  v71[0] = 1;
  sub_26738114C();
  v53 = v67;
  v48(v10, 0, 1, v67);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v60 | 0x8000000000000000);
  v54(v71, 0);
  v52(v38, v61, v70);
  v71[0] = 1;
  sub_26738114C();
  v48(v10, 0, 1, v53);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267460BD0);
  return v55(v71, 0);
}

uint64_t sub_267104A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267104AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267104B70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267104BB8()
{
  result = qword_2800F4EA0;
  if (!qword_2800F4EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4EA0);
  }

  return result;
}

uint64_t static NETSchemaNETSessionConnectionSnapshotCaptured.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v17[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x65636E6575716573, 0xEE007265626D754ELL);
  v11(v17, 0);
  type metadata accessor for NETSchemaNETSnapshotState(0);
  sub_267105250(&qword_2800F4EA8, type metadata accessor for NETSchemaNETSnapshotState);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267460C30);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F4EA0, 0x277D58C20);
  sub_266ECAF2C(&qword_2800F4E98, &qword_2800F4EA0, 0x277D58C20);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6B726F7774656ELL, 0xE700000000000000);
  v13(v17, 0);
  sub_266ECB294(0, &qword_2800F4DC0, 0x277D58BF0);
  sub_266ECAF2C(&qword_2800F4DC8, &qword_2800F4DC0, 0x277D58BF0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267460000);
  v14(v17, 0);
  type metadata accessor for NETSchemaNETProvider(0);
  sub_267105250(&qword_2800F4D20, type metadata accessor for NETSchemaNETProvider);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x72656469766F7270, 0xE800000000000000);
  return v15(v17, 0);
}

uint64_t sub_26710518C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671051F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267105250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static NETSchemaNETSessionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267460C80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267460CA0, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267460CC0, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267460CE0, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267460D00, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267460D30, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x8000000267460D60, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267460D80, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267460DA0, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x8000000267460DC0, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ELL, 0x8000000267460DF0, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x8000000267460E10, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000016, 0x8000000267460E40, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_26710595C(uint64_t a1)
{
  v2 = sub_267105A60(&qword_2800F4EB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671059C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267105A60(&qword_2800F4EB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267105A60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETSessionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267460E90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267460EB0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267460ED0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267460EF0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267460F10, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267105D9C(uint64_t a1)
{
  v2 = sub_267105EA0(&qword_2800F4EB8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267105E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_267105EA0(&qword_2800F4EB8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267105EA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETSessionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETSnapshotState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267460F60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267460F80, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267460FB0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2671060F8(uint64_t a1)
{
  v2 = sub_2671061FC(&qword_2800F4EC0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267106160(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671061FC(&qword_2800F4EC0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671061FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETSnapshotState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETTLSVersion.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267461000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267461020, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267461040, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x8000000267461060, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x8000000267461080, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x80000002674610A0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000013, 0x80000002674610C0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_267106628(uint64_t a1)
{
  v2 = sub_26710672C(&qword_2800F4EC8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267106690(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710672C(&qword_2800F4EC8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710672C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETTLSVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETWiFiFrequency.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267461110, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267461130, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x8000000267461150, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267461170, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2671069F8(uint64_t a1)
{
  v2 = sub_267106AFC(&qword_2800F4ED8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267106A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267106AFC(&qword_2800F4ED8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267106AFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETWiFiFrequency(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLGSchemaNLGClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4EE0, 0x277D58C38);
  sub_266ECAF2C(&qword_2800F4EE8, &qword_2800F4EE0, 0x277D58C38);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F4EF0, 0x277D58C58);
  sub_266ECAF2C(&qword_2800F4EF8, &qword_2800F4EF0, 0x277D58C58);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD000000000000014, 0x80000002674611C0);
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
  sub_266ECB128(&unk_287888E98);
  return sub_2673811CC();
}