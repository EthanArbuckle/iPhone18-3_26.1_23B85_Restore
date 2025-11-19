uint64_t static LRSchemaLRWindow.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v12 = *MEMORY[0x277D3E540];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v23[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D69547472617473, 0xED0000734E6E4965);
  v16(v23, 0);
  v13(v7, v12, v21);
  v23[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x49656D6954646E65, 0xEB00000000734E6ELL);
  v17(v23, 0);
  type metadata accessor for SISchemaDeviceSensitivityState(0);
  sub_267090C78(&qword_2800F3CC8, type metadata accessor for SISchemaDeviceSensitivityState);
  sub_26738122C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, 0x8000000267452DD0);
  v18(v23, 0);
  sub_266ECB128(&unk_287887E90);
  return sub_2673811CC();
}

uint64_t sub_267090B6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267090BD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267090C78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267090CC0()
{
  result = qword_2800F3CF0;
  if (!qword_2800F3CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3CF0);
  }

  return result;
}

uint64_t static LTSchemaASRSpeechTranslationEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v44 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v45 = v3 + 104;
  v47 = v12;
  v12(v6, v11, v2);
  v49[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v13);
  v42 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x4974736575716572, 0xE900000000000044);
  v17(v49, 0);
  v48 = v2;
  v18 = v47;
  v47(v6, v11, v2);
  v49[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x64657463656C6573, 0xEE00656C61636F4CLL);
  v19(v49, 0);
  v40 = "RSpeechTranslationEvent";
  v20 = *MEMORY[0x277D3E538];
  v18(v6, v20, v2);
  v49[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v21 = v15;
  v46 = v15;
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v40 | 0x8000000000000000);
  v22(v49, 0);
  v40 = "timeToFirstPartialMs";
  v41 = v20;
  v23 = v47;
  v47(v6, v20, v48);
  v49[0] = 1;
  sub_26738114C();
  v21(v10, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v40 | 0x8000000000000000);
  v24(v49, 0);
  v40 = "timeToFinalResultMs";
  v25 = v20;
  v26 = v48;
  v23(v6, v25, v48);
  v49[0] = 1;
  sub_26738114C();
  v43 = v13;
  v27 = v46;
  v46(v10, 0, 1, v13);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v40 | 0x8000000000000000);
  v28(v49, 0);
  v40 = "latencyFinalResultMs";
  v29 = v41;
  v47(v6, v41, v26);
  v49[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v13);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v40 | 0x8000000000000000);
  v30(v49, 0);
  v40 = "timeToSendFirstAudioPacket";
  v32 = v47;
  v31 = v48;
  v47(v6, v29, v48);
  v49[0] = 1;
  sub_26738114C();
  v46(v10, 0, 1, v43);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v40 | 0x8000000000000000);
  v33(v49, 0);
  v32(v6, v29, v31);
  v49[0] = 1;
  sub_26738114C();
  v34 = v43;
  v35 = v46;
  v46(v10, 0, 1, v43);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F696475416D756ELL, 0xEE0074656B636150);
  v36(v49, 0);
  v32(v6, v41, v48);
  v49[0] = 1;
  sub_26738114C();
  v35(v10, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267452ED0);
  v37(v49, 0);
  sub_266ECB128(&unk_287887EC0);
  return sub_2673811CC();
}

uint64_t sub_267091608(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709166C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670916D0()
{
  result = qword_2800F3D00;
  if (!qword_2800F3D00)
  {
    sub_267091728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3D00);
  }

  return result;
}

unint64_t sub_267091728()
{
  result = qword_2800F3D08;
  if (!qword_2800F3D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3D08);
  }

  return result;
}

uint64_t static LTSchemaBatchTranslationEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v47 = sub_26738113C();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v47);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v43 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3D10, 0x277D585D0);
  sub_266ECAF2C(&qword_2800F3D18, &qword_2800F3D10, 0x277D585D0);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v46 = *(v12 + 56);
  v13 = v12 + 56;
  v46(v10, 0, 1, v11);
  v44 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 1802723700, 0xE400000000000000);
  v14(v48, 0);
  v15 = *MEMORY[0x277D3E530];
  v16 = *(v3 + 104);
  v45 = v3 + 104;
  v41 = v15;
  v17 = v47;
  v16(v6, v15, v47);
  v18 = v16;
  v48[0] = 1;
  sub_26738114C();
  v19 = v46;
  v46(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x496E6F6973736573, 0xE900000000000044);
  v20(v48, 0);
  v18(v6, v15, v17);
  v48[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x4974736575716572, 0xE900000000000044);
  v21(v48, 0);
  v22 = v47;
  v18(v6, v41, v47);
  v48[0] = 1;
  sub_26738114C();
  v39 = v11;
  v23 = v46;
  v46(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F4C6D6574737973, 0xEC000000656C6163);
  v24(v48, 0);
  v25 = *MEMORY[0x277D3E538];
  v18(v6, v25, v22);
  v40 = v18;
  v48[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x7165536863746162, 0xEA00000000006F4ELL);
  v26(v48, 0);
  v38 = "tchTranslationEvent";
  v41 = v25;
  v27 = v47;
  v18(v6, v25, v47);
  v48[0] = 1;
  sub_26738114C();
  v28 = v39;
  v29 = v46;
  v46(v10, 0, 1, v39);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v38 | 0x8000000000000000);
  v30(v48, 0);
  v31 = v25;
  v32 = v40;
  v40(v6, v31, v27);
  v48[0] = 1;
  sub_26738114C();
  v33 = v28;
  v29(v10, 0, 1, v28);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x65736E6F70736572, 0xEE00734D656D6954);
  v34(v48, 0);
  v32(v6, v41, v47);
  v48[0] = 1;
  sub_26738114C();
  v29(v10, 0, 1, v28);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267452F50);
  v35(v48, 0);
  sub_266ECB294(0, &qword_2800F3D20, 0x277D58590);
  sub_266ECAF2C(&qword_2800F3D28, &qword_2800F3D20, 0x277D58590);
  sub_26738120C();
  v29(v10, 0, 1, v33);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0x726F727265, 0xE500000000000000);
  v36(v48, 0);
  sub_266ECB128(&unk_287887EE8);
  return sub_2673811CC();
}

uint64_t sub_267092064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670920C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LTSchemaDisambiguationSpeechTranslationEvent.makeTypeManifestAndEnsureFields(in:)()
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
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v1 + 104);
  v19 = v0;
  v20 = v10;
  v10(v4, v9, v0);
  v22[0] = 1;
  sub_26738114C();
  v21 = sub_26738116C();
  v11 = *(*(v21 - 8) + 56);
  v11(v8, 0, 1, v21);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x4974736575716572, 0xE900000000000044);
  v12(v22, 0);
  v13 = v0;
  v14 = v20;
  v20(v4, v9, v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F4C656372756F73, 0xEC000000656C6163);
  v15(v22, 0);
  v14(v4, v9, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x444965736E6573, 0xE700000000000000);
  v16(v22, 0);
  sub_266ECB128(&unk_287887F10);
  return sub_2673811CC();
}

uint64_t sub_267092560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670925C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267092628()
{
  result = qword_2800F3D40;
  if (!qword_2800F3D40)
  {
    sub_267092680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3D40);
  }

  return result;
}

unint64_t sub_267092680()
{
  result = qword_2800F3D48;
  if (!qword_2800F3D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3D48);
  }

  return result;
}

uint64_t static LTSchemaError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11(v6, *MEMORY[0x277D3E538], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 1701080931, 0xE400000000000000);
  v15(v18, 0);
  sub_266ECB128(&unk_287887F38);
  return sub_2673811CC();
}

uint64_t sub_2670929F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267092A5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267092AC0()
{
  result = qword_2800F3D28;
  if (!qword_2800F3D28)
  {
    sub_267092B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3D28);
  }

  return result;
}

unint64_t sub_267092B18()
{
  result = qword_2800F3D20;
  if (!qword_2800F3D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3D20);
  }

  return result;
}

uint64_t static LTSchemaLIDSpeechTranslationEvent.makeTypeManifestAndEnsureFields(in:)(char *a1)
{
  v28 = a1;
  v29 = sub_26738113C();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v31 = *MEMORY[0x277D3E530];
  v9 = *(v1 + 104);
  v33 = v1 + 104;
  v30 = v9;
  v27 = v4;
  v9(v4);
  v34[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x4974736575716572, 0xE900000000000044);
  v14(v34, 0);
  sub_266ECB294(0, &qword_2800F3D50, 0x277D585A0);
  sub_266ECAF2C(&qword_2800F3D58, &qword_2800F3D50, 0x277D585A0);
  sub_26738120C();
  v12(v8, 0, 1, v10);
  v26 = v13;
  v32 = v12;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x64657463656C6573, 0xEE00656C61636F4CLL);
  v15(v34, 0);
  sub_26738120C();
  v12(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x74616E7265746C61, 0xEF656C61636F4C65);
  v16(v34, 0);
  v28 = "DSpeechTranslationEvent";
  v17 = v27;
  v18 = v29;
  v19 = v30;
  (v30)(v27, v31, v29);
  v34[0] = 1;
  sub_26738114C();
  v20 = v10;
  v32(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v28 | 0x8000000000000000);
  v21(v34, 0);
  v31 = *MEMORY[0x277D3E538];
  v19(v17);
  v34[0] = 1;
  sub_26738114C();
  v22 = v32;
  v32(v8, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x65736E6F70736572, 0xEE00734D656D6954);
  v23(v34, 0);
  (v19)(v17, v31, v18);
  v34[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267453050);
  v24(v34, 0);
  sub_266ECB128(&unk_287887F60);
  return sub_2673811CC();
}

uint64_t sub_2670931D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267093238(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LTSchemaLocaleConfidence.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x656C61636F6CLL, 0xE600000000000000);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656469666E6F63, 0xEA00000000006563);
  v15(v18, 0);
  sub_266ECB128(&unk_287887F88);
  return sub_2673811CC();
}

uint64_t sub_267093614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267093678(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670936DC()
{
  result = qword_2800F3D58;
  if (!qword_2800F3D58)
  {
    sub_267093734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3D58);
  }

  return result;
}

unint64_t sub_267093734()
{
  result = qword_2800F3D50;
  if (!qword_2800F3D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3D50);
  }

  return result;
}

uint64_t static LTSchemaMTClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3D70, 0x277D585B8);
  sub_266ECAF2C(&qword_2800F3D78, &qword_2800F3D70, 0x277D585B8);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674530D0);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F3D38, 0x277D58580);
  sub_266ECAF2C(&qword_2800F3D30, &qword_2800F3D38, 0x277D58580);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674530F0);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F3D80, 0x277D585C0);
  sub_266ECAF2C(&qword_2800F3D88, &qword_2800F3D80, 0x277D585C0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267453110);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F3D68, 0x277D58598);
  sub_266ECAF2C(&qword_2800F3D60, &qword_2800F3D68, 0x277D58598);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267453130);
  v12(v30, 0);
  sub_266ECB294(0, &qword_2800F3D48, 0x277D58588);
  sub_266ECAF2C(&qword_2800F3D40, &qword_2800F3D48, 0x277D58588);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000024, 0x8000000267453150);
  v13(v30, 0);
  sub_266ECB294(0, &qword_2800F3D08, 0x277D58578);
  sub_266ECAF2C(&qword_2800F3D00, &qword_2800F3D08, 0x277D58578);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267453180);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F3D90, 0x277D585B0);
  sub_266ECAF2C(&qword_2800F3D98, &qword_2800F3D90, 0x277D585B0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x80000002674531A0);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F3DA0, 0x277D585C8);
  sub_266ECAF2C(&qword_2800F3DA8, &qword_2800F3DA0, 0x277D585C8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x80000002674531C0);
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
  v18(v30, 0);
  sub_266ECB128(&unk_287887FB0);
  return sub_2673811CC();
}

uint64_t sub_2670940BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267094154()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267094220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267094284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670942E4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F3DB0, &qword_2800F3DB8, 0x277D585A8);
  a1[2] = sub_266ECAF2C(&qword_2800F3DC0, &qword_2800F3DB8, 0x277D585A8);
  result = sub_266ECAF2C(&qword_2800F3DC8, &qword_2800F3DB8, 0x277D585A8);
  a1[3] = result;
  return result;
}

uint64_t static LTSchemaMTSpeechTranslationEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000044);
  v12(v21, 0);
  v13 = v19;
  (v8)(v3, v20, v19);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x64657463656C6573, 0xEE00656C61636F4CLL);
  v14(v21, 0);
  (v18)(v3, *MEMORY[0x277D3E508], v13);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x65736E6F70736572, 0xEE00734D656D6954);
  v15(v21, 0);
  sub_266ECB128(&unk_287887FE8);
  return sub_2673811CC();
}

uint64_t sub_2670947FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267094860(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670948C4()
{
  result = qword_2800F3D98;
  if (!qword_2800F3D98)
  {
    sub_26709491C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3D98);
  }

  return result;
}

unint64_t sub_26709491C()
{
  result = qword_2800F3D90;
  if (!qword_2800F3D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3D90);
  }

  return result;
}

uint64_t static LTSchemaSafariFeedbackEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_26738113C();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3D10, 0x277D585D0);
  sub_266ECAF2C(&qword_2800F3D18, &qword_2800F3D10, 0x277D585D0);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v26 = v11 + 56;
  v12(v9, 0, 1, v10);
  v24 = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 1802723700, 0xE400000000000000);
  v13(v28, 0);
  v14 = *MEMORY[0x277D3E530];
  v25 = *(v2 + 104);
  v15 = v27;
  v25(v5, v14, v27);
  v28[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x496E6F6973736573, 0xE900000000000044);
  v16(v28, 0);
  v23 = "fariFeedbackEvent";
  v17 = v15;
  v18 = v25;
  v25(v5, v14, v17);
  v28[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v23 | 0x8000000000000000);
  v19(v28, 0);
  v18(v5, v14, v27);
  v28[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267453280);
  v20(v28, 0);
  sub_266ECB128(&unk_287888010);
  return sub_2673811CC();
}

uint64_t sub_267094E44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267094EA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static LTSchemaSpeechTranslationEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v57 = sub_26738113C();
  v59 = *(v57 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v53 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3D10, 0x277D585D0);
  sub_266ECAF2C(&qword_2800F3D18, &qword_2800F3D10, 0x277D585D0);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v56 = v11 + 56;
  v52 = v10;
  v12(v9, 0, 1, v10);
  v13 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 1802723700, 0xE400000000000000);
  v14(v60, 0);
  v15 = *MEMORY[0x277D3E530];
  v16 = *(v59 + 104);
  v59 += 104;
  v17 = v5;
  v18 = v5;
  v51 = v15;
  v19 = v57;
  v16(v18, v15, v57);
  v60[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x496E6F6973736573, 0xE900000000000044);
  v20(v60, 0);
  v16(v17, v15, v19);
  v60[0] = 1;
  sub_26738114C();
  v21 = v52;
  v13(v9, 0, 1, v52);
  v50 = v13;
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x4974736575716572, 0xE900000000000044);
  v22(v60, 0);
  v49 = "eechTranslationEvent";
  v23 = *MEMORY[0x277D3E4E8];
  v58 = v17;
  v24 = v57;
  v54 = v16;
  v16(v17, v23, v57);
  v60[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v49 | 0x8000000000000000);
  v25(v60, 0);
  v16(v58, v23, v24);
  v60[0] = 1;
  sub_26738114C();
  v26 = v50;
  v50(v9, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x616D6F7475417369, 0xEE0044494C636974);
  v27(v60, 0);
  sub_266ECB294(0, &qword_2800F3D20, 0x277D58590);
  sub_266ECAF2C(&qword_2800F3D28, &qword_2800F3D20, 0x277D58590);
  sub_26738120C();
  v26(v9, 0, 1, v21);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F727265, 0xE500000000000000);
  v28(v60, 0);
  type metadata accessor for LTSchemaUI_MODE(0);
  sub_267095C3C(&qword_2800F3DD8, type metadata accessor for LTSchemaUI_MODE);
  sub_26738120C();
  v26(v9, 0, 1, v21);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x65646F4D6975, 0xE600000000000000);
  v29(v60, 0);
  v49 = "inRestrictedMode";
  v30 = v57;
  v31 = v54;
  v54(v58, v51, v57);
  v60[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v21);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v49 | 0x8000000000000000);
  v32(v60, 0);
  v49 = "mobileAssetConfigVersion";
  v51 = *MEMORY[0x277D3E538];
  v33 = v58;
  v34 = v31;
  (v31)(v58);
  v60[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v21);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v49 | 0x8000000000000000);
  v35(v60, 0);
  v49 = "timeToFirstPartialDisplayed";
  v36 = v51;
  v37 = v30;
  v34(v33, v51, v30);
  v60[0] = 1;
  sub_26738114C();
  v38 = v52;
  v39 = v50;
  v50(v9, 0, 1, v52);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v49 | 0x8000000000000000);
  v40(v60, 0);
  v49 = "timeToRecordingDialogDismissed";
  v41 = v58;
  v42 = v36;
  v43 = v54;
  v54(v58, v42, v37);
  v60[0] = 1;
  sub_26738114C();
  v39(v9, 0, 1, v38);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v49 | 0x8000000000000000);
  v44(v60, 0);
  v43(v41, v51, v57);
  v60[0] = 1;
  sub_26738114C();
  v39(v9, 0, 1, v38);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0x61436F54656D6974, 0xEC0000006C65636ELL);
  v45(v60, 0);
  type metadata accessor for LTSchemaSpeechTranslationStatus(0);
  sub_267095C3C(&qword_2800F3DE0, type metadata accessor for LTSchemaSpeechTranslationStatus);
  sub_26738120C();
  v39(v9, 0, 1, v38);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0x737574617473, 0xE600000000000000);
  v46(v60, 0);
  sub_266ECB128(&unk_287888038);
  return sub_2673811CC();
}

uint64_t sub_267095B78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267095BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267095C3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static LTSchemaSpeechTranslationStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674533C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x80000002674533E0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267453400, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267453420, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_287888060);
  return sub_26738112C();
}

uint64_t sub_267095F68(uint64_t a1)
{
  v2 = sub_26709606C(&qword_2800F3DE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267095FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26709606C(&qword_2800F3DE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26709606C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LTSchemaSpeechTranslationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LTSchemaTask.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v43 = sub_26738113C();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v43);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v39 = a1;
  sub_26738119C();
  v44 = *MEMORY[0x277D3E530];
  v10 = *(v2 + 104);
  v42 = v2 + 104;
  v10(v5);
  v40 = v10;
  v45[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v38 = v11;
  v13(v9, 0, 1, v11);
  v15 = v13;
  v41 = v13;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x74616C736E617274, 0xEF6B7361546E6F69);
  v16(v45, 0);
  v17 = v44;
  v18 = v43;
  (v10)(v5, v44, v43);
  v45[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v11);
  v37 = v14;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x614C656372756F73, 0xEE0065676175676ELL);
  v19(v45, 0);
  v20 = v17;
  v21 = v18;
  v22 = v18;
  v23 = v40;
  (v40)(v5, v20, v21);
  v45[0] = 1;
  sub_26738114C();
  v24 = v38;
  v41(v9, 0, 1, v38);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x614C746567726174, 0xEE0065676175676ELL);
  v25(v45, 0);
  (v23)(v5, v44, v22);
  v45[0] = 1;
  sub_26738114C();
  v26 = v41;
  v41(v9, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x534F656369766564, 0xE800000000000000);
  v27(v45, 0);
  v28 = v44;
  (v23)(v5, v44, v43);
  v45[0] = 1;
  sub_26738114C();
  v29 = v38;
  v26(v9, 0, 1, v38);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954656369766564, 0xEA00000000006570);
  v30(v45, 0);
  v31 = v28;
  v32 = v43;
  v33 = v40;
  (v40)(v5, v31, v43);
  v45[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F6973726556736FLL, 0xE90000000000006ELL);
  v34(v45, 0);
  (v33)(v5, v44, v32);
  v45[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v29);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267451B90);
  v35(v45, 0);
  sub_266ECB128(&unk_287888088);
  return sub_2673811CC();
}

uint64_t sub_2670967E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709684C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670968B0()
{
  result = qword_2800F3D18;
  if (!qword_2800F3D18)
  {
    sub_267096908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3D18);
  }

  return result;
}

unint64_t sub_267096908()
{
  result = qword_2800F3D10;
  if (!qword_2800F3D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3D10);
  }

  return result;
}

uint64_t static LTSchemaTTSSpeechTranslationEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v25 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v23 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23[1] = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v24 = *(v3 + 104);
  v24(v6, v11, v2);
  v23[3] = v3 + 104;
  v26[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v23[2] = v13 + 56;
  v14(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x4974736575716572, 0xE900000000000044);
  v15(v26, 0);
  v16 = v24;
  v17 = v25;
  v24(v6, v11, v25);
  v26[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x64657463656C6573, 0xEE00656C61636F4CLL);
  v18(v26, 0);
  v19 = *MEMORY[0x277D3E538];
  v16(v6, v19, v17);
  v26[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x65736E6F70736572, 0xEE00734D656D6954);
  v20(v26, 0);
  v24(v6, v19, v25);
  v26[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674534B0);
  v21(v26, 0);
  sub_266ECB128(&unk_2878880B0);
  return sub_2673811CC();
}

uint64_t sub_267096E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267096E9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267096F00()
{
  result = qword_2800F3DA8;
  if (!qword_2800F3DA8)
  {
    sub_267096F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3DA8);
  }

  return result;
}

unint64_t sub_267096F58()
{
  result = qword_2800F3DA0;
  if (!qword_2800F3DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3DA0);
  }

  return result;
}

uint64_t static LTSchemaUI_MODE.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x5F45444F4D5F4955, 0xEF4E574F4E4B4E55, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x50414353444E414CLL, 0xE900000000000045, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x54494C5053, 0xE500000000000000, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x5449415254524F50, 0xE800000000000000, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_2878880D8);
  return sub_26738112C();
}

uint64_t sub_267097234(uint64_t a1)
{
  v2 = sub_267097338(&qword_2800F3DF0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26709729C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267097338(&qword_2800F3DF0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267097338(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LTSchemaUI_MODE(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaFirstPassChannelSelectionScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x536C656E6E616863, 0xED0000676E697274);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E500], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x7361507473726966, 0xEE0065726F635373);
  return v15(v18, 0);
}

uint64_t sub_2670976B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267097718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709777C()
{
  result = qword_2800F3DF8;
  if (!qword_2800F3DF8)
  {
    sub_2670977D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3DF8);
  }

  return result;
}

unint64_t sub_2670977D4()
{
  result = qword_2800F3E00;
  if (!qword_2800F3E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3E00);
  }

  return result;
}

uint64_t static MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3E08, 0x277D58600);
  sub_266ECAF2C(&qword_2800F3E10, &qword_2800F3E08, 0x277D58600);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F3E18, 0x277D585F8);
  sub_266ECAF2C(&qword_2800F3E20, &qword_2800F3E18, 0x277D585F8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E654765726F6373, 0xEE00646574617265);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F3E28, 0x277D585F0);
  sub_266ECAF2C(&qword_2800F3E30, &qword_2800F3E28, 0x277D585F0);
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

uint64_t sub_267097D48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267097DAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAcousticFalseTriggerMitigationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670980A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267098104(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267098168()
{
  result = qword_2800F3E30;
  if (!qword_2800F3E30)
  {
    sub_2670981C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3E30);
  }

  return result;
}

unint64_t sub_2670981C0()
{
  result = qword_2800F3E28;
  if (!qword_2800F3E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3E28);
  }

  return result;
}

uint64_t static MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated.makeTypeManifestAndEnsureFields(in:)()
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
  v21 = *MEMORY[0x277D3E500];
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
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  v12(v22, 0);
  v18 = "recognitionDurationInNs";
  v13 = v0;
  v14 = v20;
  v20(v4, *MEMORY[0x277D3E540], v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v18 | 0x8000000000000000);
  v15(v22, 0);
  v14(v4, v21, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C6F687365726874, 0xE900000000000064);
  return v16(v22, 0);
}

uint64_t sub_2670985F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709865C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670986C0()
{
  result = qword_2800F3E20;
  if (!qword_2800F3E20)
  {
    sub_267098718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3E20);
  }

  return result;
}

unint64_t sub_267098718()
{
  result = qword_2800F3E18;
  if (!qword_2800F3E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3E18);
  }

  return result;
}

uint64_t static MHSchemaMHAcousticFalseTriggerMitigationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v11(v14, 0);
  type metadata accessor for MHSchemaMHAcousticFalseTriggerMitigationType(0);
  sub_267098BA4(&qword_2800F3E48, type metadata accessor for MHSchemaMHAcousticFalseTriggerMitigationType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x697461676974696DLL, 0xEE00657079546E6FLL);
  return v12(v14, 0);
}

uint64_t sub_267098A98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267098AFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267098BA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267098BEC()
{
  result = qword_2800F3E08;
  if (!qword_2800F3E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3E08);
  }

  return result;
}

uint64_t static MHSchemaMHAcousticFalseTriggerMitigationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x80000002674536A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x80000002674536D0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003CLL, 0x8000000267453710, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267098E4C(uint64_t a1)
{
  v2 = sub_267098F50(&qword_2800F3E50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267098EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267098F50(&qword_2800F3E50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267098F50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAcousticFalseTriggerMitigationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v45 = sub_26738113C();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v38 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v42 = *MEMORY[0x277D3E500];
  v11 = *(v3 + 104);
  v48 = v3 + 104;
  v46 = v11;
  (v11)(v6);
  v49[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v12);
  v41 = v14;
  v47 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D756C6F56737474, 0xE900000000000065);
  v16(v49, 0);
  type metadata accessor for MHSchemaMHASVSpeakerDistanceType(0);
  sub_267099A68(&qword_2800F3E58, type metadata accessor for MHSchemaMHASVSpeakerDistanceType);
  sub_26738120C();
  v17 = v12;
  v44 = v12;
  v14(v10, 0, 1, v12);
  v38[1] = v15;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x4472656B61657073, 0xEF65636E61747369);
  v18(v49, 0);
  v40 = "eSiriVolumeTTSVolumeQueried";
  v19 = v42;
  v21 = v45;
  v20 = v46;
  v46(v6, v42, v45);
  v49[0] = 1;
  sub_26738114C();
  v41(v10, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v40 | 0x8000000000000000);
  v22(v49, 0);
  v40 = "speakerSpeechLevel";
  v20(v6, v19, v21);
  v49[0] = 1;
  sub_26738114C();
  v23 = v41;
  v41(v10, 0, 1, v44);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v40 | 0x8000000000000000);
  v24(v49, 0);
  v40 = "musicLoudnessLevel";
  v20(v6, v19, v21);
  v49[0] = 1;
  sub_26738114C();
  v25 = v44;
  v23(v10, 0, 1, v44);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v40 | 0x8000000000000000);
  v26(v49, 0);
  type metadata accessor for MHSchemaMHASVBackgroundNoiseActivityLevel(0);
  sub_267099A68(&qword_2800F3E60, type metadata accessor for MHSchemaMHASVBackgroundNoiseActivityLevel);
  sub_26738120C();
  v23(v10, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x80000002674537F0);
  v27(v49, 0);
  LODWORD(v40) = *MEMORY[0x277D3E4E8];
  v39 = v6;
  (v46)(v6);
  v49[0] = 1;
  sub_26738114C();
  v28 = v23;
  v23(v10, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267453810);
  v29(v49, 0);
  type metadata accessor for MHSchemaMHASVInvocationType(0);
  sub_267099A68(&qword_2800F3E68, type metadata accessor for MHSchemaMHASVInvocationType);
  sub_26738120C();
  v30 = v25;
  v28(v10, 0, 1, v25);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0x697461636F766E69, 0xEE00657079546E6FLL);
  v31(v49, 0);
  v43 = "isMediaPlaybackOn";
  v32 = v39;
  v34 = v45;
  v33 = v46;
  v46(v39, v40, v45);
  v49[0] = 1;
  sub_26738114C();
  v28(v10, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v43 | 0x8000000000000000);
  v35(v49, 0);
  v33(v32, v42, v34);
  v49[0] = 1;
  sub_26738114C();
  v28(v10, 0, 1, v44);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267453850);
  return v36(v49, 0);
}

uint64_t sub_26709995C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670999C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267099A68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267099AB0()
{
  result = qword_2800F3E78;
  if (!qword_2800F3E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3E78);
  }

  return result;
}

uint64_t static MHSchemaMHAdaptiveSiriVolumeUserIntentDetected.makeTypeManifestAndEnsureFields(in:)()
{
  v25 = sub_26738113C();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v25);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHASVUserIntentType(0);
  sub_26709A0F4(&qword_2800F3E80, type metadata accessor for MHSchemaMHASVUserIntentType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v23 = v9 + 56;
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x65746E4972657375, 0xEE0065707954746ELL);
  v11(v26, 0);
  v21[0] = "eSiriVolumeUserIntentDetected";
  v24 = *MEMORY[0x277D3E500];
  v12 = v0 + 104;
  v22 = *(v0 + 104);
  v13 = v25;
  v22(v3);
  v21[1] = v12;
  v26[0] = 1;
  sub_26738114C();
  v14 = v10;
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v21[0] | 0x8000000000000000);
  v15(v26, 0);
  v21[0] = "isMediaPlaybackOn";
  v16 = v13;
  v17 = v22;
  (v22)(v3, *MEMORY[0x277D3E4E8], v16);
  v26[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v21[0] | 0x8000000000000000);
  v18(v26, 0);
  (v17)(v3, v24, v25);
  v26[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267453850);
  return v19(v26, 0);
}

uint64_t sub_267099FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709A04C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26709A0F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26709A13C()
{
  result = qword_2800F3E90;
  if (!qword_2800F3E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3E90);
  }

  return result;
}

uint64_t static MHSchemaMHAdBlockerDismissalType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267453900, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267453920, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x8000000267453940, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x8000000267453970, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000031, 0x80000002674539A0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26709A47C(uint64_t a1)
{
  v2 = sub_26709A580(&qword_2800F3EA0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26709A4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26709A580(&qword_2800F3EA0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26709A580(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAdBlockerDismissalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAdBlockerSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267453A10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267453A30, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267453A50, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_26709A7DC(uint64_t a1)
{
  v2 = sub_26709A8E0(&qword_2800F3EB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26709A844(uint64_t a1, uint64_t a2)
{
  v4 = sub_26709A8E0(&qword_2800F3EB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26709A8E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAdBlockerSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAdMatchingEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = a1;
  v21 = sub_26738113C();
  v23 = *(v21 - 8);
  v1 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAdBlockerDismissalType(0);
  sub_26709AEF4(&qword_2800F3E98, type metadata accessor for MHSchemaMHAdBlockerDismissalType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v8);
  v20 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x8000000267453AA0);
  v12(v24, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = *(v23 + 104);
  v23 += 104;
  v15 = v21;
  v14(v3, v13, v21);
  v24[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D614E6461, 0xE600000000000000);
  v16(v24, 0);
  v14(v3, *MEMORY[0x277D3E500], v15);
  v24[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x63536D617A616873, 0xEB0000000065726FLL);
  v17(v24, 0);
  type metadata accessor for MHSchemaMHAdBlockerSource(0);
  sub_26709AEF4(&qword_2800F3EA8, type metadata accessor for MHSchemaMHAdBlockerSource);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x656B636F6C426461, 0xEF656372756F5372);
  return v18(v24, 0);
}

uint64_t sub_26709ADE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709AE4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26709AEF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26709AF3C()
{
  result = qword_2800F3EC0;
  if (!qword_2800F3EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3EC0);
  }

  return result;
}

uint64_t static MHSchemaMHAdMatchingFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26709B1D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709B23C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709B2A0()
{
  result = qword_2800F3EC8;
  if (!qword_2800F3EC8)
  {
    sub_26709B2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3EC8);
  }

  return result;
}

unint64_t sub_26709B2F8()
{
  result = qword_2800F3ED0;
  if (!qword_2800F3ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3ED0);
  }

  return result;
}

uint64_t static MHSchemaMHAdMatchingStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  return v10(v12, 0);
}

uint64_t sub_26709B598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709B5FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709B660()
{
  result = qword_2800F3ED8;
  if (!qword_2800F3ED8)
  {
    sub_26709B6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3ED8);
  }

  return result;
}

unint64_t sub_26709B6B8()
{
  result = qword_2800F3EE0;
  if (!qword_2800F3EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3EE0);
  }

  return result;
}

uint64_t static MHSchemaMHApplicationPlaybackAttempted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v22 = *MEMORY[0x277D3E530];
  v23 = v3 + 104;
  v24 = v2;
  v21 = v11;
  v11(v6);
  v27[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v20 = *(v13 + 56);
  v20(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C646E7542707061, 0xED0000656D614E65);
  v14(v27, 0);
  v25 = a1;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v26, 0x6C646E7542707061, 0xED0000656D614E65);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_287888100);
    sub_26738115C();
  }

  (v16)(v26, 0);
  v15(v27, 0);
  v21(v6, v22, v24);
  v27[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267453B60);
  return v18(v27, 0);
}

uint64_t sub_26709BAEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709BB50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709BBB4()
{
  result = qword_2800F3EE8;
  if (!qword_2800F3EE8)
  {
    sub_26709BC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3EE8);
  }

  return result;
}

unint64_t sub_26709BC0C()
{
  result = qword_2800F3EF0;
  if (!qword_2800F3EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3EF0);
  }

  return result;
}

uint64_t static MHSchemaMHASRAudioCodec.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267453BB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x8000000267453BD0, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267453C00, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x8000000267453C30, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x8000000267453C60, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002CLL, 0x8000000267453C90, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x8000000267453CC0, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000027, 0x8000000267453CF0, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000026, 0x8000000267453D20, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000027, 0x8000000267453D50, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x8000000267453D80, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x8000000267453DB0, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_26709C274(uint64_t a1)
{
  v2 = sub_26709C378(&qword_2800F3EF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26709C2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26709C378(&qword_2800F3EF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26709C378(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASRAudioCodec(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASRAudioConfigureStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v19 = v0;
  v20 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHASRAudioCodec(0);
  sub_26709C8BC(&qword_2800EF690, type metadata accessor for MHSchemaMHASRAudioCodec);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v18 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F436F69647561, 0xEA00000000006365);
  v11(v21, 0);
  v12 = *MEMORY[0x277D3E540];
  v13 = *(v20 + 104);
  v20 += 104;
  v13(v4, v12, v19);
  v21[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267453E20);
  v14(v21, 0);
  v13(v4, v12, v19);
  v21[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267453E40);
  return v15(v21, 0);
}

uint64_t sub_26709C7B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709C814(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26709C8BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26709C904()
{
  result = qword_2800F3F08;
  if (!qword_2800F3F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3F08);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioBluetoothInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHBluetoothWirelessSplitterSessionState(0);
  sub_26709CD04(&qword_2800F3F10, type metadata accessor for MHSchemaMHBluetoothWirelessSplitterSessionState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  v6(v9, 0);
  type metadata accessor for MHSchemaMHBluetoothAudioDeviceCategory(0);
  sub_26709CD04(&qword_2800F3F18, type metadata accessor for MHSchemaMHBluetoothAudioDeviceCategory);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x8000000267453EA0);
  return v7(v9, 0);
}

uint64_t sub_26709CBF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709CC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26709CD04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26709CD4C()
{
  result = qword_2800F3F28;
  if (!qword_2800F3F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3F28);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioConfigureContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3F30, 0x277D58650);
  sub_266ECAF2C(&qword_2800F3F38, &qword_2800F3F30, 0x277D58650);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F3F40, 0x277D58648);
  sub_266ECAF2C(&qword_2800F3F48, &qword_2800F3F40, 0x277D58648);
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

uint64_t sub_26709D1E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709D248(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioConfigureEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26709D534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709D598(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709D5FC()
{
  result = qword_2800F3F48;
  if (!qword_2800F3F48)
  {
    sub_26709D654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3F48);
  }

  return result;
}

unint64_t sub_26709D654()
{
  result = qword_2800F3F40;
  if (!qword_2800F3F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3F40);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioConfigureStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26709D8E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709D94C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709D9B0()
{
  result = qword_2800F3F38;
  if (!qword_2800F3F38)
  {
    sub_26709DA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3F38);
  }

  return result;
}

unint64_t sub_26709DA08()
{
  result = qword_2800F3F30;
  if (!qword_2800F3F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3F30);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioFanInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v23 = v2;
  v24 = v12;
  v12(v6, v11, v2);
  v25[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v22[1] = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496E6166, 0xE500000000000000);
  v15(v25, 0);
  v16 = *MEMORY[0x277D3E508];
  v17 = v2;
  v18 = v24;
  v24(v6, v16, v17);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x53746E6572727563, 0xEC00000064656570);
  v19(v25, 0);
  v18(v6, v16, v23);
  v25[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x7053746567726174, 0xEB00000000646565);
  return v20(v25, 0);
}

uint64_t sub_26709DE3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709DEA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709DF04()
{
  result = qword_2800F3F60;
  if (!qword_2800F3F60)
  {
    sub_26709DF5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3F60);
  }

  return result;
}

unint64_t sub_26709DF5C()
{
  result = qword_2800F3F68;
  if (!qword_2800F3F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3F68);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioFetchRouteContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3F70, 0x277D58670);
  sub_266ECAF2C(&qword_2800F3F78, &qword_2800F3F70, 0x277D58670);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F3F80, 0x277D58668);
  sub_266ECAF2C(&qword_2800F3F88, &qword_2800F3F80, 0x277D58668);
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

uint64_t sub_26709E3F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709E458(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioFetchRouteEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26709E744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709E7A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709E80C()
{
  result = qword_2800F3F88;
  if (!qword_2800F3F88)
  {
    sub_26709E864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3F88);
  }

  return result;
}

unint64_t sub_26709E864()
{
  result = qword_2800F3F80;
  if (!qword_2800F3F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3F80);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioFetchRouteStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26709EAF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709EB5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709EBC0()
{
  result = qword_2800F3F78;
  if (!qword_2800F3F78)
  {
    sub_26709EC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3F78);
  }

  return result;
}

unint64_t sub_26709EC18()
{
  result = qword_2800F3F70;
  if (!qword_2800F3F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3F70);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioInitContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3FA0, 0x277D58688);
  sub_266ECAF2C(&qword_2800F3FA8, &qword_2800F3FA0, 0x277D58688);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F3FB0, 0x277D58680);
  sub_266ECAF2C(&qword_2800F3FB8, &qword_2800F3FB0, 0x277D58680);
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

uint64_t sub_26709F0B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709F114(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioInitEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26709F400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709F464(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709F4C8()
{
  result = qword_2800F3FB8;
  if (!qword_2800F3FB8)
  {
    sub_26709F520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3FB8);
  }

  return result;
}

unint64_t sub_26709F520()
{
  result = qword_2800F3FB0;
  if (!qword_2800F3FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3FB0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioInitStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26709F7B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26709F818(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26709F87C()
{
  result = qword_2800F3FA8;
  if (!qword_2800F3FA8)
  {
    sub_26709F8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3FA8);
  }

  return result;
}

unint64_t sub_26709F8D4()
{
  result = qword_2800F3FA0;
  if (!qword_2800F3FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3FA0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioInputRoute.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267454180, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v86;

  v1(v100, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674541A0, v11);
  v12 = *v9;
  *v9 = v87;

  v7(v100, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x80000002674541C0, v17);
  v18 = *v15;
  *v15 = v88;

  v13(v100, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674541E0, v23);
  v24 = *v21;
  *v21 = v89;

  v19(v100, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x8000000267454210, v29);
  v30 = *v27;
  *v27 = v90;

  v25(v100, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267454230, v35);
  v36 = *v33;
  *v33 = v91;

  v31(v100, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x8000000267454260, v41);
  v42 = *v39;
  *v39 = v92;

  v37(v100, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002CLL, 0x8000000267454280, v47);
  v48 = *v45;
  *v45 = v93;

  v43(v100, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000032, 0x80000002674542B0, v53);
  v54 = *v51;
  *v51 = v94;

  v49(v100, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000031, 0x80000002674542F0, v59);
  v60 = *v57;
  *v57 = v95;

  v55(v100, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000037, 0x8000000267454330, v65);
  v66 = *v63;
  *v63 = v96;

  v61(v100, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000019, 0x8000000267454370, v71);
  v72 = *v69;
  *v69 = v97;

  v67(v100, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ELL, 0x8000000267454390, v77);
  v78 = *v75;
  *v75 = v98;

  v73(v100, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001FLL, 0x80000002674543B0, v83);
  v84 = *v81;
  *v81 = v99;

  return v79(v100, 0);
}

uint64_t sub_2670A0008(uint64_t a1)
{
  v2 = sub_2670A010C(&qword_2800F3FD8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670A0070(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670A010C(&qword_2800F3FD8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670A010C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioLateBufferDetected.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E540], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267454410);
  return v10(v12, 0);
}

uint64_t sub_2670A03A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A0404(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A0468()
{
  result = qword_2800F3FE0;
  if (!qword_2800F3FE0)
  {
    sub_2670A04C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3FE0);
  }

  return result;
}

unint64_t sub_2670A04C0()
{
  result = qword_2800F3FE8;
  if (!qword_2800F3FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3FE8);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioPrepareContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3FF0, 0x277D586A8);
  sub_266ECAF2C(&qword_2800F3FF8, &qword_2800F3FF0, 0x277D586A8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4000, 0x277D586A0);
  sub_266ECAF2C(&qword_2800F4008, &qword_2800F4000, 0x277D586A0);
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

uint64_t sub_2670A0958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A09BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioPrepareEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A0CA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A0D0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A0D70()
{
  result = qword_2800F4008;
  if (!qword_2800F4008)
  {
    sub_2670A0DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4008);
  }

  return result;
}

unint64_t sub_2670A0DC8()
{
  result = qword_2800F4000;
  if (!qword_2800F4000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4000);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioPrepareStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A105C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A10C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A1124()
{
  result = qword_2800F3FF8;
  if (!qword_2800F3FF8)
  {
    sub_2670A117C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3FF8);
  }

  return result;
}

unint64_t sub_2670A117C()
{
  result = qword_2800F3FF0;
  if (!qword_2800F3FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3FF0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioPrewarmContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4020, 0x277D586C0);
  sub_266ECAF2C(&qword_2800F4028, &qword_2800F4020, 0x277D586C0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4030, 0x277D586B8);
  sub_266ECAF2C(&qword_2800F4038, &qword_2800F4030, 0x277D586B8);
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

uint64_t sub_2670A1614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A1678(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioPrewarmEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A1964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A19C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A1A2C()
{
  result = qword_2800F4038;
  if (!qword_2800F4038)
  {
    sub_2670A1A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4038);
  }

  return result;
}

unint64_t sub_2670A1A84()
{
  result = qword_2800F4030;
  if (!qword_2800F4030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4030);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioPrewarmStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A1D18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A1D7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A1DE0()
{
  result = qword_2800F4028;
  if (!qword_2800F4028)
  {
    sub_2670A1E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4028);
  }

  return result;
}

unint64_t sub_2670A1E38()
{
  result = qword_2800F4020;
  if (!qword_2800F4020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4020);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E540], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x8000000267454600);
  return v10(v12, 0);
}

uint64_t sub_2670A20D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A2138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A219C()
{
  result = qword_2800F4050;
  if (!qword_2800F4050)
  {
    sub_2670A21F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4050);
  }

  return result;
}

unint64_t sub_2670A21F4()
{
  result = qword_2800F4058;
  if (!qword_2800F4058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4058);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4060, 0x277D58740);
  sub_266ECAF2C(&qword_2800F4068, &qword_2800F4060, 0x277D58740);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4070, 0x277D586D8);
  sub_266ECAF2C(&qword_2800F4078, &qword_2800F4070, 0x277D586D8);
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

uint64_t sub_2670A268C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A26F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A29DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A2A40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A2AA4()
{
  result = qword_2800F4078;
  if (!qword_2800F4078)
  {
    sub_2670A2AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4078);
  }

  return result;
}

unint64_t sub_2670A2AFC()
{
  result = qword_2800F4070;
  if (!qword_2800F4070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4070);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v19 = v0;
  v20 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHSpeechErrorType(0);
  sub_2670A3040(&qword_2800F4090, type metadata accessor for MHSchemaMHSpeechErrorType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v18 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F73616572, 0xE600000000000000);
  v11(v21, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v20 + 104);
  v20 += 104;
  v13(v4, v12, v19);
  v21[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x80000002674546F0);
  v14(v21, 0);
  v13(v4, v12, v19);
  v21[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267454710);
  return v15(v21, 0);
}

uint64_t sub_2670A2F34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A2F98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670A3040(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670A3088()
{
  result = qword_2800F40A0;
  if (!qword_2800F40A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F40A0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v16[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v5, *MEMORY[0x277D3E530], v1);
  v17[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267454790);
  v12(v17, 0);
  type metadata accessor for MHSchemaMHAudioSessionCategory(0);
  sub_2670A35D0(&qword_2800F40A8, type metadata accessor for MHSchemaMHAudioSessionCategory);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674547B0);
  v13(v17, 0);
  type metadata accessor for MHSchemaMHAudioSessionMode(0);
  sub_2670A35D0(&qword_2800F40B0, type metadata accessor for MHSchemaMHAudioSessionMode);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674547D0);
  return v14(v17, 0);
}

uint64_t sub_2670A34C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A3528(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670A35D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670A3618()
{
  result = qword_2800F40C0;
  if (!qword_2800F40C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F40C0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F40C8, 0x277D586F8);
  sub_266ECAF2C(&qword_2800F40D0, &qword_2800F40C8, 0x277D586F8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4058, 0x277D586C8);
  sub_266ECAF2C(&qword_2800F4050, &qword_2800F4058, 0x277D586C8);
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

uint64_t sub_2670A3AB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A3B14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v37 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29[-v9];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v36 = a1;
  sub_26738119C();
  v35 = "ordingFirstBufferStart";
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v3 + 104);
  v32 = v12;
  v12(v6, v11, v2);
  v39[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v31 = v15;
  v15(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v35 | 0x8000000000000000);
  v16(v39, 0);
  v30 = *MEMORY[0x277D3E530];
  v34 = v3 + 104;
  (v12)(v6);
  v39[0] = 1;
  v17 = v6;
  sub_26738114C();
  v33 = v14 + 56;
  v15(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x80000002674546F0);
  v18(v39, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v38, 0xD000000000000016, 0x80000002674546F0);
  v21 = *(v14 + 48);
  v35 = v14 + 48;
  v22 = v21;
  if (!v21(v23, 1, v13))
  {
    sub_266ECB128(&unk_287888130);
    sub_26738115C();
  }

  (v20)(v38, 0);
  v19(v39, 0);
  v32(v17, v30, v37);
  v39[0] = 1;
  sub_26738114C();
  v31(v10, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x80000002674548B0);
  v24(v39, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v38, 0xD000000000000019, 0x80000002674548B0);
  if (!v22(v27, 1, v13))
  {
    sub_266ECB128(&unk_287888158);
    sub_26738115C();
  }

  (v26)(v38, 0);
  return v25(v39, 0);
}

uint64_t sub_2670A4110(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A4174(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A41D8()
{
  result = qword_2800F40D0;
  if (!qword_2800F40D0)
  {
    sub_2670A4230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F40D0);
  }

  return result;
}

unint64_t sub_2670A4230()
{
  result = qword_2800F40C8;
  if (!qword_2800F40C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F40C8);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingInterruptionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F40E8, 0x277D58710);
  sub_266ECAF2C(&qword_2800F40F0, &qword_2800F40E8, 0x277D58710);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F40F8, 0x277D58708);
  sub_266ECAF2C(&qword_2800F4100, &qword_2800F40F8, 0x277D58708);
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

uint64_t sub_2670A46C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A472C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingInterruptionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A4A18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A4A7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A4AE0()
{
  result = qword_2800F4100;
  if (!qword_2800F4100)
  {
    sub_2670A4B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4100);
  }

  return result;
}

unint64_t sub_2670A4B38()
{
  result = qword_2800F40F8;
  if (!qword_2800F40F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F40F8);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v20[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496B6E696CLL, 0xE600000000000000);
  v13(v23, 0);
  v20[0] = "ordingInterruptionStarted";
  v14 = *MEMORY[0x277D3E530];
  v15 = v21;
  v16 = *(v22 + 104);
  v22 += 104;
  v16(v6, v14, v21);
  v23[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v20[0] | 0x8000000000000000);
  v17(v23, 0);
  v16(v6, v14, v15);
  v23[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x80000002674549E0);
  return v18(v23, 0);
}

uint64_t sub_2670A4F90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A4FF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = sub_26738113C();
  v4 = *(v25 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v26 = a1;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  (v14)(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x64496B6E696CLL, 0xE600000000000000);
  v15(v28, 0);
  (*(v4 + 104))(v7, *MEMORY[0x277D3E530], v25);
  v28[0] = 1;
  sub_26738114C();
  v25 = v14;
  (v14)(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, 0x8000000267454790);
  v16(v28, 0);
  v24[1] = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v27, 0xD000000000000017, 0x8000000267454790);
  if (!(*(v13 + 48))(v19, 1, v12))
  {
    sub_266ECB128(&unk_287888180);
    sub_26738115C();
  }

  (v18)(v27, 0);
  v17(v28, 0);
  type metadata accessor for MHSchemaMHAudioSessionCategory(0);
  sub_2670A56D4(&qword_2800F40A8, type metadata accessor for MHSchemaMHAudioSessionCategory);
  sub_26738120C();
  v20 = v25;
  (v25)(v11, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674547B0);
  v21(v28, 0);
  type metadata accessor for MHSchemaMHAudioSessionMode(0);
  sub_2670A56D4(&qword_2800F40B0, type metadata accessor for MHSchemaMHAudioSessionMode);
  sub_26738120C();
  v20(v11, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674547D0);
  return v22(v28, 0);
}

uint64_t sub_2670A5610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A5674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670A56D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4128, 0x277D58730);
  sub_266ECAF2C(&qword_2800F4130, &qword_2800F4128, 0x277D58730);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4138, 0x277D58728);
  sub_266ECAF2C(&qword_2800F4140, &qword_2800F4138, 0x277D58728);
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

uint64_t sub_2670A5BAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A5C10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingLastBufferReceipt.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E540], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ALL, 0x8000000267454AF0);
  return v10(v12, 0);
}

uint64_t sub_2670A5F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A5F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A5FCC()
{
  result = qword_2800F4140;
  if (!qword_2800F4140)
  {
    sub_2670A6024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4140);
  }

  return result;
}

unint64_t sub_2670A6024()
{
  result = qword_2800F4138;
  if (!qword_2800F4138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4138);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E540], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, 0x8000000267454B70);
  return v10(v12, 0);
}

uint64_t sub_2670A62C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A6324(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A6388()
{
  result = qword_2800F4130;
  if (!qword_2800F4130)
  {
    sub_2670A63E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4130);
  }

  return result;
}

unint64_t sub_2670A63E0()
{
  result = qword_2800F4128;
  if (!qword_2800F4128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4128);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A6674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A66D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A673C()
{
  result = qword_2800F4158;
  if (!qword_2800F4158)
  {
    sub_2670A6794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4158);
  }

  return result;
}

unint64_t sub_2670A6794()
{
  result = qword_2800F4160;
  if (!qword_2800F4160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4160);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioRecordingStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v22 = v2;
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
  sub_2670A6DB8(&qword_2800F3FD0, type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v24 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x706E496F69647561, 0xEF6574756F527475);
  v13(v27, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioSource(0);
  sub_2670A6DB8(&qword_2800F4168, type metadata accessor for MHSchemaMHAssistantDaemonAudioSource);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v23 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x656372756F73, 0xE600000000000000);
  v14(v27, 0);
  v21 = "ntDaemonAudioRecordingFailed";
  v15 = *MEMORY[0x277D3E530];
  v16 = v25;
  v17 = *(v26 + 104);
  v17(v25, v15, v2);
  v27[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v21 | 0x8000000000000000);
  v18(v27, 0);
  v17(v16, v15, v22);
  v27[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267454710);
  return v19(v27, 0);
}

uint64_t sub_2670A6CAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A6D10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670A6DB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670A6E00()
{
  result = qword_2800F4060;
  if (!qword_2800F4060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4060);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetActiveContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4170, 0x277D58758);
  sub_266ECAF2C(&qword_2800F4178, &qword_2800F4170, 0x277D58758);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4180, 0x277D58750);
  sub_266ECAF2C(&qword_2800F4188, &qword_2800F4180, 0x277D58750);
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
  v11(v23, 0);
  sub_266ECB128(&unk_2878881B0);
  return sub_2673811CC();
}

uint64_t sub_2670A72AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A7310(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetActiveEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A75FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A7660(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A76C4()
{
  result = qword_2800F4188;
  if (!qword_2800F4188)
  {
    sub_2670A771C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4188);
  }

  return result;
}

unint64_t sub_2670A771C()
{
  result = qword_2800F4180;
  if (!qword_2800F4180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4180);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetActiveStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A79B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A7A14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A7A78()
{
  result = qword_2800F4178;
  if (!qword_2800F4178)
  {
    sub_2670A7AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4178);
  }

  return result;
}

unint64_t sub_2670A7AD0()
{
  result = qword_2800F4170;
  if (!qword_2800F4170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4170);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F41A0, 0x277D58770);
  sub_266ECAF2C(&qword_2800F41A8, &qword_2800F41A0, 0x277D58770);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F41B0, 0x277D58768);
  sub_266ECAF2C(&qword_2800F41B8, &qword_2800F41B0, 0x277D58768);
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
  v11(v23, 0);
  sub_266ECB128(&unk_2878881E0);
  return sub_2673811CC();
}

uint64_t sub_2670A7F7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A7FE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetInactiveEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A82CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A8330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A8394()
{
  result = qword_2800F41B8;
  if (!qword_2800F41B8)
  {
    sub_2670A83EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F41B8);
  }

  return result;
}

unint64_t sub_2670A83EC()
{
  result = qword_2800F41B0;
  if (!qword_2800F41B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F41B0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSessionSetInactiveStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A8680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A86E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A8748()
{
  result = qword_2800F41A8;
  if (!qword_2800F41A8)
  {
    sub_2670A87A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F41A8);
  }

  return result;
}

unint64_t sub_2670A87A0()
{
  result = qword_2800F41A0;
  if (!qword_2800F41A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F41A0);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267454E50, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267454E80, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267454EB0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x8000000267454EE0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000037, 0x8000000267454F10, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x8000000267454F50, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000026, 0x8000000267454F80, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000032, 0x8000000267454FB0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000034, 0x8000000267454FF0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_2670A8CA8(uint64_t a1)
{
  v2 = sub_2670A8DAC(&qword_2800F41D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670A8D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670A8DAC(&qword_2800F41D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670A8DAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonAudioSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioStartRecordingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F41D8, 0x277D58788);
  sub_266ECAF2C(&qword_2800F41E0, &qword_2800F41D8, 0x277D58788);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F41E8, 0x277D58780);
  sub_266ECAF2C(&qword_2800F41F0, &qword_2800F41E8, 0x277D58780);
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

uint64_t sub_2670A923C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A92A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioStartRecordingEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267454790);
  v13(v21, 0);
  sub_266ECB294(0, &qword_2800F3F68, 0x277D58658);
  sub_266ECAF2C(&qword_2800F3F60, &qword_2800F3F68, 0x277D58658);
  sub_26738122C();
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F666E496E6166, 0xE700000000000000);
  v14(v21, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v20, 0x6F666E496E6166, 0xE700000000000000);
  if (!(*(v11 + 48))(v17, 1, v10))
  {
    sub_266ECB128(&unk_287888210);
    sub_26738115C();
  }

  (v16)(v20, 0);
  return v15(v21, 0);
}

uint64_t sub_2670A971C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A9780(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioStartRecordingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670A9A6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670A9AD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670A9B34()
{
  result = qword_2800F41E0;
  if (!qword_2800F41E0)
  {
    sub_2670A9B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F41E0);
  }

  return result;
}

unint64_t sub_2670A9B8C()
{
  result = qword_2800F41D8;
  if (!qword_2800F41D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F41D8);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioStopRecordingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4208, 0x277D587A0);
  sub_266ECAF2C(&qword_2800F4210, &qword_2800F4208, 0x277D587A0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4218, 0x277D58798);
  sub_266ECAF2C(&qword_2800F4220, &qword_2800F4218, 0x277D58798);
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

uint64_t sub_2670AA024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AA088(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioStopRecordingEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3F68, 0x277D58658);
  sub_266ECAF2C(&qword_2800F3F60, &qword_2800F3F68, 0x277D58658);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F666E496E6166, 0xE700000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6F666E496E6166, 0xE700000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287888238);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2670AA3C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AA42C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioStopRecordingeStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason(0);
  sub_2670AA92C(&qword_2800F4238, type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73616552706F7473, 0xEA00000000006E6FLL);
  return v5(v7, 0);
}

uint64_t sub_2670AA694()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason(0);
  sub_2670AA92C(&qword_2800F4238, type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73616552706F7473, 0xEA00000000006E6FLL);
  return v5(v7, 0);
}

uint64_t sub_2670AA820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AA884(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670AA92C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670AA974()
{
  result = qword_2800F4208;
  if (!qword_2800F4208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4208);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioTwoShotPromptType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x8000000267455240, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267455270, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x80000002674552A0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x80000002674552D0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2670AAC44(uint64_t a1)
{
  v2 = sub_2670AAD48(&qword_2800F4248);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AACAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AAD48(&qword_2800F4248);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AAD48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4250, 0x277D587B8);
  sub_266ECAF2C(&qword_2800F4258, &qword_2800F4250, 0x277D587B8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4260, 0x277D587B0);
  sub_266ECAF2C(&qword_2800F4268, &qword_2800F4260, 0x277D587B0);
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

uint64_t sub_2670AB1D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AB23C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAssistantDaemonAudioTwoShotTransitionEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6573657270707573, 0xEE007472656C4164);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x74754F64656D6974, 0xE800000000000000);
  return v16(v20, 0);
}

uint64_t sub_2670AB60C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AB670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670AB6D4()
{
  result = qword_2800F4268;
  if (!qword_2800F4268)
  {
    sub_2670AB72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4268);
  }

  return result;
}

unint64_t sub_2670AB72C()
{
  result = qword_2800F4260;
  if (!qword_2800F4260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4260);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonAudioTwoShotTransitionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType(0);
  sub_2670ABBD4(&qword_2800F4240, type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x795474706D6F7270, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_2670AB93C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType(0);
  sub_2670ABBD4(&qword_2800F4240, type metadata accessor for MHSchemaMHAssistantDaemonAudioTwoShotPromptType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x795474706D6F7270, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_2670ABAC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670ABB2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670ABBD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670ABC1C()
{
  result = qword_2800F4250;
  if (!qword_2800F4250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4250);
  }

  return result;
}

uint64_t static MHSchemaMHAssistantDaemonStopRecordingReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x8000000267455430, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267455460, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x8000000267455490, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ELL, 0x80000002674554C0, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003DLL, 0x8000000267455500, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000037, 0x8000000267455540, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000031, 0x8000000267455580, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000035, 0x80000002674555C0, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002BLL, 0x8000000267455600, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000039, 0x8000000267455630, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_2670AC190(uint64_t a1)
{
  v2 = sub_2670AC294(&qword_2800F4280);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AC1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AC294(&qword_2800F4280);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AC294(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonStopRecordingReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASVBackgroundNoiseActivityLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x80000002674556B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674556E0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267455710, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670AC4EC(uint64_t a1)
{
  v2 = sub_2670AC5F0(&qword_2800F4288);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AC554(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AC5F0(&qword_2800F4288);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AC5F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASVBackgroundNoiseActivityLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASVInvocationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267455770, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267455790, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x80000002674557C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670AC848(uint64_t a1)
{
  v2 = sub_2670AC94C(&qword_2800F4290);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AC8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AC94C(&qword_2800F4290);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AC94C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASVInvocationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASVSpeakerDistanceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267455820, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267455850, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267455880, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674558A0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x80000002674558C0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670ACC88(uint64_t a1)
{
  v2 = sub_2670ACD8C(&qword_2800F4298);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670ACCF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670ACD8C(&qword_2800F4298);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670ACD8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASVSpeakerDistanceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHASVUserIntentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267455910, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267455930, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267455950, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x8000000267455970, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x80000002674559A0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670AD0C8(uint64_t a1)
{
  v2 = sub_2670AD1CC(&qword_2800F42A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AD130(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AD1CC(&qword_2800F42A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AD1CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHASVUserIntentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAttendingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F42A8, 0x277D587D0);
  sub_266ECAF2C(&qword_2800F42B0, &qword_2800F42A8, 0x277D587D0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F42B8, 0x277D587C8);
  sub_266ECAF2C(&qword_2800F42C0, &qword_2800F42B8, 0x277D587C8);
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

uint64_t sub_2670AD65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AD6C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHAttendingEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAttendingEndedReason(0);
  sub_2670ADBC0(&qword_2800F42D8, type metadata accessor for MHSchemaMHAttendingEndedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F73616552646E65, 0xE90000000000006ELL);
  return v5(v7, 0);
}

uint64_t sub_2670AD928()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAttendingEndedReason(0);
  sub_2670ADBC0(&qword_2800F42D8, type metadata accessor for MHSchemaMHAttendingEndedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F73616552646E65, 0xE90000000000006ELL);
  return v5(v7, 0);
}

uint64_t sub_2670ADAB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670ADB18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670ADBC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670ADC08()
{
  result = qword_2800F42B8;
  if (!qword_2800F42B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F42B8);
  }

  return result;
}

uint64_t static MHSchemaMHAttendingEndedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267455A60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x8000000267455A80, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267455AB0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670ADE68(uint64_t a1)
{
  v2 = sub_2670ADF6C(&qword_2800F42E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670ADED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670ADF6C(&qword_2800F42E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670ADF6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAttendingEndedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAttendingStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAttendingStartedReason(0);
  sub_2670AE414(&qword_2800F42E8, type metadata accessor for MHSchemaMHAttendingStartedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6165527472617473, 0xEB000000006E6F73);
  return v5(v7, 0);
}

uint64_t sub_2670AE178()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHAttendingStartedReason(0);
  sub_2670AE414(&qword_2800F42E8, type metadata accessor for MHSchemaMHAttendingStartedReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6165527472617473, 0xEB000000006E6F73);
  return v5(v7, 0);
}

uint64_t sub_2670AE308(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AE36C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670AE414(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670AE45C()
{
  result = qword_2800F42A8;
  if (!qword_2800F42A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F42A8);
  }

  return result;
}

uint64_t static MHSchemaMHAttendingStartedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267455B40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x8000000267455B70, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x8000000267455BB0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670AE6C4(uint64_t a1)
{
  v2 = sub_2670AE7C8(&qword_2800F42F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AE72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AE7C8(&qword_2800F42F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AE7C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAttendingStartedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAudioDucked.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670AEA54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670AEAB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670AEB1C()
{
  result = qword_2800F42F8;
  if (!qword_2800F42F8)
  {
    sub_2670AEB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F42F8);
  }

  return result;
}

unint64_t sub_2670AEB74()
{
  result = qword_2800F4300;
  if (!qword_2800F4300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4300);
  }

  return result;
}

uint64_t static MHSchemaMHAudioSessionCategory.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267455C50, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v170;

  v1(v198, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267455C70, v11);
  v12 = *v9;
  *v9 = v171;

  v7(v198, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267455C90, v17);
  v18 = *v15;
  *v15 = v172;

  v13(v198, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267455CC0, v23);
  v24 = *v21;
  *v21 = v173;

  v19(v198, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267455CE0, v29);
  v30 = *v27;
  *v27 = v174;

  v25(v198, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x8000000267455D00, v35);
  v36 = *v33;
  *v33 = v175;

  v31(v198, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x8000000267455D30, v41);
  v42 = *v39;
  *v39 = v176;

  v37(v198, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x8000000267455D60, v47);
  v48 = *v45;
  *v45 = v177;

  v43(v198, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x8000000267455D90, v53);
  v54 = *v51;
  *v51 = v178;

  v49(v198, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000021, 0x8000000267455DC0, v59);
  v60 = *v57;
  *v57 = v179;

  v55(v198, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x8000000267455DF0, v65);
  v66 = *v63;
  *v63 = v180;

  v61(v198, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001FLL, 0x8000000267455E20, v71);
  v72 = *v69;
  *v69 = v181;

  v67(v198, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000022, 0x8000000267455E40, v77);
  v78 = *v75;
  *v75 = v182;

  v73(v198, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000021, 0x8000000267455E70, v83);
  v84 = *v81;
  *v81 = v183;

  v79(v198, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000023, 0x8000000267455EA0, v89);
  v90 = *v87;
  *v87 = v184;

  v85(v198, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001FLL, 0x8000000267455ED0, v95);
  v96 = *v93;
  *v93 = v185;

  v91(v198, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001CLL, 0x8000000267455EF0, v101);
  v102 = *v99;
  *v99 = v186;

  v97(v198, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000002ALL, 0x8000000267455F10, v107);
  v108 = *v105;
  *v105 = v187;

  v103(v198, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000026, 0x8000000267455F40, v113);
  v114 = *v111;
  *v111 = v188;

  v109(v198, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000033, 0x8000000267455F70, v119);
  v120 = *v117;
  *v117 = v189;

  v115(v198, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000023, 0x8000000267455FB0, v125);
  v126 = *v123;
  *v123 = v190;

  v121(v198, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000026, 0x8000000267455FE0, v131);
  v132 = *v129;
  *v129 = v191;

  v127(v198, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001DLL, 0x8000000267456010, v137);
  v138 = *v135;
  *v135 = v192;

  v133(v198, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000024, 0x8000000267456030, v143);
  v144 = *v141;
  *v141 = v193;

  v139(v198, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000030, 0x8000000267456060, v149);
  v150 = *v147;
  *v147 = v194;

  v145(v198, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000027, 0x80000002674560A0, v155);
  v156 = *v153;
  *v153 = v195;

  v151(v198, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001BLL, 0x80000002674560D0, v161);
  v162 = *v159;
  *v159 = v196;

  v157(v198, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000022, 0x80000002674560F0, v167);
  v168 = *v165;
  *v165 = v197;

  return v163(v198, 0);
}

uint64_t sub_2670AF8DC(uint64_t a1)
{
  v2 = sub_2670AF9E0(&qword_2800F4308);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670AF944(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670AF9E0(&qword_2800F4308);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670AF9E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAudioSessionCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHAudioSessionMode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267456150, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v182;

  v1(v212, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267456170, v11);
  v12 = *v9;
  *v9 = v183;

  v7(v212, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267456190, v17);
  v18 = *v15;
  *v15 = v184;

  v13(v212, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674561B0, v23);
  v24 = *v21;
  *v21 = v185;

  v19(v212, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x80000002674561D0, v29);
  v30 = *v27;
  *v27 = v186;

  v25(v212, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x8000000267456200, v35);
  v36 = *v33;
  *v33 = v187;

  v31(v212, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267456220, v41);
  v42 = *v39;
  *v39 = v188;

  v37(v212, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267456250, v47);
  v48 = *v45;
  *v45 = v189;

  v43(v212, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001FLL, 0x8000000267456270, v53);
  v54 = *v51;
  *v51 = v190;

  v49(v212, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001FLL, 0x8000000267456290, v59);
  v60 = *v57;
  *v57 = v191;

  v55(v212, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x80000002674562B0, v65);
  v66 = *v63;
  *v63 = v192;

  v61(v212, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x80000002674562E0, v71);
  v72 = *v69;
  *v69 = v193;

  v67(v212, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000002ALL, 0x8000000267456310, v77);
  v78 = *v75;
  *v75 = v194;

  v73(v212, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000022, 0x8000000267456340, v83);
  v84 = *v81;
  *v81 = v195;

  v79(v212, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000025, 0x8000000267456370, v89);
  v90 = *v87;
  *v87 = v196;

  v85(v212, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000016, 0x80000002674563A0, v95);
  v96 = *v93;
  *v93 = v197;

  v91(v212, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000021, 0x80000002674563C0, v101);
  v102 = *v99;
  *v99 = v198;

  v97(v212, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001FLL, 0x80000002674563F0, v107);
  v108 = *v105;
  *v105 = v199;

  v103(v212, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000028, 0x8000000267456410, v113);
  v114 = *v111;
  *v111 = v200;

  v109(v212, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001DLL, 0x8000000267456440, v119);
  v120 = *v117;
  *v117 = v201;

  v115(v212, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000016, 0x8000000267456460, v125);
  v126 = *v123;
  *v123 = v202;

  v121(v212, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001ELL, 0x8000000267456480, v131);
  v132 = *v129;
  *v129 = v203;

  v127(v212, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000024, 0x80000002674564A0, v137);
  v138 = *v135;
  *v135 = v204;

  v133(v212, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000021, 0x80000002674564D0, v143);
  v144 = *v141;
  *v141 = v205;

  v139(v212, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000022, 0x8000000267456500, v149);
  v150 = *v147;
  *v147 = v206;

  v145(v212, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ELL, 0x8000000267456530, v155);
  v156 = *v153;
  *v153 = v207;

  v151(v212, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v208 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000023, 0x8000000267456550, v161);
  v162 = *v159;
  *v159 = v208;

  v157(v212, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000022, 0x8000000267456580, v167);
  v168 = *v165;
  *v165 = v209;

  v163(v212, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v210 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000019, 0x80000002674565B0, v173);
  v174 = *v171;
  *v171 = v210;

  v169(v212, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v211 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001DLL, 0x80000002674565D0, v179);
  v180 = *v177;
  *v177 = v211;

  return v175(v212, 0);
}

uint64_t sub_2670B0880(uint64_t a1)
{
  v2 = sub_2670B0984(&qword_2800F4310);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B08E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B0984(&qword_2800F4310);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B0984(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHAudioSessionMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHBiometricMatchResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267456620, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267456640, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267456670, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267456690, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x80000002674566C0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670B0CC0(uint64_t a1)
{
  v2 = sub_2670B0DC4(&qword_2800F4320);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B0D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B0DC4(&qword_2800F4320);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B0DC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHBiometricMatchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHBluetoothAudioDeviceCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267456720, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267456750, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267456780, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674567B0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x80000002674567E0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x8000000267456810, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2670B1170(uint64_t a1)
{
  v2 = sub_2670B1274(&qword_2800F4328);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B11D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B1274(&qword_2800F4328);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B1274(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHBluetoothAudioDeviceCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHBluetoothWirelessSplitterSessionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x8000000267456880, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x80000002674568B0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x80000002674568F0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x8000000267456930, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2670B153C(uint64_t a1)
{
  v2 = sub_2670B1640(&qword_2800F4330);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B15A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B1640(&qword_2800F4330);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B1640(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHBluetoothWirelessSplitterSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHCarplayLanguageMismatch.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000019, 0x80000002674569A0);
  v11(v14, 0);
  type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode(0);
  sub_2670B1ABC(&qword_2800F4338, type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674569C0);
  return v12(v14, 0);
}

uint64_t sub_2670B19B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B1A14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670B1ABC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670B1B04()
{
  result = qword_2800F4348;
  if (!qword_2800F4348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4348);
  }

  return result;
}

uint64_t static MHSchemaMHClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v124 = *(v4 - 8);
  v125 = v4;
  v5 = *(v124 + 64);
  MEMORY[0x28223BE20](v4);
  v123 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v119 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v133 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v130 = v12 + 56;
  v131 = v13;
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 1682532461, 0xE400000000000000);
  v14(v135, 0);
  v132 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v134, 1682532461, 0xE400000000000000);
  v17 = *(v12 + 48);
  v128 = v12 + 48;
  v129 = v11;
  v127 = v17;
  if (!v17(v18, 1, v11))
  {
    sub_266ECB128(&unk_287888260);
    sub_26738115C();
  }

  (v16)(v134, 0);
  v15(v135, 0);
  sub_266ECB294(0, &qword_2800F4350, 0x277D587F8);
  sub_266ECAF2C(&qword_2800F4358, &qword_2800F4350, 0x277D587F8);
  sub_26738120C();
  v19 = v129;
  v20 = v131;
  v131(v10, 0, 1, v129);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v21(v135, 0);
  sub_266ECB294(0, &qword_2800F3E40, 0x277D585E8);
  sub_266ECAF2C(&qword_2800F3E38, &qword_2800F3E40, 0x277D585E8);
  sub_26738121C();
  v20(v10, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002FLL, 0x8000000267456A10);
  v22(v135, 0);
  sub_266ECB294(0, &qword_2800F4360, 0x277D58878);
  sub_266ECAF2C(&qword_2800F4368, &qword_2800F4360, 0x277D58878);
  sub_26738121C();
  v20(v10, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002ELL, 0x8000000267456A40);
  v23(v135, 0);
  sub_266ECB294(0, &qword_2800F4370, 0x277D58960);
  sub_266ECAF2C(&qword_2800F4378, &qword_2800F4370, 0x277D58960);
  sub_26738121C();
  v20(v10, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002DLL, 0x8000000267456A70);
  v24(v135, 0);
  sub_266ECB294(0, &qword_2800F4380, 0x277D58808);
  sub_266ECAF2C(&qword_2800F4388, &qword_2800F4380, 0x277D58808);
  sub_26738121C();
  v20(v10, 0, 1, v19);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x8000000267456AA0);
  v25(v135, 0);
  sub_266ECB294(0, &qword_2800F3F08, 0x277D585E0);
  sub_266ECAF2C(&qword_2800F3F00, &qword_2800F3F08, 0x277D585E0);
  sub_26738121C();
  v26 = v129;
  v20(v10, 0, 1, v129);
  v27 = sub_2673811AC();
  v122 = 0xD000000000000018;
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267456AC0);
  v27(v135, 0);
  sub_266ECB294(0, &qword_2800F3FC8, 0x277D58678);
  sub_266ECAF2C(&qword_2800F3FC0, &qword_2800F3FC8, 0x277D58678);
  sub_26738121C();
  v20(v10, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x8000000267456AE0);
  v28(v135, 0);
  sub_266ECB294(0, &qword_2800F3F58, 0x277D58640);
  sub_266ECAF2C(&qword_2800F3F50, &qword_2800F3F58, 0x277D58640);
  sub_26738121C();
  v29 = v26;
  v30 = v26;
  v31 = v131;
  v131(v10, 0, 1, v30);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, 0x8000000267456B00);
  v32(v135, 0);
  sub_266ECB294(0, &qword_2800F4018, 0x277D58698);
  sub_266ECAF2C(&qword_2800F4010, &qword_2800F4018, 0x277D58698);
  sub_26738121C();
  v31(v10, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x8000000267456B30);
  v33(v135, 0);
  sub_266ECB294(0, &qword_2800F4048, 0x277D586B0);
  sub_266ECAF2C(&qword_2800F4040, &qword_2800F4048, 0x277D586B0);
  sub_26738121C();
  v31(v10, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x8000000267456B60);
  v34(v135, 0);
  sub_266ECB294(0, &qword_2800F4200, 0x277D58778);
  sub_266ECAF2C(&qword_2800F41F8, &qword_2800F4200, 0x277D58778);
  sub_26738121C();
  v31(v10, 0, 1, v29);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000029, 0x8000000267456B90);
  v35(v135, 0);
  sub_266ECB294(0, &qword_2800F4230, 0x277D58790);
  sub_266ECAF2C(&qword_2800F4228, &qword_2800F4230, 0x277D58790);
  sub_26738121C();
  v31(v10, 0, 1, v29);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000028, 0x8000000267456BC0);
  v36(v135, 0);
  sub_266ECB294(0, &qword_2800F4198, 0x277D58748);
  sub_266ECAF2C(&qword_2800F4190, &qword_2800F4198, 0x277D58748);
  sub_26738121C();
  v37 = v129;
  v31(v10, 0, 1, v129);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002BLL, 0x8000000267456BF0);
  v38(v135, 0);
  v126 = "udioSessionSetActiveContext";
  sub_266ECB294(0, &qword_2800F41C8, 0x277D58760);
  sub_266ECAF2C(&qword_2800F41C0, &qword_2800F41C8, 0x277D58760);
  sub_26738121C();
  v31(v10, 0, 1, v37);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002DLL, v126 | 0x8000000000000000);
  v39(v135, 0);
  sub_266ECB294(0, &qword_2800F3F98, 0x277D58660);
  sub_266ECAF2C(&qword_2800F3F90, &qword_2800F3F98, 0x277D58660);
  sub_26738121C();
  v31(v10, 0, 1, v37);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x8000000267456C50);
  v40(v135, 0);
  sub_266ECB294(0, &qword_2800F4088, 0x277D586D0);
  sub_266ECAF2C(&qword_2800F4080, &qword_2800F4088, 0x277D586D0);
  sub_26738121C();
  v41 = v131;
  v131(v10, 0, 1, v37);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, 0x8000000267456C80);
  v42(v135, 0);
  sub_266ECB294(0, &qword_2800F4160, 0x277D58738);
  sub_266ECAF2C(&qword_2800F4158, &qword_2800F4160, 0x277D58738);
  sub_26738121C();
  v41(v10, 0, 1, v37);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000031, 0x8000000267456CB0);
  v43(v135, 0);
  sub_266ECB294(0, &qword_2800F3FE8, 0x277D58690);
  sub_266ECAF2C(&qword_2800F3FE0, &qword_2800F3FE8, 0x277D58690);
  sub_26738121C();
  v41(v10, 0, 1, v37);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, 0x8000000267456CF0);
  v44(v135, 0);
  v126 = "udioLateBufferDetected";
  sub_266ECB294(0, &qword_2800F40E0, 0x277D586F0);
  sub_266ECAF2C(&qword_2800F40D8, &qword_2800F40E0, 0x277D586F0);
  sub_26738121C();
  v41(v10, 0, 1, v37);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002FLL, v126 | 0x8000000000000000);
  v45(v135, 0);
  sub_266ECB294(0, &qword_2800F4150, 0x277D58720);
  sub_266ECAF2C(&qword_2800F4148, &qword_2800F4150, 0x277D58720);
  sub_26738121C();
  v41(v10, 0, 1, v37);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002ELL, 0x8000000267456D50);
  v46(v135, 0);
  sub_266ECB294(0, &qword_2800F4110, 0x277D58700);
  sub_266ECAF2C(&qword_2800F4108, &qword_2800F4110, 0x277D58700);
  sub_26738121C();
  v47 = v131;
  v131(v10, 0, 1, v37);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000030, 0x8000000267456D80);
  v48(v135, 0);
  sub_266ECB294(0, &qword_2800F4120, 0x277D58718);
  sub_266ECAF2C(&qword_2800F4118, &qword_2800F4120, 0x277D58718);
  sub_26738121C();
  v47(v10, 0, 1, v37);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000035, 0x8000000267456DC0);
  v49(v135, 0);
  sub_266ECB294(0, &qword_2800F3F28, 0x277D58638);
  sub_266ECAF2C(&qword_2800F3F20, &qword_2800F3F28, 0x277D58638);
  sub_26738121C();
  v50 = v131;
  v131(v10, 0, 1, v37);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x8000000267456E00);
  v51(v135, 0);
  sub_266ECB294(0, &qword_2800F4390, 0x277D58A50);
  sub_266ECAF2C(&qword_2800F4398, &qword_2800F4390, 0x277D58A50);
  sub_26738121C();
  v50(v10, 0, 1, v37);
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267456E30);
  v52(v135, 0);
  sub_266ECB294(0, &qword_2800F4278, 0x277D587A8);
  sub_266ECAF2C(&qword_2800F4270, &qword_2800F4278, 0x277D587A8);
  sub_26738121C();
  v50(v10, 0, 1, v37);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002CLL, 0x8000000267456E50);
  v53(v135, 0);
  sub_266ECB294(0, &qword_2800F43A0, 0x277D58A00);
  sub_266ECAF2C(&qword_2800F43A8, &qword_2800F43A0, 0x277D58A00);
  sub_26738121C();
  v50(v10, 0, 1, v37);
  v54 = sub_2673811AC();
  v121 = 0xD000000000000013;
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674421A0);
  v54(v135, 0);
  sub_266ECB294(0, &qword_2800F43B0, 0x277D58840);
  sub_266ECAF2C(&qword_2800F43B8, &qword_2800F43B0, 0x277D58840);
  sub_26738121C();
  v50(v10, 0, 1, v37);
  v55 = sub_2673811AC();
  v126 = 0xD000000000000010;
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267456E80);
  v55(v135, 0);
  sub_266ECB294(0, &qword_2800F43C0, 0x277D58850);
  sub_266ECAF2C(&qword_2800F43C8, &qword_2800F43C0, 0x277D58850);
  sub_26738121C();
  v56 = v131;
  v131(v10, 0, 1, v37);
  v57 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267456EA0);
  v57(v135, 0);
  sub_266ECB294(0, &qword_2800F43D0, 0x277D589C0);
  sub_266ECAF2C(&qword_2800F43D8, &qword_2800F43D0, 0x277D589C0);
  sub_26738121C();
  v56(v10, 0, 1, v37);
  v58 = sub_2673811AC();
  sub_266EC637C(v10, v126, 0x8000000267456EC0);
  v58(v135, 0);
  sub_266ECB294(0, &qword_2800F43E0, 0x277D588A0);
  sub_266ECAF2C(&qword_2800F43E8, &qword_2800F43E0, 0x277D588A0);
  sub_26738121C();
  v56(v10, 0, 1, v37);
  v59 = sub_2673811AC();
  v119 = 0xD000000000000019;
  sub_266EC637C(v10, 0xD000000000000019, 0x8000000267456EE0);
  v59(v135, 0);
  sub_266ECB294(0, &qword_2800F43F0, 0x277D588D0);
  sub_266ECAF2C(&qword_2800F43F8, &qword_2800F43F0, 0x277D588D0);
  sub_26738121C();
  v56(v10, 0, 1, v37);
  v60 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267456F00);
  v60(v135, 0);
  sub_266ECB294(0, &qword_2800F4400, 0x277D58868);
  sub_266ECAF2C(&qword_2800F4408, &qword_2800F4400, 0x277D58868);
  sub_26738121C();
  v56(v10, 0, 1, v37);
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E696F70646E65, 0xEE00646573557265);
  v61(v135, 0);
  sub_266ECB294(0, &qword_2800F4410, 0x277D58838);
  sub_266ECAF2C(&qword_2800F4418, &qword_2800F4410, 0x277D58838);
  sub_26738121C();
  v62 = v37;
  v56(v10, 0, 1, v37);
  v63 = sub_2673811AC();
  v120 = 0xD000000000000014;
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267456F20);
  v63(v135, 0);
  sub_266ECB294(0, &qword_2800F4420, 0x277D58890);
  sub_266ECAF2C(&qword_2800F4428, &qword_2800F4420, 0x277D58890);
  sub_26738121C();
  v56(v10, 0, 1, v62);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x8000000267456F40);
  v64(v135, 0);
  sub_266ECB294(0, &qword_2800F3EF0, 0x277D58630);
  sub_266ECAF2C(&qword_2800F3EE8, &qword_2800F3EF0, 0x277D58630);
  sub_26738121C();
  v56(v10, 0, 1, v62);
  v65 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x8000000267456F60);
  v65(v135, 0);
  sub_266ECB294(0, &qword_2800F4430, 0x277D588E0);
  sub_266ECAF2C(&qword_2800F4438, &qword_2800F4430, 0x277D588E0);
  sub_26738121C();
  v66 = v129;
  v56(v10, 0, 1, v129);
  v67 = sub_2673811AC();
  sub_266EC637C(v10, v122, 0x8000000267456F80);
  v67(v135, 0);
  sub_266ECB294(0, &qword_2800F4440, 0x277D58858);
  sub_266ECAF2C(&qword_2800F4448, &qword_2800F4440, 0x277D58858);
  sub_26738121C();
  v56(v10, 0, 1, v66);
  v68 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267456FA0);
  v68(v135, 0);
  sub_266ECB294(0, &qword_2800F4348, 0x277D587E0);
  sub_266ECAF2C(&qword_2800F4340, &qword_2800F4348, 0x277D587E0);
  sub_26738121C();
  v56(v10, 0, 1, v66);
  v69 = sub_2673811AC();
  v70 = v119;
  sub_266EC637C(v10, v119, 0x8000000267456FC0);
  v69(v135, 0);
  sub_266ECB294(0, &qword_2800F4450, 0x277D58898);
  sub_266ECAF2C(&qword_2800F4458, &qword_2800F4450, 0x277D58898);
  sub_26738121C();
  v71 = v129;
  v72 = v131;
  v131(v10, 0, 1, v129);
  v73 = sub_2673811AC();
  sub_266EC637C(v10, v70, 0x8000000267456FE0);
  v73(v135, 0);
  v122 = "odldFalseTriggerMitigated";
  sub_266ECB294(0, &qword_2800F4460, 0x277D588F8);
  sub_266ECAF2C(&qword_2800F4468, &qword_2800F4460, 0x277D588F8);
  sub_26738121C();
  v72(v10, 0, 1, v71);
  v74 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v122 | 0x8000000000000000);
  v74(v135, 0);
  sub_266ECB294(0, &qword_2800F4470, 0x277D588D8);
  sub_266ECAF2C(&qword_2800F4478, &qword_2800F4470, 0x277D588D8);
  sub_26738121C();
  v75 = v131;
  v131(v10, 0, 1, v71);
  v76 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x8000000267457020);
  v76(v135, 0);
  sub_266ECB294(0, &qword_2800F4300, 0x277D587D8);
  sub_266ECAF2C(&qword_2800F42F8, &qword_2800F4300, 0x277D587D8);
  sub_26738121C();
  v75(v10, 0, 1, v71);
  v77 = sub_2673811AC();
  sub_266EC637C(v10, 0x6375446F69647561, 0xEB0000000064656BLL);
  v77(v135, 0);
  sub_266ECB294(0, &qword_2800F40A0, 0x277D586E0);
  sub_266ECAF2C(&qword_2800F4098, &qword_2800F40A0, 0x277D586E0);
  sub_26738121C();
  v75(v10, 0, 1, v71);
  v78 = sub_2673811AC();
  sub_266EC637C(v10, v120, 0x8000000267457050);
  v78(v135, 0);
  sub_266ECB294(0, &qword_2800F4480, 0x277D588A8);
  sub_266ECAF2C(&qword_2800F4488, &qword_2800F4480, 0x277D588A8);
  sub_26738121C();
  v79 = v129;
  v75(v10, 0, 1, v129);
  v80 = sub_2673811AC();
  v122 = 0xD000000000000016;
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267457070);
  v80(v135, 0);
  sub_266ECB294(0, &qword_2800F4490, 0x277D58948);
  sub_266ECAF2C(&qword_2800F4498, &qword_2800F4490, 0x277D58948);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v81 = sub_2673811AC();
  sub_266EC637C(v10, 0x7461657243707274, 0xEA00000000006465);
  v81(v135, 0);
  sub_266ECB294(0, &qword_2800F44A0, 0x277D589A8);
  sub_266ECAF2C(&qword_2800F44A8, &qword_2800F44A0, 0x277D589A8);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v82 = sub_2673811AC();
  sub_266EC637C(v10, v121, 0x8000000267457090);
  v82(v135, 0);
  sub_266ECB294(0, &qword_2800F44B0, 0x277D58930);
  sub_266ECAF2C(&qword_2800F44B8, &qword_2800F44B0, 0x277D58930);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v83 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x80000002674570B0);
  v83(v135, 0);
  sub_266ECB294(0, &qword_2800F44C0, 0x277D58920);
  sub_266ECAF2C(&qword_2800F44C8, &qword_2800F44C0, 0x277D58920);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v84 = sub_2673811AC();
  v120 = 0xD000000000000015;
  sub_266EC637C(v10, 0xD000000000000015, 0x80000002674570D0);
  v84(v135, 0);
  sub_266ECB294(0, &qword_2800F44D0, 0x277D58940);
  sub_266ECAF2C(&qword_2800F44D8, &qword_2800F44D0, 0x277D58940);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v85 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x80000002674570F0);
  v85(v135, 0);
  sub_266ECB294(0, &qword_2800F44E0, 0x277D58988);
  sub_266ECAF2C(&qword_2800F44E8, &qword_2800F44E0, 0x277D58988);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v86 = sub_2673811AC();
  v121 = 0xD00000000000001ALL;
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267457120);
  v86(v135, 0);
  sub_266ECB294(0, &qword_2800F42D0, 0x277D587C0);
  sub_266ECAF2C(&qword_2800F42C8, &qword_2800F42D0, 0x277D587C0);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v87 = sub_2673811AC();
  sub_266EC637C(v10, v126, 0x8000000267457140);
  v87(v135, 0);
  sub_266ECB294(0, &qword_2800F44F0, 0x277D58818);
  sub_266ECAF2C(&qword_2800F44F8, &qword_2800F44F0, 0x277D58818);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v88 = sub_2673811AC();
  sub_266EC637C(v10, 0x6572506E776F7263, 0xEC00000064657373);
  v88(v135, 0);
  sub_266ECB294(0, &qword_2800F4500, 0x277D588C0);
  sub_266ECAF2C(&qword_2800F4508, &qword_2800F4500, 0x277D588C0);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v89 = sub_2673811AC();
  sub_266EC637C(v10, 0x6767697254737472, 0xEC00000064657265);
  v89(v135, 0);
  sub_266ECB294(0, &qword_2800F4510, 0x277D588B0);
  sub_266ECAF2C(&qword_2800F4518, &qword_2800F4510, 0x277D588B0);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v90 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x8000000267457160);
  v90(v135, 0);
  sub_266ECB294(0, &qword_2800F4520, 0x277D588B8);
  sub_266ECAF2C(&qword_2800F4528, &qword_2800F4520, 0x277D588B8);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v91 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, 0x8000000267457180);
  v91(v135, 0);
  sub_266ECB294(0, &qword_2800F4530, 0x277D589F0);
  sub_266ECAF2C(&qword_2800F4538, &qword_2800F4530, 0x277D589F0);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v92 = sub_2673811AC();
  sub_266EC637C(v10, v120, 0x80000002674571A0);
  v92(v135, 0);
  sub_266ECB294(0, &qword_2800F4540, 0x277D58A20);
  sub_266ECAF2C(&qword_2800F4548, &qword_2800F4540, 0x277D58A20);
  sub_26738121C();
  v75(v10, 0, 1, v79);
  v93 = sub_2673811AC();
  v94 = v122;
  sub_266EC637C(v10, v122, 0x80000002674571C0);
  v93(v135, 0);
  v95 = sub_2673811AC();
  v96 = sub_266ECB6CC(v134, v94, 0x80000002674571C0);
  if (!v127(v97, 1, v79))
  {
    sub_266ECB128(&unk_287888288);
    sub_26738115C();
  }

  (v96)(v134, 0);
  v95(v135, 0);
  sub_266ECB294(0, &qword_2800F40C0, 0x277D586E8);
  sub_266ECAF2C(&qword_2800F40B8, &qword_2800F40C0, 0x277D586E8);
  sub_26738121C();
  v98 = v129;
  v99 = v131;
  v131(v10, 0, 1, v129);
  v100 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000038, 0x80000002674571E0);
  v100(v135, 0);
  sub_266ECB294(0, &qword_2800F4550, 0x277D589E8);
  sub_266ECAF2C(&qword_2800F4558, &qword_2800F4550, 0x277D589E8);
  sub_26738121C();
  v99(v10, 0, 1, v98);
  v101 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x8000000267457220);
  v101(v135, 0);
  v102 = sub_2673811AC();
  v103 = sub_266ECB6CC(v134, 0xD00000000000001ELL, 0x8000000267457220);
  if (!v127(v104, 1, v98))
  {
    sub_266ECB128(&unk_2878882B0);
    sub_26738115C();
  }

  (v103)(v134, 0);
  v102(v135, 0);
  sub_266ECB294(0, &qword_2800F4560, 0x277D58A28);
  sub_266ECAF2C(&qword_2800F4568, &qword_2800F4560, 0x277D58A28);
  sub_26738121C();
  v105 = v129;
  v106 = v131;
  v131(v10, 0, 1, v129);
  v107 = sub_2673811AC();
  sub_266EC637C(v10, v121, 0x8000000267457240);
  v107(v135, 0);
  sub_266ECB294(0, &qword_2800F3E78, 0x277D58620);
  sub_266ECAF2C(&qword_2800F3E70, &qword_2800F3E78, 0x277D58620);
  sub_26738121C();
  v106(v10, 0, 1, v105);
  v108 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x8000000267457260);
  v108(v135, 0);
  sub_266ECB294(0, &qword_2800F3E90, 0x277D58628);
  sub_266ECAF2C(&qword_2800F3E88, &qword_2800F3E90, 0x277D58628);
  sub_26738121C();
  v106(v10, 0, 1, v105);
  v109 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, 0x8000000267457290);
  v109(v135, 0);
  v110 = v123;
  sub_26738117C();
  v111 = sub_2673811BC();
  v113 = v112;
  v114 = *v112;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v113 = v114;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v114 = sub_266ECAD54(0, v114[2] + 1, 1, v114);
    *v113 = v114;
  }

  v117 = v114[2];
  v116 = v114[3];
  if (v117 >= v116 >> 1)
  {
    v114 = sub_266ECAD54(v116 > 1, v117 + 1, 1, v114);
    *v113 = v114;
  }

  v114[2] = v117 + 1;
  (*(v124 + 32))(v114 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v117, v110, v125);
  v111(v135, 0);
  sub_266ECB128(&unk_2878882D8);
  return sub_2673811CC();
}

uint64_t sub_2670B5608(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2670B56A0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670B576C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B57D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670B5830(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4570, &qword_2800F1EA0, 0x277D587F0);
  a1[2] = sub_266ECAF2C(&qword_2800F4578, &qword_2800F1EA0, 0x277D587F0);
  result = sub_266ECAF2C(&qword_2800F4580, &qword_2800F1EA0, 0x277D587F0);
  a1[3] = result;
  return result;
}

uint64_t static MHSchemaMHClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682532461, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682532461, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287888310);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2670B5BC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B5C28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHCoreSpeechPreprocessorCompleted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = sub_26738113C();
  v53 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v55 = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E508];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v54 = v4 + 104;
  v56[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v51 = *(v15 + 56);
  v52 = v15 + 56;
  v51(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x61636F4C70656562, 0xEC0000006E6F6974);
  v16(v56, 0);
  v13(v7, v12, v53);
  v56[0] = 1;
  sub_26738114C();
  v17 = v14;
  v18 = v14;
  v19 = v51;
  v51(v11, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D6F437374617473, 0xED00006465747570);
  v20(v56, 0);
  v49 = *MEMORY[0x277D3E500];
  (v13)(v7);
  v56[0] = 1;
  sub_26738114C();
  v19(v11, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x65776F5070656562, 0xE900000000000072);
  v21(v56, 0);
  v22 = v49;
  v23 = v53;
  v13(v7, v49, v53);
  v56[0] = 1;
  sub_26738114C();
  v24 = v51;
  v51(v11, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F506C616E676973, 0xEB00000000726577);
  v25(v56, 0);
  v13(v7, v22, v23);
  v50 = v13;
  v56[0] = 1;
  sub_26738114C();
  v24(v11, 0, 1, v17);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C616E696769726FLL, 0xED00007265776F50);
  v26(v56, 0);
  v13(v7, v49, v23);
  v56[0] = 1;
  sub_26738114C();
  v27 = v51;
  v51(v11, 0, 1, v17);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0x615678614D736261, 0xE90000000000006CLL);
  v28(v56, 0);
  v46 = "echPreprocessorCompleted";
  v50(v7, v49, v23);
  v56[0] = 1;
  sub_26738114C();
  v29 = v17;
  v47 = v17;
  v27(v11, 0, 1, v17);
  v30 = v27;
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v46 | 0x8000000000000000);
  v31(v56, 0);
  v46 = "aboveNinetyFivepcOfMax";
  v49 = *MEMORY[0x277D3E540];
  v32 = v49;
  v33 = v50;
  v50(v7, v49, v23);
  v56[0] = 1;
  sub_26738114C();
  v30(v11, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v46 | 0x8000000000000000);
  v34(v56, 0);
  v46 = "numTotalInputSamples";
  v35 = v53;
  v33(v7, v32, v53);
  v56[0] = 1;
  sub_26738114C();
  v36 = v47;
  v37 = v51;
  v51(v11, 0, 1, v47);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v46 | 0x8000000000000000);
  v38(v56, 0);
  v46 = "numTotalOutputSamples";
  v39 = v49;
  v40 = v35;
  v41 = v50;
  v50(v7, v49, v40);
  v56[0] = 1;
  sub_26738114C();
  v37(v11, 0, 1, v36);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v46 | 0x8000000000000000);
  v42(v56, 0);
  v41(v7, v39, v53);
  v56[0] = 1;
  sub_26738114C();
  v37(v11, 0, 1, v36);
  v43 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x80000002674573B0);
  v43(v56, 0);
  sub_266ECB294(0, &qword_2800F4588, 0x277D58810);
  sub_266ECAF2C(&qword_2800F4590, &qword_2800F4588, 0x277D58810);
  sub_26738122C();
  v37(v11, 0, 1, v36);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x80000002674573D0);
  return v44(v56, 0);
}

uint64_t sub_2670B681C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B6880(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHCoreSpeechZeroFilterRunPair.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "echZeroFilterRunPair";
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x4C6E75526F72657ALL, 0xED00006874676E65);
  return v16(v21, 0);
}

uint64_t sub_2670B6C5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B6CC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B6D24()
{
  result = qword_2800F4590;
  if (!qword_2800F4590)
  {
    sub_2670B6D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4590);
  }

  return result;
}

unint64_t sub_2670B6D7C()
{
  result = qword_2800F4588;
  if (!qword_2800F4588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4588);
  }

  return result;
}

uint64_t static MHSchemaMHCrownPressed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267457480);
  return v10(v12, 0);
}

uint64_t sub_2670B7018(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B707C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B70E0()
{
  result = qword_2800F44F8;
  if (!qword_2800F44F8)
  {
    sub_2670B7138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F44F8);
  }

  return result;
}

unint64_t sub_2670B7138()
{
  result = qword_2800F44F0;
  if (!qword_2800F44F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F44F0);
  }

  return result;
}

uint64_t static MHSchemaMHDarwinConnectedDeviceWakeEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670B73CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B7430(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B7494()
{
  result = qword_2800F4598;
  if (!qword_2800F4598)
  {
    sub_2670B74EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4598);
  }

  return result;
}

unint64_t sub_2670B74EC()
{
  result = qword_2800F45A0;
  if (!qword_2800F45A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45A0);
  }

  return result;
}

uint64_t static MHSchemaMHDarwinConnectedDeviceWakeFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670B7780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B77E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B7848()
{
  result = qword_2800F45A8;
  if (!qword_2800F45A8)
  {
    sub_2670B78A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45A8);
  }

  return result;
}

unint64_t sub_2670B78A0()
{
  result = qword_2800F45B0;
  if (!qword_2800F45B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45B0);
  }

  return result;
}

uint64_t static MHSchemaMHDarwinConnectedDeviceWakeStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670B7B34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B7B98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B7BFC()
{
  result = qword_2800F45B8;
  if (!qword_2800F45B8)
  {
    sub_2670B7C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45B8);
  }

  return result;
}

unint64_t sub_2670B7C54()
{
  result = qword_2800F45C0;
  if (!qword_2800F45C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45C0);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointDelayContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v36 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v30 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34 = a1;
  sub_26738119C();
  v33 = "iri.mh.MHEndpointDelayContext";
  v12 = *(v3 + 104);
  v35 = *MEMORY[0x277D3E540];
  v11 = v35;
  v12(v6, v35, v2);
  v31 = v12;
  v37[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v13);
  v32 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v33 | 0x8000000000000000);
  v17(v37, 0);
  v18 = v11;
  v19 = v36;
  v30[1] = v3 + 104;
  v12(v6, v18, v36);
  v37[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x676E696B61657073, 0xEF734E6E49646E45);
  v20(v37, 0);
  v33 = "speakingStartInNs";
  v21 = v35;
  v22 = v19;
  v23 = v31;
  v31(v6, v35, v22);
  v37[0] = 1;
  sub_26738114C();
  v30[0] = v13;
  v15(v10, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v33 | 0x8000000000000000);
  v24(v37, 0);
  v33 = "endpointDelayInNs";
  v25 = v21;
  v26 = v36;
  v23(v6, v25, v36);
  v37[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v33 | 0x8000000000000000);
  v27(v37, 0);
  v23(v6, v35, v26);
  v37[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v30[0]);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674575F0);
  return v28(v37, 0);
}

uint64_t sub_2670B8244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B82A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B830C()
{
  result = qword_2800F4418;
  if (!qword_2800F4418)
  {
    sub_2670B8364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4418);
  }

  return result;
}

unint64_t sub_2670B8364()
{
  result = qword_2800F4410;
  if (!qword_2800F4410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4410);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointDetected.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v69 = sub_26738113C();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v69);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v56 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHEndpointerType(0);
  sub_2670B9400(&qword_2800F45C8, type metadata accessor for MHSchemaMHEndpointerType);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v63 = v12 + 56;
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E696F70646E65, 0xEE00657079547265);
  v14(v70, 0);
  v61 = *MEMORY[0x277D3E540];
  v66 = *(v3 + 104);
  v67 = v3 + 104;
  v15 = v69;
  v66(v6);
  v70[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v68 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x8000000267457640);
  v16(v70, 0);
  v59 = "endpointAudioDurationInNs";
  v64 = v6;
  v17 = v61;
  v18 = v15;
  v19 = v66;
  (v66)(v6, v61, v18);
  v70[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  v58 = 0xD000000000000013;
  sub_266EC637C(v10, 0xD000000000000013, v59 | 0x8000000000000000);
  v20(v70, 0);
  v19(v64, v17, v69);
  v70[0] = 1;
  sub_26738114C();
  v60 = v13;
  v13(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  v59 = 0xD000000000000018;
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267457680);
  v21(v70, 0);
  sub_266ECB294(0, &qword_2800F45D0, 0x277D58848);
  sub_266ECAF2C(&qword_2800F45D8, &qword_2800F45D0, 0x277D58848);
  sub_26738120C();
  v65 = v11;
  v13(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x80000002674576A0);
  v22(v70, 0);
  v57 = "endpointFeaturesAtEndpoint";
  v23 = v61;
  v24 = v69;
  v25 = v66;
  (v66)(v64, v61, v69);
  v70[0] = 1;
  sub_26738114C();
  v26 = v60;
  v60(v10, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v57 | 0x8000000000000000);
  v27(v70, 0);
  v25(v64, v23, v24);
  v70[0] = 1;
  sub_26738114C();
  v28 = v65;
  v29 = v26;
  v26(v10, 0, 1, v65);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C65446172747865, 0xEE00734E6E497961);
  v30(v70, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v31 = v28;
  v32 = v29;
  v29(v10, 0, 1, v28);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x80000002674576E0);
  v33(v70, 0);
  v57 = "endpointModelConfigVersion";
  v34 = v64;
  v35 = v69;
  v36 = v66;
  (v66)(v64, *MEMORY[0x277D3E4E8], v69);
  v70[0] = 1;
  sub_26738114C();
  v32(v10, 0, 1, v31);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v57 | 0x8000000000000000);
  v37(v70, 0);
  v57 = "eFromHistoricalAudio";
  v38 = *MEMORY[0x277D3E500];
  v39 = v35;
  v40 = v36;
  (v36)(v34, v38, v39);
  v70[0] = 1;
  sub_26738114C();
  v41 = v65;
  v42 = v60;
  v60(v10, 0, 1, v65);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, v58, v57 | 0x8000000000000000);
  v43(v70, 0);
  v44 = v69;
  v40(v34, v38, v69);
  v70[0] = 1;
  sub_26738114C();
  v42(v10, 0, 1, v41);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E696F70646E65, 0xEF65726F63537265);
  v45(v70, 0);
  v58 = "endpointerThreshold";
  v46 = v61;
  v40(v34, v61, v44);
  v70[0] = 1;
  sub_26738114C();
  v47 = v60;
  v60(v10, 0, 1, v65);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, v59, v58 | 0x8000000000000000);
  v48(v70, 0);
  (v66)(v34, v46, v44);
  v70[0] = 1;
  sub_26738114C();
  v49 = v65;
  v47(v10, 0, 1, v65);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x8000000267457770);
  v50(v70, 0);
  sub_266ECB294(0, &qword_2800F45E0, 0x277D58938);
  sub_266ECAF2C(&qword_2800F45E8, &qword_2800F45E0, 0x277D58938);
  sub_26738120C();
  v47(v10, 0, 1, v49);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x8000000267457790);
  v51(v70, 0);
  sub_266ECB294(0, &qword_2800F45F0, 0x277D58860);
  sub_266ECAF2C(&qword_2800F45F8, &qword_2800F45F0, 0x277D58860);
  sub_26738120C();
  v47(v10, 0, 1, v49);
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0x4D74756F656D6974, 0xEF61746164617465);
  v52(v70, 0);
  type metadata accessor for MHSchemaMHTRPDetectionType(0);
  sub_2670B9400(&qword_2800F4600, type metadata accessor for MHSchemaMHTRPDetectionType);
  sub_26738120C();
  v47(v10, 0, 1, v49);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x80000002674577B0);
  v53(v70, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v47(v10, 0, 1, v49);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449707274, 0xE500000000000000);
  return v54(v70, 0);
}