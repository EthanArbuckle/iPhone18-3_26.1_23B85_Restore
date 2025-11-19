uint64_t sub_266FB8334(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FB83D0(&qword_2800F1728);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FB83D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSummarySourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWTextMessageLength.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "TextContentMetadata";
  v11 = *MEMORY[0x277D3E538];
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
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267438B40);
  v16(v21, 0);
  sub_266ECB128(&unk_287886198);
  return sub_2673811CC();
}

uint64_t sub_266FB875C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB87C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FB8824()
{
  result = qword_2800F1698;
  if (!qword_2800F1698)
  {
    sub_266FB887C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1698);
  }

  return result;
}

unint64_t sub_266FB887C()
{
  result = qword_2800F1690;
  if (!qword_2800F1690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1690);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWVoiceShortcutAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6449707061, 0xE500000000000000);
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
  sub_266EC637C(v8, 0x6143746E65746E69, 0xEE0079726F676574);
  v17(v29, 0);
  v16(v4, v15, v0);
  v29[0] = 1;
  sub_26738114C();
  v18 = v25;
  v12(v8, 0, 1, v25);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x614E746E65746E69, 0xEA0000000000656DLL);
  v19(v29, 0);
  v16(v4, v23, v24);
  v29[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x4C4E746E65746E69, 0xEE006E69616D6F44);
  return v20(v29, 0);
}

uint64_t sub_266FB8D88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB8DEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FB8E50()
{
  result = qword_2800F1730;
  if (!qword_2800F1730)
  {
    sub_266FB8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1730);
  }

  return result;
}

unint64_t sub_266FB8EA8()
{
  result = qword_2800F1738;
  if (!qword_2800F1738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1738);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWVoiceShortcutContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1738, 0x277D57720);
  sub_266ECAF2C(&qword_2800F1730, &qword_2800F1738, 0x277D57720);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026743C350);
  return v5(v7, 0);
}

uint64_t sub_266FB90EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB9150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWWebAnswerExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v29 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v33 = v3 + 104;
  v34[0] = 1;
  sub_26738114C();
  v28 = sub_26738116C();
  v13 = *(v28 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v28);
  v31 = v14;
  v32 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x7954726577736E61, 0xEA00000000006570);
  v16(v34, 0);
  v27 = v2;
  v12(v6, v11, v2);
  v34[0] = 1;
  sub_26738114C();
  v17 = v28;
  v14(v10, 0, 1, v28);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x73694C776F6C6C61, 0xED00006570795474);
  v18(v34, 0);
  v30 = v11;
  v12(v6, v11, v2);
  v34[0] = 1;
  sub_26738114C();
  v31(v10, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x74614D797A7A7566, 0xEE00657079546863);
  v19(v34, 0);
  v12(v6, v11, v2);
  v34[0] = 1;
  sub_26738114C();
  v20 = v31;
  v31(v10, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x69616D6F44627573, 0xE90000000000006ELL);
  v21(v34, 0);
  v22 = v27;
  v12(v6, v30, v27);
  v34[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v17);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x7974696C617571, 0xE700000000000000);
  v23(v34, 0);
  v12(v6, v30, v22);
  v34[0] = 1;
  sub_26738114C();
  v20(v10, 0, 1, v17);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C43726577736E61, 0xEB00000000737361);
  return v24(v34, 0);
}

uint64_t sub_266FB9834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB9898(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FB98FC()
{
  result = qword_2800F14C8;
  if (!qword_2800F14C8)
  {
    sub_266FB9954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F14C8);
  }

  return result;
}

unint64_t sub_266FB9954()
{
  result = qword_2800F14C0;
  if (!qword_2800F14C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F14C0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWWebAnswerExecutionTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6449726577736E61, 0xE800000000000000);
  v11(v17, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v16, 0x6449726577736E61, 0xE800000000000000);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_2878861C0);
    sub_26738115C();
  }

  (v13)(v16, 0);
  return v12(v17, 0);
}

uint64_t sub_266FB9CA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB9D04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FB9D68()
{
  result = qword_2800F14F8;
  if (!qword_2800F14F8)
  {
    sub_266FB9DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F14F8);
  }

  return result;
}

unint64_t sub_266FB9DC0()
{
  result = qword_2800F14F0;
  if (!qword_2800F14F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F14F0);
  }

  return result;
}

uint64_t static FLSchemaFLActionEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1740, 0x277D57760);
  sub_266ECAF2C(&qword_2800F1748, &qword_2800F1740, 0x277D57760);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F1750, 0x277D57750);
  sub_266ECAF2C(&qword_2800F1758, &qword_2800F1750, 0x277D57750);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F1760, 0x277D57758);
  sub_266ECAF2C(&qword_2800F1768, &qword_2800F1760, 0x277D57758);
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

uint64_t sub_266FBA3EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBA450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLActionEvaluationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v8, 0x6F69737365536669, 0xEB0000000064496ELL);
  v11(v19, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v18);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026743C450);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F1780, 0x277D577B8);
  sub_266ECAF2C(&qword_2800F1788, &qword_2800F1780, 0x277D577B8);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C6176456B736174, 0xEE006E6F69746175);
  v13(v19, 0);
  sub_266ECB294(0, &qword_2800F1790, 0x277D57770);
  sub_266ECAF2C(&qword_2800F1798, &qword_2800F1790, 0x277D57770);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026743C470);
  v14(v19, 0);
  type metadata accessor for FLSchemaFLEvaluationType(0);
  sub_266FBAB3C();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x697461756C617665, 0xEE00657079546E6FLL);
  return v15(v19, 0);
}

uint64_t sub_266FBAA78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBAADC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FBAB3C()
{
  result = qword_2800F17A0;
  if (!qword_2800F17A0)
  {
    type metadata accessor for FLSchemaFLEvaluationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F17A0);
  }

  return result;
}

uint64_t static FLSchemaFLActionEvaluationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FBAE20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBAE84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FBAEE8()
{
  result = qword_2800F1768;
  if (!qword_2800F1768)
  {
    sub_266FBAF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1768);
  }

  return result;
}

unint64_t sub_266FBAF40()
{
  result = qword_2800F1760;
  if (!qword_2800F1760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1760);
  }

  return result;
}

uint64_t static FLSchemaFLActionEvaluationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FBB1D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBB238(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FBB29C()
{
  result = qword_2800F1748;
  if (!qword_2800F1748)
  {
    sub_266FBB2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1748);
  }

  return result;
}

unint64_t sub_266FBB2F4()
{
  result = qword_2800F1740;
  if (!qword_2800F1740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1740);
  }

  return result;
}

uint64_t static FLSchemaFLActionResolutionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026743C530, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026743C550, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026743C580, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FBB554(uint64_t a1)
{
  v2 = sub_266FBB658(&qword_2800F17B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBB5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBB658(&qword_2800F17B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBB658(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLActionResolutionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLCandidateCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F17B8, 0x277D577D0);
  sub_266ECAF2C(&qword_2800F17C0, &qword_2800F17B8, 0x277D577D0);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 1819242356, 0xE400000000000000);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F17C8, 0x277D577B0);
  sub_266ECAF2C(&qword_2800F17D0, &qword_2800F17C8, 0x277D577B0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574656D61726170, 0xE900000000000072);
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

uint64_t sub_266FBBADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBBB40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLCandidateEvaluation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F17E0, 0x277D57768);
  sub_266ECAF2C(&qword_2800F17D8, &qword_2800F17E0, 0x277D57768);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026743C610);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F17E8, 0x277D57778);
  sub_266ECAF2C(&qword_2800F17F0, &qword_2800F17E8, 0x277D57778);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026743C630);
  v7(v11, 0);
  type metadata accessor for FLSchemaFLCandidateResolution(0);
  sub_266FBC0F8(&qword_2800F17F8, type metadata accessor for FLSchemaFLCandidateResolution);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974756C6F736572, 0xEA00000000006E6FLL);
  v8(v11, 0);
  type metadata accessor for FLSchemaFLCandidateOutcome(0);
  sub_266FBC0F8(&qword_2800F1800, type metadata accessor for FLSchemaFLCandidateOutcome);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  return v9(v11, 0);
}

uint64_t sub_266FBC034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBC098(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FBC0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FLSchemaFLCandidateIdentifier.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x74616469646E6163, 0xEB00000000644965);
  return v5(v7, 0);
}

uint64_t sub_266FBC360()
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
  sub_266EC637C(v3, 0x74616469646E6163, 0xEB00000000644965);
  return v5(v7, 0);
}

uint64_t sub_266FBC504(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBC568(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLCandidateInteraction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F17E8, 0x277D57778);
  sub_266ECAF2C(&qword_2800F17F0, &qword_2800F17E8, 0x277D57778);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x696669746E656469, 0xEA00000000007265);
  v6(v9, 0);
  type metadata accessor for FLSchemaFLUserAlignmentCategory(0);
  sub_266FBC960();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6E67696C61, 0xE900000000000074);
  return v7(v9, 0);
}

uint64_t sub_266FBC89C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBC900(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FBC960()
{
  result = qword_2800F1808;
  if (!qword_2800F1808)
  {
    type metadata accessor for FLSchemaFLUserAlignmentCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1808);
  }

  return result;
}

uint64_t static FLSchemaFLCandidateOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743C6E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x800000026743C700, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026743C730, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026743C760, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x800000026743C790, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000034, 0x800000026743C7C0, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003ALL, 0x800000026743C800, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ALL, 0x800000026743C840, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x800000026743C870, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x800000026743C8A0, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002BLL, 0x800000026743C8D0, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000025, 0x800000026743C900, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_266FBD004(uint64_t a1)
{
  v2 = sub_266FBD108(&qword_2800F1820);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBD06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBD108(&qword_2800F1820);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBD108(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLCandidateOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLCandidateResolution.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026743C960, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026743C980, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026743C9B0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x800000026743C9E0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x800000026743CA10, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FBD440(uint64_t a1)
{
  v2 = sub_266FBD544(&qword_2800F1828);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBD4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBD544(&qword_2800F1828);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBD544(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLCandidateResolution(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1830, 0x277D57790);
  sub_266ECAF2C(&qword_2800F1838, &qword_2800F1830, 0x277D57790);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F1778, 0x277D57748);
  sub_266ECAF2C(&qword_2800F1770, &qword_2800F1778, 0x277D57748);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026743CA60);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F1840, 0x277D57798);
  sub_266ECAF2C(&qword_2800F1848, &qword_2800F1840, 0x277D57798);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F6974616E6F64, 0xEF747865746E6F43);
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
  sub_266ECB128(&unk_2878861E8);
  return sub_2673811CC();
}

uint64_t sub_266FBDA94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FBDB2C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FBDBF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBDC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FBDCBC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1850, &qword_2800F1858, 0x277D57788);
  a1[2] = sub_266ECAF2C(&qword_2800F1860, &qword_2800F1858, 0x277D57788);
  result = sub_266ECAF2C(&qword_2800F1868, &qword_2800F1858, 0x277D57788);
  a1[3] = result;
  return result;
}

uint64_t static FLSchemaFLClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 1682533478, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682533478, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287886220);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FBE050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBE0B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLEvaluationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743CAE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026743CB00, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026743CB30, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026743CB60, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x800000026743CB90, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x800000026743CBC0, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x800000026743CBF0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000029, 0x800000026743CC20, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x800000026743CC50, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266FBE618(uint64_t a1)
{
  v2 = sub_266FBE71C(&qword_2800F1880);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBE680(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBE71C(&qword_2800F1880);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBE71C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLEvaluationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLEvaluationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743CCB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026743CCD0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026743CCF0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FBE978(uint64_t a1)
{
  v2 = sub_266FBEA7C(&qword_2800F1888);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBE9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBEA7C(&qword_2800F1888);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBEA7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLEvaluationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLEvaluationVote.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743CD40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026743CD60, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x800000026743CD80, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026743CDA0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FBED48(uint64_t a1)
{
  v2 = sub_266FBEE4C(&qword_2800F1898);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBEDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBEE4C(&qword_2800F1898);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBEE4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLEvaluationVote(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLEvaluator.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x800000026743CDF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026743CE10, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x800000026743CE30, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x800000026743CE50, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026743CE70, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x800000026743CE90, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_266FBF1F8(uint64_t a1)
{
  v2 = sub_266FBF2FC(&qword_2800F18A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBF260(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBF2FC(&qword_2800F18A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBF2FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLEvaluator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLInteractionDonationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F18B0, 0x277D577A8);
  sub_266ECAF2C(&qword_2800F18B8, &qword_2800F18B0, 0x277D577A8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F18C0, 0x277D577A0);
  sub_266ECAF2C(&qword_2800F18C8, &qword_2800F18C0, 0x277D577A0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
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

uint64_t sub_266FBF85C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBF8C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLInteractionDonationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v32 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E518];
  v11 = *(v2 + 104);
  v31 = v1;
  v11(v5, v10, v1);
  v29 = v2 + 104;
  v30 = v11;
  v33[0] = 1;
  sub_26738114C();
  v26 = sub_26738116C();
  v12 = *(v26 - 8);
  v13 = *(v12 + 56);
  v27 = v12 + 56;
  v13(v9, 0, 1, v26);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574756C6F736261, 0xEC000000656D6954);
  v14(v33, 0);
  v11(v5, v10, v1);
  v33[0] = 1;
  sub_26738114C();
  v15 = v26;
  v28 = v13;
  v13(v9, 0, 1, v26);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F6974616E6F64, 0xEC000000656D6954);
  v16(v33, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v13(v9, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69737365536669, 0xEB0000000064496ELL);
  v17(v33, 0);
  v30(v5, *MEMORY[0x277D3E538], v31);
  v33[0] = 1;
  sub_26738114C();
  v18 = v28;
  v28(v9, 0, 1, v15);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026743C450);
  v19(v33, 0);
  type metadata accessor for FLSchemaFLTrigger(0);
  sub_266FC0208();
  sub_26738120C();
  v18(v9, 0, 1, v15);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F6974616E6F64, 0xEF72656767697254);
  v20(v33, 0);
  v30(v5, *MEMORY[0x277D3E4E8], v31);
  v33[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v15);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C707554736177, 0xEF646574616E6F44);
  v21(v33, 0);
  sub_266ECB294(0, &qword_2800F18D8, 0x277D577D8);
  sub_266ECAF2C(&qword_2800F18E0, &qword_2800F18D8, 0x277D577D8);
  sub_26738120C();
  v18(v9, 0, 1, v15);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C707574, 0xE500000000000000);
  v22(v33, 0);
  sub_266ECB294(0, &qword_2800F1818, 0x277D57780);
  sub_266ECAF2C(&qword_2800F1810, &qword_2800F1818, 0x277D57780);
  sub_26738122C();
  v18(v9, 0, 1, v15);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x74616469646E6163, 0xEA00000000007365);
  return v23(v33, 0);
}

uint64_t sub_266FC0144(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC01A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC0208()
{
  result = qword_2800F18D0;
  if (!qword_2800F18D0)
  {
    type metadata accessor for FLSchemaFLTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F18D0);
  }

  return result;
}

uint64_t static FLSchemaFLInteractionDonationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FC04EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC0550(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC05B4()
{
  result = qword_2800F18B8;
  if (!qword_2800F18B8)
  {
    sub_266FC060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F18B8);
  }

  return result;
}

unint64_t sub_266FC060C()
{
  result = qword_2800F18B0;
  if (!qword_2800F18B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F18B0);
  }

  return result;
}

uint64_t static FLSchemaFLParameterCandidateCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6574656D61726170, 0xEF6449656D614E72);
  return v5(v7, 0);
}

uint64_t sub_266FC0838()
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
  sub_266EC637C(v3, 0x6574656D61726170, 0xEF6449656D614E72);
  return v5(v7, 0);
}

uint64_t sub_266FC09E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC0A44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLTaskEvaluation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLSchemaFLActionResolutionState(0);
  sub_266FC0F14();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026743CFE0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F18E8, 0x277D577C8);
  sub_266ECAF2C(&qword_2800F18F0, &qword_2800F18E8, 0x277D577C8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6374754F6B736174, 0xEB00000000656D6FLL);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F18F8, 0x277D577C0);
  sub_266ECAF2C(&qword_2800F1900, &qword_2800F18F8, 0x277D577C0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461756C617665, 0xEF7365646F4E6E6FLL);
  return v8(v10, 0);
}

uint64_t sub_266FC0E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC0EB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC0F14()
{
  result = qword_2800F17A8;
  if (!qword_2800F17A8)
  {
    type metadata accessor for FLSchemaFLActionResolutionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F17A8);
  }

  return result;
}

uint64_t static FLSchemaFLTaskEvaluationNode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLSchemaFLEvaluator(0);
  sub_266FC141C(&qword_2800F18A0, type metadata accessor for FLSchemaFLEvaluator);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F7461756C617665, 0xE900000000000072);
  v6(v10, 0);
  type metadata accessor for FLSchemaFLEvaluationVote(0);
  sub_266FC141C(&qword_2800F1890, type metadata accessor for FLSchemaFLEvaluationVote);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  v7(v10, 0);
  type metadata accessor for FLSchemaFLEvaluationSource(0);
  sub_266FC141C(&qword_2800F1878, type metadata accessor for FLSchemaFLEvaluationSource);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656372756F73, 0xE700000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FC1310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC1374(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC141C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC1464()
{
  result = qword_2800F18F8;
  if (!qword_2800F18F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F18F8);
  }

  return result;
}

uint64_t static FLSchemaFLTaskOutcome.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLSchemaFLTaskStatus(0);
  sub_266FC1870(&qword_2800F1908, type metadata accessor for FLSchemaFLTaskStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746174536B736174, 0xEA00000000007375);
  v6(v9, 0);
  type metadata accessor for FLSchemaFLTaskPromptStatus(0);
  sub_266FC1870(&qword_2800F1910, type metadata accessor for FLSchemaFLTaskPromptStatus);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x745374706D6F7270, 0xEC00000073757461);
  return v7(v9, 0);
}

uint64_t sub_266FC1764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC17C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC1870(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC18B8()
{
  result = qword_2800F18E8;
  if (!qword_2800F18E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F18E8);
  }

  return result;
}

uint64_t static FLSchemaFLTaskPromptStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743D090, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026743D0B0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026743D0D0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x800000026743D100, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x800000026743D130, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FC1BF8(uint64_t a1)
{
  v2 = sub_266FC1CFC(&qword_2800F1918);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC1C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC1CFC(&qword_2800F1918);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC1CFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLTaskPromptStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLTaskStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026743D190, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026743D1B0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026743D1D0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x800000026743D1F0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026743D220, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x800000026743D250, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x800000026743D280, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x800000026743D2A0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x800000026743D2C0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266FC21F8(uint64_t a1)
{
  v2 = sub_266FC22FC(&qword_2800F1920);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC2260(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC22FC(&qword_2800F1920);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC22FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLTaskStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLToolCandidateCategory.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FC2588(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC25EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC2650()
{
  result = qword_2800F17C0;
  if (!qword_2800F17C0)
  {
    sub_266FC26A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F17C0);
  }

  return result;
}

unint64_t sub_266FC26A8()
{
  result = qword_2800F17B8;
  if (!qword_2800F17B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F17B8);
  }

  return result;
}

uint64_t static FLSchemaFLTrigger.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x800000026743D340, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026743D360, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026743D380, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026743D3A0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FC2978(uint64_t a1)
{
  v2 = sub_266FC2A7C(&qword_2800F1928);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC29E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC2A7C(&qword_2800F1928);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC2A7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLTupleInteraction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F17E8, 0x277D57778);
  sub_266ECAF2C(&qword_2800F17F0, &qword_2800F17E8, 0x277D57778);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x696669746E656469, 0xEB00000000737265);
  v6(v9, 0);
  type metadata accessor for FLSchemaFLUserAlignmentCategory(0);
  sub_266FBC960();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6E67696C61, 0xE900000000000074);
  return v7(v9, 0);
}

uint64_t sub_266FC2D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC2DB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLUserAlignmentCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026743D420, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026743D440, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026743D470, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x800000026743D4A0, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026743D4D0, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x800000026743D500, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x800000026743D530, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000003ELL, 0x800000026743D560, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x800000026743D5A0, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000028, 0x800000026743D5D0, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000028, 0x800000026743D600, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_266FC3408(uint64_t a1)
{
  v2 = sub_266FC350C(&qword_2800F1930);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC3470(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC350C(&qword_2800F1930);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC350C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLUserAlignmentCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATAccountType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026743D660, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026743D680, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x800000026743D6A0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x800000026743D6C0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FC37D8(uint64_t a1)
{
  v2 = sub_266FC38DC(&qword_2800F1940);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC3840(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC38DC(&qword_2800F1940);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC38DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATAccountType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATAppIntentName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743D710, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000038, 0x800000026743D730, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x800000026743D770, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x800000026743D7A0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FC3BA4(uint64_t a1)
{
  v2 = sub_266FC3CA8(&qword_2800F1950);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC3C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC3CA8(&qword_2800F1950);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC3CA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATAppIntentName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1958, 0x277D577E8);
  sub_266ECAF2C(&qword_2800F1960, &qword_2800F1958, 0x277D577E8);
  sub_26738120C();
  v9 = sub_26738116C();
  v44 = *(v9 - 8);
  v10 = *(v44 + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v46, 0);
  sub_266ECB294(0, &qword_2800F1968, 0x277D578D0);
  sub_266ECAF2C(&qword_2800F1970, &qword_2800F1968, 0x277D578D0);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x4374736575716572, 0xEE00747865746E6FLL);
  v12(v46, 0);
  sub_266ECB294(0, &qword_2800F1978, 0x277D57868);
  sub_266ECAF2C(&qword_2800F1980, &qword_2800F1978, 0x277D57868);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026743D810);
  v13(v46, 0);
  sub_266ECB294(0, &qword_2800F1988, 0x277D57808);
  sub_266ECAF2C(&qword_2800F1990, &qword_2800F1988, 0x277D57808);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026743D830);
  v14(v46, 0);
  sub_266ECB294(0, &qword_2800F1998, 0x277D57828);
  sub_266ECAF2C(&qword_2800F19A0, &qword_2800F1998, 0x277D57828);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026743D850);
  v15(v46, 0);
  sub_266ECB294(0, &qword_2800F19A8, 0x277D57848);
  sub_266ECAF2C(&qword_2800F19B0, &qword_2800F19A8, 0x277D57848);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026743D870);
  v16(v46, 0);
  sub_266ECB294(0, &qword_2800F19B8, 0x277D578A8);
  sub_266ECAF2C(&qword_2800F19C0, &qword_2800F19B8, 0x277D578A8);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026743D890);
  v17(v46, 0);
  sub_266ECB294(0, &qword_2800F19C8, 0x277D578A0);
  sub_266ECAF2C(&qword_2800F19D0, &qword_2800F19C8, 0x277D578A0);
  v43 = a1;
  sub_26738121C();
  v42 = v10;
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026743D8B0);
  v18(v46, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v45, 0xD000000000000013, 0x800000026743D8B0);
  v21 = *(v44 + 48);
  v44 += 48;
  if (!v21(v22, 1, v9))
  {
    sub_266ECB128(&unk_287886250);
    sub_26738115C();
  }

  (v20)(v45, 0);
  v19(v46, 0);
  sub_266ECB294(0, &qword_2800F19D8, 0x277D577F8);
  sub_266ECAF2C(&qword_2800F19E0, &qword_2800F19D8, 0x277D577F8);
  sub_26738121C();
  v42(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x800000026743D8D0);
  v23(v46, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v45, 0xD00000000000001DLL, 0x800000026743D8D0);
  if (!v21(v26, 1, v9))
  {
    sub_266ECB128(&unk_287886278);
    sub_26738115C();
  }

  (v25)(v45, 0);
  v24(v46, 0);
  sub_266ECB294(0, &qword_2800F19E8, 0x277D577F0);
  sub_266ECAF2C(&qword_2800F19F0, &qword_2800F19E8, 0x277D577F0);
  sub_26738121C();
  v27 = v42;
  v42(v8, 0, 1, v9);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026743D8F0);
  v28(v46, 0);
  sub_266ECB294(0, &qword_2800F19F8, 0x277D57800);
  sub_266ECAF2C(&qword_2800F1A00, &qword_2800F19F8, 0x277D57800);
  sub_26738121C();
  v27(v8, 0, 1, v9);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026743D910);
  v29(v46, 0);
  v30 = v39;
  sub_26738117C();
  v31 = sub_2673811BC();
  v33 = v32;
  v34 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_266ECAD54(0, v34[2] + 1, 1, v34);
    *v33 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_266ECAD54(v36 > 1, v37 + 1, 1, v34);
    *v33 = v34;
  }

  v34[2] = v37 + 1;
  (*(v40 + 32))(v34 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v37, v30, v41);
  v31(v46, 0);
  sub_266ECB128(&unk_2878862A0);
  return sub_2673811CC();
}

uint64_t sub_266FC4A00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FC4A98()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FC4B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC4BC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC4C28(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1A08, &qword_2800F1A10, 0x277D577E0);
  a1[2] = sub_266ECAF2C(&qword_2800F1A18, &qword_2800F1A10, 0x277D577E0);
  result = sub_266ECAF2C(&qword_2800F1A20, &qword_2800F1A10, 0x277D577E0);
  a1[3] = result;
  return result;
}

uint64_t static GATSchemaGATClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449746167, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449746167, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878862D8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FC4FC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC5024(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATConfirmationDialogName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026743D9A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x800000026743D9D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026743DA10, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026743DA40, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FC5350(uint64_t a1)
{
  v2 = sub_266FC5454(&qword_2800F1A38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC53B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC5454(&qword_2800F1A38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC5454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATConfirmationDialogName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATConfirmationSnippetOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026743DAB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026743DAE0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026743DB10, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x800000026743DB40, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FC5720(uint64_t a1)
{
  v2 = sub_266FC5824(&qword_2800F1A48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC5788(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC5824(&qword_2800F1A48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC5824(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATConfirmationSnippetOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATConfirmationSnippetPresented.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationDialogName(0);
  sub_266FC5C2C(&qword_2800F1A30, type metadata accessor for GATSchemaGATConfirmationDialogName);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026743DBB0);
  v6(v9, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_266FC5C2C(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574736575716572, 0xEE00746E65674164);
  return v7(v9, 0);
}

uint64_t sub_266FC5B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC5B84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC5C2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC5C74()
{
  result = qword_2800F19E8;
  if (!qword_2800F19E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F19E8);
  }

  return result;
}

uint64_t static GATSchemaGATConfirmationSnippetUserActioned.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationSnippetOutcome(0);
  sub_266FC6114(&qword_2800F1A40, type metadata accessor for GATSchemaGATConfirmationSnippetOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FC5E80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationSnippetOutcome(0);
  sub_266FC6114(&qword_2800F1A40, type metadata accessor for GATSchemaGATConfirmationSnippetOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FC6008(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC606C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC6114(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC615C()
{
  result = qword_2800F19F8;
  if (!qword_2800F19F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F19F8);
  }

  return result;
}

uint64_t static GATSchemaGATConfirmationSnippetUserActionEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationSnippetOutcome(0);
  sub_266FC64A8(&qword_2800F1A40, type metadata accessor for GATSchemaGATConfirmationSnippetOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287886308);
  return sub_2673811CC();
}

uint64_t sub_266FC639C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC6400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC64A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC64F0()
{
  result = qword_2800F19D8;
  if (!qword_2800F19D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F19D8);
  }

  return result;
}

uint64_t static GATSchemaGATCreateSessionContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1A58, 0x277D57820);
  sub_266ECAF2C(&qword_2800F1A60, &qword_2800F1A58, 0x277D57820);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F1A68, 0x277D57810);
  sub_266ECAF2C(&qword_2800F1A70, &qword_2800F1A68, 0x277D57810);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F1A78, 0x277D57818);
  sub_266ECAF2C(&qword_2800F1A80, &qword_2800F1A78, 0x277D57818);
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

uint64_t sub_266FC6A54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC6AB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATCreateSessionEventEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FC6DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC6E08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC6E6C()
{
  result = qword_2800F1A70;
  if (!qword_2800F1A70)
  {
    sub_266FC6EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1A70);
  }

  return result;
}

unint64_t sub_266FC6EC4()
{
  result = qword_2800F1A68;
  if (!qword_2800F1A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1A68);
  }

  return result;
}

uint64_t static GATSchemaGATCreateSessionEventFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FC7350(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain);
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

uint64_t sub_266FC7244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC72A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC7350(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC7398()
{
  result = qword_2800F1A78;
  if (!qword_2800F1A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1A78);
  }

  return result;
}

uint64_t static GATSchemaGATCreateSessionEventStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FC762C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC7690(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC76F4()
{
  result = qword_2800F1A60;
  if (!qword_2800F1A60)
  {
    sub_266FC774C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1A60);
  }

  return result;
}

unint64_t sub_266FC774C()
{
  result = qword_2800F1A58;
  if (!qword_2800F1A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1A58);
  }

  return result;
}

uint64_t static GATSchemaGATErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026743DD70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x800000026743DD90, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026743DDD0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026743DE00, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x800000026743DE20, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x800000026743DE40, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x800000026743DE70, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000027, 0x800000026743DEA0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000012, 0x800000026743DED0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_266FC7C50(uint64_t a1)
{
  v2 = sub_266FC7D54(&qword_2800F1A90);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC7CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC7D54(&qword_2800F1A90);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC7D54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATGenerativeRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1A98, 0x277D57840);
  sub_266ECAF2C(&qword_2800F1AA0, &qword_2800F1A98, 0x277D57840);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F1AA8, 0x277D57830);
  sub_266ECAF2C(&qword_2800F1AB0, &qword_2800F1AA8, 0x277D57830);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F1AB8, 0x277D57838);
  sub_266ECAF2C(&qword_2800F1AC0, &qword_2800F1AB8, 0x277D57838);
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

uint64_t sub_266FC82B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC8314(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATGenerativeRequestEventEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FC8600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC8664(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC86C8()
{
  result = qword_2800F1AB0;
  if (!qword_2800F1AB0)
  {
    sub_266FC8720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1AB0);
  }

  return result;
}

unint64_t sub_266FC8720()
{
  result = qword_2800F1AA8;
  if (!qword_2800F1AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1AA8);
  }

  return result;
}

uint64_t static GATSchemaGATGenerativeRequestEventFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FC8BAC(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain);
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

uint64_t sub_266FC8AA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC8B04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC8BAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC8BF4()
{
  result = qword_2800F1AB8;
  if (!qword_2800F1AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1AB8);
  }

  return result;
}

uint64_t static GATSchemaGATGenerativeRequestEventStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATUsecase(0);
  sub_266FC9238(&qword_2800F1AC8, type metadata accessor for GATSchemaGATUsecase);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x65736163657375, 0xE700000000000000);
  v9(v19, 0);
  type metadata accessor for GATSchemaGATMediaQnAUseCase(0);
  sub_266FC9238(&qword_2800F1AD0, type metadata accessor for GATSchemaGATMediaQnAUseCase);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x554151616964656DLL, 0xEE00657361436573);
  v10(v19, 0);
  type metadata accessor for GATSchemaGATLLMAgent(0);
  sub_266FC9238(&qword_2800F1AD8, type metadata accessor for GATSchemaGATLLMAgent);
  v17[1] = a1;
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x746E6567416D6C6CLL, 0xEC000000656D614ELL);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x746E6567416D6C6CLL, 0xEC000000656D614ELL);
  if (!(*(v7 + 48))(v14, 1, v6))
  {
    sub_266ECB128(&unk_287886330);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_266FC9238(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x65674149416E6567, 0xEE0064657355746ELL);
  return v15(v19, 0);
}

uint64_t sub_266FC912C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC9190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC9238(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC9280()
{
  result = qword_2800F1A98;
  if (!qword_2800F1A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1A98);
  }

  return result;
}

uint64_t static GATSchemaGATImageResizingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1AE0, 0x277D57860);
  sub_266ECAF2C(&qword_2800F1AE8, &qword_2800F1AE0, 0x277D57860);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F1AF0, 0x277D57850);
  sub_266ECAF2C(&qword_2800F1AF8, &qword_2800F1AF0, 0x277D57850);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F1B00, 0x277D57858);
  sub_266ECAF2C(&qword_2800F1B08, &qword_2800F1B00, 0x277D57858);
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

uint64_t sub_266FC97E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC9848(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATImageResizingEventEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GATSchemaGATMediaType(0);
  sub_266FC9D30(&qword_2800F1B10, type metadata accessor for GATSchemaGATMediaType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026743E060);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E518], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026743E080);
  return v11(v15, 0);
}

uint64_t sub_266FC9C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC9C88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC9D30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FC9D78()
{
  result = qword_2800F1AF0;
  if (!qword_2800F1AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1AF0);
  }

  return result;
}

uint64_t static GATSchemaGATImageResizingEventFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FCA204(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain);
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

uint64_t sub_266FCA0F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCA15C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCA204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FCA24C()
{
  result = qword_2800F1B00;
  if (!qword_2800F1B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B00);
  }

  return result;
}

uint64_t static GATSchemaGATImageResizingEventStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FCA4E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCA544(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCA5A8()
{
  result = qword_2800F1AE8;
  if (!qword_2800F1AE8)
  {
    sub_266FCA600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1AE8);
  }

  return result;
}

unint64_t sub_266FCA600()
{
  result = qword_2800F1AE0;
  if (!qword_2800F1AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1AE0);
  }

  return result;
}

uint64_t static GATSchemaGATLLMAgent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x800000026743E150, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026743E170, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_266FCA7F0(uint64_t a1)
{
  v2 = sub_266FCA8F4(&qword_2800F1B18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FCA858(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FCA8F4(&qword_2800F1B18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FCA8F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATLLMAgent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATLoadScreenContentContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1B20, 0x277D57880);
  sub_266ECAF2C(&qword_2800F1B28, &qword_2800F1B20, 0x277D57880);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F1B30, 0x277D57870);
  sub_266ECAF2C(&qword_2800F1B38, &qword_2800F1B30, 0x277D57870);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F1B40, 0x277D57878);
  sub_266ECAF2C(&qword_2800F1B48, &qword_2800F1B40, 0x277D57878);
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

uint64_t sub_266FCAE50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCAEB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATLoadScreenContentEventEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GATSchemaGATMediaType(0);
  sub_266FCB398(&qword_2800F1B10, type metadata accessor for GATSchemaGATMediaType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026743E210);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E518], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026743E230);
  return v11(v15, 0);
}

uint64_t sub_266FCB28C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCB2F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCB398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FCB3E0()
{
  result = qword_2800F1B30;
  if (!qword_2800F1B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B30);
  }

  return result;
}

uint64_t static GATSchemaGATLoadScreenContentEventFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FCB86C(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain);
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

uint64_t sub_266FCB760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCB7C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCB86C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FCB8B4()
{
  result = qword_2800F1B40;
  if (!qword_2800F1B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B40);
  }

  return result;
}

uint64_t static GATSchemaGATLoadScreenContentEventStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FCBB48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCBBAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCBC10()
{
  result = qword_2800F1B28;
  if (!qword_2800F1B28)
  {
    sub_266FCBC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1B28);
  }

  return result;
}

unint64_t sub_266FCBC68()
{
  result = qword_2800F1B20;
  if (!qword_2800F1B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B20);
  }

  return result;
}

uint64_t static GATSchemaGATMediaQnAUseCase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743E300, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026743E320, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026743E340, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x800000026743E370, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026743E390, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FCBFAC(uint64_t a1)
{
  v2 = sub_266FCC0B0(&qword_2800F1B50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FCC014(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FCC0B0(&qword_2800F1B50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FCC0B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATMediaQnAUseCase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATMediaType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026743E3F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x800000026743E410, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x800000026743E430, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x800000026743E450, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000010, 0x800000026743E470, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000010, 0x800000026743E490, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x800000026743E4B0, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x800000026743E4D0, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000010, 0x800000026743E4F0, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000010, 0x800000026743E510, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000010, 0x800000026743E530, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000010, 0x800000026743E550, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_266FCC718(uint64_t a1)
{
  v2 = sub_266FCC81C(&qword_2800F1B58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FCC780(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FCC81C(&qword_2800F1B58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FCC81C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATMediaType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATPnRMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_26738113C();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v44);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v46 = *MEMORY[0x277D3E518];
  v10 = *(v2 + 104);
  v10(v5);
  v11 = v2 + 104;
  v42 = v10;
  v47[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v41 = *(v13 + 56);
  v43 = v13 + 56;
  v41(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x800000026743E5A0);
  v14(v47, 0);
  v38 = "DurationInSeconds";
  v15 = v46;
  (v10)(v5, v46, v44);
  v47[0] = 1;
  sub_26738114C();
  v16 = v41;
  v41(v9, 0, 1, v12);
  v45 = a1;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v38 | 0x8000000000000000);
  v17(v47, 0);
  v38 = "tDurationInSeconds";
  v18 = v15;
  v19 = v42;
  (v42)(v5, v18, v44);
  v39 = v11;
  v47[0] = 1;
  sub_26738114C();
  v16(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000022, v38 | 0x8000000000000000);
  v20(v47, 0);
  v38 = "tDurationInSeconds";
  v21 = v46;
  v22 = v44;
  (v19)(v5, v46, v44);
  v47[0] = 1;
  sub_26738114C();
  v23 = v41;
  v41(v9, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v38 | 0x8000000000000000);
  v24(v47, 0);
  v38 = "imageResizingDurationInSeconds";
  (v19)(v5, v21, v22);
  v47[0] = 1;
  sub_26738114C();
  v40 = v12;
  v23(v9, 0, 1, v12);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v38 | 0x8000000000000000);
  v25(v47, 0);
  v38 = "registerMediaDurationInSeconds";
  v26 = v46;
  v27 = v42;
  (v42)(v5, v46, v22);
  v47[0] = 1;
  sub_26738114C();
  v28 = v41;
  v41(v9, 0, 1, v12);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v38 | 0x8000000000000000);
  v29(v47, 0);
  v38 = "tRateKBsPerSecond";
  v27(v5, v26, v22);
  v47[0] = 1;
  sub_26738114C();
  v30 = v40;
  v28(v9, 0, 1, v40);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v38 | 0x8000000000000000);
  v31(v47, 0);
  v38 = "registerMediaRateKBsPerSecond";
  v32 = v44;
  v33 = v42;
  (v42)(v5, *MEMORY[0x277D3E538], v44);
  v47[0] = 1;
  sub_26738114C();
  v28(v9, 0, 1, v30);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v38 | 0x8000000000000000);
  v34(v47, 0);
  (v33)(v5, v46, v32);
  v47[0] = 1;
  sub_26738114C();
  v28(v9, 0, 1, v40);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x800000026743E6E0);
  return v35(v47, 0);
}

uint64_t sub_266FCD140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCD1A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCD208()
{
  result = qword_2800F1B60;
  if (!qword_2800F1B60)
  {
    sub_266FCD260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1B60);
  }

  return result;
}

unint64_t sub_266FCD260()
{
  result = qword_2800F1B68;
  if (!qword_2800F1B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B68);
  }

  return result;
}

uint64_t static GATSchemaGATPresentConfirmationSnippetEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationDialogName(0);
  sub_266FCD684(&qword_2800F1A30, type metadata accessor for GATSchemaGATConfirmationDialogName);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026743DBB0);
  v6(v9, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_266FCD684(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574736575716572, 0xEE00746E65674164);
  v7(v9, 0);
  sub_266ECB128(&unk_287886358);
  return sub_2673811CC();
}

uint64_t sub_266FCD578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCD5DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCD684(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FCD6CC()
{
  result = qword_2800F19C8;
  if (!qword_2800F19C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F19C8);
  }

  return result;
}

uint64_t static GATSchemaGATRegisterMediaContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1B70, 0x277D578C0);
  sub_266ECAF2C(&qword_2800F1B78, &qword_2800F1B70, 0x277D578C0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F1B80, 0x277D578B0);
  sub_266ECAF2C(&qword_2800F1B88, &qword_2800F1B80, 0x277D578B0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F1B90, 0x277D578B8);
  sub_266ECAF2C(&qword_2800F1B98, &qword_2800F1B90, 0x277D578B8);
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

uint64_t sub_266FCDC30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCDC94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATRegisterMediaEventEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FCDF80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCDFE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCE048()
{
  result = qword_2800F1B88;
  if (!qword_2800F1B88)
  {
    sub_266FCE0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1B88);
  }

  return result;
}

unint64_t sub_266FCE0A0()
{
  result = qword_2800F1B80;
  if (!qword_2800F1B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B80);
  }

  return result;
}

uint64_t static GATSchemaGATRegisterMediaEventFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FCE52C(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain);
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

uint64_t sub_266FCE420(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCE484(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCE52C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FCE574()
{
  result = qword_2800F1B90;
  if (!qword_2800F1B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B90);
  }

  return result;
}

uint64_t static GATSchemaGATRegisterMediaEventStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FCE808(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCE86C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCE8D0()
{
  result = qword_2800F1B78;
  if (!qword_2800F1B78)
  {
    sub_266FCE928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1B78);
  }

  return result;
}

unint64_t sub_266FCE928()
{
  result = qword_2800F1B70;
  if (!qword_2800F1B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B70);
  }

  return result;
}

uint64_t static GATSchemaGATRequestCanceled.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FCEBBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCEC20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCEC84()
{
  result = qword_2800F1BA0;
  if (!qword_2800F1BA0)
  {
    sub_266FCECDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1BA0);
  }

  return result;
}

unint64_t sub_266FCECDC()
{
  result = qword_2800F1BA8;
  if (!qword_2800F1BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1BA8);
  }

  return result;
}

uint64_t static GATSchemaGATRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F1BB0, 0x277D578F0);
  sub_266ECAF2C(&qword_2800F1BB8, &qword_2800F1BB0, 0x277D578F0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800F1BC0, 0x277D578D8);
  sub_266ECAF2C(&qword_2800F1BC8, &qword_2800F1BC0, 0x277D578D8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F1BD0, 0x277D578E0);
  sub_266ECAF2C(&qword_2800F1BD8, &qword_2800F1BD0, 0x277D578E0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F1BA8, 0x277D578C8);
  sub_266ECAF2C(&qword_2800F1BA0, &qword_2800F1BA8, 0x277D578C8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C65636E6163, 0xE800000000000000);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F1BE0, 0x277D578E8);
  sub_266ECAF2C(&qword_2800F1BE8, &qword_2800F1BE0, 0x277D578E8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = v24;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x66666F646E6168, 0xE700000000000000);
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

uint64_t sub_266FCF3D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCF438(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATRequestEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1B68, 0x277D57898);
  sub_266ECAF2C(&qword_2800F1B60, &qword_2800F1B68, 0x277D57898);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7274654D66726570, 0xEB00000000736369);
  return v5(v7, 0);
}

uint64_t sub_266FCF6B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1B68, 0x277D57898);
  sub_266ECAF2C(&qword_2800F1B60, &qword_2800F1B68, 0x277D57898);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7274654D66726570, 0xEB00000000736369);
  return v5(v7, 0);
}

uint64_t sub_266FCF85C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCF8C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FCFDA4(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain);
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

uint64_t sub_266FCFC98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCFCFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCFDA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FCFDEC()
{
  result = qword_2800F1BD0;
  if (!qword_2800F1BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1BD0);
  }

  return result;
}

uint64_t static GATSchemaGATRequestHandoff.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7473697865, 0xE500000000000000);
  return v10(v12, 0);
}

uint64_t sub_266FD0080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD00E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD0148()
{
  result = qword_2800F1BE8;
  if (!qword_2800F1BE8)
  {
    sub_266FD01A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1BE8);
  }

  return result;
}

unint64_t sub_266FD01A0()
{
  result = qword_2800F1BE0;
  if (!qword_2800F1BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1BE0);
  }

  return result;
}

uint64_t static GATSchemaGATRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x7254746E65696C63, 0xED00006449656361);
  v6(v9, 0);
  type metadata accessor for GATSchemaGATAppIntentName(0);
  sub_266FD0550();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65746E49707061, 0xED0000656D614E74);
  return v7(v9, 0);
}

uint64_t sub_266FD048C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD04F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD0550()
{
  result = qword_2800F1948;
  if (!qword_2800F1948)
  {
    type metadata accessor for GATSchemaGATAppIntentName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1948);
  }

  return result;
}

uint64_t static GATSchemaGATUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x800000026743E980, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x800000026743E9A0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026743E9C0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x800000026743E9E0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026743EA00, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026743EA20, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x800000026743EA50, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_266FD09C4(uint64_t a1)
{
  v2 = sub_266FD0AC8(&qword_2800F1BF0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD0A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD0AC8(&qword_2800F1BF0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD0AC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSCaller.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x800000026743EAA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026743EAC0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026743EAF0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000036, 0x800000026743EB20, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x800000026743EB60, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FD0E00(uint64_t a1)
{
  v2 = sub_266FD0F04(&qword_2800F1C00);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD0E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD0F04(&qword_2800F1C00);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD0F04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSCaller(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
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
  sub_266ECB294(0, &qword_2800F1C08, 0x277D57900);
  sub_266ECAF2C(&qword_2800F1C10, &qword_2800F1C08, 0x277D57900);
  v23 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800F1C18, 0x277D57908);
  sub_266ECAF2C(&qword_2800F1C20, &qword_2800F1C18, 0x277D57908);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026743EBC0);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F1C28, 0x277D57930);
  sub_266ECAF2C(&qword_2800F1C30, &qword_2800F1C28, 0x277D57930);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026743EBE0);
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
  sub_266ECB128(&unk_287886380);
  return sub_2673811CC();
}

uint64_t sub_266FD1458(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FD14F0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FD15BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD1620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD1680(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1C38, &qword_2800F1C40, 0x277D578F8);
  a1[2] = sub_266ECAF2C(&qword_2800F1C48, &qword_2800F1C40, 0x277D578F8);
  result = sub_266ECAF2C(&qword_2800F1C50, &qword_2800F1C40, 0x277D578F8);
  a1[3] = result;
  return result;
}

uint64_t static GMSSchemaGMSClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449736D67, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449736D67, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878863B8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FD1A18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD1A7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GMSSchemaGMSErrorDomain.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v296 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026743EC60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v296;

  v1(v345, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v297 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x800000026743EC80, v11);
  v12 = *v9;
  *v9 = v297;

  v7(v345, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v298 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000049, 0x800000026743ECC0, v17);
  v18 = *v15;
  *v15 = v298;

  v13(v345, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v299 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003BLL, 0x800000026743ED10, v23);
  v24 = *v21;
  *v21 = v299;

  v19(v345, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v300 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000036, 0x800000026743ED50, v29);
  v30 = *v27;
  *v27 = v300;

  v25(v345, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v301 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000033, 0x800000026743ED90, v35);
  v36 = *v33;
  *v33 = v301;

  v31(v345, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v302 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000031, 0x800000026743EDD0, v41);
  v42 = *v39;
  *v39 = v302;

  v37(v345, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v303 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000005BLL, 0x800000026743EE10, v47);
  v48 = *v45;
  *v45 = v303;

  v43(v345, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v304 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x800000026743EE70, v53);
  v54 = *v51;
  *v51 = v304;

  v49(v345, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v305 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000005FLL, 0x800000026743EEA0, v59);
  v60 = *v57;
  *v57 = v305;

  v55(v345, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v306 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000063, 0x800000026743EF00, v65);
  v66 = *v63;
  *v63 = v306;

  v61(v345, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v307 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000004DLL, 0x800000026743EF70, v71);
  v72 = *v69;
  *v69 = v307;

  v67(v345, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v308 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000047, 0x800000026743EFC0, v77);
  v78 = *v75;
  *v75 = v308;

  v73(v345, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v309 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000046, 0x800000026743F010, v83);
  v84 = *v81;
  *v81 = v309;

  v79(v345, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v310 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000005DLL, 0x800000026743F060, v89);
  v90 = *v87;
  *v87 = v310;

  v85(v345, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v311 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000005CLL, 0x800000026743F0C0, v95);
  v96 = *v93;
  *v93 = v311;

  v91(v345, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v312 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000005BLL, 0x800000026743F120, v101);
  v102 = *v99;
  *v99 = v312;

  v97(v345, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v313 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000050, 0x800000026743F180, v107);
  v108 = *v105;
  *v105 = v313;

  v103(v345, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v314 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000059, 0x800000026743F1E0, v113);
  v114 = *v111;
  *v111 = v314;

  v109(v345, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v315 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000051, 0x800000026743F240, v119);
  v120 = *v117;
  *v117 = v315;

  v115(v345, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v316 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000046, 0x800000026743F2A0, v125);
  v126 = *v123;
  *v123 = v316;

  v121(v345, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v317 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000058, 0x800000026743F2F0, v131);
  v132 = *v129;
  *v129 = v317;

  v127(v345, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v318 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000004FLL, 0x800000026743F350, v137);
  v138 = *v135;
  *v135 = v318;

  v133(v345, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v319 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000064, 0x800000026743F3A0, v143);
  v144 = *v141;
  *v141 = v319;

  v139(v345, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v320 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000064, 0x800000026743F410, v149);
  v150 = *v147;
  *v147 = v320;

  v145(v345, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v321 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000064, 0x800000026743F480, v155);
  v156 = *v153;
  *v153 = v321;

  v151(v345, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v322 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000005DLL, 0x800000026743F4F0, v161);
  v162 = *v159;
  *v159 = v322;

  v157(v345, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v323 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000030, 0x800000026743F550, v167);
  v168 = *v165;
  *v165 = v323;

  v163(v345, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v324 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000047, 0x800000026743F590, v173);
  v174 = *v171;
  *v171 = v324;

  v169(v345, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v325 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000004FLL, 0x800000026743F5E0, v179);
  v180 = *v177;
  *v177 = v325;

  v175(v345, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v326 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000049, 0x800000026743F630, v185);
  v186 = *v183;
  *v183 = v326;

  v181(v345, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v327 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000048, 0x800000026743F680, v191);
  v192 = *v189;
  *v189 = v327;

  v187(v345, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v328 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000051, 0x800000026743F6D0, v197);
  v198 = *v195;
  *v195 = v328;

  v193(v345, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v329 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000021, 0x800000026743F730, v203);
  v204 = *v201;
  *v201 = v329;

  v199(v345, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v330 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000049, 0x800000026743F760, v209);
  v210 = *v207;
  *v207 = v330;

  v205(v345, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v331 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000051, 0x800000026743F7B0, v215);
  v216 = *v213;
  *v213 = v331;

  v211(v345, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000047, 0x800000026743F810, v221);
  v222 = *v219;
  *v219 = v332;

  v217(v345, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v333 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000042, 0x800000026743F860, v227);
  v228 = *v225;
  *v225 = v333;

  v223(v345, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v334 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000042, 0x800000026743F8B0, v233);
  v234 = *v231;
  *v231 = v334;

  v229(v345, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v335 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0xD00000000000005ALL, 0x800000026743F900, v239);
  v240 = *v237;
  *v237 = v335;

  v235(v345, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v336 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000049, 0x800000026743F960, v245);
  v246 = *v243;
  *v243 = v336;

  v241(v345, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v337 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000054, 0x800000026743F9B0, v251);
  v252 = *v249;
  *v249 = v337;

  v247(v345, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v338 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000002ELL, 0x800000026743FA10, v257);
  v258 = *v255;
  *v255 = v338;

  v253(v345, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v339 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000032, 0x800000026743FA40, v263);
  v264 = *v261;
  *v261 = v339;

  v259(v345, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v340 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000044, 0x800000026743FA80, v269);
  v270 = *v267;
  *v267 = v340;

  v265(v345, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v341 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0xD00000000000003FLL, 0x800000026743FAD0, v275);
  v276 = *v273;
  *v273 = v341;

  v271(v345, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v342 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000062, 0x800000026743FB10, v281);
  v282 = *v279;
  *v279 = v342;

  v277(v345, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v343 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000069, 0x800000026743FB80, v287);
  v288 = *v285;
  *v285 = v343;

  v283(v345, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v344 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000004BLL, 0x800000026743FBF0, v293);
  v294 = *v291;
  *v291 = v344;

  return v289(v345, 0);
}

uint64_t sub_266FD318C(uint64_t a1)
{
  v2 = sub_266FD3290(&qword_2800F1C68);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD31F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD3290(&qword_2800F1C68);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD3290(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSExternalPartner.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743FC70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026743FC90, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_266FD3478(uint64_t a1)
{
  v2 = sub_266FD357C(&qword_2800F1C78);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD34E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD357C(&qword_2800F1C78);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD357C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSExternalPartner(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743FCE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026743FD00, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026743FD20, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FD37D4(uint64_t a1)
{
  v2 = sub_266FD38D8(&qword_2800F1C88);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD383C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD38D8(&qword_2800F1C88);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD38D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSModelLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelParty.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026743FD70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026743FD90, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026743FDB0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FD3B30(uint64_t a1)
{
  v2 = sub_266FD3C34(&qword_2800F1C98);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD3B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD3C34(&qword_2800F1C98);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD3C34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSModelParty(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelRequestContext.makeTypeManifestAndEnsureFields(in:)()
{
  v22 = sub_26738118C();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1CA0, 0x277D57920);
  sub_266ECAF2C(&qword_2800F1CA8, &qword_2800F1CA0, 0x277D57920);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64657472617473, 0xE700000000000000);
  v9(v23, 0);
  sub_266ECB294(0, &qword_2800F1CB0, 0x277D57910);
  sub_266ECAF2C(&qword_2800F1CB8, &qword_2800F1CB0, 0x277D57910);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v10(v23, 0);
  sub_266ECB294(0, &qword_2800F1CC0, 0x277D57918);
  sub_266ECAF2C(&qword_2800F1CC8, &qword_2800F1CC0, 0x277D57918);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v21;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v12(v23, 0);
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
  (*(v0 + 32))(v16 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v19, v11, v22);
  return v13(v23, 0);
}

uint64_t sub_266FD418C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD41F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GMSSchemaGMSModelRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v49 = sub_26738113C();
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v43 = *MEMORY[0x277D3E518];
  v10 = *(v2 + 104);
  v47 = v2 + 104;
  v48 = v10;
  v10(v5);
  v50[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v44 = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6550736E656B6F74, 0xEF646E6F63655372);
  v15(v50, 0);
  v40 = "iri.gms.GMSModelRequestEnded";
  v46 = *MEMORY[0x277D3E538];
  v16 = v49;
  v48(v5);
  v50[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v45 = v14;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v40 | 0x8000000000000000);
  v17(v50, 0);
  v18 = v16;
  v19 = v16;
  v20 = v48;
  (v48)(v5, v43, v18);
  v50[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x636553726550626BLL, 0xEB00000000646E6FLL);
  v21(v50, 0);
  (v20)(v5, v46, v19);
  v50[0] = 1;
  sub_26738114C();
  v42 = v13;
  v13(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x65736E6F70736572, 0xEF746E756F43624BLL);
  v22(v50, 0);
  (v20)(v5, *MEMORY[0x277D3E500], v49);
  v50[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265506567616D69, 0xEE00646E6F636553);
  v23(v50, 0);
  v25 = v48;
  v24 = v49;
  (v48)(v5, v46, v49);
  v50[0] = 1;
  sub_26738114C();
  v26 = v42;
  v42(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x756F436567616D69, 0xEA0000000000746ELL);
  v27(v50, 0);
  v40 = "responseTokensCount";
  v28 = v43;
  (v25)(v5, v43, v24);
  v50[0] = 1;
  sub_26738114C();
  v41 = v11;
  v26(v9, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v40 | 0x8000000000000000);
  v29(v50, 0);
  v40 = "timeToFirstTokenInSeconds";
  v30 = v48;
  v31 = v49;
  (v48)(v5, v28, v49);
  v50[0] = 1;
  sub_26738114C();
  v32 = v11;
  v33 = v42;
  v42(v9, 0, 1, v32);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v40 | 0x8000000000000000);
  v34(v50, 0);
  v35 = v46;
  (v30)(v5, v46, v31);
  v50[0] = 1;
  sub_26738114C();
  v36 = v41;
  v33(v9, 0, 1, v41);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x800000026743FE90);
  v37(v50, 0);
  (v48)(v5, v35, v49);
  v50[0] = 1;
  sub_26738114C();
  v33(v9, 0, 1, v36);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026743FEB0);
  return v38(v50, 0);
}

uint64_t sub_266FD4C30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD4C94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD4CF8()
{
  result = qword_2800F1CB8;
  if (!qword_2800F1CB8)
  {
    sub_266FD4D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1CB8);
  }

  return result;
}

unint64_t sub_266FD4D50()
{
  result = qword_2800F1CB0;
  if (!qword_2800F1CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1CB0);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelRequestFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_26738113C();
  v39 = *(v36 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GMSSchemaGMSErrorDomain(0);
  sub_266FD55AC(&qword_2800F1C60, type metadata accessor for GMSSchemaGMSErrorDomain);
  v34 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v38 = *(v11 + 56);
  v38(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F44726F727265, 0xEB000000006E6961);
  v12(v41, 0);
  v37 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v40, 0x6D6F44726F727265, 0xEB000000006E6961);
  v32 = *(v11 + 48);
  if (!v32(v15, 1, v10))
  {
    sub_266ECB128(&unk_2878863E8);
    sub_26738115C();
  }

  (v14)(v40, 0);
  v13(v41, 0);
  v16 = *MEMORY[0x277D3E538];
  v17 = *(v39 + 104);
  v39 += 104;
  v33 = v17;
  v17(v35, v16, v36);
  v41[0] = 1;
  sub_26738114C();
  v38(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F727245736D67, 0xEC00000065646F43);
  v18(v41, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v40, 0x726F727245736D67, 0xEC00000065646F43);
  if (!v32(v21, 1, v10))
  {
    sub_266ECB128(&unk_287886410);
    sub_26738115C();
  }

  (v20)(v40, 0);
  v19(v41, 0);
  type metadata accessor for GMSSchemaGMSOpenAIErrorCode(0);
  sub_266FD55AC(&qword_2800F1CD0, type metadata accessor for GMSSchemaGMSOpenAIErrorCode);
  sub_26738120C();
  v31 = v10;
  v38(v9, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x724549416E65706FLL, 0xEF65646F43726F72);
  v22(v41, 0);
  v34 = "iri.gms.GMSModelRequestFailed";
  v23 = v35;
  v24 = v36;
  v25 = v33;
  v33(v35, *MEMORY[0x277D3E530], v36);
  v41[0] = 1;
  sub_26738114C();
  v26 = v38;
  v38(v9, 0, 1, v10);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v34 | 0x8000000000000000);
  v27(v41, 0);
  v25(v23, *MEMORY[0x277D3E508], v24);
  v41[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v31);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F43726F727265, 0xE900000000000065);
  return v28(v41, 0);
}

uint64_t sub_266FD54A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD5504(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD55AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266FD55F4()
{
  result = qword_2800F1CC0;
  if (!qword_2800F1CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1CC0);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelRequestStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54[-v10];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v58 = a2;
  sub_26738119C();
  type metadata accessor for GMSSchemaGMSPartnerAccountType(0);
  sub_266FD6610(&qword_2800F1CD8, type metadata accessor for GMSSchemaGMSPartnerAccountType);
  sub_26738120C();
  v59 = sub_26738116C();
  v63 = *(v59 - 8);
  v12 = v63 + 56;
  v13 = *(v63 + 56);
  v13(v11, 0, 1, v59);
  v56 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0x54746E756F636361, 0xEB00000000657079);
  v14(v67, 0);
  v15 = *MEMORY[0x277D3E4E8];
  v16 = *(v4 + 104);
  v60 = v7;
  v61 = v3;
  (v16)(v7, v15, v3);
  v57 = v16;
  v62 = v4 + 104;
  v67[0] = 1;
  sub_26738114C();
  v17 = v59;
  v13(v11, 0, 1, v59);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x6165536265577369, 0xEF64657355686372);
  v18(v67, 0);
  (v16)(v60, v15, v3);
  v67[0] = 1;
  sub_26738114C();
  v13(v11, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x6953726573557369, 0xEE006E4964656E67);
  v19(v67, 0);
  type metadata accessor for GMSSchemaGMSModelParty(0);
  sub_266FD6610(&qword_2800F1C90, type metadata accessor for GMSSchemaGMSModelParty);
  sub_26738120C();
  v13(v11, 0, 1, v17);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x7261506C65646F6DLL, 0xEA00000000007974);
  v20(v67, 0);
  type metadata accessor for GMSSchemaGMSModelLocation(0);
  sub_266FD6610(&qword_2800F1C80, type metadata accessor for GMSSchemaGMSModelLocation);
  sub_26738120C();
  v13(v11, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x636F4C6C65646F6DLL, 0xED00006E6F697461);
  v21(v67, 0);
  type metadata accessor for GMSSchemaGMSUsecase(0);
  sub_266FD6610(&qword_2800F1CE0, type metadata accessor for GMSSchemaGMSUsecase);
  sub_26738120C();
  v13(v11, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x65736143657375, 0xE700000000000000);
  v22(v67, 0);
  v55 = *MEMORY[0x277D3E530];
  v24 = v60;
  v23 = v61;
  v25 = v57;
  v57(v60);
  v67[0] = 1;
  sub_26738114C();
  v13(v11, 0, 1, v17);
  v64 = v13;
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v26(v67, 0);
  v27 = v24;
  v28 = v24;
  v29 = v55;
  v25(v28, v55, v23);
  v30 = v25;
  v67[0] = 1;
  sub_26738114C();
  v31 = v59;
  v13(v11, 0, 1, v59);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0x65566769666E6F63, 0xED00006E6F697372);
  v32(v67, 0);
  v30(v27, v29, v61);
  v67[0] = 1;
  sub_26738114C();
  v33 = v64;
  v64(v11, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v11, 0x655674706D6F7270, 0xED00006E6F697372);
  v34(v67, 0);
  v30(v27, v29, v61);
  v67[0] = 1;
  sub_26738114C();
  v33(v11, 0, 1, v31);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D614E6C65646F6DLL, 0xE900000000000065);
  v35(v67, 0);
  type metadata accessor for GMSSchemaGMSExternalPartner(0);
  sub_266FD6610(&qword_2800F1C70, type metadata accessor for GMSSchemaGMSExternalPartner);
  sub_26738120C();
  v33(v11, 0, 1, v31);
  v36 = v31;
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C616E7265747865, 0xEF72656E74726150);
  v37(v67, 0);
  v38 = sub_2673811AC();
  v39 = sub_266ECB6CC(v66, 0x6C616E7265747865, 0xEF72656E74726150);
  v40 = *(v63 + 48);
  v63 += 48;
  v61 = v40;
  if (!v40(v41, 1, v31))
  {
    sub_266ECB128(&unk_287886438);
    sub_26738115C();
  }

  (v39)(v66, 0);
  v38(v67, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v62 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v64(v11, 0, 1, v31);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, 0x800000026743FF50);
  v42(v67, 0);
  v43 = sub_2673811AC();
  v44 = sub_266ECB6CC(v66, 0xD00000000000001ALL, 0x800000026743FF50);
  if (!v61(v45, 1, v31))
  {
    sub_266ECB128(&unk_287886460);
    sub_26738115C();
  }

  (v44)(v66, 0);
  v43(v67, 0);
  sub_26738120C();
  v64(v11, 0, 1, v31);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0x726F747563657865, 0xEF44496563617254);
  v46(v67, 0);
  v47 = sub_2673811AC();
  v48 = sub_266ECB6CC(v66, 0x726F747563657865, 0xEF44496563617254);
  if (!v61(v49, 1, v31))
  {
    sub_266ECB128(&unk_287886488);
    sub_26738115C();
  }

  (v48)(v66, 0);
  v47(v67, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_266FD6610(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent);
  sub_26738120C();
  v50 = v64;
  v64(v11, 0, 1, v36);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0x65674149416E6567, 0xEE0064657355746ELL);
  v51(v67, 0);
  sub_26738120C();
  v50(v11, 0, 1, v36);
  v52 = sub_2673811AC();
  sub_266EC637C(v11, 0x7254746E65696C63, 0xED00006449656361);
  return v52(v67, 0);
}

uint64_t sub_266FD654C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD65B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD6610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static GMSSchemaGMSOpenAIErrorCode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743FFA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v152;

  v1(v177, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026743FFC0, v11);
  v12 = *v9;
  *v9 = v153;

  v7(v177, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026743FFF0, v17);
  v18 = *v15;
  *v15 = v154;

  v13(v177, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267440010, v23);
  v24 = *v21;
  *v21 = v155;

  v19(v177, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267440040, v29);
  v30 = *v27;
  *v27 = v156;

  v25(v177, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x8000000267440070, v35);
  v36 = *v33;
  *v33 = v157;

  v31(v177, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x80000002674400A0, v41);
  v42 = *v39;
  *v39 = v158;

  v37(v177, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x80000002674400D0, v47);
  v48 = *v45;
  *v45 = v159;

  v43(v177, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000028, 0x8000000267440100, v53);
  v54 = *v51;
  *v51 = v160;

  v49(v177, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002CLL, 0x8000000267440130, v59);
  v60 = *v57;
  *v57 = v161;

  v55(v177, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x8000000267440160, v65);
  v66 = *v63;
  *v63 = v162;

  v61(v177, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002ALL, 0x8000000267440190, v71);
  v72 = *v69;
  *v69 = v163;

  v67(v177, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000027, 0x80000002674401C0, v77);
  v78 = *v75;
  *v75 = v164;

  v73(v177, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x80000002674401F0, v83);
  v84 = *v81;
  *v81 = v165;

  v79(v177, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001ELL, 0x8000000267440210, v89);
  v90 = *v87;
  *v87 = v166;

  v85(v177, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002DLL, 0x8000000267440230, v95);
  v96 = *v93;
  *v93 = v167;

  v91(v177, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000024, 0x8000000267440260, v101);
  v102 = *v99;
  *v99 = v168;

  v97(v177, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000022, 0x8000000267440290, v107);
  v108 = *v105;
  *v105 = v169;

  v103(v177, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ELL, 0x80000002674402C0, v113);
  v114 = *v111;
  *v111 = v170;

  v109(v177, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x80000002674402E0, v119);
  v120 = *v117;
  *v117 = v171;

  v115(v177, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000022, 0x8000000267440310, v125);
  v126 = *v123;
  *v123 = v172;

  v121(v177, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000020, 0x8000000267440340, v131);
  v132 = *v129;
  *v129 = v173;

  v127(v177, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000024, 0x8000000267440370, v137);
  v138 = *v135;
  *v135 = v174;

  v133(v177, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000026, 0x80000002674403A0, v143);
  v144 = *v141;
  *v141 = v175;

  v139(v177, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000020, 0x80000002674403D0, v149);
  v150 = *v147;
  *v147 = v176;

  return v145(v177, 0);
}

uint64_t sub_266FD727C(uint64_t a1)
{
  v2 = sub_266FD7380(&qword_2800F1CE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD72E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD7380(&qword_2800F1CE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD7380(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSOpenAIErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSPartnerAccountType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267440430, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267440450, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267440470, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267440490, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266FD764C(uint64_t a1)
{
  v2 = sub_266FD7750(&qword_2800F1CF0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD76B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD7750(&qword_2800F1CF0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD7750(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSPartnerAccountType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSPrivateCloudMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
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
  v12 = *MEMORY[0x277D3E518];
  v35 = *(v4 + 104);
  v36 = v4 + 104;
  v32 = v12;
  v35(v7, v12, v3);
  v37[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v31 = v13;
  v15(v11, 0, 1, v13);
  v30 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x7461526E656B6F74, 0xE900000000000065);
  v17(v37, 0);
  v28[0] = "iri.gms.GMSPrivateCloudMetrics";
  v18 = v35;
  v35(v7, v12, v3);
  v37[0] = 1;
  sub_26738114C();
  v33 = v15;
  v15(v11, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v28[0] | 0x8000000000000000);
  v19(v37, 0);
  v28[0] = "timeToFirstTokenMillis";
  v29 = v3;
  v18(v7, v32, v3);
  v37[0] = 1;
  sub_26738114C();
  v20 = v31;
  v15(v11, 0, 1, v31);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v28[0] | 0x8000000000000000);
  v21(v37, 0);
  v28[0] = "extendLatencyMillis";
  v32 = *MEMORY[0x277D3E510];
  v22 = v35;
  (v35)(v7);
  v37[0] = 1;
  sub_26738114C();
  v23 = v33;
  v33(v11, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v28[0] | 0x8000000000000000);
  v24(v37, 0);
  v22(v7, v32, v29);
  v37[0] = 1;
  sub_26738114C();
  v23(v11, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x8000000267440550);
  v25(v37, 0);
  sub_266ECB294(0, &qword_2800F1CF8, 0x277D57938);
  sub_266ECAF2C(&qword_2800F1D00, &qword_2800F1CF8, 0x277D57938);
  sub_26738120C();
  v23(v11, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000029, 0x8000000267440570);
  return v26(v37, 0);
}

uint64_t sub_266FD7E14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD7E78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GMSSchemaGMSPrivateCloudMetricsReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x7254746E65696C63, 0xED00006449656361);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F1D10, 0x277D57928);
  sub_266ECAF2C(&qword_2800F1D08, &qword_2800F1D10, 0x277D57928);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x80000002674405E0);
  v7(v10, 0);
  type metadata accessor for GMSSchemaGMSCaller(0);
  sub_266FD8348();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C6C6143736D67, 0xE900000000000072);
  return v8(v10, 0);
}

uint64_t sub_266FD8284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD82E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD8348()
{
  result = qword_2800F1BF8;
  if (!qword_2800F1BF8)
  {
    type metadata accessor for GMSSchemaGMSCaller(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1BF8);
  }

  return result;
}

uint64_t static GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v43 = v2;
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
  v39 = "veDecodingMetrics";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E500], v2);
  v38 = v11;
  v44[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v40 = *(v13 + 56);
  v14 = v13 + 56;
  v40(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v39 | 0x8000000000000000);
  v15(v44, 0);
  v37[0] = "ingAcceptanceRate";
  LODWORD(v39) = *MEMORY[0x277D3E538];
  v16 = v43;
  (v11)(v6);
  v44[0] = 1;
  sub_26738114C();
  v42 = v12;
  v17 = v40;
  v40(v10, 0, 1, v12);
  v37[1] = v14;
  v41 = a1;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v37[0] | 0x8000000000000000);
  v18(v44, 0);
  v37[0] = "draftModelInferenceCallCount";
  v19 = v16;
  v20 = v38;
  v38(v6, v39, v19);
  v44[0] = 1;
  sub_26738114C();
  v17(v10, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v37[0] | 0x8000000000000000);
  v21(v44, 0);
  v37[0] = "targetModelInferenceCallCount";
  v22 = v39;
  v23 = v43;
  v20(v6, v39, v43);
  v44[0] = 1;
  sub_26738114C();
  v24 = v42;
  v25 = v40;
  v40(v10, 0, 1, v42);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v37[0] | 0x8000000000000000);
  v26(v44, 0);
  v37[0] = "draftOutputTokenCount";
  v27 = v38;
  v38(v6, v22, v23);
  v44[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v37[0] | 0x8000000000000000);
  v28(v44, 0);
  v37[0] = "targetOutputTokenCount";
  LODWORD(v39) = *MEMORY[0x277D3E540];
  v29 = v43;
  v30 = v27;
  (v27)(v6);
  v44[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v42);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, v37[0] | 0x8000000000000000);
  v31(v44, 0);
  v37[0] = "nferenceLatencyMillis";
  v32 = v39;
  v30(v6, v39, v29);
  v44[0] = 1;
  sub_26738114C();
  v33 = v42;
  v25(v10, 0, 1, v42);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, v37[0] | 0x8000000000000000);
  v34(v44, 0);
  v30(v6, v32, v43);
  v44[0] = 1;
  sub_26738114C();
  v40(v10, 0, 1, v33);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0x6574537466617264, 0xEA00000000007370);
  return v35(v44, 0);
}

uint64_t sub_266FD8C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD8C6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD8CD0()
{
  result = qword_2800F1D00;
  if (!qword_2800F1D00)
  {
    sub_266FD8D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1D00);
  }

  return result;
}

unint64_t sub_266FD8D28()
{
  result = qword_2800F1CF8;
  if (!qword_2800F1CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1CF8);
  }

  return result;
}

uint64_t static GMSSchemaGMSUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267440790, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674407B0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674407D0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674407F0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267440810, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000010, 0x8000000267440830, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_266FD90DC(uint64_t a1)
{
  v2 = sub_266FD91E0(&qword_2800F1D18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD9144(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD91E0(&qword_2800F1D18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD91E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GRPSchemaGroupedMessagesClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1D20, 0x277D57948);
  sub_266ECAF2C(&qword_2800F1D28, &qword_2800F1D20, 0x277D57948);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x42646570756F7267, 0xE900000000000079);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F1D30, 0x277D57960);
  sub_266ECAF2C(&qword_2800F1D38, &qword_2800F1D30, 0x277D57960);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267440890);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F1D40, 0x277D57958);
  sub_266ECAF2C(&qword_2800F1D48, &qword_2800F1D40, 0x277D57958);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x4D6465726564726FLL, 0xEF73656761737365);
  v8(v10, 0);
  sub_266ECB128(&unk_2878864B0);
  return sub_2673811CC();
}

uint64_t sub_266FD95B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FD9648()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FD9714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD9778(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD97D8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1D50, &qword_2800F1D58, 0x277D57940);
  a1[2] = sub_266ECAF2C(&qword_2800F1D60, &qword_2800F1D58, 0x277D57940);
  result = sub_266ECAF2C(&qword_2800F1D68, &qword_2800F1D58, 0x277D57940);
  a1[3] = result;
  return result;
}

uint64_t static GRPSchemaGroupedMessagesGrouping.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6564496B636F6C63, 0xEF7265696669746ELL);
  v5(v7, 0);
  sub_266ECB128(&unk_2878864E8);
  return sub_2673811CC();
}

uint64_t sub_266FD9AB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FD9B48()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FD9C14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD9C78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD9CD8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1D78, &qword_2800F1D20, 0x277D57948);
  a1[2] = sub_266ECAF2C(&qword_2800F1D80, &qword_2800F1D20, 0x277D57948);
  result = sub_266ECAF2C(&qword_2800F1D88, &qword_2800F1D20, 0x277D57948);
  a1[3] = result;
  return result;
}

uint64_t static GRPSchemaGroupedMessagesServerEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1D90, 0x277D5A790);
  sub_266ECAF2C(&qword_2800F1D98, &qword_2800F1D90, 0x277D5A790);
  v15[1] = a1;
  sub_26738122C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x746E657645796E61, 0xE900000000000073);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0x746E657645796E61, 0xE900000000000073);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_287886520);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F1DA0, 0x277D5A978);
  sub_266ECAF2C(&qword_2800F1DA8, &qword_2800F1DA0, 0x277D5A978);
  sub_26738122C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x8000000267440920);
  v13(v17, 0);
  sub_266ECB128(&unk_287886548);
  return sub_2673811CC();
}

uint64_t sub_266FDA138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FDA1D0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FDA29C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDA300(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FDA360(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1DB0, &qword_2800F1DB8, 0x277D57950);
  a1[2] = sub_266ECAF2C(&qword_2800F1DC0, &qword_2800F1DB8, 0x277D57950);
  result = sub_266ECAF2C(&qword_2800F1DC8, &qword_2800F1DB8, 0x277D57950);
  a1[3] = result;
  return result;
}

uint64_t static GRPSchemaOrderedMessage.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = a1;
  v29 = sub_26738118C();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v29);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v5 + 104))(v8, *MEMORY[0x277D3E510], v4);
  v30[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000019, 0x8000000267440970);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F1DD8, 0x277D57968);
  sub_266ECAF2C(&qword_2800F1DE0, &qword_2800F1DD8, 0x277D57968);
  sub_26738121C();
  v14(v12, 0, 1, v13);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000012, 0x8000000267440990);
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
  (*(v1 + 32))(v21 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v24, v16, v29);
  return v18(v30, 0);
}

uint64_t sub_266FDA918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDA97C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRPSchemaProducerMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1DE8, 0x277D57970);
  sub_266ECAF2C(&qword_2800F1DF0, &qword_2800F1DE8, 0x277D57970);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7078456C61697274, 0xEF746E656D697265);
  v5(v7, 0);
  sub_266ECB128(&unk_287886580);
  return sub_2673811CC();
}

uint64_t sub_266FDABF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FDAC90()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FDAD5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDADC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FDAE20(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1DF8, &qword_2800F1D30, 0x277D57960);
  a1[2] = sub_266ECAF2C(&qword_2800F1E00, &qword_2800F1D30, 0x277D57960);
  result = sub_266ECAF2C(&qword_2800F1E08, &qword_2800F1D30, 0x277D57960);
  a1[3] = result;
  return result;
}

uint64_t static GRPSchemaSiriEventTypeUnion.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v4);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v85 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1E10, 0x277D5A800);
  sub_266ECAF2C(&qword_2800F1E18, &qword_2800F1E10, 0x277D5A800);
  sub_26738121C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43696575, 0xEE00746E65764574);
  v15(v93, 0);
  sub_266ECB294(0, &qword_2800F1E20, 0x277D59AC8);
  sub_266ECAF2C(&qword_2800F1E28, &qword_2800F1E20, 0x277D59AC8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x616F6C7055746570, 0xEE00746E65764564);
  v16(v93, 0);
  sub_266ECB294(0, &qword_2800F1E30, 0x277D5A9A8);
  sub_266ECAF2C(&qword_2800F1E38, &qword_2800F1E30, 0x277D5A9A8);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267440A10);
  v17(v93, 0);
  sub_266ECB294(0, &qword_2800F1E40, 0x277D5B048);
  sub_266ECAF2C(&qword_2800F1E48, &qword_2800F1E40, 0x277D5B048);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267440A30);
  v18(v93, 0);
  sub_266ECB294(0, &qword_2800F1E50, 0x277D5A9D0);
  sub_266ECAF2C(&qword_2800F1E58, &qword_2800F1E50, 0x277D5A9D0);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267440A50);
  v19(v93, 0);
  sub_266ECB294(0, &qword_2800F0FF8, 0x277D57500);
  sub_266ECAF2C(&qword_2800F1010, &qword_2800F0FF8, 0x277D57500);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v20 = v13;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x65696C43776F6C66, 0xEF746E657645746ELL);
  v21(v93, 0);
  sub_266ECB294(0, &qword_2800EF8B8, 0x277D56C30);
  sub_266ECAF2C(&qword_2800EF8D0, &qword_2800EF8B8, 0x277D56C30);
  sub_26738121C();
  v22 = v11;
  v23 = v14;
  v20(v10, 0, 1, v11);
  v24 = v20;
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C436D6163, 0xEE00746E65764574);
  v25(v93, 0);
  sub_266ECB294(0, &qword_2800F1E60, 0x277D5B2B8);
  sub_266ECAF2C(&qword_2800F1E68, &qword_2800F1E60, 0x277D5B2B8);
  v26 = a1;
  sub_26738121C();
  v20(v10, 0, 1, v22);
  v27 = a2;
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43707375, 0xEE00746E65764574);
  v28(v93, 0);
  sub_266ECB294(0, &qword_2800F03D8, 0x277D57038);
  sub_266ECAF2C(&qword_2800F03F0, &qword_2800F03D8, 0x277D57038);
  v29 = v26;
  sub_26738121C();
  v30 = v22;
  v20(v10, 0, 1, v22);
  v31 = v27;
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C436D6964, 0xEE00746E65764574);
  v32(v93, 0);
  sub_266ECB294(0, &qword_2800F1E70, 0x277D590F0);
  sub_266ECAF2C(&qword_2800F1E78, &qword_2800F1E70, 0x277D590F0);
  v33 = v29;
  sub_26738121C();
  v24(v10, 0, 1, v22);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43786C6ELL, 0xEE00746E65764574);
  v34(v93, 0);
  sub_266ECB294(0, &qword_2800F1E80, 0x277D59610);
  sub_266ECAF2C(&qword_2800F1E88, &qword_2800F1E80, 0x277D59610);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0x65696C436863726FLL, 0xEF746E657645746ELL);
  v35(v93, 0);
  sub_266ECB294(0, &qword_2800EF328, 0x277D56858);
  sub_266ECAF2C(&qword_2800EF340, &qword_2800EF328, 0x277D56858);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43727361, 0xEE00746E65764574);
  v36(v93, 0);
  sub_266ECB294(0, &qword_2800F1E90, 0x277D58180);
  sub_266ECAF2C(&qword_2800F1E98, &qword_2800F1E90, 0x277D58180);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E65696C436869, 0xED0000746E657645);
  v37(v93, 0);
  sub_266ECB294(0, &qword_2800F1EA0, 0x277D587F0);
  sub_266ECAF2C(&qword_2800F1EA8, &qword_2800F1EA0, 0x277D587F0);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E65696C43686DLL, 0xED0000746E657645);
  v38(v93, 0);
  sub_266ECB294(0, &qword_2800F1EB0, 0x277D5B140);
  sub_266ECAF2C(&qword_2800F1EB8, &qword_2800F1EB0, 0x277D5B140);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43737474, 0xEE00746E65764574);
  v39(v93, 0);
  sub_266ECB294(0, &qword_2800EFC78, 0x277D56D70);
  sub_266ECAF2C(&qword_2800EFC90, &qword_2800EFC78, 0x277D56D70);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43706C63, 0xEE00746E65764574);
  v40(v93, 0);
  sub_266ECB294(0, &qword_2800F1EC0, 0x277D5A4D0);
  sub_266ECAF2C(&qword_2800F1EC8, &qword_2800F1EC0, 0x277D5A4D0);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E65696C437272, 0xED0000746E657645);
  v41(v93, 0);
  sub_266ECB294(0, &qword_2800F0010, 0x277D56E70);
  sub_266ECAF2C(&qword_2800F0028, &qword_2800F0010, 0x277D56E70);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43766E63, 0xEE00746E65764574);
  v42(v93, 0);
  sub_266ECB294(0, &qword_2800EEE60, 0x277D56748);
  sub_266ECAF2C(&qword_2800EEE78, &qword_2800EEE60, 0x277D56748);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43636E61, 0xEE00746E65764574);
  v43(v93, 0);
  sub_266ECB294(0, &qword_2800F1ED0, 0x277D579F0);
  sub_266ECAF2C(&qword_2800F1ED8, &qword_2800F1ED0, 0x277D579F0);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C436C6168, 0xEE00746E65764574);
  v44(v93, 0);
  sub_266ECB294(0, &qword_2800F1EE0, 0x277D58B78);
  sub_266ECAF2C(&qword_2800F1EE8, &qword_2800F1EE0, 0x277D58B78);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C4374656ELL, 0xEE00746E65764574);
  v45(v93, 0);
  sub_266ECB294(0, &qword_2800F1EF0, 0x277D5A5E0);
  sub_266ECAF2C(&qword_2800F1EF8, &qword_2800F1EF0, 0x277D5A5E0);
  sub_26738121C();
  v91 = v30;
  v24(v10, 0, 1, v30);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43646173, 0xEE00746E65764574);
  v46(v93, 0);
  sub_266ECB294(0, &qword_2800F06D8, 0x277D571A8);
  sub_266ECAF2C(&qword_2800F06F0, &qword_2800F06D8, 0x277D571A8);
  sub_26738121C();
  v24(v10, 0, 1, v30);
  v92 = v31;
  v47 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267440A70);
  v47(v93, 0);
  sub_266ECB294(0, &qword_2800F1F00, 0x277D59C50);
  sub_266ECAF2C(&qword_2800F1F08, &qword_2800F1F00, 0x277D59C50);
  sub_26738121C();
  v48 = v91;
  v89 = v23;
  v24(v10, 0, 1, v91);
  v49 = sub_2673811AC();
  sub_266EC637C(v10, 0x65696C4373756C70, 0xEF746E657645746ELL);
  v49(v93, 0);
  sub_266ECB294(0, &qword_2800F0B20, 0x277D57240);
  sub_266ECAF2C(&qword_2800F0B38, &qword_2800F0B20, 0x277D57240);
  sub_26738121C();
  v24(v10, 0, 1, v48);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267440A90);
  v50(v93, 0);
  sub_266ECB294(0, &qword_2800F0BE0, 0x277D57290);
  sub_266ECAF2C(&qword_2800F0BF8, &qword_2800F0BE0, 0x277D57290);
  sub_26738121C();
  v24(v10, 0, 1, v48);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267440AB0);
  v51(v93, 0);
  sub_266ECB294(0, &qword_2800F1F10, 0x277D5AD70);
  sub_266ECAF2C(&qword_2800F1F18, &qword_2800F1F10, 0x277D5AD70);
  sub_26738121C();
  v24(v10, 0, 1, v48);
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0x65696C4374737273, 0xEF746E657645746ELL);
  v52(v93, 0);
  sub_266ECB294(0, &qword_2800F1F20, 0x277D59F68);
  sub_266ECAF2C(&qword_2800F1F28, &qword_2800F1F20, 0x277D59F68);
  sub_26738121C();
  v24(v10, 0, 1, v48);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267440AD0);
  v53(v93, 0);
  sub_266ECB294(0, &qword_2800EF9C0, 0x277D56CA0);
  sub_266ECAF2C(&qword_2800EF9D8, &qword_2800EF9C0, 0x277D56CA0);
  sub_26738121C();
  v24(v10, 0, 1, v48);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43616463, 0xEE00746E65764574);
  v54(v93, 0);
  sub_266ECB294(0, &qword_2800F1F30, 0x277D58B50);
  sub_266ECAF2C(&qword_2800F1F38, &qword_2800F1F30, 0x277D58B50);
  sub_26738121C();
  v24(v10, 0, 1, v48);
  v90 = v24;
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C4374776DLL, 0xEE00746E65764574);
  v55(v93, 0);
  sub_266ECB294(0, &qword_2800F1F40, 0x277D57AD8);
  sub_266ECAF2C(&qword_2800F1F48, &qword_2800F1F40, 0x277D57AD8);
  v85 = v33;
  sub_26738121C();
  v56 = v91;
  v24(v10, 0, 1, v91);
  v57 = sub_2673811AC();
  sub_266EC637C(v10, 0x65696C43656D6F68, 0xEF746E657645746ELL);
  v57(v93, 0);
  sub_266ECB294(0, &qword_2800F1F50, 0x277D5A8C0);
  sub_266ECAF2C(&qword_2800F1F58, &qword_2800F1F50, 0x277D5A8C0);
  sub_26738121C();
  v58 = v90;
  v90(v10, 0, 1, v56);
  v59 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267440AF0);
  v59(v93, 0);
  sub_266ECB294(0, &qword_2800F1F60, 0x277D59568);
  sub_266ECAF2C(&qword_2800F1F68, &qword_2800F1F60, 0x277D59568);
  sub_26738121C();
  v58(v10, 0, 1, v56);
  v60 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267440B10);
  v60(v93, 0);
  sub_266ECB294(0, &qword_2800F1F70, 0x277D5A530);
  sub_266ECAF2C(&qword_2800F1F78, &qword_2800F1F70, 0x277D5A530);
  sub_26738121C();
  v58(v10, 0, 1, v56);
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43737372, 0xEE00746E65764574);
  v61(v93, 0);
  sub_266ECB294(0, &qword_2800F1F80, 0x277D5AF30);
  sub_266ECAF2C(&qword_2800F1F88, &qword_2800F1F80, 0x277D5AF30);
  sub_26738121C();
  v62 = v90;
  v90(v10, 0, 1, v56);
  v63 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43677573, 0xEE00746E65764574);
  v63(v93, 0);
  sub_266ECB294(0, &qword_2800F0EA0, 0x277D574A8);
  sub_266ECAF2C(&qword_2800F0EB8, &qword_2800F0EA0, 0x277D574A8);
  sub_26738121C();
  v62(v10, 0, 1, v56);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x8000000267440B30);
  v64(v93, 0);
  sub_266ECB294(0, &qword_2800F1F90, 0x277D5A328);
  sub_266ECAF2C(&qword_2800F1F98, &qword_2800F1F90, 0x277D5A328);
  sub_26738121C();
  v65 = v91;
  v62(v10, 0, 1, v91);
  v66 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E65696C436672, 0xED0000746E657645);
  v66(v93, 0);
  sub_266ECB294(0, &qword_2800F1FA0, 0x277D5A660);
  sub_266ECAF2C(&qword_2800F1FA8, &qword_2800F1FA0, 0x277D5A660);
  sub_26738121C();
  v62(v10, 0, 1, v65);
  v67 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43636973, 0xEE00746E65764574);
  v67(v93, 0);
  sub_266ECB294(0, &qword_2800F1FB0, 0x277D581F0);
  sub_266ECAF2C(&qword_2800F1FB8, &qword_2800F1FB0, 0x277D581F0);
  sub_26738121C();
  v62(v10, 0, 1, v65);
  v68 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267440B50);
  v68(v93, 0);
  sub_266ECB294(0, &qword_2800EF798, 0x277D56B50);
  sub_266ECAF2C(&qword_2800EF7B0, &qword_2800EF798, 0x277D56B50);
  sub_26738121C();
  v62(v10, 0, 1, v65);
  v69 = sub_2673811AC();
  sub_266EC637C(v10, 0x65696C4372616163, 0xEF746E657645746ELL);
  v69(v93, 0);
  sub_266ECB294(0, &qword_2800F1FC0, 0x277D5A320);
  sub_266ECAF2C(&qword_2800F1FC8, &qword_2800F1FC0, 0x277D5A320);
  sub_26738121C();
  v62(v10, 0, 1, v65);
  v70 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E65696C43676672, 0xEE00746E65764574);
  v70(v93, 0);
  sub_266ECB294(0, &qword_2800F1FD0, 0x277D5A630);
  sub_266ECAF2C(&qword_2800F1FD8, &qword_2800F1FD0, 0x277D5A630);
  sub_26738121C();
  v62(v10, 0, 1, v65);
  v71 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E65696C436373, 0xED0000746E657645);
  v71(v93, 0);
  sub_266ECB294(0, &qword_2800F1FE0, 0x277D5A6A0);
  sub_266ECAF2C(&qword_2800F1FE8, &qword_2800F1FE0, 0x277D5A6A0);
  sub_26738121C();
  v62(v10, 0, 1, v65);
  v72 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267440B70);
  v72(v93, 0);
  sub_266ECB294(0, &qword_2800F1FF0, 0x277D59558);
  sub_266ECAF2C(&qword_2800F1FF8, &qword_2800F1FF0, 0x277D59558);
  sub_26738121C();
  v62(v10, 0, 1, v65);
  v73 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x8000000267440B90);
  v73(v93, 0);
  sub_266ECB294(0, &qword_2800F2000, 0x277D58540);
  sub_266ECAF2C(&qword_2800F2008, &qword_2800F2000, 0x277D58540);
  sub_26738121C();
  v62(v10, 0, 1, v65);
  v74 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E65696C43726CLL, 0xED0000746E657645);
  v74(v93, 0);
  sub_266ECB294(0, &qword_2800F2010, 0x277D57AF8);
  sub_266ECAF2C(&qword_2800F2018, &qword_2800F2010, 0x277D57AF8);
  sub_26738121C();
  v75 = v86;
  v62(v10, 0, 1, v65);
  v76 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267440BB0);
  v76(v93, 0);
  sub_26738117C();
  v77 = sub_2673811BC();
  v79 = v78;
  v80 = *v78;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v79 = v80;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v80 = sub_266ECAD54(0, v80[2] + 1, 1, v80);
    *v79 = v80;
  }

  v83 = v80[2];
  v82 = v80[3];
  if (v83 >= v82 >> 1)
  {
    v80 = sub_266ECAD54(v82 > 1, v83 + 1, 1, v80);
    *v79 = v80;
  }

  v80[2] = v83 + 1;
  (*(v87 + 32))(v80 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v83, v75, v88);
  v77(v93, 0);
  sub_266ECB128(&unk_2878865B8);
  return sub_2673811CC();
}

uint64_t sub_266FDDA10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDDA74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRPSchemaTrialExperimentIdentifiers.makeTypeManifestAndEnsureFields(in:)()
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
  v18 = *MEMORY[0x277D3E530];
  v19 = *(v1 + 104);
  v17 = v0;
  v19(v4);
  v21[0] = 1;
  sub_26738114C();
  v20 = sub_26738116C();
  v9 = *(*(v20 - 8) + 56);
  v9(v8, 0, 1, v20);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D697265707865, 0xEC0000006449746ELL);
  v10(v21, 0);
  v11 = v18;
  v12 = v0;
  v13 = v19;
  (v19)(v4, v18, v12);
  v21[0] = 1;
  sub_26738114C();
  v9(v8, 0, 1, v20);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D7461657274, 0xEB00000000644974);
  v14(v21, 0);
  (v13)(v4, v11, v17);
  v21[0] = 1;
  sub_26738114C();
  v9(v8, 0, 1, v20);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D796F6C706564, 0xEC0000006449746ELL);
  return v15(v21, 0);
}

uint64_t sub_266FDDF0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDDF70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FDDFD4()
{
  result = qword_2800F1DF0;
  if (!qword_2800F1DF0)
  {
    sub_266FDE02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1DF0);
  }

  return result;
}

unint64_t sub_266FDE02C()
{
  result = qword_2800F1DE8;
  if (!qword_2800F1DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1DE8);
  }

  return result;
}

uint64_t static GRRSchemaGRRClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F2020, 0x277D57980);
  sub_266ECAF2C(&qword_2800F2028, &qword_2800F2020, 0x277D57980);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F2030, 0x277D57998);
  sub_266ECAF2C(&qword_2800F2038, &qword_2800F2030, 0x277D57998);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267440C40);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F2040, 0x277D579B8);
  sub_266ECAF2C(&qword_2800F2048, &qword_2800F2040, 0x277D579B8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267440C60);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F2050, 0x277D579E0);
  sub_266ECAF2C(&qword_2800F2058, &qword_2800F2050, 0x277D579E0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267440C80);
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
  sub_266ECB128(&unk_2878865E0);
  return sub_2673811CC();
}

uint64_t sub_266FDE654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FDE6EC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FDE7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDE81C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FDE87C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2060, &qword_2800F2068, 0x277D57978);
  a1[2] = sub_266ECAF2C(&qword_2800F2070, &qword_2800F2068, 0x277D57978);
  result = sub_266ECAF2C(&qword_2800F2078, &qword_2800F2068, 0x277D57978);
  a1[3] = result;
  return result;
}

uint64_t static GRRSchemaGRRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v18 = sub_26738113C();
  v16 = *(v18 - 8);
  v0 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v17 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449727267, 0xE500000000000000);
  v9(v20, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v19, 0x6449727267, 0xE500000000000000);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_287886610);
    sub_26738115C();
  }

  (v11)(v19, 0);
  v10(v20, 0);
  (*(v16 + 104))(v17, *MEMORY[0x277D3E530], v18);
  v20[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x80000002674206D0);
  return v13(v20, 0);
}

uint64_t sub_266FDED58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDEDBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRErrorCode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267440D00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267440D20, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267440D50, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266FDF074(uint64_t a1)
{
  v2 = sub_266FDF178(&qword_2800F2090);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FDF0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FDF178(&qword_2800F2090);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FDF178(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GRRSchemaGRRErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GRRSchemaGRRFeature.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a1;
  v3 = sub_26738118C();
  v180 = *(v3 - 8);
  v181 = v3;
  v4 = *(v180 + 64);
  MEMORY[0x28223BE20](v3);
  v179 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_26738113C();
  v185 = *(v192 - 8);
  v6 = *(v185 + 64);
  MEMORY[0x28223BE20](v192);
  v8 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v172 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v13 = sub_266ECB294(0, &qword_2800F2098, 0x277D579D8);
  v14 = sub_266ECAF2C(&qword_2800F20A0, &qword_2800F2098, 0x277D579D8);
  v176 = v13;
  v177 = v14;
  sub_26738121C();
  v15 = sub_26738116C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v190 = v15;
  v17(v12, 0, 1, v15);
  v188 = v17;
  v189 = v18;
  v19 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, 0x8000000267440DA0);
  v19(v193, 0);
  LODWORD(v175) = *MEMORY[0x277D3E538];
  v21 = v185 + 104;
  v20 = *(v185 + 104);
  v184 = v8;
  v20(v8);
  v186 = v20;
  v193[0] = 0;
  sub_26738114C();
  v17(v12, 0, 1, v15);
  v187 = a2;
  v22 = sub_2673811AC();
  sub_266EC637C(v12, 0x6B6E6152727361, 0xE700000000000000);
  v22(v193, 0);
  v191 = *MEMORY[0x277D3E4E8];
  v23 = v184;
  v20(v184);
  v185 = v21;
  v193[0] = 0;
  sub_26738114C();
  v24 = v190;
  v25 = v188;
  v188(v12, 0, 1, v190);
  v26 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001FLL, 0x8000000267440DC0);
  v26(v193, 0);
  v182 = "canResolveContactByRelationship";
  v183 = *MEMORY[0x277D3E530];
  v27 = v192;
  v28 = v186;
  v186(v23);
  v193[0] = 0;
  sub_26738114C();
  v25(v12, 0, 1, v24);
  v29 = v25;
  v30 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000016, v182 | 0x8000000000000000);
  v30(v193, 0);
  v182 = "configuredSiriLanguage";
  (v28)(v23, v191, v27);
  v193[0] = 0;
  sub_26738114C();
  v31 = v190;
  v29(v12, 0, 1, v190);
  v32 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000020, v182 | 0x8000000000000000);
  v32(v193, 0);
  v182 = "tedAddressDetail";
  v33 = v192;
  (v28)(v23, *MEMORY[0x277D3E518], v192);
  v193[0] = 0;
  sub_26738114C();
  v34 = v31;
  v35 = v188;
  v188(v12, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000016, v182 | 0x8000000000000000);
  v36(v193, 0);
  v182 = "contactMatchConfidence";
  (v28)(v23, v191, v33);
  v193[0] = 0;
  sub_26738114C();
  v35(v12, 0, 1, v190);
  v37 = v35;
  v38 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000014, v182 | 0x8000000000000000);
  v38(v193, 0);
  v39 = v184;
  (v28)(v184, v183, v33);
  v193[0] = 0;
  v40 = v39;
  sub_26738114C();
  v41 = v190;
  v37(v12, 0, 1, v190);
  v42 = sub_2673811AC();
  sub_266EC637C(v12, 0x69724F7475706E69, 0xEB000000006E6967);
  v42(v193, 0);
  v182 = "deviceIsPlayingAudio";
  v43 = v40;
  v44 = v191;
  (v28)(v43, v191, v33);
  v193[0] = 0;
  sub_26738114C();
  v45 = v41;
  v46 = v188;
  v188(v12, 0, 1, v41);
  v47 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000014, v182 | 0x8000000000000000);
  v47(v193, 0);
  v182 = "isActiveAlarmPresent";
  v48 = v184;
  v49 = v192;
  v50 = v186;
  (v186)(v184, v44, v192);
  v193[0] = 0;
  sub_26738114C();
  v46(v12, 0, 1, v45);
  v51 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001ALL, v182 | 0x8000000000000000);
  v51(v193, 0);
  v174 = "isActiveAppointmentPresent";
  v52 = v191;
  (v50)(v48, v191, v49);
  v193[0] = 0;
  sub_26738114C();
  v53 = v190;
  v54 = v188;
  v188(v12, 0, 1, v190);
  v55 = sub_2673811AC();
  v182 = 0xD000000000000011;
  sub_266EC637C(v12, 0xD000000000000011, v174 | 0x8000000000000000);
  v55(v193, 0);
  (v186)(v48, v52, v192);
  v193[0] = 0;
  sub_26738114C();
  v56 = v53;
  v54(v12, 0, 1, v53);
  v57 = sub_2673811AC();
  sub_266EC637C(v12, 0x506F696475417369, 0xEE00676E6979616CLL);
  v57(v193, 0);
  v58 = v191;
  v59 = v192;
  v60 = v186;
  (v186)(v48, v191, v192);
  v193[0] = 0;
  sub_26738114C();
  v188(v12, 0, 1, v56);
  v61 = sub_2673811AC();
  sub_266EC637C(v12, 0x736E497070417369, 0xEE0064656C6C6174);
  v61(v193, 0);
  v174 = "isAnnounceEnabled";
  v60(v48, v58, v59);
  v193[0] = 0;
  sub_26738114C();
  v62 = v190;
  v63 = v188;
  v188(v12, 0, 1, v190);
  v64 = sub_2673811AC();
  sub_266EC637C(v12, v182, v174 | 0x8000000000000000);
  v64(v193, 0);
  v65 = v192;
  v60(v48, v191, v192);
  v193[0] = 0;
  sub_26738114C();
  v66 = v63;
  v63(v12, 0, 1, v62);
  v67 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E75527070417369, 0xEC000000676E696ELL);
  v67(v193, 0);
  v68 = v191;
  (v186)(v48, v191, v65);
  v193[0] = 0;
  sub_26738114C();
  v66(v12, 0, 1, v190);
  v69 = v66;
  v70 = sub_2673811AC();
  sub_266EC637C(v12, 0x7473697472417369, 0xEF746E6573657250);
  v70(v193, 0);
  v182 = "isAppMatchPresent";
  v71 = v186;
  (v186)(v48, v68, v65);
  v193[0] = 0;
  sub_26738114C();
  v72 = v190;
  v69(v12, 0, 1, v190);
  v73 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, v182 | 0x8000000000000000);
  v73(v193, 0);
  v182 = "isContactNameResolved";
  (v71)(v48, v191, v65);
  v193[0] = 0;
  sub_26738114C();
  v74 = v188;
  v188(v12, 0, 1, v72);
  v75 = sub_2673811AC();
  v174 = 0xD000000000000010;
  sub_266EC637C(v12, 0xD000000000000010, v182 | 0x8000000000000000);
  v75(v193, 0);
  v76 = v191;
  v77 = v192;
  (v71)(v48, v191, v192);
  v193[0] = 0;
  sub_26738114C();
  v78 = v190;
  v74(v12, 0, 1, v190);
  v79 = sub_2673811AC();
  sub_266EC637C(v12, 0x776F6C6C6F467369, 0xEA00000000007055);
  v79(v193, 0);
  v182 = "isEmailAvailable";
  v80 = v186;
  (v186)(v48, v76, v77);
  v193[0] = 0;
  sub_26738114C();
  v81 = v78;
  v82 = v78;
  v83 = v188;
  v188(v12, 0, 1, v82);
  v84 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, v182 | 0x8000000000000000);
  v84(v193, 0);
  v173 = "isMediaItemEntityPresent";
  v85 = v192;
  v80(v48, v76, v192);
  v193[0] = 0;
  sub_26738114C();
  v83(v12, 0, 1, v81);
  v86 = sub_2673811AC();
  v182 = 0xD000000000000013;
  sub_266EC637C(v12, 0xD000000000000013, v173 | 0x8000000000000000);
  v86(v193, 0);
  v173 = "isMessagingPossible";
  v87 = v191;
  v88 = v186;
  (v186)(v48, v191, v85);
  v193[0] = 0;
  sub_26738114C();
  v89 = v188;
  v188(v12, 0, 1, v81);
  v90 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000027, v173 | 0x8000000000000000);
  v90(v193, 0);
  v173 = "bleForSendMessageIntent";
  v91 = v192;
  v88(v48, v87, v192);
  v193[0] = 0;
  sub_26738114C();
  v92 = v190;
  v89(v12, 0, 1, v190);
  v93 = sub_2673811AC();
  sub_266EC637C(v12, v182, v173 | 0x8000000000000000);
  v93(v193, 0);
  v173 = "isPhoneCallPossible";
  v94 = v184;
  v88(v184, v87, v91);
  v193[0] = 0;
  sub_26738114C();
  v95 = v188;
  v188(v12, 0, 1, v92);
  v96 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000025, v173 | 0x8000000000000000);
  v96(v193, 0);
  v173 = "bleForPhoneCallIntent";
  v97 = v191;
  v88(v94, v191, v91);
  v193[0] = 0;
  sub_26738114C();
  v95(v12, 0, 1, v92);
  v98 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000016, v173 | 0x8000000000000000);
  v98(v193, 0);
  v173 = "isPhoneNumberAvailable";
  v99 = v192;
  v100 = v186;
  (v186)(v94, v97, v192);
  v193[0] = 0;
  sub_26738114C();
  v101 = v92;
  v102 = v188;
  v188(v12, 0, 1, v101);
  v103 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001ELL, v173 | 0x8000000000000000);
  v103(v193, 0);
  v173 = "isPhoneNumberContactResolvable";
  v104 = v191;
  v105 = v99;
  v106 = v100;
  v100(v94, v191, v105);
  v193[0] = 0;
  sub_26738114C();
  v107 = v190;
  v102(v12, 0, 1, v190);
  v108 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001ELL, v173 | 0x8000000000000000);
  v108(v193, 0);
  v106(v94, v104, v192);
  v193[0] = 0;
  sub_26738114C();
  v109 = v188;
  v188(v12, 0, 1, v107);
  v110 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E69747465537369, 0xEB000000006E4F67);
  v110(v193, 0);
  v111 = v192;
  (v186)(v94, v104, v192);
  v193[0] = 0;
  sub_26738114C();
  v109(v12, 0, 1, v107);
  v112 = sub_2673811AC();
  sub_266EC637C(v12, 0x4172656D69547369, 0xED00006576697463);
  v112(v193, 0);
  v113 = v104;
  v114 = v186;
  (v186)(v94, v113, v111);
  v193[0] = 0;
  sub_26738114C();
  v115 = v107;
  v116 = v188;
  v188(v12, 0, 1, v115);
  v117 = sub_2673811AC();
  sub_266EC637C(v12, 0x506F656469567369, 0xEE00676E6979616CLL);
  v117(v193, 0);
  v173 = "isPreviousTurnSendEmptyMessage";
  (v114)(v94, v175, v111);
  v193[0] = 0;
  sub_26738114C();
  v118 = v190;
  v116(v12, 0, 1, v190);
  v119 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, v173 | 0x8000000000000000);
  v119(v193, 0);
  v173 = "numberOfContactsResolved";
  v120 = v186;
  (v186)(v94, v183, v111);
  v193[0] = 0;
  sub_26738114C();
  v116(v12, 0, 1, v118);
  v121 = sub_2673811AC();
  v175 = 0xD000000000000012;
  sub_266EC637C(v12, 0xD000000000000012, v173 | 0x8000000000000000);
  v121(v193, 0);
  v173 = "previousFlowDomain";
  v183 = *MEMORY[0x277D3E540];
  v122 = v94;
  v120(v94);
  v193[0] = 0;
  sub_26738114C();
  v123 = v118;
  v116(v12, 0, 1, v118);
  v124 = sub_2673811AC();
  sub_266EC637C(v12, v175, v173 | 0x8000000000000000);
  v124(v193, 0);
  v175 = "requestTimeBeginMs";
  v125 = v122;
  v126 = v191;
  v127 = v192;
  v128 = v186;
  (v186)(v125, v191, v192);
  v193[0] = 0;
  sub_26738114C();
  v116(v12, 0, 1, v123);
  v129 = sub_2673811AC();
  sub_266EC637C(v12, v174, v175 | 0x8000000000000000);
  v129(v193, 0);
  v175 = "sharingAppActive";
  v130 = v126;
  v131 = v127;
  v128(v184, v126, v127);
  v132 = v128;
  v193[0] = 0;
  sub_26738114C();
  v133 = v190;
  v134 = v188;
  v188(v12, 0, 1, v190);
  v135 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000014, v175 | 0x8000000000000000);
  v135(v193, 0);
  v175 = "sharingEntityPresent";
  v136 = v184;
  v132(v184, v130, v131);
  v193[0] = 0;
  sub_26738114C();
  v134(v12, 0, 1, v133);
  v137 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000017, v175 | 0x8000000000000000);
  v137(v193, 0);
  v175 = "sharingRecipientPresent";
  v138 = v191;
  v139 = v192;
  v140 = v186;
  (v186)(v136, v191, v192);
  v193[0] = 0;
  sub_26738114C();
  v134(v12, 0, 1, v190);
  v141 = sub_2673811AC();
  sub_266EC637C(v12, v182, v175 | 0x8000000000000000);
  v141(v193, 0);
  v182 = "smsAttachmentExists";
  v142 = v184;
  v140(v184, v138, v139);
  v143 = v140;
  v193[0] = 0;
  v144 = v142;
  sub_26738114C();
  v145 = v190;
  v146 = v188;
  v188(v12, 0, 1, v190);
  v147 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001BLL, v182 | 0x8000000000000000);
  v147(v193, 0);
  v182 = "smsAttributeRecipientExists";
  v148 = v144;
  v149 = v191;
  v150 = v192;
  v143(v148, v191, v192);
  v193[0] = 0;
  sub_26738114C();
  v146(v12, 0, 1, v145);
  v151 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, v182 | 0x8000000000000000);
  v151(v193, 0);
  v182 = "smsAttributeSenderExists";
  v152 = v184;
  v143(v184, v149, v150);
  v193[0] = 0;
  sub_26738114C();
  v153 = v190;
  v146(v12, 0, 1, v190);
  v154 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000017, v182 | 0x8000000000000000);
  v154(v193, 0);
  v182 = "smsPhoneNumberMentioned";
  v155 = v192;
  v156 = v186;
  (v186)(v152, v191, v192);
  v193[0] = 0;
  sub_26738114C();
  v157 = v153;
  v146(v12, 0, 1, v153);
  v158 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000014, v182 | 0x8000000000000000);
  v158(v193, 0);
  (v156)(v152, v183, v155);
  v193[0] = 0;
  sub_26738114C();
  v159 = v188;
  v188(v12, 0, 1, v157);
  v160 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001BLL, 0x80000002674411B0);
  v160(v193, 0);
  sub_26738121C();
  v159(v12, 0, 1, v157);
  v161 = sub_2673811AC();
  v162 = v12;
  v163 = v179;
  sub_266EC637C(v162, 0x6369706F54706F74, 0xE900000000000073);
  v161(v193, 0);
  sub_26738117C();
  v164 = sub_2673811BC();
  v166 = v165;
  v167 = *v165;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v166 = v167;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v167 = sub_266ECAD54(0, v167[2] + 1, 1, v167);
    *v166 = v167;
  }

  v170 = v167[2];
  v169 = v167[3];
  if (v170 >= v169 >> 1)
  {
    v167 = sub_266ECAD54(v169 > 1, v170 + 1, 1, v167);
    *v166 = v167;
  }

  v167[2] = v170 + 1;
  (*(v180 + 32))(v167 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v170, v163, v181);
  return v164(v193, 0);
}