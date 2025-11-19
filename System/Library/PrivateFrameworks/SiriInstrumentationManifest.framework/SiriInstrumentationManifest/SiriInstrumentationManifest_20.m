uint64_t sub_2672012E4(uint64_t a1)
{
  v2 = sub_2672013E8(&qword_2800F7D68);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720134C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672013E8(&qword_2800F7D68);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672013E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSMediaSuggestionSourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSPhoneCallDurationBucket.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026747B3A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026747B3D0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026747B400, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000036, 0x800000026747B430, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000037, 0x800000026747B470, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000036, 0x800000026747B4B0, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_267201794(uint64_t a1)
{
  v2 = sub_267201898(&qword_2800F7D78);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672017FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267201898(&qword_2800F7D78);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267201898(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSPhoneCallDurationBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSPhoneCallMetadataExtracted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v53 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v47 = v13 + 56;
  v14(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C616E696769726FLL, 0xEE00644973756C50);
  v15(v55, 0);
  v44 = "neCallMetadataExtracted";
  v16 = *MEMORY[0x277D3E4E8];
  v51 = *(v4 + 104);
  v52 = v4 + 104;
  v49 = v16;
  v17 = v3;
  v50 = v3;
  v51(v7, v16, v3);
  v55[0] = 1;
  sub_26738114C();
  v46 = v12;
  v54 = v14;
  v14(v11, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v44 | 0x8000000000000000);
  v18(v55, 0);
  v44 = "hasSiriResolvedContact";
  v19 = v51;
  v51(v7, v16, v17);
  v55[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v44 | 0x8000000000000000);
  v20(v55, 0);
  v44 = "hasSiriInitiatedCall";
  v21 = v49;
  v22 = v50;
  v19(v7, v49, v50);
  v55[0] = 1;
  sub_26738114C();
  v23 = v46;
  v54(v11, 0, 1, v46);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002CLL, v44 | 0x8000000000000000);
  v24(v55, 0);
  v44 = "wupCallWithinDetectionWindow";
  v45 = v7;
  v19(v7, v21, v22);
  v55[0] = 1;
  sub_26738114C();
  v25 = v54;
  v54(v11, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002DLL, v44 | 0x8000000000000000);
  v26(v55, 0);
  type metadata accessor for PLUSSchemaPLUSContactReferenceComparison(0);
  sub_267202524(&qword_2800F7B00, type metadata accessor for PLUSSchemaPLUSContactReferenceComparison);
  sub_26738120C();
  v25(v11, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000020, 0x800000026747B5D0);
  v27(v55, 0);
  type metadata accessor for PLUSSchemaPLUSPhoneCallDurationBucket(0);
  sub_267202524(&qword_2800F7D70, type metadata accessor for PLUSSchemaPLUSPhoneCallDurationBucket);
  sub_26738120C();
  v28 = v54;
  v54(v11, 0, 1, v23);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026747B600);
  v29(v55, 0);
  type metadata accessor for PLUSSchemaPLUSPhoneCallTimeToHangupBucket(0);
  sub_267202524(&qword_2800F7D80, type metadata accessor for PLUSSchemaPLUSPhoneCallTimeToHangupBucket);
  sub_26738120C();
  v28(v11, 0, 1, v23);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x800000026747B620);
  v30(v55, 0);
  type metadata accessor for PLUSSchemaPLUSTimeToFollowupBucket(0);
  sub_267202524(&qword_2800F7D88, type metadata accessor for PLUSSchemaPLUSTimeToFollowupBucket);
  sub_26738120C();
  v31 = v23;
  v28(v11, 0, 1, v23);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026747B640);
  v32(v55, 0);
  v44 = "userTimeToFollowup";
  v33 = v45;
  v34 = v49;
  v35 = v50;
  v36 = v51;
  v51(v45, v49, v50);
  v55[0] = 1;
  sub_26738114C();
  v54(v11, 0, 1, v31);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, v44 | 0x8000000000000000);
  v37(v55, 0);
  v36(v33, v34, v35);
  v55[0] = 1;
  sub_26738114C();
  v38 = v46;
  v39 = v54;
  v54(v11, 0, 1, v46);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, 0x800000026747B690);
  v40(v55, 0);
  type metadata accessor for PLUSSchemaPLUSContactNameStringSimilarity(0);
  sub_267202524(&qword_2800F7B38, type metadata accessor for PLUSSchemaPLUSContactNameStringSimilarity);
  sub_26738120C();
  v39(v11, 0, 1, v38);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, 0x800000026747B6B0);
  return v41(v55, 0);
}

uint64_t sub_267202460(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672024C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267202524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PLUSSchemaPLUSPhoneCallTimeToHangupBucket.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x800000026747B710, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026747B740, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000034, 0x800000026747B770, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000035, 0x800000026747B7B0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000034, 0x800000026747B7F0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672028A8(uint64_t a1)
{
  v2 = sub_2672029AC(&qword_2800F7D90);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267202910(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672029AC(&qword_2800F7D90);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672029AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSPhoneCallTimeToHangupBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternConstraint.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for PLUSSchemaPLUSRECTIFIPatternConstraintType(0);
  sub_267202E3C(&qword_2800F7D98, type metadata accessor for PLUSSchemaPLUSRECTIFIPatternConstraintType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x69617274736E6F63, 0xEE0065707954746ELL);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E500], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x69617274736E6F63, 0xEF65756C6156746ELL);
  return v11(v15, 0);
}

uint64_t sub_267202D30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267202D94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267202E3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267202E84()
{
  result = qword_2800F7DA8;
  if (!qword_2800F7DA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7DA8);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternConstraintType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x800000026747B8B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x800000026747B8E0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x800000026747B920, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672030E8(uint64_t a1)
{
  v2 = sub_2672031EC(&qword_2800F7DB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267203150(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672031EC(&qword_2800F7DB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672031EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSRECTIFIPatternConstraintType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternItem.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v2);
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_26738113C();
  v70 = *(v68 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v56 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemSource(0);
  sub_267203DCC(&qword_2800F7DB8, type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemSource);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x72756F536D657469, 0xEA00000000006563);
  v14(v72, 0);
  type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemType(0);
  sub_267203DCC(&qword_2800F7DC0, type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemType);
  sub_26738120C();
  v66 = v12 + 56;
  v67 = v13;
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x657079546D657469, 0xE800000000000000);
  v15(v72, 0);
  v69 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v71, 0x657079546D657469, 0xE800000000000000);
  v57 = *(v12 + 48);
  v19 = v57(v18, 1, v11);
  v58 = v12 + 48;
  if (!v19)
  {
    sub_266ECB128(&unk_28788C9F8);
    sub_26738115C();
  }

  (v17)(v71, 0);
  v16(v72, 0);
  v63 = "iri.plus.PLUSRECTIFIPatternItem";
  v20 = v70 + 104;
  v21 = *(v70 + 104);
  v22 = v65;
  (v21)(v65, *MEMORY[0x277D3E540], v68);
  v72[0] = 1;
  sub_26738114C();
  v23 = v67;
  v67(v10, 0, 1, v11);
  v64 = v11;
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v63 | 0x8000000000000000);
  v24(v72, 0);
  v56 = "relativeTimestampInMs";
  v62 = *MEMORY[0x277D3E530];
  v70 = v20;
  v63 = v21;
  (v21)(v22);
  v72[0] = 0;
  sub_26738114C();
  v23(v10, 0, 1, v64);
  v25 = sub_2673811AC();
  v26 = v56;
  sub_266EC637C(v10, 0xD000000000000014, v56 | 0x8000000000000000);
  v25(v72, 0);
  v27 = v64;
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v71, 0xD000000000000014, v26 | 0x8000000000000000);
  v30 = v57;
  if (!v57(v31, 1, v27))
  {
    sub_266ECB128(&unk_28788CA20);
    sub_26738115C();
  }

  (v29)(v71, 0);
  v28(v72, 0);
  (v63)(v65, v62, v68);
  v72[0] = 0;
  sub_26738114C();
  v67(v10, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026747B9D0);
  v32(v72, 0);
  v33 = sub_2673811AC();
  v34 = sub_266ECB6CC(v71, 0xD000000000000018, 0x800000026747B9D0);
  v35 = v27;
  v37 = v30(v36, 1, v27);
  v38 = v10;
  if (!v37)
  {
    sub_266ECB128(&unk_28788CA48);
    sub_26738115C();
  }

  (v34)(v71, 0);
  v33(v72, 0);
  v39 = v65;
  v40 = v62;
  v41 = v68;
  v42 = v63;
  (v63)(v65, v62, v68);
  v72[0] = 1;
  sub_26738114C();
  v43 = v35;
  v44 = v67;
  v67(v38, 0, 1, v43);
  v45 = sub_2673811AC();
  sub_266EC637C(v38, 0x616D6F446D657469, 0xEE00656D614E6E69);
  v45(v72, 0);
  v42(v39, v40, v41);
  v72[0] = 1;
  sub_26738114C();
  v44(v38, 0, 1, v64);
  v46 = sub_2673811AC();
  sub_266EC637C(v38, 0x6C7961506D657469, 0xEB0000000064616FLL);
  v46(v72, 0);
  v47 = v59;
  sub_26738117C();
  v48 = sub_2673811BC();
  v50 = v49;
  v51 = *v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v50 = v51;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v51 = sub_266ECAD54(0, v51[2] + 1, 1, v51);
    *v50 = v51;
  }

  v54 = v51[2];
  v53 = v51[3];
  if (v54 >= v53 >> 1)
  {
    v51 = sub_266ECAD54(v53 > 1, v54 + 1, 1, v51);
    *v50 = v51;
  }

  v51[2] = v54 + 1;
  (*(v60 + 32))(v51 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v54, v47, v61);
  return v48(v72, 0);
}

uint64_t sub_267203CC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267203D24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267203DCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267203E14()
{
  result = qword_2800F7DD0;
  if (!qword_2800F7DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7DD0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternItemSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026747BA50, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026747BA80, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026747BAB0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267204074(uint64_t a1)
{
  v2 = sub_267204178(&qword_2800F7DD8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672040DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267204178(&qword_2800F7DD8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267204178(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternItemType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026747BB20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026747BB50, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000031, 0x800000026747BB80, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026747BBC0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x800000026747BBF0, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x800000026747BC20, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x800000026747BC50, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002BLL, 0x800000026747BC80, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_267204608(uint64_t a1)
{
  v2 = sub_26720470C(&qword_2800F7DE0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267204670(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720470C(&qword_2800F7DE0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720470C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSRECTIFIPatternItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSRECTIFIPatternSequenceGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v26 = sub_26738113C();
  v28 = *(v26 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v24 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x496E726574746170, 0xE900000000000064);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800F7DD0, 0x277D59D70);
  sub_266ECAF2C(&qword_2800F7DC8, &qword_2800F7DD0, 0x277D59D70);
  sub_26738122C();
  v10(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x65636E6575716573, 0xE800000000000000);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800F7DA8, 0x277D59D68);
  sub_266ECAF2C(&qword_2800F7DA0, &qword_2800F7DA8, 0x277D59D68);
  sub_26738122C();
  v10(v7, 0, 1, v8);
  v23 = v11;
  v27 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x69617274736E6F63, 0xEB0000000073746ELL);
  v14(v29, 0);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674263B0);
  v15(v29, 0);
  v24 = "TIFIPatternSequenceGenerated";
  v16 = *MEMORY[0x277D3E538];
  v17 = *(v28 + 104);
  v28 += 104;
  v19 = v25;
  v18 = v26;
  v17(v25, v16, v26);
  v29[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v24 | 0x8000000000000000);
  v20(v29, 0);
  v17(v19, v16, v18);
  v29[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x800000026747BD10);
  return v21(v29, 0);
}

uint64_t sub_267204D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267204E00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSendMessageMetadataExtracted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v33 = v0;
  v34 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v32 = v10 + 56;
  v11(v8, 0, 1, v9);
  v30 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E696769726FLL, 0xEE00644973756C50);
  v12(v35, 0);
  v31 = *MEMORY[0x277D3E538];
  v13 = v33;
  v14 = *(v34 + 104);
  v34 += 104;
  v14(v4);
  v29 = v14;
  v35[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x800000026747BD70);
  v15(v35, 0);
  v28 = "geRequestNumberOfContacts";
  (v14)(v4, *MEMORY[0x277D3E4E8], v13);
  v35[0] = 1;
  sub_26738114C();
  v16 = v9;
  v17 = v9;
  v18 = v30;
  v30(v8, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, v28 | 0x8000000000000000);
  v19(v35, 0);
  v28 = "geRequestHasPayload";
  v20 = v4;
  v21 = v4;
  v22 = v31;
  v23 = v29;
  (v29)(v21, v31, v13);
  v35[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v28 | 0x8000000000000000);
  v24(v35, 0);
  v23(v20, v22, v33);
  v35[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026747BE00);
  return v25(v35, 0);
}

uint64_t sub_267205468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672054CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggesterDomainSuggestionMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7DE8, 0x277D59D90);
  sub_266ECAF2C(&qword_2800F7DF0, &qword_2800F7DE8, 0x277D59D90);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D616964656DLL, 0xED00006174616461);
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

uint64_t sub_2672058E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720594C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggesterMediaSuggestionMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality(0);
  sub_267205E6C(&qword_2800F7CE0, type metadata accessor for PLUSSchemaPLUSMediaSuggestionLocality);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7974696C61636F6CLL, 0xE800000000000000);
  v6(v10, 0);
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionServerTreatment(0);
  sub_267205E6C(&qword_2800F7D50, type metadata accessor for PLUSSchemaPLUSMediaSuggestionServerTreatment);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254726576726573, 0xEF746E656D746165);
  v7(v10, 0);
  type metadata accessor for PLUSSchemaPLUSMediaSuggestionClientTreatment(0);
  sub_267205E6C(&qword_2800F7D28, type metadata accessor for PLUSSchemaPLUSMediaSuggestionClientTreatment);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254746E65696C63, 0xEF746E656D746165);
  return v8(v10, 0);
}

uint64_t sub_267205D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267205DC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267205E6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267205EB4()
{
  result = qword_2800F7DE8;
  if (!qword_2800F7DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7DE8);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggesterMetadataReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8);
  v16 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026747BF10);
  v11(v20, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674263B0);
  v12(v20, 0);
  (*(v18 + 104))(v17, *MEMORY[0x277D3E4E8], v19);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026747BF30);
  v13(v20, 0);
  sub_266ECB294(0, &qword_2800F7C20, 0x277D59CE0);
  sub_266ECAF2C(&qword_2800F7C18, &qword_2800F7C20, 0x277D59CE0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026747BF50);
  return v14(v20, 0);
}

uint64_t sub_2672063EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267206450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggesterQueried.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026747BF10);
  v9(v18, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674263B0);
  v10(v18, 0);
  sub_266ECB294(0, &qword_2800F7E18, 0x277D59DE0);
  sub_266ECAF2C(&qword_2800F7E20, &qword_2800F7E18, 0x277D59DE0);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x526465686374616DLL, 0xEE0073746C757365);
  v11(v18, 0);
  (*(v16 + 104))(v15, *MEMORY[0x277D3E4E8], v17);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026747BFA0);
  return v12(v18, 0);
}

uint64_t sub_2672069E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267206A44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggesterSuggestionMetadataReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v7 = v5 + 56;
  v6(v3, 0, 1, v4);
  v19 = v6;
  v20 = v7;
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026747BF10);
  v8(v22, 0);
  v21 = "MetadataReported";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, v21 | 0x8000000000000000);
  v9(v22, 0);
  sub_26738120C();
  v10 = v4;
  v11 = v4;
  v12 = v19;
  v19(v3, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  v13(v22, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedState(0);
  sub_267207180(&qword_2800F7E28, type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedState);
  sub_26738120C();
  v12(v3, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026747C030);
  v14(v22, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionNoveltyState(0);
  sub_267207180(&qword_2800F7E30, type metadata accessor for PLUSSchemaPLUSSuggestionNoveltyState);
  sub_26738120C();
  v12(v3, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026747C050);
  v15(v22, 0);
  sub_266ECB294(0, &qword_2800F7E00, 0x277D59D88);
  sub_266ECAF2C(&qword_2800F7DF8, &qword_2800F7E00, 0x277D59D88);
  sub_26738120C();
  v12(v3, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026747BE70);
  return v16(v22, 0);
}

uint64_t sub_2672070BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267207120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267207180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PLUSSchemaPLUSSuggesterSuggestionRedundancyReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8);
  v15[0] = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026747BF10);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026747C010);
  v11(v16, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674263B0);
  v12(v16, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionRedundancyState(0);
  sub_2672076E8();
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026747C0C0);
  return v13(v16, 0);
}

uint64_t sub_267207624(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267207688(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672076E8()
{
  result = qword_2800F7E38;
  if (!qword_2800F7E38)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionRedundancyState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7E38);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestion.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E40, 0x277D59DE8);
  sub_266ECAF2C(&qword_2800F7E48, &qword_2800F7E40, 0x277D59DE8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026747C110);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F7E50, 0x277D59DF8);
  sub_266ECAF2C(&qword_2800F7E58, &qword_2800F7E50, 0x277D59DF8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974736567677573, 0xEF65756C61566E6FLL);
  return v7(v9, 0);
}

uint64_t sub_267207A5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267207AC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggestionAccuracySignal.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalType(0);
  sub_267207F24(&qword_2800F7CB0, type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x79546C616E676973, 0xEA00000000006570);
  v6(v9, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalSource(0);
  sub_267207F24(&qword_2800F7E70, type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalSource);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F536C616E676973, 0xEC00000065637275);
  return v7(v9, 0);
}

uint64_t sub_267207E18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267207E7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267207F24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267207F6C()
{
  result = qword_2800F7BB0;
  if (!qword_2800F7BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7BB0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionAccuracySignalSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026747C1B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000042, 0x800000026747C1E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000044, 0x800000026747C230, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004ELL, 0x800000026747C280, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000039, 0x800000026747C2D0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672082AC(uint64_t a1)
{
  v2 = sub_2672083B0(&qword_2800F7E78);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267208314(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672083B0(&qword_2800F7E78);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672083B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionAccuracySignalType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x800000026747C350, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x800000026747C380, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026747C3C0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x800000026747C3F0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x800000026747C420, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x800000026747C450, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000029, 0x800000026747C480, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000030, 0x800000026747C4B0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x800000026747C4F0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_2672088AC(uint64_t a1)
{
  v2 = sub_2672089B0(&qword_2800F7E80);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267208914(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672089B0(&qword_2800F7E80);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672089B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionAccuracySignalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionDomainMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSSuggestionGenerationDomain(0);
  sub_267208CE4(&qword_2800F7E88, type metadata accessor for PLUSSchemaPLUSSuggestionGenerationDomain);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x800000026747C560);
  return v5(v7, 0);
}

uint64_t sub_267208BD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267208C3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267208CE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267208D2C()
{
  result = qword_2800F7E08;
  if (!qword_2800F7E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7E08);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionDomainOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7D48, 0x277D59D50);
  sub_266ECAF2C(&qword_2800F7D40, &qword_2800F7D48, 0x277D59D50);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x74754F616964656DLL, 0xEC000000656D6F63);
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

uint64_t sub_2672090EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267209150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggestionGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026747BF10);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F7E68, 0x277D59DB8);
  sub_266ECAF2C(&qword_2800F7E60, &qword_2800F7E68, 0x277D59DB8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267479010);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F7950, 0x277D59C48);
  sub_266ECAF2C(&qword_2800F7948, &qword_2800F7950, 0x277D59C48);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000023, 0x800000026747C620);
  return v8(v10, 0);
}

uint64_t sub_2672095A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267209604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggestionGenerationDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026747C690, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026747C6C0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x800000026747C6F0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x800000026747C730, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267209930(uint64_t a1)
{
  v2 = sub_267209A34(&qword_2800F7EA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267209998(uint64_t a1, uint64_t a2)
{
  v4 = sub_267209A34(&qword_2800F7EA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267209A34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionGenerationDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionMatchResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6974736567677573, 0xEC00000064496E6FLL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F7E68, 0x277D59DB8);
  sub_266ECAF2C(&qword_2800F7E60, &qword_2800F7E68, 0x277D59DB8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267479010);
  return v7(v9, 0);
}

uint64_t sub_267209D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267209DB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSSuggestionMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus(0);
  sub_26720A148(&qword_2800F7EA8, type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026747C7D0);
  return v5(v7, 0);
}

uint64_t sub_26720A03C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720A0A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26720A148(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26720A190()
{
  result = qword_2800F7E40;
  if (!qword_2800F7E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7E40);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionNoveltyState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026747C830, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026747C860, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x800000026747C890, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x800000026747C8C0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26720A460(uint64_t a1)
{
  v2 = sub_26720A564(&qword_2800F7EB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720A4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720A564(&qword_2800F7EB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720A564(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionNoveltyState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026747C920, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v98;

  v1(v114, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026747C940, v11);
  v12 = *v9;
  *v9 = v99;

  v7(v114, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x800000026747C970, v17);
  v18 = *v15;
  *v15 = v100;

  v13(v114, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000030, 0x800000026747C9B0, v23);
  v24 = *v21;
  *v21 = v101;

  v19(v114, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000034, 0x800000026747C9F0, v29);
  v30 = *v27;
  *v27 = v102;

  v25(v114, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x800000026747CA30, v35);
  v36 = *v33;
  *v33 = v103;

  v31(v114, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x800000026747CA60, v41);
  v42 = *v39;
  *v39 = v104;

  v37(v114, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000033, 0x800000026747CA90, v47);
  v48 = *v45;
  *v45 = v105;

  v43(v114, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000035, 0x800000026747CAD0, v53);
  v54 = *v51;
  *v51 = v106;

  v49(v114, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002DLL, 0x800000026747CB10, v59);
  v60 = *v57;
  *v57 = v107;

  v55(v114, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002ELL, 0x800000026747CB40, v65);
  v66 = *v63;
  *v63 = v108;

  v61(v114, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002DLL, 0x800000026747CB70, v71);
  v72 = *v69;
  *v69 = v109;

  v67(v114, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000034, 0x800000026747CBA0, v77);
  v78 = *v75;
  *v75 = v110;

  v73(v114, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000041, 0x800000026747CBE0, v83);
  v84 = *v81;
  *v81 = v111;

  v79(v114, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000041, 0x800000026747CC30, v89);
  v90 = *v87;
  *v87 = v112;

  v85(v114, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000045, 0x800000026747CC80, v95);
  v96 = *v93;
  *v93 = v113;

  return v91(v114, 0);
}

uint64_t sub_26720AD70(uint64_t a1)
{
  v2 = sub_26720AE74(&qword_2800F7EC0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720ADD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720AE74(&qword_2800F7EC0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720AE74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionOutcomeReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7E08, 0x277D59DC8);
  sub_266ECAF2C(&qword_2800F7E10, &qword_2800F7E08, 0x277D59DC8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v7 = v5 + 56;
  v6(v3, 0, 1, v4);
  v15 = v7;
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026747BF10);
  v8(v17, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v16 = v4;
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026747C010);
  v9(v17, 0);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  v10(v17, 0);
  type metadata accessor for PLUSSchemaPLUSSuggestionOutcome(0);
  sub_26720B474();
  sub_26738120C();
  v11 = v16;
  v6(v3, 0, 1, v16);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026747CD10);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F7E98, 0x277D59DD0);
  sub_266ECAF2C(&qword_2800F7E90, &qword_2800F7E98, 0x277D59DD0);
  sub_26738120C();
  v6(v3, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v3, 0x754F6E69616D6F64, 0xED0000656D6F6374);
  return v13(v17, 0);
}

uint64_t sub_26720B3B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720B414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720B474()
{
  result = qword_2800F7EB8;
  if (!qword_2800F7EB8)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7EB8);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionRedundancyState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026747CD70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x800000026747CDA0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026747CDD0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26720B724(uint64_t a1)
{
  v2 = sub_26720B828(&qword_2800F7EC8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720B78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720B828(&qword_2800F7EC8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720B828(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionRedundancyState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionSurfacedBeforeStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026747CE40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x800000026747CE70, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x800000026747CEB0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000043, 0x800000026747CEF0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26720BAF0(uint64_t a1)
{
  v2 = sub_26720BBF4(&qword_2800F7ED0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720BB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720BBF4(&qword_2800F7ED0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720BBF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedBeforeStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionSurfacedState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026747CF80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026747CFB0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x800000026747CFE0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000038, 0x800000026747D020, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26720BEBC(uint64_t a1)
{
  v2 = sub_26720BFC0(&qword_2800F7ED8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720BF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720BFC0(&qword_2800F7ED8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720BFC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSSuggestionSurfacedState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSSuggestionValue.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F7EE0, 0x277D59E28);
  sub_266ECAF2C(&qword_2800F7EE8, &qword_2800F7EE0, 0x277D59E28);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026747D090);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F7D20, 0x277D59D40);
  sub_266ECAF2C(&qword_2800F7D18, &qword_2800F7D20, 0x277D59D40);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x677553616964656DLL, 0xEF6E6F6974736567);
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

uint64_t sub_26720C45C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720C4C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSTimeToFollowupBucket.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026747D0F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026747D120, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x800000026747D150, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000030, 0x800000026747D190, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x800000026747D1D0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26720C860(uint64_t a1)
{
  v2 = sub_26720C964(&qword_2800F7EF0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720C8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720C964(&qword_2800F7EF0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720C964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSTimeToFollowupBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCCorrectedPronunciationTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v31 = *MEMORY[0x277D3E530];
  v32 = v3 + 104;
  v33 = v2;
  v30 = v11;
  v11(v6);
  v35[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v29 = *(v13 + 56);
  v27[0] = v13 + 56;
  v29(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026747D250);
  v14(v35, 0);
  v27[1] = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v34, 0xD000000000000011, 0x800000026747D250);
  v28 = *(v13 + 48);
  if (!v28(v17, 1, v12))
  {
    sub_266ECB128(&unk_28788CA70);
    sub_26738115C();
  }

  (v16)(v34, 0);
  v15(v35, 0);
  v30(v6, v31, v33);
  v35[0] = 1;
  sub_26738114C();
  v29(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026747D270);
  v18(v35, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v34, 0xD000000000000010, 0x800000026747D270);
  if (!v28(v21, 1, v12))
  {
    sub_266ECB128(&unk_28788CA98);
    sub_26738115C();
  }

  (v20)(v34, 0);
  v19(v35, 0);
  v30(v6, v31, v33);
  v35[0] = 1;
  sub_26738114C();
  v29(v10, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026747D290);
  v22(v35, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v34, 0xD000000000000010, 0x800000026747D290);
  if (!v28(v25, 1, v12))
  {
    sub_266ECB128(&unk_28788CAC0);
    sub_26738115C();
  }

  (v24)(v34, 0);
  return v23(v35, 0);
}

uint64_t sub_26720CF64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720CFC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720D02C()
{
  result = qword_2800F7EF8;
  if (!qword_2800F7EF8)
  {
    sub_26720D084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7EF8);
  }

  return result;
}

unint64_t sub_26720D084()
{
  result = qword_2800F7F00;
  if (!qword_2800F7F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7F00);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCGroundTruth.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = sub_26738113C();
  v59 = *(v57 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v47 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v52 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v51 = *(v10 - 8);
  v11 = (v51 + 56);
  v58 = *(v51 + 56);
  v56 = v10;
  v58(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x7254646E756F7267, 0xED00006449687475);
  v12(v61, 0);
  sub_26738120C();
  v13 = v10;
  v14 = v58;
  v58(v9, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x800000026747D2E0);
  v15(v61, 0);
  v50 = a1;
  sub_26738120C();
  v16 = v56;
  v14(v9, 0, 1, v56);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026747D300);
  v17(v61, 0);
  v18 = *(v59 + 104);
  v48 = *MEMORY[0x277D3E530];
  v59 += 104;
  v52 = v18;
  v18(v55);
  v61[0] = 1;
  sub_26738114C();
  v53 = v11;
  v14(v9, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026747D320);
  v19(v61, 0);
  v54 = a2;
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v60, 0xD000000000000012, 0x800000026747D320);
  v22 = *(v51 + 48);
  v51 += 48;
  v47 = v22;
  if (!v22(v23, 1, v16))
  {
    sub_266ECB128(&unk_28788CAE8);
    sub_26738115C();
  }

  (v21)(v60, 0);
  v20(v61, 0);
  v49 = "ttsCurrentPhonemes";
  v24 = v55;
  v52(v55, *MEMORY[0x277D3E518], v57);
  v61[0] = 1;
  sub_26738114C();
  v25 = v56;
  v26 = v58;
  v58(v9, 0, 1, v56);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v49 | 0x8000000000000000);
  v27(v61, 0);
  LODWORD(v49) = *MEMORY[0x277D3E4E8];
  v28 = v52;
  (v52)(v24);
  v61[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026747D360);
  v29(v61, 0);
  v28(v24, v48, v57);
  v61[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026747D380);
  v30(v61, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v60, 0xD000000000000014, 0x800000026747D380);
  if (!v47(v33, 1, v25))
  {
    sub_266ECB128(&unk_28788CB18);
    sub_26738115C();
  }

  (v32)(v60, 0);
  v31(v61, 0);
  sub_266ECB294(0, &qword_2800F7F08, 0x277D59E18);
  sub_266ECAF2C(&qword_2800F7F10, &qword_2800F7F08, 0x277D59E18);
  sub_26738120C();
  v34 = v56;
  v35 = v58;
  (v58)(v9, 0, 1);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x800000026747D3A0);
  v36(v61, 0);
  sub_266ECB294(0, &qword_2800F7F00, 0x277D59E00);
  sub_266ECAF2C(&qword_2800F7EF8, &qword_2800F7F00, 0x277D59E00);
  sub_26738120C();
  v35(v9, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026747D3C0);
  v37(v61, 0);
  type metadata accessor for PLUSSchemaPLUSTMDCSELFLogSource(0);
  sub_26720DDC8();
  sub_26738120C();
  v35(v9, 0, 1, v34);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x53676F4C666C6573, 0xED0000656372756FLL);
  v38(v61, 0);
  v51 = "correctedPronunciation";
  v39 = v55;
  v40 = v49;
  v41 = v57;
  v42 = v52;
  v52(v55, v49, v57);
  v61[0] = 1;
  sub_26738114C();
  v43 = v56;
  v58(v9, 0, 1, v56);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v51 | 0x8000000000000000);
  v44(v61, 0);
  v42(v39, v40, v41);
  v61[0] = 1;
  sub_26738114C();
  v58(v9, 0, 1, v43);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026747D400);
  return v45(v61, 0);
}

uint64_t sub_26720DD04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720DD68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720DDC8()
{
  result = qword_2800F7F18;
  if (!qword_2800F7F18)
  {
    type metadata accessor for PLUSSchemaPLUSTMDCSELFLogSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7F18);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xEE00644973756C50);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F7F28, 0x277D59E08);
  sub_266ECAF2C(&qword_2800F7F20, &qword_2800F7F28, 0x277D59E08);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254646E756F7267, 0xEB00000000687475);
  v7(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  return v8(v11, 0);
}

uint64_t sub_26720E1CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720E230(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PLUSSchemaPLUSTMDCSELFLogSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026747D490, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026747D4B0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x800000026747D4D0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26720E4E8(uint64_t a1)
{
  v2 = sub_26720E5EC(&qword_2800F7F30);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720E550(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720E5EC(&qword_2800F7F30);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720E5EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSTMDCSELFLogSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ELL, 0x800000026747D530, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026747D560, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026747D590, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26720E844(uint64_t a1)
{
  v2 = sub_26720E948(&qword_2800F7F40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26720E8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26720E948(&qword_2800F7F40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26720E948(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0x73656D656E6F6870, 0xE800000000000000);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0x73656D656E6F6870, 0xE800000000000000);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_28788CB48);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  type metadata accessor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource(0);
  sub_26720EE5C(&qword_2800F7F38, type metadata accessor for PLUSSchemaPLUSTMDCSiriCurrentPronunciationSource);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x656372756F73, 0xE600000000000000);
  return v17(v21, 0);
}

uint64_t sub_26720ED50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720EDB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26720EE5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26720EEA4()
{
  result = qword_2800F7F08;
  if (!qword_2800F7F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7F08);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSUniversalSuggestion.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6E656469666E6F63, 0xEA00000000006563);
  return v10(v12, 0);
}

uint64_t sub_26720F140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720F1A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720F208()
{
  result = qword_2800F7EE8;
  if (!qword_2800F7EE8)
  {
    sub_26720F260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7EE8);
  }

  return result;
}

unint64_t sub_26720F260()
{
  result = qword_2800F7EE0;
  if (!qword_2800F7EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7EE0);
  }

  return result;
}

uint64_t static PLUSSchemaPLUSUSOGraphTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x68706172476F7375, 0xED00003172656954);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x68706172476F7375, 0xED00003172656954);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788CB70);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26720F560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720F5C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRError.makeTypeManifestAndEnsureFields(in:)()
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
  v9 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v8, 0x6E69616D6F64, 0xE600000000000000);
  v13(v21, 0);
  v14 = v0;
  v15 = v20;
  v20(v4, *MEMORY[0x277D3E510], v14);
  v21[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 1701080931, 0xE400000000000000);
  v16(v21, 0);
  v15(v4, *MEMORY[0x277D3E508], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x656372756F73, 0xE600000000000000);
  return v17(v21, 0);
}

uint64_t sub_26720FA38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26720FA9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26720FB00()
{
  result = qword_2800F7F48;
  if (!qword_2800F7F48)
  {
    sub_26720FB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7F48);
  }

  return result;
}

unint64_t sub_26720FB58()
{
  result = qword_2800F7F50;
  if (!qword_2800F7F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7F50);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v65 = a1;
  v1 = sub_26738118C();
  v59 = *(v1 - 8);
  v60 = v1;
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v1);
  v58 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7F58, 0x277D59E40);
  sub_266ECAF2C(&qword_2800F7F60, &qword_2800F7F58, 0x277D59E40);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v67, 0);
  sub_266ECB294(0, &qword_2800F7F68, 0x277D59ED0);
  sub_266ECAF2C(&qword_2800F7F70, &qword_2800F7F68, 0x277D59ED0);
  sub_26738121C();
  v62 = v10;
  v63 = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026747D6D0);
  v12(v67, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v66, 0xD000000000000019, 0x800000026747D6D0);
  v15 = *(v9 + 48);
  v64 = v9 + 48;
  v61 = v15;
  if (!v15(v16, 1, v8))
  {
    sub_266ECB128(&unk_28788CB98);
    sub_26738115C();
  }

  (v14)(v66, 0);
  v13(v67, 0);
  sub_266ECB294(0, &qword_2800F7F78, 0x277D59E78);
  sub_266ECAF2C(&qword_2800F7F80, &qword_2800F7F78, 0x277D59E78);
  sub_26738121C();
  v62(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000028, 0x800000026747D6F0);
  v17(v67, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v66, 0xD000000000000028, 0x800000026747D6F0);
  if (!v61(v20, 1, v8))
  {
    sub_266ECB128(&unk_28788CBC0);
    sub_26738115C();
  }

  (v19)(v66, 0);
  v18(v67, 0);
  sub_266ECB294(0, &qword_2800F7F88, 0x277D59E70);
  sub_266ECAF2C(&qword_2800F7F90, &qword_2800F7F88, 0x277D59E70);
  sub_26738121C();
  v62(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000028, 0x800000026747D720);
  v21(v67, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v66, 0xD000000000000028, 0x800000026747D720);
  if (!v61(v24, 1, v8))
  {
    sub_266ECB128(&unk_28788CBE8);
    sub_26738115C();
  }

  (v23)(v66, 0);
  v22(v67, 0);
  sub_266ECB294(0, &qword_2800F7F98, 0x277D59E58);
  sub_266ECAF2C(&qword_2800F7FA0, &qword_2800F7F98, 0x277D59E58);
  sub_26738121C();
  v62(v7, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000027, 0x800000026747D750);
  v25(v67, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v66, 0xD000000000000027, 0x800000026747D750);
  if (!v61(v28, 1, v8))
  {
    sub_266ECB128(&unk_28788CC10);
    sub_26738115C();
  }

  (v27)(v66, 0);
  v26(v67, 0);
  sub_266ECB294(0, &qword_2800F7FA8, 0x277D59E88);
  sub_266ECAF2C(&qword_2800F7FB0, &qword_2800F7FA8, 0x277D59E88);
  sub_26738121C();
  v62(v7, 0, 1, v8);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, 0x800000026747D780);
  v29(v67, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v66, 0xD000000000000023, 0x800000026747D780);
  if (!v61(v32, 1, v8))
  {
    sub_266ECB128(&unk_28788CC38);
    sub_26738115C();
  }

  (v31)(v66, 0);
  v30(v67, 0);
  sub_266ECB294(0, &qword_2800F7FB8, 0x277D59E68);
  sub_266ECAF2C(&qword_2800F7FC0, &qword_2800F7FB8, 0x277D59E68);
  sub_26738121C();
  v62(v7, 0, 1, v8);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000031, 0x800000026747D7B0);
  v33(v67, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v66, 0xD000000000000031, 0x800000026747D7B0);
  if (!v61(v36, 1, v8))
  {
    sub_266ECB128(&unk_28788CC60);
    sub_26738115C();
  }

  (v35)(v66, 0);
  v34(v67, 0);
  sub_266ECB294(0, &qword_2800F7FC8, 0x277D59E80);
  sub_266ECAF2C(&qword_2800F7FD0, &qword_2800F7FC8, 0x277D59E80);
  sub_26738121C();
  v62(v7, 0, 1, v8);
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000037, 0x800000026747D7F0);
  v37(v67, 0);
  v38 = sub_2673811AC();
  v39 = sub_266ECB6CC(v66, 0xD000000000000037, 0x800000026747D7F0);
  if (!v61(v40, 1, v8))
  {
    sub_266ECB128(&unk_28788CC88);
    sub_26738115C();
  }

  (v39)(v66, 0);
  v38(v67, 0);
  sub_266ECB294(0, &qword_2800F7FD8, 0x277D59E60);
  sub_266ECAF2C(&qword_2800F7FE0, &qword_2800F7FD8, 0x277D59E60);
  sub_26738121C();
  v62(v7, 0, 1, v8);
  v41 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002DLL, 0x800000026747D830);
  v41(v67, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v66, 0xD00000000000002DLL, 0x800000026747D830);
  if (!v61(v44, 1, v8))
  {
    sub_266ECB128(&unk_28788CCB0);
    sub_26738115C();
  }

  (v43)(v66, 0);
  v42(v67, 0);
  sub_266ECB294(0, &qword_2800F7FE8, 0x277D59EC0);
  sub_266ECAF2C(&qword_2800F7FF0, &qword_2800F7FE8, 0x277D59EC0);
  sub_26738121C();
  v62(v7, 0, 1, v8);
  v45 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026747D860);
  v45(v67, 0);
  v46 = sub_2673811AC();
  v47 = sub_266ECB6CC(v66, 0xD000000000000019, 0x800000026747D860);
  if (!v61(v48, 1, v8))
  {
    sub_266ECB128(&unk_28788CCD8);
    sub_26738115C();
  }

  (v47)(v66, 0);
  v46(v67, 0);
  v49 = v58;
  sub_26738117C();
  v50 = sub_2673811BC();
  v52 = v51;
  v53 = *v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v52 = v53;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v53 = sub_266ECAD54(0, v53[2] + 1, 1, v53);
    *v52 = v53;
  }

  v56 = v53[2];
  v55 = v53[3];
  if (v56 >= v55 >> 1)
  {
    v53 = sub_266ECAD54(v55 > 1, v56 + 1, 1, v53);
    *v52 = v53;
  }

  v53[2] = v56 + 1;
  (*(v59 + 32))(v53 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v56, v49, v60);
  v50(v67, 0);
  sub_266ECB128(&unk_28788CD00);
  return sub_2673811CC();
}

uint64_t sub_267210B68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267210C00()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267210CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267210D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267210D90(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F7FF8, &qword_2800F8000, 0x277D59E38);
  a1[2] = sub_266ECAF2C(&qword_2800F8008, &qword_2800F8000, 0x277D59E38);
  result = sub_266ECAF2C(&qword_2800F8010, &qword_2800F8000, 0x277D59E38);
  a1[3] = result;
  return result;
}

uint64_t static PNRODSchemaPNRODClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449646F726E70, 0xE700000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449646F726E70, 0xE700000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788CD38);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26721112C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267211190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODExecutor.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x726F747563657865, 0xEA00000000006449);
  v11(v37, 0);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v35 = v10;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C6379436E616C70, 0xEB00000000644965);
  v12(v37, 0);
  type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(0);
  sub_267211BFC();
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x800000026742E860);
  v13(v37, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v36 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v34 = v7;
  v9(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x800000026747D8F0);
  v14(v37, 0);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v31 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, 0x800000026747D910);
  v15(v37, 0);
  sub_26738120C();
  v16 = v34;
  v9(v6, 0, 1, v34);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026747D940);
  v17(v37, 0);
  sub_26738120C();
  v9(v6, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x75516E6F73726570, 0xEF656D6954797265);
  v18(v37, 0);
  v30 = "searchToolQueryTime";
  sub_26738120C();
  v9(v6, 0, 1, v16);
  v32 = v9;
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, v30 | 0x8000000000000000);
  v19(v37, 0);
  v30 = "stringQueryLocationTime";
  sub_26738120C();
  v20 = v34;
  v9(v6, 0, 1, v34);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, v30 | 0x8000000000000000);
  v21(v37, 0);
  sub_26738120C();
  v22 = v20;
  v23 = v20;
  v24 = v32;
  v32(v6, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026747D9A0);
  v25(v37, 0);
  sub_26738120C();
  v24(v6, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026747D9C0);
  v26(v37, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v24(v6, 0, 1, v34);
  v27 = sub_2673811AC();
  sub_266EC637C(v6, 0x496572756C696166, 0xEB000000006F666ELL);
  return v27(v37, 0);
}

uint64_t sub_267211B38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267211B9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267211BFC()
{
  result = qword_2800F0A18;
  if (!qword_2800F0A18)
  {
    type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A18);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODFailureInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v3 = sub_26738113C();
  v23 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v22[1] = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E510];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v25[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x546572756C696166, 0xEB00000000657079);
  v16(v25, 0);
  v13(v7, v12, v23);
  v25[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x536572756C696166, 0xEE00657079546275);
  v17(v25, 0);
  sub_266ECB294(0, &qword_2800F7F50, 0x277D59E30);
  sub_266ECAF2C(&qword_2800F7F48, &qword_2800F7F50, 0x277D59E30);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x726F727265, 0xE500000000000000);
  v18(v25, 0);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x69796C7265646E75, 0xEF726F727245676ELL);
  v19(v25, 0);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x800000026747DA10);
  return v20(v25, 0);
}

uint64_t sub_2672121B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267212218(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowActionGrainSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_26738113C();
  v55 = *(v53 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v47 = *(v10 - 8);
  v12 = v47 + 56;
  v11 = *(v47 + 56);
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496E6F69746361, 0xE800000000000000);
  v13(v57, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496E616C70, 0xE600000000000000);
  v14(v57, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v54 = v11;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6552746E65696C63, 0xEF64497473657571);
  v15(v57, 0);
  v48 = a1;
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v16 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7972657551776172, 0xEF6449746E657645);
  v17(v57, 0);
  v19 = v55 + 104;
  v18 = *(v55 + 104);
  v20 = v52;
  v21 = v53;
  (v18)(v52, *MEMORY[0x277D3E510], v53);
  v57[0] = 1;
  sub_26738114C();
  v54(v9, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x737574617473, 0xE600000000000000);
  v22(v57, 0);
  v23 = *MEMORY[0x277D3E530];
  v55 = v19;
  v49 = v18;
  (v18)(v20, v23, v21);
  v57[0] = 1;
  sub_26738114C();
  v50 = v12;
  v54(v9, 0, 1, v10);
  v24 = v10;
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496C6F6F74, 0xE600000000000000);
  v25(v57, 0);
  v51 = v16;
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v56, 0x64496C6F6F74, 0xE600000000000000);
  v28 = *(v47 + 48);
  if (!v28(v29, 1, v10))
  {
    sub_266ECB128(&unk_28788CD68);
    sub_26738115C();
  }

  (v27)(v56, 0);
  v26(v57, 0);
  v49(v52, v23, v53);
  v57[0] = 1;
  sub_26738114C();
  v54(v9, 0, 1, v10);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449656C646E7562, 0xE800000000000000);
  v30(v57, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v56, 0x6449656C646E7562, 0xE800000000000000);
  if (!v28(v33, 1, v10))
  {
    sub_266ECB128(&unk_28788CD98);
    sub_26738115C();
  }

  (v32)(v56, 0);
  v31(v57, 0);
  LODWORD(v47) = *MEMORY[0x277D3E538];
  (v49)(v52);
  v57[0] = 1;
  sub_26738114C();
  v34 = v54;
  v54(v9, 0, 1, v10);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6574617473, 0xEB00000000644974);
  v35(v57, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v34(v9, 0, 1, v10);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69747563657865, 0xED0000656D69546ELL);
  v36(v57, 0);
  sub_26738120C();
  v34(v9, 0, 1, v10);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026747DA80);
  v37(v57, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v46 = v10;
  v34(v9, 0, 1, v10);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x496572756C696166, 0xEB000000006F666ELL);
  v38(v57, 0);
  v48 = "appEntityQueryResponseTime";
  v39 = v52;
  v40 = v53;
  v41 = v47;
  v42 = v49;
  v49(v52, v47, v53);
  v57[0] = 1;
  sub_26738114C();
  v34(v9, 0, 1, v24);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v48 | 0x8000000000000000);
  v43(v57, 0);
  v42(v39, v41, v40);
  v57[0] = 1;
  sub_26738114C();
  v54(v9, 0, 1, v46);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026747DAC0);
  return v44(v57, 0);
}

uint64_t sub_267212F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267212F78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_26738113C();
  v32 = *(v30 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v31 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496E6F69746361, 0xE800000000000000);
  v12(v33, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496E616C70, 0xE600000000000000);
  v13(v33, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6552746E65696C63, 0xEF64497473657571);
  v14(v33, 0);
  v28[1] = a1;
  sub_26738120C();
  v28[0] = v10;
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7972657551776172, 0xEF6449746E657645);
  v15(v33, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F747563657865, 0xEA00000000006449);
  v16(v33, 0);
  v17 = *MEMORY[0x277D3E4E8];
  v18 = *(v32 + 104);
  v32 += 104;
  v19 = v29;
  v20 = v30;
  v18(v29, v17, v30);
  v33[0] = 1;
  sub_26738114C();
  v21 = v28[0];
  v11(v9, 0, 1, v28[0]);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F467070417369, 0xEF646E756F726765);
  v22(v33, 0);
  v18(v19, *MEMORY[0x277D3E510], v20);
  v33[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574617453707061, 0xE800000000000000);
  v23(v33, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v11(v9, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69747563657865, 0xED0000656D69546ELL);
  v24(v33, 0);
  sub_266ECB294(0, &qword_2800F8050, 0x277D59E98);
  sub_266ECAF2C(&qword_2800F8058, &qword_2800F8050, 0x277D59E98);
  sub_26738120C();
  v11(v9, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x697274654D617170, 0xEA00000000007363);
  v25(v33, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v11(v9, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x496572756C696166, 0xEB000000006F666ELL);
  return v26(v33, 0);
}

uint64_t sub_2672138F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267213958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = sub_26738113C();
  v71 = *(v66 - 8);
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v61 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496E616C70, 0xE600000000000000);
  v14(v72, 0);
  v70 = a1;
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6552746E65696C63, 0xEF64497473657571);
  v15(v72, 0);
  sub_26738120C();
  v69 = v12;
  v12(v9, 0, 1, v10);
  v16 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7972657551776172, 0xEF6449746E657645);
  v17(v72, 0);
  v62 = "lannerComponentSummary";
  v18 = *MEMORY[0x277D3E4E8];
  v19 = v71 + 104;
  v64 = *(v71 + 104);
  v21 = v65;
  v20 = v66;
  v64(v65, v18, v66);
  v71 = v19;
  v72[0] = 1;
  sub_26738114C();
  v22 = v10;
  v12(v9, 0, 1, v10);
  v23 = v16;
  v24 = sub_2673811AC();
  v63 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, v62 | 0x8000000000000000);
  v24(v72, 0);
  v62 = "wasPlanOverridden";
  v25 = v64;
  v64(v21, *MEMORY[0x277D3E530], v20);
  v72[0] = 1;
  sub_26738114C();
  v26 = v22;
  v27 = v22;
  v28 = v69;
  v69(v9, 0, 1, v26);
  v29 = v23;
  v30 = sub_2673811AC();
  sub_266EC637C(v9, v63, v62 | 0x8000000000000000);
  v30(v72, 0);
  v25(v21, *MEMORY[0x277D3E510], v66);
  v72[0] = 1;
  sub_26738114C();
  v31 = v27;
  v68 = v27;
  v28(v9, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x800000026747DBC0);
  v32(v72, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v71 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v33 = v31;
  v34 = v28;
  v28(v9, 0, 1, v33);
  v35 = v13;
  v67 = v29;
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x800000026747DBF0);
  v36(v72, 0);
  v66 = "standardPlannerMakePlanTime";
  sub_26738120C();
  v37 = v68;
  v34(v9, 0, 1, v68);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v66 | 0x8000000000000000);
  v38(v72, 0);
  v66 = "ueryDecorationTime";
  sub_26738120C();
  v34(v9, 0, 1, v37);
  v61[1] = v35;
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002ALL, v66 | 0x8000000000000000);
  v39(v72, 0);
  v66 = "rescribedPlanGeneratorTime";
  sub_26738120C();
  v40 = v68;
  v34(v9, 0, 1, v68);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v66 | 0x8000000000000000);
  v41(v72, 0);
  v66 = "standardPlannerGeneratePlanTime";
  sub_26738120C();
  v34(v9, 0, 1, v40);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v66 | 0x8000000000000000);
  v42(v72, 0);
  v65 = "planResolverServiceHandleTime";
  sub_26738120C();
  v34(v9, 0, 1, v40);
  v43 = sub_2673811AC();
  v66 = 0xD000000000000023;
  sub_266EC637C(v9, 0xD000000000000023, v65 | 0x8000000000000000);
  v43(v72, 0);
  v65 = "onServiceHandleTime";
  sub_26738120C();
  v34(v9, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v65 | 0x8000000000000000);
  v44(v72, 0);
  sub_26738120C();
  v45 = v69;
  v69(v9, 0, 1, v40);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x800000026747DD00);
  v46(v72, 0);
  sub_26738120C();
  v47 = v68;
  v45(v9, 0, 1, v68);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x800000026747DD20);
  v48(v72, 0);
  sub_26738120C();
  v45(v9, 0, 1, v47);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000029, 0x800000026747DD50);
  v49(v72, 0);
  v65 = "otalCollectInputsDuration";
  sub_26738120C();
  v50 = v69;
  v69(v9, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v65 | 0x8000000000000000);
  v51(v72, 0);
  v65 = "panRetrievalDuration";
  sub_26738120C();
  v50(v9, 0, 1, v47);
  v52 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000027, v65 | 0x8000000000000000);
  v52(v72, 0);
  v65 = "ontextRetrievalDuration";
  sub_26738120C();
  v53 = v69;
  v69(v9, 0, 1, v47);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v65 | 0x8000000000000000);
  v54(v72, 0);
  v65 = "oolRetrievalDuration";
  sub_26738120C();
  v53(v9, 0, 1, v47);
  v55 = sub_2673811AC();
  sub_266EC637C(v9, v66, v65 | 0x8000000000000000);
  v55(v72, 0);
  sub_26738120C();
  v53(v9, 0, 1, v47);
  v56 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x800000026747DE40);
  v56(v72, 0);
  sub_26738120C();
  v57 = v69;
  v69(v9, 0, 1, v47);
  v58 = sub_2673811AC();
  sub_266EC637C(v9, v66, 0x800000026747DE70);
  v58(v72, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v57(v9, 0, 1, v47);
  v59 = sub_2673811AC();
  sub_266EC637C(v9, 0x496572756C696166, 0xEB000000006F666ELL);
  return v59(v72, 0);
}

uint64_t sub_267214A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267214AE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = sub_26738113C();
  v90 = *(v87 - 8);
  v4 = *(v90 + 8);
  MEMORY[0x28223BE20](v87);
  v92 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v82 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v10 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496E616C70, 0xE600000000000000);
  v15(v94, 0);
  v84 = v10;
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6552746E65696C63, 0xEF64497473657571);
  v16(v94, 0);
  sub_26738120C();
  v17 = v11;
  v13(v9, 0, 1, v11);
  v88 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7972657551776172, 0xEF6449746E657645);
  v18(v94, 0);
  v19 = *MEMORY[0x277D3E510];
  v20 = *(v90 + 13);
  v90 += 104;
  v85 = v20;
  v21 = v92;
  v22 = v87;
  (v20)(v92, v19, v87);
  v94[0] = 1;
  v23 = v21;
  sub_26738114C();
  v24 = v17;
  v93 = v17;
  v13(v9, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x737574617473, 0xE600000000000000);
  v25(v94, 0);
  v86 = "lannerGrainSummary";
  v26 = v85;
  (v85)(v23, v19, v22);
  v94[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v24);
  v27 = sub_2673811AC();
  v83 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, v86 | 0x8000000000000000);
  v27(v94, 0);
  LODWORD(v86) = *MEMORY[0x277D3E538];
  v28 = v92;
  v26(v92);
  v29 = v26;
  v94[0] = 1;
  sub_26738114C();
  v30 = v93;
  v13(v9, 0, 1, v93);
  v89 = v13;
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x736E616C506D756ELL, 0xEF64657461657243);
  v31(v94, 0);
  v82 = "appEntityQueryResponseTime";
  v32 = v86;
  v33 = v87;
  (v29)(v28, v86, v87);
  v94[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v30);
  v91 = v14;
  v34 = sub_2673811AC();
  sub_266EC637C(v9, v83, v82 | 0x8000000000000000);
  v34(v94, 0);
  v83 = "plannerGrainStage";
  v35 = v92;
  v36 = v85;
  (v85)(v92, v32, v33);
  v94[0] = 1;
  sub_26738114C();
  v37 = v93;
  v38 = v89;
  v89(v9, 0, 1, v93);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v83 | 0x8000000000000000);
  v39(v94, 0);
  v83 = "numQueriesExecuted";
  v40 = v86;
  v41 = v87;
  (v36)(v35, v86, v87);
  v94[0] = 1;
  sub_26738114C();
  v38(v9, 0, 1, v37);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v83 | 0x8000000000000000);
  v42(v94, 0);
  v83 = "numClientActionsCreated";
  v43 = v85;
  (v85)(v92, v40, v41);
  v94[0] = 1;
  sub_26738114C();
  v44 = v89;
  v89(v9, 0, 1, v37);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v83 | 0x8000000000000000);
  v45(v94, 0);
  v83 = "numActionResolverRequests";
  v46 = v86;
  (v43)(v92, v86, v41);
  v94[0] = 1;
  sub_26738114C();
  v47 = v44;
  v44(v9, 0, 1, v37);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v83 | 0x8000000000000000);
  v48(v94, 0);
  v83 = "numStatementsEvaluated";
  v49 = v92;
  v50 = v46;
  v51 = v87;
  v52 = v85;
  (v85)(v92, v50, v87);
  v94[0] = 1;
  sub_26738114C();
  v53 = v93;
  v47(v9, 0, 1, v93);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v83 | 0x8000000000000000);
  v54(v94, 0);
  (v52)(v49, v86, v51);
  v94[0] = 1;
  sub_26738114C();
  v47(v9, 0, 1, v53);
  v55 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x800000026747DFC0);
  v55(v94, 0);
  v90 = "numSystemPromptsResolved";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v56 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v47(v9, 0, 1, v53);
  v57 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v90 | 0x8000000000000000);
  v57(v94, 0);
  v90 = "plannerResponseTime";
  sub_26738120C();
  v58 = v89;
  v89(v9, 0, 1, v53);
  v59 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v90 | 0x8000000000000000);
  v59(v94, 0);
  sub_26738120C();
  v58(v9, 0, 1, v53);
  v60 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, 0x800000026747E020);
  v60(v94, 0);
  v90 = "olverRequestTime";
  sub_26738120C();
  v61 = v93;
  v58(v9, 0, 1, v93);
  v62 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v90 | 0x8000000000000000);
  v62(v94, 0);
  v90 = "startToPlanCreatedTime";
  v92 = v56;
  sub_26738120C();
  v63 = v89;
  v89(v9, 0, 1, v61);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v90 | 0x8000000000000000);
  v64(v94, 0);
  v90 = "DecorationEventTime";
  sub_26738120C();
  v63(v9, 0, 1, v61);
  v65 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000028, v90 | 0x8000000000000000);
  v65(v94, 0);
  v90 = "tToResponseGeneratedTime";
  sub_26738120C();
  v66 = v93;
  v63(v9, 0, 1, v93);
  v67 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, v90 | 0x8000000000000000);
  v67(v94, 0);
  v90 = "questToLastResolverEventTime";
  sub_26738120C();
  v63(v9, 0, 1, v66);
  v68 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v90 | 0x8000000000000000);
  v68(v94, 0);
  v90 = "tResolverEventTime";
  sub_26738120C();
  v63(v9, 0, 1, v66);
  v69 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000026, v90 | 0x8000000000000000);
  v69(v94, 0);
  v90 = "ionResolverRequestTime";
  sub_26738120C();
  v70 = v93;
  v63(v9, 0, 1, v93);
  v71 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000029, v90 | 0x8000000000000000);
  v71(v94, 0);
  v90 = "ionEventToPlanCreatedTime";
  sub_26738120C();
  v63(v9, 0, 1, v70);
  v72 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v90 | 0x8000000000000000);
  v72(v94, 0);
  sub_26738120C();
  v73 = v93;
  v63(v9, 0, 1, v93);
  v74 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x800000026747E1B0);
  v74(v94, 0);
  sub_26738120C();
  v75 = v73;
  v76 = v73;
  v77 = v89;
  v89(v9, 0, 1, v75);
  v78 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x800000026747E1D0);
  v78(v94, 0);
  sub_26738120C();
  v77(v9, 0, 1, v76);
  v79 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026747E1F0);
  v79(v94, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v77(v9, 0, 1, v76);
  v80 = sub_2673811AC();
  sub_266EC637C(v9, 0x496572756C696166, 0xEB000000006F666ELL);
  return v80(v94, 0);
}

uint64_t sub_2672160BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267216120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v4);
  v81 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v80 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v82 = *(v11 - 8);
  v12 = v82 + 56;
  v13 = *(v82 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6552746E65696C63, 0xEF64497473657571);
  v14(v92, 0);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6553746E65696C63, 0xEF64496E6F697373);
  v15(v92, 0);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v90 = v13;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6973736553776172, 0xEC00000064496E6FLL);
  v16(v92, 0);
  v83 = a1;
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v17 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x7972657551776172, 0xEF6449746E657645);
  v18(v92, 0);
  v19 = v88;
  v20 = v87 + 104;
  v21 = *(v87 + 104);
  v22 = v81;
  v21(v81, *MEMORY[0x277D3E510], v88);
  v92[0] = 1;
  sub_26738114C();
  v90(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x737574617473, 0xE600000000000000);
  v23(v92, 0);
  v24 = *MEMORY[0x277D3E530];
  v87 = v20;
  v84 = v21;
  v21(v22, v24, v19);
  v92[0] = 1;
  sub_26738114C();
  v85 = v12;
  v90(v10, 0, 1, v11);
  v25 = v17;
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496C6F6F74, 0xE600000000000000);
  v26(v92, 0);
  v86 = v25;
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v91, 0x64496C6F6F74, 0xE600000000000000);
  v29 = *(v82 + 48);
  v89 = v11;
  v82 += 48;
  if (!v29(v30, 1, v11))
  {
    sub_266ECB128(&unk_28788CDC8);
    sub_26738115C();
  }

  (v28)(v91, 0);
  v27(v92, 0);
  v84(v81, v24, v88);
  v92[0] = 1;
  sub_26738114C();
  v31 = v89;
  v90(v10, 0, 1, v89);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449656C646E7562, 0xE800000000000000);
  v32(v92, 0);
  v33 = sub_2673811AC();
  v34 = sub_266ECB6CC(v91, 0x6449656C646E7562, 0xE800000000000000);
  if (!v29(v35, 1, v31))
  {
    sub_266ECB128(&unk_28788CDF8);
    sub_26738115C();
  }

  (v34)(v91, 0);
  v33(v92, 0);
  type metadata accessor for PNRODSchemaPNRODRequestFeatureTag(0);
  sub_26721773C();
  sub_26738122C();
  v37 = v89;
  v36 = v90;
  v90(v10, 0, 1, v89);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026747E260);
  v38(v92, 0);
  LODWORD(v82) = *MEMORY[0x277D3E538];
  v39 = v81;
  v40 = v84;
  (v84)(v81);
  v92[0] = 1;
  sub_26738114C();
  v36(v10, 0, 1, v37);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0x736E616C506D756ELL, 0xEF64657461657243);
  v41(v92, 0);
  v80 = "requestFeatureTag";
  v42 = v82;
  v43 = v88;
  v40(v39, v82, v88);
  v92[0] = 1;
  sub_26738114C();
  v90(v10, 0, 1, v89);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v80 | 0x8000000000000000);
  v44(v92, 0);
  v80 = "appEntityQueryResponseTime";
  v45 = v42;
  v40(v39, v42, v43);
  v92[0] = 1;
  sub_26738114C();
  v46 = v89;
  v47 = v90;
  v90(v10, 0, 1, v89);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v80 | 0x8000000000000000);
  v48(v92, 0);
  v80 = "numQueriesCreated";
  v40(v39, v45, v88);
  v92[0] = 1;
  sub_26738114C();
  v47(v10, 0, 1, v46);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v80 | 0x8000000000000000);
  v49(v92, 0);
  v80 = "numActionResolverRequests";
  v50 = v88;
  v40(v39, v45, v88);
  v92[0] = 1;
  sub_26738114C();
  v51 = v89;
  v52 = v90;
  v90(v10, 0, 1, v89);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v80 | 0x8000000000000000);
  v53(v92, 0);
  v80 = "numStatementsEvaluated";
  v54 = v50;
  v55 = v50;
  v56 = v84;
  v84(v39, v45, v54);
  v92[0] = 1;
  sub_26738114C();
  v57 = v51;
  v52(v10, 0, 1, v51);
  v58 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v80 | 0x8000000000000000);
  v58(v92, 0);
  v80 = "numPlansCreatedForResponse";
  v59 = v82;
  v56(v39, v82, v55);
  v92[0] = 1;
  sub_26738114C();
  v52(v10, 0, 1, v57);
  v60 = v52;
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v80 | 0x8000000000000000);
  v61(v92, 0);
  v80 = "numResponseGenerationRequests";
  v62 = v88;
  v63 = v84;
  v84(v39, v59, v88);
  v92[0] = 1;
  sub_26738114C();
  v60(v10, 0, 1, v89);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v80 | 0x8000000000000000);
  v64(v92, 0);
  v63(v39, v82, v62);
  v92[0] = 1;
  sub_26738114C();
  v65 = v89;
  v60(v10, 0, 1, v89);
  v66 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026747DFC0);
  v66(v92, 0);
  v88 = "numSystemResponsesGenerated";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v67 = v90;
  v90(v10, 0, 1, v65);
  v68 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v88 | 0x8000000000000000);
  v68(v92, 0);
  sub_26738120C();
  v67(v10, 0, 1, v65);
  v69 = sub_2673811AC();
  sub_266EC637C(v10, 0x676E696E6E616C70, 0xEC000000656D6954);
  v69(v92, 0);
  sub_26738120C();
  v70 = v90;
  v90(v10, 0, 1, v65);
  v71 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D69547972657571, 0xE900000000000065);
  v71(v92, 0);
  sub_26738120C();
  v70(v10, 0, 1, v65);
  v72 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F69747563657865, 0xED0000656D69546ELL);
  v72(v92, 0);
  v88 = "requestResponseTime";
  sub_26738120C();
  v73 = v89;
  v70(v10, 0, 1, v89);
  v74 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v88 | 0x8000000000000000);
  v74(v92, 0);
  v88 = "responsePreparationTime";
  sub_26738120C();
  v75 = v90;
  v90(v10, 0, 1, v73);
  v76 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v88 | 0x8000000000000000);
  v76(v92, 0);
  sub_26738120C();
  v75(v10, 0, 1, v73);
  v77 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026747E340);
  v77(v92, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v75(v10, 0, 1, v73);
  v78 = sub_2673811AC();
  sub_266EC637C(v10, 0x496572756C696166, 0xEB000000006F666ELL);
  return v78(v92, 0);
}

uint64_t sub_267217678(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672176DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26721773C()
{
  result = qword_2800F8060;
  if (!qword_2800F8060)
  {
    type metadata accessor for PNRODSchemaPNRODRequestFeatureTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8060);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = sub_26738113C();
  v59 = *(v57 - 1);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v51 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v51[1] = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496E616C70, 0xE600000000000000);
  v15(v62, 0);
  v60 = a1;
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6552746E65696C63, 0xEF64497473657571);
  v16(v62, 0);
  sub_26738120C();
  v61 = v11;
  v17 = v13;
  v13(v9, 0, 1, v11);
  v58 = v10;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7972657551776172, 0xEF6449746E657645);
  v18(v62, 0);
  v52 = "nComponentSummary";
  v19 = *MEMORY[0x277D3E4E8];
  v56 = *(v59 + 104);
  v59 += 104;
  v20 = v55;
  v54 = v19;
  v21 = v57;
  v56(v55, v19, v57);
  v62[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v53 = v13;
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v52 | 0x8000000000000000);
  v22(v62, 0);
  v52 = "responseIsValidInput";
  v23 = v20;
  v24 = v20;
  v25 = v21;
  v26 = v21;
  v27 = v56;
  v56(v24, v19, v25);
  v62[0] = 1;
  sub_26738114C();
  v28 = v61;
  v17(v9, 0, 1, v61);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v52 | 0x8000000000000000);
  v29(v62, 0);
  v52 = "DialogueProvided";
  v27(v23, *MEMORY[0x277D3E530], v26);
  v62[0] = 1;
  sub_26738114C();
  v30 = v53;
  v53(v9, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v52 | 0x8000000000000000);
  v31(v62, 0);
  type metadata accessor for PNRODSchemaPNRODResponseInferenceLocation(0);
  sub_267218694();
  sub_26738120C();
  v30(v9, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x800000026747E430);
  v32(v62, 0);
  v56(v23, v54, v57);
  v62[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v28);
  v33 = v30;
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026747E450);
  v34(v62, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v35 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v36 = v61;
  v30(v9, 0, 1, v61);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x800000026747E300);
  v37(v62, 0);
  v57 = "responseIsFallback";
  sub_26738120C();
  v33(v9, 0, 1, v36);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v57 | 0x8000000000000000);
  v38(v62, 0);
  v57 = "responseInputValidationTime";
  sub_26738120C();
  v33(v9, 0, 1, v36);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v57 | 0x8000000000000000);
  v39(v62, 0);
  v57 = "responseOverridesTime";
  sub_26738120C();
  v40 = v61;
  v33(v9, 0, 1, v61);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v57 | 0x8000000000000000);
  v41(v62, 0);
  v57 = "responseCatalogueRetrievalTime";
  sub_26738120C();
  v33(v9, 0, 1, v40);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v57 | 0x8000000000000000);
  v42(v62, 0);
  v57 = "responseCATHydrationTime";
  v59 = v35;
  sub_26738120C();
  v33(v9, 0, 1, v40);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v57 | 0x8000000000000000);
  v43(v62, 0);
  sub_26738120C();
  v44 = v61;
  v33(v9, 0, 1, v61);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, 0x800000026747E510);
  v45(v62, 0);
  sub_26738120C();
  v33(v9, 0, 1, v44);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x800000026747E540);
  v46(v62, 0);
  sub_26738120C();
  v47 = v61;
  v33(v9, 0, 1, v61);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026747E560);
  v48(v62, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v33(v9, 0, 1, v47);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0x496572756C696166, 0xEB000000006F666ELL);
  return v49(v62, 0);
}

uint64_t sub_2672185D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267218634(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267218694()
{
  result = qword_2800F8068;
  if (!qword_2800F8068)
  {
    type metadata accessor for PNRODSchemaPNRODResponseInferenceLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8068);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODIntelligenceFlowSessionSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v30 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6553746E65696C63, 0xEF64496E6F697373);
  v11(v31, 0);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6973736553776172, 0xEC00000064496E6FLL);
  v12(v31, 0);
  v27 = "ntelligenceFlowSessionSummary";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v28 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, v27 | 0x8000000000000000);
  v13(v31, 0);
  v27 = "standardPlannerSetupTime";
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v24[1] = a2;
  v25 = v9;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, v27 | 0x8000000000000000);
  v14(v31, 0);
  v27 = "queryDecorationServiceSetupTime";
  sub_26738120C();
  v26 = v7;
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, v27 | 0x8000000000000000);
  v15(v31, 0);
  sub_26738120C();
  v16 = v7;
  v17 = v25;
  v25(v6, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x800000026747E620);
  v18(v31, 0);
  sub_26738120C();
  v19 = v26;
  v17(v6, 0, 1, v26);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x800000026747E640);
  v20(v31, 0);
  sub_26738120C();
  v17(v6, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x800000026747E660);
  v21(v31, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v17(v6, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0x496572756C696166, 0xEB000000006F666ELL);
  return v22(v31, 0);
}

uint64_t sub_267218E90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267218EF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODMetricDuration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v33 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34 = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E518], v2);
  v36[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x615663697274656DLL, 0xEB0000000065756CLL);
  v15(v36, 0);
  v31 = *MEMORY[0x277D3E510];
  v32 = v3 + 104;
  v30 = v11;
  (v11)(v6);
  v36[0] = 1;
  v27 = v6;
  sub_26738114C();
  v28 = v14;
  v29 = v13 + 56;
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D69547472617473, 0xEE00706D61747365);
  v16(v36, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v35, 0x6D69547472617473, 0xEE00706D61747365);
  if (!(*(v13 + 48))(v19, 1, v12))
  {
    sub_266ECB128(&unk_28788CE28);
    sub_26738115C();
  }

  (v18)(v35, 0);
  v17(v36, 0);
  v20 = v27;
  v21 = v33;
  v22 = v30;
  v30(v27, v31, v33);
  v36[0] = 1;
  sub_26738114C();
  v23 = v28;
  v28(v10, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6576457472617473, 0xEF7865646E49746ELL);
  v24(v36, 0);
  v22(v20, v31, v21);
  v36[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E657645646E65, 0xED00007865646E49);
  return v25(v36, 0);
}

uint64_t sub_267219528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721958C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672195F0()
{
  result = qword_2800F8028;
  if (!qword_2800F8028)
  {
    sub_267219648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8028);
  }

  return result;
}

unint64_t sub_267219648()
{
  result = qword_2800F8020;
  if (!qword_2800F8020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8020);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODPGModelInterface.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026747E6F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026747E710, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x800000026747E740, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004CLL, 0x800000026747E780, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267219918(uint64_t a1)
{
  v2 = sub_267219A1C(&qword_2800F8078);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267219980(uint64_t a1, uint64_t a2)
{
  v4 = sub_267219A1C(&qword_2800F8078);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267219A1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODPGModelInterface(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODPlanGeneration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = sub_26738113C();
  v53 = *(v49 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v50 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v54 = v10;
  v12(v9, 0, 1, v10);
  v52 = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6379436E616C70, 0xEB00000000644965);
  v14(v55, 0);
  type metadata accessor for PNRODSchemaPNRODPGModelInterface(0);
  sub_26721A608();
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v15 = v12;
  v51 = v12;
  v45 = v13;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026747E800);
  v16(v55, 0);
  v44 = "pgModelInterface";
  v46 = *MEMORY[0x277D3E530];
  v18 = v53 + 104;
  v17 = *(v53 + 104);
  v20 = v48;
  v19 = v49;
  v17(v48);
  v47 = v17;
  v53 = v18;
  v55[0] = 1;
  sub_26738114C();
  v21 = v54;
  v15(v9, 0, 1, v54);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v44 | 0x8000000000000000);
  v22(v55, 0);
  v44 = "pgModelIdentifier";
  (v17)(v20, v46, v19);
  v55[0] = 1;
  v23 = v20;
  sub_26738114C();
  v24 = v21;
  v25 = v51;
  v51(v9, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v44 | 0x8000000000000000);
  v26(v55, 0);
  (v47)(v23, *MEMORY[0x277D3E4E8], v19);
  v55[0] = 1;
  sub_26738114C();
  v25(v9, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026747E860);
  v27(v55, 0);
  v49 = "pgOverridesMatched";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v53 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v28 = v54;
  v25(v9, 0, 1, v54);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v49 | 0x8000000000000000);
  v29(v55, 0);
  v49 = "pgPlanGenTotalTime";
  sub_26738120C();
  v30 = v51;
  v51(v9, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v49 | 0x8000000000000000);
  v31(v55, 0);
  sub_26738120C();
  v30(v9, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026747E8C0);
  v32(v55, 0);
  sub_26738120C();
  v33 = v54;
  v30(v9, 0, 1, v54);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0x69727265764F6770, 0xEF656D6954736564);
  v34(v55, 0);
  sub_26738120C();
  v30(v9, 0, 1, v33);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026747E8E0);
  v35(v55, 0);
  sub_26738120C();
  v36 = v33;
  v37 = v33;
  v38 = v51;
  v51(v9, 0, 1, v36);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x800000026747E900);
  v39(v55, 0);
  sub_26738120C();
  v38(v9, 0, 1, v37);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x800000026747E920);
  v40(v55, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v38(v9, 0, 1, v54);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0x496572756C696166, 0xEB000000006F666ELL);
  return v41(v55, 0);
}

uint64_t sub_26721A544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721A5A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26721A608()
{
  result = qword_2800F8070;
  if (!qword_2800F8070)
  {
    type metadata accessor for PNRODSchemaPNRODPGModelInterface(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8070);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODPlanResolution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v27 = a1;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C6379436E616C70, 0xEB00000000644965);
  v14(v30, 0);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v25[1] = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 1682535024, 0xE400000000000000);
  v15(v30, 0);
  v25[0] = "iri.fl.FLActionEvaluationEnded";
  v16 = *MEMORY[0x277D3E538];
  v17 = v28;
  v18 = *(v29 + 104);
  v29 += 104;
  v19 = v26;
  v18(v26, v16, v28);
  v30[0] = 1;
  sub_26738114C();
  v13(v11, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v25[0] | 0x8000000000000000);
  v20(v30, 0);
  v18(v19, v16, v17);
  v30[0] = 1;
  sub_26738114C();
  v13(v11, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E656D6574617473, 0xEB00000000644974);
  v21(v30, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x800000026747E970);
  v22(v30, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x496572756C696166, 0xEB000000006F666ELL);
  return v23(v30, 0);
}

uint64_t sub_26721AD00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721AD64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODPQAMetrics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v6 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v5, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F54686372616573, 0xEC00000064496C6FLL);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v9(v5, 0, 1, v7);
  v17[1] = v10;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x546C6C617265766FLL, 0xEB00000000656D69);
  v12(v19, 0);
  v17[2] = v6;
  sub_26738120C();
  v18 = v9;
  v9(v5, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x746F5455516D6C6CLL, 0xEE00656D69546C61);
  v13(v19, 0);
  sub_26738120C();
  v9(v5, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026747E9C0);
  v14(v19, 0);
  sub_26738120C();
  v18(v5, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026747E9E0);
  return v15(v19, 0);
}

uint64_t sub_26721B2A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721B308(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODQueryDecoration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
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
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026747EA30);
  v12(v44, 0);
  type metadata accessor for PNRODSchemaPNRODQueryDecorationSource(0);
  sub_26721BF38();
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v38 = v11;
  v13 = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026747EA50);
  v14(v44, 0);
  v39 = "queryDecorationSource";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v15 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v16 = v10;
  v37 = v10;
  v17 = v13;
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v39 | 0x8000000000000000);
  v18(v44, 0);
  v39 = "queryDecorationHandleTime";
  v41 = a1;
  sub_26738120C();
  v16(v7, 0, 1, v8);
  v40 = v17;
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, v39 | 0x8000000000000000);
  v19(v44, 0);
  v39 = "panRetrievalTime";
  sub_26738120C();
  v43 = v8;
  v20 = v37;
  v37(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, v39 | 0x8000000000000000);
  v21(v44, 0);
  sub_26738120C();
  v20(v7, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, 0x800000026747EAF0);
  v22(v44, 0);
  v39 = "oolRetrievalTime";
  sub_26738120C();
  v23 = v43;
  v20(v7, 0, 1, v43);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v39 | 0x8000000000000000);
  v24(v44, 0);
  v39 = "queryDecorationRankingTime";
  sub_26738120C();
  v20(v7, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, v39 | 0x8000000000000000);
  v25(v44, 0);
  v39 = "utputBuildingTime";
  sub_26738120C();
  v26 = v43;
  v20(v7, 0, 1, v43);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, v39 | 0x8000000000000000);
  v27(v44, 0);
  v39 = "upleBuildingTime";
  v42 = v15;
  sub_26738120C();
  v20(v7, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, v39 | 0x8000000000000000);
  v28(v44, 0);
  v39 = "queryDecorationTupleRankingTime";
  sub_26738120C();
  v20(v7, 0, 1, v26);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, v39 | 0x8000000000000000);
  v29(v44, 0);
  v39 = "nputCollectionTime";
  sub_26738120C();
  v20(v7, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000027, v39 | 0x8000000000000000);
  v30(v44, 0);
  sub_26738120C();
  v31 = v43;
  v20(v7, 0, 1, v43);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002ALL, 0x800000026747EC20);
  v32(v44, 0);
  sub_26738120C();
  v20(v7, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000026, 0x800000026747EC50);
  v33(v44, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v20(v7, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  return v34(v44, 0);
}

uint64_t sub_26721BE74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721BED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26721BF38()
{
  result = qword_2800F80A0;
  if (!qword_2800F80A0)
  {
    type metadata accessor for PNRODSchemaPNRODQueryDecorationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F80A0);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODQueryDecorationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026747ECC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026747ECE0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026747ED00, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x800000026747ED20, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x800000026747ED50, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26721C2CC(uint64_t a1)
{
  v2 = sub_26721C3D0(&qword_2800F80B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26721C334(uint64_t a1, uint64_t a2)
{
  v4 = sub_26721C3D0(&qword_2800F80B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26721C3D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODQueryDecorationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODRequestFeatureTag.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026747EDB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026747EDD0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026747EDF0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x800000026747EE10, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026747EE40, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x800000026747EE70, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x800000026747EEA0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x800000026747EEC0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000029, 0x800000026747EEE0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_26721C8D0(uint64_t a1)
{
  v2 = sub_26721C9D4(&qword_2800F80C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26721C938(uint64_t a1, uint64_t a2)
{
  v4 = sub_26721C9D4(&qword_2800F80C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26721C9D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODRequestFeatureTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODResponseGeneration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v8 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026747EF50);
  v13(v34, 0);
  type metadata accessor for PNRODSchemaPNRODRGResponseSource(0);
  sub_26721D35C();
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v30 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026747EF70);
  v14(v34, 0);
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v29 = v11;
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026747EF90);
  v15(v34, 0);
  v31 = v8;
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x800000026747EFB0);
  v16(v34, 0);
  v28 = "responseGenerationOverrideTime";
  sub_26738120C();
  v33 = v9;
  v17 = v29;
  v29(v7, 0, 1, v9);
  v32 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, v28 | 0x8000000000000000);
  v18(v34, 0);
  v28 = "onValidationTime";
  sub_26738120C();
  v17(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, v28 | 0x8000000000000000);
  v19(v34, 0);
  v28 = "responseGenerationCatalogTime";
  sub_26738120C();
  v20 = v33;
  v17(v7, 0, 1, v33);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, v28 | 0x8000000000000000);
  v21(v34, 0);
  v28 = "responseGenerationInferenceTime";
  sub_26738120C();
  v17(v7, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002CLL, v28 | 0x8000000000000000);
  v22(v34, 0);
  v28 = "onHallucinationDetectionTime";
  sub_26738120C();
  v23 = v33;
  v17(v7, 0, 1, v33);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, v28 | 0x8000000000000000);
  v24(v34, 0);
  sub_26738120C();
  v17(v7, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, 0x800000026747F090);
  v25(v34, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v17(v7, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  return v26(v34, 0);
}

uint64_t sub_26721D298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721D2FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26721D35C()
{
  result = qword_2800F80C8;
  if (!qword_2800F80C8)
  {
    type metadata accessor for PNRODSchemaPNRODRGResponseSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F80C8);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODResponseInferenceLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026747F100, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026747F130, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026747F160, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26721D60C(uint64_t a1)
{
  v2 = sub_26721D710(&qword_2800F80E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26721D674(uint64_t a1, uint64_t a2)
{
  v4 = sub_26721D710(&qword_2800F80E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26721D710(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODResponseInferenceLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODRGResponseSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026747F1B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026747F1D0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026747F1F0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026747F210, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x800000026747F230, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000027, 0x800000026747F260, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x800000026747F290, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x800000026747F2C0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000029, 0x800000026747F2E0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_26721DC0C(uint64_t a1)
{
  v2 = sub_26721DD10(&qword_2800F80E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26721DC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_26721DD10(&qword_2800F80E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26721DD10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PNRODSchemaPNRODRGResponseSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PNRODSchemaPNRODScheduleDebugSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v53 = sub_26738116C();
  v10 = *(v53 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v9, 0, 1, v53);
  v13 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C756465686373, 0xEA00000000006449);
  v14(v56, 0);
  v15 = *MEMORY[0x277D3E538];
  v16 = v55;
  v17 = *(v54 + 104);
  v54 += 104;
  v52 = v17;
  v17(v5, v15, v55);
  v56[0] = 1;
  sub_26738114C();
  v18 = v53;
  v11(v9, 0, 1, v53);
  v50 = v13;
  v51 = v11;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x65757165526D756ELL, 0xEF64616552737473);
  v19(v56, 0);
  v47 = "cheduleDebugSummary";
  v20 = v52;
  v52(v5, v15, v16);
  v56[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v18);
  v49 = v12;
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v47 | 0x8000000000000000);
  v21(v56, 0);
  v46 = "numRequestsWrite";
  v22 = *MEMORY[0x277D3E518];
  v48 = v5;
  v23 = v22;
  LODWORD(v47) = v22;
  v24 = v55;
  v25 = v20;
  (v20)(v5);
  v56[0] = 1;
  sub_26738114C();
  v26 = v53;
  v27 = v51;
  v51(v9, 0, 1, v53);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v46 | 0x8000000000000000);
  v28(v56, 0);
  v46 = "processingWaitTimeInSecond";
  v29 = v48;
  v25(v48, v23, v24);
  v56[0] = 1;
  sub_26738114C();
  v27(v9, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v46 | 0x8000000000000000);
  v30(v56, 0);
  v46 = "aggregationInterval";
  v31 = v52;
  v52(v29, *MEMORY[0x277D3E540], v24);
  v56[0] = 1;
  sub_26738114C();
  v32 = v51;
  v51(v9, 0, 1, v26);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v46 | 0x8000000000000000);
  v33(v56, 0);
  v46 = "processingTimeInSecond";
  v34 = v55;
  v31(v29, v47, v55);
  v56[0] = 1;
  sub_26738114C();
  v35 = v26;
  v32(v9, 0, 1, v26);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v46 | 0x8000000000000000);
  v36(v56, 0);
  v46 = "meBookmarkInSecond";
  LODWORD(v47) = *MEMORY[0x277D3E510];
  v37 = v47;
  v38 = v34;
  v39 = v52;
  (v52)(v29);
  v56[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v35);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v46 | 0x8000000000000000);
  v40(v56, 0);
  v41 = v48;
  v39(v48, v37, v38);
  v56[0] = 1;
  sub_26738114C();
  v42 = v53;
  v32(v9, 0, 1, v53);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0x72756F5361746164, 0xEF7865646E496563);
  v43(v56, 0);
  v39(v41, v47, v55);
  v56[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v42);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E4972656B726F77, 0xEB00000000786564);
  return v44(v56, 0);
}

uint64_t sub_26721E768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721E7CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODSearch.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - v6;
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
  v12 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F54686372616573, 0xEC00000064496C6FLL);
  v13(v34, 0);
  v31 = "iri.pnrod.PNRODSearch";
  sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v14 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v33 = v11;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v31 | 0x8000000000000000);
  v15(v34, 0);
  v31 = "iri.pnrod.PNRODPQAMetrics";
  sub_26738120C();
  v29 = v8;
  v10(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v31 | 0x8000000000000000);
  v16(v34, 0);
  v31 = "spotlightTotalTime";
  v28[1] = v14;
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v32 = v12;
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v31 | 0x8000000000000000);
  v17(v34, 0);
  v31 = "searchTotalHandleTime";
  sub_26738120C();
  v18 = v29;
  v10(v7, 0, 1, v29);
  v30 = v10;
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v31 | 0x8000000000000000);
  v19(v34, 0);
  v28[2] = a1;
  sub_26738120C();
  v10(v7, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026747F470);
  v20(v34, 0);
  sub_26738120C();
  v21 = v30;
  v30(v7, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026747F490);
  v22(v34, 0);
  sub_26738120C();
  v21(v7, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026747F4B0);
  v23(v34, 0);
  sub_26738120C();
  v21(v7, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6372616553657270, 0xED0000656D695468);
  v24(v34, 0);
  sub_26738120C();
  v21(v7, 0, 1, v18);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x7261655374736F70, 0xEE00656D69546863);
  v25(v34, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v21(v7, 0, 1, v18);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x496572756C696166, 0xEB000000006F666ELL);
  return v26(v34, 0);
}

uint64_t sub_26721F0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26721F150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PNRODSchemaPNRODSiriTurnGrainSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v51 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v60 = *(v13 + 56);
  v14 = v13 + 56;
  v60(v11, 0, 1, v12);
  v56 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x64696E727574, 0xE600000000000000);
  v15(v61, 0);
  v16 = *MEMORY[0x277D3E510];
  v17 = *(v4 + 104);
  v55 = v4 + 104;
  v17(v7, v16, v3);
  v59 = v17;
  v61[0] = 1;
  sub_26738114C();
  v18 = v60;
  v60(v11, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x737574617473, 0xE600000000000000);
  v19(v61, 0);
  v52 = "iriTurnGrainSummary";
  v53 = *MEMORY[0x277D3E4E8];
  v20 = v3;
  (v17)(v7);
  v61[0] = 1;
  sub_26738114C();
  v18(v11, 0, 1, v12);
  v21 = a2;
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v52 | 0x8000000000000000);
  v22(v61, 0);
  v52 = "hasAssistantPerformanceData";
  v23 = v53;
  v59(v7, v53, v20);
  v61[0] = 1;
  sub_26738114C();
  v24 = v12;
  v25 = v12;
  v26 = v60;
  v60(v11, 0, 1, v25);
  v58 = v21;
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v52 | 0x8000000000000000);
  v27(v61, 0);
  v59(v7, v23, v20);
  v61[0] = 1;
  sub_26738114C();
  v28 = v24;
  v29 = v24;
  v30 = v26;
  v26(v11, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026747F550);
  v31(v61, 0);
  v32 = sub_266ECB294(0, &qword_2800F8020, 0x277D59E90);
  v33 = sub_266ECAF2C(&qword_2800F8028, &qword_2800F8020, 0x277D59E90);
  sub_26738120C();
  v57 = v29;
  v30(v11, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 7631475, 0xE300000000000000);
  v34(v61, 0);
  sub_26738120C();
  v30(v11, 0, 1, v29);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0x68636E75616CLL, 0xE600000000000000);
  v35(v61, 0);
  sub_26738120C();
  v30(v11, 0, 1, v57);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 6582373, 0xE300000000000000);
  v36(v61, 0);
  v59 = v33;
  sub_26738120C();
  v37 = v57;
  v38 = v60;
  v60(v11, 0, 1, v57);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 1919317365, 0xE400000000000000);
  v39(v61, 0);
  v55 = v32;
  sub_26738120C();
  v38(v11, 0, 1, v37);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 2003203188, 0xE400000000000000);
  v40(v61, 0);
  sub_266ECB294(0, &qword_2800F80B0, 0x277D59EB0);
  sub_266ECAF2C(&qword_2800F80A8, &qword_2800F80B0, 0x277D59EB0);
  sub_26738122C();
  v38(v11, 0, 1, v37);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0x6365447972657571, 0xEF6E6F697461726FLL);
  v41(v61, 0);
  sub_266ECB294(0, &qword_2800F80F8, 0x277D59EC8);
  sub_266ECAF2C(&qword_2800F80F0, &qword_2800F80F8, 0x277D59EC8);
  sub_26738122C();
  v38(v11, 0, 1, v37);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0x686372616573, 0xE600000000000000);
  v42(v61, 0);
  sub_266ECB294(0, &qword_2800F8098, 0x277D59EA8);
  sub_266ECAF2C(&qword_2800F8090, &qword_2800F8098, 0x277D59EA8);
  sub_26738122C();
  v38(v11, 0, 1, v37);
  v43 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F7365526E616C70, 0xEE006E6F6974756CLL);
  v43(v61, 0);
  sub_266ECB294(0, &qword_2800F80D8, 0x277D59EB8);
  sub_266ECAF2C(&qword_2800F80D0, &qword_2800F80D8, 0x277D59EB8);
  sub_26738122C();
  v44 = v60;
  v60(v11, 0, 1, v37);
  v45 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026747F570);
  v45(v61, 0);
  sub_266ECB294(0, &qword_2800F8048, 0x277D59E48);
  sub_266ECAF2C(&qword_2800F8040, &qword_2800F8048, 0x277D59E48);
  sub_26738122C();
  v44(v11, 0, 1, v37);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0x726F747563657865, 0xE800000000000000);
  v46(v61, 0);
  sub_266ECB294(0, &qword_2800F8088, 0x277D59EA0);
  sub_266ECAF2C(&qword_2800F8080, &qword_2800F8088, 0x277D59EA0);
  sub_26738122C();
  v44(v11, 0, 1, v37);
  v47 = sub_2673811AC();
  sub_266EC637C(v11, 0x656E65476E616C70, 0xEE006E6F69746172);
  v47(v61, 0);
  sub_26738120C();
  v44(v11, 0, 1, v37);
  v48 = sub_2673811AC();
  sub_266EC637C(v11, 0x6569617474, 0xE500000000000000);
  v48(v61, 0);
  sub_266ECB294(0, &qword_2800F8030, 0x277D59E50);
  sub_266ECAF2C(&qword_2800F8038, &qword_2800F8030, 0x277D59E50);
  sub_26738120C();
  v44(v11, 0, 1, v37);
  v49 = sub_2673811AC();
  sub_266EC637C(v11, 0x496572756C696166, 0xEB000000006F666ELL);
  return v49(v61, 0);
}

uint64_t sub_267220108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722016C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheEntry.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v23 = v1;
  v24 = v2 + 104;
  v11(v5, v10, v1);
  v26[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v22 = v12;
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x4473757361676570, 0xED00006E69616D6FLL);
  v14(v26, 0);
  v15 = *MEMORY[0x277D3E538];
  v11(v5, v15, v1);
  v26[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v16 = v13;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x79426E49657A6973, 0xEB00000000736574);
  v17(v26, 0);
  v11(v5, v15, v23);
  v26[0] = 1;
  sub_26738114C();
  v18 = v22;
  v16(v9, 0, 1, v22);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026747F5C0);
  v19(v26, 0);
  type metadata accessor for POMMESSchemaPOMMESCacheEntryOrigin(0);
  sub_2672207DC(&qword_2800F8100, type metadata accessor for POMMESSchemaPOMMESCacheEntryOrigin);
  sub_26738120C();
  v16(v9, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E696769726FLL, 0xE600000000000000);
  return v20(v26, 0);
}

uint64_t sub_2672206D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267220734(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672207DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267220824()
{
  result = qword_2800F8110;
  if (!qword_2800F8110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8110);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheEntryOrigin.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026747F620, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x800000026747F640, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026747F670, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267220A84(uint64_t a1)
{
  v2 = sub_267220B88(&qword_2800F8118);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267220AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267220B88(&qword_2800F8118);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267220B88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheEntryOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8120, 0x277D59EF8);
  sub_266ECAF2C(&qword_2800F8128, &qword_2800F8120, 0x277D59EF8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8130, 0x277D59EE8);
  sub_266ECAF2C(&qword_2800F8138, &qword_2800F8130, 0x277D59EE8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F8140, 0x277D59EF0);
  sub_266ECAF2C(&qword_2800F8148, &qword_2800F8140, 0x277D59EF0);
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

uint64_t sub_2672210E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267221148(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026747F720);
  return v10(v12, 0);
}

uint64_t sub_26722143C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672214A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267221504()
{
  result = qword_2800F8138;
  if (!qword_2800F8138)
  {
    sub_26722155C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8138);
  }

  return result;
}

unint64_t sub_26722155C()
{
  result = qword_2800F8130;
  if (!qword_2800F8130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8130);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason(0);
  sub_2672219F4(&qword_2800F8160, type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267221764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason(0);
  sub_2672219F4(&qword_2800F8160, type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672218E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722194C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672219F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267221A3C()
{
  result = qword_2800F8140;
  if (!qword_2800F8140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8140);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026747F7C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003BLL, 0x800000026747F7F0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x800000026747F830, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267221C9C(uint64_t a1)
{
  v2 = sub_267221DA0(&qword_2800F8168);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267221D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_267221DA0(&qword_2800F8168);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267221DA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheInvalidationFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason(0);
  sub_267222230(&qword_2800F8170, type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267221FA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason(0);
  sub_267222230(&qword_2800F8170, type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267222124(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267222188(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267222230(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267222278()
{
  result = qword_2800F8120;
  if (!qword_2800F8120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8120);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheInvalidationStartedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x800000026747F8F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x800000026747F920, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000041, 0x800000026747F960, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x800000026747F9B0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000039, 0x800000026747F9E0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000047, 0x800000026747FA20, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_267222628(uint64_t a1)
{
  v2 = sub_26722272C(&qword_2800F8178);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267222690(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722272C(&qword_2800F8178);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722272C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheInvalidationStartedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8180, 0x277D59F18);
  sub_266ECAF2C(&qword_2800F8188, &qword_2800F8180, 0x277D59F18);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8190, 0x277D59F08);
  sub_266ECAF2C(&qword_2800F8198, &qword_2800F8190, 0x277D59F08);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F81A0, 0x277D59F10);
  sub_266ECAF2C(&qword_2800F81A8, &qword_2800F81A0, 0x277D59F10);
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

uint64_t sub_267222C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267222CEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheLookupEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for POMMESSchemaPOMMESCacheLookupEndedStatus(0);
  sub_2672232CC();
  v20[1] = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737574617473, 0xE600000000000000);
  v13(v22, 0);
  (*(v2 + 104))(v5, *MEMORY[0x277D3E530], v20[0]);
  v22[0] = 1;
  sub_26738114C();
  v20[0] = v12;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  v14(v22, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v21, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  if (!(*(v11 + 48))(v17, 1, v10))
  {
    sub_266ECB128(&unk_28788CE58);
    sub_26738115C();
  }

  (v16)(v21, 0);
  v15(v22, 0);
  sub_266ECB294(0, &qword_2800F8110, 0x277D59ED8);
  sub_266ECAF2C(&qword_2800F8108, &qword_2800F8110, 0x277D59ED8);
  sub_26738120C();
  (v20[0])(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x746C75736572, 0xE600000000000000);
  return v18(v22, 0);
}

uint64_t sub_267223208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722326C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672232CC()
{
  result = qword_2800F81C0;
  if (!qword_2800F81C0)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheLookupEndedStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F81C0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupEndedStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026747FB30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026747FB60, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026747FB90, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026747FBC0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672235EC(uint64_t a1)
{
  v2 = sub_2672236F0(&qword_2800F81C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267223654(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672236F0(&qword_2800F81C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672236F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheLookupEndedStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason(0);
  sub_267223B80(&qword_2800F81D0, type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672238F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason(0);
  sub_267223B80(&qword_2800F81D0, type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267223A74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267223AD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267223B80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267223BC8()
{
  result = qword_2800F81A0;
  if (!qword_2800F81A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F81A0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026747FC70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x800000026747FCA0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026747FCE0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267223E28(uint64_t a1)
{
  v2 = sub_267223F2C(&qword_2800F81D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267223E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_267223F2C(&qword_2800F81D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267223F2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheLookupFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheLookupStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2672241B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722421C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267224280()
{
  result = qword_2800F8188;
  if (!qword_2800F8188)
  {
    sub_2672242D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8188);
  }

  return result;
}

unint64_t sub_2672242D8()
{
  result = qword_2800F8180;
  if (!qword_2800F8180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8180);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F81E0, 0x277D59F38);
  sub_266ECAF2C(&qword_2800F81E8, &qword_2800F81E0, 0x277D59F38);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F81F0, 0x277D59F28);
  sub_266ECAF2C(&qword_2800F81F8, &qword_2800F81F0, 0x277D59F28);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F8200, 0x277D59F30);
  sub_266ECAF2C(&qword_2800F8208, &qword_2800F8200, 0x277D59F30);
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

uint64_t sub_26722483C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672248A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-v8];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v26 = "SCacheMaintenanceEnded";
  v10 = *MEMORY[0x277D3E538];
  v27 = *(v2 + 104);
  v28 = v2 + 104;
  v23 = v10;
  v24 = v1;
  v27(v5, v10, v1);
  v30[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v25 = v12 + 56;
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v26 | 0x8000000000000000);
  v14(v30, 0);
  v26 = "numberOfEntriesUpdated";
  v15 = v10;
  v16 = v27;
  v27(v5, v15, v1);
  v30[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v26 | 0x8000000000000000);
  v17(v30, 0);
  v16(v5, v23, v24);
  v30[0] = 1;
  sub_26738114C();
  v18 = v13;
  v13(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x800000026747FE10);
  v19(v30, 0);
  type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceEndedReason(0);
  sub_267224F18(&qword_2800F8220, type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceEndedReason);
  sub_26738120C();
  v18(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F73616572, 0xE600000000000000);
  return v20(v30, 0);
}

uint64_t sub_267224E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267224E70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267224F18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267224F60()
{
  result = qword_2800F81F0;
  if (!qword_2800F81F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F81F0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceEndedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x800000026747FE80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026747FEB0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026747FEE0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672251C4(uint64_t a1)
{
  v2 = sub_2672252C8(&qword_2800F8228);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722522C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672252C8(&qword_2800F8228);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672252C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceEndedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason(0);
  sub_267225758(&qword_2800F8230, type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672254C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason(0);
  sub_267225758(&qword_2800F8230, type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26722564C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672256B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267225758(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672257A0()
{
  result = qword_2800F8200;
  if (!qword_2800F8200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8200);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026747FF90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x800000026747FFC0, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_267225990(uint64_t a1)
{
  v2 = sub_267225A94(&qword_2800F8238);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672259F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267225A94(&qword_2800F8238);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267225A94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheMaintenanceFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheMaintenanceStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267480050);
  return v10(v12, 0);
}

uint64_t sub_267225D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267225D8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267225DF0()
{
  result = qword_2800F81E8;
  if (!qword_2800F81E8)
  {
    sub_267225E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F81E8);
  }

  return result;
}

unint64_t sub_267225E48()
{
  result = qword_2800F81E0;
  if (!qword_2800F81E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F81E0);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F8240, 0x277D59F58);
  sub_266ECAF2C(&qword_2800F8248, &qword_2800F8240, 0x277D59F58);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F8250, 0x277D59F48);
  sub_266ECAF2C(&qword_2800F8258, &qword_2800F8250, 0x277D59F48);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F8260, 0x277D59F50);
  sub_266ECAF2C(&qword_2800F8268, &qword_2800F8260, 0x277D59F50);
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

uint64_t sub_2672263AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267226410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESCacheStoringEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus(0);
  sub_267226900(&qword_2800F8280, type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267226670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus(0);
  sub_267226900(&qword_2800F8280, type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672267F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267226858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267226900(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267226948()
{
  result = qword_2800F8250;
  if (!qword_2800F8250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8250);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringEndedStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267480140, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267480170, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x80000002674801A0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267226BA8(uint64_t a1)
{
  v2 = sub_267226CAC(&qword_2800F8288);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267226C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_267226CAC(&qword_2800F8288);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267226CAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheStoringEndedStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason(0);
  sub_26722713C(&qword_2800F8290, type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267226EAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason(0);
  sub_26722713C(&qword_2800F8290, type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267227030(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267227094(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26722713C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267227184()
{
  result = qword_2800F8260;
  if (!qword_2800F8260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8260);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringFailedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267480250, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x8000000267480280, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x80000002674802C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672273E4(uint64_t a1)
{
  v2 = sub_2672274E8(&qword_2800F8298);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722744C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672274E8(&qword_2800F8298);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672274E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESCacheStoringFailedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESCacheStoringStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v38 = sub_26738113C();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v32 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F8110, 0x277D59ED8);
  sub_266ECAF2C(&qword_2800F8108, &qword_2800F8110, 0x277D59ED8);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x7972746E65, 0xE500000000000000);
  v13(v40, 0);
  v14 = *MEMORY[0x277D3E530];
  v15 = *(v2 + 104);
  v37 = v2 + 104;
  v34 = v15;
  v15(v5, v14, v38);
  v40[0] = 1;
  v32[0] = v5;
  sub_26738114C();
  v35 = v12;
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  v16(v40, 0);
  v32[1] = a1;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v39, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  v19 = *(v11 + 48);
  v36 = v11 + 48;
  v33 = v19;
  if (!v19(v20, 1, v10))
  {
    sub_266ECB128(&unk_28788CE80);
    sub_26738115C();
  }

  (v18)(v39, 0);
  v17(v40, 0);
  v21 = *MEMORY[0x277D3E538];
  v22 = v32[0];
  v34(v32[0], v21, v38);
  v40[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267480330);
  v23(v40, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v39, 0xD000000000000011, 0x8000000267480330);
  if (!v33(v26, 1, v10))
  {
    sub_266ECB128(&unk_28788CEA8);
    sub_26738115C();
  }

  (v25)(v39, 0);
  v24(v40, 0);
  v34(v22, v21, v38);
  v40[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v10);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026747F5C0);
  v27(v40, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v39, 0xD000000000000013, 0x800000026747F5C0);
  if (!v33(v30, 1, v10))
  {
    sub_266ECB128(&unk_28788CED0);
    sub_26738115C();
  }

  (v29)(v39, 0);
  return v28(v40, 0);
}

uint64_t sub_267227BE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267227C44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESClientConversationMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_26738113C();
  v22 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v20 = a2;
  sub_26738119C();
  v21 = "SClientConversationMetadata";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v24[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, v21 | 0x8000000000000000);
  v16(v24, 0);
  v13(v7, v12, v22);
  v24[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C70736944736168, 0xEF73746E69487961);
  v17(v24, 0);
  sub_266ECB294(0, &qword_2800F82A0, 0x277D59FD8);
  sub_266ECAF2C(&qword_2800F82A8, &qword_2800F82A0, 0x277D59FD8);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674803B0);
  return v18(v24, 0);
}

uint64_t sub_2672280F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267228158(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F82C0, 0x277D59F70);
  sub_266ECAF2C(&qword_2800F82C8, &qword_2800F82C0, 0x277D59F70);
  sub_26738120C();
  v11 = sub_26738116C();
  v60 = *(v11 - 8);
  v13 = v60 + 56;
  v12 = *(v60 + 56);
  v12(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v14(v66, 0);
  sub_266ECB294(0, &qword_2800F82D0, 0x277D5A010);
  sub_266ECAF2C(&qword_2800F82D8, &qword_2800F82D0, 0x277D5A010);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267475660);
  v15(v66, 0);
  sub_266ECB294(0, &qword_2800F82E0, 0x277D59FB8);
  sub_266ECAF2C(&qword_2800F82E8, &qword_2800F82E0, 0x277D59FB8);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267480400);
  v16(v66, 0);
  sub_266ECB294(0, &qword_2800F82F0, 0x277D5A0E0);
  sub_266ECAF2C(&qword_2800F82F8, &qword_2800F82F0, 0x277D5A0E0);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, 0x8000000267480420);
  v17(v66, 0);
  sub_266ECB294(0, &qword_2800F8300, 0x277D5A088);
  sub_266ECAF2C(&qword_2800F8308, &qword_2800F8300, 0x277D5A088);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267480450);
  v18(v66, 0);
  sub_266ECB294(0, &qword_2800F8310, 0x277D59F78);
  sub_266ECAF2C(&qword_2800F8318, &qword_2800F8310, 0x277D59F78);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  v62 = 0xD000000000000013;
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267480470);
  v19(v66, 0);
  sub_266ECB294(0, &qword_2800F8320, 0x277D5A068);
  sub_266ECAF2C(&qword_2800F8328, &qword_2800F8320, 0x277D5A068);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x8000000267480490);
  v20(v66, 0);
  sub_266ECB294(0, &qword_2800F8330, 0x277D59FF0);
  sub_266ECAF2C(&qword_2800F8338, &qword_2800F8330, 0x277D59FF0);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674804B0);
  v21(v66, 0);
  sub_266ECB294(0, &qword_2800F8340, 0x277D5A0B8);
  sub_266ECAF2C(&qword_2800F8348, &qword_2800F8340, 0x277D5A0B8);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v63 = v13;
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x80000002674804D0);
  v22(v66, 0);
  sub_266ECB294(0, &qword_2800F81B8, 0x277D59F00);
  sub_266ECAF2C(&qword_2800F81B0, &qword_2800F81B8, 0x277D59F00);
  v64 = a1;
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x80000002674804F0);
  v23(v66, 0);
  sub_266ECB294(0, &qword_2800F8278, 0x277D59F40);
  sub_266ECAF2C(&qword_2800F8270, &qword_2800F8278, 0x277D59F40);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, v62, 0x8000000267480510);
  v24(v66, 0);
  sub_266ECB294(0, &qword_2800F8158, 0x277D59EE0);
  sub_266ECAF2C(&qword_2800F8150, &qword_2800F8158, 0x277D59EE0);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267480530);
  v25(v66, 0);
  sub_266ECB294(0, &qword_2800F8218, 0x277D59F20);
  sub_266ECAF2C(&qword_2800F8210, &qword_2800F8218, 0x277D59F20);
  sub_26738121C();
  v59 = v12;
  v12(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267480550);
  v26(v66, 0);
  v62 = a2;
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v65, 0xD000000000000017, 0x8000000267480550);
  v29 = *(v60 + 48);
  v60 += 48;
  v61 = v11;
  v55 = v29;
  if (!v29(v30, 1, v11))
  {
    sub_266ECB128(&unk_28788CEF8);
    sub_26738115C();
  }

  (v28)(v65, 0);
  v27(v66, 0);
  sub_266ECB294(0, &qword_2800F8350, 0x277D5A028);
  sub_266ECAF2C(&qword_2800F8358, &qword_2800F8350, 0x277D5A028);
  sub_26738121C();
  v31 = v61;
  v32 = v59;
  v59(v10, 0, 1, v61);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002CLL, 0x8000000267480570);
  v33(v66, 0);
  sub_266ECB294(0, &qword_2800F8360, 0x277D5A0D8);
  sub_266ECAF2C(&qword_2800F8368, &qword_2800F8360, 0x277D5A0D8);
  sub_26738121C();
  v32(v10, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x80000002674805A0);
  v34(v66, 0);
  sub_266ECB294(0, &qword_2800F8370, 0x277D59F98);
  sub_266ECAF2C(&qword_2800F8378, &qword_2800F8370, 0x277D59F98);
  sub_26738121C();
  v35 = v61;
  v32(v10, 0, 1, v61);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x80000002674805D0);
  v36(v66, 0);
  v37 = sub_2673811AC();
  v38 = sub_266ECB6CC(v65, 0xD00000000000001ELL, 0x80000002674805D0);
  if (!v55(v39, 1, v35))
  {
    sub_266ECB128(&unk_28788CF20);
    sub_26738115C();
  }

  (v38)(v65, 0);
  v37(v66, 0);
  sub_266ECB294(0, &qword_2800F8380, 0x277D59FA0);
  sub_266ECAF2C(&qword_2800F8388, &qword_2800F8380, 0x277D59FA0);
  sub_26738121C();
  v40 = v61;
  v41 = v59;
  v59(v10, 0, 1, v61);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x80000002674805F0);
  v42(v66, 0);
  sub_266ECB294(0, &qword_2800F8390, 0x277D59F90);
  sub_266ECAF2C(&qword_2800F8398, &qword_2800F8390, 0x277D59F90);
  sub_26738121C();
  v41(v10, 0, 1, v40);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000032, 0x8000000267480610);
  v43(v66, 0);
  sub_266ECB294(0, &qword_2800F83A0, 0x277D59FA8);
  sub_266ECAF2C(&qword_2800F83A8, &qword_2800F83A0, 0x277D59FA8);
  sub_26738121C();
  v41(v10, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000003BLL, 0x8000000267480650);
  v44(v66, 0);
  sub_266ECB294(0, &qword_2800F83B0, 0x277D59FB0);
  sub_266ECAF2C(&qword_2800F83B8, &qword_2800F83B0, 0x277D59FB0);
  sub_26738121C();
  v41(v10, 0, 1, v40);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000039, 0x8000000267480690);
  v45(v66, 0);
  v46 = v56;
  sub_26738117C();
  v47 = sub_2673811BC();
  v49 = v48;
  v50 = *v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v49 = v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v50 = sub_266ECAD54(0, v50[2] + 1, 1, v50);
    *v49 = v50;
  }

  v53 = v50[2];
  v52 = v50[3];
  if (v53 >= v52 >> 1)
  {
    v50 = sub_266ECAD54(v52 > 1, v53 + 1, 1, v50);
    *v49 = v50;
  }

  v50[2] = v53 + 1;
  (*(v57 + 32))(v50 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v53, v46, v58);
  v47(v66, 0);
  sub_266ECB128(&unk_28788CF48);
  return sub_2673811CC();
}

uint64_t sub_2672296EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267229784()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267229850(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672298B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267229914(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F83C0, &qword_2800F1F20, 0x277D59F68);
  a1[2] = sub_266ECAF2C(&qword_2800F83C8, &qword_2800F1F20, 0x277D59F68);
  result = sub_266ECAF2C(&qword_2800F83D0, &qword_2800F1F20, 0x277D59F68);
  a1[3] = result;
  return result;
}

uint64_t static POMMESSchemaPOMMESClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v39 = sub_26738113C();
  v44 = *(v39 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v37 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v43 = a1;
  v41 = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v45 = *(v10 + 56);
  v37[1] = v10 + 56;
  v45(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x644973656D6D6F70, 0xE800000000000000);
  v11(v47, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v46, 0x644973656D6D6F70, 0xE800000000000000);
  v14 = *(v10 + 48);
  v42 = v10 + 48;
  v40 = v14;
  if (!v14(v15, 1, v9))
  {
    sub_266ECB128(&unk_28788CF80);
    sub_26738115C();
  }

  (v13)(v46, 0);
  v12(v47, 0);
  v16 = *MEMORY[0x277D3E530];
  v17 = *(v44 + 104);
  v44 += 104;
  v37[0] = v17;
  v17(v38, v16, v39);
  v47[0] = 1;
  sub_26738114C();
  v18 = v45;
  v45(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674206D0);
  v19(v47, 0);
  sub_26738120C();
  v18(v7, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000064);
  v20(v47, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v46, 0x4974736575716572, 0xE900000000000064);
  if (!v40(v23, 1, v9))
  {
    sub_266ECB128(&unk_28788CFB0);
    sub_26738115C();
  }

  (v22)(v46, 0);
  v21(v47, 0);
  sub_26738120C();
  v24 = v45;
  v45(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v25(v47, 0);
  type metadata accessor for POMMESSchemaPOMMESClientOriginProcess(0);
  sub_26722A430();
  sub_26738120C();
  v24(v7, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x72506E696769726FLL, 0xED0000737365636FLL);
  v26(v47, 0);
  sub_26738120C();
  v24(v7, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v27(v47, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v46, 0x6575716552627573, 0xEC00000064497473);
  if (!v40(v30, 1, v9))
  {
    sub_266ECB128(&unk_28788CFE0);
    sub_26738115C();
  }

  (v29)(v46, 0);
  v28(v47, 0);
  sub_26738120C();
  v45(v7, 0, 1, v9);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F54686372616573, 0xEC00000064496C6FLL);
  v31(v47, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v46, 0x6F54686372616573, 0xEC00000064496C6FLL);
  if (!v40(v34, 1, v9))
  {
    sub_266ECB128(&unk_28788D010);
    sub_26738115C();
  }

  (v33)(v46, 0);
  v32(v47, 0);
  (v37[0])(v38, *MEMORY[0x277D3E508], v39);
  v47[0] = 1;
  sub_26738114C();
  v45(v7, 0, 1, v9);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267480710);
  return v35(v47, 0);
}

uint64_t sub_26722A36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722A3D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722A430()
{
  result = qword_2800F83D8;
  if (!qword_2800F83D8)
  {
    type metadata accessor for POMMESSchemaPOMMESClientOriginProcess(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F83D8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESClientOriginProcess.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267480770, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674807A0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x80000002674807C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26722A6E0(uint64_t a1)
{
  v2 = sub_26722A7E4(&qword_2800F83E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722A748(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722A7E4(&qword_2800F83E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722A7E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESClientOriginProcess(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESDebugPerformanceReported.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F83E8, 0x277D59F88);
  sub_266ECAF2C(&qword_2800F83F0, &qword_2800F83E8, 0x277D59F88);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267480830);
  return v5(v7, 0);
}

uint64_t sub_26722AA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722AA84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static POMMESSchemaPOMMESDeviceState.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v49 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v12 = v3 + 104;
  v48 = v11;
  v51[0] = 1;
  sub_26738114C();
  v50 = sub_26738116C();
  v13 = *(v50 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v50);
  v45 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F696E61706D6F63, 0xED0000656D614E6ELL);
  v16(v51, 0);
  v42 = "iri.pommes.POMMESDeviceState";
  v17 = *MEMORY[0x277D3E4E8];
  v18 = v49;
  v11(v6, v17, v49);
  v51[0] = 1;
  sub_26738114C();
  v19 = v50;
  v47 = v14;
  v14(v10, 0, 1, v50);
  v20 = a1;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v42 | 0x8000000000000000);
  v21(v51, 0);
  v42 = "isCarDoNotDisturbModeEnabled";
  v22 = v18;
  v23 = v48;
  v48(v6, v17, v22);
  v46 = v12;
  v51[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v19);
  v44 = v20;
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v42 | 0x8000000000000000);
  v24(v51, 0);
  v42 = "isCarPlayEnabled";
  v25 = v49;
  v23(v6, v17, v49);
  v51[0] = 1;
  sub_26738114C();
  v26 = v47;
  v47(v10, 0, 1, v50);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v42 | 0x8000000000000000);
  v27(v51, 0);
  v48(v6, v17, v25);
  v51[0] = 1;
  sub_26738114C();
  v28 = v50;
  v26(v10, 0, 1, v50);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x80000002674808E0);
  v29(v51, 0);
  v42 = "isLockedWithPasscode";
  v30 = v17;
  v31 = v17;
  v43 = v17;
  v32 = v48;
  v33 = v49;
  v48(v6, v30, v49);
  v51[0] = 1;
  sub_26738114C();
  v34 = v28;
  v35 = v47;
  v47(v10, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v42 | 0x8000000000000000);
  v36(v51, 0);
  v42 = "isMultiUserDevice";
  v32(v6, v31, v33);
  v51[0] = 1;
  sub_26738114C();
  v37 = v50;
  v35(v10, 0, 1, v50);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v42 | 0x8000000000000000);
  v38(v51, 0);
  v32(v6, v43, v49);
  v51[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v37);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267480940);
  return v39(v51, 0);
}

uint64_t sub_26722B33C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722B3A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722B404()
{
  result = qword_2800F83F8;
  if (!qword_2800F83F8)
  {
    sub_26722B45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F83F8);
  }

  return result;
}

unint64_t sub_26722B45C()
{
  result = qword_2800F8400;
  if (!qword_2800F8400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8400);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESFunctionPerformanceProfile.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v30 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v26 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v26[1] = a1;
  sub_26738119C();
  v27 = "SFunctionPerformanceProfile";
  v11 = *MEMORY[0x277D3E518];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v28 = v12;
  v31[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v27 | 0x8000000000000000);
  v15(v31, 0);
  v12(v6, v11, v30);
  v29 = v3 + 104;
  v31[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F697461727564, 0xEC000000734D6E49);
  v16(v31, 0);
  LODWORD(v27) = *MEMORY[0x277D3E530];
  v17 = v28;
  (v28)(v6);
  v31[0] = 1;
  sub_26738114C();
  v26[0] = v13;
  v14(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449656C6966, 0xE600000000000000);
  v18(v31, 0);
  v19 = v30;
  v17(v6, *MEMORY[0x277D3E508], v30);
  v31[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x626D754E656E696CLL, 0xEA00000000007265);
  v20(v31, 0);
  v21 = v27;
  v17(v6, v27, v19);
  v31[0] = 1;
  sub_26738114C();
  v22 = v26[0];
  v14(v10, 0, 1, v26[0]);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x46676E696C6C6163, 0xEF6E6F6974636E75);
  v23(v31, 0);
  v28(v6, v21, v30);
  v31[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674809C0);
  return v24(v31, 0);
}

uint64_t sub_26722BAFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722BB60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722BBC4()
{
  result = qword_2800F83F0;
  if (!qword_2800F83F0)
  {
    sub_26722BC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F83F0);
  }

  return result;
}

unint64_t sub_26722BC1C()
{
  result = qword_2800F83E8;
  if (!qword_2800F83E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F83E8);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000032, 0x8000000267480A30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x8000000267480A70, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x8000000267480AB0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000031, 0x8000000267480AF0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26722BEF0(uint64_t a1)
{
  v2 = sub_26722BFF4(&qword_2800F8410);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26722BF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_26722BFF4(&qword_2800F8410);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26722BFF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcomeReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x655373656D6D6F70, 0xEF64496E6F697373);
  v6(v9, 0);
  type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome(0);
  sub_26722C394();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267480B80);
  return v7(v9, 0);
}

uint64_t sub_26722C2D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722C334(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722C394()
{
  result = qword_2800F8408;
  if (!qword_2800F8408)
  {
    type metadata accessor for POMMESSchemaPOMMESKnowledgeFallbackConfirmationOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8408);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267480BE0);
  v10(v12, 0);
  sub_266ECB128(&unk_28788D040);
  return sub_2673811CC();
}

uint64_t sub_26722C698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26722C6FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26722C760()
{
  result = qword_2800F8378;
  if (!qword_2800F8378)
  {
    sub_26722C7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F8378);
  }

  return result;
}

unint64_t sub_26722C7B8()
{
  result = qword_2800F8370;
  if (!qword_2800F8370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F8370);
  }

  return result;
}

uint64_t static POMMESSchemaPOMMESKnowledgeFallbackOffered.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x655373656D6D6F70, 0xEF64496E6F697373);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, 0x8000000267480C40);
  return v11(v15, 0);
}