uint64_t sub_266EEE244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEE2A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEE30C()
{
  result = qword_2800EF568;
  if (!qword_2800EF568)
  {
    sub_266EEE364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF568);
  }

  return result;
}

unint64_t sub_266EEE364()
{
  result = qword_2800EF560;
  if (!qword_2800EF560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF560);
  }

  return result;
}

uint64_t static ASRSchemaASRManualEditClassificationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v11[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  return v9(v11, 0);
}

uint64_t sub_266EEE5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEE65C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEE6C0()
{
  result = qword_2800EF548;
  if (!qword_2800EF548)
  {
    sub_266EEE718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF548);
  }

  return result;
}

unint64_t sub_266EEE718()
{
  result = qword_2800EF540;
  if (!qword_2800EF540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF540);
  }

  return result;
}

uint64_t static ASRSchemaASRManualEditMetricClassified.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v23 = *(v8 + 56);
  v9 = v8 + 56;
  v23(v6, 0, 1, v7);
  v21[1] = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C616E696769726FLL, 0xED00006449727341);
  v10(v26, 0);
  v11 = *MEMORY[0x277D3E508];
  v12 = v25;
  v24 = *(v24 + 104);
  v22 = v11;
  (v24)(v3, v11, v25);
  v26[0] = 1;
  sub_26738114C();
  v13 = v23;
  v23(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x74656C65446D756ELL, 0xEC000000736E6F69);
  v14(v26, 0);
  v15 = v3;
  v16 = v3;
  v17 = v24;
  (v24)(v16, v11, v12);
  v26[0] = 1;
  sub_26738114C();
  v13(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265736E496D756ELL, 0xED0000736E6F6974);
  v18(v26, 0);
  v17(v15, v22, v25);
  v26[0] = 1;
  sub_26738114C();
  v13(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674212E0);
  return v19(v26, 0);
}

uint64_t sub_266EEEC44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEECA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRManualEditTextClassified.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738113C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6C616E696769726FLL, 0xED00006449727341);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800EF350, 0x277D56868);
  sub_266ECAF2C(&qword_2800EF348, &qword_2800EF350, 0x277D56868);
  sub_26738122C();
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64456C61756E616DLL, 0xEB00000000737469);
  v9(v24, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v23, 0x64456C61756E616DLL, 0xEB00000000737469);
  v12 = *(v6 + 48);
  if (!v12(v13, 1, v5))
  {
    sub_266ECB128(&unk_287883DC8);
    sub_26738115C();
  }

  (v11)(v23, 0);
  v10(v24, 0);
  (*(v20 + 104))(v21, *MEMORY[0x277D3E530], v22);
  v24[0] = 1;
  sub_26738114C();
  v7(v4, 0, 1, v5);
  v14 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000011, 0x800000026741EC10);
  v14(v24, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v23, 0xD000000000000011, 0x800000026741EC10);
  if (!v12(v17, 1, v5))
  {
    sub_266ECB128(&unk_287883DF0);
    sub_26738115C();
  }

  (v16)(v23, 0);
  return v15(v24, 0);
}

uint64_t sub_266EEF2A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEF304(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRNamedEntityUserEdit.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v18 = sub_26738113C();
  v20 = *(v18 - 8);
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASREntityTaggerCategory(0);
  sub_266EEFA38(&qword_2800EF438, type metadata accessor for ASRSchemaASREntityTaggerCategory);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267421370);
  v9(v21, 0);
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v20 + 104);
  v20 += 104;
  v17 = v11;
  v11(v3, v10, v18);
  v21[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x8000000267421390);
  v12(v21, 0);
  type metadata accessor for ASRSchemaASRVisualContextCategory(0);
  sub_266EEFA38(&qword_2800EF570, type metadata accessor for ASRSchemaASRVisualContextCategory);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x80000002674213C0);
  v13(v21, 0);
  v17(v3, v10, v18);
  v21[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x80000002674213E0);
  v14(v21, 0);
  type metadata accessor for ASRSchemaASRSpeechProfileCategory(0);
  sub_266EEFA38(&qword_2800EF528, type metadata accessor for ASRSchemaASRSpeechProfileCategory);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267421410);
  return v15(v21, 0);
}

uint64_t sub_266EEF92C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEF990(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EEFA38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266EEFA80()
{
  result = qword_2800EF580;
  if (!qword_2800EF580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF580);
  }

  return result;
}

uint64_t static ASRSchemaASROneBestTranscriptTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v3 + 104);
  v25 = *MEMORY[0x277D3E530];
  v26 = v3 + 104;
  v27 = v2;
  v24 = v10;
  v10(v6);
  v30[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v23 = *(v12 + 56);
  v23(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x676F636552776172, 0xEE006E6F6974696ELL);
  v13(v30, 0);
  v28 = a1;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v29, 0x676F636552776172, 0xEE006E6F6974696ELL);
  v16 = *(v12 + 48);
  if (!v16(v17, 1, v11))
  {
    sub_266ECB128(&unk_287883E18);
    sub_26738115C();
  }

  (v15)(v29, 0);
  v14(v30, 0);
  v24(v6, v25, v27);
  v30[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E744974736F70, 0xE700000000000000);
  v18(v30, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v29, 0x6E744974736F70, 0xE700000000000000);
  if (!v16(v21, 1, v11))
  {
    sub_266ECB128(&unk_287883E40);
    sub_26738115C();
  }

  (v20)(v29, 0);
  return v19(v30, 0);
}

uint64_t sub_266EEFF3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEFFA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF0004()
{
  result = qword_2800EF588;
  if (!qword_2800EF588)
  {
    sub_266EF005C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF588);
  }

  return result;
}

unint64_t sub_266EF005C()
{
  result = qword_2800EF590;
  if (!qword_2800EF590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF590);
  }

  return result;
}

uint64_t static ASRSchemaASRPackage.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v8[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF598, 0x277D56A30);
  sub_266ECAF2C(&qword_2800EF5A0, &qword_2800EF598, 0x277D56A30);
  sub_26738120C();
  v3 = sub_26738116C();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 0, 1, v3);
  v5 = sub_2673811AC();
  sub_266EC637C(v2, 0x676F636552776172, 0xEE006E6F6974696ELL);
  v5(v8, 0);
  sub_26738120C();
  v4(v2, 0, 1, v3);
  v6 = sub_2673811AC();
  sub_266EC637C(v2, 0x6E744974736F70, 0xE700000000000000);
  return v6(v8, 0);
}

uint64_t sub_266EF0338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF039C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPackageGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v62 = sub_26738113C();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v52 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF5B0, 0x277D569E0);
  sub_266ECAF2C(&qword_2800EF5A8, &qword_2800EF5B0, 0x277D569E0);
  sub_26738120C();
  v9 = sub_26738116C();
  v52 = *(v9 - 8);
  v11 = v52 + 56;
  v10 = *(v52 + 56);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6567616B636170, 0xE700000000000000);
  v12(v64, 0);
  v13 = *MEMORY[0x277D3E4E8];
  v14 = *(v2 + 104);
  v54 = v5;
  v59 = v13;
  v14(v5);
  v60 = v2 + 104;
  v64[0] = 1;
  sub_26738114C();
  v15 = v9;
  v61 = v10;
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E69467369, 0xE700000000000000);
  v16(v64, 0);
  v53 = "loggableSharedUserId";
  v17 = *MEMORY[0x277D3E530];
  v18 = v62;
  (v14)(v54, v17, v62);
  v64[0] = 1;
  sub_26738114C();
  v19 = v15;
  v10(v8, 0, 1, v15);
  v20 = a1;
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v53 | 0x8000000000000000);
  v21(v64, 0);
  v22 = v54;
  LODWORD(v53) = v17;
  v58 = v14;
  (v14)(v54, v17, v18);
  v64[0] = 1;
  sub_26738114C();
  v56 = v11;
  v61(v8, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674206B0);
  v23(v64, 0);
  v57 = v20;
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v63, 0xD000000000000014, 0x80000002674206B0);
  v26 = v19;
  if (!(*(v52 + 48))(v27, 1, v19))
  {
    sub_266ECB128(&unk_287883E68);
    sub_26738115C();
  }

  (v25)(v63, 0);
  v24(v64, 0);
  v28 = v53;
  v29 = v58;
  (v58)(v22, v53, v62);
  v64[0] = 1;
  sub_26738114C();
  v55 = v26;
  v61(v8, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v30(v64, 0);
  v31 = v28;
  v32 = v62;
  v29(v22, v31, v62);
  v64[0] = 1;
  sub_26738114C();
  v33 = v61;
  v61(v8, 0, 1, v26);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674214D0);
  v34(v64, 0);
  v53 = "acousticModelVersion";
  v35 = v32;
  v36 = v58;
  (v58)(v22, v59, v35);
  v64[0] = 1;
  sub_26738114C();
  v37 = v55;
  v33(v8, 0, 1, v55);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v53 | 0x8000000000000000);
  v38(v64, 0);
  v53 = "nExhaustiveParses";
  v39 = v59;
  v40 = v62;
  (v36)(v22, v59, v62);
  v64[0] = 1;
  sub_26738114C();
  v41 = v37;
  v42 = v61;
  v61(v8, 0, 1, v37);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v53 | 0x8000000000000000);
  v43(v64, 0);
  v53 = "hasVoiceCommandParses";
  v44 = v58;
  (v58)(v22, v39, v40);
  v64[0] = 1;
  sub_26738114C();
  v42(v8, 0, 1, v41);
  v45 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v53 | 0x8000000000000000);
  v45(v64, 0);
  v53 = "hasVoiceCommandEditIntent";
  v46 = v62;
  (v44)(v22, v59, v62);
  v64[0] = 1;
  sub_26738114C();
  v47 = v55;
  v48 = v61;
  v61(v8, 0, 1, v55);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v53 | 0x8000000000000000);
  v49(v64, 0);
  (v58)(v22, v59, v46);
  v64[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v47);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x8000000267421580);
  return v50(v64, 0);
}

uint64_t sub_266EF0F78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF0FDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPartialResultGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v11[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  return v9(v11, 0);
}

uint64_t sub_266EF12C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF132C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF1390()
{
  result = qword_2800EF128;
  if (!qword_2800EF128)
  {
    sub_266EF13E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF128);
  }

  return result;
}

unint64_t sub_266EF13E8()
{
  result = qword_2800EF120;
  if (!qword_2800EF120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF120);
  }

  return result;
}

uint64_t static ASRSchemaASRPauseReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267421620, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267421640, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267421660, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266EF1648(uint64_t a1)
{
  v2 = sub_266EF174C(&qword_2800EF5C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EF16B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EF174C(&qword_2800EF5C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EF174C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRPauseReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRPersonalizationUserEditNamedEntityMetrics.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C61746F546D756ELL, 0xEC00000074696445);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800EF580, 0x277D569D0);
  sub_266ECAF2C(&qword_2800EF578, &qword_2800EF580, 0x277D569D0);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x80000002674216D0);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800EF538, 0x277D56990);
  sub_266ECAF2C(&qword_2800EF530, &qword_2800EF538, 0x277D56990);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x80000002674216F0);
  return v12(v14, 0);
}

uint64_t sub_266EF1BA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF1C08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPhrase.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF500, 0x277D56968);
  sub_266ECAF2C(&qword_2800EF4F8, &qword_2800EF500, 0x277D56968);
  sub_26738122C();
  v3 = sub_26738116C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_2673811AC();
  sub_266EC637C(v2, 0x6572707265746E69, 0xEF736E6F69746174);
  return v4(v6, 0);
}

uint64_t sub_266EF1E8C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF500, 0x277D56968);
  sub_266ECAF2C(&qword_2800EF4F8, &qword_2800EF500, 0x277D56968);
  sub_26738122C();
  v3 = sub_26738116C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_2673811AC();
  sub_266EC637C(v2, 0x6572707265746E69, 0xEF736E6F69746174);
  return v4(v6, 0);
}

uint64_t sub_266EF2034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF2098(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPreheatContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  v0 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF5D8, 0x277D56A20);
  sub_266ECAF2C(&qword_2800EF5E0, &qword_2800EF5D8, 0x277D56A20);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800EF5E8, 0x277D56A10);
  sub_266ECAF2C(&qword_2800EF5F0, &qword_2800EF5E8, 0x277D56A10);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EF5F8, 0x277D56A18);
  sub_266ECAF2C(&qword_2800EF600, &qword_2800EF5F8, 0x277D56A18);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
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

uint64_t sub_266EF2654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF26B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRPreheatEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRPreheatStatus(0);
  sub_266EF2BA8(&qword_2800EF608, type metadata accessor for ASRSchemaASRPreheatStatus);
  sub_26738120C();
  v3 = sub_26738116C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_2673811AC();
  sub_266EC637C(v2, 0x737574617473, 0xE600000000000000);
  return v4(v6, 0);
}

uint64_t sub_266EF2918()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRPreheatStatus(0);
  sub_266EF2BA8(&qword_2800EF608, type metadata accessor for ASRSchemaASRPreheatStatus);
  sub_26738120C();
  v3 = sub_26738116C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_2673811AC();
  sub_266EC637C(v2, 0x737574617473, 0xE600000000000000);
  return v4(v6, 0);
}

uint64_t sub_266EF2A9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF2B00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EF2BA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266EF2BF0()
{
  result = qword_2800EF5E8;
  if (!qword_2800EF5E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF5E8);
  }

  return result;
}

uint64_t static ASRSchemaASRPreheatFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v11[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  return v9(v11, 0);
}

uint64_t sub_266EF2E84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF2EE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF2F4C()
{
  result = qword_2800EF600;
  if (!qword_2800EF600)
  {
    sub_266EF2FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF600);
  }

  return result;
}

unint64_t sub_266EF2FA4()
{
  result = qword_2800EF5F8;
  if (!qword_2800EF5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF5F8);
  }

  return result;
}

uint64_t static ASRSchemaASRPreheatStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v11[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  return v9(v11, 0);
}

uint64_t sub_266EF3238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF329C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF3300()
{
  result = qword_2800EF5E0;
  if (!qword_2800EF5E0)
  {
    sub_266EF3358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF5E0);
  }

  return result;
}

unint64_t sub_266EF3358()
{
  result = qword_2800EF5D8;
  if (!qword_2800EF5D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF5D8);
  }

  return result;
}

uint64_t static ASRSchemaASRPreheatStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267421830, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267421850, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267421870, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266EF35C0(uint64_t a1)
{
  v2 = sub_266EF36C4(&qword_2800EF610);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EF3628(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EF36C4(&qword_2800EF610);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EF36C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRPreheatStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRRecognitionMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v96 = a2;
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v85 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v90 = "iri.asr.ASRRecognitionMetrics";
  v92 = *MEMORY[0x277D3E540];
  v98 = *(v3 + 104);
  v95 = v2;
  v98(v6);
  v99 = v3 + 104;
  v101[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v87 = *(v10 - 8);
  v12 = v87 + 56;
  v11 = *(v87 + 7);
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v90 | 0x8000000000000000);
  v13(v101, 0);
  v88 = "uageModelAgeInNs";
  LODWORD(v90) = *MEMORY[0x277D3E500];
  v98(v6);
  v101[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v88 | 0x8000000000000000);
  v14(v101, 0);
  sub_266ECB294(0, &qword_2800EF618, 0x277D56A40);
  sub_266ECAF2C(&qword_2800EF620, &qword_2800EF618, 0x277D56A40);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267421910);
  v15(v101, 0);
  (v98)(v6, v90, v95);
  v101[0] = 1;
  sub_26738114C();
  v97 = v10;
  v11(v9, 0, 1, v10);
  v93 = v12;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267421930);
  v16(v101, 0);
  sub_266ECB294(0, &qword_2800EF4E0, 0x277D56960);
  sub_266ECAF2C(&qword_2800EF4D8, &qword_2800EF4E0, 0x277D56960);
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v94 = v11;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x8000000267421950);
  v17(v101, 0);
  v88 = "erpolationWeights";
  v18 = v95;
  v19 = v98;
  (v98)(v6, v90, v95);
  v101[0] = 1;
  sub_26738114C();
  v20 = v97;
  v11(v9, 0, 1, v97);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v88 | 0x8000000000000000);
  v21(v101, 0);
  v88 = "signalToNoiseRatioInDecibels";
  v22 = v92;
  (v19)(v6, v92, v18);
  v101[0] = 1;
  sub_26738114C();
  v23 = v94;
  v94(v9, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v88 | 0x8000000000000000);
  v24(v101, 0);
  v88 = "recognitionDurationInNs";
  v25 = v22;
  v26 = v95;
  v27 = v98;
  (v98)(v6, v25, v95);
  v101[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v97);
  v28 = sub_2673811AC();
  v86 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, v88 | 0x8000000000000000);
  v28(v101, 0);
  LODWORD(v88) = *MEMORY[0x277D3E4E8];
  v29 = v88;
  (v27)(v6, v88, v26);
  v101[0] = 1;
  sub_26738114C();
  v30 = v97;
  v31 = v94;
  v94(v9, 0, 1, v97);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x616E457265676165, 0xEC00000064656C62);
  v32(v101, 0);
  v85 = "audioDurationInNs";
  (v27)(v6, v29, v95);
  v101[0] = 1;
  sub_26738114C();
  v33 = v31;
  v31(v9, 0, 1, v30);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v85 | 0x8000000000000000);
  v34(v101, 0);
  v85 = "utteranceDetectionEnabled";
  v35 = v95;
  v36 = v98;
  (v98)(v6, v88, v95);
  v101[0] = 1;
  sub_26738114C();
  v37 = v97;
  v33(v9, 0, 1, v97);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v85 | 0x8000000000000000);
  v38(v101, 0);
  (v36)(v6, v88, v35);
  v101[0] = 1;
  sub_26738114C();
  v39 = v94;
  v94(v9, 0, 1, v37);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x8000000267421A20);
  v40(v101, 0);
  (v98)(v6, v92, v35);
  v101[0] = 1;
  sub_26738114C();
  v41 = v97;
  v39(v9, 0, 1, v97);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x8000000267421A40);
  v42(v101, 0);
  v43 = sub_2673811AC();
  v44 = sub_266ECB6CC(v100, 0xD000000000000021, 0x8000000267421A40);
  if (!(*(v87 + 6))(v45, 1, v41))
  {
    sub_266ECB128(&unk_287883E98);
    sub_26738115C();
  }

  (v44)(v100, 0);
  v43(v101, 0);
  v46 = v95;
  v47 = v98;
  (v98)(v6, v90, v95);
  v101[0] = 1;
  sub_26738114C();
  v94(v9, 0, 1, v41);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, v86, 0x8000000267421A70);
  v48(v101, 0);
  LODWORD(v90) = *MEMORY[0x277D3E538];
  v47(v6);
  v101[0] = 1;
  sub_26738114C();
  v49 = v94;
  v94(v9, 0, 1, v41);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000025, 0x8000000267421A90);
  v50(v101, 0);
  v87 = "EnrollmentDataStreams";
  (v47)(v6, *MEMORY[0x277D3E530], v46);
  v101[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v41);
  v51 = sub_2673811AC();
  v88 = 0xD000000000000018;
  sub_266EC637C(v9, 0xD000000000000018, v87 | 0x8000000000000000);
  v51(v101, 0);
  v89 = v6;
  (v47)(v6, v92, v46);
  v101[0] = 1;
  sub_26738114C();
  v52 = v97;
  v49(v9, 0, 1, v97);
  v53 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, 0x8000000267421AE0);
  v53(v101, 0);
  sub_266ECB294(0, &qword_2800EF400, 0x277D568B8);
  sub_266ECAF2C(&qword_2800EF3F8, &qword_2800EF400, 0x277D568B8);
  sub_26738120C();
  v49(v9, 0, 1, v52);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0x74654D696A6F6D65, 0xEC00000073636972);
  v54(v101, 0);
  v87 = "lizationDurationInNs";
  v55 = v92;
  v56 = v95;
  v57 = v98;
  (v98)(v89, v92, v95);
  v101[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v52);
  v58 = sub_2673811AC();
  sub_266EC637C(v9, v88, v87 | 0x8000000000000000);
  v58(v101, 0);
  v88 = "pausedAudioDurationsInNs";
  v59 = v89;
  v57(v89, v55, v56);
  v101[0] = 1;
  sub_26738114C();
  v60 = v97;
  v49(v9, 0, 1, v97);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000032, v88 | 0x8000000000000000);
  v61(v101, 0);
  v88 = "ForFinalResultInNs";
  v62 = v98;
  (v98)(v59, v90, v56);
  v101[0] = 1;
  sub_26738114C();
  v63 = v60;
  v64 = v94;
  v94(v9, 0, 1, v63);
  v65 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v88 | 0x8000000000000000);
  v65(v101, 0);
  v88 = "extNormalizationRuns";
  (v62)(v59, v92, v56);
  v101[0] = 1;
  sub_26738114C();
  v66 = v97;
  v64(v9, 0, 1, v97);
  v67 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v88 | 0x8000000000000000);
  v67(v101, 0);
  v88 = "secondaryPassDurationInNs";
  (v62)(v59, v90, v56);
  v101[0] = 1;
  sub_26738114C();
  v68 = v94;
  v94(v9, 0, 1, v66);
  v69 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v88 | 0x8000000000000000);
  v69(v101, 0);
  v88 = "numberOfSecondaryPassRuns";
  v70 = v92;
  v71 = v95;
  v72 = v98;
  (v98)(v59, v92, v95);
  v101[0] = 1;
  sub_26738114C();
  v73 = v97;
  v68(v9, 0, 1, v97);
  v74 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v88 | 0x8000000000000000);
  v74(v101, 0);
  v88 = "nMillionsPerSecond";
  v75 = v89;
  v72(v89, v70, v71);
  v101[0] = 1;
  sub_26738114C();
  v68(v9, 0, 1, v73);
  v76 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v88 | 0x8000000000000000);
  v76(v101, 0);
  v88 = "appleNeuralEngineCpuTimeInNs";
  v72(v75, v92, v71);
  v101[0] = 1;
  sub_26738114C();
  v77 = v97;
  v68(v9, 0, 1, v97);
  v78 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v88 | 0x8000000000000000);
  v78(v101, 0);
  type metadata accessor for ASRSchemaASRSpeechRecognitionHardware(0);
  sub_266EF5238(&qword_2800EF628, type metadata accessor for ASRSchemaASRSpeechRecognitionHardware);
  sub_26738120C();
  v79 = v94;
  v94(v9, 0, 1, v77);
  v80 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267421C50);
  v80(v101, 0);
  (v98)(v75, v90, v95);
  v101[0] = 1;
  sub_26738114C();
  v79(v9, 0, 1, v77);
  v81 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, 0x8000000267421C70);
  v81(v101, 0);
  type metadata accessor for ASRSchemaASRPauseReason(0);
  sub_266EF5238(&qword_2800EF5B8, type metadata accessor for ASRSchemaASRPauseReason);
  sub_26738122C();
  v79(v9, 0, 1, v77);
  v82 = sub_2673811AC();
  sub_266EC637C(v9, 0x6165526573756170, 0xEB000000006E6F73);
  v82(v101, 0);
  sub_266ECB294(0, &qword_2800EF630, 0x277D56A58);
  sub_266ECAF2C(&qword_2800EF638, &qword_2800EF630, 0x277D56A58);
  sub_26738120C();
  v79(v9, 0, 1, v77);
  v83 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267421CA0);
  return v83(v101, 0);
}

uint64_t sub_266EF5174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF51D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EF5238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ASRSchemaASRRecognitionResult.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v9[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v3 = sub_26738116C();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 0, 1, v3);
  v5 = sub_2673811AC();
  sub_266EC637C(v2, 0x64496B6E696CLL, 0xE600000000000000);
  v5(v9, 0);
  sub_266ECB294(0, &qword_2800EF5D0, 0x277D56A00);
  sub_266ECAF2C(&qword_2800EF5C8, &qword_2800EF5D0, 0x277D56A00);
  sub_26738122C();
  v4(v2, 0, 1, v3);
  v6 = sub_2673811AC();
  sub_266EC637C(v2, 0x73657361726870, 0xE700000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EF640, 0x277D56AB0);
  sub_266ECAF2C(&qword_2800EF648, &qword_2800EF640, 0x277D56AB0);
  sub_26738122C();
  v4(v2, 0, 1, v3);
  v7 = sub_2673811AC();
  sub_266EC637C(v2, 0x636E617265747475, 0xEA00000000007365);
  return v7(v9, 0);
}

uint64_t sub_266EF5654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF56B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRRecognitionResultTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v8[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v3 = sub_26738116C();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 0, 1, v3);
  v5 = sub_2673811AC();
  sub_266EC637C(v2, 0x64496B6E696CLL, 0xE600000000000000);
  v5(v8, 0);
  sub_266ECB294(0, &qword_2800EF650, 0x277D56AA8);
  sub_266ECAF2C(&qword_2800EF658, &qword_2800EF650, 0x277D56AA8);
  sub_26738122C();
  v4(v2, 0, 1, v3);
  v6 = sub_2673811AC();
  sub_266EC637C(v2, 0x736E656B6F74, 0xE600000000000000);
  return v6(v8, 0);
}

uint64_t sub_266EF5A1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF5A80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRRecognizerComponents.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v17 = *MEMORY[0x277D3E530];
  v18 = *(v1 + 104);
  v16 = v0;
  v18(v4);
  v20[0] = 1;
  sub_26738114C();
  v19 = sub_26738116C();
  v8 = *(*(v19 - 8) + 56);
  v8(v7, 0, 1, v19);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x646E65746E6F7266, 0xE800000000000000);
  v9(v20, 0);
  v10 = v17;
  v11 = v0;
  v12 = v18;
  (v18)(v4, v17, v11);
  v20[0] = 1;
  sub_26738114C();
  v8(v7, 0, 1, v19);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C6261646F636564, 0xE900000000000065);
  v13(v20, 0);
  (v12)(v4, v10, v16);
  v20[0] = 1;
  sub_26738114C();
  v8(v7, 0, 1, v19);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265646F636564, 0xE700000000000000);
  return v14(v20, 0);
}

uint64_t sub_266EF5F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF5F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF5FCC()
{
  result = qword_2800EF620;
  if (!qword_2800EF620)
  {
    sub_266EF6024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF620);
  }

  return result;
}

unint64_t sub_266EF6024()
{
  result = qword_2800EF618;
  if (!qword_2800EF618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF618);
  }

  return result;
}

uint64_t static ASRSchemaASRRequestContext.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  v0 = *(v21 + 64);
  MEMORY[0x28223BE20]();
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF660, 0x277D56A98);
  sub_266ECAF2C(&qword_2800EF668, &qword_2800EF660, 0x277D56A98);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800EF410, 0x277D568C0);
  sub_266ECAF2C(&qword_2800EF408, &qword_2800EF410, 0x277D568C0);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800EF450, 0x277D568D0);
  sub_266ECAF2C(&qword_2800EF448, &qword_2800EF450, 0x277D568D0);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EF0E0, 0x277D56850);
  sub_266ECAF2C(&qword_2800EF0D8, &qword_2800EF0E0, 0x277D56850);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x656C6C65636E6163, 0xE900000000000064);
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

uint64_t sub_266EF6654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF66B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRRescoringDeliberationEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v13 = sub_26738113C();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRRescoringDeliberationEventType(0);
  sub_266EF6BA0(&qword_2800EF670, type metadata accessor for ASRSchemaASRRescoringDeliberationEventType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x707954746E657665, 0xE900000000000065);
  v9(v14, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E500], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x727544746E657665, 0xED00006E6F697461);
  return v10(v14, 0);
}

uint64_t sub_266EF6A94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF6AF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EF6BA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266EF6BE8()
{
  result = qword_2800EF680;
  if (!qword_2800EF680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF680);
  }

  return result;
}

uint64_t static ASRSchemaASRRescoringDeliberationEventType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267421E10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x8000000267421E40, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x8000000267421E80, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000046, 0x8000000267421EC0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000041, 0x8000000267421F10, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000035, 0x8000000267421F60, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000032, 0x8000000267421FA0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000044, 0x8000000267421FE0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000044, 0x8000000267422030, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266EF70F0(uint64_t a1)
{
  v2 = sub_266EF71F4(&qword_2800EF688);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EF7158(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EF71F4(&qword_2800EF688);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EF71F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRRescoringDeliberationEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRRescoringDeliberationResult.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = sub_26738113C();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v22 = a2;
  v23 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E69726F63736572, 0xEF64496B6E694C67);
  v12(v26, 0);
  v21 = "ringDeliberationResult";
  v13 = *MEMORY[0x277D3E500];
  v14 = *(v3 + 104);
  v14(v6, v13, v25);
  v26[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v21 | 0x8000000000000000);
  v15(v26, 0);
  v14(v6, v13, v25);
  v26[0] = 1;
  sub_26738114C();
  v16 = v23;
  v23(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x80000002674220E0);
  v17(v26, 0);
  sub_266ECB294(0, &qword_2800EF680, 0x277D56A50);
  sub_266ECAF2C(&qword_2800EF678, &qword_2800EF680, 0x277D56A50);
  sub_26738122C();
  v16(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E69726F63736572, 0xEF73746E65764567);
  return v18(v26, 0);
}

uint64_t sub_266EF7738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF779C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRRescoringDeliberationResultTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v29 = sub_26738113C();
  v31 = *(v29 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20]();
  v28 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v27 = *(v8 + 56);
  v27(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v33, 0);
  v30 = a1;
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v32, 0x64496B6E696CLL, 0xE600000000000000);
  v26 = *(v8 + 48);
  if (!v26(v12, 1, v7))
  {
    sub_266ECB128(&unk_287883EC0);
    sub_26738115C();
  }

  (v11)(v32, 0);
  v10(v33, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = *(v31 + 104);
  v31 += 104;
  v25 = v14;
  v14(v28, v13, v29);
  v33[0] = 1;
  sub_26738114C();
  v27(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267422140);
  v15(v33, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v32, 0xD000000000000012, 0x8000000267422140);
  if (!v26(v18, 1, v7))
  {
    sub_266ECB128(&unk_287883EE8);
    sub_26738115C();
  }

  (v17)(v32, 0);
  v16(v33, 0);
  v25(v28, v13, v29);
  v33[0] = 1;
  sub_26738114C();
  v27(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267422160);
  v19(v33, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v32, 0xD000000000000012, 0x8000000267422160);
  if (!v26(v22, 1, v7))
  {
    sub_266ECB128(&unk_287883F10);
    sub_26738115C();
  }

  (v21)(v32, 0);
  return v20(v33, 0);
}

uint64_t sub_266EF7E1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF7E80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRSampledAudioFileDeleted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v3 = sub_26738116C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_2673811AC();
  sub_266EC637C(v2, 0x6C616E696769726FLL, 0xED00006449727341);
  return v4(v6, 0);
}

uint64_t sub_266EF8104()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v3 = sub_26738116C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_2673811AC();
  sub_266EC637C(v2, 0x6C616E696769726FLL, 0xED00006449727341);
  return v4(v6, 0);
}

uint64_t sub_266EF82AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF8310(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRSampledAudioFileDeletionFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v26 = sub_26738113C();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v22 - v7;
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
  v25 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E696769726FLL, 0xED00006449727341);
  v13(v27, 0);
  v23 = *MEMORY[0x277D3E508];
  v14 = *(v2 + 104);
  v15 = v26;
  v14(v5);
  v27[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v16 = v11;
  v22 = a1;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v17(v27, 0);
  v24 = *MEMORY[0x277D3E530];
  v14(v5);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v18(v27, 0);
  (v14)(v5, v23, v15);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267422200);
  v19(v27, 0);
  (v14)(v5, v24, v26);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267422220);
  return v20(v27, 0);
}

uint64_t sub_266EF8958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF89BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRSampledAudioFileEnqueued.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v8[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v3 = sub_26738116C();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 0, 1, v3);
  v5 = sub_2673811AC();
  sub_266EC637C(v2, 0x6C616E696769726FLL, 0xED00006449727341);
  v5(v8, 0);
  type metadata accessor for MHSchemaMHASRAudioCodec(0);
  sub_266EF8DBC();
  sub_26738120C();
  v4(v2, 0, 1, v3);
  v6 = sub_2673811AC();
  sub_266EC637C(v2, 0x646F436F69647561, 0xEA00000000006365);
  return v6(v8, 0);
}

uint64_t sub_266EF8CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF8D5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF8DBC()
{
  result = qword_2800EF690;
  if (!qword_2800EF690)
  {
    type metadata accessor for MHSchemaMHASRAudioCodec(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF690);
  }

  return result;
}

uint64_t static ASRSchemaASRSampledAudioFileEnqueueFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v26 = sub_26738113C();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v22 - v7;
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
  v25 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E696769726FLL, 0xED00006449727341);
  v13(v27, 0);
  v23 = *MEMORY[0x277D3E508];
  v14 = *(v2 + 104);
  v15 = v26;
  v14(v5);
  v27[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v16 = v11;
  v22 = a1;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v17(v27, 0);
  v24 = *MEMORY[0x277D3E530];
  v14(v5);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v18(v27, 0);
  (v14)(v5, v23, v15);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267422200);
  v19(v27, 0);
  (v14)(v5, v24, v26);
  v27[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267422220);
  return v20(v27, 0);
}

uint64_t sub_266EF93FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF9460(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRSampledAudioFileStorageFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = sub_26738113C();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v21 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v23 = *MEMORY[0x277D3E508];
  v25 = *(v3 + 104);
  v25(v6);
  v27[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = v11;
  v21[1] = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F43726F727265, 0xE900000000000065);
  v13(v27, 0);
  v22 = *MEMORY[0x277D3E530];
  v15 = v25;
  v14 = v26;
  v25(v6);
  v27[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F44726F727265, 0xEB000000006E6961);
  v16(v27, 0);
  (v15)(v6, v23, v14);
  v27[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267422200);
  v17(v27, 0);
  (v25)(v6, v22, v26);
  v27[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267422220);
  v18(v27, 0);
  type metadata accessor for ASRSchemaASRSampledAudioStorageFailureReason(0);
  sub_266EF9B90(&qword_2800EF698, type metadata accessor for ASRSchemaASRSampledAudioStorageFailureReason);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, 0x8000000267422300);
  return v19(v27, 0);
}

uint64_t sub_266EF9A84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF9AE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EF9B90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266EF9BD8()
{
  result = qword_2800EF1D0;
  if (!qword_2800EF1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF1D0);
  }

  return result;
}

uint64_t static ASRSchemaASRSampledAudioFileStored.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v11[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  return v9(v11, 0);
}

uint64_t sub_266EF9E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EF9ED0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EF9F34()
{
  result = qword_2800EF1C8;
  if (!qword_2800EF1C8)
  {
    sub_266EF9F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF1C8);
  }

  return result;
}

unint64_t sub_266EF9F8C()
{
  result = qword_2800EF1C0;
  if (!qword_2800EF1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF1C0);
  }

  return result;
}

uint64_t static ASRSchemaASRSampledAudioStorageFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x80000002674223B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003BLL, 0x80000002674223E0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000039, 0x8000000267422420, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000044, 0x8000000267422460, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000041, 0x80000002674224B0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266EFA2CC(uint64_t a1)
{
  v2 = sub_266EFA3D0(&qword_2800EF6A0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFA334(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFA3D0(&qword_2800EF6A0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFA3D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRSampledAudioStorageFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRSpeechProfileCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267422540, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v176;

  v1(v205, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267422570, v11);
  v12 = *v9;
  *v9 = v177;

  v7(v205, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674225A0, v17);
  v18 = *v15;
  *v15 = v178;

  v13(v205, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x80000002674225D0, v23);
  v24 = *v21;
  *v21 = v179;

  v19(v205, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267422600, v29);
  v30 = *v27;
  *v27 = v180;

  v25(v205, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267422630, v35);
  v36 = *v33;
  *v33 = v181;

  v31(v205, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267422660, v41);
  v42 = *v39;
  *v39 = v182;

  v37(v205, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x8000000267422690, v47);
  v48 = *v45;
  *v45 = v183;

  v43(v205, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x80000002674226C0, v53);
  v54 = *v51;
  *v51 = v184;

  v49(v205, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000026, 0x80000002674226F0, v59);
  v60 = *v57;
  *v57 = v185;

  v55(v205, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x8000000267422720, v65);
  v66 = *v63;
  *v63 = v186;

  v61(v205, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000024, 0x8000000267422750, v71);
  v72 = *v69;
  *v69 = v187;

  v67(v205, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000024, 0x8000000267422780, v77);
  v78 = *v75;
  *v75 = v188;

  v73(v205, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000026, 0x80000002674227B0, v83);
  v84 = *v81;
  *v81 = v189;

  v79(v205, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000029, 0x80000002674227E0, v89);
  v90 = *v87;
  *v87 = v190;

  v85(v205, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000024, 0x8000000267422810, v95);
  v96 = *v93;
  *v93 = v191;

  v91(v205, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000026, 0x8000000267422840, v101);
  v102 = *v99;
  *v99 = v192;

  v97(v205, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000024, 0x8000000267422870, v107);
  v108 = *v105;
  *v105 = v193;

  v103(v205, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000022, 0x80000002674228A0, v113);
  v114 = *v111;
  *v111 = v194;

  v109(v205, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000024, 0x80000002674228D0, v119);
  v120 = *v117;
  *v117 = v195;

  v115(v205, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000026, 0x8000000267422900, v125);
  v126 = *v123;
  *v123 = v196;

  v121(v205, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000022, 0x8000000267422930, v131);
  v132 = *v129;
  *v129 = v197;

  v127(v205, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000022, 0x8000000267422960, v137);
  v138 = *v135;
  *v135 = v198;

  v133(v205, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000022, 0x8000000267422990, v143);
  v144 = *v141;
  *v141 = v199;

  v139(v205, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000026, 0x80000002674229C0, v149);
  v150 = *v147;
  *v147 = v200;

  v145(v205, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000025, 0x80000002674229F0, v155);
  v156 = *v153;
  *v153 = v201;

  v151(v205, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000026, 0x8000000267422A20, v161);
  v162 = *v159;
  *v159 = v202;

  v157(v205, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000022, 0x8000000267422A50, v167);
  v168 = *v165;
  *v165 = v203;

  v163(v205, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000023, 0x8000000267422A80, v173);
  v174 = *v171;
  *v171 = v204;

  return v169(v205, 0);
}

uint64_t sub_266EFB1C0(uint64_t a1)
{
  v2 = sub_266EFB2C4(&qword_2800EF6A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFB228(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFB2C4(&qword_2800EF6A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFB2C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRSpeechProfileCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRSpeechRecognitionHardware.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267422AF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267422B20, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x8000000267422B50, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266EFB51C(uint64_t a1)
{
  v2 = sub_266EFB620(&qword_2800EF6B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFB584(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFB620(&qword_2800EF6B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFB620(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRSpeechRecognitionHardware(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v54 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRDatapackTask(0);
  sub_266EFC3DC(&qword_2800EF3B8, type metadata accessor for ASRSchemaASRDatapackTask);
  v59 = a1;
  sub_26738120C();
  v12 = sub_26738116C();
  v56 = *(v12 - 8);
  v13 = v56 + 56;
  v14 = *(v56 + 56);
  v14(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 1802723700, 0xE400000000000000);
  v15(v68, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_266EFC3DC(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v14(v11, 0, 1, v12);
  v64 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x636F4C6C65646F6DLL, 0xEB00000000656C61);
  v16(v68, 0);
  LODWORD(v58) = *MEMORY[0x277D3E530];
  v17 = v65;
  v19 = v66 + 104;
  v18 = *(v66 + 104);
  v62 = v8;
  v63 = v18;
  v18(v8);
  v20 = v19;
  v68[0] = 1;
  sub_26738114C();
  v21 = v12;
  v14(v11, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x6B63617061746164, 0xEF6E6F6973726556);
  v22(v68, 0);
  v55 = "iri.asr.ASRStarted";
  v61 = *MEMORY[0x277D3E4E8];
  v23 = v62;
  v24 = v63;
  v25 = v17;
  v63(v62);
  v66 = v20;
  v68[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v55 | 0x8000000000000000);
  v26(v68, 0);
  v27 = v58;
  v24(v23, v58, v25);
  v68[0] = 1;
  sub_26738114C();
  v57 = v21;
  v14(v11, 0, 1, v21);
  v28 = v14;
  v60 = v14;
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x655672656D6D6168, 0xED00006E6F697372);
  v29(v68, 0);
  v55 = "isHighQualityAsset";
  v30 = v27;
  v31 = v65;
  v32 = v63;
  (v63)(v23, v30, v65);
  v68[0] = 1;
  sub_26738114C();
  v28(v11, 0, 1, v21);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v55 | 0x8000000000000000);
  v33(v68, 0);
  v55 = "geoLanguageModelRegion";
  v34 = v31;
  v32(v62, v61, v31);
  v68[0] = 1;
  sub_26738114C();
  v35 = v57;
  v36 = v60;
  v60(v11, 0, 1, v57);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v55 | 0x8000000000000000);
  v37(v68, 0);
  v55 = "geoLanguageModelLoaded";
  v38 = v62;
  v32(v62, *MEMORY[0x277D3E540], v34);
  v68[0] = 1;
  sub_26738114C();
  v36(v11, 0, 1, v35);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v55 | 0x8000000000000000);
  v39(v68, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v36(v11, 0, 1, v35);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x8000000267422C40);
  v40(v68, 0);
  (v63)(v38, v58, v65);
  v68[0] = 1;
  sub_26738114C();
  v36(v11, 0, 1, v35);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, 0x8000000267422C60);
  v41(v68, 0);
  type metadata accessor for ASRSchemaASRStartState(0);
  sub_266EFC3DC(&qword_2800EF6B8, type metadata accessor for ASRSchemaASRStartState);
  sub_26738120C();
  v59 = v13;
  v36(v11, 0, 1, v35);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0x6174537472617473, 0xEA00000000006574);
  v42(v68, 0);
  v43 = sub_2673811AC();
  v44 = sub_266ECB6CC(v67, 0x6174537472617473, 0xEA00000000006574);
  if (!(*(v56 + 48))(v45, 1, v35))
  {
    sub_266ECB128(&unk_287883F38);
    sub_26738115C();
  }

  (v44)(v67, 0);
  v43(v68, 0);
  v58 = "portraitExperimentVariantName";
  v46 = v62;
  v47 = v63;
  v48 = v65;
  (v63)(v62, v61, v65);
  v68[0] = 1;
  sub_26738114C();
  v49 = v35;
  v50 = v60;
  v60(v11, 0, 1, v49);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v58 | 0x8000000000000000);
  v51(v68, 0);
  v47(v46, v61, v48);
  v68[0] = 1;
  sub_26738114C();
  v50(v11, 0, 1, v57);
  v52 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x8000000267422CA0);
  return v52(v68, 0);
}

uint64_t sub_266EFC318(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EFC37C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EFC3DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ASRSchemaASRStartState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267422CF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267422D10, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x8000000267422D30, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000011, 0x8000000267422D50, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_287883F60);
  return sub_26738112C();
}

uint64_t sub_266EFC704(uint64_t a1)
{
  v2 = sub_266EFC808(&qword_2800EF6C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFC76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFC808(&qword_2800EF6C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFC808(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRStartState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRTaskHint.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267422DA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v104;

  v1(v121, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267422DC0, v11);
  v12 = *v9;
  *v9 = v105;

  v7(v121, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x8000000267422DE0, v17);
  v18 = *v15;
  *v15 = v106;

  v13(v121, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267422E00, v23);
  v24 = *v21;
  *v21 = v107;

  v19(v121, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267422E20, v29);
  v30 = *v27;
  *v27 = v108;

  v25(v121, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267422E40, v35);
  v36 = *v33;
  *v33 = v109;

  v31(v121, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x8000000267422E60, v41);
  v42 = *v39;
  *v39 = v110;

  v37(v121, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x8000000267422E80, v47);
  v48 = *v45;
  *v45 = v111;

  v43(v121, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000015, 0x8000000267422EA0, v53);
  v54 = *v51;
  *v51 = v112;

  v49(v121, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x8000000267422EC0, v59);
  v60 = *v57;
  *v57 = v113;

  v55(v121, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000016, 0x8000000267422EE0, v65);
  v66 = *v63;
  *v63 = v114;

  v61(v121, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000018, 0x8000000267422F00, v71);
  v72 = *v69;
  *v69 = v115;

  v67(v121, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000014, 0x8000000267422F20, v77);
  v78 = *v75;
  *v75 = v116;

  v73(v121, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000014, 0x8000000267422F40, v83);
  v84 = *v81;
  *v81 = v117;

  v79(v121, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000011, 0x8000000267422F60, v89);
  v90 = *v87;
  *v87 = v118;

  v85(v121, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000021, 0x8000000267422F80, v95);
  v96 = *v93;
  *v93 = v119;

  v91(v121, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001ELL, 0x8000000267422FB0, v101);
  v102 = *v99;
  *v99 = v120;

  return v97(v121, 0);
}

uint64_t sub_266EFD098(uint64_t a1)
{
  v2 = sub_266EFD19C(&qword_2800EF6C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFD100(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFD19C(&qword_2800EF6C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFD19C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRTaskHint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRToken.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = sub_26738113C();
  v58 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v49 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v59 = a2;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v60 = *(v4 + 104);
  v60(v7, v11, v3);
  v62[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v53 = *(v12 - 8);
  v13 = *(v53 + 56);
  v56 = (v53 + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x65646E496B6E696CLL, 0xE900000000000078);
  v14(v62, 0);
  v51 = *MEMORY[0x277D3E540];
  v15 = v51;
  v16 = v58;
  v17 = v60;
  v60(v7, v51, v58);
  v62[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D69547472617473, 0xED0000734E6E4965);
  v18(v62, 0);
  v57 = v4 + 104;
  v17(v7, v15, v16);
  v62[0] = 1;
  sub_26738114C();
  v50 = v12;
  v13(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x49656D6954646E65, 0xEB00000000734E6ELL);
  v19(v62, 0);
  v49 = "iri.asr.ASRToken";
  v52 = *MEMORY[0x277D3E4E8];
  v20 = v60;
  (v60)(v7);
  v62[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v21 = v13;
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v49 | 0x8000000000000000);
  v22(v62, 0);
  v49 = "appendSpaceAfter";
  v23 = v58;
  v20(v7, v51, v58);
  v62[0] = 1;
  sub_26738114C();
  v24 = v50;
  v21(v10, 0, 1, v50);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v49 | 0x8000000000000000);
  v25(v62, 0);
  v26 = v23;
  v27 = v60;
  v60(v7, *MEMORY[0x277D3E508], v26);
  v62[0] = 1;
  sub_26738114C();
  v21(v10, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656469666E6F63, 0xEA00000000006563);
  v28(v62, 0);
  v27(v7, *MEMORY[0x277D3E530], v58);
  v62[0] = 1;
  sub_26738114C();
  v55 = v21;
  v21(v10, 0, 1, v24);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0x74617574636E7570, 0xEF747865546E6F69);
  v29(v62, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v61, 0x74617574636E7570, 0xEF747865546E6F69);
  v32 = v24;
  if (!(*(v53 + 48))(v33, 1, v24))
  {
    sub_266ECB128(&unk_287883F88);
    sub_26738115C();
  }

  (v31)(v61, 0);
  v30(v62, 0);
  v34 = v52;
  v35 = v58;
  v60(v7, v52, v58);
  v62[0] = 1;
  sub_26738114C();
  v36 = v24;
  v37 = v55;
  v55(v10, 0, 1, v32);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267423040);
  v38(v62, 0);
  v53 = "isAutoPunctuation";
  v39 = v60;
  v60(v7, v34, v35);
  v62[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v36);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v53 | 0x8000000000000000);
  v40(v62, 0);
  v41 = *MEMORY[0x277D3E518];
  v39(v7, v41, v35);
  v62[0] = 1;
  sub_26738114C();
  v42 = v36;
  v43 = v36;
  v44 = v55;
  v55(v10, 0, 1, v42);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0x736F436870617267, 0xE900000000000074);
  v45(v62, 0);
  v60(v7, v41, v35);
  v62[0] = 1;
  sub_26738114C();
  v44(v10, 0, 1, v43);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0x63697473756F6361, 0xEC00000074736F43);
  v46(v62, 0);
  sub_266ECB294(0, &qword_2800EF430, 0x277D568C8);
  sub_266ECAF2C(&qword_2800EF428, &qword_2800EF430, 0x277D568C8);
  sub_26738120C();
  v44(v10, 0, 1, v43);
  v47 = sub_2673811AC();
  sub_266EC637C(v10, 0x654D797469746E65, 0xEE00617461646174);
  return v47(v62, 0);
}

uint64_t sub_266EFDDE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EFDE44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRTokenTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v27 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v3 + 104);
  v31 = *MEMORY[0x277D3E530];
  v33 = v3 + 104;
  v30 = v10;
  v10(v6);
  v35[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v29 = *(v12 + 56);
  v29(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 1954047348, 0xE400000000000000);
  v13(v35, 0);
  v32 = a1;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v34, 1954047348, 0xE400000000000000);
  v27[0] = *(v12 + 48);
  v27[1] = v12 + 48;
  if (!(v27[0])(v16, 1, v11))
  {
    sub_266ECB128(&unk_287883FB0);
    sub_26738115C();
  }

  (v15)(v34, 0);
  v14(v35, 0);
  v28 = v2;
  v30(v6, v31, v2);
  v35[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x716553656E6F6870, 0xED000065636E6575);
  v17(v35, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v34, 0x716553656E6F6870, 0xED000065636E6575);
  v20 = v27[0];
  if (!(v27[0])(v21, 1, v11))
  {
    sub_266ECB128(&unk_287883FD8);
    sub_26738115C();
  }

  (v19)(v34, 0);
  v18(v35, 0);
  v30(v6, v31, v28);
  v35[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674230B0);
  v22(v35, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v34, 0xD000000000000010, 0x80000002674230B0);
  if (!v20(v25, 1, v11))
  {
    sub_266ECB128(&unk_287884000);
    sub_26738115C();
  }

  (v24)(v34, 0);
  return v23(v35, 0);
}

uint64_t sub_266EFE4B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EFE514(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EFE578()
{
  result = qword_2800EF658;
  if (!qword_2800EF658)
  {
    sub_266EFE5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF658);
  }

  return result;
}

unint64_t sub_266EFE5D0()
{
  result = qword_2800EF650;
  if (!qword_2800EF650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF650);
  }

  return result;
}

uint64_t static ASRSchemaASRUtterance.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v11[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267423100);
  return v9(v11, 0);
}

uint64_t sub_266EFE86C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EFE8D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EFE934()
{
  result = qword_2800EF648;
  if (!qword_2800EF648)
  {
    sub_266EFE98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF648);
  }

  return result;
}

unint64_t sub_266EFE98C()
{
  result = qword_2800EF640;
  if (!qword_2800EF640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF640);
  }

  return result;
}

uint64_t static ASRSchemaASRVisualContextCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267423160, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267423190, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x80000002674231B0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266EFEBF0(uint64_t a1)
{
  v2 = sub_266EFECF4(&qword_2800EF6D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EFEC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EFECF4(&qword_2800EF6D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EFECF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRVisualContextCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CAARSchemaCAARActionFeatureSet.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v121 = *(v4 - 8);
  v122 = v4;
  v5 = *(v121 + 64);
  MEMORY[0x28223BE20]();
  v7 = v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v111 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v111[1] = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v115 = *(v11 - 8);
  v12 = v115 + 56;
  v117 = *(v115 + 7);
  v117(v10, 0, 1, v11);
  v119 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267423200);
  v13(v124, 0);
  v114 = "actionCandidateId";
  v14 = *MEMORY[0x277D3E4E8];
  v15 = v122;
  v16 = *(v121 + 104);
  v121 += 104;
  v112 = v7;
  v116 = v14;
  v16(v7, v14, v122);
  v17 = v16;
  v124[0] = 1;
  sub_26738114C();
  v18 = v11;
  v19 = v11;
  v113 = v11;
  v20 = v117;
  v117(v10, 0, 1, v18);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v114 | 0x8000000000000000);
  v21(v124, 0);
  v114 = "isHighConfidence";
  v22 = v112;
  v17(v112, v14, v15);
  v118 = v17;
  v124[0] = 1;
  sub_26738114C();
  v120 = v12;
  v20(v10, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v114 | 0x8000000000000000);
  v23(v124, 0);
  v114 = "isAppInForeground";
  v24 = v22;
  v25 = v22;
  v26 = v116;
  v27 = v122;
  v17(v25, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v28 = v113;
  v29 = v117;
  v117(v10, 0, 1, v113);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v114 | 0x8000000000000000);
  v30(v124, 0);
  v114 = "appNameMentioned";
  v31 = v118;
  v118(v24, v26, v27);
  v124[0] = 1;
  sub_26738114C();
  v29(v10, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v114 | 0x8000000000000000);
  v32(v124, 0);
  v31(v24, v26, v122);
  v124[0] = 1;
  sub_26738114C();
  v33 = v117;
  v117(v10, 0, 1, v28);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674232A0);
  v34(v124, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v123, 0xD000000000000013, 0x80000002674232A0);
  v114 = *(v115 + 6);
  v115 += 48;
  if (!(v114)(v37, 1, v28))
  {
    sub_266ECB128(&unk_287884028);
    sub_26738115C();
  }

  (v36)(v123, 0);
  v35(v124, 0);
  v38 = v112;
  v118(v112, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v28);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674232C0);
  v39(v124, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v123, 0xD000000000000013, 0x80000002674232C0);
  if (!(v114)(v42, 1, v28))
  {
    sub_266ECB128(&unk_287884050);
    sub_26738115C();
  }

  (v41)(v123, 0);
  v40(v124, 0);
  v118(v38, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v28);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x80000002674232E0);
  v43(v124, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v123, 0xD000000000000014, 0x80000002674232E0);
  if (!(v114)(v46, 1, v28))
  {
    sub_266ECB128(&unk_287884078);
    sub_26738115C();
  }

  (v45)(v123, 0);
  v44(v124, 0);
  v118(v38, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v28);
  v47 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267423300);
  v47(v124, 0);
  v48 = sub_2673811AC();
  v49 = sub_266ECB6CC(v123, 0xD000000000000013, 0x8000000267423300);
  if (!(v114)(v50, 1, v28))
  {
    sub_266ECB128(&unk_2878840A0);
    sub_26738115C();
  }

  (v49)(v123, 0);
  v48(v124, 0);
  v118(v38, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v28);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267423320);
  v51(v124, 0);
  v52 = sub_2673811AC();
  v53 = sub_266ECB6CC(v123, 0xD000000000000010, 0x8000000267423320);
  if (!(v114)(v54, 1, v28))
  {
    sub_266ECB128(&unk_2878840C8);
    sub_26738115C();
  }

  (v53)(v123, 0);
  v52(v124, 0);
  v118(v38, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v28);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0x63416B6E694C7369, 0xEC0000006E6F6974);
  v55(v124, 0);
  v56 = sub_2673811AC();
  v57 = sub_266ECB6CC(v123, 0x63416B6E694C7369, 0xEC0000006E6F6974);
  if (!(v114)(v58, 1, v28))
  {
    sub_266ECB128(&unk_2878840F0);
    sub_26738115C();
  }

  (v57)(v123, 0);
  v56(v124, 0);
  v59 = v116;
  v60 = v118;
  v118(v38, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v61 = v28;
  v62 = v28;
  v63 = v117;
  v117(v10, 0, 1, v61);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0x68736F7475417369, 0xEE0074756374726FLL);
  v64(v124, 0);
  v111[0] = "isVocabNameMatch";
  v60(v38, v59, v122);
  v124[0] = 1;
  sub_26738114C();
  v63(v10, 0, 1, v62);
  v65 = v63;
  v66 = sub_2673811AC();
  v67 = v111[0];
  sub_266EC637C(v10, 0xD000000000000019, v111[0] | 0x8000000000000000);
  v66(v124, 0);
  v68 = sub_2673811AC();
  v69 = sub_266ECB6CC(v123, 0xD000000000000019, v67 | 0x8000000000000000);
  if (!(v114)(v70, 1, v62))
  {
    sub_266ECB128(&unk_287884118);
    sub_26738115C();
  }

  (v69)(v123, 0);
  v68(v124, 0);
  v71 = *MEMORY[0x277D3E538];
  v72 = v112;
  v118(v112, v71, v122);
  v124[0] = 1;
  sub_26738114C();
  v73 = v113;
  v65(v10, 0, 1, v113);
  v74 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267423360);
  v74(v124, 0);
  v75 = sub_2673811AC();
  v76 = sub_266ECB6CC(v123, 0xD000000000000016, 0x8000000267423360);
  if (!(v114)(v77, 1, v73))
  {
    sub_266ECB128(&unk_287884140);
    sub_26738115C();
  }

  (v76)(v123, 0);
  v75(v124, 0);
  v118(v72, v71, v122);
  v124[0] = 1;
  sub_26738114C();
  v78 = v113;
  v117(v10, 0, 1, v113);
  v79 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267423380);
  v79(v124, 0);
  v80 = sub_2673811AC();
  v81 = sub_266ECB6CC(v123, 0xD000000000000012, 0x8000000267423380);
  if (!(v114)(v82, 1, v78))
  {
    sub_266ECB128(&unk_287884168);
    sub_26738115C();
  }

  (v81)(v123, 0);
  v80(v124, 0);
  v83 = v118;
  v118(v72, *MEMORY[0x277D3E500], v122);
  v124[0] = 1;
  sub_26738114C();
  v84 = v117;
  v117(v10, 0, 1, v113);
  v85 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x80000002674233A0);
  v85(v124, 0);
  v115 = "nlParseProbability";
  v86 = v116;
  v87 = v122;
  v83(v72, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v84(v10, 0, 1, v113);
  v88 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v115 | 0x8000000000000000);
  v88(v124, 0);
  v83(v72, v86, v87);
  v124[0] = 1;
  sub_26738114C();
  v89 = v113;
  v90 = v117;
  v117(v10, 0, 1, v113);
  v91 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x80000002674233E0);
  v91(v124, 0);
  sub_266ECB294(0, &qword_2800EF6D8, 0x277D56B30);
  sub_266ECAF2C(&qword_2800EF6E0, &qword_2800EF6D8, 0x277D56B30);
  sub_26738120C();
  v90(v10, 0, 1, v89);
  v92 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267423400);
  v92(v124, 0);
  sub_266ECB294(0, &qword_2800EF6E8, 0x277D56B38);
  sub_266ECAF2C(&qword_2800EF6F0, &qword_2800EF6E8, 0x277D56B38);
  sub_26738120C();
  v90(v10, 0, 1, v89);
  v93 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x8000000267423420);
  v93(v124, 0);
  v115 = "appLevelDisambiguationHistory";
  sub_266ECB294(0, &qword_2800EF6F8, 0x277D56B08);
  sub_266ECAF2C(&qword_2800EF700, &qword_2800EF6F8, 0x277D56B08);
  sub_26738120C();
  v94 = v117;
  v117(v10, 0, 1, v89);
  v95 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v115 | 0x8000000000000000);
  v95(v124, 0);
  sub_266ECB294(0, &qword_2800EF708, 0x277D56B98);
  sub_266ECAF2C(&qword_2800EF710, &qword_2800EF708, 0x277D56B98);
  sub_26738120C();
  v94(v10, 0, 1, v89);
  v96 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267423470);
  v96(v124, 0);
  v115 = "proactiveFeatures";
  v97 = v112;
  v98 = v116;
  v99 = v122;
  v100 = v118;
  v118(v112, v116, v122);
  v124[0] = 1;
  sub_26738114C();
  v101 = v117;
  v117(v10, 0, 1, v89);
  v102 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v115 | 0x8000000000000000);
  v102(v124, 0);
  v115 = "isAutoShortcutEnabled";
  v100(v97, v98, v99);
  v124[0] = 1;
  sub_26738114C();
  v103 = v113;
  v101(v10, 0, 1, v113);
  v104 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, v115 | 0x8000000000000000);
  v104(v124, 0);
  v115 = "RunPreviouslyShown";
  v105 = v122;
  v100(v97, *MEMORY[0x277D3E530], v122);
  v124[0] = 1;
  sub_26738114C();
  v106 = v117;
  v117(v10, 0, 1, v103);
  v107 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v115 | 0x8000000000000000);
  v107(v124, 0);
  v118(v97, v116, v105);
  v124[0] = 1;
  sub_26738114C();
  v106(v10, 0, 1, v103);
  v108 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x8000000267423500);
  v108(v124, 0);
  type metadata accessor for CAARSchemaCAARDomainProtectionLevel(0);
  sub_266F00A54();
  sub_26738120C();
  v106(v10, 0, 1, v103);
  v109 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267423530);
  return v109(v124, 0);
}

uint64_t sub_266F00990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F009F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F00A54()
{
  result = qword_2800EF718;
  if (!qword_2800EF718)
  {
    type metadata accessor for CAARSchemaCAARDomainProtectionLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF718);
  }

  return result;
}

uint64_t static CAARSchemaCAARActionLevelDisambiguationHistory.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v84 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v93 = a1;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v91 = *(v3 + 104);
  v92 = v2;
  v94 = v3 + 104;
  v91(v6, v10, v2);
  v96[0] = 1;
  sub_26738114C();
  v90 = sub_26738116C();
  v86 = *(v90 - 8);
  v12 = (v86 + 56);
  v11 = *(v86 + 56);
  v11(v9, 0, 1, v90);
  v87 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000026, 0x8000000267423590);
  v13(v96, 0);
  v85 = "guationsLastTwoMinutes";
  v89 = v10;
  v14 = v91;
  v91(v6, v10, v2);
  v96[0] = 1;
  sub_26738114C();
  v15 = v90;
  v11(v9, 0, 1, v90);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000025, v85 | 0x8000000000000000);
  v16(v96, 0);
  v85 = "guationsLasTenMinutes";
  v17 = v10;
  v18 = v92;
  v14(v6, v17, v92);
  v96[0] = 1;
  sub_26738114C();
  v88 = v11;
  v11(v9, 0, 1, v15);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v85 | 0x8000000000000000);
  v19(v96, 0);
  v84 = "guationsLastOneHour";
  v20 = v89;
  v21 = v91;
  v91(v6, v89, v18);
  v96[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v90);
  v22 = sub_2673811AC();
  v85 = 0xD000000000000024;
  sub_266EC637C(v9, 0xD000000000000024, v84 | 0x8000000000000000);
  v22(v96, 0);
  v84 = "guationsLastSixHours";
  v23 = v20;
  v24 = v92;
  v21(v6, v23, v92);
  v96[0] = 1;
  sub_26738114C();
  v25 = v90;
  v26 = v88;
  v88(v9, 0, 1, v90);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v84 | 0x8000000000000000);
  v27(v96, 0);
  v84 = "guationsLastOneDay";
  v28 = v89;
  v91(v6, v89, v24);
  v96[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000025, v84 | 0x8000000000000000);
  v29(v96, 0);
  v84 = "guationsLastSevenDays";
  v30 = v28;
  v31 = v91;
  v91(v6, v30, v24);
  v96[0] = 1;
  sub_26738114C();
  v32 = v88;
  v88(v9, 0, 1, v25);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002BLL, v84 | 0x8000000000000000);
  v33(v96, 0);
  v84 = "guationsLastTwentyEightDays";
  v34 = v89;
  v31(v6, v89, v92);
  v96[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v25);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, v85, v84 | 0x8000000000000000);
  v35(v96, 0);
  v85 = "guationsLastInfinity";
  v36 = v34;
  v38 = v91;
  v37 = v92;
  v91(v6, v36, v92);
  v96[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v25);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002ELL, v85 | 0x8000000000000000);
  v39(v96, 0);
  v85 = "nDisambiguationsLastTwoMinutes";
  v40 = v89;
  v38(v6, v89, v37);
  v96[0] = 1;
  sub_26738114C();
  v41 = v88;
  v88(v9, 0, 1, v25);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002ELL, v85 | 0x8000000000000000);
  v42(v96, 0);
  v85 = "nDisambiguationsLastTenMinutes";
  v43 = v92;
  v91(v6, v40, v92);
  v96[0] = 1;
  sub_26738114C();
  v44 = v90;
  v41(v9, 0, 1, v90);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002BLL, v85 | 0x8000000000000000);
  v45(v96, 0);
  v85 = "nDisambiguationsLastOneHour";
  v46 = v40;
  v47 = v91;
  v91(v6, v46, v43);
  v96[0] = 1;
  sub_26738114C();
  v48 = v44;
  v49 = v88;
  v88(v9, 0, 1, v48);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, v85 | 0x8000000000000000);
  v50(v96, 0);
  v85 = "nDisambiguationsLastSixHours";
  v51 = v89;
  v47(v6, v89, v43);
  v96[0] = 1;
  sub_26738114C();
  v52 = v90;
  v49(v9, 0, 1, v90);
  v53 = v49;
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002ALL, v85 | 0x8000000000000000);
  v54(v96, 0);
  v85 = "nDisambiguationsLastOneDay";
  v55 = v51;
  v56 = v92;
  v47(v6, v55, v92);
  v96[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v52);
  v57 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002DLL, v85 | 0x8000000000000000);
  v57(v96, 0);
  v85 = "nDisambiguationsLastSevenDays";
  v58 = v89;
  v47(v6, v89, v56);
  v96[0] = 1;
  sub_26738114C();
  v59 = v90;
  v53(v9, 0, 1, v90);
  v60 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000033, v85 | 0x8000000000000000);
  v60(v96, 0);
  v85 = "LastTwentyEightDays";
  v47(v6, v58, v92);
  v96[0] = 1;
  sub_26738114C();
  v61 = v59;
  v62 = v88;
  v88(v9, 0, 1, v61);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, v85 | 0x8000000000000000);
  v63(v96, 0);
  LODWORD(v84) = *MEMORY[0x277D3E4E8];
  (v47)(v6);
  v96[0] = 1;
  v85 = v6;
  sub_26738114C();
  v64 = v90;
  v62(v9, 0, 1, v90);
  v65 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000029, 0x80000002674238A0);
  v65(v96, 0);
  v66 = sub_2673811AC();
  v67 = sub_266ECB6CC(v95, 0xD000000000000029, 0x80000002674238A0);
  v68 = *(v86 + 48);
  v86 += 48;
  v69 = v68;
  if (!v68(v70, 1, v64))
  {
    sub_266ECB128(&unk_287884190);
    sub_26738115C();
  }

  (v67)(v95, 0);
  v66(v96, 0);
  v91(v85, v89, v92);
  v96[0] = 1;
  sub_26738114C();
  v71 = v90;
  v88(v9, 0, 1, v90);
  v72 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000031, 0x80000002674238D0);
  v72(v96, 0);
  v73 = sub_2673811AC();
  v74 = sub_266ECB6CC(v95, 0xD000000000000031, 0x80000002674238D0);
  if (!v69(v75, 1, v71))
  {
    sub_266ECB128(&unk_2878841B8);
    sub_26738115C();
  }

  (v74)(v95, 0);
  v73(v96, 0);
  v86 = "tionForThisAction";
  v76 = v85;
  v78 = v91;
  v77 = v92;
  v91(v85, v84, v92);
  v96[0] = 1;
  sub_26738114C();
  v79 = v90;
  v80 = v88;
  v88(v9, 0, 1, v90);
  v81 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000025, v86 | 0x8000000000000000);
  v81(v96, 0);
  v78(v76, v89, v77);
  v96[0] = 1;
  sub_26738114C();
  v80(v9, 0, 1, v79);
  v82 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, 0x8000000267423940);
  return v82(v96, 0);
}

uint64_t sub_266F01DE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F01E44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F01EA8()
{
  result = qword_2800EF700;
  if (!qword_2800EF700)
  {
    sub_266F01F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF700);
  }

  return result;
}

unint64_t sub_266F01F00()
{
  result = qword_2800EF6F8;
  if (!qword_2800EF6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF6F8);
  }

  return result;
}

uint64_t static CAARSchemaCAARActionModelOutput.makeTypeManifestAndEnsureFields(in:)()
{
  v13 = sub_26738113C();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267423200);
  v9(v14, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E500], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F63536C65646F6DLL, 0xEA00000000006572);
  return v10(v14, 0);
}

uint64_t sub_266F02288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F022EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARAppHistoryFeatures.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v54 = sub_26738113C();
  v2 = *(v54 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v46 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v55 = *MEMORY[0x277D3E538];
  v9 = *(v2 + 104);
  v9(v5);
  v10 = v2 + 104;
  v52 = v9;
  v56[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v50 = *(v12 + 56);
  v53 = v12 + 56;
  v50(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x80000002674239D0);
  v13(v56, 0);
  v46 = v5;
  v47 = "numMinutesSinceAppInstalled";
  v14 = v5;
  v15 = v55;
  v16 = v54;
  (v9)(v14, v55, v54);
  v56[0] = 1;
  sub_26738114C();
  v17 = v50;
  v50(v8, 0, 1, v11);
  v48 = a1;
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v47 | 0x8000000000000000);
  v18(v56, 0);
  v47 = "numMinutesSinceAppLastLaunched";
  v19 = v46;
  v20 = v15;
  v21 = v52;
  (v52)(v46, v20, v16);
  v56[0] = 1;
  sub_26738114C();
  v49 = v11;
  v17(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v47 | 0x8000000000000000);
  v22(v56, 0);
  v47 = "numAppLaunchesLastTwoMinutes";
  v23 = v55;
  v24 = v54;
  (v21)(v19, v55, v54);
  v51 = v10;
  v56[0] = 1;
  sub_26738114C();
  v25 = v50;
  v50(v8, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v47 | 0x8000000000000000);
  v26(v56, 0);
  v47 = "numAppLaunchesLastTenMinutes";
  v27 = v23;
  v28 = v52;
  (v52)(v19, v27, v24);
  v56[0] = 1;
  sub_26738114C();
  v29 = v49;
  v25(v8, 0, 1, v49);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v47 | 0x8000000000000000);
  v30(v56, 0);
  v47 = "numAppLaunchesLastOneHour";
  v31 = v55;
  (v28)(v19, v55, v24);
  v56[0] = 1;
  sub_26738114C();
  v32 = v50;
  v50(v8, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v47 | 0x8000000000000000);
  v33(v56, 0);
  v47 = "numAppLaunchesLastSixHours";
  v34 = v52;
  (v52)(v19, v31, v24);
  v56[0] = 1;
  sub_26738114C();
  v35 = v49;
  v36 = v32;
  v32(v8, 0, 1, v49);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v47 | 0x8000000000000000);
  v37(v56, 0);
  v47 = "numAppLaunchesLastOneDay";
  v38 = v55;
  v39 = v54;
  (v34)(v19, v55, v54);
  v56[0] = 1;
  sub_26738114C();
  v36(v8, 0, 1, v35);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v47 | 0x8000000000000000);
  v40(v56, 0);
  v41 = v39;
  v42 = v52;
  (v52)(v19, v38, v41);
  v56[0] = 1;
  sub_26738114C();
  v36(v8, 0, 1, v35);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267423AD0);
  v43(v56, 0);
  (v42)(v19, v55, v54);
  v56[0] = 1;
  sub_26738114C();
  v36(v8, 0, 1, v49);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267423B00);
  return v44(v56, 0);
}

uint64_t sub_266F02D48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F02DAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F02E10()
{
  result = qword_2800EF6E0;
  if (!qword_2800EF6E0)
  {
    sub_266F02E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF6E0);
  }

  return result;
}

unint64_t sub_266F02E68()
{
  result = qword_2800EF6D8;
  if (!qword_2800EF6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF6D8);
  }

  return result;
}

uint64_t static CAARSchemaCAARAppLevelDisambiguationHistory.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v66 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v74 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v72 = v2;
  v10(v6);
  v70 = v10;
  v76[0] = 1;
  sub_26738114C();
  v71 = sub_26738116C();
  v11 = *(v71 - 8);
  v68 = *(v11 + 56);
  v73 = v11 + 56;
  v68(v9, 0, 1, v71);
  v69 = a1;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x8000000267423B60);
  v12(v76, 0);
  v67 = "tionsLastTwoMinutes";
  v13 = v74;
  v75 = v3 + 104;
  (v10)(v6, v74, v2);
  v76[0] = 1;
  sub_26738114C();
  v14 = v71;
  v15 = v68;
  v68(v9, 0, 1, v71);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, v67 | 0x8000000000000000);
  v16(v76, 0);
  v67 = "tionsLastTenMinutes";
  v17 = v6;
  v18 = v6;
  v19 = v13;
  v20 = v72;
  v70(v18, v13, v72);
  v76[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v67 | 0x8000000000000000);
  v21(v76, 0);
  v66 = v17;
  v67 = "tionsLastOneHour";
  v70(v17, v13, v20);
  v76[0] = 1;
  sub_26738114C();
  v22 = v68;
  v68(v9, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v67 | 0x8000000000000000);
  v23(v76, 0);
  v67 = "tionsLastSixHours";
  v24 = v66;
  v25 = v70;
  v70(v66, v19, v20);
  v76[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v14);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v67 | 0x8000000000000000);
  v26(v76, 0);
  v67 = "numAppDisambiguationsLastOneDay";
  v27 = v74;
  v28 = v25;
  v25(v24, v74, v72);
  v76[0] = 1;
  sub_26738114C();
  v29 = v71;
  v22(v9, 0, 1, v71);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v67 | 0x8000000000000000);
  v30(v76, 0);
  v67 = "tionsLastSevenDays";
  v31 = v72;
  v28(v24, v27, v72);
  v76[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000028, v67 | 0x8000000000000000);
  v32(v76, 0);
  v67 = "tionsLastTwentyEightDays";
  v28(v24, v74, v31);
  v76[0] = 1;
  sub_26738114C();
  v33 = v68;
  v68(v9, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v67 | 0x8000000000000000);
  v34(v76, 0);
  v67 = "tionsLastInfinity";
  v35 = v74;
  v28(v24, v74, v31);
  v76[0] = 1;
  sub_26738114C();
  v36 = v71;
  v37 = v33;
  v33(v9, 0, 1, v71);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000027, v67 | 0x8000000000000000);
  v38(v76, 0);
  v67 = "sambiguationsTwoMinutes";
  v39 = v35;
  v40 = v72;
  v41 = v70;
  v70(v24, v39, v72);
  v76[0] = 1;
  sub_26738114C();
  v37(v9, 0, 1, v36);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002BLL, v67 | 0x8000000000000000);
  v42(v76, 0);
  v67 = "sambiguationsLastTenMinutes";
  v43 = v74;
  v41(v24, v74, v40);
  v76[0] = 1;
  sub_26738114C();
  v37(v9, 0, 1, v71);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000028, v67 | 0x8000000000000000);
  v44(v76, 0);
  v67 = "sambiguationsLastOneHour";
  v45 = v40;
  v46 = v70;
  v70(v24, v43, v40);
  v76[0] = 1;
  sub_26738114C();
  v47 = v71;
  v48 = v68;
  v68(v9, 0, 1, v71);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000029, v67 | 0x8000000000000000);
  v49(v76, 0);
  v67 = "sambiguationsLastSixHours";
  v50 = v74;
  v46(v24, v74, v45);
  v76[0] = 1;
  sub_26738114C();
  v48(v9, 0, 1, v47);
  v51 = v48;
  v52 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000027, v67 | 0x8000000000000000);
  v52(v76, 0);
  v67 = "sambiguationsLastOneDay";
  v53 = v50;
  v54 = v72;
  v55 = v70;
  v70(v24, v53, v72);
  v76[0] = 1;
  sub_26738114C();
  v51(v9, 0, 1, v71);
  v56 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002ALL, v67 | 0x8000000000000000);
  v56(v76, 0);
  v67 = "sambiguationsLastSevenDays";
  v57 = v74;
  v55(v24, v74, v54);
  v76[0] = 1;
  sub_26738114C();
  v58 = v71;
  v59 = v68;
  v68(v9, 0, 1, v71);
  v60 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000030, v67 | 0x8000000000000000);
  v60(v76, 0);
  v67 = "tTwentyEightDays";
  v61 = v72;
  v55(v24, v57, v72);
  v76[0] = 1;
  sub_26738114C();
  v59(v9, 0, 1, v58);
  v62 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000029, v67 | 0x8000000000000000);
  v62(v76, 0);
  v67 = "sambiguationsLastInfinity";
  v55(v24, *MEMORY[0x277D3E4E8], v61);
  v76[0] = 1;
  sub_26738114C();
  v59(v9, 0, 1, v58);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v67 | 0x8000000000000000);
  v63(v76, 0);
  v55(v24, v74, v72);
  v76[0] = 1;
  sub_26738114C();
  v59(v9, 0, 1, v58);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000026, 0x8000000267423E90);
  return v64(v76, 0);
}

uint64_t sub_266F03EF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F03F58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F03FBC()
{
  result = qword_2800EF6F0;
  if (!qword_2800EF6F0)
  {
    sub_266F04014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF6F0);
  }

  return result;
}

unint64_t sub_266F04014()
{
  result = qword_2800EF6E8;
  if (!qword_2800EF6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF6E8);
  }

  return result;
}

uint64_t static CAARSchemaCAARClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v22 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF740, 0x277D56B60);
  sub_266ECAF2C(&qword_2800EF748, &qword_2800EF740, 0x277D56B60);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800EF750, 0x277D56BA8);
  sub_266ECAF2C(&qword_2800EF758, &qword_2800EF750, 0x277D56BA8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x8000000267423EF0);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800EF760, 0x277D56B70);
  sub_266ECAF2C(&qword_2800EF768, &qword_2800EF760, 0x277D56B70);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267423F10);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800EF770, 0x277D56B78);
  sub_266ECAF2C(&qword_2800EF778, &qword_2800EF770, 0x277D56B78);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6578456C65646F6DLL, 0xED00006465747563);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800EF780, 0x277D56C00);
  sub_266ECAF2C(&qword_2800EF788, &qword_2800EF780, 0x277D56C00);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267423F30);
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
  sub_266ECB128(&unk_2878841E0);
  return sub_2673811CC();
}

uint64_t sub_266F0471C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F047B4()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F04880(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F048E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F04944(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EF790, &qword_2800EF798, 0x277D56B50);
  a1[2] = sub_266ECAF2C(&qword_2800EF7A0, &qword_2800EF798, 0x277D56B50);
  result = sub_266ECAF2C(&qword_2800EF7A8, &qword_2800EF798, 0x277D56B50);
  a1[3] = result;
  return result;
}

uint64_t static CAARSchemaCAARClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_26738113C();
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20]();
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v9 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v39 = a1;
  v36 = v9;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v35 = *(v11 + 56);
  v35(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x644972616163, 0xE600000000000000);
  v12(v41, 0);
  v37 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v40, 0x644972616163, 0xE600000000000000);
  v15 = *(v11 + 48);
  v38 = v11 + 48;
  v34 = v15;
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_287884218);
    sub_26738115C();
  }

  (v14)(v40, 0);
  v13(v41, 0);
  (*(v31 + 104))(v32, *MEMORY[0x277D3E530], v33);
  v41[0] = 1;
  sub_26738114C();
  v17 = v35;
  v35(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674206D0);
  v18(v41, 0);
  sub_26738120C();
  v17(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x4974736575716572, 0xE900000000000064);
  v19(v41, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v40, 0x4974736575716572, 0xE900000000000064);
  if (!v34(v22, 1, v10))
  {
    sub_266ECB128(&unk_287884248);
    sub_26738115C();
  }

  (v21)(v40, 0);
  v20(v41, 0);
  sub_26738120C();
  v23 = v35;
  v35(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449707274, 0xE500000000000000);
  v24(v41, 0);
  sub_26738120C();
  v23(v8, 0, 1, v10);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x6575716552627573, 0xEC00000064497473);
  v25(v41, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v40, 0x6575716552627573, 0xEC00000064497473);
  if (!v34(v28, 1, v10))
  {
    sub_266ECB128(&unk_287884278);
    sub_26738115C();
  }

  (v27)(v40, 0);
  return v26(v41, 0);
}

uint64_t sub_266F05108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0516C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARDomainProtectionLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267423FD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267424000, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267424030, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x8000000267424060, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F05494(uint64_t a1)
{
  v2 = sub_266F05598(&qword_2800EF7B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F054FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F05598(&qword_2800EF7B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F05598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAARSchemaCAARDomainProtectionLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CAARSchemaCAARFeaturesGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6[-v1];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF728, 0x277D56B00);
  sub_266ECAF2C(&qword_2800EF720, &qword_2800EF728, 0x277D56B00);
  sub_26738122C();
  v3 = sub_26738116C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_2673811AC();
  sub_266EC637C(v2, 0xD000000000000011, 0x80000002674240C0);
  return v4(v6, 0);
}

uint64_t sub_266F057D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F05838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARModelExecuted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v16 = a1;
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x7465737361, 0xE500000000000000);
  v11(v18, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v17);
  v18[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x776F646168537369, 0xEB00000000676F4CLL);
  v12(v18, 0);
  sub_266ECB294(0, &qword_2800EF7D0, 0x277D56B88);
  sub_266ECAF2C(&qword_2800EF7D8, &qword_2800EF7D0, 0x277D56B88);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x74754F6C65646F6DLL, 0xEB00000000747570);
  v13(v18, 0);
  sub_266ECB294(0, &qword_2800EF7E0, 0x277D56C10);
  sub_266ECAF2C(&qword_2800EF7E8, &qword_2800EF7E0, 0x277D56C10);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x726E456C61697274, 0xEF746E656D6C6C6FLL);
  return v14(v18, 0);
}

uint64_t sub_266F05DC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F05E24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARModelOutput.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF738, 0x277D56B20);
  sub_266ECAF2C(&qword_2800EF730, &qword_2800EF738, 0x277D56B20);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267424140);
  return v5(v7, 0);
}

uint64_t sub_266F060C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F06124(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARProactiveFeatures.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v46 = a1;
  sub_26738119C();
  LODWORD(v45) = *MEMORY[0x277D3E4E8];
  v11 = *(v3 + 104);
  v11(v6);
  v39 = v11;
  v47[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v44 = *(v13 + 56);
  v42 = v13 + 56;
  v44(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267424190);
  v14(v47, 0);
  v38 = "isAppInTopOneRelevance";
  v15 = v45;
  v43 = v2;
  (v11)(v6, v45, v2);
  v47[0] = 1;
  sub_26738114C();
  v16 = v44;
  v44(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v38 | 0x8000000000000000);
  v17(v47, 0);
  v38 = "isAppInTopFiveRelevance";
  v18 = v2;
  v19 = v39;
  (v39)(v6, v15, v18);
  v41 = v3 + 104;
  v47[0] = 1;
  sub_26738114C();
  v16(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v38 | 0x8000000000000000);
  v20(v47, 0);
  v38 = "isAppInTopTenRelevance";
  v21 = v45;
  v19(v6, v45, v43);
  v22 = v19;
  v47[0] = 1;
  sub_26738114C();
  v40 = v12;
  v23 = v44;
  v44(v10, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v38 | 0x8000000000000000);
  v24(v47, 0);
  v38 = "isIntentInTopOneRelevance";
  v25 = v43;
  v22(v6, v21, v43);
  v47[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v12);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v38 | 0x8000000000000000);
  v26(v47, 0);
  v38 = "isIntentInTopFiveRelevance";
  v27 = v25;
  v28 = v22;
  v22(v6, v45, v27);
  v47[0] = 1;
  sub_26738114C();
  v29 = v40;
  v30 = v44;
  v44(v10, 0, 1, v40);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v38 | 0x8000000000000000);
  v31(v47, 0);
  v45 = "isIntentInTopTenRelevance";
  v32 = *MEMORY[0x277D3E518];
  v33 = v43;
  v28(v6, v32, v43);
  v47[0] = 1;
  sub_26738114C();
  v30(v10, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v45 | 0x8000000000000000);
  v34(v47, 0);
  v28(v6, v32, v33);
  v47[0] = 1;
  sub_26738114C();
  v30(v10, 0, 1, v40);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267424270);
  return v35(v47, 0);
}

uint64_t sub_266F069E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F06A44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F06AA8()
{
  result = qword_2800EF710;
  if (!qword_2800EF710)
  {
    sub_266F06B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF710);
  }

  return result;
}

unint64_t sub_266F06B00()
{
  result = qword_2800EF708;
  if (!qword_2800EF708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF708);
  }

  return result;
}

uint64_t static CAARSchemaCAARRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EF7F0, 0x277D56BC0);
  sub_266ECAF2C(&qword_2800EF7F8, &qword_2800EF7F0, 0x277D56BC0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800EF800, 0x277D56BD8);
  sub_266ECAF2C(&qword_2800EF808, &qword_2800EF800, 0x277D56BD8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EF810, 0x277D56BB0);
  sub_266ECAF2C(&qword_2800EF818, &qword_2800EF810, 0x277D56BB0);
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

uint64_t sub_266F07064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F070C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F073BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F07420(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F07484()
{
  result = qword_2800EF818;
  if (!qword_2800EF818)
  {
    sub_266F074DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF818);
  }

  return result;
}

unint64_t sub_266F074DC()
{
  result = qword_2800EF810;
  if (!qword_2800EF810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF810);
  }

  return result;
}

uint64_t static CAARSchemaCAARRequestReceived.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F07770(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F077D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F07838()
{
  result = qword_2800EF7F8;
  if (!qword_2800EF7F8)
  {
    sub_266F07890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF7F8);
  }

  return result;
}

unint64_t sub_266F07890()
{
  result = qword_2800EF7F0;
  if (!qword_2800EF7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF7F0);
  }

  return result;
}

uint64_t static CAARSchemaCAARResponseGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267424350);
  return v5(v7, 0);
}

uint64_t sub_266F07AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F07B38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARScoreBoost.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267423200);
  v11(v20, 0);
  v12 = *MEMORY[0x277D3E518];
  v13 = v18;
  v14 = *(v19 + 104);
  v19 += 104;
  v14(v4, v12, v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x74736F6F62, 0xE500000000000000);
  v15(v20, 0);
  v14(v4, *MEMORY[0x277D3E530], v13);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F73616572, 0xE600000000000000);
  return v16(v20, 0);
}

uint64_t sub_266F07FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F08030(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARTieBreaker.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v28 = a1;
  v1 = sub_26738113C();
  v25 = v1;
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
  v26 = v2 + 104;
  v27 = v11;
  v11(v5, v10, v1);
  v30[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v29 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6B61657242656974, 0xEE00656D614E7265);
  v14(v30, 0);
  v23 = "iri.caar.CAARTieBreaker";
  sub_266ECB294(0, &qword_2800EF828, 0x277D56BE8);
  sub_266ECAF2C(&qword_2800EF820, &qword_2800EF828, 0x277D56BE8);
  sub_26738122C();
  v24 = v12;
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v23 | 0x8000000000000000);
  v15(v30, 0);
  v28 = "actionCandidateBoosts";
  v16 = *MEMORY[0x277D3E4E8];
  v17 = v25;
  v18 = v27;
  v27(v5, v16, v25);
  v30[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v28 | 0x8000000000000000);
  v19(v30, 0);
  v18(v5, v16, v17);
  v30[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v24);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x8000000267424410);
  return v20(v30, 0);
}

uint64_t sub_266F085C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0862C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARTieBreakersExecuted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF838, 0x277D56BF8);
  sub_266ECAF2C(&qword_2800EF830, &qword_2800EF838, 0x277D56BF8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B61657262656974, 0xEB00000000737265);
  return v5(v7, 0);
}

uint64_t sub_266F088AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF838, 0x277D56BF8);
  sub_266ECAF2C(&qword_2800EF830, &qword_2800EF838, 0x277D56BF8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B61657262656974, 0xEB00000000737265);
  return v5(v7, 0);
}

uint64_t sub_266F08A50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F08AB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAARSchemaCAARTrialEnrollment.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v27 = *(v1 + 104);
  v28 = v1 + 104;
  v27(v4, v9, v0);
  v29[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v25 = v10;
  v26 = v11 + 56;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D697265707865, 0xEC0000006449746ELL);
  v13(v29, 0);
  v14 = v9;
  v15 = v9;
  v23 = v9;
  v24 = v0;
  v16 = v27;
  v27(v4, v14, v0);
  v29[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D7461657274, 0xEB00000000644974);
  v17(v29, 0);
  v16(v4, v15, v0);
  v29[0] = 1;
  sub_26738114C();
  v18 = v25;
  v12(v8, 0, 1, v25);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v19(v29, 0);
  v16(v4, v23, v24);
  v29[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x4974756F6C6C6F72, 0xE900000000000064);
  return v20(v29, 0);
}

uint64_t sub_266F09010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F09074(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F090D8()
{
  result = qword_2800EF7E8;
  if (!qword_2800EF7E8)
  {
    sub_266F09130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF7E8);
  }

  return result;
}

unint64_t sub_266F09130()
{
  result = qword_2800EF7E0;
  if (!qword_2800EF7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF7E0);
  }

  return result;
}

uint64_t static CAMSchemaCAMAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x80000002674244D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674244F0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267424520, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267424540, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x8000000267424560, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267424590, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x80000002674245C0, v41);
  v42 = *v39;
  *v39 = v50;

  v37(v51, 0);
  sub_266ECB128(&unk_2878842A8);
  return sub_26738112C();
}

uint64_t sub_266F09568(uint64_t a1)
{
  v2 = sub_266F0966C(&qword_2800EF848);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F095D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F0966C(&qword_2800EF848);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F0966C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAMSchemaCAMAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CAMSchemaCAMAggregateFeatureValue.makeTypeManifestAndEnsureFields(in:)()
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
  v20 = *MEMORY[0x277D3E518];
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
  sub_266EC637C(v7, 1851876717, 0xE400000000000000);
  v12(v21, 0);
  v13 = v19;
  (v8)(v3, v20, v19);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x65636E6169726176, 0xE800000000000000);
  v14(v21, 0);
  (v18)(v3, *MEMORY[0x277D3E538], v13);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265746E496D756ELL, 0xEF736E6F69746361);
  v15(v21, 0);
  sub_266ECB128(&unk_2878842D8);
  return sub_2673811CC();
}

uint64_t sub_266F09AB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F09B14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F09B78()
{
  result = qword_2800EF850;
  if (!qword_2800EF850)
  {
    sub_266F09BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF850);
  }

  return result;
}

unint64_t sub_266F09BD0()
{
  result = qword_2800EF858;
  if (!qword_2800EF858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF858);
  }

  return result;
}

uint64_t static CAMSchemaCAMAutoSendFeaturesGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v43 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF858, 0x277D56C20);
  v8 = sub_266ECAF2C(&qword_2800EF850, &qword_2800EF858, 0x277D56C20);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v44 = v9;
  v11(v7, 0, 1, v9);
  v13 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x5372734172657375, 0xEC00000065726F63);
  v14(v45, 0);
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x8000000267424660);
  v15(v45, 0);
  v38 = "userAsrScoreWhenCompleted";
  v16 = v8;
  sub_26738120C();
  v17 = v44;
  v11(v7, 0, 1, v44);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v38 | 0x8000000000000000);
  v18(v45, 0);
  v38 = "userAsrScoreWhenRejected";
  sub_26738120C();
  v11(v7, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v38 | 0x8000000000000000);
  v19(v45, 0);
  v38 = "userAsrScoreTargetContact";
  sub_26738120C();
  v40 = v11;
  v11(v7, 0, 1, v17);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v38 | 0x8000000000000000);
  v20(v45, 0);
  v41 = v16;
  sub_26738120C();
  v11(v7, 0, 1, v17);
  v42 = v13;
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x656A655272657375, 0xEE00657461527463);
  v21(v45, 0);
  sub_26738120C();
  v22 = v44;
  v23 = v40;
  v40(v7, 0, 1, v44);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x80000002674246E0);
  v24(v45, 0);
  v39 = a1;
  sub_26738120C();
  v23(v7, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267424700);
  v25(v45, 0);
  v38 = "userRejectRateTargetApp";
  sub_26738120C();
  v26 = v44;
  v23(v7, 0, 1, v44);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, v38 | 0x8000000000000000);
  v27(v45, 0);
  sub_26738120C();
  v23(v7, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x8000000267424740);
  v28(v45, 0);
  sub_26738120C();
  v29 = v44;
  v23(v7, 0, 1, v44);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x8000000267424770);
  v30(v45, 0);
  sub_26738120C();
  v23(v7, 0, 1, v29);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002ALL, 0x8000000267424790);
  v31(v45, 0);
  v38 = "hInCharactersTargetContact";
  sub_26738120C();
  v32 = v44;
  v23(v7, 0, 1, v44);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000026, v38 | 0x8000000000000000);
  v33(v45, 0);
  v38 = "hInCharactersTargetApp";
  sub_26738120C();
  v23(v7, 0, 1, v32);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002ALL, v38 | 0x8000000000000000);
  v34(v45, 0);
  sub_26738120C();
  v23(v7, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000029, 0x8000000267424820);
  return v35(v45, 0);
}

uint64_t sub_266F0A64C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0A6B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAMSchemaCAMClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF870, 0x277D56C48);
  sub_266ECAF2C(&qword_2800EF878, &qword_2800EF870, 0x277D56C48);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v27, 0);
  sub_266ECB294(0, &qword_2800EF880, 0x277D56C70);
  sub_266ECAF2C(&qword_2800EF888, &qword_2800EF880, 0x277D56C70);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x5274736575716572, 0xEF64657669656365);
  v10(v27, 0);
  sub_266ECB294(0, &qword_2800EF890, 0x277D56C50);
  sub_266ECAF2C(&qword_2800EF898, &qword_2800EF890, 0x277D56C50);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6578456C65646F6DLL, 0xED00006465747563);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800EF8A0, 0x277D56C90);
  sub_266ECAF2C(&qword_2800EF8A8, &qword_2800EF8A0, 0x277D56C90);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267424880);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800EF868, 0x277D56C28);
  sub_266ECAF2C(&qword_2800EF860, &qword_2800EF868, 0x277D56C28);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x80000002674248A0);
  v14(v27, 0);
  sub_26738117C();
  v15 = sub_2673811BC();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266ECAD54(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266ECAD54(v20 > 1, v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v13, v26);
  v15(v27, 0);
  sub_266ECB128(&unk_287884308);
  return sub_2673811CC();
}

uint64_t sub_266F0AE10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F0AEA8()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F0AF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0AFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F0B038(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EF8B0, &qword_2800EF8B8, 0x277D56C30);
  a1[2] = sub_266ECAF2C(&qword_2800EF8C0, &qword_2800EF8B8, 0x277D56C30);
  result = sub_266ECAF2C(&qword_2800EF8C8, &qword_2800EF8B8, 0x277D56C30);
  a1[3] = result;
  return result;
}

uint64_t static CAMSchemaCAMClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_26738113C();
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v40 = a1;
  v38 = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v37 = *(v12 + 56);
  v37(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496D6163, 0xE500000000000000);
  v13(v43, 0);
  v41 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v42, 0x64496D6163, 0xE500000000000000);
  v16 = *(v12 + 48);
  v39 = v12 + 48;
  v36 = v16;
  if (!v16(v17, 1, v11))
  {
    sub_266ECB128(&unk_287884340);
    sub_26738115C();
  }

  (v15)(v42, 0);
  v14(v43, 0);
  (*(v33 + 104))(v34, *MEMORY[0x277D3E530], v35);
  v43[0] = 1;
  sub_26738114C();
  v18 = v37;
  v37(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674206D0);
  v19(v43, 0);
  type metadata accessor for CAMSchemaCAMFeature(0);
  sub_266F0B960();
  sub_26738120C();
  v18(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x65727574616566, 0xE700000000000000);
  v20(v43, 0);
  sub_26738120C();
  v18(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x4974736575716572, 0xE900000000000064);
  v21(v43, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v42, 0x4974736575716572, 0xE900000000000064);
  if (!v36(v24, 1, v11))
  {
    sub_266ECB128(&unk_287884370);
    sub_26738115C();
  }

  (v23)(v42, 0);
  v22(v43, 0);
  sub_26738120C();
  v25 = v37;
  v37(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449707274, 0xE500000000000000);
  v26(v43, 0);
  sub_26738120C();
  v25(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x6575716552627573, 0xEC00000064497473);
  v27(v43, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v42, 0x6575716552627573, 0xEC00000064497473);
  if (!v36(v30, 1, v11))
  {
    sub_266ECB128(&unk_2878843A0);
    sub_26738115C();
  }

  (v29)(v42, 0);
  v28(v43, 0);
  sub_266ECB128(&unk_2878843D0);
  return sub_2673811CC();
}

uint64_t sub_266F0B89C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0B900(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F0B960()
{
  result = qword_2800EF8D8;
  if (!qword_2800EF8D8)
  {
    type metadata accessor for CAMSchemaCAMFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF8D8);
  }

  return result;
}

uint64_t static CAMSchemaCAMFeature.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267424920, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v34;

  v1(v39, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267424940, v11);
  v12 = *v9;
  *v9 = v35;

  v7(v39, 0);
  v13 = sub_266ECB128(&unk_287884400);
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
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267424960, v25);
  v26 = *v23;
  *v23 = v37;

  v21(v39, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = *v28;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267424980, v31);
  v32 = *v29;
  *v29 = v38;

  return v27(v39, 0);
}

uint64_t sub_266F0BD00(uint64_t a1)
{
  v2 = sub_266F0BE04(&qword_2800EF8E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F0BD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F0BE04(&qword_2800EF8E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F0BE04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAMSchemaCAMFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CAMSchemaCAMModelExecuted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_26738113C();
  v33 = *(v37 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF8E8, 0x277D56C60);
  sub_266ECAF2C(&qword_2800EF8F0, &qword_2800EF8E8, 0x277D56C60);
  v34 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v35 = *(v12 + 56);
  v36 = v12 + 56;
  v35(v10, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496C65646F6DLL, 0xE700000000000000);
  v13(v39, 0);
  v32 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v38, 0x64496C65646F6DLL, 0xE700000000000000);
  v16 = v11;
  if (!(*(v12 + 48))(v17, 1, v11))
  {
    sub_266ECB128(&unk_287884428);
    sub_26738115C();
  }

  (v15)(v38, 0);
  v14(v39, 0);
  v18 = *(v33 + 104);
  v19 = v37;
  v18(v6, *MEMORY[0x277D3E538], v37);
  v39[0] = 1;
  sub_26738114C();
  v31 = v16;
  v20 = v35;
  v35(v10, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x6974636964657270, 0xEA00000000006E6FLL);
  v21(v39, 0);
  v22 = *MEMORY[0x277D3E500];
  v18(v6, v22, v19);
  v39[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v16);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x6974636964657270, 0xEF65726F63536E6FLL);
  v23(v39, 0);
  v33 = "iri.cam.CAMModelExecuted";
  v18(v6, v22, v19);
  v39[0] = 1;
  sub_26738114C();
  v24 = v31;
  v25 = v35;
  v35(v10, 0, 1, v31);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v33 | 0x8000000000000000);
  v26(v39, 0);
  v18(v6, *MEMORY[0x277D3E4E8], v37);
  v39[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x776F646168537369, 0xEB00000000676F4CLL);
  v27(v39, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  sub_26738120C();
  v25(v10, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x7465737361, 0xE500000000000000);
  v28(v39, 0);
  sub_266ECB128(&unk_287884450);
  return sub_2673811CC();
}

uint64_t sub_266F0C580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0C5E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAMSchemaCAMModelId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6D614E6C65646F6DLL, 0xE900000000000065);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v12(v14, 0);
  sub_266ECB128(&unk_287884480);
  return sub_2673811CC();
}

uint64_t sub_266F0C9D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0CA3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CAMSchemaCAMRequestReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x65727574616566, 0xE700000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_2878844B0);
  return sub_2673811CC();
}

uint64_t sub_266F0CD44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0CDA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F0CE0C()
{
  result = qword_2800EF888;
  if (!qword_2800EF888)
  {
    sub_266F0CE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF888);
  }

  return result;
}

unint64_t sub_266F0CE64()
{
  result = qword_2800EF880;
  if (!qword_2800EF880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF880);
  }

  return result;
}

uint64_t static CAMSchemaCAMResponse.makeTypeManifestAndEnsureFields(in:)()
{
  v21 = sub_26738113C();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v21);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CAMSchemaCAMAction(0);
  sub_266F0D3C8(&qword_2800EF840, type metadata accessor for CAMSchemaCAMAction);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F69746361, 0xE600000000000000);
  v10(v22, 0);
  v19 = "iri.cam.CAMResponse";
  v11 = *MEMORY[0x277D3E538];
  v12 = v0 + 104;
  v13 = *(v0 + 104);
  v20 = v12;
  v14 = v21;
  v13(v3, v11, v21);
  v22[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v19 | 0x8000000000000000);
  v15(v22, 0);
  v13(v3, *MEMORY[0x277D3E530], v14);
  v22[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x726563726F666E65, 0xE800000000000000);
  v16(v22, 0);
  sub_266ECB128(&unk_2878844E0);
  return sub_2673811CC();
}

uint64_t sub_266F0D2BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0D320(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F0D3C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F0D410()
{
  result = qword_2800EF910;
  if (!qword_2800EF910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF910);
  }

  return result;
}

uint64_t static CAMSchemaCAMResponseGenerated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF910, 0x277D56C80);
  sub_266ECAF2C(&qword_2800EF908, &qword_2800EF910, 0x277D56C80);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65736E6F70736572, 0xE800000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287884510);
  return sub_2673811CC();
}

uint64_t sub_266F0D65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0D6C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDAAdvertisementData.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v42 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v37 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v43 = *(v3 + 104);
  v43(v6, v11, v2);
  v12 = v3 + 104;
  v44[0] = 1;
  sub_26738114C();
  v40 = sub_26738116C();
  v13 = *(v40 - 8);
  v37[0] = *(v13 + 56);
  v14 = v13 + 56;
  (v37[0])(v10, 0, 1, v40);
  v39 = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x7361486F69647561, 0xE900000000000068);
  v15(v44, 0);
  v16 = v42;
  v43(v6, v11, v42);
  v44[0] = 1;
  sub_26738114C();
  v41 = v14;
  v17 = v37[0];
  (v37[0])(v10, 0, 1, v40);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x7373656E646F6F67, 0xED000065726F6353);
  v18(v44, 0);
  v43(v6, v11, v16);
  v44[0] = 1;
  sub_26738114C();
  v19 = v40;
  v17(v10, 0, 1, v40);
  v20 = v17;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656469666E6F63, 0xEF65726F63536563);
  v21(v44, 0);
  v38 = v11;
  v22 = v43;
  v43(v6, v11, v42);
  v44[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C43656369766564, 0xEB00000000737361);
  v23(v44, 0);
  v24 = v42;
  v22(v6, v11, v42);
  v25 = v12;
  v44[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v19);
  v26 = v20;
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x7247656369766564, 0xEB0000000070756FLL);
  v27(v44, 0);
  v37[1] = v25;
  v43(v6, v38, v24);
  v44[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v19);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x54746375646F7270, 0xEB00000000657079);
  v28(v44, 0);
  v29 = v43;
  v43(v6, v38, v24);
  v44[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v19);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x6B61657242656974, 0xEA00000000007265);
  v30(v44, 0);
  v31 = *MEMORY[0x277D3E4E8];
  v32 = v42;
  v29(v6, v31, v42);
  v44[0] = 1;
  sub_26738114C();
  v33 = v40;
  v26(v10, 0, 1, v40);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267424B00);
  v34(v44, 0);
  v43(v6, v31, v32);
  v44[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v33);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0x666C65537369, 0xE600000000000000);
  return v35(v44, 0);
}

uint64_t sub_266F0E004(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0E068(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F0E0CC()
{
  result = qword_2800EF918;
  if (!qword_2800EF918)
  {
    sub_266F0E124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF918);
  }

  return result;
}

unint64_t sub_266F0E124()
{
  result = qword_2800EF920;
  if (!qword_2800EF920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF920);
  }

  return result;
}

uint64_t static CDASchemaCDAClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v32 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF928, 0x277D56CA8);
  sub_266ECAF2C(&qword_2800EF930, &qword_2800EF928, 0x277D56CA8);
  sub_26738120C();
  v9 = sub_26738116C();
  v33 = *(v9 - 8);
  v10 = *(v33 + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v38, 0);
  sub_266ECB294(0, &qword_2800EF938, 0x277D56D00);
  sub_266ECAF2C(&qword_2800EF940, &qword_2800EF938, 0x277D56D00);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267424B50);
  v12(v38, 0);
  sub_266ECB294(0, &qword_2800EF948, 0x277D56CB0);
  sub_266ECAF2C(&qword_2800EF950, &qword_2800EF948, 0x277D56CB0);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267424B70);
  v13(v38, 0);
  sub_266ECB294(0, &qword_2800EF958, 0x277D56CD8);
  sub_266ECAF2C(&qword_2800EF960, &qword_2800EF958, 0x277D56CD8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267424B90);
  v14(v38, 0);
  sub_266ECB294(0, &qword_2800EF968, 0x277D56CC0);
  sub_266ECAF2C(&qword_2800EF970, &qword_2800EF968, 0x277D56CC0);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267424BB0);
  v15(v38, 0);
  sub_266ECB294(0, &qword_2800EF978, 0x277D56CB8);
  sub_266ECAF2C(&qword_2800EF980, &qword_2800EF978, 0x277D56CB8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267424BD0);
  v16(v38, 0);
  sub_266ECB294(0, &qword_2800EF988, 0x277D56D08);
  sub_266ECAF2C(&qword_2800EF990, &qword_2800EF988, 0x277D56D08);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267424BF0);
  v17(v38, 0);
  sub_266ECB294(0, &qword_2800EF998, 0x277D56D20);
  sub_266ECAF2C(&qword_2800EF9A0, &qword_2800EF998, 0x277D56D20);
  v32[1] = a1;
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267424C10);
  v18(v38, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v37, 0xD000000000000015, 0x8000000267424C10);
  if (!(*(v33 + 48))(v21, 1, v9))
  {
    sub_266ECB128(&unk_287884540);
    sub_26738115C();
  }

  (v20)(v37, 0);
  v19(v38, 0);
  sub_266ECB294(0, &qword_2800EF9A8, 0x277D56D30);
  sub_266ECAF2C(&qword_2800EF9B0, &qword_2800EF9A8, 0x277D56D30);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x8000000267424C30);
  v22(v38, 0);
  v23 = v34;
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
  (*(v35 + 32))(v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v23, v36);
  v24(v38, 0);
  sub_266ECB128(&unk_287884568);
  return sub_2673811CC();
}

uint64_t sub_266F0EC34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F0ECCC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F0ED98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0EDFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F0EE5C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EF9B8, &qword_2800EF9C0, 0x277D56CA0);
  a1[2] = sub_266ECAF2C(&qword_2800EF9C8, &qword_2800EF9C0, 0x277D56CA0);
  result = sub_266ECAF2C(&qword_2800EF9D0, &qword_2800EF9C0, 0x277D56CA0);
  a1[3] = result;
  return result;
}

uint64_t static CDASchemaCDAClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449616463, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449616463, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878845A0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266F0F1F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0F258(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDADataCollectionGroup.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267424CC0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267424CE0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267424D00, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267424D20, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267424D40, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F0F5F4(uint64_t a1)
{
  v2 = sub_266F0F6F8(&qword_2800EF9E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F0F65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F0F6F8(&qword_2800EF9E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F0F6F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDADataCollectionGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDADebugElectionDecisionMade.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v2 + 104);
  v18 = v2 + 104;
  v20 = v11;
  v11(v5, v10, v1);
  v22[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267424DA0);
  v14(v22, 0);
  sub_266ECB294(0, &qword_2800EF920, 0x277D56C98);
  sub_266ECAF2C(&qword_2800EF918, &qword_2800EF920, 0x277D56C98);
  sub_26738122C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267424DC0);
  v15(v22, 0);
  v20(v5, *MEMORY[0x277D3E538], v19);
  v22[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x7247656369766564, 0xEB0000000070756FLL);
  v16(v22, 0);
  sub_266ECB128(&unk_2878845D0);
  return sub_2673811CC();
}

uint64_t sub_266F0FB60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F0FBC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDADecision.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267424E10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x5349434544414443, 0xEF4E49575F4E4F49, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x8000000267424E30, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F0FE88(uint64_t a1)
{
  v2 = sub_266F0FF8C(&qword_2800EF9F8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F0FEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F0FF8C(&qword_2800EF9F8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F0FF8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDADecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDADeviceAdvertisingEndContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFA00, 0x277D56CE8);
  sub_266ECAF2C(&qword_2800EFA08, &qword_2800EFA00, 0x277D56CE8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EFA10, 0x277D56CE0);
  sub_266ECAF2C(&qword_2800EFA18, &qword_2800EFA10, 0x277D56CE0);
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

uint64_t sub_266F1041C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F10480(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDADeviceAdvertisingStartContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFA20, 0x277D56CF8);
  sub_266ECAF2C(&qword_2800EFA28, &qword_2800EFA20, 0x277D56CF8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EFA30, 0x277D56CF0);
  sub_266ECAF2C(&qword_2800EFA38, &qword_2800EFA30, 0x277D56CF0);
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

uint64_t sub_266F10970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F109D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDADeviceClass.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267424F00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267424F20, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267424F40, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x8000000267424F60, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267424F80, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x8000000267424FA0, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x8000000267424FC0, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x8000000267424FE0, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000019, 0x8000000267425000, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x8000000267425020, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x8000000267425040, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001DLL, 0x8000000267425060, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x8000000267425080, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_266F110F0(uint64_t a1)
{
  v2 = sub_266F111F4(&qword_2800EFA48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F11158(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F111F4(&qword_2800EFA48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F111F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDADeviceClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDADeviceStateActivityEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F11684(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F113F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F11684(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F11578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F115DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F11684(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F116CC()
{
  result = qword_2800EFA60;
  if (!qword_2800EFA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA60);
  }

  return result;
}

uint64_t static CDASchemaCDADeviceStateActivityStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F11AC8(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  v6(v9, 0);
  type metadata accessor for CDASchemaCDATrigger(0);
  sub_266F11AC8(&qword_2800EFA68, type metadata accessor for CDASchemaCDATrigger);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656767697274, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_266F119BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F11A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F11AC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F11B10()
{
  result = qword_2800EFA78;
  if (!qword_2800EFA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA78);
  }

  return result;
}

uint64_t static CDASchemaCDADeviceStateContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EFA78, 0x277D56CD0);
  sub_266ECAF2C(&qword_2800EFA70, &qword_2800EFA78, 0x277D56CD0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EFA60, 0x277D56CC8);
  sub_266ECAF2C(&qword_2800EFA58, &qword_2800EFA60, 0x277D56CC8);
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

uint64_t sub_266F11FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1200C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CDASchemaCDAElectionAdvertisingEndEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F124FC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F1226C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F124FC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F123F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F12454(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F124FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F12544()
{
  result = qword_2800EFA10;
  if (!qword_2800EFA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA10);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionAdvertisingEndStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F129DC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F1274C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F129DC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F128D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F12934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F129DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F12A24()
{
  result = qword_2800EFA00;
  if (!qword_2800EFA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA00);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionAdvertisingStartEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F12EBC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F12C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F12EBC(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F12DB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F12E14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F12EBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F12F04()
{
  result = qword_2800EFA30;
  if (!qword_2800EFA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA30);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionAdvertisingStartStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v26 = sub_26738113C();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v26);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F1352C(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v25 = v9 + 56;
  v10(v7, 0, 1, v8);
  v22 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574617473, 0xE500000000000000);
  v11(v27, 0);
  v21 = "ionAdvertisingStartStarted";
  v12 = *MEMORY[0x277D3E500];
  v24 = *(v0 + 104);
  v23 = v12;
  v13 = v26;
  v24(v3, v12, v26);
  v27[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v21 | 0x8000000000000000);
  v14(v27, 0);
  v21 = "advertisementInterval";
  v15 = v13;
  v16 = v24;
  v24(v3, v12, v15);
  v27[0] = 1;
  sub_26738114C();
  v17 = v22;
  v22(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v21 | 0x8000000000000000);
  v18(v27, 0);
  v16(v3, v23, v26);
  v27[0] = 1;
  sub_26738114C();
  v17(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267425290);
  return v19(v27, 0);
}

uint64_t sub_266F13420(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F13484(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1352C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F13574()
{
  result = qword_2800EFA20;
  if (!qword_2800EFA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA20);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionDecisionMade.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v39 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v13 = *MEMORY[0x277D3E500];
  v14 = *(v5 + 104);
  v40 = v5 + 104;
  v41 = v14;
  v14(v8, v13, v4);
  v43[0] = 1;
  sub_26738114C();
  v15 = sub_26738116C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v12, 0, 1, v15);
  v34[1] = v18;
  v19 = a2;
  v20 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E6F6973726576, 0xE700000000000000);
  v20(v43, 0);
  type metadata accessor for CDASchemaCDADecision(0);
  sub_266F13E9C();
  v42 = a1;
  sub_26738120C();
  v17(v12, 0, 1, v15);
  v21 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E6F697369636564, 0xE800000000000000);
  v21(v43, 0);
  sub_26738120C();
  v17(v12, 0, 1, v15);
  v22 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000010, 0x80000002674252E0);
  v22(v43, 0);
  sub_266ECB294(0, &qword_2800EFA80, 0x277D56D10);
  sub_266ECAF2C(&qword_2800EFA88, &qword_2800EFA80, 0x277D56D10);
  sub_26738120C();
  v17(v12, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v12, 0x6976654473696874, 0xEA00000000006563);
  v23(v43, 0);
  sub_26738120C();
  v17(v12, 0, 1, v15);
  v36 = v19;
  v24 = sub_2673811AC();
  sub_266EC637C(v12, 0x44676E696E6E6977, 0xED00006563697665);
  v24(v43, 0);
  sub_26738122C();
  v37 = v17;
  v17(v12, 0, 1, v15);
  v25 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000011, 0x8000000267425300);
  v25(v43, 0);
  v35 = "heardParticipants";
  v27 = v38;
  v26 = v39;
  v28 = v41;
  v41(v38, *MEMORY[0x277D3E540], v39);
  v43[0] = 1;
  sub_26738114C();
  v17(v12, 0, 1, v15);
  v29 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000019, v35 | 0x8000000000000000);
  v29(v43, 0);
  v28(v27, *MEMORY[0x277D3E538], v26);
  v43[0] = 1;
  sub_26738114C();
  v30 = v37;
  v37(v12, 0, 1, v15);
  v31 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000010, 0x8000000267425340);
  v31(v43, 0);
  sub_266ECB294(0, &qword_2800EFA90, 0x277D56D18);
  sub_266ECAF2C(&qword_2800EFA98, &qword_2800EFA90, 0x277D56D18);
  sub_26738120C();
  v30(v12, 0, 1, v15);
  v32 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000013, 0x8000000267425360);
  return v32(v43, 0);
}

uint64_t sub_266F13DD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F13E3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F13E9C()
{
  result = qword_2800EF9F0;
  if (!qword_2800EF9F0)
  {
    type metadata accessor for CDASchemaCDADecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF9F0);
  }

  return result;
}

uint64_t static CDASchemaCDAElectionTimerEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F14384(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F140F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CDASchemaCDAState(0);
  sub_266F14384(&qword_2800EFA50, type metadata accessor for CDASchemaCDAState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617473, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F14278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F142DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F14384(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F143CC()
{
  result = qword_2800EF988;
  if (!qword_2800EF988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF988);
  }

  return result;
}

uint64_t static CDASchemaCDAParticipant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = a1;
  v20 = sub_26738113C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v19 = *MEMORY[0x277D3E538];
  v18 = *(v1 + 104);
  v18(v4);
  v22[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x7373656E646F6F67, 0xED000065726F6353);
  v11(v22, 0);
  type metadata accessor for CDASchemaCDADeviceClass(0);
  sub_266F14A28();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C43656369766564, 0xEB00000000737361);
  v12(v22, 0);
  (v18)(v4, v19, v20);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x54746375646F7270, 0xEB00000000657079);
  v13(v22, 0);
  v20 = "iri.cda.CDAParticipant";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = v10;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v20 | 0x8000000000000000);
  v15(v22, 0);
  sub_26738120C();
  v14(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x8000000267425400);
  return v16(v22, 0);
}

uint64_t sub_266F14964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F149C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F14A28()
{
  result = qword_2800EFA40;
  if (!qword_2800EFA40)
  {
    type metadata accessor for CDASchemaCDADeviceClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFA40);
  }

  return result;
}

uint64_t static CDASchemaCDAScoreBoosters.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[2] = a1;
  v3 = sub_26738113C();
  v49 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v43 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12 = a2;
  sub_26738119C();
  v13 = *MEMORY[0x277D3E538];
  v50 = *(v4 + 104);
  v47 = v4 + 104;
  v48 = v13;
  v50(v7, v13, v3);
  v51[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v46 = v14;
  v15(v11, 0, 1, v14);
  v16 = v15;
  v43[1] = v12;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F42656369766564, 0xEB0000000074736FLL);
  v17(v51, 0);
  v43[0] = "iri.cda.CDAScoreBoosters";
  v18 = v49;
  v50(v7, v13, v49);
  v51[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v43[0] | 0x8000000000000000);
  v19(v51, 0);
  v43[0] = "recentUnlockBoost";
  v44 = v7;
  v20 = v48;
  v21 = v50;
  v50(v7, v48, v18);
  v51[0] = 1;
  sub_26738114C();
  v22 = v46;
  v16(v11, 0, 1, v46);
  v45 = v16;
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v43[0] | 0x8000000000000000);
  v23(v51, 0);
  v43[0] = "recentRaiseToWakeBoost";
  v24 = v44;
  v25 = v20;
  v26 = v49;
  v21(v44, v25, v49);
  v51[0] = 1;
  sub_26738114C();
  v16(v11, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v43[0] | 0x8000000000000000);
  v27(v51, 0);
  v43[0] = "recentSiriRequestBoost";
  v28 = v48;
  v21(v24, v48, v26);
  v51[0] = 1;
  sub_26738114C();
  v30 = v45;
  v29 = v46;
  v45(v11, 0, 1, v46);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v43[0] | 0x8000000000000000);
  v31(v51, 0);
  v43[0] = "recentMotionBoost";
  v32 = v28;
  v34 = v49;
  v33 = v50;
  v50(v24, v32, v49);
  v51[0] = 1;
  sub_26738114C();
  v30(v11, 0, 1, v29);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v43[0] | 0x8000000000000000);
  v35(v51, 0);
  v36 = v44;
  v33(v44, *MEMORY[0x277D3E4E8], v34);
  v51[0] = 1;
  v37 = v36;
  sub_26738114C();
  v38 = v45;
  v45(v11, 0, 1, v29);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0x706D7572547369, 0xE700000000000000);
  v39(v51, 0);
  type metadata accessor for CDASchemaCDATrumpReason(0);
  sub_266F154B4(&qword_2800EFAA0, type metadata accessor for CDASchemaCDATrumpReason);
  sub_26738120C();
  v38(v11, 0, 1, v29);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0x616552706D757274, 0xEB000000006E6F73);
  v40(v51, 0);
  v50(v37, v48, v49);
  v51[0] = 1;
  sub_26738114C();
  v38(v11, 0, 1, v29);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674254F0);
  return v41(v51, 0);
}

uint64_t sub_266F153A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1540C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F154B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F154FC()
{
  result = qword_2800EFA90;
  if (!qword_2800EFA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFA90);
  }

  return result;
}

uint64_t static CDASchemaCDAState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000010, 0x8000000267425540, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v116;

  v1(v135, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267425560, v11);
  v12 = *v9;
  *v9 = v117;

  v7(v135, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267425580, v17);
  v18 = *v15;
  *v15 = v118;

  v13(v135, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674255A0, v23);
  v24 = *v21;
  *v21 = v119;

  v19(v135, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x80000002674255C0, v29);
  v30 = *v27;
  *v27 = v120;

  v25(v135, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000012, 0x80000002674255E0, v35);
  v36 = *v33;
  *v33 = v121;

  v31(v135, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x8000000267425600, v41);
  v42 = *v39;
  *v39 = v122;

  v37(v135, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x8000000267425620, v47);
  v48 = *v45;
  *v45 = v123;

  v43(v135, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001FLL, 0x8000000267425640, v53);
  v54 = *v51;
  *v51 = v124;

  v49(v135, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000019, 0x8000000267425660, v59);
  v60 = *v57;
  *v57 = v125;

  v55(v135, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267425680, v65);
  v66 = *v63;
  *v63 = v126;

  v61(v135, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000014, 0x80000002674256A0, v71);
  v72 = *v69;
  *v69 = v127;

  v67(v135, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001FLL, 0x80000002674256C0, v77);
  v78 = *v75;
  *v75 = v128;

  v73(v135, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000019, 0x80000002674256E0, v83);
  v84 = *v81;
  *v81 = v129;

  v79(v135, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000018, 0x8000000267425700, v89);
  v90 = *v87;
  *v87 = v130;

  v85(v135, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ELL, 0x8000000267425720, v95);
  v96 = *v93;
  *v93 = v131;

  v91(v135, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000010, 0x8000000267425740, v101);
  v102 = *v99;
  *v99 = v132;

  v97(v135, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000018, 0x8000000267425760, v107);
  v108 = *v105;
  *v105 = v133;

  v103(v135, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000015, 0x8000000267425780, v113);
  v114 = *v111;
  *v111 = v134;

  return v109(v135, 0);
}

uint64_t sub_266F15E7C(uint64_t a1)
{
  v2 = sub_266F15F80(&qword_2800EFAA8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F15EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F15F80(&qword_2800EFAA8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F15F80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDAState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDATemporalUtilityState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674257D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674257F0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267425820, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267425840, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F1624C(uint64_t a1)
{
  v2 = sub_266F16350(&qword_2800EFAB8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F162B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F16350(&qword_2800EFAB8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F16350(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDATemporalUtilityState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDATrigger.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267425890, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x80000002674258B0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x80000002674258D0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x80000002674258F0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267425910, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x8000000267425930, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x8000000267425950, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x8000000267425980, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x80000002674259A0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266F1684C(uint64_t a1)
{
  v2 = sub_266F16950(&qword_2800EFAC0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F168B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F16950(&qword_2800EFAC0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F16950(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDATrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDATrumpReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267425A00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267425A20, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267425A40, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267425A60, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x8000000267425A90, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267425AC0, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x8000000267425AE0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267425B00, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267425B20, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266F16E4C(uint64_t a1)
{
  v2 = sub_266F16F50(&qword_2800EFAC8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F16EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F16F50(&qword_2800EFAC8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F16F50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDASchemaCDATrumpReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CDASchemaCDAUserFeedbackCompleted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v55 = sub_26738113C();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v54 = *(v3 + 104);
  v49 = v11;
  v54(v6);
  v58[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v45 = *(v12 - 8);
  v14 = v45 + 56;
  v13 = *(v45 + 56);
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449796576727573, 0xE800000000000000);
  v15(v58, 0);
  type metadata accessor for CDASchemaCDAUserFeedbackStatus(0);
  sub_266F17A60(&qword_2800EFAD0, type metadata accessor for CDASchemaCDAUserFeedbackStatus);
  sub_26738120C();
  v13(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267425B80);
  v16(v58, 0);
  v48 = *MEMORY[0x277D3E4E8];
  v53 = v3 + 104;
  v54(v6);
  v58[0] = 1;
  v44 = v6;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v17 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267425BA0);
  v18(v58, 0);
  v19 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v46 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v47 = v19;
  sub_26738120C();
  v52 = v13;
  v50 = v14;
  v13(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267425BC0);
  v20(v58, 0);
  v51 = v17;
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v57, 0xD00000000000001ALL, 0x8000000267425BC0);
  v23 = v12;
  if (!(*(v45 + 48))(v24, 1, v12))
  {
    sub_266ECB128(&unk_287884600);
    sub_26738115C();
  }

  (v22)(v57, 0);
  v21(v58, 0);
  v25 = v44;
  v26 = v54;
  v27 = v55;
  (v54)(v44, v49, v55);
  v58[0] = 1;
  sub_26738114C();
  v28 = v23;
  v43 = v23;
  v29 = v52;
  v52(v10, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267425BE0);
  v30(v58, 0);
  (v26)(v25, *MEMORY[0x277D3E518], v27);
  v58[0] = 1;
  sub_26738114C();
  v31 = v43;
  v29(v10, 0, 1, v43);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x8000000267425C00);
  v32(v58, 0);
  type metadata accessor for CDASchemaCDADataCollectionGroup(0);
  sub_266F17A60(&qword_2800EF9E0, type metadata accessor for CDASchemaCDADataCollectionGroup);
  sub_26738120C();
  v29(v10, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267425C30);
  v33(v58, 0);
  v34 = v27;
  v35 = v54;
  (v54)(v25, v49, v34);
  v58[0] = 1;
  sub_26738114C();
  v29(v10, 0, 1, v31);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D697265707865, 0xEC0000006449746ELL);
  v36(v58, 0);
  (v35)(v25, v48, v55);
  v58[0] = 1;
  sub_26738114C();
  v37 = v31;
  v38 = v31;
  v39 = v52;
  v52(v10, 0, 1, v38);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x8000000267425C50);
  v40(v58, 0);
  sub_26738120C();
  v39(v10, 0, 1, v37);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, 0x8000000267425C70);
  v41(v58, 0);
  sub_266ECB128(&unk_287884630);
  return sub_2673811CC();
}

uint64_t sub_266F1799C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F17A00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F17A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static CDASchemaCDAUserFeedbackParticipant.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = sub_26738113C();
  v86 = *(v84 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v76 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v80 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v81 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v88 = v11 + 56;
  v82 = v12;
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6565705369726973, 0xEC00000064496863);
  v13(v90, 0);
  v85 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v89, 0x6565705369726973, 0xEC00000064496863);
  v78 = *(v11 + 48);
  v79 = v11 + 48;
  if (!v78(v16, 1, v10))
  {
    sub_266ECB128(&unk_287884660);
    sub_26738115C();
  }

  (v15)(v89, 0);
  v14(v90, 0);
  sub_26738120C();
  v17 = v82;
  v82(v9, 0, 1, v10);
  v87 = v10;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449616463, 0xE500000000000000);
  v18(v90, 0);
  sub_26738120C();
  v17(v9, 0, 1, v87);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x4974736575716572, 0xE900000000000064);
  v19(v90, 0);
  sub_26738120C();
  v17(v9, 0, 1, v87);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267425CE0);
  v20(v90, 0);
  v21 = v87;
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v89, 0xD000000000000015, 0x8000000267425CE0);
  if (!v78(v24, 1, v21))
  {
    sub_266ECB128(&unk_287884690);
    sub_26738115C();
  }

  (v23)(v89, 0);
  v22(v90, 0);
  type metadata accessor for CDASchemaCDADecision(0);
  sub_266F19260(&qword_2800EF9F0, type metadata accessor for CDASchemaCDADecision);
  sub_26738120C();
  v82(v9, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F697369636564, 0xE800000000000000);
  v25(v90, 0);
  v76 = "halTargetSiriSpeechId";
  v27 = v86 + 104;
  v26 = *(v86 + 104);
  v28 = v83;
  v29 = v84;
  v77 = *MEMORY[0x277D3E540];
  v26(v83);
  v90[0] = 1;
  sub_26738114C();
  v30 = v82;
  v82(v9, 0, 1, v87);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v76 | 0x8000000000000000);
  v31(v90, 0);
  v76 = "timeSinceLastDecisionInMs";
  v32 = *MEMORY[0x277D3E538];
  (v26)(v28, v32, v29);
  v90[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v87);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v76 | 0x8000000000000000);
  v33(v90, 0);
  LODWORD(v76) = v32;
  v86 = v27;
  v80 = v26;
  (v26)(v28, v32, v84);
  v90[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v87);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267425D20);
  v34(v90, 0);
  v35 = v87;
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v89, 0xD000000000000012, 0x8000000267425D20);
  if (!v78(v38, 1, v35))
  {
    sub_266ECB128(&unk_2878846C0);
    sub_26738115C();
  }

  (v37)(v89, 0);
  v36(v90, 0);
  v80(v83, *MEMORY[0x277D3E518], v84);
  v90[0] = 1;
  sub_26738114C();
  v82(v9, 0, 1, v35);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267425D40);
  v39(v90, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v89, 0xD000000000000012, 0x8000000267425D40);
  if (!v78(v42, 1, v35))
  {
    sub_266ECB128(&unk_2878846E8);
    sub_26738115C();
  }

  (v41)(v89, 0);
  v40(v90, 0);
  type metadata accessor for CDASchemaCDATrumpReason(0);
  sub_266F19260(&qword_2800EFAA0, type metadata accessor for CDASchemaCDATrumpReason);
  sub_26738120C();
  v82(v9, 0, 1, v35);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0x616552706D757274, 0xEB000000006E6F73);
  v43(v90, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v89, 0x616552706D757274, 0xEB000000006E6F73);
  if (!v78(v46, 1, v35))
  {
    sub_266ECB128(&unk_287884710);
    sub_26738115C();
  }

  (v45)(v89, 0);
  v44(v90, 0);
  v80(v83, v76, v84);
  v90[0] = 1;
  sub_26738114C();
  v47 = v82;
  v82(v9, 0, 1, v35);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F6353647370, 0xE800000000000000);
  v48(v90, 0);
  type metadata accessor for SISchemaMediaPlayBackState(0);
  sub_266F19260(&qword_2800EFAD8, type metadata accessor for SISchemaMediaPlayBackState);
  sub_26738120C();
  v47(v9, 0, 1, v35);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0x617453616964656DLL, 0xEA00000000006574);
  v49(v90, 0);
  type metadata accessor for CDASchemaCDATemporalUtilityState(0);
  sub_266F19260(&qword_2800EFAB0, type metadata accessor for CDASchemaCDATemporalUtilityState);
  sub_26738120C();
  v47(v9, 0, 1, v35);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0x6174536D72616C61, 0xEA00000000006574);
  v50(v90, 0);
  sub_26738120C();
  v47(v9, 0, 1, v35);
  v51 = sub_2673811AC();
  sub_266EC637C(v9, 0x61745372656D6974, 0xEA00000000006574);
  v51(v90, 0);
  v52 = v84;
  v80(v83, v77, v84);
  v90[0] = 1;
  sub_26738114C();
  v47(v9, 0, 1, v35);
  v53 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267425D60);
  v53(v90, 0);
  type metadata accessor for CDASchemaCDATrigger(0);
  sub_266F19260(&qword_2800EFA68, type metadata accessor for CDASchemaCDATrigger);
  sub_26738120C();
  v47(v9, 0, 1, v35);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0x5472656767697274, 0xEB00000000657079);
  v54(v90, 0);
  LODWORD(v79) = *MEMORY[0x277D3E530];
  v55 = v52;
  v56 = v83;
  v57 = v80;
  (v80)();
  v90[0] = 1;
  sub_26738114C();
  v47(v9, 0, 1, v35);
  v58 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D614E6D6F6F72, 0xEC00000068736148);
  v58(v90, 0);
  v57(v56, v77, v55);
  v90[0] = 1;
  sub_26738114C();
  v59 = v87;
  v60 = v47;
  v47(v9, 0, 1, v87);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267425D80);
  v61(v90, 0);
  sub_266ECB294(0, &qword_2800EFA90, 0x277D56D18);
  sub_266ECAF2C(&qword_2800EFA98, &qword_2800EFA90, 0x277D56D18);
  sub_26738120C();
  v47(v9, 0, 1, v59);
  v62 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F6F4265726F6373, 0xED00007372657473);
  v62(v90, 0);
  v63 = v79;
  v64 = v84;
  v65 = v80;
  v80(v56, v79, v84);
  v90[0] = 1;
  sub_26738114C();
  v66 = v87;
  v60(v9, 0, 1, v87);
  v67 = sub_2673811AC();
  sub_266EC637C(v9, 0x646C697562, 0xE500000000000000);
  v67(v90, 0);
  v65(v83, v63, v64);
  v90[0] = 1;
  sub_26738114C();
  v60(v9, 0, 1, v66);
  v68 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C61636F6CLL, 0xE600000000000000);
  v68(v90, 0);
  sub_266ECB294(0, &qword_2800EF920, 0x277D56C98);
  sub_266ECAF2C(&qword_2800EF918, &qword_2800EF920, 0x277D56C98);
  sub_26738120C();
  v60(v9, 0, 1, v66);
  v69 = sub_2673811AC();
  sub_266EC637C(v9, 0x7369747265766461, 0xED0000746E656D65);
  v69(v90, 0);
  v70 = v83;
  v71 = v84;
  v72 = v80;
  v80(v83, v79, v84);
  v90[0] = 1;
  sub_26738114C();
  v60(v9, 0, 1, v66);
  v73 = sub_2673811AC();
  sub_266EC637C(v9, 0x54746375646F7270, 0xEC00000073657079);
  v73(v90, 0);
  v72(v70, *MEMORY[0x277D3E4E8], v71);
  v90[0] = 1;
  sub_26738114C();
  v60(v9, 0, 1, v66);
  v74 = sub_2673811AC();
  sub_266EC637C(v9, 0x694D7261654E7369, 0xEA00000000007373);
  return v74(v90, 0);
}

uint64_t sub_266F1919C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F19200(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}