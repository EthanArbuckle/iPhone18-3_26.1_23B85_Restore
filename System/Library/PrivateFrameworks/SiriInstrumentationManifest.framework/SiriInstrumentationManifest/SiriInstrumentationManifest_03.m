uint64_t sub_266F43624(uint64_t a1)
{
  v2 = sub_266F43728(&qword_2800F0310);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F4368C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F43728(&qword_2800F0310);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F43728(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityParameter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DialogEngineSchemaDLGENGClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0318, 0x277D571F8);
  sub_266ECAF2C(&qword_2800F0320, &qword_2800F0318, 0x277D571F8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0328, 0x277D57200);
  sub_266ECAF2C(&qword_2800F0330, &qword_2800F0328, 0x277D57200);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026742B510);
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
  sub_266ECB128(&unk_287884BE0);
  return sub_2673811CC();
}

uint64_t sub_266F43B9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F43C34()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F43D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F43D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F43DC4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0338, &qword_2800F0340, 0x277D571F0);
  a1[2] = sub_266ECAF2C(&qword_2800F0348, &qword_2800F0340, 0x277D571F0);
  result = sub_266ECAF2C(&qword_2800F0350, &qword_2800F0340, 0x277D571F0);
  a1[3] = result;
  return result;
}

uint64_t static DialogEngineSchemaDLGENGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v30 = a1;
  v27 = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v26 = *(v10 + 56);
  v26(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E45676F6C616964, 0xEE006449656E6967);
  v11(v32, 0);
  v28 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v31, 0x6E45676F6C616964, 0xEE006449656E6967);
  v14 = *(v10 + 48);
  v29 = v10 + 48;
  if (!v14(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884C18);
    sub_26738115C();
  }

  (v13)(v31, 0);
  v12(v32, 0);
  sub_26738120C();
  v26(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000064);
  v16(v32, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v31, 0x4974736575716572, 0xE900000000000064);
  if (!v14(v19, 1, v9))
  {
    sub_266ECB128(&unk_287884C48);
    sub_26738115C();
  }

  (v18)(v31, 0);
  v17(v32, 0);
  sub_26738120C();
  v26(v7, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v20(v32, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v31, 0x6575716552627573, 0xEC00000064497473);
  if (!v14(v23, 1, v9))
  {
    sub_266ECB128(&unk_287884C78);
    sub_26738115C();
  }

  (v22)(v31, 0);
  return v21(v32, 0);
}

uint64_t sub_266F443CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F44430(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DialogEngineSchemaDLGENGNamedEntitiesUsed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityCatId(0);
  sub_266F44828();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449746163, 0xE500000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F02F8, 0x277D57208);
  sub_266ECAF2C(&qword_2800F02F0, &qword_2800F02F8, 0x277D57208);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E4564656D616ELL, 0xED00007365697469);
  return v7(v9, 0);
}

uint64_t sub_266F44764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F447C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F44828()
{
  result = qword_2800F0300;
  if (!qword_2800F0300)
  {
    type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityCatId(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0300);
  }

  return result;
}

uint64_t static DIMSchemaDIMClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0360, 0x277D57048);
  sub_266ECAF2C(&qword_2800F0368, &qword_2800F0360, 0x277D57048);
  sub_26738121C();
  v11 = sub_26738116C();
  v35 = *(v11 - 8);
  v13 = v35 + 56;
  v12 = *(v35 + 56);
  v12(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026742B5E0);
  v14(v43, 0);
  sub_266ECB294(0, &qword_2800F0370, 0x277D57080);
  sub_266ECAF2C(&qword_2800F0378, &qword_2800F0370, 0x277D57080);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026742B600);
  v15(v43, 0);
  sub_266ECB294(0, &qword_2800F0380, 0x277D57070);
  sub_266ECAF2C(&qword_2800F0388, &qword_2800F0380, 0x277D57070);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026742B620);
  v16(v43, 0);
  sub_266ECB294(0, &qword_2800F0390, 0x277D57078);
  sub_266ECAF2C(&qword_2800F0398, &qword_2800F0390, 0x277D57078);
  v37 = a1;
  sub_26738121C();
  v36 = v12;
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x6563697665446E6FLL, 0xEE00747365676944);
  v17(v43, 0);
  v41 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v42, 0x6563697665446E6FLL, 0xEE00747365676944);
  if (!(*(v35 + 48))(v20, 1, v11))
  {
    sub_266ECB128(&unk_287884CA8);
    sub_26738115C();
  }

  (v19)(v42, 0);
  v18(v43, 0);
  sub_266ECB294(0, &qword_2800F03A0, 0x277D57050);
  sub_266ECAF2C(&qword_2800F03A8, &qword_2800F03A0, 0x277D57050);
  sub_26738121C();
  v21 = v36;
  v36(v10, 0, 1, v11);
  v34 = v13;
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026742B640);
  v22(v43, 0);
  sub_266ECB294(0, &qword_2800F03B0, 0x277D57058);
  sub_266ECAF2C(&qword_2800F03B8, &qword_2800F03B0, 0x277D57058);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, 0x800000026742B660);
  v23(v43, 0);
  sub_266ECB294(0, &qword_2800F03C0, 0x277D57060);
  sub_266ECAF2C(&qword_2800F03C8, &qword_2800F03C0, 0x277D57060);
  sub_26738121C();
  v21(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026742B690);
  v24(v43, 0);
  v25 = v38;
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
  (*(v39 + 32))(v29 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32, v25, v40);
  v26(v43, 0);
  sub_266ECB128(&unk_287884CD0);
  return sub_2673811CC();
}

uint64_t sub_266F45204(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F4529C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F45368(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F453CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F4542C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F03D0, &qword_2800F03D8, 0x277D57038);
  a1[2] = sub_266ECAF2C(&qword_2800F03E0, &qword_2800F03D8, 0x277D57038);
  result = sub_266ECAF2C(&qword_2800F03E8, &qword_2800F03D8, 0x277D57038);
  a1[3] = result;
  return result;
}

uint64_t static DIMSchemaDIMDataSharingSettings.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.dim.DIMDataSharingSettings";
  v11 = *MEMORY[0x277D3E4E8];
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
  sub_266EC637C(v10, 0xD000000000000015, 0x800000026742B700);
  return v16(v21, 0);
}

uint64_t sub_266F45860(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F458C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F45928()
{
  result = qword_2800F03F8;
  if (!qword_2800F03F8)
  {
    sub_266F45980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F03F8);
  }

  return result;
}

unint64_t sub_266F45980()
{
  result = qword_2800F0400;
  if (!qword_2800F0400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0400);
  }

  return result;
}

uint64_t static DIMSchemaDIMDeviceFixedContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v81 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_26738113C();
  v91 = *(v88 - 8);
  v7 = *(v91 + 64);
  MEMORY[0x28223BE20](v88);
  v92 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v78 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_266F46FA4(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v12, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v12, 0x6F4C6D6574737973, 0xEC000000656C6163);
  v17(v93, 0);
  sub_26738120C();
  v15(v12, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v12, 0x75706E4969726973, 0xEF656C61636F4C74);
  v18(v93, 0);
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8);
  v90 = a1;
  sub_26738120C();
  v15(v12, 0, 1, v13);
  v19 = sub_2673811AC();
  v80 = 0xD000000000000011;
  sub_266EC637C(v12, 0xD000000000000011, 0x800000026742B750);
  v19(v93, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_266F46FA4(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v15(v12, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x800000026742B770);
  v20(v93, 0);
  LODWORD(v86) = *MEMORY[0x277D3E530];
  v21 = v92;
  v22 = *(v91 + 104);
  v91 += 104;
  v87 = v22;
  v23 = v88;
  (v22)(v92);
  v93[0] = 1;
  sub_26738114C();
  v89 = v13;
  v15(v12, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v12, 0x656E6F7A656D6974, 0xEE0074657366664FLL);
  v24(v93, 0);
  type metadata accessor for SISchemaCountryCode(0);
  sub_266F46FA4(&qword_2800F0420, type metadata accessor for SISchemaCountryCode);
  sub_26738120C();
  v25 = v13;
  v26 = v15;
  v15(v12, 0, 1, v25);
  v78 = v16;
  v27 = a2;
  v28 = sub_2673811AC();
  sub_266EC637C(v12, 0x437972746E756F63, 0xEB0000000065646FLL);
  v28(v93, 0);
  v29 = v21;
  v30 = v86;
  v31 = v23;
  v32 = v23;
  v33 = v87;
  v87(v29, v86, v32);
  v93[0] = 1;
  sub_26738114C();
  v15(v12, 0, 1, v89);
  v34 = sub_2673811AC();
  sub_266EC637C(v12, 0x7954656369766564, 0xEA00000000006570);
  v34(v93, 0);
  v33(v92, v30, v31);
  v93[0] = 1;
  sub_26738114C();
  v35 = v89;
  v15(v12, 0, 1, v89);
  v36 = sub_2673811AC();
  sub_266EC637C(v12, 0x75426D6574737973, 0xEB00000000646C69);
  v36(v93, 0);
  LODWORD(v79) = *MEMORY[0x277D3E4E8];
  v37 = v92;
  (v33)(v92);
  v93[0] = 1;
  sub_26738114C();
  v26(v12, 0, 1, v35);
  v38 = sub_2673811AC();
  sub_266EC637C(v12, 0x4465726F74537369, 0xEF65646F4D6F6D65);
  v38(v93, 0);
  v33(v37, *MEMORY[0x277D3E518], v31);
  v93[0] = 1;
  sub_26738114C();
  v39 = v89;
  v26(v12, 0, 1, v89);
  v40 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x800000026742B790);
  v40(v93, 0);
  sub_266ECB294(0, &qword_2800F0428, 0x277D57088);
  sub_266ECAF2C(&qword_2800F0430, &qword_2800F0428, 0x277D57088);
  sub_26738121C();
  v26(v12, 0, 1, v39);
  v41 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x800000026742B7B0);
  v41(v93, 0);
  v87(v92, v79, v88);
  v93[0] = 1;
  sub_26738114C();
  v26(v12, 0, 1, v39);
  v42 = v26;
  v84 = v26;
  v43 = v27;
  v44 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x800000026742B7D0);
  v44(v93, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v45 = v89;
  v42(v12, 0, 1, v89);
  v46 = sub_2673811AC();
  sub_266EC637C(v12, 0x6F4C6D6574737973, 0xEE003256656C6163);
  v46(v93, 0);
  sub_26738120C();
  v47 = v45;
  v48 = v45;
  v49 = v84;
  v84(v12, 0, 1, v48);
  v50 = sub_2673811AC();
  sub_266EC637C(v12, v80, 0x800000026742B7F0);
  v50(v93, 0);
  type metadata accessor for SISchemaProgramCode(0);
  sub_266F46FA4(&qword_2800F0448, type metadata accessor for SISchemaProgramCode);
  sub_26738120C();
  v49(v12, 0, 1, v47);
  v85 = v43;
  v51 = sub_2673811AC();
  sub_266EC637C(v12, 0x436D6172676F7270, 0xEB0000000065646FLL);
  v51(v93, 0);
  v79 = "siriInputLocaleV2";
  v52 = v86;
  v54 = v87;
  v53 = v88;
  v87(v92, v86, v88);
  v93[0] = 1;
  sub_26738114C();
  v49(v12, 0, 1, v47);
  v55 = sub_2673811AC();
  v80 = 0xD000000000000010;
  sub_266EC637C(v12, 0xD000000000000010, v79 | 0x8000000000000000);
  v55(v93, 0);
  v79 = "dataCollectionId";
  v56 = v53;
  v54(v92, v52, v53);
  v93[0] = 1;
  sub_26738114C();
  v57 = v89;
  v58 = v84;
  v84(v12, 0, 1, v89);
  v59 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000017, v79 | 0x8000000000000000);
  v59(v93, 0);
  v54(v92, v86, v56);
  v93[0] = 1;
  sub_26738114C();
  v58(v12, 0, 1, v57);
  v60 = v58;
  v61 = sub_2673811AC();
  v86 = 0xD000000000000012;
  sub_266EC637C(v12, 0xD000000000000012, 0x800000026742B850);
  v61(v93, 0);
  type metadata accessor for SISchemaHomeKitConfiguration(0);
  sub_266F46FA4(&qword_2800F0450, type metadata accessor for SISchemaHomeKitConfiguration);
  sub_26738120C();
  v62 = v89;
  v60(v12, 0, 1, v89);
  v63 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000014, 0x800000026742B870);
  v63(v93, 0);
  sub_266ECB294(0, &qword_2800F0458, 0x277D57090);
  sub_266ECAF2C(&qword_2800F0460, &qword_2800F0458, 0x277D57090);
  sub_26738120C();
  v60(v12, 0, 1, v62);
  v64 = sub_2673811AC();
  sub_266EC637C(v12, v86, 0x800000026742B890);
  v64(v93, 0);
  sub_266ECB294(0, &qword_2800F0400, 0x277D57040);
  sub_266ECAF2C(&qword_2800F03F8, &qword_2800F0400, 0x277D57040);
  sub_26738120C();
  v60(v12, 0, 1, v62);
  v65 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000013, 0x800000026742B8B0);
  v65(v93, 0);
  v87(v92, *MEMORY[0x277D3E538], v88);
  v93[0] = 1;
  sub_26738114C();
  v60(v12, 0, 1, v62);
  v66 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001BLL, 0x800000026742B8D0);
  v66(v93, 0);
  type metadata accessor for DIMSchemaDIMSearchDataOptOutState(0);
  sub_266F46FA4(&qword_2800F0468, type metadata accessor for DIMSchemaDIMSearchDataOptOutState);
  sub_26738120C();
  v60(v12, 0, 1, v62);
  v67 = sub_2673811AC();
  v68 = v12;
  v69 = v81;
  sub_266EC637C(v68, 0xD000000000000015, 0x800000026742B8F0);
  v67(v93, 0);
  sub_26738117C();
  v70 = sub_2673811BC();
  v72 = v71;
  v73 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v72 = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_266ECAD54(0, v73[2] + 1, 1, v73);
    *v72 = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    v73 = sub_266ECAD54(v75 > 1, v76 + 1, 1, v73);
    *v72 = v73;
  }

  v73[2] = v76 + 1;
  (*(v82 + 32))(v73 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v76, v69, v83);
  return v70(v93, 0);
}

uint64_t sub_266F46EE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F46F44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F46FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static DIMSchemaDIMEphemeralIdentifiers.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6568704572657375, 0xEF64496C6172656DLL);
  v9(v17, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x65687045656D6F68, 0xEF64496C6172656DLL);
  v10(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E540], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x800000026742B960);
  return v11(v17, 0);
}

uint64_t sub_266F47408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4746C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DIMSchemaDIMEphemeralToAggregationIdentifierMap.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = sub_26738113C();
  v48 = *(v46 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v42 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v43 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v49 = v14;
  v45 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6568704572657375, 0xEF64496C6172656DLL);
  v15(v50, 0);
  v40 = "eralToAggregationIdentifierMap";
  v41 = v10;
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v16 = v13;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v40 | 0x8000000000000000);
  v17(v50, 0);
  v37 = "userAggregationId";
  v20 = v48 + 104;
  v19 = *(v48 + 104);
  v39 = *MEMORY[0x277D3E540];
  v18 = v39;
  v21 = v46;
  (v19)(v47, v39, v46);
  v40 = v19;
  v48 = v20;
  v50[0] = 1;
  sub_26738114C();
  v16(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v37 | 0x8000000000000000);
  v22(v50, 0);
  v37 = "dRotationTimestampMs";
  (v19)(v47, v18, v21);
  v50[0] = 1;
  sub_26738114C();
  v23 = v11;
  v44 = v11;
  v16(v9, 0, 1, v11);
  v24 = v16;
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000026, v37 | 0x8000000000000000);
  v25(v50, 0);
  v37 = "dExpirationTimestampMs";
  sub_26738120C();
  v16(v9, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v37 | 0x8000000000000000);
  v26(v50, 0);
  sub_26738120C();
  v27 = v44;
  v38 = v16;
  v16(v9, 0, 1, v44);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x706D615372657375, 0xEE006449676E696CLL);
  v28(v50, 0);
  v43 = "deviceAggregationId";
  v30 = v46;
  v29 = v47;
  v31 = v39;
  v32 = v40;
  (v40)(v47, v39, v46);
  v50[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v27);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v43 | 0x8000000000000000);
  v33(v50, 0);
  v32(v29, v31, v30);
  v50[0] = 1;
  sub_26738114C();
  v38(v9, 0, 1, v44);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000023, 0x800000026742BA90);
  v34(v50, 0);
  sub_266ECB128(&unk_287884D08);
  return sub_2673811CC();
}

uint64_t sub_266F47CD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F47D3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DIMSchemaDIMExperimentContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0470, 0x277D57068);
  sub_266ECAF2C(&qword_2800F0478, &qword_2800F0470, 0x277D57068);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D697265707865, 0xEE006F666E49746ELL);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026742BAF0);
  return v11(v15, 0);
}

uint64_t sub_266F48120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F48184(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DIMSchemaDIMExperimentInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v18 = *(v2 + 104);
  v18(v5, v10, v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D697265707865, 0xEC0000006449746ELL);
  v13(v21, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D7461657274, 0xEB00000000644974);
  v14(v21, 0);
  v18(v5, *MEMORY[0x277D3E510], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D796F6C706564, 0xEC0000006449746ELL);
  return v15(v21, 0);
}

uint64_t sub_266F48634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F48698(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DIMSchemaDIMLocaleNotRecognized.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x4C6E776F6E6B6E75, 0xED0000656C61636FLL);
  return v10(v12, 0);
}

uint64_t sub_266F48994(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F489F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F48A5C()
{
  result = qword_2800F0388;
  if (!qword_2800F0388)
  {
    sub_266F48AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0388);
  }

  return result;
}

unint64_t sub_266F48AB4()
{
  result = qword_2800F0380;
  if (!qword_2800F0380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0380);
  }

  return result;
}

uint64_t static DIMSchemaDIMOnDeviceDigest.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.dim.DIMOnDeviceDigest";
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000029, 0x800000026742BBD0);
  v16(v21, 0);
  sub_266ECB128(&unk_287884D38);
  return sub_2673811CC();
}

uint64_t sub_266F48E4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F48EB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F48F14()
{
  result = qword_2800F0398;
  if (!qword_2800F0398)
  {
    sub_266F48F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0398);
  }

  return result;
}

unint64_t sub_266F48F6C()
{
  result = qword_2800F0390;
  if (!qword_2800F0390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0390);
  }

  return result;
}

uint64_t static DIMSchemaDIMSearchDataOptOutState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026742BC40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x800000026742BC60, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026742BC80, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F491CC(uint64_t a1)
{
  v2 = sub_266F492D0(&qword_2800F0480);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F49234(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F492D0(&qword_2800F0480);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F492D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DIMSchemaDIMSearchDataOptOutState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DIMSchemaDIMSiriAccountInformation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6976654469726973, 0xEC00000064496563);
  v12(v22, 0);
  v13 = v0;
  v14 = v20;
  v20(v4, v9, v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6565705369726973, 0xEC00000064496863);
  v15(v22, 0);
  v14(v4, v9, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265735569726973, 0xEA00000000006449);
  v16(v22, 0);
  sub_266ECB128(&unk_287884D60);
  return sub_2673811CC();
}

uint64_t sub_266F49714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F49778(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F497DC()
{
  result = qword_2800F0378;
  if (!qword_2800F0378)
  {
    sub_266F49834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0378);
  }

  return result;
}

unint64_t sub_266F49834()
{
  result = qword_2800F0370;
  if (!qword_2800F0370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0370);
  }

  return result;
}

uint64_t static DIMSchemaDIMWatchArmOrientation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026742BD10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026742BD30, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x800000026742BD50, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F49A94(uint64_t a1)
{
  v2 = sub_266F49B98(&qword_2800F0490);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F49AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F49B98(&qword_2800F0490);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F49B98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DIMSchemaDIMWatchArmOrientation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DIMSchemaDIMWatchDeviceAttributes.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for DIMSchemaDIMWatchArmOrientation(0);
  sub_266F49ECC(&qword_2800F0488, type metadata accessor for DIMSchemaDIMWatchArmOrientation);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026742BDB0);
  return v5(v7, 0);
}

uint64_t sub_266F49DC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F49E24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F49ECC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F49F14()
{
  result = qword_2800F0428;
  if (!qword_2800F0428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0428);
  }

  return result;
}

uint64_t static DIMSchemaEntitySyncSettings.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026742BE00);
  return v10(v12, 0);
}

uint64_t sub_266F4A1B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4A214(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F4A278()
{
  result = qword_2800F0460;
  if (!qword_2800F0460)
  {
    sub_266F4A2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0460);
  }

  return result;
}

unint64_t sub_266F4A2D0()
{
  result = qword_2800F0458;
  if (!qword_2800F0458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0458);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRAlignmentInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v41 = *(v1 + 104);
  v41(v4, v9, v0);
  v34 = v1 + 104;
  v42[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v40 = *(v11 + 56);
  v12 = v11 + 56;
  v40(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x636E657265666572, 0xED0000656D614E65);
  v13(v42, 0);
  v14 = *MEMORY[0x277D3E538];
  v37 = v4;
  v15 = v4;
  v38 = v14;
  v16 = v0;
  v39 = v0;
  v17 = v41;
  v41(v15, v14, v0);
  v42[0] = 1;
  sub_26738114C();
  v18 = v40;
  v40(v8, 0, 1, v10);
  v36 = v12;
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x74656C65446D756ELL, 0xEC000000736E6F69);
  v19(v42, 0);
  v20 = v37;
  v17(v37, v14, v16);
  v42[0] = 1;
  sub_26738114C();
  v35 = v10;
  v18(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265736E496D756ELL, 0xED0000736E6F6974);
  v21(v42, 0);
  v33 = "lEditMetricClassified";
  v22 = v38;
  v23 = v39;
  v24 = v41;
  v41(v20, v38, v39);
  v42[0] = 1;
  sub_26738114C();
  v25 = v40;
  v40(v8, 0, 1, v10);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v33 | 0x8000000000000000);
  v26(v42, 0);
  v27 = v37;
  v24(v37, v22, v23);
  v42[0] = 1;
  sub_26738114C();
  v28 = v35;
  v25(v8, 0, 1, v35);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0x7473694474696465, 0xEC00000065636E61);
  v29(v42, 0);
  v24(v27, v38, v39);
  v42[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x636E657265666572, 0xED0000657A695365);
  return v30(v42, 0);
}

uint64_t sub_266F4A9A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4AA08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F4AA6C()
{
  result = qword_2800F0498;
  if (!qword_2800F0498)
  {
    sub_266F4AAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0498);
  }

  return result;
}

unint64_t sub_266F4AAC4()
{
  result = qword_2800F04A0;
  if (!qword_2800F04A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F04A0);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRAudioFileResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449727361, 0xE500000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F04A8, 0x277D570E0);
  sub_266ECAF2C(&qword_2800F04B0, &qword_2800F04A8, 0x277D570E0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x676E69646F636564, 0xEF73746C75736552);
  v7(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v8(v11, 0);
}

uint64_t sub_266F4AE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4AEC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRAudioFileResultTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF140, 0x277D56A38);
  sub_266ECAF2C(&qword_2800EF148, &qword_2800EF140, 0x277D56A38);
  v16[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x800000026742BED0);
  v9(v18, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v17, 0xD000000000000011, 0x800000026742BED0);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_287884D90);
    sub_26738115C();
  }

  (v11)(v17, 0);
  v10(v18, 0);
  sub_266ECB294(0, &qword_2800EF590, 0x277D569D8);
  sub_266ECAF2C(&qword_2800EF588, &qword_2800EF590, 0x277D569D8);
  sub_26738122C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026742BEF0);
  v13(v18, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  return v14(v18, 0);
}

uint64_t sub_266F4B3B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4B41C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRChoiceInfo.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F04D8, 0x277D57160);
  sub_266ECAF2C(&qword_2800F04E0, &qword_2800F04D8, 0x277D57160);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x736E656B6F74, 0xE600000000000000);
  v11(v19, 0);
  v12 = *MEMORY[0x277D3E500];
  v13 = *(v18 + 104);
  v18 += 104;
  v13(v4, v12, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x736F436870617267, 0xE900000000000074);
  v14(v19, 0);
  v13(v4, v12, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x63697473756F6361, 0xEC00000074736F43);
  return v15(v19, 0);
}

uint64_t sub_266F4B8B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4B91C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRConfusionPair.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = sub_26738113C();
  v25 = *(v27 - 8);
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v24 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v23 = *(v9 + 56);
  v23(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449727361, 0xE500000000000000);
  v10(v29, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v28, 0x6449727361, 0xE500000000000000);
  v13 = v8;
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_287884DB8);
    sub_26738115C();
  }

  (v12)(v28, 0);
  v11(v29, 0);
  v22 = *MEMORY[0x277D3E508];
  v25 = *(v25 + 104);
  (v25)(v26);
  v29[0] = 1;
  sub_26738114C();
  v15 = v23;
  v23(v7, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  v16(v29, 0);
  type metadata accessor for ASRSchemaASREditMethod(0);
  sub_266F4C0C0(&qword_2800EF3C8, type metadata accessor for ASRSchemaASREditMethod);
  sub_26738120C();
  v15(v7, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6874654D74696465, 0xEA0000000000646FLL);
  v17(v29, 0);
  type metadata accessor for ASRSchemaASREditReason(0);
  sub_266F4C0C0(&qword_2800EF3D8, type metadata accessor for ASRSchemaASREditReason);
  sub_26738120C();
  v15(v7, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x7361655274696465, 0xEA00000000006E6FLL);
  v18(v29, 0);
  (v25)(v26, v22, v27);
  v29[0] = 1;
  sub_26738114C();
  v15(v7, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026742BF70);
  return v19(v29, 0);
}

uint64_t sub_266F4BFFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4C060(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F4C0C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static DODMLASRSchemaDODMLASRConfusionPairTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v1 + 104);
  v34 = *MEMORY[0x277D3E530];
  v35 = v1 + 104;
  v36 = v0;
  v33 = v9;
  v9(v4);
  v38[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v31 = *(v11 + 56);
  v32 = v11 + 56;
  v31(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741FB50);
  v12(v38, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v37, 0xD000000000000010, 0x800000026741FB50);
  v30 = *(v11 + 48);
  if (!v30(v15, 1, v10))
  {
    sub_266ECB128(&unk_287884DE0);
    sub_26738115C();
  }

  (v14)(v37, 0);
  v13(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574636572726F63, 0xEF736E656B6F5464);
  v16(v38, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v37, 0x6574636572726F63, 0xEF736E656B6F5464);
  if (!v30(v19, 1, v10))
  {
    sub_266ECB128(&unk_287884E08);
    sub_26738115C();
  }

  (v18)(v37, 0);
  v17(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026742BFD0);
  v20(v38, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v37, 0xD000000000000010, 0x800000026742BFD0);
  if (!v30(v23, 1, v10))
  {
    sub_266ECB128(&unk_287884E30);
    sub_26738115C();
  }

  (v22)(v37, 0);
  v21(v38, 0);
  v33(v4, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742BFF0);
  v24(v38, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v37, 0xD000000000000011, 0x800000026742BFF0);
  if (!v30(v27, 1, v10))
  {
    sub_266ECB128(&unk_287884E58);
    sub_26738115C();
  }

  (v26)(v37, 0);
  return v25(v38, 0);
}

uint64_t sub_266F4C84C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4C8B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F4C914()
{
  result = qword_2800F0508;
  if (!qword_2800F0508)
  {
    sub_266F4C96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0508);
  }

  return result;
}

unint64_t sub_266F4C96C()
{
  result = qword_2800F0510;
  if (!qword_2800F0510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0510);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  v5(v7, 0);
  sub_266ECB128(&unk_287884E80);
  return sub_2673811CC();
}

uint64_t sub_266F4CBC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4CC28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRContextualReplayBiomeRecordDeleted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  v5(v7, 0);
  sub_266ECB128(&unk_287884EB0);
  return sub_2673811CC();
}

uint64_t sub_266F4CED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4CF3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRDecodingMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v27 = sub_26738113C();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v26 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v29 = a2;
  sub_26738119C();
  LODWORD(v28) = *MEMORY[0x277D3E500];
  v30 = *(v3 + 104);
  v31 = v3 + 104;
  v30(v6);
  v33[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026742C0F0);
  v15(v33, 0);
  sub_266ECB294(0, &qword_2800EF4E0, 0x277D56960);
  sub_266ECAF2C(&qword_2800EF4D8, &qword_2800EF4E0, 0x277D56960);
  sub_26738122C();
  v13(v10, 0, 1, v11);
  v26[1] = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x8000000267421950);
  v16(v33, 0);
  v26[0] = "recognizerComponents";
  v17 = v27;
  v18 = v30;
  (v30)(v6, v28, v27);
  v33[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v26[0] | 0x8000000000000000);
  v19(v33, 0);
  v28 = "wallRealTimeFactor";
  v20 = *MEMORY[0x277D3E540];
  (v18)(v6, v20, v17);
  v33[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v28 | 0x8000000000000000);
  v21(v33, 0);
  v28 = "jitQueryDurationInMs";
  (v30)(v6, v20, v17);
  v33[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, v28 | 0x8000000000000000);
  v22(v33, 0);
  v31 = "EnrollmentDurationInMs";
  sub_266ECB294(0, &qword_2800F0538, 0x277D570E8);
  sub_266ECAF2C(&qword_2800F0540, &qword_2800F0538, 0x277D570E8);
  sub_26738122C();
  v13(v10, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v31 | 0x8000000000000000);
  v23(v33, 0);
  sub_26738122C();
  v13(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x800000026742C190);
  return v24(v33, 0);
}

uint64_t sub_266F4D714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4D778(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRDecodingResult.makeTypeManifestAndEnsureFields(in:)(void (*a1)(char *, void, uint64_t, uint64_t))
{
  v2 = sub_26738113C();
  v31 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v29 = *(v3 + 104);
  v30 = v3 + 104;
  v29(v6, v11, v2);
  v33[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v26 = *(v12 - 8);
  v13 = *(v26 + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x614E6769666E6F63, 0xEA0000000000656DLL);
  v14(v33, 0);
  sub_266ECB294(0, &qword_2800EF4E8, 0x277D56AA0);
  sub_266ECAF2C(&qword_2800EF4F0, &qword_2800EF4E8, 0x277D56AA0);
  sub_26738122C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x736E656B6F74, 0xE600000000000000);
  v15(v33, 0);
  sub_266ECB294(0, &qword_2800F0558, 0x277D571A0);
  sub_266ECAF2C(&qword_2800F0560, &qword_2800F0558, 0x277D571A0);
  v27 = a1;
  sub_26738122C();
  v13(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x636E617265747475, 0xEA00000000007365);
  v16(v33, 0);
  sub_266ECB294(0, &qword_2800F0550, 0x277D570D8);
  sub_266ECAF2C(&qword_2800F0548, &qword_2800F0550, 0x277D570D8);
  sub_26738120C();
  v13(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x676E69646F636564, 0xEF7363697274654DLL);
  v17(v33, 0);
  v29(v6, *MEMORY[0x277D3E540], v31);
  v33[0] = 1;
  v28 = v6;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026742C200);
  v18(v33, 0);
  sub_266ECB294(0, &qword_2800F04A0, 0x277D57098);
  sub_266ECAF2C(&qword_2800F0498, &qword_2800F04A0, 0x277D57098);
  sub_26738122C();
  v13(v10, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656D6E67696C61, 0xEA00000000007374);
  v19(v33, 0);
  sub_266ECB294(0, &qword_2800F0568, 0x277D570F8);
  sub_266ECAF2C(&qword_2800F0570, &qword_2800F0568, 0x277D570F8);
  sub_26738122C();
  v27 = v13;
  v13(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026742C220);
  v20(v33, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v32, 0xD000000000000012, 0x800000026742C220);
  if (!(*(v26 + 48))(v23, 1, v12))
  {
    sub_266ECB128(&unk_287884EE0);
    sub_26738115C();
  }

  (v22)(v32, 0);
  v21(v33, 0);
  v29(v28, *MEMORY[0x277D3E538], v31);
  v33[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x800000026742C240);
  return v24(v33, 0);
}

uint64_t sub_266F4E0E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4E148(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASREntityCategoryCount.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x6143797469746E65, 0xEE0079726F676574);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x746E756F63, 0xE500000000000000);
  return v15(v18, 0);
}

uint64_t sub_266F4E514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4E578(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F4E5DC()
{
  result = qword_2800F0540;
  if (!qword_2800F0540)
  {
    sub_266F4E634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0540);
  }

  return result;
}

unint64_t sub_266F4E634()
{
  result = qword_2800F0538;
  if (!qword_2800F0538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0538);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASREntityScore.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for ASRSchemaASREntityTaggerCategory(0);
  sub_266F4EB9C(&qword_2800EF438, type metadata accessor for ASRSchemaASREntityTaggerCategory);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v19 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267421370);
  v11(v22, 0);
  v18 = "iri.dodml.DODMLASREntityScore";
  v12 = *MEMORY[0x277D3E538];
  v13 = v20;
  v14 = *(v21 + 104);
  v21 += 104;
  v14(v4, v12, v20);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v18 | 0x8000000000000000);
  v15(v22, 0);
  v14(v4, v12, v13);
  v22[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x7469746E456D756ELL, 0xEF73726F72724579);
  return v16(v22, 0);
}

uint64_t sub_266F4EA90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4EAF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F4EB9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F4EBE4()
{
  result = qword_2800F0580;
  if (!qword_2800F0580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0580);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASREntityScoringResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x636E657265666572, 0xED0000656D614E65);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F0580, 0x277D570F0);
  sub_266ECAF2C(&qword_2800F0578, &qword_2800F0580, 0x277D570F0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6353797469746E65, 0xEC0000007365726FLL);
  return v12(v14, 0);
}

uint64_t sub_266F4EF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4EFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASREvaluationMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v22[0] = a2;
  sub_26738119C();
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E500], v3);
  v23[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x6769655774736562, 0xEA00000000007468);
  v15(v23, 0);
  v12(v7, *MEMORY[0x277D3E540], v3);
  v23[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x800000026742C370);
  v16(v23, 0);
  sub_266ECB294(0, &qword_2800F0588, 0x277D57120);
  sub_266ECAF2C(&qword_2800F0590, &qword_2800F0588, 0x277D57120);
  sub_26738122C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E69617274, 0xE500000000000000);
  v17(v23, 0);
  sub_26738122C();
  v14(v11, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 7759204, 0xE300000000000000);
  v18(v23, 0);
  sub_26738122C();
  v14(v11, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 1953719668, 0xE400000000000000);
  v19(v23, 0);
  sub_26738122C();
  v14(v11, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C616E7265747865, 0xE800000000000000);
  return v20(v23, 0);
}

uint64_t sub_266F4F5EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4F650(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EF490, 0x277D56918);
  sub_266ECAF2C(&qword_2800EF488, &qword_2800EF490, 0x277D56918);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x800000026742C3E0);
  return v7(v9, 0);
}

uint64_t sub_266F4F9D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4FA34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4B0, 0x277D56930);
  sub_266ECAF2C(&qword_2800EF4A8, &qword_2800EF4B0, 0x277D56930);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726569546F666E69, 0xE900000000000031);
  return v5(v7, 0);
}

uint64_t sub_266F4FCB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4B0, 0x277D56930);
  sub_266ECAF2C(&qword_2800EF4A8, &qword_2800EF4B0, 0x277D56930);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726569546F666E69, 0xE900000000000031);
  return v5(v7, 0);
}

uint64_t sub_266F4FE50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4FEB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v23 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v22 = "rectionExperimentPostAnalysis";
  sub_266ECB294(0, &qword_2800F04A0, 0x277D57098);
  sub_266ECAF2C(&qword_2800F0498, &qword_2800F04A0, 0x277D57098);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v22 | 0x8000000000000000);
  v12(v26, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v21[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x800000026742C4C0);
  v13(v26, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = v24;
  v16 = *(v25 + 104);
  v25 += 104;
  v17 = v23;
  v16(v23, v14, v24);
  v26[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x72726F4365757274, 0xEF736E6F69746365);
  v18(v26, 0);
  v16(v17, v14, v15);
  v26[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x7267655265757274, 0xEF736E6F69737365);
  return v19(v26, 0);
}

uint64_t sub_266F5040C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F50470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRLanguageModelMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v49 = sub_26738113C();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v44 = a2;
  sub_26738119C();
  v48 = "SRLanguageModelMetrics";
  v45 = *MEMORY[0x277D3E500];
  v11 = *(v3 + 104);
  v11(v6);
  v50[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v12);
  v47 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v48 | 0x8000000000000000);
  v16(v50, 0);
  v48 = "SREvaluationMetrics";
  v17 = v49;
  (v11)(v6, *MEMORY[0x277D3E540], v49);
  v50[0] = 1;
  sub_26738114C();
  v39 = v12;
  v14(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v48 | 0x8000000000000000);
  v18(v50, 0);
  LODWORD(v48) = *MEMORY[0x277D3E538];
  v11(v6);
  v42 = v11;
  v50[0] = 1;
  sub_26738114C();
  v43 = v15;
  v19 = v47;
  v47(v10, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x72657474556D756ELL, 0xED00007365636E61);
  v20(v50, 0);
  (v11)(v6, v48, v17);
  v40 = v3 + 104;
  v50[0] = 1;
  sub_26738114C();
  v21 = v39;
  v19(v10, 0, 1, v39);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x7364726F576D756ELL, 0xE800000000000000);
  v22(v50, 0);
  v38 = "linearInterpolationWeight";
  v46 = v6;
  v23 = v48;
  v24 = v49;
  v25 = v42;
  (v42)(v6, v48, v49);
  v50[0] = 1;
  sub_26738114C();
  v26 = v47;
  v47(v10, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v38 | 0x8000000000000000);
  v27(v50, 0);
  v38 = "numOutOfVocabularyWords";
  v25(v46, v23, v24);
  v50[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v21);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v38 | 0x8000000000000000);
  v28(v50, 0);
  v38 = "numInvalidTokens";
  v29 = v49;
  v25(v46, v48, v49);
  v50[0] = 1;
  sub_26738114C();
  v26(v10, 0, 1, v21);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v38 | 0x8000000000000000);
  v30(v50, 0);
  v31 = v46;
  v32 = v42;
  (v42)(v46, v45, v29);
  v50[0] = 1;
  sub_26738114C();
  v33 = v47;
  v47(v10, 0, 1, v21);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x6978656C70726570, 0xEA00000000007974);
  v34(v50, 0);
  (v32)(v31, v45, v49);
  v50[0] = 1;
  sub_26738114C();
  v33(v10, 0, 1, v21);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0x6978656C70726570, 0xED0000656E4F7974);
  v35(v50, 0);
  sub_266ECB294(0, &qword_2800F05D8, 0x277D57130);
  sub_266ECAF2C(&qword_2800F05E0, &qword_2800F05D8, 0x277D57130);
  sub_26738122C();
  v33(v10, 0, 1, v21);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0x7469486D6172676ELL, 0xE900000000000073);
  return v36(v50, 0);
}

uint64_t sub_266F50ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F50F3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRModelMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v12 = v2;
  v11(v6, *MEMORY[0x277D3E530], v2);
  v13 = v3 + 104;
  v50 = v11;
  v53[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v45 = *(v15 + 56);
  v16 = v15 + 56;
  v52 = v14;
  v45(v10, 0, 1, v14);
  v51 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x614E6769666E6F63, 0xEA0000000000656DLL);
  v17(v53, 0);
  v47 = *MEMORY[0x277D3E540];
  (v11)(v6);
  v53[0] = 1;
  sub_26738114C();
  v18 = v14;
  v19 = v45;
  v45(v10, 0, 1, v18);
  v20 = a1;
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026742C5E0);
  v21(v53, 0);
  v44 = "trainingDurationInMs";
  v22 = v47;
  v23 = v50;
  v50(v6, v47, v12);
  v49 = v13;
  v53[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v52);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, v44 | 0x8000000000000000);
  v24(v53, 0);
  v44 = "conversionDurationInMs";
  v25 = v12;
  v48 = v12;
  v23(v6, v22, v12);
  v53[0] = 1;
  sub_26738114C();
  v26 = v52;
  v27 = v45;
  v45(v10, 0, 1, v52);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v44 | 0x8000000000000000);
  v28(v53, 0);
  v23(v6, v47, v25);
  v53[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v26);
  v46 = v20;
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026742C370);
  v29(v53, 0);
  v47 = *MEMORY[0x277D3E538];
  v30 = v48;
  (v50)(v6);
  v53[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v26);
  v31 = v27;
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x64724F6D6172676ELL, 0xEA00000000007265);
  v32(v53, 0);
  v44 = "optimizationDurationInMs";
  v33 = v50;
  v50(v6, *MEMORY[0x277D3E500], v30);
  v53[0] = 1;
  sub_26738114C();
  v34 = v52;
  v31(v10, 0, 1, v52);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, v44 | 0x8000000000000000);
  v35(v53, 0);
  v44 = "residualAdaptationWeight";
  v36 = v47;
  v37 = v48;
  v33(v6, v47, v48);
  v53[0] = 1;
  sub_26738114C();
  v31(v10, 0, 1, v34);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v44 | 0x8000000000000000);
  v38(v53, 0);
  v33(v6, v36, v37);
  v53[0] = 1;
  sub_26738114C();
  v39 = v52;
  v31(v10, 0, 1, v52);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x800000026742C680);
  v40(v53, 0);
  v50(v6, v47, v48);
  v53[0] = 1;
  sub_26738114C();
  v31(v10, 0, 1, v39);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026742C6A0);
  return v41(v53, 0);
}

uint64_t sub_266F51964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F519C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F51A2C()
{
  result = qword_2800F05E8;
  if (!qword_2800F05E8)
  {
    sub_266F51A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F05E8);
  }

  return result;
}

unint64_t sub_266F51A84()
{
  result = qword_2800F05F0;
  if (!qword_2800F05F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F05F0);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRNgramHits.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 1937009000, 0xE400000000000000);
  return v10(v12, 0);
}

uint64_t sub_266F51D14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F51D78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F51DDC()
{
  result = qword_2800F05E0;
  if (!qword_2800F05E0)
  {
    sub_266F51E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F05E0);
  }

  return result;
}

unint64_t sub_266F51E34()
{
  result = qword_2800F05D8;
  if (!qword_2800F05D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F05D8);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRPersonalizationExperimentContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F05F8, 0x277D57148);
  sub_266ECAF2C(&qword_2800F0600, &qword_2800F05F8, 0x277D57148);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0608, 0x277D57140);
  sub_266ECAF2C(&qword_2800F0610, &qword_2800F0608, 0x277D57140);
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

uint64_t sub_266F522CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F52330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRPersonalizationExperimentEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v58 = *(v4 + 104);
  v13 = v3;
  v58(v7, v12, v3);
  v55 = v4 + 104;
  v62[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v50 = *(v14 - 8);
  v15 = (v50 + 56);
  v59 = *(v50 + 56);
  v53 = v14;
  v59(v11, 0, 1, v14);
  v16 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6B63617061746164, 0xEF6E6F6973726556);
  v17(v62, 0);
  v52 = "nExperimentEnded";
  v18 = *MEMORY[0x277D3E538];
  v19 = v13;
  v57 = v13;
  v20 = v13;
  v21 = v58;
  v58(v7, v18, v20);
  v62[0] = 1;
  sub_26738114C();
  v22 = v59;
  v59(v11, 0, 1, v14);
  v54 = v16;
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v52 | 0x8000000000000000);
  v23(v62, 0);
  v21(v7, v18, v19);
  v62[0] = 1;
  sub_26738114C();
  v24 = v53;
  v22(v11, 0, 1, v53);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026742C7B0);
  v25(v62, 0);
  v58(v7, *MEMORY[0x277D3E508], v57);
  v62[0] = 1;
  v49 = v7;
  sub_26738114C();
  v26 = v22;
  v22(v11, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x800000026742C7D0);
  v27(v62, 0);
  v28 = sub_266ECB294(0, &qword_2800F04C0, 0x277D570A0);
  v51 = sub_266ECAF2C(&qword_2800F04B8, &qword_2800F04C0, 0x277D570A0);
  v52 = v28;
  sub_26738122C();
  v29 = v24;
  v56 = v15;
  v26(v11, 0, 1, v24);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026742C7F0);
  v30(v62, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v61, 0xD000000000000010, 0x800000026742C7F0);
  if (!(*(v50 + 48))(v33, 1, v29))
  {
    sub_266ECB128(&unk_287884F10);
    sub_26738115C();
  }

  (v32)(v61, 0);
  v31(v62, 0);
  sub_266ECB294(0, &qword_2800F0628, 0x277D57150);
  sub_266ECAF2C(&qword_2800F0630, &qword_2800F0628, 0x277D57150);
  sub_26738120C();
  v34 = v29;
  v35 = v59;
  v59(v11, 0, 1, v29);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000020, 0x800000026742C810);
  v36(v62, 0);
  v50 = "uageModelMetrics";
  v37 = *MEMORY[0x277D3E540];
  v38 = v49;
  v40 = v57;
  v39 = v58;
  v58(v49, v37, v57);
  v62[0] = 1;
  sub_26738114C();
  v35(v11, 0, 1, v34);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v50 | 0x8000000000000000);
  v41(v62, 0);
  v39(v38, v37, v40);
  v62[0] = 1;
  sub_26738114C();
  v42 = v53;
  v43 = v59;
  v59(v11, 0, 1, v53);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, 0x800000026742C860);
  v44(v62, 0);
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_266F52EC0();
  sub_26738120C();
  v43(v11, 0, 1, v42);
  v45 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026742C880);
  v45(v62, 0);
  sub_26738120C();
  v43(v11, 0, 1, v42);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C69466F69647561, 0xEF746C7573655265);
  return v46(v62, 0);
}

uint64_t sub_266F52DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F52E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F52EC0()
{
  result = qword_2800F0638;
  if (!qword_2800F0638)
  {
    type metadata accessor for SISchemaDeviceThermalState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0638);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRPersonalizationExperimentStarted.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v14, 0);
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_266F53388(&qword_2800F0638, type metadata accessor for SISchemaDeviceThermalState);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742C880);
  return v12(v14, 0);
}

uint64_t sub_266F5327C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F532E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F53388(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F533D0()
{
  result = qword_2800F05F8;
  if (!qword_2800F05F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F05F8);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_266F53918();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x61636F4C72657375, 0xEA0000000000656CLL);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F0640, 0x277D57170);
  sub_266ECAF2C(&qword_2800F0648, &qword_2800F0640, 0x277D57170);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026742C940);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F05F0, 0x277D57128);
  sub_266ECAF2C(&qword_2800F05E8, &qword_2800F05F0, 0x277D57128);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x74654D6C65646F6DLL, 0xEC00000073636972);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F05A0, 0x277D57100);
  sub_266ECAF2C(&qword_2800F0598, &qword_2800F05A0, 0x277D57100);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026742C960);
  return v9(v11, 0);
}

uint64_t sub_266F53854(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F538B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F53918()
{
  result = qword_2800EEFA8;
  if (!qword_2800EEFA8)
  {
    type metadata accessor for SISchemaLocale(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEFA8);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRResultInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_266EC637C(v11, 0x6D614E6567617473, 0xE900000000000065);
  v15(v20, 0);
  v12(v7, *MEMORY[0x277D3E4E8], v3);
  v20[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x656E67696C417369, 0xE900000000000064);
  v16(v20, 0);
  sub_266ECB294(0, &qword_2800F04F0, 0x277D570B0);
  sub_266ECAF2C(&qword_2800F04E8, &qword_2800F04F0, 0x277D570B0);
  sub_26738122C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x736563696F6863, 0xE700000000000000);
  return v17(v20, 0);
}

uint64_t sub_266F53DB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F53E14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRTokenInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4E8, 0x277D56AA0);
  sub_266ECAF2C(&qword_2800EF4F0, &qword_2800EF4E8, 0x277D56AA0);
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 0, 1, v11);
  v29 = v13;
  v30 = v14;
  v27[1] = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656B6F74, 0xE500000000000000);
  v15(v34, 0);
  v16 = *MEMORY[0x277D3E500];
  v17 = v32;
  v18 = *(v33 + 104);
  v33 += 104;
  v31 = v16;
  v18(v6, v16, v32);
  v28 = v18;
  v34[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x63697473756F6361, 0xEC00000074736F43);
  v19(v34, 0);
  v27[0] = "iri.dodml.DODMLASRTokenInfo";
  v18(v6, v16, v17);
  v34[0] = 1;
  v20 = v6;
  sub_26738114C();
  v21 = v29;
  v29(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v27[0] | 0x8000000000000000);
  v22(v34, 0);
  v23 = v28;
  v28(v20, *MEMORY[0x277D3E538], v17);
  v34[0] = 1;
  sub_26738114C();
  v21(v10, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F6B6361426D756ELL, 0xEB00000000736666);
  v24(v34, 0);
  v23(v20, v31, v32);
  v34[0] = 1;
  sub_26738114C();
  v21(v10, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026742CA00);
  return v25(v34, 0);
}

uint64_t sub_266F54458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F544BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRTranscriptionMetrics.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0660, 0x277D57168);
  sub_266ECAF2C(&qword_2800F0668, &qword_2800F0660, 0x277D57168);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E69617274, 0xE500000000000000);
  v6(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 7759204, 0xE300000000000000);
  v7(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 1953719668, 0xE400000000000000);
  v8(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C616E7265747865, 0xE800000000000000);
  return v9(v11, 0);
}

uint64_t sub_266F548D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F54934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRTranscriptMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v64 = sub_26738113C();
  v2 = *(v64 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v64);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v61 = *MEMORY[0x277D3E538];
  v58 = *(v2 + 104);
  v58(v5);
  v59 = v2 + 104;
  v65[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v62 = v11 + 56;
  v12(v9, 0, 1, v10);
  v63 = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026742CAA0);
  v13(v65, 0);
  v56 = "numDocumentsRejected";
  v14 = v61;
  v15 = v58;
  (v58)(v5, v61, v64);
  v65[0] = 1;
  sub_26738114C();
  v60 = v10;
  v57 = v12;
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v56 | 0x8000000000000000);
  v16(v65, 0);
  v56 = "numSentencesRejected";
  v15(v5, v14, v64);
  v65[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v56 | 0x8000000000000000);
  v17(v65, 0);
  v56 = "numDocumentsAccepted";
  v18 = v64;
  v15(v5, v14, v64);
  v19 = v15;
  v65[0] = 1;
  sub_26738114C();
  v20 = v60;
  v21 = v57;
  v57(v9, 0, 1, v60);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v56 | 0x8000000000000000);
  v22(v65, 0);
  v54 = "numSentencesAccepted";
  v23 = v61;
  v19(v5, v61, v18);
  v24 = v19;
  v65[0] = 1;
  sub_26738114C();
  v21(v9, 0, 1, v20);
  v25 = sub_2673811AC();
  v56 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, v54 | 0x8000000000000000);
  v25(v65, 0);
  v54 = "numTokensAccepted";
  v24(v5, v23, v64);
  v65[0] = 1;
  sub_26738114C();
  v26 = v60;
  v21(v9, 0, 1, v60);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v54 | 0x8000000000000000);
  v27(v65, 0);
  v54 = "cabularyAccepted";
  v28 = v64;
  (v58)(v5, v23, v64);
  v65[0] = 1;
  sub_26738114C();
  v29 = v57;
  v57(v9, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v54 | 0x8000000000000000);
  v30(v65, 0);
  v54 = "numDocumentsDictated";
  v55 = v5;
  v31 = v5;
  v32 = v28;
  v33 = v58;
  (v58)(v31, v23, v28);
  v65[0] = 1;
  sub_26738114C();
  v34 = v60;
  v29(v9, 0, 1, v60);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, v56, v54 | 0x8000000000000000);
  v35(v65, 0);
  v54 = "numDocumentsTyped";
  v36 = v61;
  (v33)(v55, v61, v32);
  v65[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, v56, v54 | 0x8000000000000000);
  v37(v65, 0);
  v38 = v55;
  v39 = v64;
  (v33)(v55, v36, v64);
  v65[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v34);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656B6F546D756ELL, 0xEE00646570795473);
  v40(v65, 0);
  v56 = "numTokensDictated";
  v41 = v36;
  v42 = v39;
  (v33)(v38, v41, v39);
  v65[0] = 1;
  sub_26738114C();
  v43 = v60;
  v29(v9, 0, 1, v60);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v56 | 0x8000000000000000);
  v44(v65, 0);
  v56 = "numSentencesMungeRejected";
  v45 = v61;
  (v33)(v38, v61, v42);
  v65[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v43);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v56 | 0x8000000000000000);
  v46(v65, 0);
  v56 = "numSentencesMungeChanged";
  v47 = v64;
  v48 = v58;
  (v58)(v38, v45, v64);
  v65[0] = 1;
  sub_26738114C();
  v49 = v57;
  v57(v9, 0, 1, v43);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v56 | 0x8000000000000000);
  v50(v65, 0);
  (v48)(v38, v61, v47);
  v65[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v60);
  v51 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026742CC30);
  return v51(v65, 0);
}

uint64_t sub_266F556C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5572C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F55790()
{
  result = qword_2800F0668;
  if (!qword_2800F0668)
  {
    sub_266F557E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0668);
  }

  return result;
}

unint64_t sub_266F557E8()
{
  result = qword_2800F0660;
  if (!qword_2800F0660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0660);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0670, 0x277D57198);
  sub_266ECAF2C(&qword_2800F0678, &qword_2800F0670, 0x277D57198);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0680, 0x277D57180);
  sub_266ECAF2C(&qword_2800F0688, &qword_2800F0680, 0x277D57180);
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

uint64_t sub_266F55C80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F55CE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = sub_26738113C();
  v30 = *(v35 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F06A0, 0x277D57190);
  sub_266ECAF2C(&qword_2800F06A8, &qword_2800F06A0, 0x277D57190);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742CCD0);
  v12(v37, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v34 = v10 + 56;
  v31 = v11;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  v13(v37, 0);
  v33 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v36, 0x64496B6E696CLL, 0xE600000000000000);
  if (!(*(v10 + 48))(v16, 1, v9))
  {
    sub_266ECB128(&unk_287884F38);
    sub_26738115C();
  }

  (v15)(v36, 0);
  v14(v37, 0);
  v29 = "nExperimentEnded";
  v17 = *MEMORY[0x277D3E538];
  v30 = *(v30 + 104);
  v18 = v32;
  v19 = v35;
  (v30)(v32, v17, v35);
  v37[0] = 1;
  sub_26738114C();
  v20 = v9;
  v21 = v9;
  v22 = v31;
  v31(v8, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v29 | 0x8000000000000000);
  v23(v37, 0);
  v29 = "numAudioFilesAvailable";
  v24 = v30;
  (v30)(v18, v17, v19);
  v37[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v29 | 0x8000000000000000);
  v25(v37, 0);
  v24(v18, *MEMORY[0x277D3E508], v35);
  v37[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v26(v37, 0);
}

uint64_t sub_266F563F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5645C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0510, 0x277D570C0);
  sub_266ECAF2C(&qword_2800F0508, &qword_2800F0510, 0x277D570C0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F697375666E6F63, 0xEE0073726961506ELL);
  return v7(v9, 0);
}

uint64_t sub_266F567D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F56834(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v22 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v21[1] = v3 + 104;
  v23 = v12;
  v12(v6, v11, v2);
  v24[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6B63617061746164, 0xEF6E6F6973726556);
  v15(v24, 0);
  sub_266ECB294(0, &qword_2800F0500, 0x277D570B8);
  sub_266ECAF2C(&qword_2800F04F8, &qword_2800F0500, 0x277D570B8);
  v21[0] = a1;
  sub_26738122C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F697375666E6F63, 0xEE0073726961506ELL);
  v16(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v14(v10, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449727361, 0xE500000000000000);
  v17(v24, 0);
  v23(v6, *MEMORY[0x277D3E508], v22);
  v24[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xE900000000000065);
  v18(v24, 0);
  sub_26738120C();
  v14(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496B6E696CLL, 0xE600000000000000);
  return v19(v24, 0);
}

uint64_t sub_266F56E3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F56EA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F5718C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F571F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F57254()
{
  result = qword_2800F0678;
  if (!qword_2800F0678)
  {
    sub_266F572AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0678);
  }

  return result;
}

unint64_t sub_266F572AC()
{
  result = qword_2800F0670;
  if (!qword_2800F0670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0670);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRUtteranceInfo.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0658, 0x277D57158);
  sub_266ECAF2C(&qword_2800F0650, &qword_2800F0658, 0x277D57158);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x73746C75736572, 0xE700000000000000);
  v11(v19, 0);
  v12 = *MEMORY[0x277D3E540];
  v13 = *(v18 + 104);
  v18 += 104;
  v13(v4, v12, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D69547472617473, 0xED0000734E6E4965);
  v14(v19, 0);
  v13(v4, v12, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x49656D6954646E65, 0xEB00000000734E6ELL);
  return v15(v19, 0);
}

uint64_t sub_266F576FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F57760(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLSchemaDODMLClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F06C0, 0x277D571B0);
  sub_266ECAF2C(&qword_2800F06C8, &qword_2800F06C0, 0x277D571B0);
  sub_26738120C();
  v11 = sub_26738116C();
  v54 = *(v11 - 8);
  v12 = v54 + 56;
  v13 = *(v54 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v14(v57, 0);
  sub_266ECB294(0, &qword_2800F0620, 0x277D57138);
  sub_266ECAF2C(&qword_2800F0618, &qword_2800F0620, 0x277D57138);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x800000026742CE20);
  v15(v57, 0);
  sub_266ECB294(0, &qword_2800F0698, 0x277D57178);
  sub_266ECAF2C(&qword_2800F0690, &qword_2800F0698, 0x277D57178);
  sub_26738121C();
  v13(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026742CE50);
  v16(v57, 0);
  sub_266ECB294(0, &qword_2800F06B8, 0x277D57188);
  sub_266ECAF2C(&qword_2800F06B0, &qword_2800F06B8, 0x277D57188);
  v51 = a1;
  sub_26738121C();
  v52 = v12;
  v53 = v13;
  v13(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x800000026742CE70);
  v17(v57, 0);
  v55 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v56, 0xD00000000000001CLL, 0x800000026742CE70);
  v20 = *(v54 + 48);
  v54 += 48;
  if (!v20(v21, 1, v11))
  {
    sub_266ECB128(&unk_287884F60);
    sub_26738115C();
  }

  (v19)(v56, 0);
  v18(v57, 0);
  sub_266ECB294(0, &qword_2800F04D0, 0x277D570A8);
  sub_266ECAF2C(&qword_2800F04C8, &qword_2800F04D0, 0x277D570A8);
  sub_26738121C();
  v53(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026742CE90);
  v22(v57, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v56, 0xD000000000000014, 0x800000026742CE90);
  v26 = v20(v25, 1, v11);
  v47 = v20;
  if (!v26)
  {
    sub_266ECB128(&unk_287884F88);
    sub_26738115C();
  }

  (v24)(v56, 0);
  v23(v57, 0);
  sub_266ECB294(0, &qword_2800F05B0, 0x277D57108);
  sub_266ECAF2C(&qword_2800F05A8, &qword_2800F05B0, 0x277D57108);
  sub_26738121C();
  v27 = v53;
  v53(v10, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, 0x800000026742CEB0);
  v28(v57, 0);
  sub_266ECB294(0, &qword_2800F05C0, 0x277D57110);
  sub_266ECAF2C(&qword_2800F05B8, &qword_2800F05C0, 0x277D57110);
  sub_26738121C();
  v27(v10, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, 0x800000026742CEE0);
  v29(v57, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v56, 0xD000000000000024, 0x800000026742CEE0);
  if (!v47(v32, 1, v11))
  {
    sub_266ECB128(&unk_287884FB0);
    sub_26738115C();
  }

  (v31)(v56, 0);
  v30(v57, 0);
  sub_266ECB294(0, &qword_2800F05D0, 0x277D57118);
  sub_266ECAF2C(&qword_2800F05C8, &qword_2800F05D0, 0x277D57118);
  sub_26738121C();
  v33 = v53;
  v53(v10, 0, 1, v11);
  v46 = v11;
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002BLL, 0x800000026742CF10);
  v34(v57, 0);
  sub_266ECB294(0, &qword_2800F0520, 0x277D570C8);
  sub_266ECAF2C(&qword_2800F0518, &qword_2800F0520, 0x277D570C8);
  sub_26738121C();
  v33(v10, 0, 1, v11);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x800000026742CF40);
  v35(v57, 0);
  sub_266ECB294(0, &qword_2800F0530, 0x277D570D0);
  sub_266ECAF2C(&qword_2800F0528, &qword_2800F0530, 0x277D570D0);
  sub_26738121C();
  v33(v10, 0, 1, v46);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x800000026742CF70);
  v36(v57, 0);
  v37 = v48;
  sub_26738117C();
  v38 = sub_2673811BC();
  v40 = v39;
  v41 = *v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_266ECAD54(0, v41[2] + 1, 1, v41);
    *v40 = v41;
  }

  v44 = v41[2];
  v43 = v41[3];
  if (v44 >= v43 >> 1)
  {
    v41 = sub_266ECAD54(v43 > 1, v44 + 1, 1, v41);
    *v40 = v41;
  }

  v41[2] = v44 + 1;
  (*(v49 + 32))(v41 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44, v37, v50);
  v38(v57, 0);
  sub_266ECB128(&unk_287884FD8);
  return sub_2673811CC();
}

uint64_t sub_266F58500(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F58598()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F58664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F586C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F58728(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F06D0, &qword_2800F06D8, 0x277D571A8);
  a1[2] = sub_266ECAF2C(&qword_2800F06E0, &qword_2800F06D8, 0x277D571A8);
  result = sub_266ECAF2C(&qword_2800F06E8, &qword_2800F06D8, 0x277D571A8);
  a1[3] = result;
  return result;
}

uint64_t static DODMLSchemaDODMLClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_26738113C();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v12 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v33 = v11;
  v34 = a1;
  v32 = v12;
  sub_26738120C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v37 = *(v14 + 56);
  v38 = v14 + 56;
  v37(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496C4D646F64, 0xE700000000000000);
  v15(v41, 0);
  v36 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v40, 0x64496C4D646F64, 0xE700000000000000);
  if (!(*(v14 + 48))(v18, 1, v13))
  {
    sub_266ECB128(&unk_287885010);
    sub_26738115C();
  }

  (v17)(v40, 0);
  v16(v41, 0);
  v19 = *MEMORY[0x277D3E530];
  v20 = *(v4 + 104);
  v21 = v35;
  v22 = v39;
  v20(v35, v19, v39);
  v31 = v20;
  v41[0] = 1;
  sub_26738114C();
  v30 = v13;
  v37(v10, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D697265707865, 0xEE00656D614E746ELL);
  v23(v41, 0);
  v20(v21, v19, v22);
  v41[0] = 1;
  sub_26738114C();
  v24 = v30;
  v25 = v37;
  v37(v10, 0, 1, v30);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026742CFE0);
  v26(v41, 0);
  sub_26738120C();
  v25(v10, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026742D000);
  v27(v41, 0);
  v31(v21, *MEMORY[0x277D3E510], v39);
  v41[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026742D020);
  return v28(v41, 0);
}

uint64_t sub_266F58E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F58EA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DonationSchemaSDASRTask.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x800000026742D070, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x800000026742D090, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x800000026742D0B0, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x800000026742D0D0, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000010, 0x800000026742D0F0, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x800000026742D110, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x800000026742D130, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000013, 0x800000026742D150, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000015, 0x800000026742D170, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000011, 0x800000026742D190, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_266F59480(uint64_t a1)
{
  v2 = sub_266F59584(&qword_2800F0700);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F594E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F59584(&qword_2800F0700);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F59584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DonationSchemaSDASRTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DonationSchemaSDAudioCaptureDevice.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026742D1E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v80;

  v1(v93, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026742D200, v11);
  v12 = *v9;
  *v9 = v81;

  v7(v93, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026742D220, v17);
  v18 = *v15;
  *v15 = v82;

  v13(v93, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026742D250, v23);
  v24 = *v21;
  *v21 = v83;

  v19(v93, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026742D280, v29);
  v30 = *v27;
  *v27 = v84;

  v25(v93, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x800000026742D2B0, v35);
  v36 = *v33;
  *v33 = v85;

  v31(v93, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x800000026742D2E0, v41);
  v42 = *v39;
  *v39 = v86;

  v37(v93, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000031, 0x800000026742D300, v47);
  v48 = *v45;
  *v45 = v87;

  v43(v93, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000037, 0x800000026742D340, v53);
  v54 = *v51;
  *v51 = v88;

  v49(v93, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000036, 0x800000026742D380, v59);
  v60 = *v57;
  *v57 = v89;

  v55(v93, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003CLL, 0x800000026742D3C0, v65);
  v66 = *v63;
  *v63 = v90;

  v61(v93, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x800000026742D400, v71);
  v72 = *v69;
  *v69 = v91;

  v67(v93, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000023, 0x800000026742D420, v77);
  v78 = *v75;
  *v75 = v92;

  return v73(v93, 0);
}

uint64_t sub_266F59C40(uint64_t a1)
{
  v2 = sub_266F59D44(&qword_2800F0710);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F59CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F59D44(&qword_2800F0710);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F59D44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DonationSchemaSDAudioCaptureDevice(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DonationSchemaSDSpeechAttribute.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026742D480, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026742D4A0, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_266F59F2C(uint64_t a1)
{
  v2 = sub_266F5A030(&qword_2800F0720);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F59F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F5A030(&qword_2800F0720);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F5A030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DonationSchemaSDSpeechAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DonationSchemaSDSpeechDonationEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
  v1 = sub_26738118C();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0728, 0x277D57218);
  sub_266ECAF2C(&qword_2800F0730, &qword_2800F0728, 0x277D57218);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174614461);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F0738, 0x277D57220);
  sub_266ECAF2C(&qword_2800F0740, &qword_2800F0738, 0x277D57220);
  sub_26738121C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026742D4F0);
  v12(v30, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v29, 0xD000000000000014, 0x800000026742D4F0);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287885038);
    sub_26738115C();
  }

  (v14)(v29, 0);
  v13(v30, 0);
  v16 = v26;
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
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v16, v28);
  v17(v30, 0);
  sub_266ECB128(&unk_287885060);
  return sub_2673811CC();
}

uint64_t sub_266F5A54C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F5A5E4()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F5A6B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5A714(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F5A774(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0748, &qword_2800F0750, 0x277D57210);
  a1[2] = sub_266ECAF2C(&qword_2800F0758, &qword_2800F0750, 0x277D57210);
  result = sub_266ECAF2C(&qword_2800F0760, &qword_2800F0750, 0x277D57210);
  a1[3] = result;
  return result;
}

uint64_t static DonationSchemaSDSpeechDonationEventMetaData.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v19 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 1682531443, 0xE400000000000000);
  v12(v24, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v23, 1682531443, 0xE400000000000000);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287885090);
    sub_26738115C();
  }

  (v14)(v23, 0);
  v13(v24, 0);
  type metadata accessor for SISchemaDeviceFamily(0);
  sub_266F5ADA4();
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x7954656369766564, 0xEA00000000006570);
  v16(v24, 0);
  (*(v21 + 104))(v20, *MEMORY[0x277D3E530], v22);
  v24[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x75426D6574737973, 0xEB00000000646C69);
  return v17(v24, 0);
}

uint64_t sub_266F5ACE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5AD44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5ADA4()
{
  result = qword_2800F0770;
  if (!qword_2800F0770)
  {
    type metadata accessor for SISchemaDeviceFamily(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0770);
  }

  return result;
}

uint64_t static DonationSchemaSDSpeechSampleDonation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = sub_26738113C();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v43 = sub_26738116C();
  v10 = *(v43 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v9, 0, 1, v43);
  v35 = v11;
  v39 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F6974616E6F64, 0xEA00000000004449);
  v13(v44, 0);
  v38 = *MEMORY[0x277D3E530];
  v14 = *(v3 + 104);
  v15 = v42;
  v14(v40);
  v36 = v14;
  v37 = v3 + 104;
  v44[0] = 1;
  sub_26738114C();
  v16 = v43;
  v11(v9, 0, 1, v43);
  v17 = v12;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E7542726F6E6F64, 0xED00004449656C64);
  v18(v44, 0);
  v19 = v40;
  (v14)(v40, *MEMORY[0x277D3E540], v15);
  v44[0] = 1;
  sub_26738114C();
  v20 = v35;
  v35(v9, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x4465727574706163, 0xEB00000000657461);
  v21(v44, 0);
  type metadata accessor for DonationSchemaSDSpeechAttribute(0);
  sub_266F5B888(&qword_2800F0718, type metadata accessor for DonationSchemaSDSpeechAttribute);
  sub_26738122C();
  v20(v9, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x7475626972747461, 0xEA00000000007365);
  v22(v44, 0);
  type metadata accessor for DonationSchemaSDAudioCaptureDevice(0);
  sub_266F5B888(&qword_2800F0708, type metadata accessor for DonationSchemaSDAudioCaptureDevice);
  sub_26738120C();
  v20(v9, 0, 1, v16);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026742D580);
  v23(v44, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_266F5B888(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v20(v9, 0, 1, v16);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C61636F6CLL, 0xE600000000000000);
  v24(v44, 0);
  type metadata accessor for DonationSchemaSDASRTask(0);
  sub_266F5B888(&qword_2800F06F8, type metadata accessor for DonationSchemaSDASRTask);
  sub_26738120C();
  v20(v9, 0, 1, v16);
  v34 = v17;
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x6B736154727361, 0xE700000000000000);
  v25(v44, 0);
  v26 = v38;
  v27 = v42;
  v28 = v36;
  (v36)(v19, v38, v42);
  v44[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v43);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x697263736E617274, 0xED00006E6F697470);
  v29(v44, 0);
  v28(v19, v26, v27);
  v44[0] = 1;
  sub_26738114C();
  v30 = v43;
  v20(v9, 0, 1, v43);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x6465746365707865, 0xE800000000000000);
  v31(v44, 0);
  type metadata accessor for DonationSchemaSDTranscriptionEvaluation(0);
  sub_266F5B888(&qword_2800F0778, type metadata accessor for DonationSchemaSDTranscriptionEvaluation);
  sub_26738120C();
  v20(v9, 0, 1, v30);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x697461756C617665, 0xEA00000000006E6FLL);
  return v32(v44, 0);
}

uint64_t sub_266F5B7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5B828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F5B888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static DonationSchemaSDTranscriptionEvaluation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026742D5E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026742D610, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026742D640, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_266F5BB28(uint64_t a1)
{
  v2 = sub_266F5BC2C(&qword_2800F0780);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F5BB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F5BC2C(&qword_2800F0780);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F5BC2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DonationSchemaSDTranscriptionEvaluation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DUSchemaDUContent.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4F8], v0);
  v17[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C79615061746164, 0xEB0000000064616FLL);
  v11(v17, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v16, 0x6C79615061746164, 0xEB0000000064616FLL);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_2878850B8);
    sub_26738115C();
  }

  (v13)(v16, 0);
  v12(v17, 0);
  sub_266ECB128(&unk_2878850E0);
  return sub_2673811CC();
}

uint64_t sub_266F5BF94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5BFF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5C05C()
{
  result = qword_2800F0788;
  if (!qword_2800F0788)
  {
    sub_266F5C0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0788);
  }

  return result;
}

unint64_t sub_266F5C0B4()
{
  result = qword_2800F0790;
  if (!qword_2800F0790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0790);
  }

  return result;
}

uint64_t static DUSchemaDUEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0798, 0x277D571C8);
  sub_266ECAF2C(&qword_2800F07A0, &qword_2800F0798, 0x277D571C8);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x617461646174656DLL, 0xE800000000000000);
  v12(v41, 0);
  sub_266ECB294(0, &qword_2800F0790, 0x277D571B8);
  sub_266ECAF2C(&qword_2800F0788, &qword_2800F0790, 0x277D571B8);
  v36 = a1;
  sub_26738120C();
  v35 = v11;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65746E6F63, 0xE700000000000000);
  v13(v41, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v40, 0x746E65746E6F63, 0xE700000000000000);
  v33 = *(v10 + 48);
  v34 = v10 + 48;
  if (!v33(v16, 1, v9))
  {
    sub_266ECB128(&unk_287885110);
    sub_26738115C();
  }

  (v15)(v40, 0);
  v14(v41, 0);
  sub_266ECB294(0, &qword_2800F07A8, 0x277D571E0);
  sub_266ECAF2C(&qword_2800F07B0, &qword_2800F07A8, 0x277D571E0);
  sub_26738121C();
  v17 = v35;
  v35(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742D6D0);
  v18(v41, 0);
  sub_266ECB294(0, &qword_2800F07B8, 0x277D571D8);
  sub_266ECAF2C(&qword_2800F07C0, &qword_2800F07B8, 0x277D571D8);
  sub_26738121C();
  v17(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026742D6F0);
  v19(v41, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v40, 0xD000000000000013, 0x800000026742D6F0);
  if (!v33(v22, 1, v9))
  {
    sub_266ECB128(&unk_287885138);
    sub_26738115C();
  }

  (v21)(v40, 0);
  v20(v41, 0);
  v23 = v37;
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
  (*(v38 + 32))(v27 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, v23, v39);
  v24(v41, 0);
  sub_266ECB128(&unk_287885168);
  return sub_2673811CC();
}

uint64_t sub_266F5C818(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F5C8B0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F5C97C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5C9E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F5CA40(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F07C8, &qword_2800F07D0, 0x277D571C0);
  a1[2] = sub_266ECAF2C(&qword_2800F07D8, &qword_2800F07D0, 0x277D571C0);
  result = sub_266ECAF2C(&qword_2800F07E0, &qword_2800F07D0, 0x277D571C0);
  a1[3] = result;
  return result;
}

uint64_t static DUSchemaDUEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6564497465737361, 0xEF7265696669746ELL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6564497465737361, 0xEF7265696669746ELL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878851A0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_2878851C8);
  return sub_2673811CC();
}

uint64_t sub_266F5CE04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5CE68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DUSchemaDUResponse.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for DUSchemaDUResponseStatus(0);
  sub_266F5D260();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6564497465737361, 0xEF7265696669746ELL);
  return v7(v9, 0);
}

uint64_t sub_266F5D19C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5D200(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5D260()
{
  result = qword_2800F07F0;
  if (!qword_2800F07F0)
  {
    type metadata accessor for DUSchemaDUResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F07F0);
  }

  return result;
}

uint64_t static DUSchemaDUResponseStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x53534543435553, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x44454C494146, 0xE600000000000000, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_266F5D488(uint64_t a1)
{
  v2 = sub_266F5D58C(&qword_2800F0808);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F5D4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F5D58C(&qword_2800F0808);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F5D58C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DUSchemaDUResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DUSchemaDUSearchSessionRecord.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x496E6F6973736573, 0xE900000000000064);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E540], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026742D7D0);
  v11(v15, 0);
  sub_266ECB128(&unk_2878851F8);
  return sub_2673811CC();
}

uint64_t sub_266F5D920(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5D984(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DUSchemaDUSpeechAudioRecord.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_26738113C();
  v43 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34 = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v46[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v44 = *(v14 - 8);
  v16 = v44 + 56;
  v15 = *(v44 + 56);
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x65676175676E616CLL, 0xE800000000000000);
  v17(v46, 0);
  v35 = v12;
  v38 = v13;
  v39 = v4 + 104;
  v13(v7, v12, v43);
  v46[0] = 1;
  v40 = v7;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x6365646F63, 0xE500000000000000);
  v18(v46, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v41 = v15;
  v42 = v16;
  v15(v11, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x7463617265746E69, 0xED000064496E6F69);
  v19(v46, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v45, 0x7463617265746E69, 0xED000064496E6F69);
  v22 = *(v44 + 48);
  v44 += 48;
  v36 = v22;
  if (!v22(v23, 1, v14))
  {
    sub_266ECB128(&unk_287885230);
    sub_26738115C();
  }

  (v21)(v45, 0);
  v20(v46, 0);
  sub_26738120C();
  v41(v11, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x6449686365657073, 0xE800000000000000);
  v24(v46, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v45, 0x6449686365657073, 0xE800000000000000);
  if (!v36(v27, 1, v14))
  {
    sub_266ECB128(&unk_287885258);
    sub_26738115C();
  }

  (v26)(v45, 0);
  v25(v46, 0);
  v38(v40, v35, v43);
  v46[0] = 1;
  sub_26738114C();
  v41(v11, 0, 1, v14);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0x6449686365657073, 0xEE00676E69727453);
  v28(v46, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v45, 0x6449686365657073, 0xEE00676E69727453);
  if (!v36(v31, 1, v14))
  {
    sub_266ECB128(&unk_287885288);
    sub_26738115C();
  }

  (v30)(v45, 0);
  v29(v46, 0);
  v38(v40, *MEMORY[0x277D3E540], v43);
  v46[0] = 1;
  sub_26738114C();
  v41(v11, 0, 1, v14);
  v32 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, 0x800000026742D820);
  v32(v46, 0);
  sub_266ECB128(&unk_2878852B8);
  return sub_2673811CC();
}

uint64_t sub_266F5E238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5E29C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0810, 0x277D572C0);
  sub_266ECAF2C(&qword_2800F0818, &qword_2800F0810, 0x277D572C0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F0820, 0x277D572B0);
  sub_266ECAF2C(&qword_2800F0828, &qword_2800F0820, 0x277D572B0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F0830, 0x277D572B8);
  sub_266ECAF2C(&qword_2800F0838, &qword_2800F0830, 0x277D572B8);
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
  sub_266EC637C(v5, 0x64496563617274, 0xE700000000000000);
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

uint64_t sub_266F5E91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5E980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F5EC6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5ECD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5ED34()
{
  result = qword_2800F0828;
  if (!qword_2800F0828)
  {
    sub_266F5ED8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0828);
  }

  return result;
}

unint64_t sub_266F5ED8C()
{
  result = qword_2800F0820;
  if (!qword_2800F0820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0820);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentCallFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError(0);
  sub_266F5F224(&qword_2800F0850, type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F5EF94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError(0);
  sub_266F5F224(&qword_2800F0850, type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F5F118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5F17C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F5F224(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F5F26C()
{
  result = qword_2800F0830;
  if (!qword_2800F0830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0830);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentCallStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11(v6, *MEMORY[0x277D3E4E8], v2);
  v18[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x737473697865, 0xE600000000000000);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E540], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026742D940);
  return v15(v18, 0);
}

uint64_t sub_266F5F5D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5F63C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5F6A0()
{
  result = qword_2800F0818;
  if (!qword_2800F0818)
  {
    sub_266F5F6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0818);
  }

  return result;
}

unint64_t sub_266F5F6F8()
{
  result = qword_2800F0810;
  if (!qword_2800F0810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0810);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026742D9A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v176;

  v1(v205, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003DLL, 0x800000026742D9C0, v11);
  v12 = *v9;
  *v9 = v177;

  v7(v205, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ELL, 0x800000026742DA00, v17);
  v18 = *v15;
  *v15 = v178;

  v13(v205, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000036, 0x800000026742DA40, v23);
  v24 = *v21;
  *v21 = v179;

  v19(v205, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000032, 0x800000026742DA80, v29);
  v30 = *v27;
  *v27 = v180;

  v25(v205, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000037, 0x800000026742DAC0, v35);
  v36 = *v33;
  *v33 = v181;

  v31(v205, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000034, 0x800000026742DB00, v41);
  v42 = *v39;
  *v39 = v182;

  v37(v205, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000034, 0x800000026742DB40, v47);
  v48 = *v45;
  *v45 = v183;

  v43(v205, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003ALL, 0x800000026742DB80, v53);
  v54 = *v51;
  *v51 = v184;

  v49(v205, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000041, 0x800000026742DBC0, v59);
  v60 = *v57;
  *v57 = v185;

  v55(v205, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000035, 0x800000026742DC10, v65);
  v66 = *v63;
  *v63 = v186;

  v61(v205, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000037, 0x800000026742DC50, v71);
  v72 = *v69;
  *v69 = v187;

  v67(v205, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000003CLL, 0x800000026742DC90, v77);
  v78 = *v75;
  *v75 = v188;

  v73(v205, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(100, 0xD00000000000002CLL, 0x800000026742DCD0, v83);
  v84 = *v81;
  *v81 = v189;

  v79(v205, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000051, 0x800000026742DD00, v89);
  v90 = *v87;
  *v87 = v190;

  v85(v205, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(102, 0xD000000000000049, 0x800000026742DD60, v95);
  v96 = *v93;
  *v93 = v191;

  v91(v205, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(103, 0xD00000000000004FLL, 0x800000026742DDB0, v101);
  v102 = *v99;
  *v99 = v192;

  v97(v205, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(104, 0xD000000000000053, 0x800000026742DE00, v107);
  v108 = *v105;
  *v105 = v193;

  v103(v205, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(105, 0xD000000000000057, 0x800000026742DE60, v113);
  v114 = *v111;
  *v111 = v194;

  v109(v205, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(106, 0xD00000000000005CLL, 0x800000026742DEC0, v119);
  v120 = *v117;
  *v117 = v195;

  v115(v205, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(107, 0xD000000000000063, 0x800000026742DF20, v125);
  v126 = *v123;
  *v123 = v196;

  v121(v205, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v197 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(108, 0xD00000000000005BLL, 0x800000026742DF90, v131);
  v132 = *v129;
  *v129 = v197;

  v127(v205, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(109, 0xD000000000000057, 0x800000026742DFF0, v137);
  v138 = *v135;
  *v135 = v198;

  v133(v205, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(110, 0xD00000000000005CLL, 0x800000026742E050, v143);
  v144 = *v141;
  *v141 = v199;

  v139(v205, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(111, 0xD000000000000059, 0x800000026742E0B0, v149);
  v150 = *v147;
  *v147 = v200;

  v145(v205, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(112, 0xD00000000000005BLL, 0x800000026742E110, v155);
  v156 = *v153;
  *v153 = v201;

  v151(v205, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(200, 0xD000000000000030, 0x800000026742E170, v161);
  v162 = *v159;
  *v159 = v202;

  v157(v205, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(201, 0xD000000000000041, 0x800000026742E1B0, v167);
  v168 = *v165;
  *v165 = v203;

  v163(v205, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(301, 0xD00000000000002ELL, 0x800000026742E200, v173);
  v174 = *v171;
  *v171 = v204;

  return v169(v205, 0);
}

uint64_t sub_266F604C4(uint64_t a1)
{
  v2 = sub_266F605C8(&qword_2800F0858);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F6052C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F605C8(&qword_2800F0858);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F605C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorClientEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0860, 0x277D572D0);
  sub_266ECAF2C(&qword_2800F0868, &qword_2800F0860, 0x277D572D0);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F0848, 0x277D572A8);
  sub_266ECAF2C(&qword_2800F0840, &qword_2800F0848, 0x277D572A8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x800000026742E270);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F0870, 0x277D57340);
  sub_266ECAF2C(&qword_2800F0878, &qword_2800F0870, 0x277D57340);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x800000026742E290);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800F0880, 0x277D572F8);
  sub_266ECAF2C(&qword_2800F0888, &qword_2800F0880, 0x277D572F8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ELL, 0x800000026742E2C0);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800F0890, 0x277D573A0);
  sub_266ECAF2C(&qword_2800F0898, &qword_2800F0890, 0x277D573A0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000026, 0x800000026742E2E0);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F08A0, 0x277D57380);
  sub_266ECAF2C(&qword_2800F08A8, &qword_2800F08A0, 0x277D57380);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002BLL, 0x800000026742E310);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800F08B0, 0x277D57360);
  sub_266ECAF2C(&qword_2800F08B8, &qword_2800F08B0, 0x277D57360);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000024, 0x800000026742E340);
  v15(v31, 0);
  sub_266ECB294(0, &qword_2800F08C0, 0x277D572D8);
  sub_266ECAF2C(&qword_2800F08C8, &qword_2800F08C0, 0x277D572D8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, 0x800000026742E370);
  v16(v31, 0);
  sub_266ECB294(0, &qword_2800F08D0, 0x277D57320);
  sub_266ECAF2C(&qword_2800F08D8, &qword_2800F08D0, 0x277D57320);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = v28;
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026742E3A0);
  v18(v31, 0);
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
  (*(v29 + 32))(v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v17, v30);
  v19(v31, 0);
  sub_266ECB128(&unk_2878852E8);
  return sub_2673811CC();
}

uint64_t sub_266F61028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F610C0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F6118C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F611F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F61250(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F08E0, &qword_2800F08E8, 0x277D572C8);
  a1[2] = sub_266ECAF2C(&qword_2800F08F0, &qword_2800F08E8, 0x277D572C8);
  result = sub_266ECAF2C(&qword_2800F08F8, &qword_2800F08E8, 0x277D572C8);
  a1[3] = result;
  return result;
}

uint64_t static ExecutorSiriSchemaExecutorClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_26738113C();
  v26 = *(v28 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v24 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v25 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v29 = *(v11 + 56);
  v30 = v11 + 56;
  v29(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x7365757165526669, 0xEB00000000644974);
  v12(v33, 0);
  v31 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v32, 0x7365757165526669, 0xEB00000000644974);
  v23 = *(v11 + 48);
  if (!v23(v15, 1, v10))
  {
    sub_266ECB128(&unk_287885320);
    sub_26738115C();
  }

  (v14)(v32, 0);
  v13(v33, 0);
  sub_26738120C();
  v29(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F747563657865, 0xEA00000000006449);
  v16(v33, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v32, 0x726F747563657865, 0xEA00000000006449);
  if (!v23(v19, 1, v10))
  {
    sub_266ECB128(&unk_287885350);
    sub_26738115C();
  }

  (v18)(v32, 0);
  v17(v33, 0);
  (*(v26 + 104))(v27, *MEMORY[0x277D3E540], v28);
  v33[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496E617073, 0xE600000000000000);
  return v20(v33, 0);
}

uint64_t sub_266F61868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F618CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorIdentifierQueryCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0908, 0x277D572F0);
  sub_266ECAF2C(&qword_2800F0910, &qword_2800F0908, 0x277D572F0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0918, 0x277D572E0);
  sub_266ECAF2C(&qword_2800F0920, &qword_2800F0918, 0x277D572E0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0928, 0x277D572E8);
  sub_266ECAF2C(&qword_2800F0930, &qword_2800F0928, 0x277D572E8);
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

uint64_t sub_266F61E88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F61EEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorIdentifierQueryCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F621D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6223C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F622A0()
{
  result = qword_2800F0920;
  if (!qword_2800F0920)
  {
    sub_266F622F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0920);
  }

  return result;
}

unint64_t sub_266F622F8()
{
  result = qword_2800F0918;
  if (!qword_2800F0918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0918);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorIdentifierQueryCallFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F6258C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F625F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F62654()
{
  result = qword_2800F0930;
  if (!qword_2800F0930)
  {
    sub_266F626AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0930);
  }

  return result;
}

unint64_t sub_266F626AC()
{
  result = qword_2800F0928;
  if (!qword_2800F0928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0928);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorIdentifierQueryCallStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F62940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F629A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F62A08()
{
  result = qword_2800F0910;
  if (!qword_2800F0910)
  {
    sub_266F62A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0910);
  }

  return result;
}

unint64_t sub_266F62A60()
{
  result = qword_2800F0908;
  if (!qword_2800F0908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0908);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorPersonQueryCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0938, 0x277D57310);
  sub_266ECAF2C(&qword_2800F0940, &qword_2800F0938, 0x277D57310);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0948, 0x277D57300);
  sub_266ECAF2C(&qword_2800F0950, &qword_2800F0948, 0x277D57300);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0958, 0x277D57308);
  sub_266ECAF2C(&qword_2800F0960, &qword_2800F0958, 0x277D57308);
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

uint64_t sub_266F62FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F63028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorPersonQueryCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F63314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F63378(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F633DC()
{
  result = qword_2800F0950;
  if (!qword_2800F0950)
  {
    sub_266F63434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0950);
  }

  return result;
}

unint64_t sub_266F63434()
{
  result = qword_2800F0948;
  if (!qword_2800F0948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0948);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorPersonQueryCallFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F636C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6372C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F63790()
{
  result = qword_2800F0960;
  if (!qword_2800F0960)
  {
    sub_266F637E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0960);
  }

  return result;
}

unint64_t sub_266F637E8()
{
  result = qword_2800F0958;
  if (!qword_2800F0958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0958);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorPersonQueryCallStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F63A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F63AE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F63B44()
{
  result = qword_2800F0940;
  if (!qword_2800F0940)
  {
    sub_266F63B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0940);
  }

  return result;
}

unint64_t sub_266F63B9C()
{
  result = qword_2800F0938;
  if (!qword_2800F0938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0938);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorRequestCanceled.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F63E30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F63E94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F63EF8()
{
  result = qword_2800F0968;
  if (!qword_2800F0968)
  {
    sub_266F63F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0968);
  }

  return result;
}

unint64_t sub_266F63F50()
{
  result = qword_2800F0970;
  if (!qword_2800F0970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0970);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0978, 0x277D57338);
  sub_266ECAF2C(&qword_2800F0980, &qword_2800F0978, 0x277D57338);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F0988, 0x277D57328);
  sub_266ECAF2C(&qword_2800F0990, &qword_2800F0988, 0x277D57328);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F0998, 0x277D57330);
  sub_266ECAF2C(&qword_2800F09A0, &qword_2800F0998, 0x277D57330);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F0970, 0x277D57318);
  sub_266ECAF2C(&qword_2800F0968, &qword_2800F0970, 0x277D57318);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v23;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C65636E6163, 0xE800000000000000);
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

uint64_t sub_266F6457C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F645E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaIFOutcome(0);
  sub_266F64C24();
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D6F6374756FLL, 0xE700000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F09B0, 0x277D5A8F0);
  sub_266ECAF2C(&qword_2800F09B8, &qword_2800F09B0, 0x277D5A8F0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x73736563637573, 0xE700000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F09C0, 0x277D5A8F8);
  sub_266ECAF2C(&qword_2800F09C8, &qword_2800F09C0, 0x277D5A8F8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026742E6C0);
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

uint64_t sub_266F64B60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F64BC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F64C24()
{
  result = qword_2800F09A8;
  if (!qword_2800F09A8)
  {
    type metadata accessor for SISchemaIFOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F09A8);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorRequestFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F09D0, 0x277D5A8E8);
  sub_266ECAF2C(&qword_2800F09D8, &qword_2800F09D0, 0x277D5A8E8);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F64E90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F09D0, 0x277D5A8E8);
  sub_266ECAF2C(&qword_2800F09D8, &qword_2800F09D0, 0x277D5A8E8);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F65028(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6508C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorRequestStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaIFPayload(0);
  sub_266F65594(&qword_2800F09E0, type metadata accessor for SISchemaIFPayload);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7961507475706E69, 0xEC00000064616F6CLL);
  return v5(v7, 0);
}

uint64_t sub_266F652F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaIFPayload(0);
  sub_266F65594(&qword_2800F09E0, type metadata accessor for SISchemaIFPayload);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7961507475706E69, 0xEC00000064616F6CLL);
  return v5(v7, 0);
}

uint64_t sub_266F65488(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F654EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F65594(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F655DC()
{
  result = qword_2800F0978;
  if (!qword_2800F0978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0978);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F09E8, 0x277D57358);
  sub_266ECAF2C(&qword_2800F09F0, &qword_2800F09E8, 0x277D57358);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F09F8, 0x277D57348);
  sub_266ECAF2C(&qword_2800F0A00, &qword_2800F09F8, 0x277D57348);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F0A08, 0x277D57350);
  sub_266ECAF2C(&qword_2800F0A10, &qword_2800F0A08, 0x277D57350);
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
  sub_266EC637C(v5, 0x64496563617274, 0xE700000000000000);
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

uint64_t sub_266F65C04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F65C68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F65F54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F65FB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6601C()
{
  result = qword_2800F0A00;
  if (!qword_2800F0A00)
  {
    sub_266F66074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A00);
  }

  return result;
}

unint64_t sub_266F66074()
{
  result = qword_2800F09F8;
  if (!qword_2800F09F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F09F8);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryCallFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F66308(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6636C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F663D0()
{
  result = qword_2800F0A10;
  if (!qword_2800F0A10)
  {
    sub_266F66428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A10);
  }

  return result;
}

unint64_t sub_266F66428()
{
  result = qword_2800F0A08;
  if (!qword_2800F0A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A08);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryCallStarted.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v14, 0);
  type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(0);
  sub_266F668A0(&qword_2800F0A18, type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026742E860);
  return v12(v14, 0);
}

uint64_t sub_266F66794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F667F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F668A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266F668E8()
{
  result = qword_2800F09E8;
  if (!qword_2800F09E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F09E8);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026742E8C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026742E8F0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026742E920, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x800000026742E950, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F66BB8(uint64_t a1)
{
  v2 = sub_266F66CBC(&qword_2800F0A20);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F66C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F66CBC(&qword_2800F0A20);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F66CBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0A28, 0x277D57378);
  sub_266ECAF2C(&qword_2800F0A30, &qword_2800F0A28, 0x277D57378);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0A38, 0x277D57368);
  sub_266ECAF2C(&qword_2800F0A40, &qword_2800F0A38, 0x277D57368);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0A48, 0x277D57370);
  sub_266ECAF2C(&qword_2800F0A50, &qword_2800F0A48, 0x277D57370);
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

uint64_t sub_266F67218(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6727C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F67568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F675CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F67630()
{
  result = qword_2800F0A40;
  if (!qword_2800F0A40)
  {
    sub_266F67688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A40);
  }

  return result;
}

unint64_t sub_266F67688()
{
  result = qword_2800F0A38;
  if (!qword_2800F0A38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A38);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityCallFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F6791C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F67980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F679E4()
{
  result = qword_2800F0A50;
  if (!qword_2800F0A50)
  {
    sub_266F67A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A50);
  }

  return result;
}

unint64_t sub_266F67A3C()
{
  result = qword_2800F0A48;
  if (!qword_2800F0A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A48);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityCallStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F67CD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F67D34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F67D98()
{
  result = qword_2800F0A30;
  if (!qword_2800F0A30)
  {
    sub_266F67DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A30);
  }

  return result;
}

unint64_t sub_266F67DF0()
{
  result = qword_2800F0A28;
  if (!qword_2800F0A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A28);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0A58, 0x277D57398);
  sub_266ECAF2C(&qword_2800F0A60, &qword_2800F0A58, 0x277D57398);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0A68, 0x277D57388);
  sub_266ECAF2C(&qword_2800F0A70, &qword_2800F0A68, 0x277D57388);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0A78, 0x277D57390);
  sub_266ECAF2C(&qword_2800F0A80, &qword_2800F0A78, 0x277D57390);
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

uint64_t sub_266F68354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F683B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F686A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F68708(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6876C()
{
  result = qword_2800F0A70;
  if (!qword_2800F0A70)
  {
    sub_266F687C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A70);
  }

  return result;
}

unint64_t sub_266F687C4()
{
  result = qword_2800F0A68;
  if (!qword_2800F0A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A68);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F68A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F68ABC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F68B20()
{
  result = qword_2800F0A80;
  if (!qword_2800F0A80)
  {
    sub_266F68B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A80);
  }

  return result;
}

unint64_t sub_266F68B78()
{
  result = qword_2800F0A78;
  if (!qword_2800F0A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A78);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F68E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F68E70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F68ED4()
{
  result = qword_2800F0A60;
  if (!qword_2800F0A60)
  {
    sub_266F68F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A60);
  }

  return result;
}

unint64_t sub_266F68F2C()
{
  result = qword_2800F0A58;
  if (!qword_2800F0A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A58);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryLocationCallContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0A88, 0x277D573B8);
  sub_266ECAF2C(&qword_2800F0A90, &qword_2800F0A88, 0x277D573B8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0A98, 0x277D573A8);
  sub_266ECAF2C(&qword_2800F0AA0, &qword_2800F0A98, 0x277D573A8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0AA8, 0x277D573B0);
  sub_266ECAF2C(&qword_2800F0AB0, &qword_2800F0AA8, 0x277D573B0);
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

uint64_t sub_266F69490(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F694F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryLocationCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F697E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F69844(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F698A8()
{
  result = qword_2800F0AA0;
  if (!qword_2800F0AA0)
  {
    sub_266F69900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AA0);
  }

  return result;
}

unint64_t sub_266F69900()
{
  result = qword_2800F0A98;
  if (!qword_2800F0A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A98);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryLocationCallFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F69B94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F69BF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F69C5C()
{
  result = qword_2800F0AB0;
  if (!qword_2800F0AB0)
  {
    sub_266F69CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AB0);
  }

  return result;
}

unint64_t sub_266F69CB4()
{
  result = qword_2800F0AA8;
  if (!qword_2800F0AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0AA8);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryLocationCallStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F69F48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F69FAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6A010()
{
  result = qword_2800F0A90;
  if (!qword_2800F0A90)
  {
    sub_266F6A068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A90);
  }

  return result;
}

unint64_t sub_266F6A068()
{
  result = qword_2800F0A88;
  if (!qword_2800F0A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A88);
  }

  return result;
}

uint64_t static EXPSchemaEXPRolloutAllocationStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026742ED70, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026742EDA0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026742EDD0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026742EE00, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F6A33C(uint64_t a1)
{
  v2 = sub_266F6A440(&qword_2800F0AC0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F6A3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F6A440(&qword_2800F0AC0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F6A440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EXPSchemaEXPRolloutAllocationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static EXPSchemaEXPTreatmentAllocationStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026742EE60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026742EE90, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026742EEC0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026742EEF0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_266F6A70C(uint64_t a1)
{
  v2 = sub_266F6A810(&qword_2800F0AD0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F6A774(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F6A810(&qword_2800F0AD0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F6A810(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static EXPSchemaEXPTrialExperiment.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v3 = sub_26738113C();
  v38 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v33 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v37 = a2;
  sub_26738119C();
  v35 = "xp.EXPTrialExperiment";
  v12 = *MEMORY[0x277D3E530];
  v39 = *(v4 + 104);
  v39(v7, v12, v3);
  v40 = v4 + 104;
  v42[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v11, 0, 1, v13);
  v34 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v35 | 0x8000000000000000);
  v17(v42, 0);
  v18 = v12;
  v20 = v38;
  v19 = v39;
  v39(v7, v18, v38);
  v42[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x656D697265707865, 0xEC0000006449746ELL);
  v21(v42, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v22 = v34;
  v34(v11, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E656D7461657274, 0xEB00000000644974);
  v23(v42, 0);
  v24 = *MEMORY[0x277D3E510];
  v36 = v7;
  v19(v7, v24, v20);
  v42[0] = 1;
  sub_26738114C();
  v22(v11, 0, 1, v13);
  v33[1] = v16;
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v25(v42, 0);
  type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(0);
  sub_266F6B05C();
  sub_26738120C();
  v33[0] = v13;
  v22(v11, 0, 1, v13);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026742EF70);
  v26(v42, 0);
  v41 = "allocationStatus";
  v27 = v36;
  v29 = v38;
  v28 = v39;
  v39(v36, *MEMORY[0x277D3E540], v38);
  v42[0] = 1;
  sub_26738114C();
  v22(v11, 0, 1, v13);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v41 | 0x8000000000000000);
  v30(v42, 0);
  v28(v27, *MEMORY[0x277D3E538], v29);
  v42[0] = 1;
  sub_26738114C();
  v22(v11, 0, 1, v33[0]);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x800000026742EFB0);
  v31(v42, 0);
  sub_266ECB128(&unk_287885380);
  return sub_2673811CC();
}

uint64_t sub_266F6AF98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6AFFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6B05C()
{
  result = qword_2800F0AC8;
  if (!qword_2800F0AC8)
  {
    type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AC8);
  }

  return result;
}

uint64_t static EXPSchemaEXPTrialRollout.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v24 = v11;
  v11(v5, v10, v1);
  v26[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v22 = *(*(v12 - 8) + 56);
  v22(v9, 0, 1, v12);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x4974756F6C6C6F72, 0xE900000000000064);
  v13(v26, 0);
  v14 = v1;
  v15 = v24;
  v24(v5, v10, v14);
  v26[0] = 1;
  sub_26738114C();
  v16 = v22;
  v22(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449706D6172, 0xE600000000000000);
  v17(v26, 0);
  v15(v5, *MEMORY[0x277D3E538], v23);
  v26[0] = 1;
  sub_26738114C();
  v16(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v18(v26, 0);
  type metadata accessor for EXPSchemaEXPRolloutAllocationStatus(0);
  sub_266F6B718();
  sub_26738120C();
  v16(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x737574617473, 0xE600000000000000);
  v19(v26, 0);
  sub_266ECB294(0, &qword_2800F0AE8, 0x277D57238);
  sub_266ECAF2C(&qword_2800F0AF0, &qword_2800F0AE8, 0x277D57238);
  sub_26738122C();
  v16(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x63617073656D616ELL, 0xEA00000000007365);
  v20(v26, 0);
  sub_266ECB128(&unk_2878853A8);
  return sub_2673811CC();
}

uint64_t sub_266F6B654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6B6B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6B718()
{
  result = qword_2800F0AB8;
  if (!qword_2800F0AB8)
  {
    type metadata accessor for EXPSchemaEXPRolloutAllocationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AB8);
  }

  return result;
}

uint64_t static EXPSchemaEXPTrialRolloutNamespace.makeTypeManifestAndEnsureFields(in:)()
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
  v21 = *MEMORY[0x277D3E530];
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
  sub_266EC637C(v8, 1701667182, 0xE400000000000000);
  v12(v22, 0);
  v18 = "lastUpdatedAtInMs";
  v13 = v0;
  v14 = v20;
  v20(v4, *MEMORY[0x277D3E538], v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v18 | 0x8000000000000000);
  v15(v22, 0);
  v14(v4, v21, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6150726F74636166, 0xEC00000064496B63);
  return v16(v22, 0);
}

uint64_t sub_266F6BBA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6BC04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6BC68()
{
  result = qword_2800F0AF0;
  if (!qword_2800F0AF0)
  {
    sub_266F6BCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AF0);
  }

  return result;
}

unint64_t sub_266F6BCC0()
{
  result = qword_2800F0AE8;
  if (!qword_2800F0AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0AE8);
  }

  return result;
}

uint64_t static EXPSearchSchemaEXPSearchClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0B08, 0x277D57248);
  sub_266ECAF2C(&qword_2800F0B10, &qword_2800F0B08, 0x277D57248);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742F060);
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
  sub_266ECB128(&unk_2878853D0);
  return sub_2673811CC();
}

uint64_t sub_266F6C05C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F6C0F4()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F6C1C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6C224(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F6C284(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0B18, &qword_2800F0B20, 0x277D57240);
  a1[2] = sub_266ECAF2C(&qword_2800F0B28, &qword_2800F0B20, 0x277D57240);
  result = sub_266ECAF2C(&qword_2800F0B30, &qword_2800F0B20, 0x277D57240);
  a1[3] = result;
  return result;
}

uint64_t static EXPSearchSchemaEXPSearchSessionExperiments.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6553686372616573, 0xEF64496E6F697373);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026742F0C0);
  v7(v9, 0);
  sub_266ECB128(&unk_287885408);
  return sub_2673811CC();
}

uint64_t sub_266F6C674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6C6D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPAllocationChangelogSnapshot.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_266F6C958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_266F6CAFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6CB60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPAllocationSnapshot.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_266F6CDE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_266F6CF84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6CFE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPClientExperimentTriggeredTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6874617065646F63, 0xEA00000000006449);
  return v7(v9, 0);
}

uint64_t sub_266F6D364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6D3C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6874617065646F63, 0xEA00000000006449);
  v7(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x4974736575716572, 0xE900000000000064);
  return v8(v10, 0);
}

uint64_t sub_266F6D7D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6D834(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPRolloutChangeSnapshot.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E540], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x800000026742F220);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F0B00, 0x277D57230);
  sub_266ECAF2C(&qword_2800F0AF8, &qword_2800F0B00, 0x277D57230);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7374756F6C6C6F72, 0xE800000000000000);
  return v12(v14, 0);
}

uint64_t sub_266F6DC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6DC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPServerCounterfactualTriggered.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v24 = v1;
  v25 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v23 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v22[2] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x4973757361676570, 0xE900000000000064);
  v11(v26, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v25 + 104);
  v25 += 104;
  v22[0] = v13;
  v14 = v23;
  v13(v23, v12, v24);
  v26[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674206D0);
  v15(v26, 0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6874617065646F63, 0xEA00000000006449);
  v16(v26, 0);
  (v22[0])(v14, *MEMORY[0x277D3E4E8], v24);
  v26[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026742F290);
  v17(v26, 0);
  type metadata accessor for EXPSiriSchemaEXPSiriDiffOutcome(0);
  sub_266F6E480();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6374754F66666964, 0xEB00000000656D6FLL);
  v18(v26, 0);
  v25 = "isCounterfactualDifferent";
  sub_266ECB294(0, &qword_2800F0B98, 0x277D57298);
  sub_266ECAF2C(&qword_2800F0BA0, &qword_2800F0B98, 0x277D57298);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v25 | 0x8000000000000000);
  v19(v26, 0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026742F2D0);
  return v20(v26, 0);
}

uint64_t sub_266F6E3BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6E420(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6E480()
{
  result = qword_2800F0B90;
  if (!qword_2800F0B90)
  {
    type metadata accessor for EXPSiriSchemaEXPSiriDiffOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0B90);
  }

  return result;
}

uint64_t static EXPSiriSchemaEXPServerCounterfactualTriggeredTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_26738113C();
  v47 = *(v45 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  v44 = sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  v41 = v10;
  sub_26738122C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v38 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v15(v48, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v16 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6874617065646F63, 0xEA00000000006449);
  v17(v48, 0);
  v42 = a1;
  sub_26738120C();
  v18 = v38;
  v38(v9, 0, 1, v11);
  v43 = v16;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x4973757361676570, 0xE900000000000064);
  v19(v48, 0);
  sub_26738122C();
  v18(v9, 0, 1, v11);
  v40 = v14;
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x800000026742F330);
  v20(v48, 0);
  v41 = "rCounterfactualTriggered";
  v21 = *MEMORY[0x277D3E4E8];
  v22 = v46;
  v23 = v47 + 104;
  v44 = *(v47 + 104);
  v24 = v45;
  v44(v46, v21, v45);
  v48[0] = 1;
  sub_26738114C();
  v25 = v11;
  v39 = v11;
  v18(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v41 | 0x8000000000000000);
  v26(v48, 0);
  v41 = "counterfactualAllocation";
  v27 = v24;
  v28 = v24;
  v29 = v44;
  v44(v22, *MEMORY[0x277D3E500], v27);
  v47 = v23;
  v48[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v41 | 0x8000000000000000);
  v30(v48, 0);
  v29(v46, *MEMORY[0x277D3E510], v28);
  v48[0] = 1;
  sub_26738114C();
  v31 = v39;
  v18(v9, 0, 1, v39);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x65756C61566BLL, 0xE600000000000000);
  v32(v48, 0);
  type metadata accessor for EXPSiriSchemaEXPSiriDiffOutcome(0);
  sub_266F6E480();
  sub_26738120C();
  v18(v9, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x6374754F66666964, 0xEB00000000656D6FLL);
  v33(v48, 0);
  v41 = "isCounterfactualDifferent";
  sub_266ECB294(0, &qword_2800F0B98, 0x277D57298);
  sub_266ECAF2C(&qword_2800F0BA0, &qword_2800F0B98, 0x277D57298);
  sub_26738120C();
  v18(v9, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v41 | 0x8000000000000000);
  v34(v48, 0);
  sub_26738120C();
  v18(v9, 0, 1, v31);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026742F2D0);
  v35(v48, 0);
  v44(v46, *MEMORY[0x277D3E530], v45);
  v48[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v31);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674206D0);
  return v36(v48, 0);
}

uint64_t sub_266F6EEF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6EF58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPServerExperimentTriggeredTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6874617065646F63, 0xEA00000000006449);
  v7(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x4973757361676570, 0xE900000000000064);
  return v8(v10, 0);
}

uint64_t sub_266F6F360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6F3C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPSiriClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F0B58, 0x277D57258);
  sub_266ECAF2C(&qword_2800F0B50, &qword_2800F0B58, 0x277D57258);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026742F3E0);
  v9(v27, 0);
  sub_266ECB294(0, &qword_2800F0B48, 0x277D57250);
  sub_266ECAF2C(&qword_2800F0B40, &qword_2800F0B48, 0x277D57250);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x800000026742F400);
  v10(v27, 0);
  sub_266ECB294(0, &qword_2800F0B68, 0x277D57260);
  sub_266ECAF2C(&qword_2800F0B60, &qword_2800F0B68, 0x277D57260);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026742F420);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800F0B78, 0x277D57268);
  sub_266ECAF2C(&qword_2800F0B70, &qword_2800F0B78, 0x277D57268);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ELL, 0x800000026742F440);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F0B88, 0x277D57270);
  sub_266ECAF2C(&qword_2800F0B80, &qword_2800F0B88, 0x277D57270);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026742F460);
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
  sub_266ECB128(&unk_287885438);
  return sub_2673811CC();
}

uint64_t sub_266F6FB24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F6FBBC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F6FC88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6FCEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F6FD4C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0BD8, &qword_2800F0BE0, 0x277D57290);
  a1[2] = sub_266ECAF2C(&qword_2800F0BE8, &qword_2800F0BE0, 0x277D57290);
  result = sub_266ECAF2C(&qword_2800F0BF0, &qword_2800F0BE0, 0x277D57290);
  a1[3] = result;
  return result;
}

uint64_t static EXPSiriSchemaEXPSiriDiffOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026742F4B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v140;

  v1(v163, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026742F4D0, v11);
  v12 = *v9;
  *v9 = v141;

  v7(v163, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026742F4F0, v17);
  v18 = *v15;
  *v15 = v142;

  v13(v163, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026742F520, v23);
  v24 = *v21;
  *v21 = v143;

  v19(v163, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026742F540, v29);
  v30 = *v27;
  *v27 = v144;

  v25(v163, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026742F570, v35);
  v36 = *v33;
  *v33 = v145;

  v31(v163, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x800000026742F590, v41);
  v42 = *v39;
  *v39 = v146;

  v37(v163, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000033, 0x800000026742F5C0, v47);
  v48 = *v45;
  *v45 = v147;

  v43(v163, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x800000026742F600, v53);
  v54 = *v51;
  *v51 = v148;

  v49(v163, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000022, 0x800000026742F620, v59);
  v60 = *v57;
  *v57 = v149;

  v55(v163, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x800000026742F650, v65);
  v66 = *v63;
  *v63 = v150;

  v61(v163, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x800000026742F680, v71);
  v72 = *v69;
  *v69 = v151;

  v67(v163, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000026, 0x800000026742F6B0, v77);
  v78 = *v75;
  *v75 = v152;

  v73(v163, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000027, 0x800000026742F6E0, v83);
  v84 = *v81;
  *v81 = v153;

  v79(v163, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000026, 0x800000026742F710, v89);
  v90 = *v87;
  *v87 = v154;

  v85(v163, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001DLL, 0x800000026742F740, v95);
  v96 = *v93;
  *v93 = v155;

  v91(v163, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001DLL, 0x800000026742F760, v101);
  v102 = *v99;
  *v99 = v156;

  v97(v163, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000019, 0x800000026742F780, v107);
  v108 = *v105;
  *v105 = v157;

  v103(v163, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000002ELL, 0x800000026742F7A0, v113);
  v114 = *v111;
  *v111 = v158;

  v109(v163, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000038, 0x800000026742F7D0, v119);
  v120 = *v117;
  *v117 = v159;

  v115(v163, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000021, 0x800000026742F810, v125);
  v126 = *v123;
  *v123 = v160;

  v121(v163, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000022, 0x800000026742F840, v131);
  v132 = *v129;
  *v129 = v161;

  v127(v163, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000023, 0x800000026742F870, v137);
  v138 = *v135;
  *v135 = v162;

  return v133(v163, 0);
}