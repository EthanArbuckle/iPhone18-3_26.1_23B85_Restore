uint64_t sub_26730DC2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730DC90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730DCF4()
{
  result = qword_2800FA640;
  if (!qword_2800FA640)
  {
    sub_26730DD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA640);
  }

  return result;
}

unint64_t sub_26730DD4C()
{
  result = qword_2800FA638;
  if (!qword_2800FA638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA638);
  }

  return result;
}

uint64_t static SISchemaUEIRequestCategorization.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIRequestType(0);
  sub_26730E160(&qword_2800FA658, type metadata accessor for SISchemaUEIRequestType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x5474736575716572, 0xEB00000000657079);
  v6(v9, 0);
  type metadata accessor for SISchemaUEIRequestStatus(0);
  sub_26730E160(&qword_2800FA660, type metadata accessor for SISchemaUEIRequestStatus);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x5374736575716572, 0xED00007375746174);
  return v7(v9, 0);
}

uint64_t sub_26730E054(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730E0B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26730E160(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26730E1A8()
{
  result = qword_2800F9C58;
  if (!qword_2800F9C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9C58);
  }

  return result;
}

uint64_t static SISchemaUEIRequestStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026749BE10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026749BE40, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x800000026749BE60, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026749BE80, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26730E478(uint64_t a1)
{
  v2 = sub_26730E57C(&qword_2800FA668);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26730E4E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26730E57C(&qword_2800FA668);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26730E57C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIRequestStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026749BED0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026749BF00, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026749BF20, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026749BF40, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x800000026749BF60, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026749BF90, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x800000026749BFC0, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000031, 0x800000026749BFF0, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000028, 0x800000026749C030, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000027, 0x800000026749C060, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_26730EAE4(uint64_t a1)
{
  v2 = sub_26730EBE8(&qword_2800FA670);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26730EB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26730EBE8(&qword_2800FA670);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26730EBE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEISiriCarCommandCancelled.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026749C0D0);
  return v10(v12, 0);
}

uint64_t sub_26730EE7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730EEE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730EF44()
{
  result = qword_2800FA678;
  if (!qword_2800FA678)
  {
    sub_26730EF9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA678);
  }

  return result;
}

unint64_t sub_26730EF9C()
{
  result = qword_2800FA680;
  if (!qword_2800FA680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA680);
  }

  return result;
}

uint64_t static SISchemaUEISiriCarCommandContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA688, 0x277D5ABA8);
  sub_266ECAF2C(&qword_2800FA690, &qword_2800FA688, 0x277D5ABA8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800FA698, 0x277D5AB98);
  sub_266ECAF2C(&qword_2800FA6A0, &qword_2800FA698, 0x277D5AB98);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800FA6A8, 0x277D5ABA0);
  sub_266ECAF2C(&qword_2800FA6B0, &qword_2800FA6A8, 0x277D5ABA0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800FA680, 0x277D5AB88);
  sub_266ECAF2C(&qword_2800FA678, &qword_2800FA680, 0x277D5AB88);
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

uint64_t sub_26730F5CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730F630(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEISiriCarCommandEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026749C0D0);
  return v10(v12, 0);
}

uint64_t sub_26730F924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730F988(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730F9EC()
{
  result = qword_2800FA6A0;
  if (!qword_2800FA6A0)
  {
    sub_26730FA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6A0);
  }

  return result;
}

unint64_t sub_26730FA44()
{
  result = qword_2800FA698;
  if (!qword_2800FA698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA698);
  }

  return result;
}

uint64_t static SISchemaUEISiriCarCommandFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026749C0D0);
  return v10(v12, 0);
}

uint64_t sub_26730FCE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730FD44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730FDA8()
{
  result = qword_2800FA6B0;
  if (!qword_2800FA6B0)
  {
    sub_26730FE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6B0);
  }

  return result;
}

unint64_t sub_26730FE00()
{
  result = qword_2800FA6A8;
  if (!qword_2800FA6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6A8);
  }

  return result;
}

uint64_t static SISchemaUEISiriCarCommandStarted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaCarPlayConnection(0);
  sub_267310360(&qword_2800F5EC8, type metadata accessor for SISchemaCarPlayConnection);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v19 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267469310);
  v11(v22, 0);
  v18 = "arCommandStarted";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = v20;
  v14 = *(v21 + 104);
  v21 += 104;
  v14(v4, v12, v20);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v18 | 0x8000000000000000);
  v15(v22, 0);
  v14(v4, v12, v13);
  v22[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026749C1F0);
  return v16(v22, 0);
}

uint64_t sub_267310254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673102B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267310360(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2673103A8()
{
  result = qword_2800FA688;
  if (!qword_2800FA688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA688);
  }

  return result;
}

uint64_t static SISchemaUEISiriWasUnavailable.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaProduct(0);
  sub_267310860(&qword_2800F64E8, type metadata accessor for SISchemaProduct);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746375646F7270, 0xE700000000000000);
  v6(v10, 0);
  type metadata accessor for SISchemaSiriUnavailableReason(0);
  sub_267310860(&qword_2800FA4D0, type metadata accessor for SISchemaSiriUnavailableReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v7(v10, 0);
  type metadata accessor for ORCHSchemaORCHAssetType(0);
  sub_267310860(&qword_2800F6370, type metadata accessor for ORCHSchemaORCHAssetType);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7079547465737361, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_267310754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673107B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267310860(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2673108A8()
{
  result = qword_2800F9E08;
  if (!qword_2800F9E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9E08);
  }

  return result;
}

uint64_t static SISchemaUEIStopRecordingReasonMajor.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000035, 0x800000026749C280, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026749C2C0, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x800000026749C2F0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x800000026749C330, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ELL, 0x800000026749C370, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x800000026749C3A0, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x800000026749C3D0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x800000026749C400, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000031, 0x800000026749C430, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_267310DAC(uint64_t a1)
{
  v2 = sub_267310EB0(&qword_2800FA6B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267310E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_267310EB0(&qword_2800FA6B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267310EB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIStopRecordingReasonMajor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIStopRecordingReasonMinor.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000035, 0x800000026749C4B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026749C4F0, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026749C520, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026749C550, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x800000026749C580, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x800000026749C5C0, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x800000026749C5F0, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002FLL, 0x800000026749C620, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x800000026749C650, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x800000026749C680, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x800000026749C6B0, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x800000026749C6E0, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_267311500(uint64_t a1)
{
  v2 = sub_267311604(&qword_2800FA6C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267311568(uint64_t a1, uint64_t a2)
{
  v4 = sub_267311604(&qword_2800FA6C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267311604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIStopRecordingReasonMinor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEITranscriptShown.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaTranscriptShownReason(0);
  sub_267311938(&qword_2800FA520, type metadata accessor for SISchemaTranscriptShownReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026749C750);
  return v5(v7, 0);
}

uint64_t sub_26731182C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267311890(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267311938(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267311980()
{
  result = qword_2800F9EB8;
  if (!qword_2800F9EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9EB8);
  }

  return result;
}

uint64_t static SISchemaUEITranscriptTapped.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267311C14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267311C78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267311CDC()
{
  result = qword_2800F9ED0;
  if (!qword_2800F9ED0)
  {
    sub_267311D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9ED0);
  }

  return result;
}

unint64_t sub_267311D34()
{
  result = qword_2800F9EC8;
  if (!qword_2800F9EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9EC8);
  }

  return result;
}

uint64_t static SISchemaUEIUIRenderingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA6C8, 0x277D5ABD8);
  sub_266ECAF2C(&qword_2800FA6D0, &qword_2800FA6C8, 0x277D5ABD8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA6D8, 0x277D5ABD0);
  sub_266ECAF2C(&qword_2800FA6E0, &qword_2800FA6D8, 0x277D5ABD0);
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

uint64_t sub_2673121CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267312230(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIUIRenderingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26731251C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267312580(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673125E4()
{
  result = qword_2800FA6E0;
  if (!qword_2800FA6E0)
  {
    sub_26731263C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6E0);
  }

  return result;
}

unint64_t sub_26731263C()
{
  result = qword_2800FA6D8;
  if (!qword_2800FA6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6D8);
  }

  return result;
}

uint64_t static SISchemaUEIUIRenderingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2673128D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267312934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267312998()
{
  result = qword_2800FA6D0;
  if (!qword_2800FA6D0)
  {
    sub_2673129F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6D0);
  }

  return result;
}

unint64_t sub_2673129F0()
{
  result = qword_2800FA6C8;
  if (!qword_2800FA6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6C8);
  }

  return result;
}

uint64_t static SISchemaUEIUserBargeInDetected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267312C84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267312CE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267312D4C()
{
  result = qword_2800F9DD0;
  if (!qword_2800F9DD0)
  {
    sub_267312DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9DD0);
  }

  return result;
}

unint64_t sub_267312DA4()
{
  result = qword_2800F9DC8;
  if (!qword_2800F9DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9DC8);
  }

  return result;
}

uint64_t static SISchemaUEIUserSpeakingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29 = a1;
  v1 = sub_26738118C();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA6E8, 0x277D5AC00);
  sub_266ECAF2C(&qword_2800FA6F0, &qword_2800FA6E8, 0x277D5AC00);
  sub_26738121C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026741EB30);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800FA6F8, 0x277D5ABF8);
  sub_266ECAF2C(&qword_2800FA700, &qword_2800FA6F8, 0x277D5ABF8);
  sub_26738121C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6465646E65, 0xE500000000000000);
  v12(v31, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v30, 0x6465646E65, 0xE500000000000000);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287892B08);
    sub_26738115C();
  }

  (v14)(v30, 0);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v16(v31, 0);
  v17 = v26;
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
  (*(v27 + 32))(v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v17, v28);
  return v18(v31, 0);
}

uint64_t sub_2673133A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267313408(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIUserSpeakingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2673136F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267313758(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673137BC()
{
  result = qword_2800FA700;
  if (!qword_2800FA700)
  {
    sub_267313814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA700);
  }

  return result;
}

unint64_t sub_267313814()
{
  result = qword_2800FA6F8;
  if (!qword_2800FA6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6F8);
  }

  return result;
}

uint64_t static SISchemaUEIUserSpeakingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267313AA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267313B0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267313B70()
{
  result = qword_2800FA6F0;
  if (!qword_2800FA6F0)
  {
    sub_267313BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6F0);
  }

  return result;
}

unint64_t sub_267313BC8()
{
  result = qword_2800FA6E8;
  if (!qword_2800FA6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6E8);
  }

  return result;
}

uint64_t static SISchemaUEIUUFRReady.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v44 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37[-v8];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E4E8];
  v40 = *(v2 + 104);
  v41 = v1;
  v39 = v2 + 104;
  v40(v5, v10, v1);
  v48[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v45 = *(v12 + 56);
  v46 = v12 + 56;
  v45(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v48, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v47, 0x737473697865, 0xE600000000000000);
  v42 = *(v12 + 48);
  v43 = v12 + 48;
  if (!v42(v16, 1, v11))
  {
    sub_266ECB128(&unk_287892B38);
    sub_26738115C();
  }

  (v15)(v47, 0);
  v14(v48, 0);
  v17 = *MEMORY[0x277D3E530];
  v40(v5, v17, v41);
  v48[0] = 1;
  sub_26738114C();
  v18 = v45;
  v45(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x616D6D6F43656361, 0xEF7373616C43646ELL);
  v19(v48, 0);
  v38 = v17;
  v40(v5, v17, v41);
  v48[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x4977656956656361, 0xE900000000000064);
  v20(v48, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v47, 0x4977656956656361, 0xE900000000000064);
  if (!v42(v23, 1, v11))
  {
    sub_266ECB128(&unk_287892B60);
    sub_26738115C();
  }

  (v22)(v47, 0);
  v21(v48, 0);
  type metadata accessor for SISchemaUUFRReadySource(0);
  sub_2673146D8(&qword_2800FA708, type metadata accessor for SISchemaUUFRReadySource);
  sub_26738120C();
  v24 = v45;
  v45(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x6461655272667575, 0xEF656372756F5379);
  v25(v48, 0);
  type metadata accessor for SISchemaUEIUUFRReadyDialogPhase(0);
  sub_2673146D8(&qword_2800FA710, type metadata accessor for SISchemaUEIUUFRReadyDialogPhase);
  sub_26738120C();
  v24(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x6850676F6C616964, 0xEB00000000657361);
  v26(v48, 0);
  v40(v5, v38, v41);
  v48[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026749C920);
  v27(v48, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v47, 0xD000000000000011, 0x800000026749C920);
  if (!v42(v30, 1, v11))
  {
    sub_266ECB128(&unk_287892B88);
    sub_26738115C();
  }

  (v29)(v47, 0);
  v28(v48, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v45(v9, 0, 1, v11);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x6575716552627573, 0xEC00000064497473);
  v31(v48, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v47, 0x6575716552627573, 0xEC00000064497473);
  if (!v42(v34, 1, v11))
  {
    sub_266ECB128(&unk_287892BB8);
    sub_26738115C();
  }

  (v33)(v47, 0);
  v32(v48, 0);
  sub_26738120C();
  v45(v9, 0, 1, v11);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x616D6D6F43656361, 0xEC0000006449646ELL);
  return v35(v48, 0);
}

uint64_t sub_267314614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267314678(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673146D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SISchemaUEIUUFRReadyDialogPhase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026749C970, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026749C990, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026749C9C0, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026749C9F0, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x800000026749CA10, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x800000026749CA40, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000024, 0x800000026749CA60, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x800000026749CA90, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x800000026749CAC0, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000021, 0x800000026749CAE0, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000021, 0x800000026749CB10, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000024, 0x800000026749CB40, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_267314D6C(uint64_t a1)
{
  v2 = sub_267314E70(&qword_2800FA718);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267314DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267314E70(&qword_2800FA718);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267314E70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIUUFRReadyDialogPhase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIVisionSnippetDismissed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v20 = sub_26738113C();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIVisionSnippetStartLocation(0);
  sub_267315454(&qword_2800FA720, type metadata accessor for SISchemaUEIVisionSnippetStartLocation);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x636F4C7472617473, 0xED00006E6F697461);
  v12(v22, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v20);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465766F4D736177, 0xE800000000000000);
  v13(v22, 0);
  type metadata accessor for SISchemaDismissalReason(0);
  sub_267315454(&qword_2800FA080, type metadata accessor for SISchemaDismissalReason);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F73616572, 0xE600000000000000);
  v14(v22, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v21, 0x6E6F73616572, 0xE600000000000000);
  if (!(*(v10 + 48))(v17, 1, v9))
  {
    sub_266ECB128(&unk_287892BE0);
    sub_26738115C();
  }

  (v16)(v21, 0);
  return v15(v22, 0);
}

uint64_t sub_267315348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673153AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267315454(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26731549C()
{
  result = qword_2800F9DF8;
  if (!qword_2800F9DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9DF8);
  }

  return result;
}

uint64_t static SISchemaUEIVisionSnippetStartLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026749CBF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x800000026749CC20, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ALL, 0x800000026749CC50, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2673156FC(uint64_t a1)
{
  v2 = sub_267315800(&qword_2800FA728);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267315764(uint64_t a1, uint64_t a2)
{
  v4 = sub_267315800(&qword_2800FA728);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267315800(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIVisionSnippetStartLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIVoiceCommandDisambiguationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x800000026749CCD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026749CD00, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026749CD30, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267315A58(uint64_t a1)
{
  v2 = sub_267315B5C(&qword_2800FA730);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267315AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267315B5C(&qword_2800FA730);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267315B5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIVoiceCommandDisambiguationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIVoiceCommandExecutionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026749CDA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026749CDD0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000034, 0x800000026749CE00, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026749CE40, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267315E2C(uint64_t a1)
{
  v2 = sub_267315F30(&qword_2800FA738);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267315E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_267315F30(&qword_2800FA738);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267315F30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIVoiceCommandExecutionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIVoiceCommandType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026749CEA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v236;

  v1(v275, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v237 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026749CEC0, v11);
  v12 = *v9;
  *v9 = v237;

  v7(v275, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v238 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026749CEE0, v17);
  v18 = *v15;
  *v15 = v238;

  v13(v275, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v239 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026749CF10, v23);
  v24 = *v21;
  *v21 = v239;

  v19(v275, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v240 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x800000026749CF40, v29);
  v30 = *v27;
  *v27 = v240;

  v25(v275, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v241 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x800000026749CF60, v35);
  v36 = *v33;
  *v33 = v241;

  v31(v275, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v242 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x800000026749CF80, v41);
  v42 = *v39;
  *v39 = v242;

  v37(v275, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v243 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x800000026749CFA0, v47);
  v48 = *v45;
  *v45 = v243;

  v43(v275, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ALL, 0x800000026749CFC0, v53);
  v54 = *v51;
  *v51 = v244;

  v49(v275, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v245 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000018, 0x800000026749CFE0, v59);
  v60 = *v57;
  *v57 = v245;

  v55(v275, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x800000026749D000, v65);
  v66 = *v63;
  *v63 = v246;

  v61(v275, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v247 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001DLL, 0x800000026749D020, v71);
  v72 = *v69;
  *v69 = v247;

  v67(v275, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x800000026749D040, v77);
  v78 = *v75;
  *v75 = v248;

  v73(v275, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v249 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000019, 0x800000026749D060, v83);
  v84 = *v81;
  *v81 = v249;

  v79(v275, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000024, 0x800000026749D080, v89);
  v90 = *v87;
  *v87 = v250;

  v85(v275, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000025, 0x800000026749D0B0, v95);
  v96 = *v93;
  *v93 = v251;

  v91(v275, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001ELL, 0x800000026749D0E0, v101);
  v102 = *v99;
  *v99 = v252;

  v97(v275, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v253 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000018, 0x800000026749D100, v107);
  v108 = *v105;
  *v105 = v253;

  v103(v275, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v254 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000017, 0x800000026749D120, v113);
  v114 = *v111;
  *v111 = v254;

  v109(v275, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v255 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000021, 0x800000026749D140, v119);
  v120 = *v117;
  *v117 = v255;

  v115(v275, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v256 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001BLL, 0x800000026749D170, v125);
  v126 = *v123;
  *v123 = v256;

  v121(v275, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v257 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000018, 0x800000026749D190, v131);
  v132 = *v129;
  *v129 = v257;

  v127(v275, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v258 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000022, 0x800000026749D1B0, v137);
  v138 = *v135;
  *v135 = v258;

  v133(v275, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001CLL, 0x800000026749D1E0, v143);
  v144 = *v141;
  *v141 = v259;

  v139(v275, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v260 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000019, 0x800000026749D200, v149);
  v150 = *v147;
  *v147 = v260;

  v145(v275, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v261 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ELL, 0x800000026749D220, v155);
  v156 = *v153;
  *v153 = v261;

  v151(v275, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v262 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000022, 0x800000026749D240, v161);
  v162 = *v159;
  *v159 = v262;

  v157(v275, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000028, 0x800000026749D270, v167);
  v168 = *v165;
  *v165 = v263;

  v163(v275, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001DLL, 0x800000026749D2A0, v173);
  v174 = *v171;
  *v171 = v264;

  v169(v275, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v265 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000027, 0x800000026749D2C0, v179);
  v180 = *v177;
  *v177 = v265;

  v175(v275, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000026, 0x800000026749D2F0, v185);
  v186 = *v183;
  *v183 = v266;

  v181(v275, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000025, 0x800000026749D320, v191);
  v192 = *v189;
  *v189 = v267;

  v187(v275, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000022, 0x800000026749D350, v197);
  v198 = *v195;
  *v195 = v268;

  v193(v275, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000029, 0x800000026749D380, v203);
  v204 = *v201;
  *v201 = v269;

  v199(v275, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000023, 0x800000026749D3B0, v209);
  v210 = *v207;
  *v207 = v270;

  v205(v275, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001DLL, 0x800000026749D3E0, v215);
  v216 = *v213;
  *v213 = v271;

  v211(v275, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001DLL, 0x800000026749D400, v221);
  v222 = *v219;
  *v219 = v272;

  v217(v275, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000027, 0x800000026749D420, v227);
  v228 = *v225;
  *v225 = v273;

  v223(v275, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000022, 0x800000026749D450, v233);
  v234 = *v231;
  *v231 = v274;

  return v229(v275, 0);
}

uint64_t sub_267317164(uint64_t a1)
{
  v2 = sub_267317268(&qword_2800FA740);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673171CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267317268(&qword_2800FA740);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267317268(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIVoiceCommandType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUIStateDismissed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDismissalReason(0);
  sub_267317718(&qword_2800FA080, type metadata accessor for SISchemaDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617373696D736964, 0xEF6E6F736165526CLL);
  return v5(v7, 0);
}

uint64_t sub_267317478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDismissalReason(0);
  sub_267317718(&qword_2800FA080, type metadata accessor for SISchemaDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617373696D736964, 0xEF6E6F736165526CLL);
  return v5(v7, 0);
}

uint64_t sub_26731760C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267317670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267317718(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267317760()
{
  result = qword_2800FA750;
  if (!qword_2800FA750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA750);
  }

  return result;
}

uint64_t static SISchemaUIStatePresenting.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriPresentationType(0);
  sub_267317A9C(&qword_2800FA460, type metadata accessor for SISchemaSiriPresentationType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267499F90);
  return v5(v7, 0);
}

uint64_t sub_267317990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673179F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267317A9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267317AE4()
{
  result = qword_2800FA760;
  if (!qword_2800FA760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA760);
  }

  return result;
}

uint64_t static SISchemaUIStateTransition.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriUIState(0);
  sub_267318474(&qword_2800FA4C0, type metadata accessor for SISchemaSiriUIState);
  sub_26738120C();
  v11 = sub_26738116C();
  v38 = *(v11 - 8);
  v12 = v38 + 56;
  v13 = *(v38 + 56);
  v13(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x53746E6572727563, 0xEC00000065746174);
  v14(v47, 0);
  sub_26738120C();
  v13(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x73756F6976657270, 0xED00006574617453);
  v15(v47, 0);
  type metadata accessor for SISchemaSiriPresentationType(0);
  sub_267318474(&qword_2800FA460, type metadata accessor for SISchemaSiriPresentationType);
  v44 = a1;
  sub_26738120C();
  v42 = v12;
  v43 = v13;
  v13(v10, 0, 1, v11);
  v16 = v38;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026749D510);
  v17(v47, 0);
  v45 = a2;
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v46, 0xD000000000000014, 0x800000026749D510);
  v20 = *(v16 + 48);
  if (!v20(v21, 1, v11))
  {
    sub_266ECB128(&unk_287892C08);
    sub_26738115C();
  }

  (v19)(v46, 0);
  v18(v47, 0);
  type metadata accessor for SISchemaDismissalReason(0);
  sub_267318474(&qword_2800FA080, type metadata accessor for SISchemaDismissalReason);
  sub_26738120C();
  v43(v10, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0x617373696D736964, 0xEF6E6F736165526CLL);
  v22(v47, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v46, 0x617373696D736964, 0xEF6E6F736165526CLL);
  if (!v20(v25, 1, v11))
  {
    sub_266ECB128(&unk_287892C30);
    sub_26738115C();
  }

  (v24)(v46, 0);
  v23(v47, 0);
  sub_266ECB294(0, &qword_2800FA760, 0x277D5AC18);
  sub_266ECAF2C(&qword_2800FA758, &qword_2800FA760, 0x277D5AC18);
  sub_26738121C();
  v26 = v43;
  v43(v10, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x69746E6573657270, 0xEA0000000000676ELL);
  v27(v47, 0);
  sub_266ECB294(0, &qword_2800FA750, 0x277D5AC10);
  sub_266ECAF2C(&qword_2800FA748, &qword_2800FA750, 0x277D5AC10);
  sub_26738121C();
  v26(v10, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x657373696D736964, 0xE900000000000064);
  v28(v47, 0);
  v29 = v39;
  sub_26738117C();
  v30 = sub_2673811BC();
  v32 = v31;
  v33 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_266ECAD54(0, v33[2] + 1, 1, v33);
    *v32 = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_266ECAD54(v35 > 1, v36 + 1, 1, v33);
    *v32 = v33;
  }

  v33[2] = v36 + 1;
  (*(v40 + 32))(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v36, v29, v41);
  return v30(v47, 0);
}

uint64_t sub_2673183B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267318414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267318474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SISchemaUserDataContainer.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4F8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 99, 0xE100000000000000);
  return v10(v12, 0);
}

uint64_t sub_267318740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673187A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267318808()
{
  result = qword_2800FA768;
  if (!qword_2800FA768)
  {
    sub_267318860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA768);
  }

  return result;
}

unint64_t sub_267318860()
{
  result = qword_2800FA770;
  if (!qword_2800FA770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA770);
  }

  return result;
}

uint64_t static SISchemaUserSpeechDuration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11(v6, *MEMORY[0x277D3E510], v2);
  v18[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F697461727564, 0xEA0000000000734DLL);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674206D0);
  return v15(v18, 0);
}

uint64_t sub_267318BD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267318C38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267318C9C()
{
  result = qword_2800FA3C0;
  if (!qword_2800FA3C0)
  {
    sub_267318CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA3C0);
  }

  return result;
}

unint64_t sub_267318CF4()
{
  result = qword_2800FA3B8;
  if (!qword_2800FA3B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3B8);
  }

  return result;
}

uint64_t static SISchemaUserViewInteraction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x800000026749D5E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026749D610, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026749D630, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026749D650, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267318FC8(uint64_t a1)
{
  v2 = sub_2673190CC(&qword_2800FA780);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267319030(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673190CC(&qword_2800FA780);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673190CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUserViewInteraction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUserViewRegionInteraction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaViewRegionDesignation(0);
  sub_2673194D0(&qword_2800FA788, type metadata accessor for SISchemaViewRegionDesignation);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026749D6B0);
  v6(v9, 0);
  type metadata accessor for SISchemaUserViewInteraction(0);
  sub_2673194D0(&qword_2800FA778, type metadata accessor for SISchemaUserViewInteraction);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026749D6D0);
  return v7(v9, 0);
}

uint64_t sub_2673193C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267319428(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673194D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267319518()
{
  result = qword_2800F9C38;
  if (!qword_2800F9C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9C38);
  }

  return result;
}

uint64_t static SISchemaUTCOffset.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x800000026749D710, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v236;

  v1(v275, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v237 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026749D730, v11);
  v12 = *v9;
  *v9 = v237;

  v7(v275, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v238 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x800000026749D750, v17);
  v18 = *v15;
  *v15 = v238;

  v13(v275, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v239 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026749D770, v23);
  v24 = *v21;
  *v21 = v239;

  v19(v275, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v240 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x800000026749D790, v29);
  v30 = *v27;
  *v27 = v240;

  v25(v275, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v241 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x800000026749D7B0, v35);
  v36 = *v33;
  *v33 = v241;

  v31(v275, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v242 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x800000026749D7D0, v41);
  v42 = *v39;
  *v39 = v242;

  v37(v275, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v243 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x800000026749D7F0, v47);
  v48 = *v45;
  *v45 = v243;

  v43(v275, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x800000026749D810, v53);
  v54 = *v51;
  *v51 = v244;

  v49(v275, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v245 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000017, 0x800000026749D830, v59);
  v60 = *v57;
  *v57 = v245;

  v55(v275, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x800000026749D850, v65);
  v66 = *v63;
  *v63 = v246;

  v61(v275, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v247 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x800000026749D870, v71);
  v72 = *v69;
  *v69 = v247;

  v67(v275, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000017, 0x800000026749D890, v77);
  v78 = *v75;
  *v75 = v248;

  v73(v275, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v249 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000017, 0x800000026749D8B0, v83);
  v84 = *v81;
  *v81 = v249;

  v79(v275, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000017, 0x800000026749D8D0, v89);
  v90 = *v87;
  *v87 = v250;

  v85(v275, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000011, 0x800000026749D8F0, v95);
  v96 = *v93;
  *v93 = v251;

  v91(v275, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000016, 0x800000026749D910, v101);
  v102 = *v99;
  *v99 = v252;

  v97(v275, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v253 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000016, 0x800000026749D930, v107);
  v108 = *v105;
  *v105 = v253;

  v103(v275, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v254 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000016, 0x800000026749D950, v113);
  v114 = *v111;
  *v111 = v254;

  v109(v275, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v255 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001DLL, 0x800000026749D970, v119);
  v120 = *v117;
  *v117 = v255;

  v115(v275, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v256 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000016, 0x800000026749D990, v125);
  v126 = *v123;
  *v123 = v256;

  v121(v275, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v257 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001DLL, 0x800000026749D9B0, v131);
  v132 = *v129;
  *v129 = v257;

  v127(v275, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v258 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000016, 0x800000026749D9D0, v137);
  v138 = *v135;
  *v135 = v258;

  v133(v275, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001DLL, 0x800000026749D9F0, v143);
  v144 = *v141;
  *v141 = v259;

  v139(v275, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v260 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001BLL, 0x800000026749DA10, v149);
  v150 = *v147;
  *v147 = v260;

  v145(v275, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v261 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000016, 0x800000026749DA30, v155);
  v156 = *v153;
  *v153 = v261;

  v151(v275, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v262 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001DLL, 0x800000026749DA50, v161);
  v162 = *v159;
  *v159 = v262;

  v157(v275, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000016, 0x800000026749DA70, v167);
  v168 = *v165;
  *v165 = v263;

  v163(v275, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v264 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000016, 0x800000026749DA90, v173);
  v174 = *v171;
  *v171 = v264;

  v169(v275, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v265 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001BLL, 0x800000026749DAB0, v179);
  v180 = *v177;
  *v177 = v265;

  v175(v275, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v266 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000016, 0x800000026749DAD0, v185);
  v186 = *v183;
  *v183 = v266;

  v181(v275, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v267 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001DLL, 0x800000026749DAF0, v191);
  v192 = *v189;
  *v189 = v267;

  v187(v275, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000016, 0x800000026749DB10, v197);
  v198 = *v195;
  *v195 = v268;

  v193(v275, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v269 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001DLL, 0x800000026749DB30, v203);
  v204 = *v201;
  *v201 = v269;

  v199(v275, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v270 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000016, 0x800000026749DB50, v209);
  v210 = *v207;
  *v207 = v270;

  v205(v275, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v271 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000016, 0x800000026749DB70, v215);
  v216 = *v213;
  *v213 = v271;

  v211(v275, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v272 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001BLL, 0x800000026749DB90, v221);
  v222 = *v219;
  *v219 = v272;

  v217(v275, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v273 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001DLL, 0x800000026749DBB0, v227);
  v228 = *v225;
  *v225 = v273;

  v223(v275, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001DLL, 0x800000026749DBD0, v233);
  v234 = *v231;
  *v231 = v274;

  return v229(v275, 0);
}

uint64_t sub_26731A770(uint64_t a1)
{
  v2 = sub_26731A874(&qword_2800FA790);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26731A7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26731A874(&qword_2800FA790);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26731A874(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUTCOffset(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUUFRCasinoCardSelected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x7463655364726163, 0xED000064496E6F69);
  v12(v22, 0);
  v18 = "iri.uei.UUFRCasinoCardSelected";
  v13 = v0;
  v14 = v20;
  v20(v4, *MEMORY[0x277D3E508], v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v18 | 0x8000000000000000);
  v15(v22, 0);
  v14(v4, v21, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x4174657070696E73, 0xEC00000064496563);
  return v16(v22, 0);
}

uint64_t sub_26731ACB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731AD1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731AD80()
{
  result = qword_2800FA798;
  if (!qword_2800FA798)
  {
    sub_26731ADD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA798);
  }

  return result;
}

unint64_t sub_26731ADD8()
{
  result = qword_2800FA7A0;
  if (!qword_2800FA7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA7A0);
  }

  return result;
}

uint64_t static SISchemaUUFRCompletion.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v15 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaCompletionStatus(0);
  sub_26731B310();
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026749DC70);
  v8(v17, 0);
  sub_266ECB294(0, &qword_2800FA178, 0x277D5A8E0);
  sub_266ECAF2C(&qword_2800FA170, &qword_2800FA178, 0x277D5A8E0);
  sub_26738122C();
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000018, 0x800000026749DC90);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 0xD000000000000018, 0x800000026749DC90);
  if (!(*(v6 + 48))(v12, 1, v5))
  {
    sub_266ECB128(&unk_287892C58);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800FA490, 0x277D5AA18);
  sub_266ECAF2C(&qword_2800FA488, &qword_2800FA490, 0x277D5AA18);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000013, 0x800000026749DCB0);
  v13(v17, 0);
  sub_266ECB128(&unk_287892C80);
  return sub_2673811CC();
}

uint64_t sub_26731B24C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731B2B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731B310()
{
  result = qword_2800F9F10;
  if (!qword_2800F9F10)
  {
    type metadata accessor for SISchemaCompletionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9F10);
  }

  return result;
}

uint64_t static SISchemaUUFRFatalError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_26738113C();
  v17[0] = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v2 + 104);
  v10(v5, *MEMORY[0x277D3E530], v1);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F44726F727265, 0xEB000000006E6961);
  v13(v18, 0);
  v10(v5, *MEMORY[0x277D3E508], v17[0]);
  v18[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F43726F727265, 0xE900000000000065);
  v14(v18, 0);
  sub_266ECB294(0, &qword_2800FA490, 0x277D5AA18);
  sub_266ECAF2C(&qword_2800FA488, &qword_2800FA490, 0x277D5AA18);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026749DCB0);
  return v15(v18, 0);
}

uint64_t sub_26731B7AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731B810(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUUFRPresented.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA1D0, 0x277D5ACB0);
  sub_266ECAF2C(&qword_2800FA1D8, &qword_2800FA1D0, 0x277D5ACB0);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E6F4377656976, 0xED000072656E6961);
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
  sub_266EC637C(v8, 0x6D6F44726F727265, 0xEB000000006E6961);
  v15(v20, 0);
  v14(v4, *MEMORY[0x277D3E508], v13);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v16(v20, 0);
}

uint64_t sub_26731BCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731BD24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUUFRReadySource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x800000026749DD60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v40;

  v1(v46, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026749DD80, v11);
  v12 = *v9;
  *v9 = v41;

  v7(v46, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026749DDB0, v17);
  v18 = *v15;
  *v15 = v42;

  v13(v46, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026749DDE0, v23);
  v24 = *v21;
  *v21 = v43;

  v19(v46, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x800000026749DE00, v29);
  v30 = *v27;
  *v27 = v44;

  v25(v46, 0);
  v31 = sub_266ECB128(&unk_287892CA8);
  v33 = v32;
  v34 = sub_2673810FC();
  v36 = v35;
  v37 = *v35;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v36;
  *v36 = 0x8000000000000000;
  sub_266ECD4CC(v31, v33, 4, v38);
  *v36 = v45;
  return v34(v46, 0);
}

uint64_t sub_26731C12C(uint64_t a1)
{
  v2 = sub_26731C230(&qword_2800FA7A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26731C194(uint64_t a1, uint64_t a2)
{
  v4 = sub_26731C230(&qword_2800FA7A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26731C230(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUUFRReadySource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUUFRSaid.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v4 + 104);
  v38 = *MEMORY[0x277D3E530];
  v39 = v4 + 104;
  v40 = v3;
  v37 = v12;
  (v12)(v7);
  v47[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v44 = *(v14 + 56);
  v44(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026749DE50);
  v15(v47, 0);
  v43 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v46, 0xD000000000000010, 0x800000026749DE50);
  v41 = *(v14 + 48);
  v42 = v14 + 48;
  if (!v41(v18, 1, v13))
  {
    sub_266ECB128(&unk_287892CD0);
    sub_26738115C();
  }

  (v17)(v46, 0);
  v16(v47, 0);
  sub_266ECB294(0, &qword_2800FA490, 0x277D5AA18);
  sub_266ECAF2C(&qword_2800FA488, &qword_2800FA490, 0x277D5AA18);
  sub_26738120C();
  v19 = v13;
  v20 = v13;
  v36 = v13;
  v21 = v44;
  v44(v11, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x800000026749DCB0);
  v22(v47, 0);
  v23 = v38;
  v24 = v40;
  v25 = v37;
  v37(v7, v38, v40);
  v47[0] = 1;
  sub_26738114C();
  v21(v11, 0, 1, v19);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x4977656956656361, 0xE900000000000044);
  v26(v47, 0);
  v25(v7, v23, v24);
  v47[0] = 1;
  sub_26738114C();
  v27 = v36;
  v28 = v44;
  v44(v11, 0, 1, v36);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x4377656956656361, 0xEC0000007373616CLL);
  v29(v47, 0);
  type metadata accessor for SISchemaResponseCategory(0);
  sub_26731CAC4();
  sub_26738120C();
  v28(v11, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674694E0);
  v30(v47, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v28(v11, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0x6575716552627573, 0xEC00000064497473);
  v31(v47, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v46, 0x6575716552627573, 0xEC00000064497473);
  if (!v41(v34, 1, v27))
  {
    sub_266ECB128(&unk_287892D00);
    sub_26738115C();
  }

  (v33)(v46, 0);
  return v32(v47, 0);
}

uint64_t sub_26731CA00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731CA64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731CAC4()
{
  result = qword_2800F5F78;
  if (!qword_2800F5F78)
  {
    type metadata accessor for SISchemaResponseCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5F78);
  }

  return result;
}

uint64_t static SISchemaUUFRSelected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA7A0, 0x277D5AC28);
  sub_266ECAF2C(&qword_2800FA798, &qword_2800FA7A0, 0x277D5AC28);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026749DEA0);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FA7B0, 0x277D5AC68);
  sub_266ECAF2C(&qword_2800FA7B8, &qword_2800FA7B0, 0x277D5AC68);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026749DEC0);
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
  (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_26731CFB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731D01C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUUFRShown.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v3 = sub_26738118C();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26738113C();
  v66 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - v13;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v15 = *MEMORY[0x277D3E530];
  v16 = *(v7 + 104);
  v16(v10, v15, v6);
  v73[0] = 1;
  sub_26738114C();
  v17 = sub_26738116C();
  v19 = (*(v17 - 8) + 56);
  v18 = *v19;
  v69 = *(v17 - 8);
  v70 = v18;
  v18(v14, 0, 1, v17);
  v20 = sub_2673811AC();
  sub_266EC637C(v14, 0x444977656976, 0xE600000000000000);
  v20(v73, 0);
  v63 = v15;
  v64 = v7 + 104;
  v62 = v16;
  v16(v10, v15, v66);
  v73[0] = 1;
  sub_26738114C();
  v21 = v70;
  v70(v14, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v14, 0x4374657070696E73, 0xEC0000007373616CLL);
  v22(v73, 0);
  type metadata accessor for SISchemaSiriUILocation(0);
  sub_26731DFDC(&qword_2800FA4A0, type metadata accessor for SISchemaSiriUILocation);
  sub_26738120C();
  v67 = v19;
  v21(v14, 0, 1, v17);
  v23 = sub_2673811AC();
  sub_266EC637C(v14, 0x6F4C495569726973, 0xEE006E6F69746163);
  v23(v73, 0);
  v71 = a2;
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v72, 0x6F4C495569726973, 0xEE006E6F69746163);
  v26 = *(v69 + 48);
  v69 += 48;
  v65 = v26;
  if (!v26(v27, 1, v17))
  {
    sub_266ECB128(&unk_287892D28);
    sub_26738115C();
  }

  (v25)(v72, 0);
  v24(v73, 0);
  v62(v10, v63, v66);
  v73[0] = 1;
  sub_26738114C();
  v70(v14, 0, 1, v17);
  v28 = sub_2673811AC();
  sub_266EC637C(v14, 0xD000000000000010, 0x800000026749DE50);
  v28(v73, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v72, 0xD000000000000010, 0x800000026749DE50);
  if (!v65(v31, 1, v17))
  {
    sub_266ECB128(&unk_287892D50);
    sub_26738115C();
  }

  (v30)(v72, 0);
  v29(v73, 0);
  sub_266ECB294(0, &qword_2800FA490, 0x277D5AA18);
  sub_266ECAF2C(&qword_2800FA488, &qword_2800FA490, 0x277D5AA18);
  sub_26738120C();
  v32 = v17;
  v70(v14, 0, 1, v17);
  v33 = sub_2673811AC();
  sub_266EC637C(v14, 0xD000000000000013, 0x800000026749DCB0);
  v33(v73, 0);
  v34 = v10;
  v35 = v10;
  v36 = v63;
  v37 = v66;
  v38 = v62;
  v62(v35, v63, v66);
  v73[0] = 1;
  sub_26738114C();
  v70(v14, 0, 1, v32);
  v39 = sub_2673811AC();
  sub_266EC637C(v14, 0x4977656956656361, 0xE900000000000044);
  v39(v73, 0);
  v38(v34, v36, v37);
  v73[0] = 1;
  sub_26738114C();
  v40 = v70;
  v70(v14, 0, 1, v32);
  v41 = sub_2673811AC();
  sub_266EC637C(v14, 0x4377656956656361, 0xEC0000007373616CLL);
  v41(v73, 0);
  type metadata accessor for SISchemaViewRegionDesignation(0);
  sub_26731DFDC(&qword_2800FA788, type metadata accessor for SISchemaViewRegionDesignation);
  sub_26738120C();
  v40(v14, 0, 1, v32);
  v42 = sub_2673811AC();
  sub_266EC637C(v14, 0xD000000000000015, 0x800000026749D6B0);
  v42(v73, 0);
  sub_266ECB294(0, &qword_2800FA150, 0x277D5A8C8);
  sub_266ECAF2C(&qword_2800FA148, &qword_2800FA150, 0x277D5A8C8);
  sub_26738121C();
  v40(v14, 0, 1, v32);
  v43 = sub_2673811AC();
  sub_266EC637C(v14, 0x6472614364697267, 0xEF6E6F6974636553);
  v43(v73, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v66 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v40(v14, 0, 1, v32);
  v44 = sub_2673811AC();
  sub_266EC637C(v14, 0x64496B6E696CLL, 0xE600000000000000);
  v44(v73, 0);
  type metadata accessor for SISchemaResponseCategory(0);
  sub_26731DFDC(&qword_2800F5F78, type metadata accessor for SISchemaResponseCategory);
  sub_26738120C();
  v40(v14, 0, 1, v32);
  v45 = sub_2673811AC();
  sub_266EC637C(v14, 0xD000000000000010, 0x80000002674694E0);
  v45(v73, 0);
  sub_26738120C();
  v40(v14, 0, 1, v32);
  v46 = sub_2673811AC();
  sub_266EC637C(v14, 0x6575716552627573, 0xEC00000064497473);
  v46(v73, 0);
  v47 = sub_2673811AC();
  v48 = sub_266ECB6CC(v72, 0x6575716552627573, 0xEC00000064497473);
  if (!v65(v49, 1, v32))
  {
    sub_266ECB128(&unk_287892D80);
    sub_26738115C();
  }

  (v48)(v72, 0);
  v47(v73, 0);
  v50 = v59;
  sub_26738117C();
  v51 = sub_2673811BC();
  v53 = v52;
  v54 = *v52;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v53 = v54;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v54 = sub_266ECAD54(0, v54[2] + 1, 1, v54);
    *v53 = v54;
  }

  v57 = v54[2];
  v56 = v54[3];
  if (v57 >= v56 >> 1)
  {
    v54 = sub_266ECAD54(v56 > 1, v57 + 1, 1, v54);
    *v53 = v54;
  }

  v54[2] = v57 + 1;
  (*(v60 + 32))(v54 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v57, v50, v61);
  return v51(v73, 0);
}

uint64_t sub_26731DF18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731DF7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26731DFDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SISchemaUUFRShownTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026749DF40);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0xD000000000000019, 0x800000026749DF40);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_287892DA8);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_26731E440(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731E4A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUUFRSnippetViewSelected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x4174657070696E73, 0xEC00000064496563);
  return v10(v12, 0);
}

uint64_t sub_26731E79C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731E800(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731E864()
{
  result = qword_2800FA7B8;
  if (!qword_2800FA7B8)
  {
    sub_26731E8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA7B8);
  }

  return result;
}

unint64_t sub_26731E8BC()
{
  result = qword_2800FA7B0;
  if (!qword_2800FA7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA7B0);
  }

  return result;
}

uint64_t static SISchemaUUID.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4F8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756C6176, 0xE500000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287892DD0);
  return sub_2673811CC();
}

uint64_t sub_26731EB68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731EBCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731EC30()
{
  result = qword_2800EEDA8;
  if (!qword_2800EEDA8)
  {
    sub_26731EC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEDA8);
  }

  return result;
}

unint64_t sub_26731EC88()
{
  result = qword_2800EEDA0;
  if (!qword_2800EEDA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEDA0);
  }

  return result;
}

uint64_t static SISchemaVersion.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x726F6A616DLL, 0xE500000000000000);
  v14(v27, 0);
  v15 = v24;
  (v24)(v4, v10, v0);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x726F6E696DLL, 0xE500000000000000);
  v16(v27, 0);
  v17 = v22;
  (v15)(v4, v23, v22);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6863746170, 0xE500000000000000);
  v18(v27, 0);
  (v15)(v4, *MEMORY[0x277D3E530], v17);
  v27[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x61656C6572657270, 0xEA00000000006573);
  v19(v27, 0);
  sub_266ECB128(&unk_287892E00);
  return sub_2673811CC();
}

uint64_t sub_26731F184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731F1E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731F24C()
{
  result = qword_2800EF900;
  if (!qword_2800EF900)
  {
    sub_26731F2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF900);
  }

  return result;
}

unint64_t sub_26731F2A4()
{
  result = qword_2800EF8F8;
  if (!qword_2800EF8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF8F8);
  }

  return result;
}

uint64_t static SISchemaVerticalLayoutCardSectionInvocationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026749E020);
  return v10(v12, 0);
}

uint64_t sub_26731F540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731F5A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731F608()
{
  result = qword_2800FA1E8;
  if (!qword_2800FA1E8)
  {
    sub_26731F660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA1E8);
  }

  return result;
}

unint64_t sub_26731F660()
{
  result = qword_2800FA1E0;
  if (!qword_2800FA1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA1E0);
  }

  return result;
}

uint64_t static SISchemaViewContainer.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v32 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v31 = *(v1 + 104);
  v30 = v9;
  v31(v4, v9, v0);
  v33[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v26 = *(v11 + 56);
  v12 = v11 + 56;
  v29 = v10;
  v26(v8, 0, 1, v10);
  v28 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x444977656976, 0xE600000000000000);
  v13(v33, 0);
  v14 = v9;
  v15 = v31;
  v16 = v32;
  v27 = v1 + 104;
  v31(v4, v14, v32);
  v33[0] = 1;
  sub_26738114C();
  v17 = v10;
  v18 = v26;
  v26(v8, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x4374657070696E73, 0xEC0000007373616CLL);
  v19(v33, 0);
  v25 = "iri.uei.UUFRSaid";
  v20 = v30;
  v15(v4, v30, v16);
  v33[0] = 1;
  sub_26738114C();
  v21 = v29;
  v18(v8, 0, 1, v29);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v25 | 0x8000000000000000);
  v22(v33, 0);
  v15(v4, v20, v32);
  v33[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x6850676F6C616964, 0xEB00000000657361);
  return v23(v33, 0);
}

uint64_t sub_26731FB6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731FBD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731FC34()
{
  result = qword_2800FA1D8;
  if (!qword_2800FA1D8)
  {
    sub_26731FC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA1D8);
  }

  return result;
}

unint64_t sub_26731FC8C()
{
  result = qword_2800FA1D0;
  if (!qword_2800FA1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA1D0);
  }

  return result;
}

uint64_t static SISchemaViewRegionDesignation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x800000026749E0A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026749E0D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026749E100, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026749E120, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26731FF5C(uint64_t a1)
{
  v2 = sub_267320060(&qword_2800FA7C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26731FFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267320060(&qword_2800FA7C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267320060(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaViewRegionDesignation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaVoiceFeedback.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026749E170, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267469880, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674698B0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674698E0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267469910, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267469930, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000024, 0x8000000267469960, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_267320484(uint64_t a1)
{
  v2 = sub_267320588(&qword_2800FA7C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673204EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267320588(&qword_2800FA7C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267320588(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaVoiceFeedback(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaVoiceGender.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026749E1D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026749E200, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x800000026749E220, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x800000026749E240, v23);
  v24 = *v21;
  *v21 = v29;

  v19(v30, 0);
  sub_266ECB128(&unk_287892E30);
  return sub_26738112C();
}

uint64_t sub_267320868(uint64_t a1)
{
  v2 = sub_26732096C(&qword_2800FA7D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673208D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732096C(&qword_2800FA7D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732096C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaVoiceGender(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaVoiceName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v602 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x800000026749E290, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v602;

  v1(v702, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v603 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x4D414E4543494F56, 0xEF4E4F5241415F45, v11);
  v12 = *v9;
  *v9 = v603;

  v7(v702, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v604 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x4D414E4543494F56, 0xEF4E414449415F45, v17);
  v18 = *v15;
  *v15 = v604;

  v13(v702, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v605 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x4D414E4543494F56, 0xEF4853414B415F45, v23);
  v24 = *v21;
  *v21 = v605;

  v19(v702, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v606 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x800000026749E2B0, v29);
  v30 = *v27;
  *v27 = v606;

  v25(v702, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v607 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0x4D414E4543494F56, 0xEE0041564C415F45, v35);
  v36 = *v33;
  *v33 = v607;

  v31(v702, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v608 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000010, 0x800000026749E2D0, v41);
  v42 = *v39;
  *v39 = v608;

  v37(v702, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v609 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0x4D414E4543494F56, 0xEF4C45474E415F45, v47);
  v48 = *v45;
  *v45 = v609;

  v43(v702, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v610 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000010, 0x800000026749E2F0, v53);
  v54 = *v51;
  *v51 = v610;

  v49(v702, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v611 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0x4D414E4543494F56, 0xEE004C4558415F45, v59);
  v60 = *v57;
  *v57 = v611;

  v55(v702, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v612 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000011, 0x800000026749E310, v65);
  v66 = *v63;
  *v63 = v612;

  v61(v702, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v613 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000010, 0x800000026749E330, v71);
  v72 = *v69;
  *v69 = v613;

  v67(v702, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v614 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000010, 0x800000026749E350, v77);
  v78 = *v75;
  *v75 = v614;

  v73(v702, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v615 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000013, 0x800000026749E370, v83);
  v84 = *v81;
  *v81 = v615;

  v79(v702, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v616 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000012, 0x800000026749E390, v89);
  v90 = *v87;
  *v87 = v616;

  v85(v702, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v617 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000013, 0x800000026749E3B0, v95);
  v96 = *v93;
  *v93 = v617;

  v91(v702, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v618 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0x4D414E4543494F56, 0xEF4E4F4D41445F45, v101);
  v102 = *v99;
  *v99 = v618;

  v97(v702, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v619 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000010, 0x800000026749E3D0, v107);
  v108 = *v105;
  *v105 = v619;

  v103(v702, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v620 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0x4D414E4543494F56, 0xEF43454445445F45, v113);
  v114 = *v111;
  *v111 = v620;

  v109(v702, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v621 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0x4D414E4543494F56, 0xEF44454445445F45, v119);
  v120 = *v117;
  *v117 = v621;

  v115(v702, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v622 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0x4D414E4543494F56, 0xEE0046494C455F45, v125);
  v126 = *v123;
  *v123 = v622;

  v121(v702, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v623 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0x4D414E4543494F56, 0xEF4E454C4C455F45, v131);
  v132 = *v129;
  *v129 = v623;

  v127(v702, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v624 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0x4D414E4543494F56, 0xEE0045534C455F45, v137);
  v138 = *v135;
  *v135 = v624;

  v133(v702, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v625 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0x4D414E4543494F56, 0xEF4342474E455F45, v143);
  v144 = *v141;
  *v141 = v625;

  v139(v702, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v626 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0x4D414E4543494F56, 0xEF4442474E455F45, v149);
  v150 = *v147;
  *v147 = v626;

  v145(v702, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v627 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000013, 0x800000026749E3F0, v155);
  v156 = *v153;
  *v153 = v627;

  v151(v702, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v628 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000010, 0x800000026749E410, v161);
  v162 = *v159;
  *v159 = v628;

  v157(v702, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v629 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000011, 0x800000026749E430, v167);
  v168 = *v165;
  *v165 = v629;

  v163(v702, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v630 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000010, 0x800000026749E450, v173);
  v174 = *v171;
  *v171 = v630;

  v169(v702, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v631 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0x4D414E4543494F56, 0xEE004F5249485F45, v179);
  v180 = *v177;
  *v177 = v631;

  v175(v702, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v632 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0x4D414E4543494F56, 0xEF4E49594F485F45, v185);
  v186 = *v183;
  *v183 = v632;

  v181(v702, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v633 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000010, 0x800000026749E470, v191);
  v192 = *v189;
  *v189 = v633;

  v187(v702, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v634 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0x4D414E4543494F56, 0xEE00534E454A5F45, v197);
  v198 = *v195;
  *v195 = v634;

  v193(v702, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v635 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000010, 0x800000026749E490, v203);
  v204 = *v201;
  *v201 = v635;

  v199(v702, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v636 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0x4D414E4543494F56, 0xEE004E41414B5F45, v209);
  v210 = *v207;
  *v207 = v636;

  v205(v702, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v637 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0x4D414E4543494F56, 0xEF41594E414B5F45, v215);
  v216 = *v213;
  *v213 = v637;

  v211(v702, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v638 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0x4D414E4543494F56, 0xEF4E4159414B5F45, v221);
  v222 = *v219;
  *v219 = v638;

  v217(v702, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v639 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0x4D414E4543494F56, 0xEF5241414C4B5F45, v227);
  v228 = *v225;
  *v225 = v639;

  v223(v702, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v640 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0x4D414E4543494F56, 0xEF414E4F454C5F45, v233);
  v234 = *v231;
  *v231 = v640;

  v229(v702, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v641 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0x4D414E4543494F56, 0xEE00554D494C5F45, v239);
  v240 = *v237;
  *v237 = v641;

  v235(v702, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v642 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000010, 0x800000026749E4B0, v245);
  v246 = *v243;
  *v243 = v642;

  v241(v702, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v643 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000011, 0x800000026749E4D0, v251);
  v252 = *v249;
  *v249 = v643;

  v247(v702, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v644 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0x4D414E4543494F56, 0xEF415349554C5F45, v257);
  v258 = *v255;
  *v255 = v644;

  v253(v702, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v645 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0x4D414E4543494F56, 0xEF455645414D5F45, v263);
  v264 = *v261;
  *v261 = v645;

  v259(v702, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v646 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0x4D414E4543494F56, 0xEF444547414D5F45, v269);
  v270 = *v267;
  *v267 = v646;

  v265(v702, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v647 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0x4D414E4543494F56, 0xEF454952414D5F45, v275);
  v276 = *v273;
  *v273 = v647;

  v271(v702, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v648 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000010, 0x800000026749E4F0, v281);
  v282 = *v279;
  *v279 = v648;

  v277(v702, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v649 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000010, 0x800000026749E510, v287);
  v288 = *v285;
  *v285 = v649;

  v283(v702, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v650 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000010, 0x800000026749E530, v293);
  v294 = *v291;
  *v291 = v650;

  v289(v702, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v651 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000010, 0x800000026749E550, v299);
  v300 = *v297;
  *v297 = v651;

  v295(v702, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v652 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 0x4D414E4543494F56, 0xEF494A4E494D5F45, v305);
  v306 = *v303;
  *v303 = v652;

  v301(v702, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v653 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 0x4D414E4543494F56, 0xEF4152494F4D5F45, v311);
  v312 = *v309;
  *v309 = v653;

  v307(v702, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v654 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 0x4D414E4543494F56, 0xEF4F444E414E5F45, v317);
  v318 = *v315;
  *v315 = v654;

  v313(v702, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v655 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 0x4D414E4543494F56, 0xEF594B43494E5F45, v323);
  v324 = *v321;
  *v321 = v655;

  v319(v702, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v656 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 0x4D414E4543494F56, 0xEE0041524F4E5F45, v329);
  v330 = *v327;
  *v327 = v656;

  v325(v702, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v657 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 0x4D414E4543494F56, 0xEE004E45524F5F45, v335);
  v336 = *v333;
  *v333 = v657;

  v331(v702, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v658 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 0x4D414E4543494F56, 0xEF4F4C4F41505F45, v341);
  v342 = *v339;
  *v339 = v658;

  v337(v702, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v659 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000011, 0x800000026749E570, v347);
  v348 = *v345;
  *v345 = v659;

  v343(v702, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v660 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000010, 0x800000026749E590, v353);
  v354 = *v351;
  *v351 = v660;

  v349(v702, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v661 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000010, 0x800000026749E5B0, v359);
  v360 = *v357;
  *v357 = v661;

  v355(v702, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v662 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 0x4D414E4543494F56, 0xEF4E4E4955515F45, v365);
  v366 = *v363;
  *v363 = v662;

  v361(v702, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v663 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 0x4D414E4543494F56, 0xEE00415949525F45, v371);
  v372 = *v369;
  *v369 = v663;

  v367(v702, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v664 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000010, 0x800000026749E5D0, v377);
  v378 = *v375;
  *v375 = v664;

  v373(v702, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v665 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(63, 0x4D414E4543494F56, 0xEF52454D41535F45, v383);
  v384 = *v381;
  *v381 = v665;

  v379(v702, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v666 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(64, 0xD000000000000010, 0x800000026749E5F0, v389);
  v390 = *v387;
  *v387 = v666;

  v385(v702, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v667 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(65, 0x4D414E4543494F56, 0xEE00415241535F45, v395);
  v396 = *v393;
  *v393 = v667;

  v391(v702, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v668 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(66, 0x4D414E4543494F56, 0xEE00555441535F45, v401);
  v402 = *v399;
  *v399 = v668;

  v397(v702, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v669 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000010, 0x800000026749E610, v407);
  v408 = *v405;
  *v405 = v669;

  v403(v702, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v670 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(68, 0xD000000000000010, 0x800000026749E630, v413);
  v414 = *v411;
  *v411 = v670;

  v409(v702, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v671 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(69, 0x4D414E4543494F56, 0xEF494A4E49535F45, v419);
  v420 = *v417;
  *v417 = v671;

  v415(v702, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v672 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(70, 0x4D414E4543494F56, 0xEE0041484F535F45, v425);
  v426 = *v423;
  *v423 = v672;

  v421(v702, 0);
  v427 = sub_26738111C();
  v429 = v428;
  v430 = *v428;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v673 = *v429;
  *v429 = 0x8000000000000000;
  sub_266ECD368(71, 0xD000000000000010, 0x800000026749E650, v431);
  v432 = *v429;
  *v429 = v673;

  v427(v702, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = *v434;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  v674 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(72, 0x4D414E4543494F56, 0xEE00495655535F45, v437);
  v438 = *v435;
  *v435 = v674;

  v433(v702, 0);
  v439 = sub_26738111C();
  v441 = v440;
  v442 = *v440;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v675 = *v441;
  *v441 = 0x8000000000000000;
  sub_266ECD368(73, 0x4D414E4543494F56, 0xEF41535345545F45, v443);
  v444 = *v441;
  *v441 = v675;

  v439(v702, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v676 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(74, 0x4D414E4543494F56, 0xEF41485448545F45, v449);
  v450 = *v447;
  *v447 = v676;

  v445(v702, 0);
  v451 = sub_26738111C();
  v453 = v452;
  v454 = *v452;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v677 = *v453;
  *v453 = 0x8000000000000000;
  sub_266ECD368(75, 0x4D414E4543494F56, 0xEF42485448545F45, v455);
  v456 = *v453;
  *v453 = v677;

  v451(v702, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = *v458;
  v461 = swift_isUniquelyReferenced_nonNull_native();
  v678 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(76, 0x4D414E4543494F56, 0xEF45444C49545F45, v461);
  v462 = *v459;
  *v459 = v678;

  v457(v702, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v679 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(77, 0x4D414E4543494F56, 0xEE0049504F545F45, v467);
  v468 = *v465;
  *v465 = v679;

  v463(v702, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = *v470;
  v473 = swift_isUniquelyReferenced_nonNull_native();
  v680 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(78, 0xD000000000000011, 0x800000026749E670, v473);
  v474 = *v471;
  *v471 = v680;

  v469(v702, 0);
  v475 = sub_26738111C();
  v477 = v476;
  v478 = *v476;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v681 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD368(79, 0xD000000000000010, 0x800000026749E690, v479);
  v480 = *v477;
  *v477 = v681;

  v475(v702, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = *v482;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  v682 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(80, 0xD000000000000010, 0x800000026749E6B0, v485);
  v486 = *v483;
  *v483 = v682;

  v481(v702, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v683 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(81, 0x4D414E4543494F56, 0xEF41444C45595F45, v491);
  v492 = *v489;
  *v489 = v683;

  v487(v702, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = *v494;
  v497 = swift_isUniquelyReferenced_nonNull_native();
  v684 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(82, 0xD000000000000010, 0x800000026749E6D0, v497);
  v498 = *v495;
  *v495 = v684;

  v493(v702, 0);
  v499 = sub_26738111C();
  v501 = v500;
  v502 = *v500;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v685 = *v501;
  *v501 = 0x8000000000000000;
  sub_266ECD368(83, 0x4D414E4543494F56, 0xEE00414E55595F45, v503);
  v504 = *v501;
  *v501 = v685;

  v499(v702, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v686 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(84, 0x4D414E4543494F56, 0xEF55485355595F45, v509);
  v510 = *v507;
  *v507 = v686;

  v505(v702, 0);
  v511 = sub_26738111C();
  v513 = v512;
  v514 = *v512;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v687 = *v513;
  *v513 = 0x8000000000000000;
  sub_266ECD368(85, 0x4D414E4543494F56, 0xED000056495A5F45, v515);
  v516 = *v513;
  *v513 = v687;

  v511(v702, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = *v518;
  v521 = swift_isUniquelyReferenced_nonNull_native();
  v688 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(86, 0x4D414E4543494F56, 0xEF41594D534D5F45, v521);
  v522 = *v519;
  *v519 = v688;

  v517(v702, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = *v524;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v689 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(87, 0x4D414E4543494F56, 0xEF42594D534D5F45, v527);
  v528 = *v525;
  *v525 = v689;

  v523(v702, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = *v530;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v690 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(88, 0x4D414E4543494F56, 0xEF434E43485A5F45, v533);
  v534 = *v531;
  *v531 = v690;

  v529(v702, 0);
  v535 = sub_26738111C();
  v537 = v536;
  v538 = *v536;
  v539 = swift_isUniquelyReferenced_nonNull_native();
  v691 = *v537;
  *v537 = 0x8000000000000000;
  sub_266ECD368(89, 0x4D414E4543494F56, 0xEF444E43485A5F45, v539);
  v540 = *v537;
  *v537 = v691;

  v535(v702, 0);
  v541 = sub_26738111C();
  v543 = v542;
  v544 = *v542;
  v545 = swift_isUniquelyReferenced_nonNull_native();
  v692 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD368(90, 0x4D414E4543494F56, 0xEF414E5649565F45, v545);
  v546 = *v543;
  *v543 = v692;

  v541(v702, 0);
  v547 = sub_26738111C();
  v549 = v548;
  v550 = *v548;
  v551 = swift_isUniquelyReferenced_nonNull_native();
  v693 = *v549;
  *v549 = 0x8000000000000000;
  sub_266ECD368(91, 0x4D414E4543494F56, 0xEF424E5649565F45, v551);
  v552 = *v549;
  *v549 = v693;

  v547(v702, 0);
  v553 = sub_26738111C();
  v555 = v554;
  v556 = *v554;
  v557 = swift_isUniquelyReferenced_nonNull_native();
  v694 = *v555;
  *v555 = 0x8000000000000000;
  sub_266ECD368(92, 0x4D414E4543494F56, 0xEF434E5649565F45, v557);
  v558 = *v555;
  *v555 = v694;

  v553(v702, 0);
  v559 = sub_26738111C();
  v561 = v560;
  v562 = *v560;
  v563 = swift_isUniquelyReferenced_nonNull_native();
  v695 = *v561;
  *v561 = 0x8000000000000000;
  sub_266ECD368(93, 0x4D414E4543494F56, 0xEF444E5649565F45, v563);
  v564 = *v561;
  *v561 = v695;

  v559(v702, 0);
  v565 = sub_26738111C();
  v567 = v566;
  v568 = *v566;
  v569 = swift_isUniquelyReferenced_nonNull_native();
  v696 = *v567;
  *v567 = 0x8000000000000000;
  sub_266ECD368(94, 0x4D414E4543494F56, 0xEF4355414E455F45, v569);
  v570 = *v567;
  *v567 = v696;

  v565(v702, 0);
  v571 = sub_26738111C();
  v573 = v572;
  v574 = *v572;
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v697 = *v573;
  *v573 = 0x8000000000000000;
  sub_266ECD368(95, 0x4D414E4543494F56, 0xEF4455414E455F45, v575);
  v576 = *v573;
  *v573 = v697;

  v571(v702, 0);
  v577 = sub_26738111C();
  v579 = v578;
  v580 = *v578;
  v581 = swift_isUniquelyReferenced_nonNull_native();
  v698 = *v579;
  *v579 = 0x8000000000000000;
  sub_266ECD368(96, 0x4D414E4543494F56, 0xEF43544954495F45, v581);
  v582 = *v579;
  *v579 = v698;

  v577(v702, 0);
  v583 = sub_26738111C();
  v585 = v584;
  v586 = *v584;
  v587 = swift_isUniquelyReferenced_nonNull_native();
  v699 = *v585;
  *v585 = 0x8000000000000000;
  sub_266ECD368(97, 0x4D414E4543494F56, 0xEF44544954495F45, v587);
  v588 = *v585;
  *v585 = v699;

  v583(v702, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = *v590;
  v593 = swift_isUniquelyReferenced_nonNull_native();
  v700 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(98, 0x4D414E4543494F56, 0xEF43524652465F45, v593);
  v594 = *v591;
  *v591 = v700;

  v589(v702, 0);
  v595 = sub_26738111C();
  v597 = v596;
  v598 = *v596;
  v599 = swift_isUniquelyReferenced_nonNull_native();
  v701 = *v597;
  *v597 = 0x8000000000000000;
  sub_266ECD368(99, 0x4D414E4543494F56, 0xEF44524652465F45, v599);
  v600 = *v597;
  *v597 = v701;

  return v595(v702, 0);
}

uint64_t sub_2673236A0(uint64_t a1)
{
  v2 = sub_2673237A4(&qword_2800FA7D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267323708(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673237A4(&qword_2800FA7D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673237A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaVoiceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaVoiceSettings.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaVoiceGender(0);
  sub_267323D90(&qword_2800F6408, type metadata accessor for SISchemaVoiceGender);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E65476563696F76, 0xEB00000000726564);
  v10(v17, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_267323D90(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6363416563696F76, 0xEB00000000746E65);
  v11(v17, 0);
  (*(v15 + 104))(v3, *MEMORY[0x277D3E530], v16);
  v17[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D614E6563696F76, 0xE900000000000065);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6363416563696F76, 0xED00003256746E65);
  v13(v17, 0);
  sub_266ECB128(&unk_287892E60);
  return sub_2673811CC();
}

uint64_t sub_267323CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267323D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267323D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SISchemaVoiceTriggerMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = sub_26738113C();
  v33 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27[-v10];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12 = a2;
  sub_26738119C();
  v30 = "iceTriggerMetrics";
  v13 = *MEMORY[0x277D3E508];
  v32 = *(v4 + 104);
  v28 = v13;
  v32(v7, v13, v3);
  v36[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v29 = *(*(v14 - 8) + 56);
  v35 = v14;
  v29(v11, 0, 1, v14);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v30 | 0x8000000000000000);
  v15(v36, 0);
  v30 = "implicitUtterances";
  v16 = v13;
  v18 = v32;
  v17 = v33;
  v32(v7, v16, v33);
  v36[0] = 1;
  sub_26738114C();
  v19 = v14;
  v20 = v29;
  v29(v11, 0, 1, v19);
  v31 = v12;
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v30 | 0x8000000000000000);
  v21(v36, 0);
  v18(v7, v28, v17);
  v36[0] = 1;
  sub_26738114C();
  v22 = v35;
  v20(v11, 0, 1, v35);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x800000026749E7A0);
  v23(v36, 0);
  sub_266ECB294(0, &qword_2800F4820, 0x277D58A18);
  sub_266ECAF2C(&qword_2800F4818, &qword_2800F4820, 0x277D58A18);
  sub_26738122C();
  v20(v11, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x800000026749E7C0);
  v24(v36, 0);
  sub_266ECB294(0, &qword_2800F4800, 0x277D58A10);
  sub_266ECAF2C(&qword_2800F47F8, &qword_2800F4800, 0x277D58A10);
  sub_26738120C();
  v20(v11, 0, 1, v35);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x800000026749E7E0);
  return v25(v36, 0);
}

uint64_t sub_2673243E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267324448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SIServiceBatchInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v4 + 104))(v7, *MEMORY[0x277D3E4F8], v3);
  v31[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0x64695F6863746162, 0xE800000000000000);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800FA7E0, 0x277D5ACD0);
  sub_266ECAF2C(&qword_2800FA7E8, &qword_2800FA7E0, 0x277D5ACD0);
  sub_26738121C();
  v13(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026749E820);
  v15(v31, 0);
  sub_266ECB294(0, &qword_2800FA7F0, 0x277D5ACE8);
  sub_266ECAF2C(&qword_2800FA7F8, &qword_2800FA7F0, 0x277D5ACE8);
  sub_26738121C();
  v13(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x800000026749E840);
  v16(v31, 0);
  type metadata accessor for SIServiceBatchType(0);
  sub_267324BC0();
  sub_26738120C();
  v13(v11, 0, 1, v12);
  v17 = v28;
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x79745F6863746162, 0xEA00000000006570);
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
  return v19(v31, 0);
}

uint64_t sub_267324AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267324B60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267324BC0()
{
  result = qword_2800FA800;
  if (!qword_2800FA800)
  {
    type metadata accessor for SIServiceBatchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA800);
  }

  return result;
}

uint64_t static SIServiceBatchType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x4E574F4E4B4E55, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 1096040772, 0xE400000000000000, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x4C454E49544E4553, 0xE800000000000000, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267324E54(uint64_t a1)
{
  v2 = sub_267324F58(&qword_2800FA818);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267324EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267324F58(&qword_2800FA818);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267324F58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIServiceBatchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SIServiceDeviceUploadInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x64695F666572, 0xE600000000000000);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E540], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026749E8B0);
  return v15(v18, 0);
}

uint64_t sub_2673252BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267325320(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267325384()
{
  result = qword_2800FA7E8;
  if (!qword_2800FA7E8)
  {
    sub_2673253DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA7E8);
  }

  return result;
}

unint64_t sub_2673253DC()
{
  result = qword_2800FA7E0;
  if (!qword_2800FA7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA7E0);
  }

  return result;
}

uint64_t static SIServiceInstrumentationBatch.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x64695F707061, 0xE600000000000000);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800FA810, 0x277D5ACC8);
  sub_266ECAF2C(&qword_2800FA808, &qword_2800FA810, 0x277D5ACC8);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E695F6863746162, 0xEA00000000006F66);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F1D90, 0x277D5A790);
  sub_266ECAF2C(&qword_2800F1D98, &qword_2800F1D90, 0x277D5A790);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657665, 0xE500000000000000);
  return v13(v15, 0);
}

uint64_t sub_26732581C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267325880(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SIServiceInstrumentationBatchResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v10 = *MEMORY[0x277D3E4F8];
  v18 = *(v2 + 104);
  v18(v5, v10, v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x64695F6863746162, 0xE800000000000000);
  v13(v21, 0);
  type metadata accessor for SIServiceStatus(0);
  sub_267325E18(&qword_2800FA830, type metadata accessor for SIServiceStatus);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x635F737574617473, 0xEB0000000065646FLL);
  v14(v21, 0);
  v18(v5, *MEMORY[0x277D3E530], v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6567617373656DLL, 0xE700000000000000);
  return v15(v21, 0);
}

uint64_t sub_267325D0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267325D70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267325E18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267325E60()
{
  result = qword_2800FA840;
  if (!qword_2800FA840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA840);
  }

  return result;
}

uint64_t static SIServiceServerUploadInfo.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E510], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026749E960);
  return v10(v12, 0);
}

uint64_t sub_2673260FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267326160(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673261C4()
{
  result = qword_2800FA7F8;
  if (!qword_2800FA7F8)
  {
    sub_26732621C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA7F8);
  }

  return result;
}

unint64_t sub_26732621C()
{
  result = qword_2800FA7F0;
  if (!qword_2800FA7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA7F0);
  }

  return result;
}

uint64_t static SIServiceStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0x4552554C494146, 0xE700000000000000, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2673263F8(uint64_t a1)
{
  v2 = sub_2673264FC(&qword_2800FA848);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267326460(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673264FC(&qword_2800FA848);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673264FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIServiceStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelAssetCopyContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA850, 0x277D5AD18);
  sub_266ECAF2C(&qword_2800FA858, &qword_2800FA850, 0x277D5AD18);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FA860, 0x277D5AD08);
  sub_266ECAF2C(&qword_2800FA868, &qword_2800FA860, 0x277D5AD08);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FA870, 0x277D5AD10);
  sub_266ECAF2C(&qword_2800FA878, &qword_2800FA870, 0x277D5AD10);
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

uint64_t sub_267326A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267326ABC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SMTSchemaSMTAppLanguageModelAssetCopyEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267326DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267326E0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267326E70()
{
  result = qword_2800FA868;
  if (!qword_2800FA868)
  {
    sub_267326EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA868);
  }

  return result;
}

unint64_t sub_267326EC8()
{
  result = qword_2800FA860;
  if (!qword_2800FA860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA860);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelAssetCopyFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26732715C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673271C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267327224()
{
  result = qword_2800FA878;
  if (!qword_2800FA878)
  {
    sub_26732727C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA878);
  }

  return result;
}

unint64_t sub_26732727C()
{
  result = qword_2800FA870;
  if (!qword_2800FA870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA870);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelAssetCopyStarted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaLocale(0);
  sub_2673277C4(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x656C61636F6CLL, 0xE600000000000000);
  v11(v19, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v18 + 104);
  v18 += 104;
  v13(v4, v12, v0);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C646E7542707061, 0xEB00000000644965);
  v14(v19, 0);
  v13(v4, v12, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x7465737341707061, 0xEC00000068746150);
  return v15(v19, 0);
}

uint64_t sub_2673276B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732771C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673277C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26732780C()
{
  result = qword_2800FA850;
  if (!qword_2800FA850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA850);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA890, 0x277D5AD38);
  sub_266ECAF2C(&qword_2800FA898, &qword_2800FA890, 0x277D5AD38);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FA8A0, 0x277D5AD28);
  sub_266ECAF2C(&qword_2800FA8A8, &qword_2800FA8A0, 0x277D5AD28);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FA8B0, 0x277D5AD30);
  sub_266ECAF2C(&qword_2800FA8B8, &qword_2800FA8B0, 0x277D5AD30);
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

uint64_t sub_267327D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267327DD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v41 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v33 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v36 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v3 + 104);
  v39 = v3 + 104;
  v12(v6, v11, v2);
  v42[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v33[1] = v14 + 56;
  v40 = v13;
  v15(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026749EB20);
  v16(v42, 0);
  v35 = "trainingDataSizeInTokens";
  v34 = v11;
  v12(v6, v11, v41);
  v38 = v12;
  v42[0] = 1;
  sub_26738114C();
  v37 = v15;
  v15(v10, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v35 | 0x8000000000000000);
  v17(v42, 0);
  v35 = "numOutOfVocabulary";
  v12(v6, v11, v41);
  v42[0] = 1;
  sub_26738114C();
  v18 = v40;
  v15(v10, 0, 1, v40);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v35 | 0x8000000000000000);
  v19(v42, 0);
  LODWORD(v35) = *MEMORY[0x277D3E530];
  v20 = v41;
  v21 = v38;
  (v38)(v6);
  v42[0] = 1;
  sub_26738114C();
  v22 = v18;
  v23 = v37;
  v37(v10, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D614E7465737361, 0xE900000000000065);
  v24(v42, 0);
  v33[0] = "numCustomPronunciations";
  v25 = v34;
  v21(v6, v34, v20);
  v42[0] = 1;
  sub_26738114C();
  v26 = v40;
  v23(v10, 0, 1, v40);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v33[0] | 0x8000000000000000);
  v27(v42, 0);
  v33[0] = "trainingTimeInNs";
  v28 = v38;
  v38(v6, v25, v41);
  v42[0] = 1;
  sub_26738114C();
  v29 = v37;
  v37(v10, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, v33[0] | 0x8000000000000000);
  v30(v42, 0);
  v28(v6, v35, v41);
  v42[0] = 1;
  sub_26738114C();
  v29(v10, 0, 1, v40);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026749EBC0);
  return v31(v42, 0);
}

uint64_t sub_2673285B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732861C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267328680()
{
  result = qword_2800FA8A8;
  if (!qword_2800FA8A8)
  {
    sub_2673286D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA8A8);
  }

  return result;
}

unint64_t sub_2673286D8()
{
  result = qword_2800FA8A0;
  if (!qword_2800FA8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA8A0);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6D614E7465737361, 0xE900000000000065);
  v11(v14, 0);
  type metadata accessor for SMTSchemaSMTAppLanguageModelBuildFailureReason(0);
  sub_267328B50(&qword_2800FA8D0, type metadata accessor for SMTSchemaSMTAppLanguageModelBuildFailureReason);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F73616572, 0xE600000000000000);
  return v12(v14, 0);
}

uint64_t sub_267328A44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267328AA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267328B50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267328B98()
{
  result = qword_2800FA8B0;
  if (!qword_2800FA8B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA8B0);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x800000026749EC60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026749EC90, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x800000026749ECC0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267328DF8(uint64_t a1)
{
  v2 = sub_267328EFC(&qword_2800FA8D8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267328E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267328EFC(&qword_2800FA8D8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267328EFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SMTSchemaSMTAppLanguageModelBuildFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelBuildStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
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
  v19[1] = a2;
  sub_26738119C();
  v20 = "nguageModelBuildStarted";
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x277D3E540], v3);
  v22[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v20 | 0x8000000000000000);
  v15(v22, 0);
  v12(v7, *MEMORY[0x277D3E530], v3);
  v22[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C646E7542707061, 0xEB00000000644965);
  v16(v22, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_26732943C(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v14(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x656C61636F6CLL, 0xE600000000000000);
  return v17(v22, 0);
}

uint64_t sub_267329330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267329394(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732943C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267329484()
{
  result = qword_2800FA890;
  if (!qword_2800FA890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA890);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelProfileRebuildContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA8E0, 0x277D5AD58);
  sub_266ECAF2C(&qword_2800FA8E8, &qword_2800FA8E0, 0x277D5AD58);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FA8F0, 0x277D5AD48);
  sub_266ECAF2C(&qword_2800FA8F8, &qword_2800FA8F0, 0x277D5AD48);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FA900, 0x277D5AD50);
  sub_266ECAF2C(&qword_2800FA908, &qword_2800FA900, 0x277D5AD50);
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

uint64_t sub_2673299E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267329A4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SMTSchemaSMTAppLanguageModelProfileRebuildEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267329D38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267329D9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267329E00()
{
  result = qword_2800FA8F8;
  if (!qword_2800FA8F8)
  {
    sub_267329E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA8F8);
  }

  return result;
}

unint64_t sub_267329E58()
{
  result = qword_2800FA8F0;
  if (!qword_2800FA8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA8F0);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelProfileRebuildFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26732A0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732A150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26732A1B4()
{
  result = qword_2800FA908;
  if (!qword_2800FA908)
  {
    sub_26732A20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA908);
  }

  return result;
}

unint64_t sub_26732A20C()
{
  result = qword_2800FA900;
  if (!qword_2800FA900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA900);
  }

  return result;
}

uint64_t static SMTSchemaSMTAppLanguageModelProfileRebuildStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6C646E7542707061, 0xEB00000000644965);
  return v10(v12, 0);
}

uint64_t sub_26732A4AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732A510(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26732A574()
{
  result = qword_2800FA8E8;
  if (!qword_2800FA8E8)
  {
    sub_26732A5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA8E8);
  }

  return result;
}

unint64_t sub_26732A5CC()
{
  result = qword_2800FA8E0;
  if (!qword_2800FA8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA8E0);
  }

  return result;
}

uint64_t static SMTSchemaSMTClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v39 = a1;
  v1 = sub_26738118C();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v33 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA920, 0x277D5AD68);
  sub_266ECAF2C(&qword_2800FA928, &qword_2800FA920, 0x277D5AD68);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v41, 0);
  sub_266ECB294(0, &qword_2800FA888, 0x277D5AD00);
  sub_266ECAF2C(&qword_2800FA880, &qword_2800FA888, 0x277D5AD00);
  sub_26738121C();
  v38 = v10;
  v33[1] = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, 0x800000026749EEB0);
  v12(v41, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v40, 0xD000000000000020, 0x800000026749EEB0);
  v37 = *(v9 + 48);
  if (!v37(v15, 1, v8))
  {
    sub_266ECB128(&unk_287892E90);
    sub_26738115C();
  }

  (v14)(v40, 0);
  v13(v41, 0);
  sub_266ECB294(0, &qword_2800FA8C8, 0x277D5AD20);
  sub_266ECAF2C(&qword_2800FA8C0, &qword_2800FA8C8, 0x277D5AD20);
  sub_26738121C();
  v38(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026749EEE0);
  v16(v41, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v40, 0xD00000000000001CLL, 0x800000026749EEE0);
  if (!v37(v19, 1, v8))
  {
    sub_266ECB128(&unk_287892EB8);
    sub_26738115C();
  }

  (v18)(v40, 0);
  v17(v41, 0);
  sub_266ECB294(0, &qword_2800FA918, 0x277D5AD40);
  sub_266ECAF2C(&qword_2800FA910, &qword_2800FA918, 0x277D5AD40);
  sub_26738121C();
  v38(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000025, 0x800000026749EF00);
  v20(v41, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v40, 0xD000000000000025, 0x800000026749EF00);
  if (!v37(v23, 1, v8))
  {
    sub_266ECB128(&unk_287892EE0);
    sub_26738115C();
  }

  (v22)(v40, 0);
  v21(v41, 0);
  v24 = v34;
  sub_26738117C();
  v25 = sub_2673811BC();
  v27 = v26;
  v28 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v27 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_266ECAD54(0, v28[2] + 1, 1, v28);
    *v27 = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_266ECAD54(v30 > 1, v31 + 1, 1, v28);
    *v27 = v28;
  }

  v28[2] = v31 + 1;
  (*(v35 + 32))(v28 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, v24, v36);
  v25(v41, 0);
  sub_266ECB128(&unk_287892F08);
  return sub_2673811CC();
}

uint64_t sub_26732ADD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26732AE68()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26732AF34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732AF98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732AFF8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA930, &qword_2800FA938, 0x277D5AD60);
  a1[2] = sub_266ECAF2C(&qword_2800FA940, &qword_2800FA938, 0x277D5AD60);
  result = sub_266ECAF2C(&qword_2800FA948, &qword_2800FA938, 0x277D5AD60);
  a1[3] = result;
  return result;
}

uint64_t static SMTSchemaSMTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449746D73, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449746D73, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287892F40);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26732B390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732B3F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SRSchemaSRCheckErrorResponse.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SRSchemaSRPredictedErrorType(0);
  sub_26732B858(&qword_2800FA958, type metadata accessor for SRSchemaSRPredictedErrorType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026749EF90);
  v6(v9, 0);
  type metadata accessor for SRSchemaSRSelectedRecoveryStrategy(0);
  sub_26732B858(&qword_2800FA960, type metadata accessor for SRSchemaSRSelectedRecoveryStrategy);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026749EFB0);
  return v7(v9, 0);
}

uint64_t sub_26732B74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732B7B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732B858(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26732B8A0()
{
  result = qword_2800FA970;
  if (!qword_2800FA970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA970);
  }

  return result;
}

uint64_t static SRSchemaSRClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA978, 0x277D5AD98);
  sub_266ECAF2C(&qword_2800FA980, &qword_2800FA978, 0x277D5AD98);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800FA988, 0x277D5ADA0);
  sub_266ECAF2C(&qword_2800FA990, &qword_2800FA988, 0x277D5ADA0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x656843726F727265, 0xEC00000064656B63);
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
  sub_266ECB128(&unk_287892F68);
  return sub_2673811CC();
}

uint64_t sub_26732BD24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26732BDBC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26732BE88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732BEEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732BF4C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA998, &qword_2800FA9A0, 0x277D5AD90);
  a1[2] = sub_266ECAF2C(&qword_2800FA9A8, &qword_2800FA9A0, 0x277D5AD90);
  result = sub_266ECAF2C(&qword_2800FA9B0, &qword_2800FA9A0, 0x277D5AD90);
  a1[3] = result;
  return result;
}

uint64_t static SRSchemaSRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v22[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v24 = *(v7 + 56);
  v24(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 1682535027, 0xE400000000000000);
  v8(v27, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v26, 1682535027, 0xE400000000000000);
  v11 = *(v7 + 48);
  v25 = v7 + 48;
  v23 = v11;
  if (!v11(v12, 1, v6))
  {
    sub_266ECB128(&unk_287892FA0);
    sub_26738115C();
  }

  (v10)(v26, 0);
  v9(v27, 0);
  v22[2] = a1;
  sub_26738120C();
  v24(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x4974736575716572, 0xE900000000000064);
  v13(v27, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v26, 0x4974736575716572, 0xE900000000000064);
  if (!v23(v16, 1, v6))
  {
    sub_266ECB128(&unk_287892FD0);
    sub_26738115C();
  }

  (v15)(v26, 0);
  v14(v27, 0);
  sub_26738120C();
  v24(v5, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0x6575716552627573, 0xEC00000064497473);
  v17(v27, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v26, 0x6575716552627573, 0xEC00000064497473);
  if (!v23(v20, 1, v6))
  {
    sub_266ECB128(&unk_287893000);
    sub_26738115C();
  }

  (v19)(v26, 0);
  return v18(v27, 0);
}

uint64_t sub_26732C540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732C5A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SRSchemaSRErrorChecked.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA970, 0x277D5AD88);
  sub_266ECAF2C(&qword_2800FA968, &qword_2800FA970, 0x277D5AD88);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x800000026749F060);
  return v5(v7, 0);
}

uint64_t sub_26732C840(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732C8A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SRSchemaSRPredictedErrorType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026749F0B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026749F0D0, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026749F0F0, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026749F120, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x800000026749F150, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000025, 0x800000026749F180, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x800000026749F1B0, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x800000026749F1D0, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000028, 0x800000026749F200, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002FLL, 0x800000026749F230, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_26732CE74(uint64_t a1)
{
  v2 = sub_26732CF78(&qword_2800FA9C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26732CEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732CF78(&qword_2800FA9C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732CF78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SRSchemaSRPredictedErrorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SRSchemaSRSelectedRecoveryStrategy.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026749F2A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026749F2D0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026749F300, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003DLL, 0x800000026749F330, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004FLL, 0x800000026749F370, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003FLL, 0x800000026749F3C0, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000035, 0x800000026749F400, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000039, 0x800000026749F440, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_26732D408(uint64_t a1)
{
  v2 = sub_26732D50C(&qword_2800FA9C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26732D470(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732D50C(&qword_2800FA9C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732D50C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SRSchemaSRSelectedRecoveryStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SRSTSchemaSRSTClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FA9D0, 0x277D5AD78);
  sub_266ECAF2C(&qword_2800FA9D8, &qword_2800FA9D0, 0x277D5AD78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FA9E0, 0x277D5AD80);
  sub_266ECAF2C(&qword_2800FA9E8, &qword_2800FA9E0, 0x277D5AD80);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026749F4B0);
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
  sub_266ECB128(&unk_287893030);
  return sub_2673811CC();
}

uint64_t sub_26732D980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26732DA18()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26732DAE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732DB48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732DBA8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA9F0, &qword_2800F1F10, 0x277D5AD70);
  a1[2] = sub_266ECAF2C(&qword_2800FA9F8, &qword_2800F1F10, 0x277D5AD70);
  result = sub_266ECAF2C(&qword_2800FAA00, &qword_2800F1F10, 0x277D5AD70);
  a1[3] = result;
  return result;
}

uint64_t static SRSTSchemaSRSTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v14[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
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
  sub_266EC637C(v4, 0x496E6F6973736573, 0xE900000000000064);
  v8(v16, 0);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x644974737273, 0xE600000000000000);
  v9(v16, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v15, 0x644974737273, 0xE600000000000000);
  if (!(*(v6 + 48))(v12, 1, v5))
  {
    sub_266ECB128(&unk_287893068);
    sub_26738115C();
  }

  (v11)(v15, 0);
  v10(v16, 0);
  sub_266ECB128(&unk_287893098);
  return sub_2673811CC();
}

uint64_t sub_26732DFE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732E04C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SRSTSchemaSRSTState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x800000026749F540, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026749F560, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026749F580, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x800000026749F5A0, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026749F5C0, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x800000026749F5E0, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x800000026749F600, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x800000026749F620, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x800000026749F640, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x800000026749F660, v59);
  v60 = *v57;
  *v57 = v71;

  v55(v72, 0);
  sub_266ECB128(&unk_2878930C8);
  return sub_26738112C();
}

uint64_t sub_26732E644(uint64_t a1)
{
  v2 = sub_26732E748(&qword_2800FAA10);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26732E6AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732E748(&qword_2800FAA10);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732E748(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SRSTSchemaSRSTState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SRSTSchemaSRSTStateTransitionEvent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SRSTSchemaSRSTState(0);
  sub_26732EBEC(&qword_2800FAA08, type metadata accessor for SRSTSchemaSRSTState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x53746E6572727563, 0xEC00000065746174);
  v6(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73756F6976657270, 0xED00006574617453);
  v7(v10, 0);
  type metadata accessor for SRSTSchemaSRSTStateTransitionReason(0);
  sub_26732EBEC(&qword_2800FAA18, type metadata accessor for SRSTSchemaSRSTStateTransitionReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_2878930F8);
  return sub_2673811CC();
}

uint64_t sub_26732EAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732EB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732EBEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26732EC34()
{
  result = qword_2800FA9E0;
  if (!qword_2800FA9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA9E0);
  }

  return result;
}

uint64_t static SRSTSchemaSRSTStateTransitionReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026749F700, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v146;

  v1(v170, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026749F730, v11);
  v12 = *v9;
  *v9 = v147;

  v7(v170, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026749F760, v17);
  v18 = *v15;
  *v15 = v148;

  v13(v170, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026749F790, v23);
  v24 = *v21;
  *v21 = v149;

  v19(v170, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026749F7C0, v29);
  v30 = *v27;
  *v27 = v150;

  v25(v170, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x800000026749F7F0, v35);
  v36 = *v33;
  *v33 = v151;

  v31(v170, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x800000026749F820, v41);
  v42 = *v39;
  *v39 = v152;

  v37(v170, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x800000026749F850, v47);
  v48 = *v45;
  *v45 = v153;

  v43(v170, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x800000026749F880, v53);
  v54 = *v51;
  *v51 = v154;

  v49(v170, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000029, 0x800000026749F8B0, v59);
  v60 = *v57;
  *v57 = v155;

  v55(v170, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002ALL, 0x800000026749F8E0, v65);
  v66 = *v63;
  *v63 = v156;

  v61(v170, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x800000026749F910, v71);
  v72 = *v69;
  *v69 = v157;

  v67(v170, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000026, 0x800000026749F940, v77);
  v78 = *v75;
  *v75 = v158;

  v73(v170, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000002ELL, 0x800000026749F970, v83);
  v84 = *v81;
  *v81 = v159;

  v79(v170, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000021, 0x800000026749F9A0, v89);
  v90 = *v87;
  *v87 = v160;

  v85(v170, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000024, 0x800000026749F9D0, v95);
  v96 = *v93;
  *v93 = v161;

  v91(v170, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000022, 0x800000026749FA00, v101);
  v102 = *v99;
  *v99 = v162;

  v97(v170, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000020, 0x800000026749FA30, v107);
  v108 = *v105;
  *v105 = v163;

  v103(v170, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000022, 0x800000026749FA60, v113);
  v114 = *v111;
  *v111 = v164;

  v109(v170, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000002BLL, 0x800000026749FA90, v119);
  v120 = *v117;
  *v117 = v165;

  v115(v170, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000026, 0x800000026749FAC0, v125);
  v126 = *v123;
  *v123 = v166;

  v121(v170, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000021, 0x800000026749FAF0, v131);
  v132 = *v129;
  *v129 = v167;

  v127(v170, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001FLL, 0x800000026749FB20, v137);
  v138 = *v135;
  *v135 = v168;

  v133(v170, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001ELL, 0x800000026749FB40, v143);
  v144 = *v141;
  *v141 = v169;

  v139(v170, 0);
  sub_266ECB128(&unk_287893128);
  return sub_26738112C();
}

uint64_t sub_26732F7F8(uint64_t a1)
{
  v2 = sub_26732F8FC(&qword_2800FAA20);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26732F860(uint64_t a1, uint64_t a2)
{
  v4 = sub_26732F8FC(&qword_2800FAA20);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26732F8FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SRSTSchemaSRSTStateTransitionReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static STSchemaAnswerSythesisHydrationMetric.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for STSchemaSTAnswerSynthesisHydrationContentType(0);
  sub_26732FD80(&qword_2800FAA28, type metadata accessor for STSchemaSTAnswerSynthesisHydrationContentType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026749FBA0);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E508], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x800000026749FBC0);
  return v11(v15, 0);
}

uint64_t sub_26732FC74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26732FCD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26732FD80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26732FDC8()
{
  result = qword_2800FAA38;
  if (!qword_2800FAA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA38);
  }

  return result;
}

uint64_t static STSchemaDocumentAttributes.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v24 = v3 + 104;
  v25 = v2;
  v23 = v12;
  v12(v6, v11, v2);
  v28[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v22 = *(v14 + 56);
  v22(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449656C646E7562, 0xE800000000000000);
  v15(v28, 0);
  v26 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v27, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v14 + 48))(v18, 1, v13))
  {
    sub_266ECB128(&unk_287893158);
    sub_26738115C();
  }

  (v17)(v27, 0);
  v16(v28, 0);
  v23(v6, *MEMORY[0x277D3E538], v25);
  v28[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026749FC30);
  return v19(v28, 0);
}

uint64_t sub_2673301EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267330250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673302B4()
{
  result = qword_2800FAA40;
  if (!qword_2800FAA40)
  {
    sub_26733030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAA40);
  }

  return result;
}

unint64_t sub_26733030C()
{
  result = qword_2800FAA48;
  if (!qword_2800FAA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA48);
  }

  return result;
}

uint64_t static STSchemaLLMQUPerfMetrics.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v34 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v30 = "iri.searchtool.LLMQUPerfMetrics";
  v10 = *(v1 + 104);
  v31 = *MEMORY[0x277D3E538];
  v9 = v31;
  v10(v4, v31, v0);
  v35 = v1 + 104;
  v29 = v10;
  v36[0] = 1;
  sub_26738114C();
  v32 = sub_26738116C();
  v11 = *(v32 - 8);
  v12 = *(v11 + 56);
  v33 = v11 + 56;
  v12(v8, 0, 1, v32);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v30 | 0x8000000000000000);
  v13(v36, 0);
  v14 = v9;
  v15 = v34;
  v10(v4, v14, v34);
  v36[0] = 1;
  sub_26738114C();
  v16 = v32;
  v12(v8, 0, 1, v32);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x800000026749FCA0);
  v17(v36, 0);
  v30 = "ationDurationInMs";
  v18 = v31;
  v19 = v15;
  v20 = v29;
  v29(v4, v31, v19);
  v36[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v30 | 0x8000000000000000);
  v21(v36, 0);
  v30 = "llmquPreWarmModelDurationInMs";
  v22 = v18;
  v23 = v34;
  v20(v4, v22, v34);
  v36[0] = 1;
  sub_26738114C();
  v24 = v32;
  v12(v8, 0, 1, v32);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v30 | 0x8000000000000000);
  v25(v36, 0);
  v20(v4, v31, v23);
  v36[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026749FD10);
  return v26(v36, 0);
}

uint64_t sub_267330904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267330968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673309CC()
{
  result = qword_2800FAA50;
  if (!qword_2800FAA50)
  {
    sub_267330A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAA50);
  }

  return result;
}

unint64_t sub_267330A24()
{
  result = qword_2800FAA58;
  if (!qword_2800FAA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA58);
  }

  return result;
}

uint64_t static STSchemaLLMQUQueryArguments.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026749FD80);
  v12(v17, 0);
  type metadata accessor for STSchemaSTLLMQUModelSortOrder(0);
  sub_267330EFC();
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6564724F74726F73, 0xE900000000000072);
  return v13(v17, 0);
}

uint64_t sub_267330E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267330E9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267330EFC()
{
  result = qword_2800FAA60;
  if (!qword_2800FAA60)
  {
    type metadata accessor for STSchemaSTLLMQUModelSortOrder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAA60);
  }

  return result;
}

uint64_t static STSchemaQueryAttributes.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FAA78, 0x277D5ADC8);
  sub_266ECAF2C(&qword_2800FAA80, &qword_2800FAA78, 0x277D5ADC8);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026749FDD0);
  return v5(v7, 0);
}

uint64_t sub_267331190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673311F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaQUTokenParseInfo.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6E654C6E656B6F74, 0xEB00000000687467);
  return v10(v12, 0);
}

uint64_t sub_2673314EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267331550(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673315B4()
{
  result = qword_2800FAA80;
  if (!qword_2800FAA80)
  {
    sub_26733160C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FAA80);
  }

  return result;
}

unint64_t sub_26733160C()
{
  result = qword_2800FAA78;
  if (!qword_2800FAA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FAA78);
  }

  return result;
}

uint64_t static STSchemaSTAnswerSynthesisContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800FAA98, 0x277D5AE00);
  sub_266ECAF2C(&qword_2800FAAA0, &qword_2800FAA98, 0x277D5AE00);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FAAA8, 0x277D5ADF0);
  sub_266ECAF2C(&qword_2800FAAB0, &qword_2800FAAA8, 0x277D5ADF0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FAAB8, 0x277D5ADF8);
  sub_266ECAF2C(&qword_2800FAAC0, &qword_2800FAAB8, 0x277D5ADF8);
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

uint64_t sub_267331B70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267331BD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static STSchemaSTAnswerSynthesisDataMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E538];
  v30 = *(v4 + 104);
  v34 = v4 + 104;
  v35 = v3;
  v30(v7, v12, v3);
  v36[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v29 = v13;
  v14(v11, 0, 1, v13);
  v32 = a2;
  v33 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x61434D4C4C6D756ELL, 0xEB00000000736C6CLL);
  v15(v36, 0);
  v16 = v3;
  v17 = v30;
  v30(v7, v12, v16);
  v36[0] = 1;
  sub_26738114C();
  v14(v11, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x654C74706D6F7270, 0xEC0000006874676ELL);
  v18(v36, 0);
  v19 = v35;
  v17(v7, v12, v35);
  v36[0] = 1;
  sub_26738114C();
  v20 = v29;
  v33(v11, 0, 1, v29);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x65736E6F70736572, 0xEE006874676E654CLL);
  v21(v36, 0);
  v17(v7, v12, v19);
  v36[0] = 1;
  sub_26738114C();
  v22 = v33;
  v33(v11, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x6577736E416D756ELL, 0xEA00000000007372);
  v23(v36, 0);
  v28 = "TAnswerSynthesisDataMetrics";
  v17(v7, v12, v35);
  v36[0] = 1;
  sub_26738114C();
  v22(v11, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, v28 | 0x8000000000000000);
  v24(v36, 0);
  v17(v7, *MEMORY[0x277D3E508], v35);
  v36[0] = 1;
  sub_26738114C();
  v22(v11, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x800000026749FEC0);
  v25(v36, 0);
  sub_266ECB294(0, &qword_2800FAA38, 0x277D5ADA8);
  sub_266ECAF2C(&qword_2800FAA30, &qword_2800FAA38, 0x277D5ADA8);
  sub_26738122C();
  v22(v11, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, 0x800000026749FEE0);
  return v26(v36, 0);
}