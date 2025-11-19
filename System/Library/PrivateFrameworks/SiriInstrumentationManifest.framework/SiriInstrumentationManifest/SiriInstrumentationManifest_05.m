uint64_t static FLOWSchemaFLOWMediaPlayerContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_26738113C();
  v5 = *(v66 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWMediaPlayerTaskType(0);
  sub_266F98134(&qword_2800F13E0, type metadata accessor for FLOWSchemaFLOWMediaPlayerTaskType);
  v62 = a1;
  sub_26738120C();
  v12 = sub_26738116C();
  v59 = *(v12 - 8);
  v13 = v59 + 56;
  v14 = *(v59 + 56);
  v14(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x657079546B736174, 0xE800000000000000);
  v15(v68, 0);
  type metadata accessor for FLOWSchemaFLOWMediaType(0);
  sub_266F98134(&qword_2800F13E8, type metadata accessor for FLOWSchemaFLOWMediaType);
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x707954616964656DLL, 0xE900000000000065);
  v16(v68, 0);
  LODWORD(v58) = *MEMORY[0x277D3E4E8];
  v17 = *(v5 + 104);
  v65 = v5 + 104;
  v63 = v17;
  (v17)(v64);
  v68[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v12);
  v18 = sub_2673811AC();
  v61 = 0xD000000000000011;
  sub_266EC637C(v11, 0xD000000000000011, 0x8000000267435620);
  v18(v68, 0);
  sub_266ECB294(0, &qword_2800F1190, 0x277D57740);
  sub_266ECAF2C(&qword_2800F1188, &qword_2800F1190, 0x277D57740);
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, 0x8000000267435640);
  v19(v68, 0);
  v20 = v64;
  v63(v64, v58, v66);
  v68[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, v61, 0x8000000267435670);
  v21(v68, 0);
  type metadata accessor for SISchemaAppleMediaProductsSubscription(0);
  sub_266F98134(&qword_2800F13F0, type metadata accessor for SISchemaAppleMediaProductsSubscription);
  sub_26738122C();
  v14(v11, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x8000000267435690);
  v22(v68, 0);
  v63(v20, v58, v66);
  v68[0] = 1;
  sub_26738114C();
  v61 = v14;
  v14(v11, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x80000002674356B0);
  v23(v68, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v67, 0xD000000000000019, 0x80000002674356B0);
  v26 = *(v59 + 48);
  v59 += 48;
  v60 = v12;
  v54 = v26;
  if (!v26(v27, 1, v12))
  {
    sub_266ECB128(&unk_287885A78);
    sub_26738115C();
  }

  (v25)(v67, 0);
  v24(v68, 0);
  sub_266ECB294(0, &qword_2800F13F8, 0x277D57638);
  sub_266ECAF2C(&qword_2800F1400, &qword_2800F13F8, 0x277D57638);
  sub_26738121C();
  v28 = v60;
  v29 = v61;
  v61(v11, 0, 1, v60);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, 0x80000002674356D0);
  v30(v68, 0);
  v63(v64, v58, v66);
  v68[0] = 1;
  sub_26738114C();
  v58 = v13;
  v29(v11, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, 0x80000002674356F0);
  v31(v68, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v67, 0xD000000000000017, 0x80000002674356F0);
  if (!v54(v34, 1, v28))
  {
    sub_266ECB128(&unk_287885AA8);
    sub_26738115C();
  }

  (v33)(v67, 0);
  v32(v68, 0);
  v35 = *MEMORY[0x277D3E538];
  v36 = v64;
  v37 = v66;
  v38 = v63;
  v63(v64, v35, v66);
  v68[0] = 1;
  sub_26738114C();
  v61(v11, 0, 1, v60);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, 0x8000000267435710);
  v39(v68, 0);
  v38(v36, v35, v37);
  v68[0] = 1;
  sub_26738114C();
  v41 = v60;
  v40 = v61;
  v61(v11, 0, 1, v60);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000026, 0x8000000267435730);
  v42(v68, 0);
  type metadata accessor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus(0);
  sub_266F98134(&qword_2800F1408, type metadata accessor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus);
  sub_26738120C();
  v40(v11, 0, 1, v41);
  v43 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x8000000267435760);
  v43(v68, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_266F98134(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v40(v11, 0, 1, v41);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0x7372655072657375, 0xEB00000000616E6FLL);
  v44(v68, 0);
  v45 = v55;
  sub_26738117C();
  v46 = sub_2673811BC();
  v48 = v47;
  v49 = *v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v48 = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = sub_266ECAD54(0, v49[2] + 1, 1, v49);
    *v48 = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_266ECAD54(v51 > 1, v52 + 1, 1, v49);
    *v48 = v49;
  }

  v49[2] = v52 + 1;
  (*(v56 + 32))(v49 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v52, v45, v57);
  return v46(v68, 0);
}

uint64_t sub_266F98070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F980D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F98134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLOWSchemaFLOWMediaPlayerEndpoint.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674357E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267435800, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267435820, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267435850, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267435880, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674358A0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x80000002674358D0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267435900, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_266F98608(uint64_t a1)
{
  v2 = sub_266F9870C(&qword_2800F1420);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F98670(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9870C(&qword_2800F1420);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9870C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerMediaItem.makeTypeManifestAndEnsureFields(in:)@<X0>(void (*a1)(char *, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v4 + 104);
  v45 = v3;
  v47 = v13;
  v48 = v4 + 104;
  v13(v7, v12, v3);
  v50[0] = 1;
  v43 = v7;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v46 = v15 + 56;
  v16(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x656C746974, 0xE500000000000000);
  v17(v50, 0);
  v44 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v49, 0x656C746974, 0xE500000000000000);
  v42 = *(v15 + 48);
  if (!v42(v20, 1, v14))
  {
    sub_266ECB128(&unk_287885AD8);
    sub_26738115C();
  }

  (v19)(v49, 0);
  v18(v50, 0);
  v40 = v12;
  v47(v43, v12, v45);
  v50[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x747369747261, 0xE600000000000000);
  v21(v50, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v49, 0x747369747261, 0xE600000000000000);
  if (!v42(v24, 1, v14))
  {
    sub_266ECB128(&unk_287885B00);
    sub_26738115C();
  }

  (v23)(v49, 0);
  v22(v50, 0);
  type metadata accessor for FLOWSchemaFLOWMediaType(0);
  sub_266F99140(&qword_2800F13E8, type metadata accessor for FLOWSchemaFLOWMediaType);
  sub_26738120C();
  v16(v11, 0, 1, v14);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x707954616964656DLL, 0xE900000000000065);
  v25(v50, 0);
  v47(v43, v40, v45);
  v50[0] = 1;
  sub_26738114C();
  v41 = v16;
  v16(v11, 0, 1, v14);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x6449797469746E65, 0xE800000000000000);
  v26(v50, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v49, 0x6449797469746E65, 0xE800000000000000);
  if (!v42(v29, 1, v14))
  {
    sub_266ECB128(&unk_287885B28);
    sub_26738115C();
  }

  (v28)(v49, 0);
  v27(v50, 0);
  v31 = v43;
  LODWORD(v42) = *MEMORY[0x277D3E4E8];
  v30 = v42;
  v32 = v45;
  v47(v43, v42, v45);
  v50[0] = 1;
  sub_26738114C();
  v33 = v41;
  v41(v11, 0, 1, v14);
  v39 = v14;
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E7265746C417369, 0xED00006576697461);
  v34(v50, 0);
  v35 = v47;
  v47(v31, v30, v32);
  v50[0] = 1;
  sub_26738114C();
  v33(v11, 0, 1, v14);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0x736552736C4E7369, 0xEB00000000746C75);
  v36(v50, 0);
  v35(v31, v42, v32);
  v50[0] = 1;
  sub_26738114C();
  v33(v11, 0, 1, v39);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x8000000267435960);
  return v37(v50, 0);
}

uint64_t sub_266F99034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F99098(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F99140(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F99188()
{
  result = qword_2800F1430;
  if (!qword_2800F1430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1430);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerPlaybackContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v28, 0);
  type metadata accessor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource(0);
  sub_266F999F8(&qword_2800F13C0, type metadata accessor for FLOWSchemaFLOWMediaPlayerChosenExecutionSource);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F69747563657865, 0xEF656372756F536ELL);
  v10(v28, 0);
  type metadata accessor for FLOWSchemaFLOWMediaPlayerEndpoint(0);
  sub_266F999F8(&qword_2800F1418, type metadata accessor for FLOWSchemaFLOWMediaPlayerEndpoint);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E696F70646E65, 0xE800000000000000);
  v11(v28, 0);
  type metadata accessor for FLOWSchemaFLOWMediaPlayerContentSource(0);
  sub_266F999F8(&qword_2800F13D0, type metadata accessor for FLOWSchemaFLOWMediaPlayerContentSource);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x53746E65746E6F63, 0xED0000656372756FLL);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800F1438, 0x277D57650);
  sub_266ECAF2C(&qword_2800F1440, &qword_2800F1438, 0x277D57650);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674359C0);
  v13(v28, 0);
  sub_266ECB294(0, &qword_2800F1448, 0x277D57648);
  sub_266ECAF2C(&qword_2800F1450, &qword_2800F1448, 0x277D57648);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x7473696C79616C70, 0xEF747865746E6F43);
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

uint64_t sub_266F99934(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F99998(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F999F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLOWSchemaFLOWMediaPlayerPlaybackContextTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53[1] = a2;
  v60 = sub_26738113C();
  v3 = *(v60 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v60);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v53 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v55 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496B6E696CLL, 0xE600000000000000);
  v14(v66, 0);
  v15 = *(v3 + 104);
  v54 = *MEMORY[0x277D3E530];
  v58 = v3 + 104;
  v56 = v15;
  v15(v6);
  v66[0] = 1;
  v57 = v6;
  sub_26738114C();
  v63 = v13;
  v64 = v12 + 56;
  v13(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  v59 = v10;
  sub_266EC637C(v10, 0x54746E65746E6F63, 0xEC000000656C7469);
  v16(v66, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v65, 0x54746E65746E6F63, 0xEC000000656C7469);
  v19 = v11;
  v61 = *(v12 + 48);
  v62 = v12 + 48;
  if (!v61(v20, 1, v11))
  {
    sub_266ECB128(&unk_287885B50);
    sub_26738115C();
  }

  (v18)(v65, 0);
  v17(v66, 0);
  v56(v57, *MEMORY[0x277D3E538], v60);
  v66[0] = 1;
  v21 = v59;
  sub_26738114C();
  v63(v21, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v21, 0x64496D616461, 0xE600000000000000);
  v22(v66, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v65, 0x64496D616461, 0xE600000000000000);
  if (!v61(v25, 1, v11))
  {
    sub_266ECB128(&unk_287885B78);
    sub_26738115C();
  }

  (v24)(v65, 0);
  v23(v66, 0);
  v56(v57, v54, v60);
  v66[0] = 1;
  sub_26738114C();
  v63(v21, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v21, 0x745364496D616461, 0xEC000000676E6972);
  v26(v66, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v65, 0x745364496D616461, 0xEC000000676E6972);
  if (!v61(v29, 1, v11))
  {
    sub_266ECB128(&unk_287885BA8);
    sub_26738115C();
  }

  (v28)(v65, 0);
  v27(v66, 0);
  sub_266ECB294(0, &qword_2800F1430, 0x277D57630);
  sub_266ECAF2C(&qword_2800F1428, &qword_2800F1430, 0x277D57630);
  v30 = v59;
  sub_26738122C();
  v63(v30, 0, 1, v11);
  v31 = sub_2673811AC();
  sub_266EC637C(v30, 0x6552686372616573, 0xED000073746C7573);
  v31(v66, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v65, 0x6552686372616573, 0xED000073746C7573);
  if (!v61(v34, 1, v11))
  {
    sub_266ECB128(&unk_287885BD0);
    sub_26738115C();
  }

  (v33)(v65, 0);
  v32(v66, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260);
  v35 = v59;
  sub_26738120C();
  v63(v35, 0, 1, v11);
  v36 = sub_2673811AC();
  sub_266EC637C(v35, 0x6172476F73553275, 0xEA00000000006870);
  v36(v66, 0);
  v37 = sub_2673811AC();
  v38 = sub_266ECB6CC(v65, 0x6172476F73553275, 0xEA00000000006870);
  if (!v61(v39, 1, v11))
  {
    sub_266ECB128(&unk_287885BF8);
    sub_26738115C();
  }

  (v38)(v65, 0);
  v37(v66, 0);
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270);
  v40 = v59;
  sub_26738120C();
  v63(v40, 0, 1, v11);
  v41 = sub_2673811AC();
  sub_266EC637C(v40, 0x6172476F73553275, 0xEF31726569546870);
  v41(v66, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v65, 0x6172476F73553275, 0xEF31726569546870);
  if (!v61(v44, 1, v11))
  {
    sub_266ECB128(&unk_287885C20);
    sub_26738115C();
  }

  (v43)(v65, 0);
  v42(v66, 0);
  LODWORD(v62) = *MEMORY[0x277D3E4E8];
  v45 = v57;
  v46 = v60;
  v47 = v56;
  (v56)(v57);
  v66[0] = 1;
  sub_26738114C();
  v48 = v19;
  v53[0] = v19;
  v49 = v63;
  v63(v40, 0, 1, v48);
  v50 = sub_2673811AC();
  sub_266EC637C(v40, 0x736552736C4E7369, 0xEB00000000746C75);
  v50(v66, 0);
  v47(v45, v62, v46);
  v66[0] = 1;
  sub_26738114C();
  v49(v40, 0, 1, v53[0]);
  v51 = sub_2673811AC();
  sub_266EC637C(v40, 0xD000000000000014, 0x8000000267435960);
  return v51(v66, 0);
}

uint64_t sub_266F9A6F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9A754(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWMediaPlayerPlaylistContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype(0);
  sub_266F9AC64(&qword_2800F1458, type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7473696C79616C70, 0xEF65707974627553);
  return v5(v7, 0);
}

uint64_t sub_266F9A9C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype(0);
  sub_266F9AC64(&qword_2800F1458, type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7473696C79616C70, 0xEF65707974627553);
  return v5(v7, 0);
}

uint64_t sub_266F9AB58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9ABBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F9AC64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F9ACAC()
{
  result = qword_2800F1448;
  if (!qword_2800F1448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1448);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerPlaylistSubtype.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267435AA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267435AD0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267435B00, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F9AF0C(uint64_t a1)
{
  v2 = sub_266F9B010(&qword_2800F1460);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9AF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9B010(&qword_2800F1460);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9B010(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerPlaylistSubtype(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerRadioStationContext.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for FLOWSchemaFLOWMediaPlayerRadioStationSubtype(0);
  sub_266F9B3A0();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267435B70);
  return v7(v9, 0);
}

uint64_t sub_266F9B2DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9B340(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F9B3A0()
{
  result = qword_2800F1468;
  if (!qword_2800F1468)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerRadioStationSubtype(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1468);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerRadioStationContextTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x536E6F6974617473, 0xEF656D614E646565);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x536E6F6974617473, 0xEF656D614E646565);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287885C48);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_266F9B820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9B884(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWMediaPlayerRadioStationSubtype.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x8000000267435C20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267435C50, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267435C80, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267435CB0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x8000000267435CE0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x8000000267435D10, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000026, 0x8000000267435D40, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x8000000267435D70, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003BLL, 0x8000000267435DA0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266F9BDE0(uint64_t a1)
{
  v2 = sub_266F9BEE4(&qword_2800F1470);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9BE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9BEE4(&qword_2800F1470);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9BEE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerRadioStationSubtype(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x8000000267435E20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x8000000267435E50, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x8000000267435E80, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x8000000267435EC0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000035, 0x8000000267435F00, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003BLL, 0x8000000267435F40, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003FLL, 0x8000000267435F80, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_266F9C304(uint64_t a1)
{
  v2 = sub_266F9C408(&qword_2800F1478);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9C36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9C408(&qword_2800F1478);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9C408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerSetAirPlayRoutesStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaPlayerTaskType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v242 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267436000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v242;

  v1(v281, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v243 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267436020, v11);
  v12 = *v9;
  *v9 = v243;

  v7(v281, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267436040, v17);
  v18 = *v15;
  *v15 = v244;

  v13(v281, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v245 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267436060, v23);
  v24 = *v21;
  *v21 = v245;

  v19(v281, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267436080, v29);
  v30 = *v27;
  *v27 = v246;

  v25(v281, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v247 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x80000002674360A0, v35);
  v36 = *v33;
  *v33 = v247;

  v31(v281, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x80000002674360C0, v41);
  v42 = *v39;
  *v39 = v248;

  v37(v281, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v249 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000027, 0x80000002674360E0, v47);
  v48 = *v45;
  *v45 = v249;

  v43(v281, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x8000000267436110, v53);
  v54 = *v51;
  *v51 = v250;

  v49(v281, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000027, 0x8000000267436140, v59);
  v60 = *v57;
  *v57 = v251;

  v55(v281, 0);
  v61 = sub_266ECB128(&unk_287885C70);
  v63 = v62;
  v64 = sub_2673810FC();
  v66 = v65;
  v67 = *v65;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v66;
  *v66 = 0x8000000000000000;
  sub_266ECD4CC(v61, v63, 9, v68);
  *v66 = v252;
  v64(v281, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = *v70;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v253 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x8000000267436170, v73);
  v74 = *v71;
  *v71 = v253;

  v69(v281, 0);
  v75 = sub_266ECB128(&unk_287885C98);
  v77 = v76;
  v78 = sub_2673810FC();
  v80 = v79;
  v81 = *v79;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v254 = *v80;
  *v80 = 0x8000000000000000;
  sub_266ECD4CC(v75, v77, 10, v82);
  *v80 = v254;
  v78(v281, 0);
  v83 = sub_26738111C();
  v85 = v84;
  v86 = *v84;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v255 = *v85;
  *v85 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000020, 0x80000002674361A0, v87);
  v88 = *v85;
  *v85 = v255;

  v83(v281, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = *v90;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v256 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001FLL, 0x80000002674361D0, v93);
  v94 = *v91;
  *v91 = v256;

  v89(v281, 0);
  v95 = sub_26738111C();
  v97 = v96;
  v98 = *v96;
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v257 = *v97;
  *v97 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000022, 0x80000002674361F0, v99);
  v100 = *v97;
  *v97 = v257;

  v95(v281, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = *v102;
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v258 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000020, 0x8000000267436220, v105);
  v106 = *v103;
  *v103 = v258;

  v101(v281, 0);
  v107 = sub_26738111C();
  v109 = v108;
  v110 = *v108;
  v111 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v109;
  *v109 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000022, 0x8000000267436250, v111);
  v112 = *v109;
  *v109 = v259;

  v107(v281, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = *v114;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v260 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001CLL, 0x8000000267436280, v117);
  v118 = *v115;
  *v115 = v260;

  v113(v281, 0);
  v119 = sub_26738111C();
  v121 = v120;
  v122 = *v120;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v261 = *v121;
  *v121 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001ELL, 0x80000002674362A0, v123);
  v124 = *v121;
  *v121 = v261;

  v119(v281, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = *v126;
  v129 = swift_isUniquelyReferenced_nonNull_native();
  v262 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000022, 0x80000002674362C0, v129);
  v130 = *v127;
  *v127 = v262;

  v125(v281, 0);
  v131 = sub_26738111C();
  v133 = v132;
  v134 = *v132;
  v135 = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v133;
  *v133 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001ELL, 0x80000002674362F0, v135);
  v136 = *v133;
  *v133 = v263;

  v131(v281, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = *v138;
  v141 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000021, 0x8000000267436310, v141);
  v142 = *v139;
  *v139 = v264;

  v137(v281, 0);
  v143 = sub_26738111C();
  v145 = v144;
  v146 = *v144;
  v147 = swift_isUniquelyReferenced_nonNull_native();
  v265 = *v145;
  *v145 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000029, 0x8000000267436340, v147);
  v148 = *v145;
  *v145 = v265;

  v143(v281, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = *v150;
  v153 = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001FLL, 0x8000000267436370, v153);
  v154 = *v151;
  *v151 = v266;

  v149(v281, 0);
  v155 = sub_26738111C();
  v157 = v156;
  v158 = *v156;
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v157;
  *v157 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000025, 0x8000000267436390, v159);
  v160 = *v157;
  *v157 = v267;

  v155(v281, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = *v162;
  v165 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000022, 0x80000002674363C0, v165);
  v166 = *v163;
  *v163 = v268;

  v161(v281, 0);
  v167 = sub_26738111C();
  v169 = v168;
  v170 = *v168;
  v171 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v169;
  *v169 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000022, 0x80000002674363F0, v171);
  v172 = *v169;
  *v169 = v269;

  v167(v281, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = *v174;
  v177 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000027, 0x8000000267436420, v177);
  v178 = *v175;
  *v175 = v270;

  v173(v281, 0);
  v179 = sub_26738111C();
  v181 = v180;
  v182 = *v180;
  v183 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v181;
  *v181 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000028, 0x8000000267436450, v183);
  v184 = *v181;
  *v181 = v271;

  v179(v281, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = *v186;
  v189 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000002ALL, 0x8000000267436480, v189);
  v190 = *v187;
  *v187 = v272;

  v185(v281, 0);
  v191 = sub_26738111C();
  v193 = v192;
  v194 = *v192;
  v195 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v193;
  *v193 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001CLL, 0x80000002674364B0, v195);
  v196 = *v193;
  *v193 = v273;

  v191(v281, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = *v198;
  v201 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000025, 0x80000002674364D0, v201);
  v202 = *v199;
  *v199 = v274;

  v197(v281, 0);
  v203 = sub_26738111C();
  v205 = v204;
  v206 = *v204;
  v207 = swift_isUniquelyReferenced_nonNull_native();
  v275 = *v205;
  *v205 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000002ALL, 0x8000000267436500, v207);
  v208 = *v205;
  *v205 = v275;

  v203(v281, 0);
  v209 = sub_26738111C();
  v211 = v210;
  v212 = *v210;
  v213 = swift_isUniquelyReferenced_nonNull_native();
  v276 = *v211;
  *v211 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000031, 0x8000000267436530, v213);
  v214 = *v211;
  *v211 = v276;

  v209(v281, 0);
  v215 = sub_26738111C();
  v217 = v216;
  v218 = *v216;
  v219 = swift_isUniquelyReferenced_nonNull_native();
  v277 = *v217;
  *v217 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000020, 0x8000000267436570, v219);
  v220 = *v217;
  *v217 = v277;

  v215(v281, 0);
  v221 = sub_266ECB128(&unk_287885CC0);
  v223 = v222;
  v224 = sub_2673810FC();
  v226 = v225;
  v227 = *v225;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v278 = *v226;
  *v226 = 0x8000000000000000;
  sub_266ECD4CC(v221, v223, 33, v228);
  *v226 = v278;
  v224(v281, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v279 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000025, 0x80000002674365A0, v233);
  v234 = *v231;
  *v231 = v279;

  v229(v281, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v280 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000023, 0x80000002674365D0, v239);
  v240 = *v237;
  *v237 = v280;

  return v235(v281, 0);
}

uint64_t sub_266F9D69C(uint64_t a1)
{
  v2 = sub_266F9D7A0(&qword_2800F1480);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9D704(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9D7A0(&qword_2800F1480);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9D7A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaPlayerTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMediaType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267436630, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v176;

  v1(v205, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267436650, v11);
  v12 = *v9;
  *v9 = v177;

  v7(v205, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267436670, v17);
  v18 = *v15;
  *v15 = v178;

  v13(v205, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267436690, v23);
  v24 = *v21;
  *v21 = v179;

  v19(v205, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x80000002674366B0, v29);
  v30 = *v27;
  *v27 = v180;

  v25(v205, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000010, 0x80000002674366D0, v35);
  v36 = *v33;
  *v33 = v181;

  v31(v205, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x80000002674366F0, v41);
  v42 = *v39;
  *v39 = v182;

  v37(v205, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000013, 0x8000000267436710, v47);
  v48 = *v45;
  *v45 = v183;

  v43(v205, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000015, 0x8000000267436730, v53);
  v54 = *v51;
  *v51 = v184;

  v49(v205, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000010, 0x8000000267436750, v59);
  v60 = *v57;
  *v57 = v185;

  v55(v205, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000013, 0x8000000267436770, v65);
  v66 = *v63;
  *v63 = v186;

  v61(v205, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001CLL, 0x8000000267436790, v71);
  v72 = *v69;
  *v69 = v187;

  v67(v205, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000019, 0x80000002674367B0, v77);
  v78 = *v75;
  *v75 = v188;

  v73(v205, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000012, 0x80000002674367D0, v83);
  v84 = *v81;
  *v81 = v189;

  v79(v205, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000019, 0x80000002674367F0, v89);
  v90 = *v87;
  *v87 = v190;

  v85(v205, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000016, 0x8000000267436810, v95);
  v96 = *v93;
  *v93 = v191;

  v91(v205, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000015, 0x8000000267436830, v101);
  v102 = *v99;
  *v99 = v192;

  v97(v205, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000025, 0x8000000267436850, v107);
  v108 = *v105;
  *v105 = v193;

  v103(v205, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001DLL, 0x8000000267436880, v113);
  v114 = *v111;
  *v111 = v194;

  v109(v205, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001DLL, 0x80000002674368A0, v119);
  v120 = *v117;
  *v117 = v195;

  v115(v205, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000018, 0x80000002674368C0, v125);
  v126 = *v123;
  *v123 = v196;

  v121(v205, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001BLL, 0x80000002674368E0, v131);
  v132 = *v129;
  *v129 = v197;

  v127(v205, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000016, 0x8000000267436900, v137);
  v138 = *v135;
  *v135 = v198;

  v133(v205, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000012, 0x8000000267436920, v143);
  v144 = *v141;
  *v141 = v199;

  v139(v205, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000014, 0x8000000267436940, v149);
  v150 = *v147;
  *v147 = v200;

  v145(v205, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000012, 0x8000000267436960, v155);
  v156 = *v153;
  *v153 = v201;

  v151(v205, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000015, 0x8000000267436980, v161);
  v162 = *v159;
  *v159 = v202;

  v157(v205, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000015, 0x80000002674369A0, v167);
  v168 = *v165;
  *v165 = v203;

  v163(v205, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000013, 0x80000002674369C0, v173);
  v174 = *v171;
  *v171 = v204;

  return v169(v205, 0);
}

uint64_t sub_266F9E584(uint64_t a1)
{
  v2 = sub_266F9E688(&qword_2800F1488);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9E5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9E688(&qword_2800F1488);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9E688(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMessageType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267436A10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v40;

  v1(v46, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267436A30, v11);
  v12 = *v9;
  *v9 = v41;

  v7(v46, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267436A50, v17);
  v18 = *v15;
  *v15 = v42;

  v13(v46, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267436A70, v23);
  v24 = *v21;
  *v21 = v43;

  v19(v46, 0);
  v25 = sub_266ECB128(&unk_287885CE8);
  v27 = v26;
  v28 = sub_2673810FC();
  v30 = v29;
  v31 = *v29;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v30;
  *v30 = 0x8000000000000000;
  sub_266ECD4CC(v25, v27, 3, v32);
  *v30 = v44;
  v28(v46, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = *v34;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267436A90, v37);
  v38 = *v35;
  *v35 = v45;

  return v33(v46, 0);
}

uint64_t sub_266F9EA34(uint64_t a1)
{
  v2 = sub_266F9EB38(&qword_2800F1498);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9EA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9EB38(&qword_2800F1498);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9EB38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMessageType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWNotificationContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v19 = "ificationContext";
  v20 = *MEMORY[0x277D3E4E8];
  v21 = *(v1 + 104);
  v18 = v0;
  v21(v4);
  v23[0] = 1;
  sub_26738114C();
  v22 = sub_26738116C();
  v9 = *(*(v22 - 8) + 56);
  v9(v8, 0, 1, v22);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v19 | 0x8000000000000000);
  v10(v23, 0);
  v11 = v20;
  v12 = v0;
  v13 = v21;
  (v21)(v4, v20, v12);
  v23[0] = 1;
  sub_26738114C();
  v9(v8, 0, 1, v22);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x72616D6D75537369, 0xEC00000064657A69);
  v14(v23, 0);
  (v13)(v4, v11, v18);
  v23[0] = 1;
  sub_26738114C();
  v9(v8, 0, 1, v22);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x696C686769487369, 0xEB00000000746867);
  return v15(v23, 0);
}

uint64_t sub_266F9EF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9EFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F9F03C()
{
  result = qword_2800F10D0;
  if (!qword_2800F10D0)
  {
    sub_266F9F094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F10D0);
  }

  return result;
}

unint64_t sub_266F9F094()
{
  result = qword_2800F10C8;
  if (!qword_2800F10C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F10C8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPegasusContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
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
  v11(v27, 0);
  type metadata accessor for FLOWSchemaFLOWPegasusProductArea(0);
  sub_266F9FBEC(&qword_2800F14A0, type metadata accessor for FLOWSchemaFLOWPegasusProductArea);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x41746375646F7270, 0xEB00000000616572);
  v12(v27, 0);
  type metadata accessor for FLOWSchemaFLOWPegasusProvider(0);
  sub_266F9FBEC(&qword_2800F14A8, type metadata accessor for FLOWSchemaFLOWPegasusProvider);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x507972616D697270, 0xEF72656469766F72);
  v13(v27, 0);
  v23 = a1;
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F7250726568746FLL, 0xEE00737265646976);
  v14(v27, 0);
  sub_266ECB294(0, &qword_2800F14B0, 0x277D59950);
  sub_266ECAF2C(&qword_2800F14B8, &qword_2800F14B0, 0x277D59950);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65746E69, 0xE600000000000000);
  v15(v27, 0);
  (*(v25 + 104))(v24, *MEMORY[0x277D3E4E8], v26);
  v27[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267436B40);
  v16(v27, 0);
  sub_266ECB294(0, &qword_2800F12C8, 0x277D575C0);
  sub_266ECAF2C(&qword_2800F12C0, &qword_2800F12C8, 0x277D575C0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x636578454151676BLL, 0xED00006E6F697475);
  v17(v27, 0);
  sub_266ECB294(0, &qword_2800F14C0, 0x277D57730);
  sub_266ECAF2C(&qword_2800F14C8, &qword_2800F14C0, 0x277D57730);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267436B60);
  v18(v27, 0);
  sub_266ECB294(0, &qword_2800F14D0, 0x277D576B0);
  sub_266ECAF2C(&qword_2800F14D8, &qword_2800F14D0, 0x277D576B0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x78457374726F7073, 0xEF6E6F6974756365);
  v19(v27, 0);
  sub_266ECB294(0, &qword_2800F1030, 0x277D57518);
  sub_266ECAF2C(&qword_2800F1028, &qword_2800F1030, 0x277D57518);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267436B80);
  v20(v27, 0);
  sub_266ECB294(0, &qword_2800F1398, 0x277D57618);
  sub_266ECAF2C(&qword_2800F1390, &qword_2800F1398, 0x277D57618);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x636578457370616DLL, 0xED00006E6F697475);
  return v21(v27, 0);
}

uint64_t sub_266F9FB28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9FB8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F9FBEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLOWSchemaFLOWPegasusContextTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13[-v2];
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
  v6(v13, 0);
  sub_266ECB294(0, &qword_2800F14E0, 0x277D59960);
  sub_266ECAF2C(&qword_2800F14E8, &qword_2800F14E0, 0x277D59960);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6954746E65746E69, 0xEB00000000317265);
  v7(v13, 0);
  sub_266ECB294(0, &qword_2800F12D8, 0x277D575C8);
  sub_266ECAF2C(&qword_2800F12D0, &qword_2800F12D8, 0x277D575C8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267436BE0);
  v8(v13, 0);
  sub_266ECB294(0, &qword_2800F14F0, 0x277D57738);
  sub_266ECAF2C(&qword_2800F14F8, &qword_2800F14F0, 0x277D57738);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267436C00);
  v9(v13, 0);
  sub_266ECB294(0, &qword_2800F1500, 0x277D576F8);
  sub_266ECAF2C(&qword_2800F1508, &qword_2800F1500, 0x277D576F8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267436C20);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F13A8, 0x277D57620);
  sub_266ECAF2C(&qword_2800F13A0, &qword_2800F13A8, 0x277D57620);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v11 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267436C40);
  return v11(v13, 0);
}

uint64_t sub_266FA0294(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA02F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWPegasusProductArea.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267436C90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v98;

  v1(v114, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267436CB0, v11);
  v12 = *v9;
  *v9 = v99;

  v7(v114, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267436CE0, v17);
  v18 = *v15;
  *v15 = v100;

  v13(v114, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267436D10, v23);
  v24 = *v21;
  *v21 = v101;

  v19(v114, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x8000000267436D40, v29);
  v30 = *v27;
  *v27 = v102;

  v25(v114, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267436D70, v35);
  v36 = *v33;
  *v33 = v103;

  v31(v114, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x8000000267436DA0, v41);
  v42 = *v39;
  *v39 = v104;

  v37(v114, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267436DC0, v47);
  v48 = *v45;
  *v45 = v105;

  v43(v114, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267436DE0, v53);
  v54 = *v51;
  *v51 = v106;

  v49(v114, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267436E00, v59);
  v60 = *v57;
  *v57 = v107;

  v55(v114, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001DLL, 0x8000000267436E20, v65);
  v66 = *v63;
  *v63 = v108;

  v61(v114, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ALL, 0x8000000267436E40, v71);
  v72 = *v69;
  *v69 = v109;

  v67(v114, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000021, 0x8000000267436E60, v77);
  v78 = *v75;
  *v75 = v110;

  v73(v114, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001CLL, 0x8000000267436E90, v83);
  v84 = *v81;
  *v81 = v111;

  v79(v114, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001CLL, 0x8000000267436EB0, v89);
  v90 = *v87;
  *v87 = v112;

  v85(v114, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000022, 0x8000000267436ED0, v95);
  v96 = *v93;
  *v93 = v113;

  return v91(v114, 0);
}

uint64_t sub_266FA0B9C(uint64_t a1)
{
  v2 = sub_266FA0CA0(&qword_2800F1510);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA0C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA0CA0(&qword_2800F1510);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA0CA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPegasusProductArea(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPegasusProvider.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267436F30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v104;

  v1(v121, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267436F50, v11);
  v12 = *v9;
  *v9 = v105;

  v7(v121, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267436F80, v17);
  v18 = *v15;
  *v15 = v106;

  v13(v121, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267436FA0, v23);
  v24 = *v21;
  *v21 = v107;

  v19(v121, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267436FD0, v29);
  v30 = *v27;
  *v27 = v108;

  v25(v121, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267437000, v35);
  v36 = *v33;
  *v33 = v109;

  v31(v121, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x8000000267437030, v41);
  v42 = *v39;
  *v39 = v110;

  v37(v121, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ALL, 0x8000000267437050, v47);
  v48 = *v45;
  *v45 = v111;

  v43(v121, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267437070, v53);
  v54 = *v51;
  *v51 = v112;

  v49(v121, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000018, 0x8000000267437090, v59);
  v60 = *v57;
  *v57 = v113;

  v55(v121, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000019, 0x80000002674370B0, v65);
  v66 = *v63;
  *v63 = v114;

  v61(v121, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000019, 0x80000002674370D0, v71);
  v72 = *v69;
  *v69 = v115;

  v67(v121, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000027, 0x80000002674370F0, v77);
  v78 = *v75;
  *v75 = v116;

  v73(v121, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x8000000267437120, v83);
  v84 = *v81;
  *v81 = v117;

  v79(v121, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001CLL, 0x8000000267437140, v89);
  v90 = *v87;
  *v87 = v118;

  v85(v121, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000019, 0x8000000267437160, v95);
  v96 = *v93;
  *v93 = v119;

  v91(v121, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000019, 0x8000000267437180, v101);
  v102 = *v99;
  *v99 = v120;

  return v97(v121, 0);
}

uint64_t sub_266FA1524(uint64_t a1)
{
  v2 = sub_266FA1628(&qword_2800F1518);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA158C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA1628(&qword_2800F1518);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA1628(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPegasusProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPersonType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674371D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v92;

  v1(v107, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x80000002674371F0, v11);
  v12 = *v9;
  *v9 = v93;

  v7(v107, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267437210, v17);
  v18 = *v15;
  *v15 = v94;

  v13(v107, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267437230, v23);
  v24 = *v21;
  *v21 = v95;

  v19(v107, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267437250, v29);
  v30 = *v27;
  *v27 = v96;

  v25(v107, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x8000000267437270, v35);
  v36 = *v33;
  *v33 = v97;

  v31(v107, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x8000000267437290, v41);
  v42 = *v39;
  *v39 = v98;

  v37(v107, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x80000002674372B0, v47);
  v48 = *v45;
  *v45 = v99;

  v43(v107, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001FLL, 0x80000002674372D0, v53);
  v54 = *v51;
  *v51 = v100;

  v49(v107, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001BLL, 0x80000002674372F0, v59);
  v60 = *v57;
  *v57 = v101;

  v55(v107, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x8000000267437310, v65);
  v66 = *v63;
  *v63 = v102;

  v61(v107, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x8000000267437330, v71);
  v72 = *v69;
  *v69 = v103;

  v67(v107, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000014, 0x8000000267437360, v77);
  v78 = *v75;
  *v75 = v104;

  v73(v107, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000019, 0x8000000267437380, v83);
  v84 = *v81;
  *v81 = v105;

  v79(v107, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001CLL, 0x80000002674373A0, v89);
  v90 = *v87;
  *v87 = v106;

  return v85(v107, 0);
}

uint64_t sub_266FA1DD0(uint64_t a1)
{
  v2 = sub_266FA1ED4(&qword_2800F1528);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA1E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA1ED4(&qword_2800F1528);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA1ED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPersonType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhoneCallAppType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674373F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267437410, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267437440, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267437470, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FA219C(uint64_t a1)
{
  v2 = sub_266FA22A0(&qword_2800F1538);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA2204(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA22A0(&qword_2800F1538);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA22A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhoneCallAppType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhoneCallContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWPhoneCallType(0);
  sub_266FA2D24(&qword_2800F1540, type metadata accessor for FLOWSchemaFLOWPhoneCallType);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C6143656E6F6870, 0xED0000657079546CLL);
  v14(v37, 0);
  type metadata accessor for FLOWSchemaFLOWRecipientType(0);
  sub_266FA2D24(&qword_2800F1548, type metadata accessor for FLOWSchemaFLOWRecipientType);
  v35 = a1;
  sub_26738122C();
  v33 = v12 + 56;
  v34 = v13;
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65697069636572, 0xED00006570795474);
  v15(v37, 0);
  v32 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v36, 0x6E65697069636572, 0xED00006570795474);
  if (!(*(v12 + 48))(v18, 1, v11))
  {
    sub_266ECB128(&unk_287885D10);
    sub_26738115C();
  }

  (v17)(v36, 0);
  v16(v37, 0);
  type metadata accessor for FLOWSchemaFLOWPhoneCallAppType(0);
  sub_266FA2D24(&qword_2800F1530, type metadata accessor for FLOWSchemaFLOWPhoneCallAppType);
  sub_26738120C();
  v19 = v34;
  v34(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674374D0);
  v20(v37, 0);
  sub_266ECB294(0, &qword_2800F1550, 0x277D57688);
  sub_266ECAF2C(&qword_2800F1558, &qword_2800F1550, 0x277D57688);
  sub_26738120C();
  v19(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674374F0);
  v21(v37, 0);
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  sub_266FA2D24(&qword_2800F1520, type metadata accessor for FLOWSchemaFLOWPersonType);
  sub_26738122C();
  v19(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x79546E6F73726570, 0xEA00000000006570);
  v22(v37, 0);
  (*(v30 + 104))(v29, *MEMORY[0x277D3E4E8], v31);
  v37[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267437510);
  v23(v37, 0);
  type metadata accessor for FLOWSchemaFLOWSearchCallHistoryIntent(0);
  sub_266FA2D24(&qword_2800F1560, type metadata accessor for FLOWSchemaFLOWSearchCallHistoryIntent);
  sub_26738120C();
  v19(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267437530);
  v24(v37, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_266FA2D24(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v19(v10, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x7372655072657375, 0xEB00000000616E6FLL);
  v25(v37, 0);
  sub_266ECB294(0, &qword_2800F1020, 0x277D57508);
  sub_266ECAF2C(&qword_2800F1018, &qword_2800F1020, 0x277D57508);
  sub_26738120C();
  v19(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x746361746E6F63, 0xE700000000000000);
  return v26(v37, 0);
}

uint64_t sub_266FA2C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA2CC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA2D24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLOWSchemaFLOWPhoneCallEmergencyContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWEmergencyCallType(0);
  sub_266FA30A0(&qword_2800F1158, type metadata accessor for FLOWSchemaFLOWEmergencyCallType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267437590);
  return v5(v7, 0);
}

uint64_t sub_266FA2F94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA2FF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA30A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FA30E8()
{
  result = qword_2800F1550;
  if (!qword_2800F1550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1550);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhoneCallType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674375E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267437600, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267437620, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FA334C(uint64_t a1)
{
  v2 = sub_266FA3450(&qword_2800F1568);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA33B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA3450(&qword_2800F1568);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA3450(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhoneCallType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhotosContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWPhotosTaskType(0);
  sub_266FA3904(&qword_2800F1570, type metadata accessor for FLOWSchemaFLOWPhotosTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  v6(v10, 0);
  type metadata accessor for FLOWSchemaFLOWPhotosEntityType(0);
  sub_266FA3904(&qword_2800F1578, type metadata accessor for FLOWSchemaFLOWPhotosEntityType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954797469746E65, 0xEA00000000006570);
  v7(v10, 0);
  type metadata accessor for FLOWSchemaFLOWPhotosFaceType(0);
  sub_266FA3904(&qword_2800F1580, type metadata accessor for FLOWSchemaFLOWPhotosFaceType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6570795465636166, 0xE800000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FA37F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA385C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA3904(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FA394C()
{
  result = qword_2800F10D8;
  if (!qword_2800F10D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F10D8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhotosEntityType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674376A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674376C0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x80000002674376E0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FA3BAC(uint64_t a1)
{
  v2 = sub_266FA3CB0(&qword_2800F1588);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA3C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA3CB0(&qword_2800F1588);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA3CB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhotosEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhotosFaceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267437730, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267437750, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267437770, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267437790, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FA3F7C(uint64_t a1)
{
  v2 = sub_266FA4080(&qword_2800F1590);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA3FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA4080(&qword_2800F1590);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA4080(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhotosFaceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhotosTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674377E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267437800, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267437820, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267437850, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FA4348(uint64_t a1)
{
  v2 = sub_266FA444C(&qword_2800F1598);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA43B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA444C(&qword_2800F1598);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA444C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhotosTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPlatformContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1170, 0x277D57550);
  v29 = sub_266ECAF2C(&qword_2800F1168, &qword_2800F1170, 0x277D57550);
  v30 = a1;
  sub_26738121C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v28 = *(v12 + 56);
  v28(v10, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F43797469746E65, 0xED0000747865746ELL);
  v13(v36, 0);
  v31 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v35, 0x6F43797469746E65, 0xED0000747865746ELL);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_287885D38);
    sub_26738115C();
  }

  (v15)(v35, 0);
  v14(v36, 0);
  sub_26738120C();
  v28(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x80000002674378A0);
  v17(v36, 0);
  v18 = v32;
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
  (*(v33 + 32))(v22 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25, v18, v34);
  return v19(v36, 0);
}

uint64_t sub_266FA4954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA49B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWProfileSwitchByNameType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267437900, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x8000000267437930, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x8000000267437960, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674379A0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x80000002674379D0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000027, 0x8000000267437A00, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x8000000267437A30, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x8000000267437A60, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x8000000267437A90, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266FA4F14(uint64_t a1)
{
  v2 = sub_266FA5018(&qword_2800F15B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA4F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA5018(&qword_2800F15B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA5018(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProfileSwitchByNameType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProfileSwitchContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v17 = *(v0 - 8);
  v18 = v0;
  v1 = *(v17 + 64);
  MEMORY[0x28223BE20](v0);
  v16 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWProfileSwitchMethod(0);
  sub_266FA56CC(&qword_2800F15C0, type metadata accessor for FLOWSchemaFLOWProfileSwitchMethod);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267437B00);
  v9(v19, 0);
  type metadata accessor for FLOWSchemaFLOWProfileSwitchByNameType(0);
  sub_266FA56CC(&qword_2800F15B0, type metadata accessor for FLOWSchemaFLOWProfileSwitchByNameType);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267437B20);
  v10(v19, 0);
  type metadata accessor for FLOWSchemaFLOWProfileSwitchOutcome(0);
  sub_266FA56CC(&qword_2800F15C8, type metadata accessor for FLOWSchemaFLOWProfileSwitchOutcome);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267437B40);
  v11(v19, 0);
  type metadata accessor for FLOWSchemaFLOWProfileSwitchFailureReason(0);
  sub_266FA56CC(&qword_2800F15D0, type metadata accessor for FLOWSchemaFLOWProfileSwitchFailureReason);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x8000000267437B60);
  v12(v19, 0);
  (*(v17 + 104))(v16, *MEMORY[0x277D3E538], v18);
  v19[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267437B80);
  return v13(v19, 0);
}

uint64_t sub_266FA55C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA5624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA56CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FA5714()
{
  result = qword_2800F1288;
  if (!qword_2800F1288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1288);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProfileSwitchFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267437BE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267437C10, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x8000000267437C40, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x8000000267437C70, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000035, 0x8000000267437CB0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FA5A58(uint64_t a1)
{
  v2 = sub_266FA5B5C(&qword_2800F15D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA5AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA5B5C(&qword_2800F15D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA5B5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProfileSwitchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProfileSwitchMethod.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267437D30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267437D50, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267437D80, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267437DA0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FA5E28(uint64_t a1)
{
  v2 = sub_266FA5F2C(&qword_2800F15E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA5E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA5F2C(&qword_2800F15E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA5F2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProfileSwitchMethod(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProfileSwitchOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267437E00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267437E30, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267437E60, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FA6184(uint64_t a1)
{
  v2 = sub_266FA6288(&qword_2800F15E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA61EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA6288(&qword_2800F15E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA6288(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProfileSwitchOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProtectedAppType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267437EC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267437EE0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267437F10, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267437F30, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FA6554(uint64_t a1)
{
  v2 = sub_266FA6658(&qword_2800F15F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA65BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA6658(&qword_2800F15F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA6658(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProtectedAppType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWReadMessageType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267437F80, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267437FA0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267437FC0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267437FE0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267438000, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x8000000267438020, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x8000000267438040, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000019, 0x8000000267438060, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000019, 0x8000000267438080, v53);
  v54 = *v51;
  *v51 = v64;

  v49(v65, 0);
  sub_266ECB128(&unk_287885D60);
  return sub_26738112C();
}

uint64_t sub_266FA6B78(uint64_t a1)
{
  v2 = sub_266FA6C7C(&qword_2800F1600);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA6BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA6C7C(&qword_2800F1600);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA6C7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWReadMessageType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWRecipientType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674380D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x80000002674380F0, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267438110, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267438140, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267438170, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x80000002674381A0, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x80000002674381D0, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x8000000267438200, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x8000000267438230, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267438260, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x8000000267438280, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000024, 0x80000002674382B0, v71);
  v72 = *v69;
  *v69 = v85;

  v67(v86, 0);
  sub_266ECB128(&unk_287885D90);
  return sub_26738112C();
}

uint64_t sub_266FA72E4(uint64_t a1)
{
  v2 = sub_266FA73E8(&qword_2800F1608);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA734C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA73E8(&qword_2800F1608);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA73E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWRecipientType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "ligenceFeatureUsage";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x8000000267438350);
  return v16(v21, 0);
}

uint64_t sub_266FA7760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA77C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FA7828()
{
  result = qword_2800F1610;
  if (!qword_2800F1610)
  {
    sub_266FA7880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1610);
  }

  return result;
}

unint64_t sub_266FA7880()
{
  result = qword_2800F1618;
  if (!qword_2800F1618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1618);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSafariContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSafariTaskType(0);
  sub_266FA7D20(&qword_2800F1620, type metadata accessor for FLOWSchemaFLOWSafariTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FA7A8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSafariTaskType(0);
  sub_266FA7D20(&qword_2800F1620, type metadata accessor for FLOWSchemaFLOWSafariTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FA7C14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA7C78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA7D20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FA7D68()
{
  result = qword_2800F10E8;
  if (!qword_2800F10E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F10E8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSafariTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674383D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674383F0, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267438420, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267438450, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267438480, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x80000002674384B0, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x80000002674384E0, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002CLL, 0x8000000267438510, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002CLL, 0x8000000267438540, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002ELL, 0x8000000267438570, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002ELL, 0x80000002674385A0, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_266FA8358(uint64_t a1)
{
  v2 = sub_266FA845C(&qword_2800F1628);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA83C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA845C(&qword_2800F1628);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA845C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSafariTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSearchCallHistoryIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267438610, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267438640, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x8000000267438670, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FA86B4(uint64_t a1)
{
  v2 = sub_266FA87B8(&qword_2800F1630);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA871C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA87B8(&qword_2800F1630);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA87B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSearchCallHistoryIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWServerEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0E78, 0x277D57568);
  sub_266ECAF2C(&qword_2800F0E80, &qword_2800F0E78, 0x277D57568);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F0F60, 0x277D57710);
  sub_266ECAF2C(&qword_2800F0F68, &qword_2800F0F60, 0x277D57710);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x70657453776F6C66, 0xE800000000000000);
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
  v12(v22, 0);
  sub_266ECB128(&unk_287885DB8);
  return sub_2673811CC();
}

uint64_t sub_266FA8C2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FA8CC4()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FA8D90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA8DF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA8E54(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1638, &qword_2800F1640, 0x277D576C0);
  a1[2] = sub_266ECAF2C(&qword_2800F1648, &qword_2800F1640, 0x277D576C0);
  result = sub_266ECAF2C(&qword_2800F1650, &qword_2800F1640, 0x277D576C0);
  a1[3] = result;
  return result;
}

uint64_t static FLOWSchemaFLOWSmsAttachmentMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSmsAttachmentType(0);
  sub_266FA92A0();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267438710);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_266FA91DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA9240(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FA92A0()
{
  result = qword_2800F1660;
  if (!qword_2800F1660)
  {
    type metadata accessor for FLOWSchemaFLOWSmsAttachmentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1660);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSmsAttachmentMetadataTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267438770);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0xD000000000000015, 0x8000000267438770);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287885DE8);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_266FA9714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA9778(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWSmsAttachmentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674387C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674387E0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267438800, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267438820, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267438840, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267438870, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x80000002674388A0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x80000002674388C0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x80000002674388F0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266FA9CD4(uint64_t a1)
{
  v2 = sub_266FA9DD8(&qword_2800F1678);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA9D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA9DD8(&qword_2800F1678);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA9DD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSmsAttachmentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSmsAudioContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267438950);
  return v10(v12, 0);
}

uint64_t sub_266FAA06C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAA0D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FAA134()
{
  result = qword_2800F1680;
  if (!qword_2800F1680)
  {
    sub_266FAA18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1680);
  }

  return result;
}

unint64_t sub_266FAA18C()
{
  result = qword_2800F1688;
  if (!qword_2800F1688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1688);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSmsContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = sub_26738118C();
  v125 = *(v126 - 8);
  v4 = *(v125 + 64);
  v5 = MEMORY[0x28223BE20](v126);
  v129 = v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v128 = v124 - v7;
  v139 = sub_26738113C();
  v8 = *(v139 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v139);
  v11 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v124 - v14;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWMessageType(0);
  sub_266FAC0E0(&qword_2800F1490, type metadata accessor for FLOWSchemaFLOWMessageType);
  v131 = a1;
  sub_26738120C();
  v16 = sub_26738116C();
  v17 = *(v16 - 8);
  v18 = v17 + 56;
  v19 = *(v17 + 56);
  v19(v15, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v15, 0x546567617373656DLL, 0xEB00000000657079);
  v20(v141, 0);
  v21 = *(v8 + 104);
  v133 = *MEMORY[0x277D3E4E8];
  v136 = v21;
  v137 = v8 + 104;
  v21(v11);
  v22 = a2;
  v141[0] = 1;
  v134 = v11;
  sub_26738114C();
  v138 = v19;
  v19(v15, 0, 1, v16);
  v23 = v17;
  v24 = sub_2673811AC();
  sub_266EC637C(v15, 0x657355696A6F6D65, 0xE900000000000064);
  v24(v141, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v140, 0x657355696A6F6D65, 0xE900000000000064);
  v28 = *(v23 + 48);
  v27 = v23 + 48;
  v135 = v16;
  v132 = v28;
  if (!(v28)(v29, 1, v16))
  {
    sub_266ECB128(&unk_287885E18);
    sub_26738115C();
  }

  (v26)(v140, 0);
  v25(v141, 0);
  v136(v134, v133, v139);
  v141[0] = 1;
  sub_26738114C();
  v30 = v135;
  v31 = v138;
  v138(v15, 0, 1, v135);
  v32 = sub_2673811AC();
  sub_266EC637C(v15, 0x6472616F6279656BLL, 0xEC00000064657355);
  v32(v141, 0);
  type metadata accessor for FLOWSchemaFLOWRecipientType(0);
  sub_266FAC0E0(&qword_2800F1548, type metadata accessor for FLOWSchemaFLOWRecipientType);
  sub_26738122C();
  v31(v15, 0, 1, v30);
  v33 = sub_2673811AC();
  sub_266EC637C(v15, 0x6E65697069636572, 0xED00006570795474);
  v33(v141, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v140, 0x6E65697069636572, 0xED00006570795474);
  if (!(v132)(v36, 1, v30))
  {
    sub_266ECB128(&unk_287885E40);
    sub_26738115C();
  }

  (v35)(v140, 0);
  v34(v141, 0);
  v136(v134, *MEMORY[0x277D3E538], v139);
  v141[0] = 0;
  sub_26738114C();
  v37 = v135;
  v138(v15, 0, 1, v135);
  v38 = sub_2673811AC();
  sub_266EC637C(v15, 0xD000000000000011, 0x8000000267438950);
  v38(v141, 0);
  v39 = sub_2673811AC();
  v40 = sub_266ECB6CC(v140, 0xD000000000000011, 0x8000000267438950);
  if (!(v132)(v41, 1, v37))
  {
    sub_266ECB128(&unk_287885E68);
    sub_26738115C();
  }

  (v40)(v140, 0);
  v39(v141, 0);
  sub_266ECB294(0, &qword_2800F1690, 0x277D57718);
  sub_266ECAF2C(&qword_2800F1698, &qword_2800F1690, 0x277D57718);
  sub_26738121C();
  v42 = v135;
  v138(v15, 0, 1, v135);
  v43 = sub_2673811AC();
  sub_266EC637C(v15, 0xD000000000000011, 0x80000002674389A0);
  v43(v141, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v140, 0xD000000000000011, 0x80000002674389A0);
  v47 = (v132)(v46, 1, v42);
  v130 = v18;
  v127 = v27;
  if (!v47)
  {
    sub_266ECB128(&unk_287885E90);
    sub_26738115C();
  }

  (v45)(v140, 0);
  v44(v141, 0);
  sub_266ECB294(0, &qword_2800F16A0, 0x277D576F0);
  sub_266ECAF2C(&qword_2800F16A8, &qword_2800F16A0, 0x277D576F0);
  sub_26738121C();
  v48 = v135;
  v49 = v138;
  v138(v15, 0, 1, v135);
  v50 = sub_2673811AC();
  sub_266EC637C(v15, 0x746E6F4374786574, 0xEB00000000747865);
  v50(v141, 0);
  sub_266ECB294(0, &qword_2800F1688, 0x277D576D8);
  sub_266ECAF2C(&qword_2800F1680, &qword_2800F1688, 0x277D576D8);
  sub_26738121C();
  v49(v15, 0, 1, v48);
  v51 = sub_2673811AC();
  sub_266EC637C(v15, 0x6E6F436F69647561, 0xEC00000074786574);
  v51(v141, 0);
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  sub_266FAC0E0(&qword_2800F1520, type metadata accessor for FLOWSchemaFLOWPersonType);
  sub_26738122C();
  v49(v15, 0, 1, v48);
  v52 = sub_2673811AC();
  sub_266EC637C(v15, 0x79546E6F73726570, 0xEA00000000006570);
  v52(v141, 0);
  type metadata accessor for FLOWSchemaFLOWReadMessageType(0);
  sub_266FAC0E0(&qword_2800F15F8, type metadata accessor for FLOWSchemaFLOWReadMessageType);
  sub_26738122C();
  v49(v15, 0, 1, v48);
  v53 = sub_2673811AC();
  sub_266EC637C(v15, 0x7373654D64616572, 0xEF65707954656761);
  v53(v141, 0);
  v136(v134, v133, v139);
  v141[0] = 1;
  sub_26738114C();
  v49(v15, 0, 1, v48);
  v54 = sub_2673811AC();
  sub_266EC637C(v15, 0x4C69746C754D7369, 0xEE006C6175676E69);
  v54(v141, 0);
  v55 = sub_2673811AC();
  v56 = sub_266ECB6CC(v140, 0x4C69746C754D7369, 0xEE006C6175676E69);
  if (!(v132)(v57, 1, v48))
  {
    sub_266ECB128(&unk_287885EB8);
    sub_26738115C();
  }

  (v56)(v140, 0);
  v55(v141, 0);
  v136(v134, v133, v139);
  v141[0] = 1;
  sub_26738114C();
  v58 = v135;
  v138(v15, 0, 1, v135);
  v59 = sub_2673811AC();
  sub_266EC637C(v15, 0x6261646165527369, 0xEA0000000000656CLL);
  v59(v141, 0);
  v60 = sub_2673811AC();
  v61 = sub_266ECB6CC(v140, 0x6261646165527369, 0xEA0000000000656CLL);
  if (!(v132)(v62, 1, v58))
  {
    sub_266ECB128(&unk_287885EE8);
    sub_26738115C();
  }

  (v61)(v140, 0);
  v60(v141, 0);
  v136(v134, v133, v139);
  v141[0] = 1;
  sub_26738114C();
  v63 = v135;
  v64 = v138;
  v138(v15, 0, 1, v135);
  v65 = sub_2673811AC();
  sub_266EC637C(v15, 0x4D70756F72477369, 0xEE00656761737365);
  v65(v141, 0);
  sub_266ECB294(0, &qword_2800F1318, 0x277D575E8);
  sub_266ECAF2C(&qword_2800F1310, &qword_2800F1318, 0x277D575E8);
  sub_26738120C();
  v64(v15, 0, 1, v63);
  v66 = sub_2673811AC();
  sub_266EC637C(v15, 0xD000000000000018, 0x80000002674389C0);
  v66(v141, 0);
  v67 = sub_2673811AC();
  v68 = sub_266ECB6CC(v140, 0xD000000000000018, 0x80000002674389C0);
  if (!(v132)(v69, 1, v63))
  {
    sub_266ECB128(&unk_287885F18);
    sub_26738115C();
  }

  (v68)(v140, 0);
  v67(v141, 0);
  v136(v134, v133, v139);
  v141[0] = 1;
  sub_26738114C();
  v70 = v135;
  v138(v15, 0, 1, v135);
  v71 = sub_2673811AC();
  sub_266EC637C(v15, 0xD000000000000011, 0x80000002674389E0);
  v71(v141, 0);
  v72 = sub_2673811AC();
  v73 = sub_266ECB6CC(v140, 0xD000000000000011, 0x80000002674389E0);
  if (!(v132)(v74, 1, v70))
  {
    sub_266ECB128(&unk_287885F48);
    sub_26738115C();
  }

  (v73)(v140, 0);
  v72(v141, 0);
  v136(v134, v133, v139);
  v141[0] = 1;
  sub_26738114C();
  v75 = v135;
  v138(v15, 0, 1, v135);
  v76 = sub_2673811AC();
  sub_266EC637C(v15, 0x654D676E6F4C7369, 0xED00006567617373);
  v76(v141, 0);
  v77 = sub_2673811AC();
  v78 = sub_266ECB6CC(v140, 0x654D676E6F4C7369, 0xED00006567617373);
  v80 = v22;
  v81 = v15;
  if (!(v132)(v79, 1, v75))
  {
    sub_266ECB128(&unk_287885F70);
    sub_26738115C();
  }

  (v78)(v140, 0);
  v77(v141, 0);
  v82 = v134;
  v83 = v139;
  v84 = v136;
  v136(v134, v133, v139);
  v141[0] = 1;
  sub_26738114C();
  v85 = v135;
  v138(v81, 0, 1, v135);
  v124[1] = v80;
  v86 = sub_2673811AC();
  sub_266EC637C(v81, 0x796C7065527369, 0xE700000000000000);
  v86(v141, 0);
  v84(v82, *MEMORY[0x277D3E508], v83);
  v141[0] = 1;
  sub_26738114C();
  v87 = v138;
  v138(v81, 0, 1, v85);
  v88 = sub_2673811AC();
  sub_266EC637C(v81, 0xD000000000000020, 0x8000000267438A00);
  v88(v141, 0);
  v132 = "eadMessagesCount";
  v89 = v133;
  v84(v82, v133, v83);
  v141[0] = 1;
  sub_26738114C();
  v90 = v135;
  v87(v81, 0, 1, v135);
  v91 = sub_2673811AC();
  sub_266EC637C(v81, 0xD000000000000015, v132 | 0x8000000000000000);
  v91(v141, 0);
  v132 = "isSenderShortCodeList";
  v84(v82, v89, v139);
  v141[0] = 1;
  sub_26738114C();
  v92 = v138;
  v138(v81, 0, 1, v90);
  v93 = sub_2673811AC();
  sub_266EC637C(v81, 0xD000000000000011, v132 | 0x8000000000000000);
  v93(v141, 0);
  sub_266ECB294(0, &qword_2800F1618, 0x277D576A8);
  sub_266ECAF2C(&qword_2800F1610, &qword_2800F1618, 0x277D576A8);
  sub_26738120C();
  v94 = v90;
  v92(v81, 0, 1, v90);
  v95 = sub_2673811AC();
  sub_266EC637C(v81, 0xD000000000000026, 0x8000000267438A70);
  v95(v141, 0);
  v96 = v134;
  v136(v134, *MEMORY[0x277D3E540], v139);
  v141[0] = 1;
  sub_26738114C();
  v92(v81, 0, 1, v94);
  v97 = sub_2673811AC();
  sub_266EC637C(v81, 0xD000000000000019, 0x8000000267438AA0);
  v97(v141, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_266FAC0E0(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v92(v81, 0, 1, v94);
  v98 = sub_2673811AC();
  sub_266EC637C(v81, 0x7372655072657375, 0xEB00000000616E6FLL);
  v98(v141, 0);
  v136(v96, v133, v139);
  v141[0] = 1;
  sub_26738114C();
  v92(v81, 0, 1, v94);
  v99 = sub_2673811AC();
  sub_266EC637C(v81, 0x72616D6D75537369, 0xEC00000064657A69);
  v99(v141, 0);
  type metadata accessor for FLOWSchemaFLOWSummarySourceType(0);
  sub_266FAC0E0(&qword_2800F16B0, type metadata accessor for FLOWSchemaFLOWSummarySourceType);
  sub_26738120C();
  v92(v81, 0, 1, v94);
  v100 = sub_2673811AC();
  sub_266EC637C(v81, 0xD000000000000011, 0x8000000267438AC0);
  v100(v141, 0);
  sub_266ECB294(0, &qword_2800F1020, 0x277D57508);
  sub_266ECAF2C(&qword_2800F1018, &qword_2800F1020, 0x277D57508);
  sub_26738120C();
  v92(v81, 0, 1, v94);
  v101 = sub_2673811AC();
  sub_266EC637C(v81, 0x746361746E6F63, 0xE700000000000000);
  v101(v141, 0);
  sub_26738117C();
  v102 = sub_2673811BC();
  v104 = v103;
  v105 = *v103;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v104 = v105;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v105 = sub_266ECAD54(0, *(v105 + 2) + 1, 1, v105);
    *v104 = v105;
  }

  v107 = v126;
  v108 = v125;
  v110 = *(v105 + 2);
  v109 = *(v105 + 3);
  if (v110 >= v109 >> 1)
  {
    v105 = sub_266ECAD54(v109 > 1, v110 + 1, 1, v105);
    *v104 = v105;
  }

  *(v105 + 2) = v110 + 1;
  v113 = *(v108 + 32);
  v112 = v108 + 32;
  v111 = v113;
  v114 = (*(v112 + 48) + 32) & ~*(v112 + 48);
  v115 = *(v112 + 40);
  v113(&v105[v114 + v115 * v110], v128, v107);
  v102(v141, 0);
  sub_26738117C();
  v116 = sub_2673811BC();
  v118 = v117;
  v119 = *v117;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  *v118 = v119;
  if ((v120 & 1) == 0)
  {
    v119 = sub_266ECAD54(0, *(v119 + 2) + 1, 1, v119);
    *v118 = v119;
  }

  v122 = *(v119 + 2);
  v121 = *(v119 + 3);
  if (v122 >= v121 >> 1)
  {
    v119 = sub_266ECAD54(v121 > 1, v122 + 1, 1, v119);
    *v118 = v119;
  }

  *(v119 + 2) = v122 + 1;
  v111(&v119[v114 + v122 * v115], v129, v107);
  return v116(v141, 0);
}

uint64_t sub_266FAC01C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAC080(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FAC0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLOWSchemaFLOWSmsTextContentMetadata.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v29 = a1;
  v1 = sub_26738113C();
  v30 = v1;
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
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v2 + 104);
  v11(v5, v10, v1);
  v27 = v2 + 104;
  v28 = v11;
  v31[0] = 1;
  sub_26738114C();
  v25 = sub_26738116C();
  v12 = *(v25 - 8);
  v13 = *(v12 + 56);
  v26 = v12 + 56;
  v13(v9, 0, 1, v25);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267438B20);
  v14(v31, 0);
  v11(v5, v10, v30);
  v31[0] = 1;
  sub_26738114C();
  v15 = v25;
  v13(v9, 0, 1, v25);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267438B40);
  v16(v31, 0);
  v23 = "messageWordLength";
  sub_266ECB294(0, &qword_2800F12B0, 0x277D575D0);
  sub_266ECAF2C(&qword_2800F12A8, &qword_2800F12B0, 0x277D575D0);
  sub_26738120C();
  v24 = v13;
  v13(v9, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v23 | 0x8000000000000000);
  v17(v31, 0);
  v29 = "flowKeyboardUsageMetadata";
  v18 = *MEMORY[0x277D3E4E8];
  v19 = v28;
  v28(v5, v18, v30);
  v31[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v15);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v29 | 0x8000000000000000);
  v20(v31, 0);
  v19(v5, v18, v30);
  v31[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v15);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267438BA0);
  return v21(v31, 0);
}

uint64_t sub_266FAC720(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAC784(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWSmsTextContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F16C0, 0x277D576E8);
  sub_266ECAF2C(&qword_2800F16B8, &qword_2800F16C0, 0x277D576E8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x8000000267438BF0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F1670, 0x277D576C8);
  sub_266ECAF2C(&qword_2800F1668, &qword_2800F1670, 0x277D576C8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267438C10);
  return v7(v9, 0);
}

uint64_t sub_266FACB00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FACB64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWSportName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267438C60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267438C80, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267438CA0, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267438CC0, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x8000000267438CE0, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x8000000267438D00, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x8000000267438D20, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x8000000267438D40, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000013, 0x8000000267438D60, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000012, 0x8000000267438D80, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000014, 0x8000000267438DA0, v65);
  v66 = *v63;
  *v63 = v78;

  v61(v79, 0);
  sub_266ECB128(&unk_287885F98);
  return sub_26738112C();
}

uint64_t sub_266FAD1B8(uint64_t a1)
{
  v2 = sub_266FAD2BC(&qword_2800F16D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FAD220(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FAD2BC(&qword_2800F16D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FAD2BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSportName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSPORTSExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSPORTSUsecase(0);
  sub_266FADAA4(&qword_2800F16D8, type metadata accessor for FLOWSchemaFLOWSPORTSUsecase);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v34 = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x73557374726F7073, 0xED00006573616365);
  v13(v39, 0);
  v36 = *MEMORY[0x277D3E4E8];
  v14 = v37;
  v15 = *(v38 + 104);
  v38 += 104;
  v35 = v15;
  (v15)(v6);
  v39[0] = 1;
  sub_26738114C();
  v32 = v11;
  v33 = v12;
  v12(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267438DF0);
  v16(v39, 0);
  v30 = v6;
  v31 = "isSportsWatchFaceRequest";
  v17 = v36;
  v18 = v35;
  v35(v6, v36, v14);
  v39[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v31 | 0x8000000000000000);
  v19(v39, 0);
  v31 = "isSnippetNextCardRequest";
  v20 = v30;
  v21 = v37;
  v18(v30, v17, v37);
  v39[0] = 1;
  sub_26738114C();
  v22 = v32;
  v23 = v33;
  v33(v10, 0, 1, v32);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v31 | 0x8000000000000000);
  v24(v39, 0);
  v31 = "isMachineUtterance";
  v25 = v35;
  v35(v20, v36, v21);
  v39[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v31 | 0x8000000000000000);
  v26(v39, 0);
  v25(v20, v36, v37);
  v39[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267438E70);
  v27(v39, 0);
  sub_266ECB128(&unk_287885FC8);
  return sub_2673811CC();
}

uint64_t sub_266FAD998(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAD9FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FADAA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FADAEC()
{
  result = qword_2800F14D0;
  if (!qword_2800F14D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F14D0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSportsExecutionTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v41 = v0;
  v42 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSportName(0);
  sub_266FAE4D8(&qword_2800F16C8, type metadata accessor for FLOWSchemaFLOWSportName);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v35 = v10 + 56;
  v39 = v11;
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D614E74726F7073, 0xE900000000000065);
  v12(v44, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v43, 0x6D614E74726F7073, 0xE900000000000065);
  v15 = *(v10 + 48);
  v40 = v10 + 48;
  v38 = v15;
  if (!v15(v16, 1, v9))
  {
    sub_266ECB128(&unk_287885FF8);
    sub_26738115C();
  }

  (v14)(v43, 0);
  v13(v44, 0);
  v17 = *(v42 + 104);
  v37 = *MEMORY[0x277D3E530];
  v42 += 104;
  v36 = v17;
  v17(v4);
  v44[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756761656CLL, 0xE600000000000000);
  v18(v44, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v43, 0x65756761656CLL, 0xE600000000000000);
  if (!v38(v21, 1, v9))
  {
    sub_266ECB128(&unk_287886020);
    sub_26738115C();
  }

  (v20)(v43, 0);
  v19(v44, 0);
  v36(v4, v37, v41);
  v44[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x456574656C687461, 0xEF7365697469746ELL);
  v22(v44, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v43, 0x456574656C687461, 0xEF7365697469746ELL);
  if (!v38(v25, 1, v9))
  {
    sub_266ECB128(&unk_287886048);
    sub_26738115C();
  }

  (v24)(v43, 0);
  v23(v44, 0);
  v36(v4, v37, v41);
  v44[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x69746E456D616574, 0xEC00000073656974);
  v26(v44, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v43, 0x69746E456D616574, 0xEC00000073656974);
  if (!v38(v29, 1, v9))
  {
    sub_266ECB128(&unk_287886070);
    sub_26738115C();
  }

  (v28)(v43, 0);
  v27(v44, 0);
  v36(v4, v37, v41);
  v44[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v9);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E45746E657665, 0xED00007365697469);
  v30(v44, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v43, 0x746E45746E657665, 0xED00007365697469);
  if (!v38(v33, 1, v9))
  {
    sub_266ECB128(&unk_287886098);
    sub_26738115C();
  }

  (v32)(v43, 0);
  v31(v44, 0);
  sub_266ECB128(&unk_2878860C0);
  return sub_2673811CC();
}

uint64_t sub_266FAE3CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAE430(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FAE4D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FAE520()
{
  result = qword_2800F1500;
  if (!qword_2800F1500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1500);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSPORTSUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267438F00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v194;

  v1(v226, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267438F20, v11);
  v12 = *v9;
  *v9 = v195;

  v7(v226, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267438F50, v17);
  v18 = *v15;
  *v15 = v196;

  v13(v226, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267438F80, v23);
  v24 = *v21;
  *v21 = v197;

  v19(v226, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267438FB0, v29);
  v30 = *v27;
  *v27 = v198;

  v25(v226, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x8000000267438FD0, v35);
  v36 = *v33;
  *v33 = v199;

  v31(v226, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267438FF0, v41);
  v42 = *v39;
  *v39 = v200;

  v37(v226, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267439010, v47);
  v48 = *v45;
  *v45 = v201;

  v43(v226, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267439030, v53);
  v54 = *v51;
  *v51 = v202;

  v49(v226, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267439050, v59);
  v60 = *v57;
  *v57 = v203;

  v55(v226, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000020, 0x8000000267439080, v65);
  v66 = *v63;
  *v63 = v204;

  v61(v226, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002DLL, 0x80000002674390B0, v71);
  v72 = *v69;
  *v69 = v205;

  v67(v226, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x80000002674390E0, v77);
  v78 = *v75;
  *v75 = v206;

  v73(v226, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ALL, 0x8000000267439100, v83);
  v84 = *v81;
  *v81 = v207;

  v79(v226, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v208 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000024, 0x8000000267439120, v89);
  v90 = *v87;
  *v87 = v208;

  v85(v226, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000017, 0x8000000267439150, v95);
  v96 = *v93;
  *v93 = v209;

  v91(v226, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v210 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000021, 0x8000000267439170, v101);
  v102 = *v99;
  *v99 = v210;

  v97(v226, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v211 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000022, 0x80000002674391A0, v107);
  v108 = *v105;
  *v105 = v211;

  v103(v226, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v212 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ELL, 0x80000002674391D0, v113);
  v114 = *v111;
  *v111 = v212;

  v109(v226, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v213 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000023, 0x80000002674391F0, v119);
  v120 = *v117;
  *v117 = v213;

  v115(v226, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v214 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001FLL, 0x8000000267439220, v125);
  v126 = *v123;
  *v123 = v214;

  v121(v226, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001BLL, 0x8000000267439240, v131);
  v132 = *v129;
  *v129 = v215;

  v127(v226, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000025, 0x8000000267439260, v137);
  v138 = *v135;
  *v135 = v216;

  v133(v226, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v217 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001FLL, 0x8000000267439290, v143);
  v144 = *v141;
  *v141 = v217;

  v139(v226, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v218 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000018, 0x80000002674392B0, v149);
  v150 = *v147;
  *v147 = v218;

  v145(v226, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v219 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001CLL, 0x80000002674392D0, v155);
  v156 = *v153;
  *v153 = v219;

  v151(v226, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v220 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001FLL, 0x80000002674392F0, v161);
  v162 = *v159;
  *v159 = v220;

  v157(v226, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v221 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000020, 0x8000000267439310, v167);
  v168 = *v165;
  *v165 = v221;

  v163(v226, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v222 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000020, 0x8000000267439340, v173);
  v174 = *v171;
  *v171 = v222;

  v169(v226, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v223 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001ELL, 0x8000000267439370, v179);
  v180 = *v177;
  *v177 = v223;

  v175(v226, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v224 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000022, 0x8000000267439390, v185);
  v186 = *v183;
  *v183 = v224;

  v181(v226, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v225 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000024, 0x80000002674393C0, v191);
  v192 = *v189;
  *v189 = v225;

  v187(v226, 0);
  sub_266ECB128(&unk_2878860F0);
  return sub_26738112C();
}

uint64_t sub_266FAF468(uint64_t a1)
{
  v2 = sub_266FAF56C(&qword_2800F16E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FAF4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FAF56C(&qword_2800F16E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FAF56C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSPORTSUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWState.makeTypeManifestAndEnsureFields(in:)(char *a1)
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
  v11 = *(v2 + 104);
  v29 = *MEMORY[0x277D3E530];
  v10 = v29;
  v30 = v1;
  v11(v5, v29, v1);
  v31 = v2 + 104;
  v32 = v11;
  v36[0] = 1;
  sub_26738114C();
  v34 = sub_26738116C();
  v12 = *(v34 - 8);
  v35 = *(v12 + 56);
  v13 = v12 + 56;
  v35(v9, 0, 1, v34);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x54746E6572727563, 0xEF656D614E6B7361);
  v14(v36, 0);
  v11(v5, v10, v1);
  v36[0] = 1;
  sub_26738114C();
  v15 = v34;
  v16 = v35;
  v35(v9, 0, 1, v34);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x54746E6572727563, 0xEF657079546B7361);
  v17(v36, 0);
  type metadata accessor for FLOWSchemaFLOWStateType(0);
  sub_266FAFCCC();
  sub_26738120C();
  v18 = v15;
  v16(v9, 0, 1, v15);
  v19 = v16;
  v28 = v13;
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x74617453776F6C66, 0xED00006570795465);
  v20(v36, 0);
  sub_266ECB294(0, &qword_2800F16F0, 0x277D57708);
  sub_266ECAF2C(&qword_2800F16F8, &qword_2800F16F0, 0x277D57708);
  sub_26738120C();
  v19(v9, 0, 1, v15);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x74617453776F6C66, 0xEF6E6F7361655265);
  v21(v36, 0);
  v33 = "iri.flow.FLOWState";
  v22 = v29;
  v23 = v30;
  v24 = v32;
  v32(v5, v29, v30);
  v36[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v18);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v33 | 0x8000000000000000);
  v25(v36, 0);
  v24(v5, v22, v23);
  v36[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v34);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x8000000267439440);
  return v26(v36, 0);
}

uint64_t sub_266FAFC08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAFC6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FAFCCC()
{
  result = qword_2800F16E8;
  if (!qword_2800F16E8)
  {
    type metadata accessor for FLOWSchemaFLOWStateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F16E8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWStateReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWStatusReason(0);
  sub_266FB01CC(&qword_2800F1710, type metadata accessor for FLOWSchemaFLOWStatusReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6552737574617473, 0xEC0000006E6F7361);
  return v5(v7, 0);
}

uint64_t sub_266FAFF30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWStatusReason(0);
  sub_266FB01CC(&qword_2800F1710, type metadata accessor for FLOWSchemaFLOWStatusReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6552737574617473, 0xEC0000006E6F7361);
  return v5(v7, 0);
}

uint64_t sub_266FB00C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB0124(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FB01CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FB0214()
{
  result = qword_2800F16F0;
  if (!qword_2800F16F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F16F0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWStateType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v934 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674394C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v934;

  v1(v1089, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v935 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x80000002674394E0, v11);
  v12 = *v9;
  *v9 = v935;

  v7(v1089, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v936 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267439500, v17);
  v18 = *v15;
  *v15 = v936;

  v13(v1089, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v937 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267439520, v23);
  v24 = *v21;
  *v21 = v937;

  v19(v1089, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v938 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x8000000267439540, v29);
  v30 = *v27;
  *v27 = v938;

  v25(v1089, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v939 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x8000000267439560, v35);
  v36 = *v33;
  *v33 = v939;

  v31(v1089, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v940 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x8000000267439580, v41);
  v42 = *v39;
  *v39 = v940;

  v37(v1089, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v941 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x80000002674395A0, v47);
  v48 = *v45;
  *v45 = v941;

  v43(v1089, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v942 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000012, 0x80000002674395C0, v53);
  v54 = *v51;
  *v51 = v942;

  v49(v1089, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v943 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x80000002674395E0, v59);
  v60 = *v57;
  *v57 = v943;

  v55(v1089, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v944 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x8000000267439600, v65);
  v66 = *v63;
  *v63 = v944;

  v61(v1089, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v945 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000019, 0x8000000267439620, v71);
  v72 = *v69;
  *v69 = v945;

  v67(v1089, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v946 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001BLL, 0x8000000267439640, v77);
  v78 = *v75;
  *v75 = v946;

  v73(v1089, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v947 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001CLL, 0x8000000267439660, v83);
  v84 = *v81;
  *v81 = v947;

  v79(v1089, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v948 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000014, 0x8000000267439680, v89);
  v90 = *v87;
  *v87 = v948;

  v85(v1089, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v949 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000018, 0x80000002674396A0, v95);
  v96 = *v93;
  *v93 = v949;

  v91(v1089, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v950 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000019, 0x80000002674396C0, v101);
  v102 = *v99;
  *v99 = v950;

  v97(v1089, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v951 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001ELL, 0x80000002674396E0, v107);
  v108 = *v105;
  *v105 = v951;

  v103(v1089, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v952 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000019, 0x8000000267439700, v113);
  v114 = *v111;
  *v111 = v952;

  v109(v1089, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v953 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001BLL, 0x8000000267439720, v119);
  v120 = *v117;
  *v117 = v953;

  v115(v1089, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v954 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001DLL, 0x8000000267439740, v125);
  v126 = *v123;
  *v123 = v954;

  v121(v1089, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v955 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000021, 0x8000000267439760, v131);
  v132 = *v129;
  *v129 = v955;

  v127(v1089, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v956 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000026, 0x8000000267439790, v137);
  v138 = *v135;
  *v135 = v956;

  v133(v1089, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v957 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001ALL, 0x80000002674397C0, v143);
  v144 = *v141;
  *v141 = v957;

  v139(v1089, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v958 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001BLL, 0x80000002674397E0, v149);
  v150 = *v147;
  *v147 = v958;

  v145(v1089, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v959 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000029, 0x8000000267439800, v155);
  v156 = *v153;
  *v153 = v959;

  v151(v1089, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v960 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001FLL, 0x8000000267439830, v161);
  v162 = *v159;
  *v159 = v960;

  v157(v1089, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v961 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001ELL, 0x8000000267439850, v167);
  v168 = *v165;
  *v165 = v961;

  v163(v1089, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v962 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000020, 0x8000000267439870, v173);
  v174 = *v171;
  *v171 = v962;

  v169(v1089, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v963 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000022, 0x80000002674398A0, v179);
  v180 = *v177;
  *v177 = v963;

  v175(v1089, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v964 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000020, 0x80000002674398D0, v185);
  v186 = *v183;
  *v183 = v964;

  v181(v1089, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v965 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000020, 0x8000000267439900, v191);
  v192 = *v189;
  *v189 = v965;

  v187(v1089, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v966 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000020, 0x8000000267439930, v197);
  v198 = *v195;
  *v195 = v966;

  v193(v1089, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v967 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001ELL, 0x8000000267439960, v203);
  v204 = *v201;
  *v201 = v967;

  v199(v1089, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v968 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000014, 0x8000000267439980, v209);
  v210 = *v207;
  *v207 = v968;

  v205(v1089, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v969 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001ALL, 0x80000002674399A0, v215);
  v216 = *v213;
  *v213 = v969;

  v211(v1089, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v970 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001FLL, 0x80000002674399C0, v221);
  v222 = *v219;
  *v219 = v970;

  v217(v1089, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v971 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000002BLL, 0x80000002674399E0, v227);
  v228 = *v225;
  *v225 = v971;

  v223(v1089, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v972 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000025, 0x8000000267439A10, v233);
  v234 = *v231;
  *v231 = v972;

  v229(v1089, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v973 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000035, 0x8000000267439A40, v239);
  v240 = *v237;
  *v237 = v973;

  v235(v1089, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v974 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD00000000000001ELL, 0x8000000267439A80, v245);
  v246 = *v243;
  *v243 = v974;

  v241(v1089, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v975 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001DLL, 0x8000000267439AA0, v251);
  v252 = *v249;
  *v249 = v975;

  v247(v1089, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v976 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000001ELL, 0x8000000267439AC0, v257);
  v258 = *v255;
  *v255 = v976;

  v253(v1089, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v977 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000022, 0x8000000267439AE0, v263);
  v264 = *v261;
  *v261 = v977;

  v259(v1089, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v978 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000031, 0x8000000267439B10, v269);
  v270 = *v267;
  *v267 = v978;

  v265(v1089, 0);
  v271 = sub_266ECB128(&unk_287886120);
  v273 = v272;
  v274 = sub_2673810FC();
  v276 = v275;
  v277 = *v275;
  v278 = swift_isUniquelyReferenced_nonNull_native();
  v979 = *v276;
  *v276 = 0x8000000000000000;
  sub_266ECD4CC(v271, v273, 44, v278);
  *v276 = v979;
  v274(v1089, 0);
  v279 = sub_26738111C();
  v281 = v280;
  v282 = *v280;
  v283 = swift_isUniquelyReferenced_nonNull_native();
  v980 = *v281;
  *v281 = 0x8000000000000000;
  sub_266ECD368(100, 0xD000000000000021, 0x8000000267439B50, v283);
  v284 = *v281;
  *v281 = v980;

  v279(v1089, 0);
  v285 = sub_26738111C();
  v287 = v286;
  v288 = *v286;
  v289 = swift_isUniquelyReferenced_nonNull_native();
  v981 = *v287;
  *v287 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000027, 0x8000000267439B80, v289);
  v290 = *v287;
  *v287 = v981;

  v285(v1089, 0);
  v291 = sub_26738111C();
  v293 = v292;
  v294 = *v292;
  v295 = swift_isUniquelyReferenced_nonNull_native();
  v982 = *v293;
  *v293 = 0x8000000000000000;
  sub_266ECD368(102, 0xD00000000000002BLL, 0x8000000267439BB0, v295);
  v296 = *v293;
  *v293 = v982;

  v291(v1089, 0);
  v297 = sub_26738111C();
  v299 = v298;
  v300 = *v298;
  v301 = swift_isUniquelyReferenced_nonNull_native();
  v983 = *v299;
  *v299 = 0x8000000000000000;
  sub_266ECD368(103, 0xD000000000000025, 0x8000000267439BE0, v301);
  v302 = *v299;
  *v299 = v983;

  v297(v1089, 0);
  v303 = sub_26738111C();
  v305 = v304;
  v306 = *v304;
  v307 = swift_isUniquelyReferenced_nonNull_native();
  v984 = *v305;
  *v305 = 0x8000000000000000;
  sub_266ECD368(104, 0xD000000000000024, 0x8000000267439C10, v307);
  v308 = *v305;
  *v305 = v984;

  v303(v1089, 0);
  v309 = sub_26738111C();
  v311 = v310;
  v312 = *v310;
  v313 = swift_isUniquelyReferenced_nonNull_native();
  v985 = *v311;
  *v311 = 0x8000000000000000;
  sub_266ECD368(105, 0xD000000000000027, 0x8000000267439C40, v313);
  v314 = *v311;
  *v311 = v985;

  v309(v1089, 0);
  v315 = sub_26738111C();
  v317 = v316;
  v318 = *v316;
  v319 = swift_isUniquelyReferenced_nonNull_native();
  v986 = *v317;
  *v317 = 0x8000000000000000;
  sub_266ECD368(106, 0xD00000000000002ALL, 0x8000000267439C70, v319);
  v320 = *v317;
  *v317 = v986;

  v315(v1089, 0);
  v321 = sub_26738111C();
  v323 = v322;
  v324 = *v322;
  v325 = swift_isUniquelyReferenced_nonNull_native();
  v987 = *v323;
  *v323 = 0x8000000000000000;
  sub_266ECD368(107, 0xD00000000000002CLL, 0x8000000267439CA0, v325);
  v326 = *v323;
  *v323 = v987;

  v321(v1089, 0);
  v327 = sub_26738111C();
  v329 = v328;
  v330 = *v328;
  v331 = swift_isUniquelyReferenced_nonNull_native();
  v988 = *v329;
  *v329 = 0x8000000000000000;
  sub_266ECD368(108, 0xD000000000000024, 0x8000000267439CD0, v331);
  v332 = *v329;
  *v329 = v988;

  v327(v1089, 0);
  v333 = sub_26738111C();
  v335 = v334;
  v336 = *v334;
  v337 = swift_isUniquelyReferenced_nonNull_native();
  v989 = *v335;
  *v335 = 0x8000000000000000;
  sub_266ECD368(109, 0xD00000000000002ALL, 0x8000000267439D00, v337);
  v338 = *v335;
  *v335 = v989;

  v333(v1089, 0);
  v339 = sub_26738111C();
  v341 = v340;
  v342 = *v340;
  v343 = swift_isUniquelyReferenced_nonNull_native();
  v990 = *v341;
  *v341 = 0x8000000000000000;
  sub_266ECD368(110, 0xD000000000000021, 0x8000000267439D30, v343);
  v344 = *v341;
  *v341 = v990;

  v339(v1089, 0);
  v345 = sub_26738111C();
  v347 = v346;
  v348 = *v346;
  v349 = swift_isUniquelyReferenced_nonNull_native();
  v991 = *v347;
  *v347 = 0x8000000000000000;
  sub_266ECD368(111, 0xD000000000000021, 0x8000000267439D60, v349);
  v350 = *v347;
  *v347 = v991;

  v345(v1089, 0);
  v351 = sub_26738111C();
  v353 = v352;
  v354 = *v352;
  v355 = swift_isUniquelyReferenced_nonNull_native();
  v992 = *v353;
  *v353 = 0x8000000000000000;
  sub_266ECD368(112, 0xD000000000000023, 0x8000000267439D90, v355);
  v356 = *v353;
  *v353 = v992;

  v351(v1089, 0);
  v357 = sub_26738111C();
  v359 = v358;
  v360 = *v358;
  v361 = swift_isUniquelyReferenced_nonNull_native();
  v993 = *v359;
  *v359 = 0x8000000000000000;
  sub_266ECD368(113, 0xD000000000000025, 0x8000000267439DC0, v361);
  v362 = *v359;
  *v359 = v993;

  v357(v1089, 0);
  v363 = sub_26738111C();
  v365 = v364;
  v366 = *v364;
  v367 = swift_isUniquelyReferenced_nonNull_native();
  v994 = *v365;
  *v365 = 0x8000000000000000;
  sub_266ECD368(114, 0xD000000000000023, 0x8000000267439DF0, v367);
  v368 = *v365;
  *v365 = v994;

  v363(v1089, 0);
  v369 = sub_26738111C();
  v371 = v370;
  v372 = *v370;
  v373 = swift_isUniquelyReferenced_nonNull_native();
  v995 = *v371;
  *v371 = 0x8000000000000000;
  sub_266ECD368(115, 0xD000000000000028, 0x8000000267439E20, v373);
  v374 = *v371;
  *v371 = v995;

  v369(v1089, 0);
  v375 = sub_26738111C();
  v377 = v376;
  v378 = *v376;
  v379 = swift_isUniquelyReferenced_nonNull_native();
  v996 = *v377;
  *v377 = 0x8000000000000000;
  sub_266ECD368(116, 0xD000000000000024, 0x8000000267439E50, v379);
  v380 = *v377;
  *v377 = v996;

  v375(v1089, 0);
  v381 = sub_26738111C();
  v383 = v382;
  v384 = *v382;
  v385 = swift_isUniquelyReferenced_nonNull_native();
  v997 = *v383;
  *v383 = 0x8000000000000000;
  sub_266ECD368(117, 0xD000000000000021, 0x8000000267439E80, v385);
  v386 = *v383;
  *v383 = v997;

  v381(v1089, 0);
  v387 = sub_26738111C();
  v389 = v388;
  v390 = *v388;
  v391 = swift_isUniquelyReferenced_nonNull_native();
  v998 = *v389;
  *v389 = 0x8000000000000000;
  sub_266ECD368(118, 0xD000000000000024, 0x8000000267439EB0, v391);
  v392 = *v389;
  *v389 = v998;

  v387(v1089, 0);
  v393 = sub_26738111C();
  v395 = v394;
  v396 = *v394;
  v397 = swift_isUniquelyReferenced_nonNull_native();
  v999 = *v395;
  *v395 = 0x8000000000000000;
  sub_266ECD368(119, 0xD000000000000025, 0x8000000267439EE0, v397);
  v398 = *v395;
  *v395 = v999;

  v393(v1089, 0);
  v399 = sub_26738111C();
  v401 = v400;
  v402 = *v400;
  v403 = swift_isUniquelyReferenced_nonNull_native();
  v1000 = *v401;
  *v401 = 0x8000000000000000;
  sub_266ECD368(120, 0xD000000000000012, 0x8000000267439F10, v403);
  v404 = *v401;
  *v401 = v1000;

  v399(v1089, 0);
  v405 = sub_26738111C();
  v407 = v406;
  v408 = *v406;
  v409 = swift_isUniquelyReferenced_nonNull_native();
  v1001 = *v407;
  *v407 = 0x8000000000000000;
  sub_266ECD368(121, 0xD000000000000012, 0x8000000267439F30, v409);
  v410 = *v407;
  *v407 = v1001;

  v405(v1089, 0);
  v411 = sub_26738111C();
  v413 = v412;
  v414 = *v412;
  v415 = swift_isUniquelyReferenced_nonNull_native();
  v1002 = *v413;
  *v413 = 0x8000000000000000;
  sub_266ECD368(122, 0xD000000000000013, 0x8000000267439F50, v415);
  v416 = *v413;
  *v413 = v1002;

  v411(v1089, 0);
  v417 = sub_26738111C();
  v419 = v418;
  v420 = *v418;
  v421 = swift_isUniquelyReferenced_nonNull_native();
  v1003 = *v419;
  *v419 = 0x8000000000000000;
  sub_266ECD368(123, 0xD000000000000019, 0x8000000267439F70, v421);
  v422 = *v419;
  *v419 = v1003;

  v417(v1089, 0);
  v423 = sub_26738111C();
  v425 = v424;
  v426 = *v424;
  v427 = swift_isUniquelyReferenced_nonNull_native();
  v1004 = *v425;
  *v425 = 0x8000000000000000;
  sub_266ECD368(124, 0xD000000000000018, 0x8000000267439F90, v427);
  v428 = *v425;
  *v425 = v1004;

  v423(v1089, 0);
  v429 = sub_26738111C();
  v431 = v430;
  v432 = *v430;
  v433 = swift_isUniquelyReferenced_nonNull_native();
  v1005 = *v431;
  *v431 = 0x8000000000000000;
  sub_266ECD368(125, 0xD00000000000001CLL, 0x8000000267439FB0, v433);
  v434 = *v431;
  *v431 = v1005;

  v429(v1089, 0);
  v435 = sub_26738111C();
  v437 = v436;
  v438 = *v436;
  v439 = swift_isUniquelyReferenced_nonNull_native();
  v1006 = *v437;
  *v437 = 0x8000000000000000;
  sub_266ECD368(126, 0xD00000000000001DLL, 0x8000000267439FD0, v439);
  v440 = *v437;
  *v437 = v1006;

  v435(v1089, 0);
  v441 = sub_26738111C();
  v443 = v442;
  v444 = *v442;
  v445 = swift_isUniquelyReferenced_nonNull_native();
  v1007 = *v443;
  *v443 = 0x8000000000000000;
  sub_266ECD368(127, 0xD00000000000001ALL, 0x8000000267439FF0, v445);
  v446 = *v443;
  *v443 = v1007;

  v441(v1089, 0);
  v447 = sub_26738111C();
  v449 = v448;
  v450 = *v448;
  v451 = swift_isUniquelyReferenced_nonNull_native();
  v1008 = *v449;
  *v449 = 0x8000000000000000;
  sub_266ECD368(128, 0xD00000000000001ALL, 0x800000026743A010, v451);
  v452 = *v449;
  *v449 = v1008;

  v447(v1089, 0);
  v453 = sub_26738111C();
  v455 = v454;
  v456 = *v454;
  v457 = swift_isUniquelyReferenced_nonNull_native();
  v1009 = *v455;
  *v455 = 0x8000000000000000;
  sub_266ECD368(129, 0xD00000000000001FLL, 0x800000026743A030, v457);
  v458 = *v455;
  *v455 = v1009;

  v453(v1089, 0);
  v459 = sub_26738111C();
  v461 = v460;
  v462 = *v460;
  v463 = swift_isUniquelyReferenced_nonNull_native();
  v1010 = *v461;
  *v461 = 0x8000000000000000;
  sub_266ECD368(130, 0xD000000000000019, 0x800000026743A050, v463);
  v464 = *v461;
  *v461 = v1010;

  v459(v1089, 0);
  v465 = sub_26738111C();
  v467 = v466;
  v468 = *v466;
  v469 = swift_isUniquelyReferenced_nonNull_native();
  v1011 = *v467;
  *v467 = 0x8000000000000000;
  sub_266ECD368(131, 0xD000000000000018, 0x800000026743A070, v469);
  v470 = *v467;
  *v467 = v1011;

  v465(v1089, 0);
  v471 = sub_26738111C();
  v473 = v472;
  v474 = *v472;
  v475 = swift_isUniquelyReferenced_nonNull_native();
  v1012 = *v473;
  *v473 = 0x8000000000000000;
  sub_266ECD368(132, 0xD000000000000014, 0x800000026743A090, v475);
  v476 = *v473;
  *v473 = v1012;

  v471(v1089, 0);
  v477 = sub_26738111C();
  v479 = v478;
  v480 = *v478;
  v481 = swift_isUniquelyReferenced_nonNull_native();
  v1013 = *v479;
  *v479 = 0x8000000000000000;
  sub_266ECD368(133, 0xD00000000000001ELL, 0x800000026743A0B0, v481);
  v482 = *v479;
  *v479 = v1013;

  v477(v1089, 0);
  v483 = sub_26738111C();
  v485 = v484;
  v486 = *v484;
  v487 = swift_isUniquelyReferenced_nonNull_native();
  v1014 = *v485;
  *v485 = 0x8000000000000000;
  sub_266ECD368(134, 0xD000000000000029, 0x800000026743A0D0, v487);
  v488 = *v485;
  *v485 = v1014;

  v483(v1089, 0);
  v489 = sub_26738111C();
  v491 = v490;
  v492 = *v490;
  v493 = swift_isUniquelyReferenced_nonNull_native();
  v1015 = *v491;
  *v491 = 0x8000000000000000;
  sub_266ECD368(135, 0xD000000000000024, 0x800000026743A100, v493);
  v494 = *v491;
  *v491 = v1015;

  v489(v1089, 0);
  v495 = sub_26738111C();
  v497 = v496;
  v498 = *v496;
  v499 = swift_isUniquelyReferenced_nonNull_native();
  v1016 = *v497;
  *v497 = 0x8000000000000000;
  sub_266ECD368(136, 0xD000000000000023, 0x800000026743A130, v499);
  v500 = *v497;
  *v497 = v1016;

  v495(v1089, 0);
  v501 = sub_26738111C();
  v503 = v502;
  v504 = *v502;
  v505 = swift_isUniquelyReferenced_nonNull_native();
  v1017 = *v503;
  *v503 = 0x8000000000000000;
  sub_266ECD368(137, 0xD000000000000021, 0x800000026743A160, v505);
  v506 = *v503;
  *v503 = v1017;

  v501(v1089, 0);
  v507 = sub_26738111C();
  v509 = v508;
  v510 = *v508;
  v511 = swift_isUniquelyReferenced_nonNull_native();
  v1018 = *v509;
  *v509 = 0x8000000000000000;
  sub_266ECD368(138, 0xD000000000000021, 0x800000026743A190, v511);
  v512 = *v509;
  *v509 = v1018;

  v507(v1089, 0);
  v513 = sub_26738111C();
  v515 = v514;
  v516 = *v514;
  v517 = swift_isUniquelyReferenced_nonNull_native();
  v1019 = *v515;
  *v515 = 0x8000000000000000;
  sub_266ECD368(139, 0xD00000000000001FLL, 0x800000026743A1C0, v517);
  v518 = *v515;
  *v515 = v1019;

  v513(v1089, 0);
  v519 = sub_26738111C();
  v521 = v520;
  v522 = *v520;
  v523 = swift_isUniquelyReferenced_nonNull_native();
  v1020 = *v521;
  *v521 = 0x8000000000000000;
  sub_266ECD368(140, 0xD00000000000001FLL, 0x800000026743A1E0, v523);
  v524 = *v521;
  *v521 = v1020;

  v519(v1089, 0);
  v525 = sub_26738111C();
  v527 = v526;
  v528 = *v526;
  v529 = swift_isUniquelyReferenced_nonNull_native();
  v1021 = *v527;
  *v527 = 0x8000000000000000;
  sub_266ECD368(141, 0xD000000000000027, 0x800000026743A200, v529);
  v530 = *v527;
  *v527 = v1021;

  v525(v1089, 0);
  v531 = sub_26738111C();
  v533 = v532;
  v534 = *v532;
  v535 = swift_isUniquelyReferenced_nonNull_native();
  v1022 = *v533;
  *v533 = 0x8000000000000000;
  sub_266ECD368(142, 0xD00000000000001ELL, 0x800000026743A230, v535);
  v536 = *v533;
  *v533 = v1022;

  v531(v1089, 0);
  v537 = sub_26738111C();
  v539 = v538;
  v540 = *v538;
  v541 = swift_isUniquelyReferenced_nonNull_native();
  v1023 = *v539;
  *v539 = 0x8000000000000000;
  sub_266ECD368(143, 0xD00000000000001CLL, 0x800000026743A250, v541);
  v542 = *v539;
  *v539 = v1023;

  v537(v1089, 0);
  v543 = sub_26738111C();
  v545 = v544;
  v546 = *v544;
  v547 = swift_isUniquelyReferenced_nonNull_native();
  v1024 = *v545;
  *v545 = 0x8000000000000000;
  sub_266ECD368(144, 0xD000000000000026, 0x800000026743A270, v547);
  v548 = *v545;
  *v545 = v1024;

  v543(v1089, 0);
  v549 = sub_26738111C();
  v551 = v550;
  v552 = *v550;
  v553 = swift_isUniquelyReferenced_nonNull_native();
  v1025 = *v551;
  *v551 = 0x8000000000000000;
  sub_266ECD368(145, 0xD00000000000002DLL, 0x800000026743A2A0, v553);
  v554 = *v551;
  *v551 = v1025;

  v549(v1089, 0);
  v555 = sub_26738111C();
  v557 = v556;
  v558 = *v556;
  v559 = swift_isUniquelyReferenced_nonNull_native();
  v1026 = *v557;
  *v557 = 0x8000000000000000;
  sub_266ECD368(146, 0xD000000000000030, 0x800000026743A2D0, v559);
  v560 = *v557;
  *v557 = v1026;

  v555(v1089, 0);
  v561 = sub_26738111C();
  v563 = v562;
  v564 = *v562;
  v565 = swift_isUniquelyReferenced_nonNull_native();
  v1027 = *v563;
  *v563 = 0x8000000000000000;
  sub_266ECD368(147, 0xD000000000000030, 0x800000026743A310, v565);
  v566 = *v563;
  *v563 = v1027;

  v561(v1089, 0);
  v567 = sub_26738111C();
  v569 = v568;
  v570 = *v568;
  v571 = swift_isUniquelyReferenced_nonNull_native();
  v1028 = *v569;
  *v569 = 0x8000000000000000;
  sub_266ECD368(148, 0xD000000000000033, 0x800000026743A350, v571);
  v572 = *v569;
  *v569 = v1028;

  v567(v1089, 0);
  v573 = sub_26738111C();
  v575 = v574;
  v576 = *v574;
  v577 = swift_isUniquelyReferenced_nonNull_native();
  v1029 = *v575;
  *v575 = 0x8000000000000000;
  sub_266ECD368(149, 0xD00000000000003BLL, 0x800000026743A390, v577);
  v578 = *v575;
  *v575 = v1029;

  v573(v1089, 0);
  v579 = sub_26738111C();
  v581 = v580;
  v582 = *v580;
  v583 = swift_isUniquelyReferenced_nonNull_native();
  v1030 = *v581;
  *v581 = 0x8000000000000000;
  sub_266ECD368(150, 0xD00000000000003ALL, 0x800000026743A3D0, v583);
  v584 = *v581;
  *v581 = v1030;

  v579(v1089, 0);
  v585 = sub_26738111C();
  v587 = v586;
  v588 = *v586;
  v589 = swift_isUniquelyReferenced_nonNull_native();
  v1031 = *v587;
  *v587 = 0x8000000000000000;
  sub_266ECD368(151, 0xD00000000000003ALL, 0x800000026743A410, v589);
  v590 = *v587;
  *v587 = v1031;

  v585(v1089, 0);
  v591 = sub_26738111C();
  v593 = v592;
  v594 = *v592;
  v595 = swift_isUniquelyReferenced_nonNull_native();
  v1032 = *v593;
  *v593 = 0x8000000000000000;
  sub_266ECD368(166, 0xD000000000000037, 0x800000026743A450, v595);
  v596 = *v593;
  *v593 = v1032;

  v591(v1089, 0);
  v597 = sub_26738111C();
  v599 = v598;
  v600 = *v598;
  v601 = swift_isUniquelyReferenced_nonNull_native();
  v1033 = *v599;
  *v599 = 0x8000000000000000;
  sub_266ECD368(152, 0xD00000000000002BLL, 0x800000026743A490, v601);
  v602 = *v599;
  *v599 = v1033;

  v597(v1089, 0);
  v603 = sub_26738111C();
  v605 = v604;
  v606 = *v604;
  v607 = swift_isUniquelyReferenced_nonNull_native();
  v1034 = *v605;
  *v605 = 0x8000000000000000;
  sub_266ECD368(153, 0xD00000000000001BLL, 0x800000026743A4C0, v607);
  v608 = *v605;
  *v605 = v1034;

  v603(v1089, 0);
  v609 = sub_26738111C();
  v611 = v610;
  v612 = *v610;
  v613 = swift_isUniquelyReferenced_nonNull_native();
  v1035 = *v611;
  *v611 = 0x8000000000000000;
  sub_266ECD368(154, 0xD000000000000016, 0x800000026743A4E0, v613);
  v614 = *v611;
  *v611 = v1035;

  v609(v1089, 0);
  v615 = sub_26738111C();
  v617 = v616;
  v618 = *v616;
  v619 = swift_isUniquelyReferenced_nonNull_native();
  v1036 = *v617;
  *v617 = 0x8000000000000000;
  sub_266ECD368(155, 0xD00000000000001DLL, 0x800000026743A500, v619);
  v620 = *v617;
  *v617 = v1036;

  v615(v1089, 0);
  v621 = sub_26738111C();
  v623 = v622;
  v624 = *v622;
  v625 = swift_isUniquelyReferenced_nonNull_native();
  v1037 = *v623;
  *v623 = 0x8000000000000000;
  sub_266ECD368(156, 0xD000000000000018, 0x800000026743A520, v625);
  v626 = *v623;
  *v623 = v1037;

  v621(v1089, 0);
  v627 = sub_26738111C();
  v629 = v628;
  v630 = *v628;
  v631 = swift_isUniquelyReferenced_nonNull_native();
  v1038 = *v629;
  *v629 = 0x8000000000000000;
  sub_266ECD368(157, 0xD00000000000001FLL, 0x800000026743A540, v631);
  v632 = *v629;
  *v629 = v1038;

  v627(v1089, 0);
  v633 = sub_26738111C();
  v635 = v634;
  v636 = *v634;
  v637 = swift_isUniquelyReferenced_nonNull_native();
  v1039 = *v635;
  *v635 = 0x8000000000000000;
  sub_266ECD368(158, 0xD00000000000002CLL, 0x800000026743A560, v637);
  v638 = *v635;
  *v635 = v1039;

  v633(v1089, 0);
  v639 = sub_26738111C();
  v641 = v640;
  v642 = *v640;
  v643 = swift_isUniquelyReferenced_nonNull_native();
  v1040 = *v641;
  *v641 = 0x8000000000000000;
  sub_266ECD368(159, 0xD00000000000001FLL, 0x800000026743A590, v643);
  v644 = *v641;
  *v641 = v1040;

  v639(v1089, 0);
  v645 = sub_26738111C();
  v647 = v646;
  v648 = *v646;
  v649 = swift_isUniquelyReferenced_nonNull_native();
  v1041 = *v647;
  *v647 = 0x8000000000000000;
  sub_266ECD368(160, 0xD000000000000024, 0x800000026743A5B0, v649);
  v650 = *v647;
  *v647 = v1041;

  v645(v1089, 0);
  v651 = sub_26738111C();
  v653 = v652;
  v654 = *v652;
  v655 = swift_isUniquelyReferenced_nonNull_native();
  v1042 = *v653;
  *v653 = 0x8000000000000000;
  sub_266ECD368(161, 0xD00000000000002BLL, 0x800000026743A5E0, v655);
  v656 = *v653;
  *v653 = v1042;

  v651(v1089, 0);
  v657 = sub_26738111C();
  v659 = v658;
  v660 = *v658;
  v661 = swift_isUniquelyReferenced_nonNull_native();
  v1043 = *v659;
  *v659 = 0x8000000000000000;
  sub_266ECD368(162, 0xD000000000000034, 0x800000026743A610, v661);
  v662 = *v659;
  *v659 = v1043;

  v657(v1089, 0);
  v663 = sub_26738111C();
  v665 = v664;
  v666 = *v664;
  v667 = swift_isUniquelyReferenced_nonNull_native();
  v1044 = *v665;
  *v665 = 0x8000000000000000;
  sub_266ECD368(163, 0xD00000000000001ELL, 0x800000026743A650, v667);
  v668 = *v665;
  *v665 = v1044;

  v663(v1089, 0);
  v669 = sub_26738111C();
  v671 = v670;
  v672 = *v670;
  v673 = swift_isUniquelyReferenced_nonNull_native();
  v1045 = *v671;
  *v671 = 0x8000000000000000;
  sub_266ECD368(164, 0xD00000000000001ELL, 0x800000026743A670, v673);
  v674 = *v671;
  *v671 = v1045;

  v669(v1089, 0);
  v675 = sub_26738111C();
  v677 = v676;
  v678 = *v676;
  v679 = swift_isUniquelyReferenced_nonNull_native();
  v1046 = *v677;
  *v677 = 0x8000000000000000;
  sub_266ECD368(165, 0xD00000000000002BLL, 0x800000026743A690, v679);
  v680 = *v677;
  *v677 = v1046;

  v675(v1089, 0);
  v681 = sub_26738111C();
  v683 = v682;
  v684 = *v682;
  v685 = swift_isUniquelyReferenced_nonNull_native();
  v1047 = *v683;
  *v683 = 0x8000000000000000;
  sub_266ECD368(167, 0xD000000000000023, 0x800000026743A6C0, v685);
  v686 = *v683;
  *v683 = v1047;

  v681(v1089, 0);
  v687 = sub_26738111C();
  v689 = v688;
  v690 = *v688;
  v691 = swift_isUniquelyReferenced_nonNull_native();
  v1048 = *v689;
  *v689 = 0x8000000000000000;
  sub_266ECD368(168, 0xD00000000000002ALL, 0x800000026743A6F0, v691);
  v692 = *v689;
  *v689 = v1048;

  v687(v1089, 0);
  v693 = sub_26738111C();
  v695 = v694;
  v696 = *v694;
  v697 = swift_isUniquelyReferenced_nonNull_native();
  v1049 = *v695;
  *v695 = 0x8000000000000000;
  sub_266ECD368(169, 0xD000000000000036, 0x800000026743A720, v697);
  v698 = *v695;
  *v695 = v1049;

  v693(v1089, 0);
  v699 = sub_26738111C();
  v701 = v700;
  v702 = *v700;
  v703 = swift_isUniquelyReferenced_nonNull_native();
  v1050 = *v701;
  *v701 = 0x8000000000000000;
  sub_266ECD368(170, 0xD000000000000035, 0x800000026743A760, v703);
  v704 = *v701;
  *v701 = v1050;

  v699(v1089, 0);
  v705 = sub_26738111C();
  v707 = v706;
  v708 = *v706;
  v709 = swift_isUniquelyReferenced_nonNull_native();
  v1051 = *v707;
  *v707 = 0x8000000000000000;
  sub_266ECD368(171, 0xD000000000000020, 0x800000026743A7A0, v709);
  v710 = *v707;
  *v707 = v1051;

  v705(v1089, 0);
  v711 = sub_26738111C();
  v713 = v712;
  v714 = *v712;
  v715 = swift_isUniquelyReferenced_nonNull_native();
  v1052 = *v713;
  *v713 = 0x8000000000000000;
  sub_266ECD368(172, 0xD000000000000027, 0x800000026743A7D0, v715);
  v716 = *v713;
  *v713 = v1052;

  v711(v1089, 0);
  v717 = sub_26738111C();
  v719 = v718;
  v720 = *v718;
  v721 = swift_isUniquelyReferenced_nonNull_native();
  v1053 = *v719;
  *v719 = 0x8000000000000000;
  sub_266ECD368(173, 0xD000000000000021, 0x800000026743A800, v721);
  v722 = *v719;
  *v719 = v1053;

  v717(v1089, 0);
  v723 = sub_26738111C();
  v725 = v724;
  v726 = *v724;
  v727 = swift_isUniquelyReferenced_nonNull_native();
  v1054 = *v725;
  *v725 = 0x8000000000000000;
  sub_266ECD368(174, 0xD000000000000027, 0x800000026743A830, v727);
  v728 = *v725;
  *v725 = v1054;

  v723(v1089, 0);
  v729 = sub_26738111C();
  v731 = v730;
  v732 = *v730;
  v733 = swift_isUniquelyReferenced_nonNull_native();
  v1055 = *v731;
  *v731 = 0x8000000000000000;
  sub_266ECD368(175, 0xD000000000000038, 0x800000026743A860, v733);
  v734 = *v731;
  *v731 = v1055;

  v729(v1089, 0);
  v735 = sub_26738111C();
  v737 = v736;
  v738 = *v736;
  v739 = swift_isUniquelyReferenced_nonNull_native();
  v1056 = *v737;
  *v737 = 0x8000000000000000;
  sub_266ECD368(176, 0xD00000000000002FLL, 0x800000026743A8A0, v739);
  v740 = *v737;
  *v737 = v1056;

  v735(v1089, 0);
  v741 = sub_26738111C();
  v743 = v742;
  v744 = *v742;
  v745 = swift_isUniquelyReferenced_nonNull_native();
  v1057 = *v743;
  *v743 = 0x8000000000000000;
  sub_266ECD368(177, 0xD00000000000001FLL, 0x800000026743A8D0, v745);
  v746 = *v743;
  *v743 = v1057;

  v741(v1089, 0);
  v747 = sub_26738111C();
  v749 = v748;
  v750 = *v748;
  v751 = swift_isUniquelyReferenced_nonNull_native();
  v1058 = *v749;
  *v749 = 0x8000000000000000;
  sub_266ECD368(178, 0xD00000000000002CLL, 0x800000026743A8F0, v751);
  v752 = *v749;
  *v749 = v1058;

  v747(v1089, 0);
  v753 = sub_26738111C();
  v755 = v754;
  v756 = *v754;
  v757 = swift_isUniquelyReferenced_nonNull_native();
  v1059 = *v755;
  *v755 = 0x8000000000000000;
  sub_266ECD368(179, 0xD00000000000001FLL, 0x800000026743A920, v757);
  v758 = *v755;
  *v755 = v1059;

  v753(v1089, 0);
  v759 = sub_26738111C();
  v761 = v760;
  v762 = *v760;
  v763 = swift_isUniquelyReferenced_nonNull_native();
  v1060 = *v761;
  *v761 = 0x8000000000000000;
  sub_266ECD368(180, 0xD00000000000002BLL, 0x800000026743A940, v763);
  v764 = *v761;
  *v761 = v1060;

  v759(v1089, 0);
  v765 = sub_26738111C();
  v767 = v766;
  v768 = *v766;
  v769 = swift_isUniquelyReferenced_nonNull_native();
  v1061 = *v767;
  *v767 = 0x8000000000000000;
  sub_266ECD368(181, 0xD000000000000029, 0x800000026743A970, v769);
  v770 = *v767;
  *v767 = v1061;

  v765(v1089, 0);
  v771 = sub_26738111C();
  v773 = v772;
  v774 = *v772;
  v775 = swift_isUniquelyReferenced_nonNull_native();
  v1062 = *v773;
  *v773 = 0x8000000000000000;
  sub_266ECD368(182, 0xD000000000000029, 0x800000026743A9A0, v775);
  v776 = *v773;
  *v773 = v1062;

  v771(v1089, 0);
  v777 = sub_26738111C();
  v779 = v778;
  v780 = *v778;
  v781 = swift_isUniquelyReferenced_nonNull_native();
  v1063 = *v779;
  *v779 = 0x8000000000000000;
  sub_266ECD368(183, 0xD00000000000002ALL, 0x800000026743A9D0, v781);
  v782 = *v779;
  *v779 = v1063;

  v777(v1089, 0);
  v783 = sub_26738111C();
  v785 = v784;
  v786 = *v784;
  v787 = swift_isUniquelyReferenced_nonNull_native();
  v1064 = *v785;
  *v785 = 0x8000000000000000;
  sub_266ECD368(184, 0xD000000000000024, 0x800000026743AA00, v787);
  v788 = *v785;
  *v785 = v1064;

  v783(v1089, 0);
  v789 = sub_26738111C();
  v791 = v790;
  v792 = *v790;
  v793 = swift_isUniquelyReferenced_nonNull_native();
  v1065 = *v791;
  *v791 = 0x8000000000000000;
  sub_266ECD368(185, 0xD00000000000002CLL, 0x800000026743AA30, v793);
  v794 = *v791;
  *v791 = v1065;

  v789(v1089, 0);
  v795 = sub_26738111C();
  v797 = v796;
  v798 = *v796;
  v799 = swift_isUniquelyReferenced_nonNull_native();
  v1066 = *v797;
  *v797 = 0x8000000000000000;
  sub_266ECD368(186, 0xD00000000000002CLL, 0x800000026743AA60, v799);
  v800 = *v797;
  *v797 = v1066;

  v795(v1089, 0);
  v801 = sub_26738111C();
  v803 = v802;
  v804 = *v802;
  v805 = swift_isUniquelyReferenced_nonNull_native();
  v1067 = *v803;
  *v803 = 0x8000000000000000;
  sub_266ECD368(187, 0xD000000000000023, 0x800000026743AA90, v805);
  v806 = *v803;
  *v803 = v1067;

  v801(v1089, 0);
  v807 = sub_26738111C();
  v809 = v808;
  v810 = *v808;
  v811 = swift_isUniquelyReferenced_nonNull_native();
  v1068 = *v809;
  *v809 = 0x8000000000000000;
  sub_266ECD368(188, 0xD000000000000024, 0x800000026743AAC0, v811);
  v812 = *v809;
  *v809 = v1068;

  v807(v1089, 0);
  v813 = sub_26738111C();
  v815 = v814;
  v816 = *v814;
  v817 = swift_isUniquelyReferenced_nonNull_native();
  v1069 = *v815;
  *v815 = 0x8000000000000000;
  sub_266ECD368(189, 0xD000000000000022, 0x800000026743AAF0, v817);
  v818 = *v815;
  *v815 = v1069;

  v813(v1089, 0);
  v819 = sub_26738111C();
  v821 = v820;
  v822 = *v820;
  v823 = swift_isUniquelyReferenced_nonNull_native();
  v1070 = *v821;
  *v821 = 0x8000000000000000;
  sub_266ECD368(190, 0xD00000000000002DLL, 0x800000026743AB20, v823);
  v824 = *v821;
  *v821 = v1070;

  v819(v1089, 0);
  v825 = sub_26738111C();
  v827 = v826;
  v828 = *v826;
  v829 = swift_isUniquelyReferenced_nonNull_native();
  v1071 = *v827;
  *v827 = 0x8000000000000000;
  sub_266ECD368(191, 0xD000000000000023, 0x800000026743AB50, v829);
  v830 = *v827;
  *v827 = v1071;

  v825(v1089, 0);
  v831 = sub_26738111C();
  v833 = v832;
  v834 = *v832;
  v835 = swift_isUniquelyReferenced_nonNull_native();
  v1072 = *v833;
  *v833 = 0x8000000000000000;
  sub_266ECD368(192, 0xD000000000000021, 0x800000026743AB80, v835);
  v836 = *v833;
  *v833 = v1072;

  v831(v1089, 0);
  v837 = sub_26738111C();
  v839 = v838;
  v840 = *v838;
  v841 = swift_isUniquelyReferenced_nonNull_native();
  v1073 = *v839;
  *v839 = 0x8000000000000000;
  sub_266ECD368(193, 0xD00000000000002CLL, 0x800000026743ABB0, v841);
  v842 = *v839;
  *v839 = v1073;

  v837(v1089, 0);
  v843 = sub_26738111C();
  v845 = v844;
  v846 = *v844;
  v847 = swift_isUniquelyReferenced_nonNull_native();
  v1074 = *v845;
  *v845 = 0x8000000000000000;
  sub_266ECD368(194, 0xD000000000000021, 0x800000026743ABE0, v847);
  v848 = *v845;
  *v845 = v1074;

  v843(v1089, 0);
  v849 = sub_26738111C();
  v851 = v850;
  v852 = *v850;
  v853 = swift_isUniquelyReferenced_nonNull_native();
  v1075 = *v851;
  *v851 = 0x8000000000000000;
  sub_266ECD368(195, 0xD00000000000002CLL, 0x800000026743AC10, v853);
  v854 = *v851;
  *v851 = v1075;

  v849(v1089, 0);
  v855 = sub_26738111C();
  v857 = v856;
  v858 = *v856;
  v859 = swift_isUniquelyReferenced_nonNull_native();
  v1076 = *v857;
  *v857 = 0x8000000000000000;
  sub_266ECD368(196, 0xD00000000000002BLL, 0x800000026743AC40, v859);
  v860 = *v857;
  *v857 = v1076;

  v855(v1089, 0);
  v861 = sub_26738111C();
  v863 = v862;
  v864 = *v862;
  v865 = swift_isUniquelyReferenced_nonNull_native();
  v1077 = *v863;
  *v863 = 0x8000000000000000;
  sub_266ECD368(197, 0xD000000000000029, 0x800000026743AC70, v865);
  v866 = *v863;
  *v863 = v1077;

  v861(v1089, 0);
  v867 = sub_26738111C();
  v869 = v868;
  v870 = *v868;
  v871 = swift_isUniquelyReferenced_nonNull_native();
  v1078 = *v869;
  *v869 = 0x8000000000000000;
  sub_266ECD368(198, 0xD000000000000034, 0x800000026743ACA0, v871);
  v872 = *v869;
  *v869 = v1078;

  v867(v1089, 0);
  v873 = sub_26738111C();
  v875 = v874;
  v876 = *v874;
  v877 = swift_isUniquelyReferenced_nonNull_native();
  v1079 = *v875;
  *v875 = 0x8000000000000000;
  sub_266ECD368(199, 0xD000000000000025, 0x800000026743ACE0, v877);
  v878 = *v875;
  *v875 = v1079;

  v873(v1089, 0);
  v879 = sub_26738111C();
  v881 = v880;
  v882 = *v880;
  v883 = swift_isUniquelyReferenced_nonNull_native();
  v1080 = *v881;
  *v881 = 0x8000000000000000;
  sub_266ECD368(200, 0xD000000000000023, 0x800000026743AD10, v883);
  v884 = *v881;
  *v881 = v1080;

  v879(v1089, 0);
  v885 = sub_26738111C();
  v887 = v886;
  v888 = *v886;
  v889 = swift_isUniquelyReferenced_nonNull_native();
  v1081 = *v887;
  *v887 = 0x8000000000000000;
  sub_266ECD368(201, 0xD00000000000002ELL, 0x800000026743AD40, v889);
  v890 = *v887;
  *v887 = v1081;

  v885(v1089, 0);
  v891 = sub_26738111C();
  v893 = v892;
  v894 = *v892;
  v895 = swift_isUniquelyReferenced_nonNull_native();
  v1082 = *v893;
  *v893 = 0x8000000000000000;
  sub_266ECD368(202, 0xD000000000000022, 0x800000026743AD70, v895);
  v896 = *v893;
  *v893 = v1082;

  v891(v1089, 0);
  v897 = sub_26738111C();
  v899 = v898;
  v900 = *v898;
  v901 = swift_isUniquelyReferenced_nonNull_native();
  v1083 = *v899;
  *v899 = 0x8000000000000000;
  sub_266ECD368(203, 0xD000000000000020, 0x800000026743ADA0, v901);
  v902 = *v899;
  *v899 = v1083;

  v897(v1089, 0);
  v903 = sub_26738111C();
  v905 = v904;
  v906 = *v904;
  v907 = swift_isUniquelyReferenced_nonNull_native();
  v1084 = *v905;
  *v905 = 0x8000000000000000;
  sub_266ECD368(204, 0xD00000000000002BLL, 0x800000026743ADD0, v907);
  v908 = *v905;
  *v905 = v1084;

  v903(v1089, 0);
  v909 = sub_26738111C();
  v911 = v910;
  v912 = *v910;
  v913 = swift_isUniquelyReferenced_nonNull_native();
  v1085 = *v911;
  *v911 = 0x8000000000000000;
  sub_266ECD368(205, 0xD00000000000001FLL, 0x800000026743AE00, v913);
  v914 = *v911;
  *v911 = v1085;

  v909(v1089, 0);
  v915 = sub_26738111C();
  v917 = v916;
  v918 = *v916;
  v919 = swift_isUniquelyReferenced_nonNull_native();
  v1086 = *v917;
  *v917 = 0x8000000000000000;
  sub_266ECD368(206, 0xD000000000000024, 0x800000026743AE20, v919);
  v920 = *v917;
  *v917 = v1086;

  v915(v1089, 0);
  v921 = sub_26738111C();
  v923 = v922;
  v924 = *v922;
  v925 = swift_isUniquelyReferenced_nonNull_native();
  v1087 = *v923;
  *v923 = 0x8000000000000000;
  sub_266ECD368(207, 0xD000000000000023, 0x800000026743AE50, v925);
  v926 = *v923;
  *v923 = v1087;

  v921(v1089, 0);
  v927 = sub_26738111C();
  v929 = v928;
  v930 = *v928;
  v931 = swift_isUniquelyReferenced_nonNull_native();
  v1088 = *v929;
  *v929 = 0x8000000000000000;
  sub_266ECD368(208, 0xD000000000000019, 0x800000026743AE80, v931);
  v932 = *v929;
  *v929 = v1088;

  return v927(v1089, 0);
}

uint64_t sub_266FB4810(uint64_t a1)
{
  v2 = sub_266FB4914(&qword_2800F1718);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FB4878(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FB4914(&qword_2800F1718);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FB4914(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWStateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWStatusReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v596 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743AED0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v596;

  v1(v695, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v597 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026743AEF0, v11);
  v12 = *v9;
  *v9 = v597;

  v7(v695, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v598 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026743AF10, v17);
  v18 = *v15;
  *v15 = v598;

  v13(v695, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v599 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026743AF40, v23);
  v24 = *v21;
  *v21 = v599;

  v19(v695, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v600 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026743AF70, v29);
  v30 = *v27;
  *v27 = v600;

  v25(v695, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v601 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000030, 0x800000026743AFA0, v35);
  v36 = *v33;
  *v33 = v601;

  v31(v695, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v602 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x800000026743AFE0, v41);
  v42 = *v39;
  *v39 = v602;

  v37(v695, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v603 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x800000026743B010, v47);
  v48 = *v45;
  *v45 = v603;

  v43(v695, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v604 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000026, 0x800000026743B040, v53);
  v54 = *v51;
  *v51 = v604;

  v49(v695, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v605 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000027, 0x800000026743B070, v59);
  v60 = *v57;
  *v57 = v605;

  v55(v695, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v606 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x800000026743B0A0, v65);
  v66 = *v63;
  *v63 = v606;

  v61(v695, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v607 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000028, 0x800000026743B0D0, v71);
  v72 = *v69;
  *v69 = v607;

  v67(v695, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v608 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000026, 0x800000026743B100, v77);
  v78 = *v75;
  *v75 = v608;

  v73(v695, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v609 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000027, 0x800000026743B130, v83);
  v84 = *v81;
  *v81 = v609;

  v79(v695, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v610 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000028, 0x800000026743B160, v89);
  v90 = *v87;
  *v87 = v610;

  v85(v695, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v611 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002CLL, 0x800000026743B190, v95);
  v96 = *v93;
  *v93 = v611;

  v91(v695, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v612 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000002FLL, 0x800000026743B1C0, v101);
  v102 = *v99;
  *v99 = v612;

  v97(v695, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v613 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001BLL, 0x800000026743B1F0, v107);
  v108 = *v105;
  *v105 = v613;

  v103(v695, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v614 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000024, 0x800000026743B210, v113);
  v114 = *v111;
  *v111 = v614;

  v109(v695, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v615 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x800000026743B240, v119);
  v120 = *v117;
  *v117 = v615;

  v115(v695, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v616 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000028, 0x800000026743B270, v125);
  v126 = *v123;
  *v123 = v616;

  v121(v695, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v617 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001FLL, 0x800000026743B2A0, v131);
  v132 = *v129;
  *v129 = v617;

  v127(v695, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v618 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000022, 0x800000026743B2C0, v137);
  v138 = *v135;
  *v135 = v618;

  v133(v695, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v619 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001DLL, 0x800000026743B2F0, v143);
  v144 = *v141;
  *v141 = v619;

  v139(v695, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v620 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001DLL, 0x800000026743B310, v149);
  v150 = *v147;
  *v147 = v620;

  v145(v695, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v621 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000029, 0x800000026743B330, v155);
  v156 = *v153;
  *v153 = v621;

  v151(v695, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v622 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000031, 0x800000026743B360, v161);
  v162 = *v159;
  *v159 = v622;

  v157(v695, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v623 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000027, 0x800000026743B3A0, v167);
  v168 = *v165;
  *v165 = v623;

  v163(v695, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v624 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000002BLL, 0x800000026743B3D0, v173);
  v174 = *v171;
  *v171 = v624;

  v169(v695, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v625 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000029, 0x800000026743B400, v179);
  v180 = *v177;
  *v177 = v625;

  v175(v695, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v626 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000002ALL, 0x800000026743B430, v185);
  v186 = *v183;
  *v183 = v626;

  v181(v695, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v627 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000017, 0x800000026743B460, v191);
  v192 = *v189;
  *v189 = v627;

  v187(v695, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v628 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000028, 0x800000026743B480, v197);
  v198 = *v195;
  *v195 = v628;

  v193(v695, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v629 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000020, 0x800000026743B4B0, v203);
  v204 = *v201;
  *v201 = v629;

  v199(v695, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v630 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000021, 0x800000026743B4E0, v209);
  v210 = *v207;
  *v207 = v630;

  v205(v695, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v631 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001FLL, 0x800000026743B510, v215);
  v216 = *v213;
  *v213 = v631;

  v211(v695, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v632 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000026, 0x800000026743B530, v221);
  v222 = *v219;
  *v219 = v632;

  v217(v695, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v633 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000002FLL, 0x800000026743B560, v227);
  v228 = *v225;
  *v225 = v633;

  v223(v695, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v634 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000021, 0x800000026743B590, v233);
  v234 = *v231;
  *v231 = v634;

  v229(v695, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v635 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000025, 0x800000026743B5C0, v239);
  v240 = *v237;
  *v237 = v635;

  v235(v695, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v636 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD00000000000002ALL, 0x800000026743B5F0, v245);
  v246 = *v243;
  *v243 = v636;

  v241(v695, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v637 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001ALL, 0x800000026743B620, v251);
  v252 = *v249;
  *v249 = v637;

  v247(v695, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v638 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000025, 0x800000026743B640, v257);
  v258 = *v255;
  *v255 = v638;

  v253(v695, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v639 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000028, 0x800000026743B670, v263);
  v264 = *v261;
  *v261 = v639;

  v259(v695, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v640 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000039, 0x800000026743B6A0, v269);
  v270 = *v267;
  *v267 = v640;

  v265(v695, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v641 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000030, 0x800000026743B6E0, v275);
  v276 = *v273;
  *v273 = v641;

  v271(v695, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v642 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0xD00000000000003CLL, 0x800000026743B720, v281);
  v282 = *v279;
  *v279 = v642;

  v277(v695, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v643 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0xD00000000000001BLL, 0x800000026743B760, v287);
  v288 = *v285;
  *v285 = v643;

  v283(v695, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v644 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000001FLL, 0x800000026743B780, v293);
  v294 = *v291;
  *v291 = v644;

  v289(v695, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v645 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000025, 0x800000026743B7A0, v299);
  v300 = *v297;
  *v297 = v645;

  v295(v695, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v646 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000026, 0x800000026743B7D0, v305);
  v306 = *v303;
  *v303 = v646;

  v301(v695, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v647 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000026, 0x800000026743B800, v311);
  v312 = *v309;
  *v309 = v647;

  v307(v695, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v648 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 0xD00000000000002ALL, 0x800000026743B830, v317);
  v318 = *v315;
  *v315 = v648;

  v313(v695, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v649 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 0xD00000000000001FLL, 0x800000026743B860, v323);
  v324 = *v321;
  *v321 = v649;

  v319(v695, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v650 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 0xD000000000000027, 0x800000026743B880, v329);
  v330 = *v327;
  *v327 = v650;

  v325(v695, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v651 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 0xD00000000000002DLL, 0x800000026743B8B0, v335);
  v336 = *v333;
  *v333 = v651;

  v331(v695, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v652 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000031, 0x800000026743B8E0, v341);
  v342 = *v339;
  *v339 = v652;

  v337(v695, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v653 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000024, 0x800000026743B920, v347);
  v348 = *v345;
  *v345 = v653;

  v343(v695, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v654 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000026, 0x800000026743B950, v353);
  v354 = *v351;
  *v351 = v654;

  v349(v695, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v655 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000020, 0x800000026743B980, v359);
  v360 = *v357;
  *v357 = v655;

  v355(v695, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v656 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 0xD00000000000002CLL, 0x800000026743B9B0, v365);
  v366 = *v363;
  *v363 = v656;

  v361(v695, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v657 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000024, 0x800000026743B9E0, v371);
  v372 = *v369;
  *v369 = v657;

  v367(v695, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v658 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000026, 0x800000026743BA10, v377);
  v378 = *v375;
  *v375 = v658;

  v373(v695, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v659 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000025, 0x800000026743BA40, v383);
  v384 = *v381;
  *v381 = v659;

  v379(v695, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v660 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(64, 0xD00000000000001BLL, 0x800000026743BA70, v389);
  v390 = *v387;
  *v387 = v660;

  v385(v695, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v661 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(65, 0xD00000000000001FLL, 0x800000026743BA90, v395);
  v396 = *v393;
  *v393 = v661;

  v391(v695, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v662 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(66, 0xD000000000000027, 0x800000026743BAB0, v401);
  v402 = *v399;
  *v399 = v662;

  v397(v695, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v663 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000025, 0x800000026743BAE0, v407);
  v408 = *v405;
  *v405 = v663;

  v403(v695, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v664 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(68, 0xD000000000000022, 0x800000026743BB10, v413);
  v414 = *v411;
  *v411 = v664;

  v409(v695, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v665 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000027, 0x800000026743BB40, v419);
  v420 = *v417;
  *v417 = v665;

  v415(v695, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v666 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(70, 0xD000000000000026, 0x800000026743BB70, v425);
  v426 = *v423;
  *v423 = v666;

  v421(v695, 0);
  v427 = sub_26738111C();
  v429 = v428;
  v430 = *v428;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v667 = *v429;
  *v429 = 0x8000000000000000;
  sub_266ECD368(71, 0xD000000000000022, 0x800000026743BBA0, v431);
  v432 = *v429;
  *v429 = v667;

  v427(v695, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = *v434;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  v668 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(72, 0xD00000000000002CLL, 0x800000026743BBD0, v437);
  v438 = *v435;
  *v435 = v668;

  v433(v695, 0);
  v439 = sub_26738111C();
  v441 = v440;
  v442 = *v440;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v669 = *v441;
  *v441 = 0x8000000000000000;
  sub_266ECD368(73, 0xD00000000000002CLL, 0x800000026743BC00, v443);
  v444 = *v441;
  *v441 = v669;

  v439(v695, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v670 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(74, 0xD000000000000028, 0x800000026743BC30, v449);
  v450 = *v447;
  *v447 = v670;

  v445(v695, 0);
  v451 = sub_26738111C();
  v453 = v452;
  v454 = *v452;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v671 = *v453;
  *v453 = 0x8000000000000000;
  sub_266ECD368(75, 0xD000000000000020, 0x800000026743BC60, v455);
  v456 = *v453;
  *v453 = v671;

  v451(v695, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = *v458;
  v461 = swift_isUniquelyReferenced_nonNull_native();
  v672 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(76, 0xD00000000000002ALL, 0x800000026743BC90, v461);
  v462 = *v459;
  *v459 = v672;

  v457(v695, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v673 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(77, 0xD00000000000002CLL, 0x800000026743BCC0, v467);
  v468 = *v465;
  *v465 = v673;

  v463(v695, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = *v470;
  v473 = swift_isUniquelyReferenced_nonNull_native();
  v674 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(78, 0xD00000000000002ELL, 0x800000026743BCF0, v473);
  v474 = *v471;
  *v471 = v674;

  v469(v695, 0);
  v475 = sub_26738111C();
  v477 = v476;
  v478 = *v476;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v675 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD368(79, 0xD000000000000038, 0x800000026743BD20, v479);
  v480 = *v477;
  *v477 = v675;

  v475(v695, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = *v482;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  v676 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(80, 0xD000000000000029, 0x800000026743BD60, v485);
  v486 = *v483;
  *v483 = v676;

  v481(v695, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v677 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(81, 0xD00000000000002ALL, 0x800000026743BD90, v491);
  v492 = *v489;
  *v489 = v677;

  v487(v695, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = *v494;
  v497 = swift_isUniquelyReferenced_nonNull_native();
  v678 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(82, 0xD000000000000035, 0x800000026743BDC0, v497);
  v498 = *v495;
  *v495 = v678;

  v493(v695, 0);
  v499 = sub_26738111C();
  v501 = v500;
  v502 = *v500;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v679 = *v501;
  *v501 = 0x8000000000000000;
  sub_266ECD368(83, 0xD000000000000027, 0x800000026743BE00, v503);
  v504 = *v501;
  *v501 = v679;

  v499(v695, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v680 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(84, 0xD00000000000003CLL, 0x800000026743BE30, v509);
  v510 = *v507;
  *v507 = v680;

  v505(v695, 0);
  v511 = sub_26738111C();
  v513 = v512;
  v514 = *v512;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v681 = *v513;
  *v513 = 0x8000000000000000;
  sub_266ECD368(85, 0xD000000000000033, 0x800000026743BE70, v515);
  v516 = *v513;
  *v513 = v681;

  v511(v695, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = *v518;
  v521 = swift_isUniquelyReferenced_nonNull_native();
  v682 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(86, 0xD000000000000037, 0x800000026743BEB0, v521);
  v522 = *v519;
  *v519 = v682;

  v517(v695, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = *v524;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v683 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(87, 0xD00000000000002ALL, 0x800000026743BEF0, v527);
  v528 = *v525;
  *v525 = v683;

  v523(v695, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = *v530;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v684 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(88, 0xD000000000000033, 0x800000026743BF20, v533);
  v534 = *v531;
  *v531 = v684;

  v529(v695, 0);
  v535 = sub_26738111C();
  v537 = v536;
  v538 = *v536;
  v539 = swift_isUniquelyReferenced_nonNull_native();
  v685 = *v537;
  *v537 = 0x8000000000000000;
  sub_266ECD368(89, 0xD000000000000041, 0x800000026743BF60, v539);
  v540 = *v537;
  *v537 = v685;

  v535(v695, 0);
  v541 = sub_26738111C();
  v543 = v542;
  v544 = *v542;
  v545 = swift_isUniquelyReferenced_nonNull_native();
  v686 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD368(90, 0xD000000000000026, 0x800000026743BFB0, v545);
  v546 = *v543;
  *v543 = v686;

  v541(v695, 0);
  v547 = sub_26738111C();
  v549 = v548;
  v550 = *v548;
  v551 = swift_isUniquelyReferenced_nonNull_native();
  v687 = *v549;
  *v549 = 0x8000000000000000;
  sub_266ECD368(91, 0xD000000000000023, 0x800000026743BFE0, v551);
  v552 = *v549;
  *v549 = v687;

  v547(v695, 0);
  v553 = sub_26738111C();
  v555 = v554;
  v556 = *v554;
  v557 = swift_isUniquelyReferenced_nonNull_native();
  v688 = *v555;
  *v555 = 0x8000000000000000;
  sub_266ECD368(92, 0xD000000000000020, 0x800000026743C010, v557);
  v558 = *v555;
  *v555 = v688;

  v553(v695, 0);
  v559 = sub_26738111C();
  v561 = v560;
  v562 = *v560;
  v563 = swift_isUniquelyReferenced_nonNull_native();
  v689 = *v561;
  *v561 = 0x8000000000000000;
  sub_266ECD368(93, 0xD000000000000049, 0x800000026743C040, v563);
  v564 = *v561;
  *v561 = v689;

  v559(v695, 0);
  v565 = sub_26738111C();
  v567 = v566;
  v568 = *v566;
  v569 = swift_isUniquelyReferenced_nonNull_native();
  v690 = *v567;
  *v567 = 0x8000000000000000;
  sub_266ECD368(94, 0xD000000000000039, 0x800000026743C090, v569);
  v570 = *v567;
  *v567 = v690;

  v565(v695, 0);
  v571 = sub_26738111C();
  v573 = v572;
  v574 = *v572;
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v691 = *v573;
  *v573 = 0x8000000000000000;
  sub_266ECD368(95, 0xD00000000000003ELL, 0x800000026743C0D0, v575);
  v576 = *v573;
  *v573 = v691;

  v571(v695, 0);
  v577 = sub_26738111C();
  v579 = v578;
  v580 = *v578;
  v581 = swift_isUniquelyReferenced_nonNull_native();
  v692 = *v579;
  *v579 = 0x8000000000000000;
  sub_266ECD368(96, 0xD000000000000035, 0x800000026743C110, v581);
  v582 = *v579;
  *v579 = v692;

  v577(v695, 0);
  v583 = sub_26738111C();
  v585 = v584;
  v586 = *v584;
  v587 = swift_isUniquelyReferenced_nonNull_native();
  v693 = *v585;
  *v585 = 0x8000000000000000;
  sub_266ECD368(97, 0xD000000000000021, 0x800000026743C150, v587);
  v588 = *v585;
  *v585 = v693;

  v583(v695, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = *v590;
  v593 = swift_isUniquelyReferenced_nonNull_native();
  v694 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(98, 0xD00000000000001BLL, 0x800000026743C180, v593);
  v594 = *v591;
  *v591 = v694;

  return v589(v695, 0);
}

uint64_t sub_266FB7604(uint64_t a1)
{
  v2 = sub_266FB7708(&qword_2800F1720);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FB766C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FB7708(&qword_2800F1720);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FB7708(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWStatusReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWStep.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v34 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v2 + 104);
  v30[1] = v2 + 104;
  v31 = v1;
  v30[0] = v11;
  v11(v5, v10, v1);
  v38[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v35 = *(v13 + 56);
  v36 = v13 + 56;
  v35(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x65636E6575716573, 0xEB000000006D754ELL);
  v14(v38, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v37, 0x65636E6575716573, 0xEB000000006D754ELL);
  v32 = *(v13 + 48);
  v33 = v13 + 48;
  if (!v32(v17, 1, v12))
  {
    sub_266ECB128(&unk_287886148);
    sub_26738115C();
  }

  (v16)(v37, 0);
  v15(v38, 0);
  (v30[0])(v5, *MEMORY[0x277D3E510], v31);
  v38[0] = 1;
  sub_26738114C();
  v18 = v12;
  v19 = v35;
  v35(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D617473656D6974, 0xEB00000000734D70);
  v20(v38, 0);
  sub_266ECB294(0, &qword_2800F1708, 0x277D57700);
  sub_266ECAF2C(&qword_2800F1700, &qword_2800F1708, 0x277D57700);
  sub_26738120C();
  v19(v9, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x74617453776F6C66, 0xE900000000000065);
  v21(v38, 0);
  sub_266ECB294(0, &qword_2800F0F20, 0x277D574F0);
  sub_266ECAF2C(&qword_2800F0F18, &qword_2800F0F20, 0x277D574F0);
  sub_26738120C();
  v19(v9, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x65746E6F43707061, 0xEA00000000007478);
  v22(v38, 0);
  sub_266ECB294(0, &qword_2800F1100, 0x277D57520);
  sub_266ECAF2C(&qword_2800F10F8, &qword_2800F1100, 0x277D57520);
  sub_26738122C();
  v19(v9, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F436E69616D6F64, 0xED0000747865746ELL);
  v23(v38, 0);
  sub_266ECB294(0, &qword_2800F15A8, 0x277D57698);
  sub_266ECAF2C(&qword_2800F15A0, &qword_2800F15A8, 0x277D57698);
  sub_26738122C();
  v19(v9, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D726F6674616C70, 0xEF747865746E6F43);
  v24(v38, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v37, 0x6D726F6674616C70, 0xEF747865746E6F43);
  if (!v32(v27, 1, v18))
  {
    sub_266ECB128(&unk_287886170);
    sub_26738115C();
  }

  (v26)(v37, 0);
  v25(v38, 0);
  sub_26738120C();
  v35(v9, 0, 1, v18);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026743C1D0);
  return v28(v38, 0);
}

uint64_t sub_266FB7FB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB8014(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWSummarySourceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026743C220, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026743C240, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026743C270, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FB82CC(uint64_t a1)
{
  v2 = sub_266FB83D0(&qword_2800F1728);

  return MEMORY[0x28219ED78](a1, v2);
}