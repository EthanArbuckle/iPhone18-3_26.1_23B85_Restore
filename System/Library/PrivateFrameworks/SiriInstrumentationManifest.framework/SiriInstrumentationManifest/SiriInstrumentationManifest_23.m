uint64_t sub_26727BDBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26727BE04()
{
  result = qword_2800F91A8;
  if (!qword_2800F91A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F91A8);
  }

  return result;
}

uint64_t static RRSchemaRRAnnotationName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026748A150, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026748A170, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026748A190, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026748A1C0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x800000026748A1E0, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x800000026748A200, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_26727C1B8(uint64_t a1)
{
  v2 = sub_26727C2BC(&qword_2800F91D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26727C220(uint64_t a1, uint64_t a2)
{
  v4 = sub_26727C2BC(&qword_2800F91D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26727C2BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RRSchemaRRAnnotationName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RRSchemaRRClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v30 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F91D8, 0x277D5A4D8);
  sub_266ECAF2C(&qword_2800F91E0, &qword_2800F91D8, 0x277D5A4D8);
  sub_26738120C();
  v11 = sub_26738116C();
  v30[0] = *(v11 - 8);
  v12 = *(v30[0] + 56);
  v12(v10, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v13(v35, 0);
  sub_266ECB294(0, &qword_2800F91E8, 0x277D5A500);
  sub_266ECAF2C(&qword_2800F91F0, &qword_2800F91E8, 0x277D5A500);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026748A250);
  v14(v35, 0);
  sub_266ECB294(0, &qword_2800F91F8, 0x277D5A4E0);
  sub_266ECAF2C(&qword_2800F9200, &qword_2800F91F8, 0x277D5A4E0);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026748A270);
  v15(v35, 0);
  sub_266ECB294(0, &qword_2800F9208, 0x277D5A528);
  sub_266ECAF2C(&qword_2800F9210, &qword_2800F9208, 0x277D5A528);
  v30[2] = a1;
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6172476F73557272, 0xEF31726569546870);
  v16(v35, 0);
  v30[1] = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v34, 0x6172476F73557272, 0xEF31726569546870);
  if (!(*(v30[0] + 48))(v19, 1, v11))
  {
    sub_266ECB128(&unk_28788DBF0);
    sub_26738115C();
  }

  (v18)(v34, 0);
  v17(v35, 0);
  sub_266ECB294(0, &qword_2800F9218, 0x277D5A510);
  sub_266ECAF2C(&qword_2800F9220, &qword_2800F9218, 0x277D5A510);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F4372656C6C7570, 0xED0000747865746ELL);
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
  v22(v35, 0);
  sub_266ECB128(&unk_28788DC18);
  return sub_2673811CC();
}

uint64_t sub_26727CA74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26727CB0C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26727CBD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727CC3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727CC9C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9228, &qword_2800F1EC0, 0x277D5A4D0);
  a1[2] = sub_266ECAF2C(&qword_2800F9230, &qword_2800F1EC0, 0x277D5A4D0);
  result = sub_266ECAF2C(&qword_2800F9238, &qword_2800F1EC0, 0x277D5A4D0);
  a1[3] = result;
  return result;
}

uint64_t static RRSchemaRRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v5, 1145664114, 0xE400000000000000);
  v8(v27, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v26, 1145664114, 0xE400000000000000);
  v11 = *(v7 + 48);
  v25 = v7 + 48;
  v23 = v11;
  if (!v11(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788DC50);
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
    sub_266ECB128(&unk_28788DC80);
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
    sub_266ECB128(&unk_28788DCB0);
    sub_26738115C();
  }

  (v19)(v26, 0);
  return v18(v27, 0);
}

uint64_t sub_26727D290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727D2F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRREntityPoolResolveContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9240, 0x277D5A4F8);
  sub_266ECAF2C(&qword_2800F9248, &qword_2800F9240, 0x277D5A4F8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F9250, 0x277D5A4E8);
  sub_266ECAF2C(&qword_2800F9258, &qword_2800F9250, 0x277D5A4E8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F9260, 0x277D5A4F0);
  sub_266ECAF2C(&qword_2800F9268, &qword_2800F9260, 0x277D5A4F0);
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

uint64_t sub_26727D8B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727D914(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRREntityPoolResolveEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F91C0, 0x277D5A4C0);
  sub_266ECAF2C(&qword_2800F91B8, &qword_2800F91C0, 0x277D5A4C0);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365527972657571, 0xEC00000073746C75);
  v6(v9, 0);
  type metadata accessor for RRSchemaRRResolveOutcome(0);
  sub_26727DD0C();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26727DC48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727DCAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26727DD0C()
{
  result = qword_2800F9270;
  if (!qword_2800F9270)
  {
    type metadata accessor for RRSchemaRRResolveOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9270);
  }

  return result;
}

uint64_t static RRSchemaRREntityPoolResolveFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RRSchemaRRResolveFailureReason(0);
  sub_26727E1F4(&qword_2800F9278, type metadata accessor for RRSchemaRRResolveFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26727DF64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RRSchemaRRResolveFailureReason(0);
  sub_26727E1F4(&qword_2800F9278, type metadata accessor for RRSchemaRRResolveFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26727E0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727E14C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727E1F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26727E23C()
{
  result = qword_2800F9260;
  if (!qword_2800F9260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9260);
  }

  return result;
}

uint64_t static RRSchemaRREntityPoolResolveStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x79726575516F7375, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_26727E45C()
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
  sub_266EC637C(v3, 0x79726575516F7375, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_26727E5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727E65C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRREntityPoolReturned.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F91C0, 0x277D5A4C0);
  sub_266ECAF2C(&qword_2800F91B8, &qword_2800F91C0, 0x277D5A4C0);
  sub_26738122C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x800000026748A3E0);
  v9(v20, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v19, 0xD000000000000011, 0x800000026748A3E0);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788DCE0);
    sub_26738115C();
  }

  (v11)(v19, 0);
  v10(v20, 0);
  (*(v16 + 104))(v17, *MEMORY[0x277D3E538], v18);
  v20[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F43797469746E65, 0xEB00000000746E75);
  return v13(v20, 0);
}

uint64_t sub_26727EAEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727EB50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRRGroupIdentifier.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x644970756F7267, 0xE700000000000000);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 7431539, 0xE300000000000000);
  return v15(v18, 0);
}

uint64_t sub_26727EF0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727EF70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26727EFD4()
{
  result = qword_2800F91A0;
  if (!qword_2800F91A0)
  {
    sub_26727F02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F91A0);
  }

  return result;
}

unint64_t sub_26727F02C()
{
  result = qword_2800F9198;
  if (!qword_2800F9198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9198);
  }

  return result;
}

uint64_t static RRSchemaRRPullerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9280, 0x277D5A518);
  sub_266ECAF2C(&qword_2800F9288, &qword_2800F9280, 0x277D5A518);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F9290, 0x277D5A520);
  sub_266ECAF2C(&qword_2800F9298, &qword_2800F9290, 0x277D5A520);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
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

uint64_t sub_26727F4BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727F520(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RRSchemaRRPullerEnded.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for RRSchemaRRPullerName(0);
  sub_26727F9F8(&qword_2800F92A0, type metadata accessor for RRSchemaRRPullerName);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 1701667182, 0xE400000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E508], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F43797469746E65, 0xEB00000000746E75);
  return v11(v15, 0);
}

uint64_t sub_26727F8EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727F950(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727F9F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26727FA40()
{
  result = qword_2800F9280;
  if (!qword_2800F9280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9280);
  }

  return result;
}

uint64_t static RRSchemaRRPullerFailed.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for RRSchemaRRPullerName(0);
  sub_26727FEBC(&qword_2800F92A0, type metadata accessor for RRSchemaRRPullerName);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 1701667182, 0xE400000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x756F656D69547369, 0xE900000000000074);
  return v11(v15, 0);
}

uint64_t sub_26727FDB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26727FE14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26727FEBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26727FF04()
{
  result = qword_2800F9290;
  if (!qword_2800F9290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9290);
  }

  return result;
}

uint64_t static RRSchemaRRPullerName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026748A4F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x800000026748A510, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x800000026748A530, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026748A550, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x800000026748A570, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x800000026748A590, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x800000026748A5B0, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x800000026748A5E0, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ALL, 0x800000026748A610, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000022, 0x800000026748A630, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_267280488(uint64_t a1)
{
  v2 = sub_26728058C(&qword_2800F92A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672804F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26728058C(&qword_2800F92A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26728058C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RRSchemaRRPullerName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RRSchemaRRResolveFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026748A690, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026748A6B0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026748A6E0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026748A710, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267280854(uint64_t a1)
{
  v2 = sub_267280958(&qword_2800F92B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672808BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267280958(&qword_2800F92B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267280958(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RRSchemaRRResolveFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RRSchemaRRResolveOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026748A770, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026748A790, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x800000026748A7B0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x800000026748A7D0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026748A800, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267280C94(uint64_t a1)
{
  v2 = sub_267280D98(&qword_2800F92B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267280CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267280D98(&qword_2800F92B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267280D98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RRSchemaRRResolveOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RRSchemaRRUsoGraphTier1.makeTypeManifestAndEnsureFields(in:)()
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
  v5(v7, 0);
  sub_266ECB128(&unk_28788DD10);
  return sub_2673811CC();
}

uint64_t sub_267280FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728104C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RSSSchemaRSSClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F92C0, 0x277D5A538);
  sub_266ECAF2C(&qword_2800F92C8, &qword_2800F92C0, 0x277D5A538);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F92D0, 0x277D5A560);
  sub_266ECAF2C(&qword_2800F92D8, &qword_2800F92D0, 0x277D5A560);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026748A880);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F92E0, 0x277D5A590);
  sub_266ECAF2C(&qword_2800F92E8, &qword_2800F92E0, 0x277D5A590);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026748A8A0);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800F92F0, 0x277D5A588);
  sub_266ECAF2C(&qword_2800F92F8, &qword_2800F92F0, 0x277D5A588);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x800000026748A8C0);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800F9300, 0x277D5A580);
  sub_266ECAF2C(&qword_2800F9308, &qword_2800F9300, 0x277D5A580);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x800000026748A8E0);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F9310, 0x277D5A558);
  sub_266ECAF2C(&qword_2800F9318, &qword_2800F9310, 0x277D5A558);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026748A910);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800F9320, 0x277D5A548);
  sub_266ECAF2C(&qword_2800F9328, &qword_2800F9320, 0x277D5A548);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, 0x800000026748A930);
  v15(v31, 0);
  sub_266ECB294(0, &qword_2800F9330, 0x277D5A540);
  sub_266ECAF2C(&qword_2800F9338, &qword_2800F9330, 0x277D5A540);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002FLL, 0x800000026748A960);
  v16(v31, 0);
  sub_266ECB294(0, &qword_2800F9340, 0x277D5A550);
  sub_266ECAF2C(&qword_2800F9348, &qword_2800F9340, 0x277D5A550);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v17 = v28;
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x800000026748A990);
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
  sub_266ECB128(&unk_28788DD40);
  return sub_2673811CC();
}

uint64_t sub_267281B08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267281BA0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267281C6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267281CD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267281D30(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9350, &qword_2800F1F70, 0x277D5A530);
  a1[2] = sub_266ECAF2C(&qword_2800F9358, &qword_2800F1F70, 0x277D5A530);
  result = sub_266ECAF2C(&qword_2800F9360, &qword_2800F1F70, 0x277D5A530);
  a1[3] = result;
  return result;
}

uint64_t static RSSSchemaRSSClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449737372, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449737372, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788DD78);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2672820C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728212C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncObjectAcquisitionStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267282418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728247C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672824E0()
{
  result = qword_2800F9338;
  if (!qword_2800F9338)
  {
    sub_267282538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9338);
  }

  return result;
}

unint64_t sub_267282538()
{
  result = qword_2800F9330;
  if (!qword_2800F9330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9330);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncCompanionSyncPluginSyncRequested.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncData(0);
  sub_2672829D8(&qword_2800F9368, type metadata accessor for RSSSchemaRSSSiriVocabSyncData);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x61746144636E7973, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267282744()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncData(0);
  sub_2672829D8(&qword_2800F9368, type metadata accessor for RSSSchemaRSSSiriVocabSyncData);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x61746144636E7973, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672828CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267282930(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672829D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267282A20()
{
  result = qword_2800F9320;
  if (!qword_2800F9320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9320);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncCompanionSyncUploadStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267282CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267282D18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267282D7C()
{
  result = qword_2800F9348;
  if (!qword_2800F9348)
  {
    sub_267282DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9348);
  }

  return result;
}

unint64_t sub_267282DD4()
{
  result = qword_2800F9340;
  if (!qword_2800F9340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9340);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncData.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026748AB10, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026748AB30, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026748AB50, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x800000026748AB80, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672830A8(uint64_t a1)
{
  v2 = sub_2672831AC(&qword_2800F9370);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267283110(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672831AC(&qword_2800F9370);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672831AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RSSSchemaRSSSiriVocabSyncData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDonationFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason(0);
  sub_26728363C(&qword_2800F9378, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672833AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason(0);
  sub_26728363C(&qword_2800F9378, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267283530(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267283594(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26728363C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267283684()
{
  result = qword_2800F9310;
  if (!qword_2800F9310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9310);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDonationFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000031, 0x800000026748AC30, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v86;

  v1(v100, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x800000026748AC70, v11);
  v12 = *v9;
  *v9 = v87;

  v7(v100, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003BLL, 0x800000026748ACB0, v17);
  v18 = *v15;
  *v15 = v88;

  v13(v100, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ELL, 0x800000026748ACF0, v23);
  v24 = *v21;
  *v21 = v89;

  v19(v100, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003ALL, 0x800000026748AD30, v29);
  v30 = *v27;
  *v27 = v90;

  v25(v100, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000038, 0x800000026748AD70, v35);
  v36 = *v33;
  *v33 = v91;

  v31(v100, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000038, 0x800000026748ADB0, v41);
  v42 = *v39;
  *v39 = v92;

  v37(v100, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000038, 0x800000026748ADF0, v47);
  v48 = *v45;
  *v45 = v93;

  v43(v100, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003ELL, 0x800000026748AE30, v53);
  v54 = *v51;
  *v51 = v94;

  v49(v100, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000003ELL, 0x800000026748AE70, v59);
  v60 = *v57;
  *v57 = v95;

  v55(v100, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000037, 0x800000026748AEB0, v65);
  v66 = *v63;
  *v63 = v96;

  v61(v100, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x800000026748AEF0, v71);
  v72 = *v69;
  *v69 = v97;

  v67(v100, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000003DLL, 0x800000026748AF30, v77);
  v78 = *v75;
  *v75 = v98;

  v73(v100, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000040, 0x800000026748AF70, v83);
  v84 = *v81;
  *v81 = v99;

  return v79(v100, 0);
}

uint64_t sub_267283DCC(uint64_t a1)
{
  v2 = sub_267283ED0(&qword_2800F9380);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267283E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_267283ED0(&qword_2800F9380);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267283ED0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDonationFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9388, 0x277D5A578);
  sub_266ECAF2C(&qword_2800F9390, &qword_2800F9388, 0x277D5A578);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F9398, 0x277D5A568);
  sub_266ECAF2C(&qword_2800F93A0, &qword_2800F9398, 0x277D5A568);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F93A8, 0x277D5A570);
  sub_266ECAF2C(&qword_2800F93B0, &qword_2800F93A8, 0x277D5A570);
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

uint64_t sub_26728442C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267284490(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26728477C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672847E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267284844()
{
  result = qword_2800F93A0;
  if (!qword_2800F93A0)
  {
    sub_26728489C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F93A0);
  }

  return result;
}

unint64_t sub_26728489C()
{
  result = qword_2800F9398;
  if (!qword_2800F9398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9398);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason(0);
  sub_267284D34(&qword_2800F93B8, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267284AA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason(0);
  sub_267284D34(&qword_2800F93B8, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267284C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267284C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267284D34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267284D7C()
{
  result = qword_2800F93A8;
  if (!qword_2800F93A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F93A8);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000031, 0x800000026748B0D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v74;

  v1(v86, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000037, 0x800000026748B110, v11);
  v12 = *v9;
  *v9 = v75;

  v7(v86, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000047, 0x800000026748B150, v17);
  v18 = *v15;
  *v15 = v76;

  v13(v86, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004ALL, 0x800000026748B1A0, v23);
  v24 = *v21;
  *v21 = v77;

  v19(v86, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003FLL, 0x800000026748B1F0, v29);
  v30 = *v27;
  *v27 = v78;

  v25(v86, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000041, 0x800000026748B230, v35);
  v36 = *v33;
  *v33 = v79;

  v31(v86, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000048, 0x800000026748B280, v41);
  v42 = *v39;
  *v39 = v80;

  v37(v86, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003ELL, 0x800000026748B2D0, v47);
  v48 = *v45;
  *v45 = v81;

  v43(v86, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000038, 0x800000026748B310, v53);
  v54 = *v51;
  *v51 = v82;

  v49(v86, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003ELL, 0x800000026748B350, v59);
  v60 = *v57;
  *v57 = v83;

  v55(v86, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000047, 0x800000026748B390, v65);
  v66 = *v63;
  *v63 = v84;

  v61(v86, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000039, 0x800000026748B3E0, v71);
  v72 = *v69;
  *v69 = v85;

  return v67(v86, 0);
}

uint64_t sub_2672853D0(uint64_t a1)
{
  v2 = sub_2672854D4(&qword_2800F93C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267285438(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672854D4(&qword_2800F93C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672854D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadTrigger.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026748B460, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x800000026748B490, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x800000026748B4D0, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ALL, 0x800000026748B510, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x800000026748B550, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002CLL, 0x800000026748B590, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003ELL, 0x800000026748B5C0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_2672858F0(uint64_t a1)
{
  v2 = sub_2672859F4(&qword_2800F93D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267285958(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672859F4(&qword_2800F93D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672859F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataDownloadTriggered.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadTrigger(0);
  sub_267285DEC(&qword_2800F93C8, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataDownloadTrigger);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656767697274, 0xE700000000000000);
  v6(v9, 0);
  type metadata accessor for RSSSchemaRSSSiriVocabSyncData(0);
  sub_267285DEC(&qword_2800F9368, type metadata accessor for RSSSchemaRSSSiriVocabSyncData);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x61746144636E7973, 0xE800000000000000);
  return v7(v9, 0);
}

uint64_t sub_267285CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267285D44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267285DEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267285E34()
{
  result = qword_2800F9388;
  if (!qword_2800F9388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9388);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataTokenTransferReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x800000026748B680, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x800000026748B6B0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000042, 0x800000026748B6F0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003BLL, 0x800000026748B740, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_267286104(uint64_t a1)
{
  v2 = sub_267286208(&qword_2800F93E0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26728616C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267286208(&qword_2800F93E0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267286208(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RSSSchemaRSSSiriVocabSyncDataTokenTransferReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncDataUpdatedNotificationReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000025, 0x800000026748B7D0);
  return v10(v12, 0);
}

uint64_t sub_26728649C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267286500(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267286564()
{
  result = qword_2800F9308;
  if (!qword_2800F9308)
  {
    sub_2672865BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9308);
  }

  return result;
}

unint64_t sub_2672865BC()
{
  result = qword_2800F9300;
  if (!qword_2800F9300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9300);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncTokenFetchRequestReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000028, 0x800000026748B850);
  return v10(v12, 0);
}

uint64_t sub_267286858(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672868BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267286920()
{
  result = qword_2800F92F8;
  if (!qword_2800F92F8)
  {
    sub_267286978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F92F8);
  }

  return result;
}

unint64_t sub_267286978()
{
  result = qword_2800F92F0;
  if (!qword_2800F92F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F92F0);
  }

  return result;
}

uint64_t static RSSSchemaRSSSiriVocabSyncTokenReceived.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for RSSSchemaRSSSiriVocabSyncDataTokenTransferReason(0);
  sub_267286DF4(&qword_2800F93D8, type metadata accessor for RSSSchemaRSSSiriVocabSyncDataTokenTransferReason);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E540], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026748B8C0);
  return v11(v15, 0);
}

uint64_t sub_267286CE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267286D4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267286DF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267286E3C()
{
  result = qword_2800F92E0;
  if (!qword_2800F92E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F92E0);
  }

  return result;
}

uint64_t static RTSSchemaRTSAccelerationData.makeTypeManifestAndEnsureFields(in:)()
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
  v18 = *MEMORY[0x277D3E518];
  v19 = *(v1 + 104);
  v17 = v0;
  v19(v4);
  v21[0] = 1;
  sub_26738114C();
  v20 = sub_26738116C();
  v9 = *(*(v20 - 8) + 56);
  v9(v8, 0, 1, v20);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x72656C6563634178, 0xED00006E6F697461);
  v10(v21, 0);
  v11 = v18;
  v12 = v0;
  v13 = v19;
  (v19)(v4, v18, v12);
  v21[0] = 1;
  sub_26738114C();
  v9(v8, 0, 1, v20);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x72656C6563634179, 0xED00006E6F697461);
  v14(v21, 0);
  (v13)(v4, v11, v17);
  v21[0] = 1;
  sub_26738114C();
  v9(v8, 0, 1, v20);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x72656C656363417ALL, 0xED00006E6F697461);
  return v15(v21, 0);
}

uint64_t sub_267287290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672872F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267287358()
{
  result = qword_2800F93E8;
  if (!qword_2800F93E8)
  {
    sub_2672873B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F93E8);
  }

  return result;
}

unint64_t sub_2672873B0()
{
  result = qword_2800F93F0;
  if (!qword_2800F93F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F93F0);
  }

  return result;
}

uint64_t static RTSSchemaRTSClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F93F8, 0x277D5A5A8);
  sub_266ECAF2C(&qword_2800F9400, &qword_2800F93F8, 0x277D5A5A8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v28, 0);
  sub_266ECB294(0, &qword_2800F9408, 0x277D5A5B0);
  sub_266ECAF2C(&qword_2800F9410, &qword_2800F9408, 0x277D5A5B0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267457070);
  v10(v28, 0);
  sub_266ECB294(0, &qword_2800F9418, 0x277D5A5D0);
  sub_266ECAF2C(&qword_2800F9420, &qword_2800F9418, 0x277D5A5D0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6767697254737472, 0xEC00000064657265);
  v11(v28, 0);
  sub_266ECB294(0, &qword_2800F9428, 0x277D5A5B8);
  sub_266ECAF2C(&qword_2800F9430, &qword_2800F9428, 0x277D5A5B8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267457160);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800F9438, 0x277D5A5C8);
  sub_266ECAF2C(&qword_2800F9440, &qword_2800F9438, 0x277D5A5C8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x8000000267457180);
  v13(v28, 0);
  sub_266ECB294(0, &qword_2800F9448, 0x277D5A5C0);
  sub_266ECAF2C(&qword_2800F9450, &qword_2800F9448, 0x277D5A5C0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F69746F4D737472, 0xED0000617461446ELL);
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
  v16(v28, 0);
  sub_266ECB128(&unk_28788DDA0);
  return sub_2673811CC();
}

uint64_t sub_267287B94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267287C2C()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267287CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267287D5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267287DBC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9458, &qword_2800F9460, 0x277D5A5A0);
  a1[2] = sub_266ECAF2C(&qword_2800F9468, &qword_2800F9460, 0x277D5A5A0);
  result = sub_266ECAF2C(&qword_2800F9470, &qword_2800F9460, 0x277D5A5A0);
  a1[3] = result;
  return result;
}

uint64_t static RTSSchemaRTSClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6973736553737472, 0xEC00000064496E6FLL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6973736553737472, 0xEC00000064496E6FLL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788DDD0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26728816C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672881D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RTSSchemaRTSFalseRejectDetected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v28 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v27 = *(v1 + 104);
  v27(v4, v9, v0);
  v22[1] = v1 + 104;
  v29[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v25 = *(v11 + 56);
  v26 = v11 + 56;
  v23 = v10;
  v25(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265567465737361, 0xEC0000006E6F6973);
  v12(v29, 0);
  v22[0] = "iri.mh.MHRTSFalseRejectDetected";
  v24 = *MEMORY[0x277D3E530];
  v13 = v24;
  v15 = v27;
  v14 = v28;
  v27(v4, v24, v28);
  v29[0] = 1;
  sub_26738114C();
  v16 = v25;
  v25(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v22[0] | 0x8000000000000000);
  v17(v29, 0);
  v22[0] = "gestureModelVersion";
  v15(v4, v13, v14);
  v29[0] = 1;
  sub_26738114C();
  v18 = v23;
  v16(v8, 0, 1, v23);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v22[0] | 0x8000000000000000);
  v19(v29, 0);
  v15(v4, v24, v28);
  v29[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267458380);
  return v20(v29, 0);
}

uint64_t sub_26728874C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672887B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267288814()
{
  result = qword_2800F9410;
  if (!qword_2800F9410)
  {
    sub_26728886C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9410);
  }

  return result;
}

unint64_t sub_26728886C()
{
  result = qword_2800F9408;
  if (!qword_2800F9408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9408);
  }

  return result;
}

uint64_t static RTSSchemaRTSFirstPassPolicyTriggered.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v18 = "SpeakFirstPassPolicyTriggered";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E4E8], v2);
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
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267458210);
  return v15(v19, 0);
}

uint64_t sub_267288BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267288C50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267288CB4()
{
  result = qword_2800F9430;
  if (!qword_2800F9430)
  {
    sub_267288D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9430);
  }

  return result;
}

unint64_t sub_267288D0C()
{
  result = qword_2800F9428;
  if (!qword_2800F9428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9428);
  }

  return result;
}

uint64_t static RTSSchemaRTSMotionData.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F93F0, 0x277D5A598);
  sub_266ECAF2C(&qword_2800F93E8, &qword_2800F93F0, 0x277D5A598);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026748BA10);
  return v5(v7, 0);
}

uint64_t sub_267288F50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267288FB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static RTSSchemaRTSSecondPassPolicyDecisionMade.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v25 = sub_26738113C();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v21 = "olicyDecisionMade";
  v23 = *MEMORY[0x277D3E4E8];
  v22 = *(v2 + 104);
  v22(v5);
  v20[2] = v2 + 104;
  v26[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v24 = *(*(v10 - 8) + 56);
  v24(v9, 0, 1, v10);
  v20[1] = a1;
  v11 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v21 | 0x8000000000000000);
  v11(v26, 0);
  v21 = "isSecondPassTriggered";
  v12 = *MEMORY[0x277D3E518];
  v13 = v25;
  v14 = v22;
  (v22)(v5, v12, v25);
  v26[0] = 1;
  sub_26738114C();
  v15 = v24;
  v24(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v21 | 0x8000000000000000);
  v16(v26, 0);
  v21 = "speakingProbability";
  (v14)(v5, v12, v13);
  v26[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v21 | 0x8000000000000000);
  v17(v26, 0);
  (v14)(v5, v23, v25);
  v26[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x80000002674581F0);
  return v18(v26, 0);
}

uint64_t sub_267289540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672895A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267289608()
{
  result = qword_2800F9440;
  if (!qword_2800F9440)
  {
    sub_267289660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9440);
  }

  return result;
}

unint64_t sub_267289660()
{
  result = qword_2800F9438;
  if (!qword_2800F9438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9438);
  }

  return result;
}

uint64_t static RTSSchemaRTSTriggered.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2672898F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267289958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672899BC()
{
  result = qword_2800F9420;
  if (!qword_2800F9420)
  {
    sub_267289A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9420);
  }

  return result;
}

unint64_t sub_267289A14()
{
  result = qword_2800F9418;
  if (!qword_2800F9418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9418);
  }

  return result;
}

uint64_t static SADSchemaSADAvailableAssetDailyStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9480, 0x277D5A600);
  sub_266ECAF2C(&qword_2800F9488, &qword_2800F9480, 0x277D5A600);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x63617073656D616ELL, 0xEF73757461745365);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F5E48, 0x277D5B1E0);
  sub_266ECAF2C(&qword_2800F5E50, &qword_2800F5E48, 0x277D5B1E0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465537465737361, 0xEE00737574617453);
  v7(v10, 0);
  type metadata accessor for SADSchemaSADAvailableAssetStatusReason(0);
  sub_267289EA8();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6552737574617473, 0xEC0000006E6F7361);
  v8(v10, 0);
  sub_266ECB128(&unk_28788DE00);
  return sub_2673811CC();
}

uint64_t sub_267289DE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267289E48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267289EA8()
{
  result = qword_2800F9490;
  if (!qword_2800F9490)
  {
    type metadata accessor for SADSchemaSADAvailableAssetStatusReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9490);
  }

  return result;
}

uint64_t static SADSchemaSADAvailableAssetStatusReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026748BB20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026748BB50, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000031, 0x800000026748BB80, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x800000026748BBC0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x800000026748BBF0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26728A238(uint64_t a1)
{
  v2 = sub_26728A33C(&qword_2800F94A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26728A2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26728A33C(&qword_2800F94A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26728A33C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SADSchemaSADAvailableAssetStatusReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SADSchemaSADClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F94B0, 0x277D5A610);
  sub_266ECAF2C(&qword_2800F94B8, &qword_2800F94B0, 0x277D5A610);
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026748BC50);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F94A0, 0x277D5A5D8);
  sub_266ECAF2C(&qword_2800F9498, &qword_2800F94A0, 0x277D5A5D8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x800000026748BC70);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F94C0, 0x277D5A5E8);
  sub_266ECAF2C(&qword_2800F94C8, &qword_2800F94C0, 0x277D5A5E8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x800000026748BC90);
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
  sub_266ECB128(&unk_28788DE30);
  return sub_2673811CC();
}

uint64_t sub_26728A88C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26728A924()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26728A9F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728AA54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26728AAB4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F94D0, &qword_2800F1EF0, 0x277D5A5E0);
  a1[2] = sub_266ECAF2C(&qword_2800F94D8, &qword_2800F1EF0, 0x277D5A5E0);
  result = sub_266ECAF2C(&qword_2800F94E0, &qword_2800F1EF0, 0x277D5A5E0);
  a1[3] = result;
  return result;
}

uint64_t static SADSchemaSADImmediateDownloadTriggered.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaLocale(0);
  sub_26728B0B4(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x656C61636F6CLL, 0xE600000000000000);
  v11(v20, 0);
  v12 = *MEMORY[0x277D3E4E8];
  v13 = v18;
  v14 = *(v19 + 104);
  v19 += 104;
  v14(v4, v12, v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x676E697473697865, 0xEE00737465737341);
  v15(v20, 0);
  v14(v4, *MEMORY[0x277D3E538], v13);
  v20[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x756F437972746572, 0xEA0000000000746ELL);
  return v16(v20, 0);
}

uint64_t sub_26728AFA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728B00C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26728B0B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26728B0FC()
{
  result = qword_2800F94C0;
  if (!qword_2800F94C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F94C0);
  }

  return result;
}

uint64_t static SADSchemaSADNamespace.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026748BD20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v86;

  v1(v100, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026748BD40, v11);
  v12 = *v9;
  *v9 = v87;

  v7(v100, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026748BD70, v17);
  v18 = *v15;
  *v15 = v88;

  v13(v100, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x800000026748BDA0, v23);
  v24 = *v21;
  *v21 = v89;

  v19(v100, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026748BDD0, v29);
  v30 = *v27;
  *v27 = v90;

  v25(v100, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x800000026748BE00, v35);
  v36 = *v33;
  *v33 = v91;

  v31(v100, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x800000026748BE30, v41);
  v42 = *v39;
  *v39 = v92;

  v37(v100, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000027, 0x800000026748BE60, v47);
  v48 = *v45;
  *v45 = v93;

  v43(v100, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x800000026748BE90, v53);
  v54 = *v51;
  *v51 = v94;

  v49(v100, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x800000026748BEC0, v59);
  v60 = *v57;
  *v57 = v95;

  v55(v100, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x800000026748BEF0, v65);
  v66 = *v63;
  *v63 = v96;

  v61(v100, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000019, 0x800000026748BF10, v71);
  v72 = *v69;
  *v69 = v97;

  v67(v100, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000030, 0x800000026748BF30, v77);
  v78 = *v75;
  *v75 = v98;

  v73(v100, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000028, 0x800000026748BF70, v83);
  v84 = *v81;
  *v81 = v99;

  return v79(v100, 0);
}

uint64_t sub_26728B83C(uint64_t a1)
{
  v2 = sub_26728B940(&qword_2800F94F0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26728B8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26728B940(&qword_2800F94F0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26728B940(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SADSchemaSADNamespace(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SADSchemaSADTrialNamespaceStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001DLL, 0x800000026748BFD0);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F94F8, 0x277D5A608);
  sub_266ECAF2C(&qword_2800F9500, &qword_2800F94F8, 0x277D5A608);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x74756F6C6C6F72, 0xE700000000000000);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x737465737361, 0xE600000000000000);
  v8(v11, 0);
  type metadata accessor for SADSchemaSADNamespace(0);
  sub_26728BE6C();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D614E6C61697274, 0xEE00656361707365);
  return v9(v11, 0);
}

uint64_t sub_26728BDA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728BE0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26728BE6C()
{
  result = qword_2800F94E8;
  if (!qword_2800F94E8)
  {
    type metadata accessor for SADSchemaSADNamespace(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F94E8);
  }

  return result;
}

uint64_t static SADSchemaSADTrialRollout.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x4974756F6C6C6F72, 0xE900000000000064);
  v12(v22, 0);
  v13 = v0;
  v14 = v20;
  v20(v4, *MEMORY[0x277D3E538], v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D796F6C706564, 0xEA0000000000746ELL);
  v15(v22, 0);
  v14(v4, v21, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6150726F74636166, 0xEA00000000006B63);
  return v16(v22, 0);
}

uint64_t sub_26728C2F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728C358(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26728C3BC()
{
  result = qword_2800F9500;
  if (!qword_2800F9500)
  {
    sub_26728C414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9500);
  }

  return result;
}

unint64_t sub_26728C414()
{
  result = qword_2800F94F8;
  if (!qword_2800F94F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F94F8);
  }

  return result;
}

uint64_t static SADSchemaSADUODAssetsPrepared.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaLocale(0);
  sub_26728C8B0(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C61636F6CLL, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x5364657370616C65, 0xEE0073646E6F6365);
  v11(v15, 0);
  sub_266ECB128(&unk_28788DE68);
  return sub_2673811CC();
}

uint64_t sub_26728C7A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728C808(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26728C8B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26728C8F8()
{
  result = qword_2800F94B0;
  if (!qword_2800F94B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F94B0);
  }

  return result;
}

uint64_t static SCSchemaSCCheckCorrectionResponse.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9508, 0x277D5A620);
  sub_266ECAF2C(&qword_2800F9510, &qword_2800F9508, 0x277D5A620);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x73746C75736572, 0xE700000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74616469646E6163, 0xEE00746E756F4365);
  return v11(v15, 0);
}

uint64_t sub_26728CC84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728CCE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SCSchemaSCCheckCorrectionResult.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v23 = a1;
  v24 = sub_26738113C();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v21 = *MEMORY[0x277D3E530];
  v22 = *(v1 + 104);
  v25 = v1 + 104;
  v20 = v4;
  v22(v4);
  v26[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026748C0C0);
  v11(v26, 0);
  type metadata accessor for SCSchemaSCCorrectionType(0);
  sub_26728D368(&qword_2800F9528, type metadata accessor for SCSchemaSCCorrectionType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = v10;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974636572726F63, 0xEE00657079546E6FLL);
  v13(v26, 0);
  v23 = "correctedAttribute";
  v14 = v20;
  v15 = v21;
  v16 = v22;
  (v22)(v20, v21, v24);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v23 | 0x8000000000000000);
  v17(v26, 0);
  v16(v14, v15, v24);
  v26[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026748C100);
  return v18(v26, 0);
}

uint64_t sub_26728D25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728D2C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26728D368(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26728D3B0()
{
  result = qword_2800F9508;
  if (!qword_2800F9508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9508);
  }

  return result;
}

uint64_t static SCSchemaSCCheckUndoResponse.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SCSchemaSCUndoType(0);
  sub_26728D7AC(&qword_2800F9530, type metadata accessor for SCSchemaSCUndoType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546F646E75, 0xE800000000000000);
  v6(v9, 0);
  type metadata accessor for SCSchemaSCUndoOutcomeReason(0);
  sub_26728D7AC(&qword_2800F9538, type metadata accessor for SCSchemaSCUndoOutcomeReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26728D6A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728D704(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26728D7AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26728D7F4()
{
  result = qword_2800F9548;
  if (!qword_2800F9548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9548);
  }

  return result;
}

uint64_t static SCSchemaSCClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9550, 0x277D5A638);
  sub_266ECAF2C(&qword_2800F9558, &qword_2800F9550, 0x277D5A638);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F9560, 0x277D5A650);
  sub_266ECAF2C(&qword_2800F9568, &qword_2800F9560, 0x277D5A650);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x636568436F646E75, 0xEB0000000064656BLL);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F9570, 0x277D5A640);
  sub_266ECAF2C(&qword_2800F9578, &qword_2800F9570, 0x277D5A640);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026748C180);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F9580, 0x277D5A658);
  sub_266ECAF2C(&qword_2800F9588, &qword_2800F9580, 0x277D5A658);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x7465536F646E75, 0xE700000000000000);
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
  sub_266ECB128(&unk_28788DE98);
  return sub_2673811CC();
}

uint64_t sub_26728DE14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26728DEAC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26728DF78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728DFDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26728E03C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9590, &qword_2800F1FD0, 0x277D5A630);
  a1[2] = sub_266ECAF2C(&qword_2800F9598, &qword_2800F1FD0, 0x277D5A630);
  result = sub_266ECAF2C(&qword_2800F95A0, &qword_2800F1FD0, 0x277D5A630);
  a1[3] = result;
  return result;
}

uint64_t static SCSchemaSCClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v5, 1682531187, 0xE400000000000000);
  v8(v27, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v26, 1682531187, 0xE400000000000000);
  v11 = *(v7 + 48);
  v25 = v7 + 48;
  v23 = v11;
  if (!v11(v12, 1, v6))
  {
    sub_266ECB128(&unk_28788DED0);
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
    sub_266ECB128(&unk_28788DF00);
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
    sub_266ECB128(&unk_28788DF30);
    sub_26738115C();
  }

  (v19)(v26, 0);
  return v18(v27, 0);
}

uint64_t sub_26728E630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728E694(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SCSchemaSCCorrectionChecked.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9520, 0x277D5A618);
  sub_266ECAF2C(&qword_2800F9518, &qword_2800F9520, 0x277D5A618);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x800000026748C200);
  return v5(v7, 0);
}

uint64_t sub_26728E930(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728E994(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SCSchemaSCCorrectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026748C250, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x800000026748C270, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026748C290, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026748C2B0, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026748C2D0, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x800000026748C2F0, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x800000026748C310, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_26728EE10(uint64_t a1)
{
  v2 = sub_26728EF14(&qword_2800F95A8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26728EE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_26728EF14(&qword_2800F95A8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26728EF14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SCSchemaSCCorrectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SCSchemaSCSetUndoArgs.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026748C360);
  return v10(v12, 0);
}

uint64_t sub_26728F1A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728F20C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26728F270()
{
  result = qword_2800F95B0;
  if (!qword_2800F95B0)
  {
    sub_26728F2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F95B0);
  }

  return result;
}

unint64_t sub_26728F2C8()
{
  result = qword_2800F95B8;
  if (!qword_2800F95B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F95B8);
  }

  return result;
}

uint64_t static SCSchemaSCUndoChecked.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9548, 0x277D5A628);
  sub_266ECAF2C(&qword_2800F9540, &qword_2800F9548, 0x277D5A628);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026748C3B0);
  return v5(v7, 0);
}

uint64_t sub_26728F50C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728F570(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SCSchemaSCUndoOutcomeReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026748C400, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026748C420, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026748C450, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026748C480, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026748C4B0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x800000026748C4E0, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x800000026748C510, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x800000026748C540, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x800000026748C570, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_26728FACC(uint64_t a1)
{
  v2 = sub_26728FBD0(&qword_2800F95C0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26728FB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_26728FBD0(&qword_2800F95C0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26728FBD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SCSchemaSCUndoOutcomeReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SCSchemaSCUndoSet.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F95B8, 0x277D5A648);
  sub_266ECAF2C(&qword_2800F95B0, &qword_2800F95B8, 0x277D5A648);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x416F646E55746573, 0xEB00000000736772);
  return v5(v7, 0);
}

uint64_t sub_26728FDF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F95B8, 0x277D5A648);
  sub_266ECAF2C(&qword_2800F95B0, &qword_2800F95B8, 0x277D5A648);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x416F646E55746573, 0xEB00000000736772);
  return v5(v7, 0);
}

uint64_t sub_26728FF94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26728FFF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SCSchemaSCUndoType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x800000026748C600, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x59544F444E554353, 0xEF454E4F4E5F4550, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026748C620, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026748C640, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26729032C(uint64_t a1)
{
  v2 = sub_267290430(&qword_2800F95C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267290394(uint64_t a1, uint64_t a2)
{
  v4 = sub_267290430(&qword_2800F95C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267290430(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SCSchemaSCUndoType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SessionSchemaOrderedSessionEvent.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E510], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267440970);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800F1D90, 0x277D5A790);
  sub_266ECAF2C(&qword_2800F1D98, &qword_2800F1D90, 0x277D5A790);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E657665, 0xE500000000000000);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F95D0, 0x277D5A820);
  sub_266ECAF2C(&qword_2800F95D8, &qword_2800F95D0, 0x277D5A820);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x617461646174656DLL, 0xE800000000000000);
  return v13(v15, 0);
}

uint64_t sub_26729086C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672908D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SessionSchemaSession.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F95F0, 0x277D5B090);
  sub_266ECAF2C(&qword_2800F95F8, &qword_2800F95F0, 0x277D5B090);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x496E6F6973736573, 0xE900000000000064);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800F95E8, 0x277D5B080);
  sub_266ECAF2C(&qword_2800F95E0, &qword_2800F95E8, 0x277D5B080);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E657665, 0xE500000000000000);
  v11(v16, 0);
  (*(v14 + 104))(v3, *MEMORY[0x277D3E540], v15);
  v16[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x800000026748C6B0);
  v12(v16, 0);
  sub_266ECB128(&unk_28788DF60);
  return sub_2673811CC();
}

uint64_t sub_267290D50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267290DE8()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267290EB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267290F18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267290F78(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9600, &qword_2800F9608, 0x277D5B088);
  a1[2] = sub_266ECAF2C(&qword_2800F9610, &qword_2800F9608, 0x277D5B088);
  result = sub_266ECAF2C(&qword_2800F9618, &qword_2800F9608, 0x277D5B088);
  a1[3] = result;
  return result;
}

uint64_t static SessionSchemaSessionId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x496E6F6973736573, 0xE900000000000064);
  return v5(v7, 0);
}

uint64_t sub_267291250()
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
  sub_266EC637C(v3, 0x496E6F6973736573, 0xE900000000000064);
  return v5(v7, 0);
}

uint64_t sub_2672913F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267291454(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SICSchemaSICClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9628, 0x277D5A668);
  sub_266ECAF2C(&qword_2800F9630, &qword_2800F9628, 0x277D5A668);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F9638, 0x277D5A678);
  sub_266ECAF2C(&qword_2800F9640, &qword_2800F9638, 0x277D5A678);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x800000026748C730);
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
  sub_266ECB128(&unk_28788DF98);
  return sub_2673811CC();
}

uint64_t sub_267291928(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672919C0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267291A8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267291AF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267291B50(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9648, &qword_2800F1FA0, 0x277D5A660);
  a1[2] = sub_266ECAF2C(&qword_2800F9650, &qword_2800F1FA0, 0x277D5A660);
  result = sub_266ECAF2C(&qword_2800F9658, &qword_2800F1FA0, 0x277D5A660);
  a1[3] = result;
  return result;
}

uint64_t static SICSchemaSICClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v19 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v20 = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v18 = *(v7 + 56);
  v18(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449636973, 0xE500000000000000);
  v8(v22, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v21, 0x6449636973, 0xE500000000000000);
  v17 = *(v7 + 48);
  if (!v17(v11, 1, v6))
  {
    sub_266ECB128(&unk_28788DFD0);
    sub_26738115C();
  }

  (v10)(v21, 0);
  v9(v22, 0);
  sub_26738120C();
  v18(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x4974736575716572, 0xE900000000000064);
  v12(v22, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0x4974736575716572, 0xE900000000000064);
  if (!v17(v15, 1, v6))
  {
    sub_266ECB128(&unk_28788E000);
    sub_26738115C();
  }

  (v14)(v21, 0);
  return v13(v22, 0);
}

uint64_t sub_267292010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267292074(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SICSchemaSICInvocationCancelled.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267292360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672923C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267292428()
{
  result = qword_2800F9660;
  if (!qword_2800F9660)
  {
    sub_267292480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9660);
  }

  return result;
}

unint64_t sub_267292480()
{
  result = qword_2800F9668;
  if (!qword_2800F9668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9668);
  }

  return result;
}

uint64_t static SICSchemaSICInvocationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9670, 0x277D5A688);
  sub_266ECAF2C(&qword_2800F9678, &qword_2800F9670, 0x277D5A688);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F9680, 0x277D5A680);
  sub_266ECAF2C(&qword_2800F9688, &qword_2800F9680, 0x277D5A680);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F9668, 0x277D5A670);
  sub_266ECAF2C(&qword_2800F9660, &qword_2800F9668, 0x277D5A670);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x656C6C65636E6163, 0xE900000000000064);
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

uint64_t sub_2672929EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267292A50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SICSchemaSICInvocationEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267292D3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267292DA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267292E04()
{
  result = qword_2800F9688;
  if (!qword_2800F9688)
  {
    sub_267292E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9688);
  }

  return result;
}

unint64_t sub_267292E5C()
{
  result = qword_2800F9680;
  if (!qword_2800F9680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9680);
  }

  return result;
}

uint64_t static SICSchemaSICInvocationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v17[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x646574754D7369, 0xE700000000000000);
  v11(v17, 0);
  type metadata accessor for SISchemaCallType(0);
  sub_26729350C(&qword_2800F9690, type metadata accessor for SISchemaCallType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x657079546C6C6163, 0xE800000000000000);
  v12(v17, 0);
  type metadata accessor for SISchemaCallState(0);
  sub_26729350C(&qword_2800F9698, type metadata accessor for SISchemaCallState);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x746174536C6C6163, 0xE900000000000065);
  v13(v17, 0);
  type metadata accessor for SISchemaCallAppType(0);
  sub_26729350C(&qword_2800F96A0, type metadata accessor for SISchemaCallAppType);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x547070416C6C6163, 0xEB00000000657079);
  v14(v17, 0);
  type metadata accessor for SICSchemaSICParticipantCountBucket(0);
  sub_26729350C(&qword_2800F96A8, type metadata accessor for SICSchemaSICParticipantCountBucket);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026748C840);
  return v15(v17, 0);
}

uint64_t sub_267293400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267293464(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26729350C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267293554()
{
  result = qword_2800F9670;
  if (!qword_2800F9670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9670);
  }

  return result;
}

uint64_t static SICSchemaSICParticipantCountBucket.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026748C8A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v44;

  v1(v51, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x800000026748C8D0, v11);
  v12 = *v9;
  *v9 = v45;

  v7(v51, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026748C900, v17);
  v18 = *v15;
  *v15 = v46;

  v13(v51, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026748C930, v23);
  v24 = *v21;
  *v21 = v47;

  v19(v51, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ELL, 0x800000026748C960, v29);
  v30 = *v27;
  *v27 = v48;

  v25(v51, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002FLL, 0x800000026748C990, v35);
  v36 = *v33;
  *v33 = v49;

  v31(v51, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000036, 0x800000026748C9C0, v41);
  v42 = *v39;
  *v39 = v50;

  return v37(v51, 0);
}

uint64_t sub_267293974(uint64_t a1)
{
  v2 = sub_267293A78(&qword_2800F96B0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672939DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267293A78(&qword_2800F96B0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267293A78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SICSchemaSICParticipantCountBucket(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F96B8, 0x277D5A6A8);
  sub_266ECAF2C(&qword_2800F96C0, &qword_2800F96B8, 0x277D5A6A8);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F96C8, 0x277D5A6B8);
  sub_266ECAF2C(&qword_2800F96D0, &qword_2800F96C8, 0x277D5A6B8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000020, 0x800000026748CA30);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F96D8, 0x277D5A6E8);
  sub_266ECAF2C(&qword_2800F96E0, &qword_2800F96D8, 0x277D5A6E8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x800000026748CA60);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F96E8, 0x277D5A6F0);
  sub_266ECAF2C(&qword_2800F96F0, &qword_2800F96E8, 0x277D5A6F0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x800000026748CA80);
  v12(v30, 0);
  sub_266ECB294(0, &qword_2800F96F8, 0x277D5A6D8);
  sub_266ECAF2C(&qword_2800F9700, &qword_2800F96F8, 0x277D5A6D8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026748CAA0);
  v13(v30, 0);
  sub_266ECB294(0, &qword_2800F9708, 0x277D5A6E0);
  sub_266ECAF2C(&qword_2800F9710, &qword_2800F9708, 0x277D5A6E0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000026, 0x800000026748CAC0);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F9718, 0x277D5A6D0);
  sub_266ECAF2C(&qword_2800F9720, &qword_2800F9718, 0x277D5A6D0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026748CAF0);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F9728, 0x277D5A6C8);
  sub_266ECAF2C(&qword_2800F9730, &qword_2800F9728, 0x277D5A6C8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x536E6F6973736573, 0xEE007972616D6D75);
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
  sub_266ECB128(&unk_28788E030);
  return sub_2673811CC();
}

uint64_t sub_2672943FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267294494()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267294560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672945C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267294624(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9738, &qword_2800F1FE0, 0x277D5A6A0);
  a1[2] = sub_266ECAF2C(&qword_2800F9740, &qword_2800F1FE0, 0x277D5A6A0);
  result = sub_266ECAF2C(&qword_2800F9748, &qword_2800F1FE0, 0x277D5A6A0);
  a1[3] = result;
  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x7574655369726973, 0xEB00000000644970);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x7574655369726973, 0xEB00000000644970);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788E068);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2672949D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267294A38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SIRISETUPSchemaSIRISETUPEnrollmentUIMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026748CB90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x800000026748CBC0, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026748CBF0, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026748CC20, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x800000026748CC50, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x800000026748CC80, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x800000026748CCB0, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000029, 0x800000026748CCE0, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000029, 0x800000026748CD10, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002BLL, 0x800000026748CD40, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_26729500C(uint64_t a1)
{
  v2 = sub_267295110(&qword_2800F9750);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267295074(uint64_t a1, uint64_t a2)
{
  v4 = sub_267295110(&qword_2800F9750);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267295110(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026748CDB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026748CDE0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x800000026748CE10, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026748CE40, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x800000026748CE70, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26729544C(uint64_t a1)
{
  v2 = sub_267295550(&qword_2800F9758);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672954B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267295550(&qword_2800F9758);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267295550(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x800000026748CEE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026748CF10, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x800000026748CF40, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x800000026748CF70, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_26729581C(uint64_t a1)
{
  v2 = sub_267295920(&qword_2800F9760);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267295884(uint64_t a1, uint64_t a2)
{
  v4 = sub_267295920(&qword_2800F9760);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267295920(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x800000026748CFE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026748D010, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026748D040, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_267295B7C(uint64_t a1)
{
  v2 = sub_267295C80(&qword_2800F9768);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267295BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267295C80(&qword_2800F9768);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267295C80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v58 = *MEMORY[0x277D3E538];
  v12 = *(v4 + 104);
  v63 = v4 + 104;
  v66 = v12;
  v12(v7);
  v67[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v17 = v13;
  v15(v11, 0, 1);
  v64 = v16;
  v61 = v15;
  v62 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x626D754E65676170, 0xEA00000000007265);
  v18(v67, 0);
  v57 = *MEMORY[0x277D3E530];
  v19 = v7;
  v20 = v7;
  v65 = v3;
  v21 = v66;
  v66(v20);
  v67[0] = 1;
  sub_26738114C();
  (v15)(v11, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x6449657361726870, 0xE800000000000000);
  v22(v67, 0);
  v56 = "DigitalZeroDetectionCompleted";
  v23 = v19;
  v24 = v19;
  v25 = v58;
  v21(v24, v58, v3);
  v67[0] = 1;
  sub_26738114C();
  v26 = v61;
  v61(v11, 0, 1, v17);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v56 | 0x8000000000000000);
  v27(v67, 0);
  v56 = "maxNumContinuousZeros";
  (v66)(v23, v25, v65);
  v67[0] = 1;
  sub_26738114C();
  v60 = v17;
  v26(v11, 0, 1, v17);
  v28 = v26;
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v56 | 0x8000000000000000);
  v29(v67, 0);
  v58 = *MEMORY[0x277D3E4E8];
  v30 = v23;
  v31 = v23;
  v32 = v66;
  v66(v31);
  v67[0] = 1;
  sub_26738114C();
  v28(v11, 0, 1, v17);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000024, 0x800000026748D100);
  v33(v67, 0);
  v55 = v30;
  v56 = "usZerosOverThreshold";
  v34 = v57;
  v35 = v65;
  v32(v30, v57, v65);
  v67[0] = 1;
  sub_26738114C();
  v36 = v60;
  v28(v11, 0, 1, v60);
  v37 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, v56 | 0x8000000000000000);
  v37(v67, 0);
  v38 = v55;
  (v66)(v55, v34, v35);
  v67[0] = 1;
  sub_26738114C();
  v28(v11, 0, 1, v36);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0x656C61636F6CLL, 0xE600000000000000);
  v39(v67, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPTrainingManagerStageStatus(0);
  sub_267296848(&qword_2800F9770, type metadata accessor for SIRISETUPSchemaSIRISETUPTrainingManagerStageStatus);
  sub_26738120C();
  v40 = v36;
  v28(v11, 0, 1, v36);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0x6174536567617473, 0xEB00000000737574);
  v41(v67, 0);
  v59 = "vtAssetConfigVersion";
  v42 = v38;
  v43 = v38;
  v44 = v58;
  v46 = v65;
  v45 = v66;
  (v66)(v43, v58, v65);
  v67[0] = 1;
  sub_26738114C();
  v47 = v40;
  v48 = v61;
  v61(v11, 0, 1, v47);
  v49 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v59 | 0x8000000000000000);
  v49(v67, 0);
  v59 = "speechStartPointDetected";
  v45(v42, v44, v46);
  v67[0] = 1;
  sub_26738114C();
  v50 = v60;
  v48(v11, 0, 1, v60);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v59 | 0x8000000000000000);
  v51(v67, 0);
  v45(v42, v44, v65);
  v67[0] = 1;
  sub_26738114C();
  v48(v11, 0, 1, v50);
  v52 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x800000026748D190);
  return v52(v67, 0);
}

uint64_t sub_26729673C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672967A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267296848(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267296890()
{
  result = qword_2800F96C8;
  if (!qword_2800F96C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F96C8);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPPHSEnrollmentPageAttempts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x626D754E65676170, 0xEA00000000007265);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6D657474416D756ELL, 0xEB00000000737470);
  return v16(v20, 0);
}

uint64_t sub_267296C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267296C6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267296CD0()
{
  result = qword_2800F9778;
  if (!qword_2800F9778)
  {
    sub_267296D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9778);
  }

  return result;
}

unint64_t sub_267296D28()
{
  result = qword_2800F9780;
  if (!qword_2800F9780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9780);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v17 = "TUPPHSEnrollmentSessionSummary";
  v10 = *MEMORY[0x277D3E538];
  v18 = *(v2 + 104);
  v18(v5, v10, v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v17 | 0x8000000000000000);
  v13(v21, 0);
  v18(v5, v10, v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026748D250);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F9780, 0x277D5A6C0);
  sub_266ECAF2C(&qword_2800F9778, &qword_2800F9780, 0x277D5A6C0);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574744165676170, 0xEC0000007374706DLL);
  return v15(v21, 0);
}

uint64_t sub_267297188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672971EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode(0);
  sub_267297808(&qword_2800F64A0, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D6C6C6F726E65, 0xEE0065646F4D746ELL);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C61636F6CLL, 0xE600000000000000);
  v11(v17, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome(0);
  sub_267297808(&qword_2800F64B0, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026746BE90);
  v12(v17, 0);
  (*(v15 + 104))(v3, *MEMORY[0x277D3E538], v16);
  v17[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x626D754E65676170, 0xEA00000000007265);
  return v13(v17, 0);
}

uint64_t sub_267297744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672977A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267297808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode(0);
  sub_267297CD4(&qword_2800F64A0, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6C6C6F726E65, 0xEE0065646F4D746ELL);
  v6(v10, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType(0);
  sub_267297CD4(&qword_2800F64A8, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026746BE70);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_267297C10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267297C74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267297CD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v35 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v33 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v37 = v3 + 104;
  v38 = v12;
  (v12)(v6, v11, v2);
  v39[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x626D754E65676170, 0xEA00000000007265);
  v17(v39, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode(0);
  sub_267298554(&qword_2800F64A0, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode);
  sub_26738120C();
  v15(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D6C6C6F726E65, 0xEE0065646F4D746ELL);
  v18(v39, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v19 = v13;
  v15(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x656C61636F6CLL, 0xE600000000000000);
  v20(v39, 0);
  v34 = *MEMORY[0x277D3E4E8];
  v21 = v35;
  v38(v6);
  v39[0] = 1;
  v22 = v6;
  sub_26738114C();
  v23 = v19;
  v36 = v19;
  v15(v10, 0, 1, v19);
  v33[1] = a1;
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x79727465527369, 0xE700000000000000);
  v24(v39, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome(0);
  sub_267298554(&qword_2800F64B8, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome);
  sub_26738120C();
  v15(v10, 0, 1, v23);
  v33[2] = v16;
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x676E696E69617274, 0xEF656D6F6374754FLL);
  v25(v39, 0);
  v33[0] = "UIUtteranceTrainingAttempted";
  v26 = v22;
  v27 = v22;
  v28 = v34;
  v29 = v38;
  (v38)(v27, v34, v21);
  v39[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v36);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v33[0] | 0x8000000000000000);
  v30(v39, 0);
  v29(v26, v28, v21);
  v39[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v36);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026748D360);
  return v31(v39, 0);
}

uint64_t sub_267298490(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672984F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267298554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v34 = *MEMORY[0x277D3E538];
  v33 = *(v3 + 104);
  v37 = v3 + 104;
  v11 = v2;
  v33(v6);
  v38[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v32 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x626D754E65676170, 0xEA00000000007265);
  v14(v38, 0);
  v15 = *MEMORY[0x277D3E530];
  v16 = v11;
  v36 = v11;
  v17 = v11;
  v18 = v33;
  (v33)(v6, v15, v17);
  v38[0] = 1;
  sub_26738114C();
  v35 = v12;
  v13(v10, 0, 1, v12);
  v31[1] = a1;
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x6449657361726870, 0xE800000000000000);
  v19(v38, 0);
  v31[0] = "UtteranceCompleted";
  v20 = v18;
  (v18)(v6, *MEMORY[0x277D3E500], v16);
  v38[0] = 1;
  sub_26738114C();
  v21 = v12;
  v22 = v32;
  v32(v10, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v31[0] | 0x8000000000000000);
  v23(v38, 0);
  v31[0] = "topScoreForUtterance";
  v24 = v34;
  (v20)(v6, v34, v36);
  v38[0] = 1;
  sub_26738114C();
  v25 = v35;
  v22(v10, 0, 1, v35);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v31[0] | 0x8000000000000000);
  v26(v38, 0);
  v27 = v36;
  (v20)(v6, v24, v36);
  v38[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C706D6153646E65, 0xEE00746E756F4365);
  v28(v38, 0);
  (v20)(v6, *MEMORY[0x277D3E4E8], v27);
  v38[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v35);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026748D410);
  return v29(v38, 0);
}

uint64_t sub_267298C54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267298CB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267298D1C()
{
  result = qword_2800F96E0;
  if (!qword_2800F96E0)
  {
    sub_267298D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F96E0);
  }

  return result;
}

unint64_t sub_267298D74()
{
  result = qword_2800F96D8;
  if (!qword_2800F96D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F96D8);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v22[0] = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v1 + 104);
  v22[1] = v1 + 104;
  v23 = v10;
  v10(v4, v9, v0);
  v25[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x626D754E65676170, 0xEA00000000007265);
  v13(v25, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496F69647561, 0xE700000000000000);
  v14(v25, 0);
  type metadata accessor for SISchemaTriggerPhrase(0);
  sub_2672994C0();
  sub_26738120C();
  v24 = v11;
  v12(v8, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x5072656767697274, 0xED00006573617268);
  v15(v25, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x75706E4969726973, 0xEF656C61636F4C74);
  v16(v25, 0);
  v17 = v22[0];
  v18 = v23;
  v23(v4, *MEMORY[0x277D3E540], v22[0]);
  v25[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v24);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D6C6C6F726E65, 0xEE0065746144746ELL);
  v19(v25, 0);
  v18(v4, *MEMORY[0x277D3E4E8], v17);
  v25[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v24);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026748D480);
  return v20(v25, 0);
}

uint64_t sub_2672993FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267299460(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672994C0()
{
  result = qword_2800F66B8;
  if (!qword_2800F66B8)
  {
    type metadata accessor for SISchemaTriggerPhrase(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F66B8);
  }

  return result;
}

uint64_t static SIRISETUPSchemaSIRISETUPTrainingManagerStageStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026748D4E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026748D510, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x800000026748D540, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003FLL, 0x800000026748D580, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000033, 0x800000026748D5C0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x800000026748D600, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000032, 0x800000026748D630, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ALL, 0x800000026748D670, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002CLL, 0x800000026748D6A0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_267299A18(uint64_t a1)
{
  v2 = sub_267299B1C(&qword_2800F9788);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267299A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_267299B1C(&qword_2800F9788);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267299B1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SIRISETUPSchemaSIRISETUPTrainingManagerStageStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaABClientEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9790, 0x277D5A708);
  sub_266ECAF2C(&qword_2800F9798, &qword_2800F9790, 0x277D5A708);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F97A0, 0x277D5A718);
  sub_266ECAF2C(&qword_2800F97A8, &qword_2800F97A0, 0x277D5A718);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026748D700);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F97B0, 0x277D5A720);
  sub_266ECAF2C(&qword_2800F97B8, &qword_2800F97B0, 0x277D5A720);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x800000026748D720);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F97C0, 0x277D5A728);
  sub_266ECAF2C(&qword_2800F97C8, &qword_2800F97C0, 0x277D5A728);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026748D740);
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
  sub_266ECB128(&unk_28788E098);
  return sub_2673811CC();
}

uint64_t sub_26729A144(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26729A1DC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26729A2A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729A30C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26729A36C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F97D0, &qword_2800F97D8, 0x277D5A700);
  a1[2] = sub_266ECAF2C(&qword_2800F97E0, &qword_2800F97D8, 0x277D5A700);
  result = sub_266ECAF2C(&qword_2800F97E8, &qword_2800F97D8, 0x277D5A700);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaABClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_266EC637C(v9, 0x6976654469726973, 0xEC00000064496563);
  v12(v33, 0);
  v31 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v32, 0x6976654469726973, 0xEC00000064496563);
  v23 = *(v11 + 48);
  if (!v23(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788E0D0);
    sub_26738115C();
  }

  (v14)(v32, 0);
  v13(v33, 0);
  sub_26738120C();
  v29(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449686365657073, 0xE800000000000000);
  v16(v33, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v32, 0x6449686365657073, 0xE800000000000000);
  if (!v23(v19, 1, v10))
  {
    sub_266ECB128(&unk_28788E100);
    sub_26738115C();
  }

  (v18)(v32, 0);
  v17(v33, 0);
  (*(v26 + 104))(v27, *MEMORY[0x277D3E518], v28);
  v33[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026742B790);
  v20(v33, 0);
  sub_266ECB128(&unk_28788E130);
  return sub_2673811CC();
}

uint64_t sub_26729A99C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729AA00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaABExperimentAllocation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v21[1] = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v22 = v2;
  v23 = v12;
  v12(v6, v11, v2);
  v24[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D697265707865, 0xEC0000006449746ELL);
  v15(v24, 0);
  v16 = v2;
  v17 = v23;
  v23(v6, v11, v16);
  v24[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E656D7461657274, 0xEB00000000644974);
  v18(v24, 0);
  v17(v6, *MEMORY[0x277D3E510], v22);
  v24[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D796F6C706564, 0xEC0000006449746ELL);
  return v19(v24, 0);
}

uint64_t sub_26729AE9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729AF00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26729AF64()
{
  result = qword_2800F97F8;
  if (!qword_2800F97F8)
  {
    sub_26729AFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F97F8);
  }

  return result;
}

unint64_t sub_26729AFBC()
{
  result = qword_2800F9800;
  if (!qword_2800F9800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9800);
  }

  return result;
}

uint64_t static SISchemaABExperimentAllocationChanged.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9800, 0x277D5A710);
  sub_266ECAF2C(&qword_2800F97F8, &qword_2800F9800, 0x277D5A710);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_26729B1E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9800, 0x277D5A710);
  sub_266ECAF2C(&qword_2800F97F8, &qword_2800F9800, 0x277D5A710);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_26729B388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729B3EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaABExperimentAssetRetrievalStatusChanged.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x656D697265707865, 0xEC0000006449746ELL);
  v12(v21, 0);
  v13 = v19;
  (v8)(v3, v20, v19);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x64497465737361, 0xE700000000000000);
  v14(v21, 0);
  (v18)(v3, *MEMORY[0x277D3E520], v13);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026748D840);
  return v15(v21, 0);
}

uint64_t sub_26729B884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729B8E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26729B94C()
{
  result = qword_2800F97B8;
  if (!qword_2800F97B8)
  {
    sub_26729B9A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F97B8);
  }

  return result;
}

unint64_t sub_26729B9A4()
{
  result = qword_2800F97B0;
  if (!qword_2800F97B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F97B0);
  }

  return result;
}

uint64_t static SISchemaABExperimentClientFeatureTriggered.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x64496E727574, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D697265707865, 0xEC0000006449746ELL);
  return v11(v15, 0);
}

uint64_t sub_26729BD28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729BD8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaABExperimentServerFeatureTriggered.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x64496E727574, 0xE600000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D697265707865, 0xEC0000006449746ELL);
  return v11(v15, 0);
}

uint64_t sub_26729C168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729C1CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaABServerEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F9818, 0x277D5A740);
  sub_266ECAF2C(&qword_2800F9820, &qword_2800F9818, 0x277D5A740);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F9810, 0x277D5A730);
  sub_266ECAF2C(&qword_2800F9808, &qword_2800F9810, 0x277D5A730);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026748D910);
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
  sub_266ECB128(&unk_28788E160);
  return sub_2673811CC();
}

uint64_t sub_26729C6A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26729C738()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26729C804(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729C868(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26729C8C8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9828, &qword_2800F9830, 0x277D5A738);
  a1[2] = sub_266ECAF2C(&qword_2800F9838, &qword_2800F9830, 0x277D5A738);
  result = sub_266ECAF2C(&qword_2800F9840, &qword_2800F9830, 0x277D5A738);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaABSeverEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_266EC637C(v9, 0x6976654469726973, 0xEC00000064496563);
  v12(v33, 0);
  v31 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v32, 0x6976654469726973, 0xEC00000064496563);
  v23 = *(v11 + 48);
  if (!v23(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788E198);
    sub_26738115C();
  }

  (v14)(v32, 0);
  v13(v33, 0);
  sub_26738120C();
  v29(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449686365657073, 0xE800000000000000);
  v16(v33, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v32, 0x6449686365657073, 0xE800000000000000);
  if (!v23(v19, 1, v10))
  {
    sub_266ECB128(&unk_28788E1C8);
    sub_26738115C();
  }

  (v18)(v32, 0);
  v17(v33, 0);
  (*(v26 + 104))(v27, *MEMORY[0x277D3E510], v28);
  v33[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D617473656D6974, 0xEB00000000734E70);
  v20(v33, 0);
  sub_266ECB128(&unk_28788E1F8);
  return sub_2673811CC();
}

uint64_t sub_26729CEFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729CF60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaAcousticProfile.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 97, 0xE100000000000000);
  return v10(v12, 0);
}

uint64_t sub_26729D244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729D2A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26729D30C()
{
  result = qword_2800F9850;
  if (!qword_2800F9850)
  {
    sub_26729D364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9850);
  }

  return result;
}

unint64_t sub_26729D364()
{
  result = qword_2800F9858;
  if (!qword_2800F9858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9858);
  }

  return result;
}

uint64_t static SISchemaActiveAudioDevice.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v19 = "iri.anc.ANCAudioDevice";
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026741E110);
  return v16(v21, 0);
}

uint64_t sub_26729D6E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729D748(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26729D7AC()
{
  result = qword_2800F9860;
  if (!qword_2800F9860)
  {
    sub_26729D804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9860);
  }

  return result;
}

unint64_t sub_26729D804()
{
  result = qword_2800F9868;
  if (!qword_2800F9868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9868);
  }

  return result;
}

uint64_t static SISchemaActiveStatus.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F9868, 0x277D5A750);
  sub_266ECAF2C(&qword_2800F9860, &qword_2800F9868, 0x277D5A750);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026748D9F0);
  v11(v17, 0);
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v16);
  v17[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026748DA10);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F9870, 0x277D5A7D8);
  sub_266ECAF2C(&qword_2800F9878, &qword_2800F9870, 0x277D5A7D8);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, 0x800000026748DA30);
  return v13(v17, 0);
}

uint64_t sub_26729DC6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729DCD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaAdaptiveVolumeUserIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026748DAA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026748DAD0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026748DB00, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026748DB20, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x800000026748DB50, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26729E06C(uint64_t a1)
{
  v2 = sub_26729E170(&qword_2800F9898);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26729E0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26729E170(&qword_2800F9898);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26729E170(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaAdaptiveVolumeUserIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaAdaptiveVolumeUserPreferences.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaAdaptiveVolumeUserIntent(0);
  sub_26729E6C8(&qword_2800F9890, type metadata accessor for SISchemaAdaptiveVolumeUserIntent);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026748DBC0);
  v11(v22, 0);
  v19 = "isMediaPlaybackOn";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = v20;
  v14 = *(v21 + 104);
  v21 += 104;
  v14(v4, v12, v20);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v19 | 0x8000000000000000);
  v15(v22, 0);
  v14(v4, *MEMORY[0x277D3E500], v13);
  v22[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267453850);
  return v16(v22, 0);
}

uint64_t sub_26729E5BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729E620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26729E6C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26729E710()
{
  result = qword_2800F98A8;
  if (!qword_2800F98A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F98A8);
  }

  return result;
}

uint64_t static SISchemaAggregatedMetrics.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F98B0, 0x277D5ACC0);
  sub_266ECAF2C(&qword_2800F98B8, &qword_2800F98B0, 0x277D5ACC0);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6972546563696F76, 0xEC00000072656767);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F98C0, 0x277D5A9E8);
  sub_266ECAF2C(&qword_2800F98C8, &qword_2800F98C0, 0x277D5A9E8);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026748DC10);
  return v7(v9, 0);
}

uint64_t sub_26729EA34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729EA98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaAnnounceCarPlayBannerTapped.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26729ED84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729EDE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26729EE4C()
{
  result = qword_2800F98E0;
  if (!qword_2800F98E0)
  {
    sub_26729EEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F98E0);
  }

  return result;
}

unint64_t sub_26729EEA4()
{
  result = qword_2800F98E8;
  if (!qword_2800F98E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F98E8);
  }

  return result;
}

uint64_t static SISchemaAnnounceCarPlayGlyphSettingToggled.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026748DCB0);
  return v10(v12, 0);
}

uint64_t sub_26729F140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729F1A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26729F208()
{
  result = qword_2800F98F0;
  if (!qword_2800F98F0)
  {
    sub_26729F260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F98F0);
  }

  return result;
}

unint64_t sub_26729F260()
{
  result = qword_2800F98F8;
  if (!qword_2800F98F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F98F8);
  }

  return result;
}

uint64_t static SISchemaAnnounceEnabledStatus.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4E8], v1);
  v21[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x800000026748DD10);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0xD000000000000017, 0x800000026748DD10);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_28788E228);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F9900, 0x277D5A788);
  sub_266ECAF2C(&qword_2800F9908, &qword_2800F9900, 0x277D5A788);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026748DD30);
  return v17(v21, 0);
}

uint64_t sub_26729F690(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729F6F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaAnnounceNotifications.makeTypeManifestAndEnsureFields(in:)(char *a1)
{
  v35 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v38 = *MEMORY[0x277D3E4E8];
  v37 = *(v2 + 104);
  v39 = v2 + 104;
  v10 = v1;
  v37(v5);
  v40[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v36 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C62616E457369, 0xE900000000000064);
  v15(v40, 0);
  v31 = v5;
  v16 = v5;
  v17 = v38;
  v34 = v1;
  v18 = v37;
  (v37)(v16, v38, v34);
  v40[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x64726143786F7270, 0xEC0000006E656553);
  v19(v40, 0);
  v32 = "nounceNotifications";
  v20 = v31;
  v18(v31, v17, v10);
  v40[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v32 | 0x8000000000000000);
  v21(v40, 0);
  type metadata accessor for SISchemaAnnounceNotificationsCarPlayStatus(0);
  sub_26729FF2C(&qword_2800F9920, type metadata accessor for SISchemaAnnounceNotificationsCarPlayStatus);
  sub_26738120C();
  v22 = v11;
  v33 = v11;
  v13(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x5379616C50726163, 0xED00007375746174);
  v23(v40, 0);
  v35 = "nfirmationEnabled";
  v24 = v38;
  v25 = v34;
  v26 = v37;
  (v37)(v20, v38, v34);
  v40[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v35 | 0x8000000000000000);
  v27(v40, 0);
  v26(v20, v24, v25);
  v40[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v33);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x616C507261437369, 0xEE00646574754D79);
  return v28(v40, 0);
}

uint64_t sub_26729FE20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26729FE84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26729FF2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26729FF74()
{
  result = qword_2800F9900;
  if (!qword_2800F9900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9900);
  }

  return result;
}

uint64_t static SISchemaAnnounceNotificationsCarPlayStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026748DE00, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000038, 0x800000026748DE30, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x800000026748DE70, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003DLL, 0x800000026748DEB0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x800000026748DEF0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672A02B4(uint64_t a1)
{
  v2 = sub_2672A03B8(&qword_2800F9928);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672A031C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672A03B8(&qword_2800F9928);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672A03B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaAnnounceNotificationsCarPlayStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaAnyEvent.makeTypeManifestAndEnsureFields(in:)()
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
  type metadata accessor for SISchemaAnyEventType(0);
  sub_2672A0838(&qword_2800F3C30, type metadata accessor for SISchemaAnyEventType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E657645796E61, 0xEC00000065707954);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E4F8], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64616F6C796170, 0xE700000000000000);
  return v11(v15, 0);
}

uint64_t sub_2672A072C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672A0790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672A0838(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672A0880()
{
  result = qword_2800F1D90;
  if (!qword_2800F1D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1D90);
  }

  return result;
}

uint64_t static SISchemaAnyEventType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1528 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x5F4E574F4E4B4E55, 0xED0000544E455645, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v1528;

  v1(v1746, 0);
  v7 = sub_266ECB128(&unk_28788E250);
  v9 = v8;
  v10 = sub_2673810FC();
  v12 = v11;
  v13 = *v11;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v1529 = *v12;
  *v12 = 0x8000000000000000;
  sub_266ECD4CC(v7, v9, 0, v14);
  *v12 = v1529;
  v10(v1746, 0);
  v15 = sub_26738111C();
  v17 = v16;
  v18 = *v16;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v1530 = *v17;
  *v17 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x800000026748DF70, v19);
  v20 = *v17;
  *v17 = v1530;

  v15(v1746, 0);
  v21 = sub_266ECB128(&unk_28788E288);
  v23 = v22;
  v24 = sub_2673810FC();
  v26 = v25;
  v27 = *v25;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v1531 = *v26;
  *v26 = 0x8000000000000000;
  sub_266ECD4CC(v21, v23, 1, v28);
  *v26 = v1531;
  v24(v1746, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = *v30;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v1532 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x800000026748DF90, v33);
  v34 = *v31;
  *v31 = v1532;

  v29(v1746, 0);
  v35 = sub_266ECB128(&unk_28788E2D8);
  v37 = v36;
  v38 = sub_2673810FC();
  v40 = v39;
  v41 = *v39;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v1533 = *v40;
  *v40 = 0x8000000000000000;
  sub_266ECD4CC(v35, v37, 2, v42);
  *v40 = v1533;
  v38(v1746, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v1534 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x800000026748DFB0, v47);
  v48 = *v45;
  *v45 = v1534;

  v43(v1746, 0);
  v49 = sub_266ECB128(&unk_28788E328);
  v51 = v50;
  v52 = sub_2673810FC();
  v54 = v53;
  v55 = *v53;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v1535 = *v54;
  *v54 = 0x8000000000000000;
  sub_266ECD4CC(v49, v51, 3, v56);
  *v54 = v1535;
  v52(v1746, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = *v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v1536 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(4, 0x4E45494C435F544DLL, 0xEF544E4556455F54, v61);
  v62 = *v59;
  *v59 = v1536;

  v57(v1746, 0);
  v63 = sub_266ECB128(&unk_28788E388);
  v65 = v64;
  v66 = sub_2673810FC();
  v68 = v67;
  v69 = *v67;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v1537 = *v68;
  *v68 = 0x8000000000000000;
  sub_266ECD4CC(v63, v65, 4, v70);
  *v68 = v1537;
  v66(v1746, 0);
  v71 = sub_26738111C();
  v73 = v72;
  v74 = *v72;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v1538 = *v73;
  *v73 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x800000026748DFD0, v75);
  v76 = *v73;
  *v73 = v1538;

  v71(v1746, 0);
  v77 = sub_266ECB128(&unk_28788E3E0);
  v79 = v78;
  v80 = sub_2673810FC();
  v82 = v81;
  v83 = *v81;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v1539 = *v82;
  *v82 = 0x8000000000000000;
  sub_266ECD4CC(v77, v79, 5, v84);
  *v82 = v1539;
  v80(v1746, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v1540 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x800000026748DFF0, v89);
  v90 = *v87;
  *v87 = v1540;

  v85(v1746, 0);
  v91 = sub_266ECB128(&unk_28788E430);
  v93 = v92;
  v94 = sub_2673810FC();
  v96 = v95;
  v97 = *v95;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v1541 = *v96;
  *v96 = 0x8000000000000000;
  sub_266ECD4CC(v91, v93, 6, v98);
  *v96 = v1541;
  v94(v1746, 0);
  v99 = sub_26738111C();
  v101 = v100;
  v102 = *v100;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v1542 = *v101;
  *v101 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x800000026748E010, v103);
  v104 = *v101;
  *v101 = v1542;

  v99(v1746, 0);
  v105 = sub_266ECB128(&unk_28788E488);
  v107 = v106;
  v108 = sub_2673810FC();
  v110 = v109;
  v111 = *v109;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v1543 = *v110;
  *v110 = 0x8000000000000000;
  sub_266ECD4CC(v105, v107, 7, v112);
  *v110 = v1543;
  v108(v1746, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = *v114;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v1544 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000015, 0x800000026748E030, v117);
  v118 = *v115;
  *v115 = v1544;

  v113(v1746, 0);
  v119 = sub_266ECB128(&unk_28788E4E0);
  v121 = v120;
  v122 = sub_2673810FC();
  v124 = v123;
  v125 = *v123;
  v126 = swift_isUniquelyReferenced_nonNull_native();
  v1545 = *v124;
  *v124 = 0x8000000000000000;
  sub_266ECD4CC(v119, v121, 8, v126);
  *v124 = v1545;
  v122(v1746, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v1546 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000012, 0x800000026748E050, v131);
  v132 = *v129;
  *v129 = v1546;

  v127(v1746, 0);
  v133 = sub_266ECB128(&unk_28788E548);
  v135 = v134;
  v136 = sub_2673810FC();
  v138 = v137;
  v139 = *v137;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v1547 = *v138;
  *v138 = 0x8000000000000000;
  sub_266ECD4CC(v133, v135, 9, v140);
  *v138 = v1547;
  v136(v1746, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = *v142;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v1548 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000010, 0x800000026748E070, v145);
  v146 = *v143;
  *v143 = v1548;

  v141(v1746, 0);
  v147 = sub_266ECB128(&unk_28788E5A0);
  v149 = v148;
  v150 = sub_2673810FC();
  v152 = v151;
  v153 = *v151;
  v154 = swift_isUniquelyReferenced_nonNull_native();
  v1549 = *v152;
  *v152 = 0x8000000000000000;
  sub_266ECD4CC(v147, v149, 10, v154);
  *v152 = v1549;
  v150(v1746, 0);
  v155 = sub_26738111C();
  v157 = v156;
  v158 = *v156;
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v1550 = *v157;
  *v157 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000010, 0x800000026748E090, v159);
  v160 = *v157;
  *v157 = v1550;

  v155(v1746, 0);
  v161 = sub_266ECB128(&unk_28788E5F8);
  v163 = v162;
  v164 = sub_2673810FC();
  v166 = v165;
  v167 = *v165;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v1551 = *v166;
  *v166 = 0x8000000000000000;
  sub_266ECD4CC(v161, v163, 11, v168);
  *v166 = v1551;
  v164(v1746, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v1552 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000011, 0x800000026748E0B0, v173);
  v174 = *v171;
  *v171 = v1552;

  v169(v1746, 0);
  v175 = sub_266ECB128(&unk_28788E650);
  v177 = v176;
  v178 = sub_2673810FC();
  v180 = v179;
  v181 = *v179;
  v182 = swift_isUniquelyReferenced_nonNull_native();
  v1553 = *v180;
  *v180 = 0x8000000000000000;
  sub_266ECD4CC(v175, v177, 12, v182);
  *v180 = v1553;
  v178(v1746, 0);
  v183 = sub_26738111C();
  v185 = v184;
  v186 = *v184;
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v1554 = *v185;
  *v185 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000011, 0x800000026748E0D0, v187);
  v188 = *v185;
  *v185 = v1554;

  v183(v1746, 0);
  v189 = sub_266ECB128(&unk_28788E6A8);
  v191 = v190;
  v192 = sub_2673810FC();
  v194 = v193;
  v195 = *v193;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v1555 = *v194;
  *v194 = 0x8000000000000000;
  sub_266ECD4CC(v189, v191, 13, v196);
  *v194 = v1555;
  v192(v1746, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = *v198;
  v201 = swift_isUniquelyReferenced_nonNull_native();
  v1556 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000010, 0x800000026748E0F0, v201);
  v202 = *v199;
  *v199 = v1556;

  v197(v1746, 0);
  v203 = sub_266ECB128(&unk_28788E700);
  v205 = v204;
  v206 = sub_2673810FC();
  v208 = v207;
  v209 = *v207;
  v210 = swift_isUniquelyReferenced_nonNull_native();
  v1557 = *v208;
  *v208 = 0x8000000000000000;
  sub_266ECD4CC(v203, v205, 14, v210);
  *v208 = v1557;
  v206(v1746, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v1558 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ELL, 0x800000026748E110, v215);
  v216 = *v213;
  *v213 = v1558;

  v211(v1746, 0);
  v217 = sub_266ECB128(&unk_28788E758);
  v219 = v218;
  v220 = sub_2673810FC();
  v222 = v221;
  v223 = *v221;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v1559 = *v222;
  *v222 = 0x8000000000000000;
  sub_266ECD4CC(v217, v219, 15, v224);
  *v222 = v1559;
  v220(v1746, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = *v226;
  v229 = swift_isUniquelyReferenced_nonNull_native();
  v1560 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000010, 0x800000026748E130, v229);
  v230 = *v227;
  *v227 = v1560;

  v225(v1746, 0);
  v231 = sub_266ECB128(&unk_28788E7B0);
  v233 = v232;
  v234 = sub_2673810FC();
  v236 = v235;
  v237 = *v235;
  v238 = swift_isUniquelyReferenced_nonNull_native();
  v1561 = *v236;
  *v236 = 0x8000000000000000;
  sub_266ECD4CC(v231, v233, 16, v238);
  *v236 = v1561;
  v234(v1746, 0);
  v239 = sub_26738111C();
  v241 = v240;
  v242 = *v240;
  v243 = swift_isUniquelyReferenced_nonNull_native();
  v1562 = *v241;
  *v241 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000010, 0x800000026748E150, v243);
  v244 = *v241;
  *v241 = v1562;

  v239(v1746, 0);
  v245 = sub_266ECB128(&unk_28788E808);
  v247 = v246;
  v248 = sub_2673810FC();
  v250 = v249;
  v251 = *v249;
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v1563 = *v250;
  *v250 = 0x8000000000000000;
  sub_266ECD4CC(v245, v247, 17, v252);
  *v250 = v1563;
  v248(v1746, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v1564 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000010, 0x800000026748E170, v257);
  v258 = *v255;
  *v255 = v1564;

  v253(v1746, 0);
  v259 = sub_266ECB128(&unk_28788E860);
  v261 = v260;
  v262 = sub_2673810FC();
  v264 = v263;
  v265 = *v263;
  v266 = swift_isUniquelyReferenced_nonNull_native();
  v1565 = *v264;
  *v264 = 0x8000000000000000;
  sub_266ECD4CC(v259, v261, 18, v266);
  *v264 = v1565;
  v262(v1746, 0);
  v267 = sub_26738111C();
  v269 = v268;
  v270 = *v268;
  v271 = swift_isUniquelyReferenced_nonNull_native();
  v1566 = *v269;
  *v269 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000011, 0x800000026748E190, v271);
  v272 = *v269;
  *v269 = v1566;

  v267(v1746, 0);
  v273 = sub_266ECB128(&unk_28788E8B8);
  v275 = v274;
  v276 = sub_2673810FC();
  v278 = v277;
  v279 = *v277;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v1567 = *v278;
  *v278 = 0x8000000000000000;
  sub_266ECD4CC(v273, v275, 19, v280);
  *v278 = v1567;
  v276(v1746, 0);
  v281 = sub_26738111C();
  v283 = v282;
  v284 = *v282;
  v285 = swift_isUniquelyReferenced_nonNull_native();
  v1568 = *v283;
  *v283 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000010, 0x800000026748E1B0, v285);
  v286 = *v283;
  *v283 = v1568;

  v281(v1746, 0);
  v287 = sub_266ECB128(&unk_28788E910);
  v289 = v288;
  v290 = sub_2673810FC();
  v292 = v291;
  v293 = *v291;
  v294 = swift_isUniquelyReferenced_nonNull_native();
  v1569 = *v292;
  *v292 = 0x8000000000000000;
  sub_266ECD4CC(v287, v289, 20, v294);
  *v292 = v1569;
  v290(v1746, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v1570 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000011, 0x800000026748E1D0, v299);
  v300 = *v297;
  *v297 = v1570;

  v295(v1746, 0);
  v301 = sub_266ECB128(&unk_28788E968);
  v303 = v302;
  v304 = sub_2673810FC();
  v306 = v305;
  v307 = *v305;
  v308 = swift_isUniquelyReferenced_nonNull_native();
  v1571 = *v306;
  *v306 = 0x8000000000000000;
  sub_266ECD4CC(v301, v303, 21, v308);
  *v306 = v1571;
  v304(v1746, 0);
  v309 = sub_26738111C();
  v311 = v310;
  v312 = *v310;
  v313 = swift_isUniquelyReferenced_nonNull_native();
  v1572 = *v311;
  *v311 = 0x8000000000000000;
  sub_266ECD368(22, 0x4E45494C435F4849, 0xEF544E4556455F54, v313);
  v314 = *v311;
  *v311 = v1572;

  v309(v1746, 0);
  v315 = sub_266ECB128(&unk_28788E9C0);
  v317 = v316;
  v318 = sub_2673810FC();
  v320 = v319;
  v321 = *v319;
  v322 = swift_isUniquelyReferenced_nonNull_native();
  v1573 = *v320;
  *v320 = 0x8000000000000000;
  sub_266ECD4CC(v315, v317, 22, v322);
  *v320 = v1573;
  v318(v1746, 0);
  v323 = sub_26738111C();
  v325 = v324;
  v326 = *v324;
  v327 = swift_isUniquelyReferenced_nonNull_native();
  v1574 = *v325;
  *v325 = 0x8000000000000000;
  sub_266ECD368(23, 0x4E45494C435F484DLL, 0xEF544E4556455F54, v327);
  v328 = *v325;
  *v325 = v1574;

  v323(v1746, 0);
  v329 = sub_266ECB128(&unk_28788EA10);
  v331 = v330;
  v332 = sub_2673810FC();
  v334 = v333;
  v335 = *v333;
  v336 = swift_isUniquelyReferenced_nonNull_native();
  v1575 = *v334;
  *v334 = 0x8000000000000000;
  sub_266ECD4CC(v329, v331, 23, v336);
  *v334 = v1575;
  v332(v1746, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v1576 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000010, 0x800000026748E1F0, v341);
  v342 = *v339;
  *v339 = v1576;

  v337(v1746, 0);
  v343 = sub_266ECB128(&unk_28788EA60);
  v345 = v344;
  v346 = sub_2673810FC();
  v348 = v347;
  v349 = *v347;
  v350 = swift_isUniquelyReferenced_nonNull_native();
  v1577 = *v348;
  *v348 = 0x8000000000000000;
  sub_266ECD4CC(v343, v345, 24, v350);
  *v348 = v1577;
  v346(v1746, 0);
  v351 = sub_26738111C();
  v353 = v352;
  v354 = *v352;
  v355 = swift_isUniquelyReferenced_nonNull_native();
  v1578 = *v353;
  *v353 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000010, 0x800000026748E210, v355);
  v356 = *v353;
  *v353 = v1578;

  v351(v1746, 0);
  v357 = sub_266ECB128(&unk_28788EAB8);
  v359 = v358;
  v360 = sub_2673810FC();
  v362 = v361;
  v363 = *v361;
  v364 = swift_isUniquelyReferenced_nonNull_native();
  v1579 = *v362;
  *v362 = 0x8000000000000000;
  sub_266ECD4CC(v357, v359, 25, v364);
  *v362 = v1579;
  v360(v1746, 0);
  v365 = sub_26738111C();
  v367 = v366;
  v368 = *v366;
  v369 = swift_isUniquelyReferenced_nonNull_native();
  v1580 = *v367;
  *v367 = 0x8000000000000000;
  sub_266ECD368(26, 0x4E45494C435F5252, 0xEF544E4556455F54, v369);
  v370 = *v367;
  *v367 = v1580;

  v365(v1746, 0);
  v371 = sub_266ECB128(&unk_28788EB10);
  v373 = v372;
  v374 = sub_2673810FC();
  v376 = v375;
  v377 = *v375;
  v378 = swift_isUniquelyReferenced_nonNull_native();
  v1581 = *v376;
  *v376 = 0x8000000000000000;
  sub_266ECD4CC(v371, v373, 26, v378);
  *v376 = v1581;
  v374(v1746, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v1582 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000010, 0x800000026748E230, v383);
  v384 = *v381;
  *v381 = v1582;

  v379(v1746, 0);
  v385 = sub_266ECB128(&unk_28788EB68);
  v387 = v386;
  v388 = sub_2673810FC();
  v390 = v389;
  v391 = *v389;
  v392 = swift_isUniquelyReferenced_nonNull_native();
  v1583 = *v390;
  *v390 = 0x8000000000000000;
  sub_266ECD4CC(v385, v387, 27, v392);
  *v390 = v1583;
  v388(v1746, 0);
  v393 = sub_26738111C();
  v395 = v394;
  v396 = *v394;
  v397 = swift_isUniquelyReferenced_nonNull_native();
  v1584 = *v395;
  *v395 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000010, 0x800000026748E250, v397);
  v398 = *v395;
  *v395 = v1584;

  v393(v1746, 0);
  v399 = sub_266ECB128(&unk_28788EBC0);
  v401 = v400;
  v402 = sub_2673810FC();
  v404 = v403;
  v405 = *v403;
  v406 = swift_isUniquelyReferenced_nonNull_native();
  v1585 = *v404;
  *v404 = 0x8000000000000000;
  sub_266ECD4CC(v399, v401, 28, v406);
  *v404 = v1585;
  v402(v1746, 0);
  v407 = sub_26738111C();
  v409 = v408;
  v410 = *v408;
  v411 = swift_isUniquelyReferenced_nonNull_native();
  v1586 = *v409;
  *v409 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000010, 0x800000026748E270, v411);
  v412 = *v409;
  *v409 = v1586;

  v407(v1746, 0);
  v413 = sub_266ECB128(&unk_28788EC18);
  v415 = v414;
  v416 = sub_2673810FC();
  v418 = v417;
  v419 = *v417;
  v420 = swift_isUniquelyReferenced_nonNull_native();
  v1587 = *v418;
  *v418 = 0x8000000000000000;
  sub_266ECD4CC(v413, v415, 29, v420);
  *v418 = v1587;
  v416(v1746, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v1588 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000023, 0x800000026748E290, v425);
  v426 = *v423;
  *v423 = v1588;

  v421(v1746, 0);
  v427 = sub_266ECB128(&unk_28788EC70);
  v429 = v428;
  v430 = sub_2673810FC();
  v432 = v431;
  v433 = *v431;
  v434 = swift_isUniquelyReferenced_nonNull_native();
  v1589 = *v432;
  *v432 = 0x8000000000000000;
  sub_266ECD4CC(v427, v429, 30, v434);
  *v432 = v1589;
  v430(v1746, 0);
  v435 = sub_26738111C();
  v437 = v436;
  v438 = *v436;
  v439 = swift_isUniquelyReferenced_nonNull_native();
  v1590 = *v437;
  *v437 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000010, 0x800000026748E2C0, v439);
  v440 = *v437;
  *v437 = v1590;

  v435(v1746, 0);
  v441 = sub_266ECB128(&unk_28788ECC8);
  v443 = v442;
  v444 = sub_2673810FC();
  v446 = v445;
  v447 = *v445;
  v448 = swift_isUniquelyReferenced_nonNull_native();
  v1591 = *v446;
  *v446 = 0x8000000000000000;
  sub_266ECD4CC(v441, v443, 31, v448);
  *v446 = v1591;
  v444(v1746, 0);
  v449 = sub_26738111C();
  v451 = v450;
  v452 = *v450;
  v453 = swift_isUniquelyReferenced_nonNull_native();
  v1592 = *v451;
  *v451 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000010, 0x800000026748E2E0, v453);
  v454 = *v451;
  *v451 = v1592;

  v449(v1746, 0);
  v455 = sub_266ECB128(&unk_28788ED20);
  v457 = v456;
  v458 = sub_2673810FC();
  v460 = v459;
  v461 = *v459;
  v462 = swift_isUniquelyReferenced_nonNull_native();
  v1593 = *v460;
  *v460 = 0x8000000000000000;
  sub_266ECD4CC(v455, v457, 32, v462);
  *v460 = v1593;
  v458(v1746, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v1594 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000010, 0x800000026748E300, v467);
  v468 = *v465;
  *v465 = v1594;

  v463(v1746, 0);
  v469 = sub_266ECB128(&unk_28788ED78);
  v471 = v470;
  v472 = sub_2673810FC();
  v474 = v473;
  v475 = *v473;
  v476 = swift_isUniquelyReferenced_nonNull_native();
  v1595 = *v474;
  *v474 = 0x8000000000000000;
  sub_266ECD4CC(v469, v471, 33, v476);
  *v474 = v1595;
  v472(v1746, 0);
  v477 = sub_26738111C();
  v479 = v478;
  v480 = *v478;
  v481 = swift_isUniquelyReferenced_nonNull_native();
  v1596 = *v479;
  *v479 = 0x8000000000000000;
  sub_266ECD368(34, 0x415441445F494644, 0xEE00544E4556455FLL, v481);
  v482 = *v479;
  *v479 = v1596;

  v477(v1746, 0);
  v483 = sub_266ECB128(&unk_28788EDD0);
  v485 = v484;
  v486 = sub_2673810FC();
  v488 = v487;
  v489 = *v487;
  v490 = swift_isUniquelyReferenced_nonNull_native();
  v1597 = *v488;
  *v488 = 0x8000000000000000;
  sub_266ECD4CC(v483, v485, 34, v490);
  *v488 = v1597;
  v486(v1746, 0);
  v491 = sub_26738111C();
  v493 = v492;
  v494 = *v492;
  v495 = swift_isUniquelyReferenced_nonNull_native();
  v1598 = *v493;
  *v493 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000018, 0x800000026748E320, v495);
  v496 = *v493;
  *v493 = v1598;

  v491(v1746, 0);
  v497 = sub_266ECB128(&unk_28788EE20);
  v499 = v498;
  v500 = sub_2673810FC();
  v502 = v501;
  v503 = *v501;
  v504 = swift_isUniquelyReferenced_nonNull_native();
  v1599 = *v502;
  *v502 = 0x8000000000000000;
  sub_266ECD4CC(v497, v499, 35, v504);
  *v502 = v1599;
  v500(v1746, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v1600 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000019, 0x800000026748E340, v509);
  v510 = *v507;
  *v507 = v1600;

  v505(v1746, 0);
  v511 = sub_266ECB128(&unk_28788EE80);
  v513 = v512;
  v514 = sub_2673810FC();
  v516 = v515;
  v517 = *v515;
  v518 = swift_isUniquelyReferenced_nonNull_native();
  v1601 = *v516;
  *v516 = 0x8000000000000000;
  sub_266ECD4CC(v511, v513, 36, v518);
  *v516 = v1601;
  v514(v1746, 0);
  v519 = sub_26738111C();
  v521 = v520;
  v522 = *v520;
  v523 = swift_isUniquelyReferenced_nonNull_native();
  v1602 = *v521;
  *v521 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000012, 0x800000026748E360, v523);
  v524 = *v521;
  *v521 = v1602;

  v519(v1746, 0);
  v525 = sub_266ECB128(&unk_28788EEE0);
  v527 = v526;
  v528 = sub_2673810FC();
  v530 = v529;
  v531 = *v529;
  v532 = swift_isUniquelyReferenced_nonNull_native();
  v1603 = *v530;
  *v530 = 0x8000000000000000;
  sub_266ECD4CC(v525, v527, 37, v532);
  *v530 = v1603;
  v528(v1746, 0);
  v533 = sub_26738111C();
  v535 = v534;
  v536 = *v534;
  v537 = swift_isUniquelyReferenced_nonNull_native();
  v1604 = *v535;
  *v535 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000011, 0x800000026748E380, v537);
  v538 = *v535;
  *v535 = v1604;

  v533(v1746, 0);
  v539 = sub_266ECB128(&unk_28788EF40);
  v541 = v540;
  v542 = sub_2673810FC();
  v544 = v543;
  v545 = *v543;
  v546 = swift_isUniquelyReferenced_nonNull_native();
  v1605 = *v544;
  *v544 = 0x8000000000000000;
  sub_266ECD4CC(v539, v541, 38, v546);
  *v544 = v1605;
  v542(v1746, 0);
  v547 = sub_26738111C();
  v549 = v548;
  v550 = *v548;
  v551 = swift_isUniquelyReferenced_nonNull_native();
  v1606 = *v549;
  *v549 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000017, 0x800000026748E3A0, v551);
  v552 = *v549;
  *v549 = v1606;

  v547(v1746, 0);
  v553 = sub_266ECB128(&unk_28788EFA0);
  v555 = v554;
  v556 = sub_2673810FC();
  v558 = v557;
  v559 = *v557;
  v560 = swift_isUniquelyReferenced_nonNull_native();
  v1607 = *v558;
  *v558 = 0x8000000000000000;
  sub_266ECD4CC(v553, v555, 39, v560);
  *v558 = v1607;
  v556(v1746, 0);
  v561 = sub_26738111C();
  v563 = v562;
  v564 = *v562;
  v565 = swift_isUniquelyReferenced_nonNull_native();
  v1608 = *v563;
  *v563 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000015, 0x800000026748E3C0, v565);
  v566 = *v563;
  *v563 = v1608;

  v561(v1746, 0);
  v567 = sub_266ECB128(&unk_28788F000);
  v569 = v568;
  v570 = sub_2673810FC();
  v572 = v571;
  v573 = *v571;
  v574 = swift_isUniquelyReferenced_nonNull_native();
  v1609 = *v572;
  *v572 = 0x8000000000000000;
  sub_266ECD4CC(v567, v569, 40, v574);
  *v572 = v1609;
  v570(v1746, 0);
  v575 = sub_26738111C();
  v577 = v576;
  v578 = *v576;
  v579 = swift_isUniquelyReferenced_nonNull_native();
  v1610 = *v577;
  *v577 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000011, 0x800000026748E3E0, v579);
  v580 = *v577;
  *v577 = v1610;

  v575(v1746, 0);
  v581 = sub_266ECB128(&unk_28788F060);
  v583 = v582;
  v584 = sub_2673810FC();
  v586 = v585;
  v587 = *v585;
  v588 = swift_isUniquelyReferenced_nonNull_native();
  v1611 = *v586;
  *v586 = 0x8000000000000000;
  sub_266ECD4CC(v581, v583, 41, v588);
  *v586 = v1611;
  v584(v1746, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = *v590;
  v593 = swift_isUniquelyReferenced_nonNull_native();
  v1612 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000013, 0x800000026748E400, v593);
  v594 = *v591;
  *v591 = v1612;

  v589(v1746, 0);
  v595 = sub_266ECB128(&unk_28788F0C0);
  v597 = v596;
  v598 = sub_2673810FC();
  v600 = v599;
  v601 = *v599;
  v602 = swift_isUniquelyReferenced_nonNull_native();
  v1613 = *v600;
  *v600 = 0x8000000000000000;
  sub_266ECD4CC(v595, v597, 42, v602);
  *v600 = v1613;
  v598(v1746, 0);
  v603 = sub_26738111C();
  v605 = v604;
  v606 = *v604;
  v607 = swift_isUniquelyReferenced_nonNull_native();
  v1614 = *v605;
  *v605 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000012, 0x800000026748E420, v607);
  v608 = *v605;
  *v605 = v1614;

  v603(v1746, 0);
  v609 = sub_266ECB128(&unk_28788F120);
  v611 = v610;
  v612 = sub_2673810FC();
  v614 = v613;
  v615 = *v613;
  v616 = swift_isUniquelyReferenced_nonNull_native();
  v1615 = *v614;
  *v614 = 0x8000000000000000;
  sub_266ECD4CC(v609, v611, 43, v616);
  *v614 = v1615;
  v612(v1746, 0);
  v617 = sub_26738111C();
  v619 = v618;
  v620 = *v618;
  v621 = swift_isUniquelyReferenced_nonNull_native();
  v1616 = *v619;
  *v619 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000010, 0x800000026748E440, v621);
  v622 = *v619;
  *v619 = v1616;

  v617(v1746, 0);
  v623 = sub_266ECB128(&unk_28788F178);
  v625 = v624;
  v626 = sub_2673810FC();
  v628 = v627;
  v629 = *v627;
  v630 = swift_isUniquelyReferenced_nonNull_native();
  v1617 = *v628;
  *v628 = 0x8000000000000000;
  sub_266ECD4CC(v623, v625, 44, v630);
  *v628 = v1617;
  v626(v1746, 0);
  v631 = sub_26738111C();
  v633 = v632;
  v634 = *v632;
  v635 = swift_isUniquelyReferenced_nonNull_native();
  v1618 = *v633;
  *v633 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000010, 0x800000026748E460, v635);
  v636 = *v633;
  *v633 = v1618;

  v631(v1746, 0);
  v637 = sub_266ECB128(&unk_28788F1D0);
  v639 = v638;
  v640 = sub_2673810FC();
  v642 = v641;
  v643 = *v641;
  v644 = swift_isUniquelyReferenced_nonNull_native();
  v1619 = *v642;
  *v642 = 0x8000000000000000;
  sub_266ECD4CC(v637, v639, 45, v644);
  *v642 = v1619;
  v640(v1746, 0);
  v645 = sub_26738111C();
  v647 = v646;
  v648 = *v646;
  v649 = swift_isUniquelyReferenced_nonNull_native();
  v1620 = *v647;
  *v647 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000011, 0x800000026748E480, v649);
  v650 = *v647;
  *v647 = v1620;

  v645(v1746, 0);
  v651 = sub_266ECB128(&unk_28788F228);
  v653 = v652;
  v654 = sub_2673810FC();
  v656 = v655;
  v657 = *v655;
  v658 = swift_isUniquelyReferenced_nonNull_native();
  v1621 = *v656;
  *v656 = 0x8000000000000000;
  sub_266ECD4CC(v651, v653, 46, v658);
  *v656 = v1621;
  v654(v1746, 0);
  v659 = sub_26738111C();
  v661 = v660;
  v662 = *v660;
  v663 = swift_isUniquelyReferenced_nonNull_native();
  v1622 = *v661;
  *v661 = 0x8000000000000000;
  sub_266ECD368(47, 0xD00000000000001DLL, 0x800000026748E4A0, v663);
  v664 = *v661;
  *v661 = v1622;

  v659(v1746, 0);
  v665 = sub_266ECB128(&unk_28788F288);
  v667 = v666;
  v668 = sub_2673810FC();
  v670 = v669;
  v671 = *v669;
  v672 = swift_isUniquelyReferenced_nonNull_native();
  v1623 = *v670;
  *v670 = 0x8000000000000000;
  sub_266ECD4CC(v665, v667, 47, v672);
  *v670 = v1623;
  v668(v1746, 0);
  v673 = sub_26738111C();
  v675 = v674;
  v676 = *v674;
  v677 = swift_isUniquelyReferenced_nonNull_native();
  v1624 = *v675;
  *v675 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000001FLL, 0x800000026748E4C0, v677);
  v678 = *v675;
  *v675 = v1624;

  v673(v1746, 0);
  v679 = sub_266ECB128(&unk_28788F2F0);
  v681 = v680;
  v682 = sub_2673810FC();
  v684 = v683;
  v685 = *v683;
  v686 = swift_isUniquelyReferenced_nonNull_native();
  v1625 = *v684;
  *v684 = 0x8000000000000000;
  sub_266ECD4CC(v679, v681, 48, v686);
  *v684 = v1625;
  v682(v1746, 0);
  v687 = sub_26738111C();
  v689 = v688;
  v690 = *v688;
  v691 = swift_isUniquelyReferenced_nonNull_native();
  v1626 = *v689;
  *v689 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000014, 0x800000026748E4E0, v691);
  v692 = *v689;
  *v689 = v1626;

  v687(v1746, 0);
  v693 = sub_266ECB128(&unk_28788F358);
  v695 = v694;
  v696 = sub_2673810FC();
  v698 = v697;
  v699 = *v697;
  v700 = swift_isUniquelyReferenced_nonNull_native();
  v1627 = *v698;
  *v698 = 0x8000000000000000;
  sub_266ECD4CC(v693, v695, 49, v700);
  *v698 = v1627;
  v696(v1746, 0);
  v701 = sub_26738111C();
  v703 = v702;
  v704 = *v702;
  v705 = swift_isUniquelyReferenced_nonNull_native();
  v1628 = *v703;
  *v703 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000010, 0x800000026748E500, v705);
  v706 = *v703;
  *v703 = v1628;

  v701(v1746, 0);
  v707 = sub_266ECB128(&unk_28788F3C0);
  v709 = v708;
  v710 = sub_2673810FC();
  v712 = v711;
  v713 = *v711;
  v714 = swift_isUniquelyReferenced_nonNull_native();
  v1629 = *v712;
  *v712 = 0x8000000000000000;
  sub_266ECD4CC(v707, v709, 50, v714);
  *v712 = v1629;
  v710(v1746, 0);
  v715 = sub_26738111C();
  v717 = v716;
  v718 = *v716;
  v719 = swift_isUniquelyReferenced_nonNull_native();
  v1630 = *v717;
  *v717 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000015, 0x800000026748E520, v719);
  v720 = *v717;
  *v717 = v1630;

  v715(v1746, 0);
  v721 = sub_266ECB128(&unk_28788F418);
  v723 = v722;
  v724 = sub_2673810FC();
  v726 = v725;
  v727 = *v725;
  v728 = swift_isUniquelyReferenced_nonNull_native();
  v1631 = *v726;
  *v726 = 0x8000000000000000;
  sub_266ECD4CC(v721, v723, 51, v728);
  *v726 = v1631;
  v724(v1746, 0);
  v729 = sub_26738111C();
  v731 = v730;
  v732 = *v730;
  v733 = swift_isUniquelyReferenced_nonNull_native();
  v1632 = *v731;
  *v731 = 0x8000000000000000;
  sub_266ECD368(52, 0xD000000000000018, 0x800000026748E540, v733);
  v734 = *v731;
  *v731 = v1632;

  v729(v1746, 0);
  v735 = sub_266ECB128(&unk_28788F478);
  v737 = v736;
  v738 = sub_2673810FC();
  v740 = v739;
  v741 = *v739;
  v742 = swift_isUniquelyReferenced_nonNull_native();
  v1633 = *v740;
  *v740 = 0x8000000000000000;
  sub_266ECD4CC(v735, v737, 52, v742);
  *v740 = v1633;
  v738(v1746, 0);
  v743 = sub_26738111C();
  v745 = v744;
  v746 = *v744;
  v747 = swift_isUniquelyReferenced_nonNull_native();
  v1634 = *v745;
  *v745 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000016, 0x800000026748E560, v747);
  v748 = *v745;
  *v745 = v1634;

  v743(v1746, 0);
  v749 = sub_266ECB128(&unk_28788F4D0);
  v751 = v750;
  v752 = sub_2673810FC();
  v754 = v753;
  v755 = *v753;
  v756 = swift_isUniquelyReferenced_nonNull_native();
  v1635 = *v754;
  *v754 = 0x8000000000000000;
  sub_266ECD4CC(v749, v751, 53, v756);
  *v754 = v1635;
  v752(v1746, 0);
  v757 = sub_26738111C();
  v759 = v758;
  v760 = *v758;
  v761 = swift_isUniquelyReferenced_nonNull_native();
  v1636 = *v759;
  *v759 = 0x8000000000000000;
  sub_266ECD368(54, 0x4E45494C435F4652, 0xEF544E4556455F54, v761);
  v762 = *v759;
  *v759 = v1636;

  v757(v1746, 0);
  v763 = sub_266ECB128(&unk_28788F538);
  v765 = v764;
  v766 = sub_2673810FC();
  v768 = v767;
  v769 = *v767;
  v770 = swift_isUniquelyReferenced_nonNull_native();
  v1637 = *v768;
  *v768 = 0x8000000000000000;
  sub_266ECD4CC(v763, v765, 54, v770);
  *v768 = v1637;
  v766(v1746, 0);
  v771 = sub_26738111C();
  v773 = v772;
  v774 = *v772;
  v775 = swift_isUniquelyReferenced_nonNull_native();
  v1638 = *v773;
  *v773 = 0x8000000000000000;
  sub_266ECD368(55, 0xD00000000000001DLL, 0x800000026748E580, v775);
  v776 = *v773;
  *v773 = v1638;

  v771(v1746, 0);
  v777 = sub_266ECB128(&unk_28788F590);
  v779 = v778;
  v780 = sub_2673810FC();
  v782 = v781;
  v783 = *v781;
  v784 = swift_isUniquelyReferenced_nonNull_native();
  v1639 = *v782;
  *v782 = 0x8000000000000000;
  sub_266ECD4CC(v777, v779, 55, v784);
  *v782 = v1639;
  v780(v1746, 0);
  v785 = sub_26738111C();
  v787 = v786;
  v788 = *v786;
  v789 = swift_isUniquelyReferenced_nonNull_native();
  v1640 = *v787;
  *v787 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000010, 0x800000026748E5A0, v789);
  v790 = *v787;
  *v787 = v1640;

  v785(v1746, 0);
  v791 = sub_266ECB128(&unk_28788F600);
  v793 = v792;
  v794 = sub_2673810FC();
  v796 = v795;
  v797 = *v795;
  v798 = swift_isUniquelyReferenced_nonNull_native();
  v1641 = *v796;
  *v796 = 0x8000000000000000;
  sub_266ECD4CC(v791, v793, 56, v798);
  *v796 = v1641;
  v794(v1746, 0);
  v799 = sub_26738111C();
  v801 = v800;
  v802 = *v800;
  v803 = swift_isUniquelyReferenced_nonNull_native();
  v1642 = *v801;
  *v801 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000016, 0x800000026748E5C0, v803);
  v804 = *v801;
  *v801 = v1642;

  v799(v1746, 0);
  v805 = sub_266ECB128(&unk_28788F658);
  v807 = v806;
  v808 = sub_2673810FC();
  v810 = v809;
  v811 = *v809;
  v812 = swift_isUniquelyReferenced_nonNull_native();
  v1643 = *v810;
  *v810 = 0x8000000000000000;
  sub_266ECD4CC(v805, v807, 57, v812);
  *v810 = v1643;
  v808(v1746, 0);
  v813 = sub_26738111C();
  v815 = v814;
  v816 = *v814;
  v817 = swift_isUniquelyReferenced_nonNull_native();
  v1644 = *v815;
  *v815 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000011, 0x800000026748E5E0, v817);
  v818 = *v815;
  *v815 = v1644;

  v813(v1746, 0);
  v819 = sub_266ECB128(&unk_28788F6C0);
  v821 = v820;
  v822 = sub_2673810FC();
  v824 = v823;
  v825 = *v823;
  v826 = swift_isUniquelyReferenced_nonNull_native();
  v1645 = *v824;
  *v824 = 0x8000000000000000;
  sub_266ECD4CC(v819, v821, 58, v826);
  *v824 = v1645;
  v822(v1746, 0);
  v827 = sub_26738111C();
  v829 = v828;
  v830 = *v828;
  v831 = swift_isUniquelyReferenced_nonNull_native();
  v1646 = *v829;
  *v829 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000010, 0x800000026748E600, v831);
  v832 = *v829;
  *v829 = v1646;

  v827(v1746, 0);
  v833 = sub_266ECB128(&unk_28788F720);
  v835 = v834;
  v836 = sub_2673810FC();
  v838 = v837;
  v839 = *v837;
  v840 = swift_isUniquelyReferenced_nonNull_native();
  v1647 = *v838;
  *v838 = 0x8000000000000000;
  sub_266ECD4CC(v833, v835, 59, v840);
  *v838 = v1647;
  v836(v1746, 0);
  v841 = sub_26738111C();
  v843 = v842;
  v844 = *v842;
  v845 = swift_isUniquelyReferenced_nonNull_native();
  v1648 = *v843;
  *v843 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000010, 0x800000026748E620, v845);
  v846 = *v843;
  *v843 = v1648;

  v841(v1746, 0);
  v847 = sub_266ECB128(&unk_28788F778);
  v849 = v848;
  v850 = sub_2673810FC();
  v852 = v851;
  v853 = *v851;
  v854 = swift_isUniquelyReferenced_nonNull_native();
  v1649 = *v852;
  *v852 = 0x8000000000000000;
  sub_266ECD4CC(v847, v849, 60, v854);
  *v852 = v1649;
  v850(v1746, 0);
  v855 = sub_26738111C();
  v857 = v856;
  v858 = *v856;
  v859 = swift_isUniquelyReferenced_nonNull_native();
  v1650 = *v857;
  *v857 = 0x8000000000000000;
  sub_266ECD368(61, 0x4E45494C435F4353, 0xEF544E4556455F54, v859);
  v860 = *v857;
  *v857 = v1650;

  v855(v1746, 0);
  v861 = sub_266ECB128(&unk_28788F7D0);
  v863 = v862;
  v864 = sub_2673810FC();
  v866 = v865;
  v867 = *v865;
  v868 = swift_isUniquelyReferenced_nonNull_native();
  v1651 = *v866;
  *v866 = 0x8000000000000000;
  sub_266ECD4CC(v861, v863, 61, v868);
  *v866 = v1651;
  v864(v1746, 0);
  v869 = sub_26738111C();
  v871 = v870;
  v872 = *v870;
  v873 = swift_isUniquelyReferenced_nonNull_native();
  v1652 = *v871;
  *v871 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000017, 0x800000026748E640, v873);
  v874 = *v871;
  *v871 = v1652;

  v869(v1746, 0);
  v875 = sub_266ECB128(&unk_28788F828);
  v877 = v876;
  v878 = sub_2673810FC();
  v880 = v879;
  v881 = *v879;
  v882 = swift_isUniquelyReferenced_nonNull_native();
  v1653 = *v880;
  *v880 = 0x8000000000000000;
  sub_266ECD4CC(v875, v877, 62, v882);
  *v880 = v1653;
  v878(v1746, 0);
  v883 = sub_26738111C();
  v885 = v884;
  v886 = *v884;
  v887 = swift_isUniquelyReferenced_nonNull_native();
  v1654 = *v885;
  *v885 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000013, 0x800000026748E660, v887);
  v888 = *v885;
  *v885 = v1654;

  v883(v1746, 0);
  v889 = sub_266ECB128(&unk_28788F888);
  v891 = v890;
  v892 = sub_2673810FC();
  v894 = v893;
  v895 = *v893;
  v896 = swift_isUniquelyReferenced_nonNull_native();
  v1655 = *v894;
  *v894 = 0x8000000000000000;
  sub_266ECD4CC(v889, v891, 63, v896);
  *v894 = v1655;
  v892(v1746, 0);
  v897 = sub_26738111C();
  v899 = v898;
  v900 = *v898;
  v901 = swift_isUniquelyReferenced_nonNull_native();
  v1656 = *v899;
  *v899 = 0x8000000000000000;
  sub_266ECD368(64, 0xD00000000000001ALL, 0x800000026748E680, v901);
  v902 = *v899;
  *v899 = v1656;

  v897(v1746, 0);
  v903 = sub_266ECB128(&unk_28788F8E8);
  v905 = v904;
  v906 = sub_2673810FC();
  v908 = v907;
  v909 = *v907;
  v910 = swift_isUniquelyReferenced_nonNull_native();
  v1657 = *v908;
  *v908 = 0x8000000000000000;
  sub_266ECD4CC(v903, v905, 64, v910);
  *v908 = v1657;
  v906(v1746, 0);
  v911 = sub_26738111C();
  v913 = v912;
  v914 = *v912;
  v915 = swift_isUniquelyReferenced_nonNull_native();
  v1658 = *v913;
  *v913 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000010, 0x800000026748E6A0, v915);
  v916 = *v913;
  *v913 = v1658;

  v911(v1746, 0);
  v917 = sub_266ECB128(&unk_28788F940);
  v919 = v918;
  v920 = sub_2673810FC();
  v922 = v921;
  v923 = *v921;
  v924 = swift_isUniquelyReferenced_nonNull_native();
  v1659 = *v922;
  *v922 = 0x8000000000000000;
  sub_266ECD4CC(v917, v919, 65, v924);
  *v922 = v1659;
  v920(v1746, 0);
  v925 = sub_26738111C();
  v927 = v926;
  v928 = *v926;
  v929 = swift_isUniquelyReferenced_nonNull_native();
  v1660 = *v927;
  *v927 = 0x8000000000000000;
  sub_266ECD368(66, 0xD00000000000001DLL, 0x800000026748E6C0, v929);
  v930 = *v927;
  *v927 = v1660;

  v925(v1746, 0);
  v931 = sub_266ECB128(&unk_28788F9A0);
  v933 = v932;
  v934 = sub_2673810FC();
  v936 = v935;
  v937 = *v935;
  v938 = swift_isUniquelyReferenced_nonNull_native();
  v1661 = *v936;
  *v936 = 0x8000000000000000;
  sub_266ECD4CC(v931, v933, 66, v938);
  *v936 = v1661;
  v934(v1746, 0);
  v939 = sub_26738111C();
  v941 = v940;
  v942 = *v940;
  v943 = swift_isUniquelyReferenced_nonNull_native();
  v1662 = *v941;
  *v941 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000017, 0x800000026748E6E0, v943);
  v944 = *v941;
  *v941 = v1662;

  v939(v1746, 0);
  v945 = sub_266ECB128(&unk_28788FA08);
  v947 = v946;
  v948 = sub_2673810FC();
  v950 = v949;
  v951 = *v949;
  v952 = swift_isUniquelyReferenced_nonNull_native();
  v1663 = *v950;
  *v950 = 0x8000000000000000;
  sub_266ECD4CC(v945, v947, 67, v952);
  *v950 = v1663;
  v948(v1746, 0);
  v953 = sub_26738111C();
  v955 = v954;
  v956 = *v954;
  v957 = swift_isUniquelyReferenced_nonNull_native();
  v1664 = *v955;
  *v955 = 0x8000000000000000;
  sub_266ECD368(68, 0x4E45494C435F4149, 0xEF544E4556455F54, v957);
  v958 = *v955;
  *v955 = v1664;

  v953(v1746, 0);
  v959 = sub_266ECB128(&unk_28788FA68);
  v961 = v960;
  v962 = sub_2673810FC();
  v964 = v963;
  v965 = *v963;
  v966 = swift_isUniquelyReferenced_nonNull_native();
  v1665 = *v964;
  *v964 = 0x8000000000000000;
  sub_266ECD4CC(v959, v961, 68, v966);
  *v964 = v1665;
  v962(v1746, 0);
  v967 = sub_26738111C();
  v969 = v968;
  v970 = *v968;
  v971 = swift_isUniquelyReferenced_nonNull_native();
  v1666 = *v969;
  *v969 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000010, 0x800000026748E700, v971);
  v972 = *v969;
  *v969 = v1666;

  v967(v1746, 0);
  v973 = sub_266ECB128(&unk_28788FAC0);
  v975 = v974;
  v976 = sub_2673810FC();
  v978 = v977;
  v979 = *v977;
  v980 = swift_isUniquelyReferenced_nonNull_native();
  v1667 = *v978;
  *v978 = 0x8000000000000000;
  sub_266ECD4CC(v973, v975, 69, v980);
  *v978 = v1667;
  v976(v1746, 0);
  v981 = sub_26738111C();
  v983 = v982;
  v984 = *v982;
  v985 = swift_isUniquelyReferenced_nonNull_native();
  v1668 = *v983;
  *v983 = 0x8000000000000000;
  sub_266ECD368(70, 0xD000000000000010, 0x800000026748E720, v985);
  v986 = *v983;
  *v983 = v1668;

  v981(v1746, 0);
  v987 = sub_266ECB128(&unk_28788FB18);
  v989 = v988;
  v990 = sub_2673810FC();
  v992 = v991;
  v993 = *v991;
  v994 = swift_isUniquelyReferenced_nonNull_native();
  v1669 = *v992;
  *v992 = 0x8000000000000000;
  sub_266ECD4CC(v987, v989, 70, v994);
  *v992 = v1669;
  v990(v1746, 0);
  v995 = sub_26738111C();
  v997 = v996;
  v998 = *v996;
  v999 = swift_isUniquelyReferenced_nonNull_native();
  v1670 = *v997;
  *v997 = 0x8000000000000000;
  sub_266ECD368(71, 0xD00000000000001DLL, 0x800000026748E740, v999);
  v1000 = *v997;
  *v997 = v1670;

  v995(v1746, 0);
  v1001 = sub_266ECB128(&unk_28788FB70);
  v1003 = v1002;
  v1004 = sub_2673810FC();
  v1006 = v1005;
  v1007 = *v1005;
  v1008 = swift_isUniquelyReferenced_nonNull_native();
  v1671 = *v1006;
  *v1006 = 0x8000000000000000;
  sub_266ECD4CC(v1001, v1003, 71, v1008);
  *v1006 = v1671;
  v1004(v1746, 0);
  v1009 = sub_26738111C();
  v1011 = v1010;
  v1012 = *v1010;
  v1013 = swift_isUniquelyReferenced_nonNull_native();
  v1672 = *v1011;
  *v1011 = 0x8000000000000000;
  sub_266ECD368(72, 0xD000000000000015, 0x800000026748E760, v1013);
  v1014 = *v1011;
  *v1011 = v1672;

  v1009(v1746, 0);
  v1015 = sub_266ECB128(&unk_28788FBD0);
  v1017 = v1016;
  v1018 = sub_2673810FC();
  v1020 = v1019;
  v1021 = *v1019;
  v1022 = swift_isUniquelyReferenced_nonNull_native();
  v1673 = *v1020;
  *v1020 = 0x8000000000000000;
  sub_266ECD4CC(v1015, v1017, 72, v1022);
  *v1020 = v1673;
  v1018(v1746, 0);
  v1023 = sub_26738111C();
  v1025 = v1024;
  v1026 = *v1024;
  v1027 = swift_isUniquelyReferenced_nonNull_native();
  v1674 = *v1025;
  *v1025 = 0x8000000000000000;
  sub_266ECD368(73, 0xD000000000000015, 0x800000026748E780, v1027);
  v1028 = *v1025;
  *v1025 = v1674;

  v1023(v1746, 0);
  v1029 = sub_266ECB128(&unk_28788FC30);
  v1031 = v1030;
  v1032 = sub_2673810FC();
  v1034 = v1033;
  v1035 = *v1033;
  v1036 = swift_isUniquelyReferenced_nonNull_native();
  v1675 = *v1034;
  *v1034 = 0x8000000000000000;
  sub_266ECD4CC(v1029, v1031, 73, v1036);
  *v1034 = v1675;
  v1032(v1746, 0);
  v1037 = sub_26738111C();
  v1039 = v1038;
  v1040 = *v1038;
  v1041 = swift_isUniquelyReferenced_nonNull_native();
  v1676 = *v1039;
  *v1039 = 0x8000000000000000;
  sub_266ECD368(74, 0xD000000000000014, 0x800000026748E7A0, v1041);
  v1042 = *v1039;
  *v1039 = v1676;

  v1037(v1746, 0);
  v1043 = sub_266ECB128(&unk_28788FC98);
  v1045 = v1044;
  v1046 = sub_2673810FC();
  v1048 = v1047;
  v1049 = *v1047;
  v1050 = swift_isUniquelyReferenced_nonNull_native();
  v1677 = *v1048;
  *v1048 = 0x8000000000000000;
  sub_266ECD4CC(v1043, v1045, 74, v1050);
  *v1048 = v1677;
  v1046(v1746, 0);
  v1051 = sub_26738111C();
  v1053 = v1052;
  v1054 = *v1052;
  v1055 = swift_isUniquelyReferenced_nonNull_native();
  v1678 = *v1053;
  *v1053 = 0x8000000000000000;
  sub_266ECD368(75, 0xD000000000000011, 0x800000026748E7C0, v1055);
  v1056 = *v1053;
  *v1053 = v1678;

  v1051(v1746, 0);
  v1057 = sub_266ECB128(&unk_28788FCF8);
  v1059 = v1058;
  v1060 = sub_2673810FC();
  v1062 = v1061;
  v1063 = *v1061;
  v1064 = swift_isUniquelyReferenced_nonNull_native();
  v1679 = *v1062;
  *v1062 = 0x8000000000000000;
  sub_266ECD4CC(v1057, v1059, 75, v1064);
  *v1062 = v1679;
  v1060(v1746, 0);
  v1065 = sub_26738111C();
  v1067 = v1066;
  v1068 = *v1066;
  v1069 = swift_isUniquelyReferenced_nonNull_native();
  v1680 = *v1067;
  *v1067 = 0x8000000000000000;
  sub_266ECD368(76, 0xD000000000000013, 0x800000026748E7E0, v1069);
  v1070 = *v1067;
  *v1067 = v1680;

  v1065(v1746, 0);
  v1071 = sub_266ECB128(&unk_28788FD58);
  v1073 = v1072;
  v1074 = sub_2673810FC();
  v1076 = v1075;
  v1077 = *v1075;
  v1078 = swift_isUniquelyReferenced_nonNull_native();
  v1681 = *v1076;
  *v1076 = 0x8000000000000000;
  sub_266ECD4CC(v1071, v1073, 76, v1078);
  *v1076 = v1681;
  v1074(v1746, 0);
  v1079 = sub_26738111C();
  v1081 = v1080;
  v1082 = *v1080;
  v1083 = swift_isUniquelyReferenced_nonNull_native();
  v1682 = *v1081;
  *v1081 = 0x8000000000000000;
  sub_266ECD368(77, 0xD00000000000001DLL, 0x800000026748E800, v1083);
  v1084 = *v1081;
  *v1081 = v1682;

  v1079(v1746, 0);
  v1085 = sub_266ECB128(&unk_28788FDB0);
  v1087 = v1086;
  v1088 = sub_2673810FC();
  v1090 = v1089;
  v1091 = *v1089;
  v1092 = swift_isUniquelyReferenced_nonNull_native();
  v1683 = *v1090;
  *v1090 = 0x8000000000000000;
  sub_266ECD4CC(v1085, v1087, 77, v1092);
  *v1090 = v1683;
  v1088(v1746, 0);
  v1093 = sub_26738111C();
  v1095 = v1094;
  v1096 = *v1094;
  v1097 = swift_isUniquelyReferenced_nonNull_native();
  v1684 = *v1095;
  *v1095 = 0x8000000000000000;
  sub_266ECD368(78, 0xD000000000000019, 0x800000026748E820, v1097);
  v1098 = *v1095;
  *v1095 = v1684;

  v1093(v1746, 0);
  v1099 = sub_266ECB128(&unk_28788FE18);
  v1101 = v1100;
  v1102 = sub_2673810FC();
  v1104 = v1103;
  v1105 = *v1103;
  v1106 = swift_isUniquelyReferenced_nonNull_native();
  v1685 = *v1104;
  *v1104 = 0x8000000000000000;
  sub_266ECD4CC(v1099, v1101, 78, v1106);
  *v1104 = v1685;
  v1102(v1746, 0);
  v1107 = sub_26738111C();
  v1109 = v1108;
  v1110 = *v1108;
  v1111 = swift_isUniquelyReferenced_nonNull_native();
  v1686 = *v1109;
  *v1109 = 0x8000000000000000;
  sub_266ECD368(79, 0xD000000000000022, 0x800000026748E840, v1111);
  v1112 = *v1109;
  *v1109 = v1686;

  v1107(v1746, 0);
  v1113 = sub_266ECB128(&unk_28788FE80);
  v1115 = v1114;
  v1116 = sub_2673810FC();
  v1118 = v1117;
  v1119 = *v1117;
  v1120 = swift_isUniquelyReferenced_nonNull_native();
  v1687 = *v1118;
  *v1118 = 0x8000000000000000;
  sub_266ECD4CC(v1113, v1115, 79, v1120);
  *v1118 = v1687;
  v1116(v1746, 0);
  v1121 = sub_26738111C();
  v1123 = v1122;
  v1124 = *v1122;
  v1125 = swift_isUniquelyReferenced_nonNull_native();
  v1688 = *v1123;
  *v1123 = 0x8000000000000000;
  sub_266ECD368(80, 0xD000000000000010, 0x800000026748E870, v1125);
  v1126 = *v1123;
  *v1123 = v1688;

  v1121(v1746, 0);
  v1127 = sub_266ECB128(&unk_28788FEE0);
  v1129 = v1128;
  v1130 = sub_2673810FC();
  v1132 = v1131;
  v1133 = *v1131;
  v1134 = swift_isUniquelyReferenced_nonNull_native();
  v1689 = *v1132;
  *v1132 = 0x8000000000000000;
  sub_266ECD4CC(v1127, v1129, 80, v1134);
  *v1132 = v1689;
  v1130(v1746, 0);
  v1135 = sub_26738111C();
  v1137 = v1136;
  v1138 = *v1136;
  v1139 = swift_isUniquelyReferenced_nonNull_native();
  v1690 = *v1137;
  *v1137 = 0x8000000000000000;
  sub_266ECD368(81, 0xD000000000000015, 0x800000026748E890, v1139);
  v1140 = *v1137;
  *v1137 = v1690;

  v1135(v1746, 0);
  v1141 = sub_266ECB128(&unk_28788FF38);
  v1143 = v1142;
  v1144 = sub_2673810FC();
  v1146 = v1145;
  v1147 = *v1145;
  v1148 = swift_isUniquelyReferenced_nonNull_native();
  v1691 = *v1146;
  *v1146 = 0x8000000000000000;
  sub_266ECD4CC(v1141, v1143, 81, v1148);
  *v1146 = v1691;
  v1144(v1746, 0);
  v1149 = sub_26738111C();
  v1151 = v1150;
  v1152 = *v1150;
  v1153 = swift_isUniquelyReferenced_nonNull_native();
  v1692 = *v1151;
  *v1151 = 0x8000000000000000;
  sub_266ECD368(82, 0x5F4E4F4953534553, 0xED0000544E455645, v1153);
  v1154 = *v1151;
  *v1151 = v1692;

  v1149(v1746, 0);
  v1155 = sub_266ECB128(&unk_28788FF90);
  v1157 = v1156;
  v1158 = sub_2673810FC();
  v1160 = v1159;
  v1161 = *v1159;
  v1162 = swift_isUniquelyReferenced_nonNull_native();
  v1693 = *v1160;
  *v1160 = 0x8000000000000000;
  sub_266ECD4CC(v1155, v1157, 82, v1162);
  *v1160 = v1693;
  v1158(v1746, 0);
  v1163 = sub_26738111C();
  v1165 = v1164;
  v1166 = *v1164;
  v1167 = swift_isUniquelyReferenced_nonNull_native();
  v1694 = *v1165;
  *v1165 = 0x8000000000000000;
  sub_266ECD368(83, 0xD000000000000012, 0x800000026748E8B0, v1167);
  v1168 = *v1165;
  *v1165 = v1694;

  v1163(v1746, 0);
  v1169 = sub_266ECB128(&unk_28788FFE8);
  v1171 = v1170;
  v1172 = sub_2673810FC();
  v1174 = v1173;
  v1175 = *v1173;
  v1176 = swift_isUniquelyReferenced_nonNull_native();
  v1695 = *v1174;
  *v1174 = 0x8000000000000000;
  sub_266ECD4CC(v1169, v1171, 83, v1176);
  *v1174 = v1695;
  v1172(v1746, 0);
  v1177 = sub_26738111C();
  v1179 = v1178;
  v1180 = *v1178;
  v1181 = swift_isUniquelyReferenced_nonNull_native();
  v1696 = *v1179;
  *v1179 = 0x8000000000000000;
  sub_266ECD368(84, 0xD000000000000014, 0x800000026748E8D0, v1181);
  v1182 = *v1179;
  *v1179 = v1696;

  v1177(v1746, 0);
  v1183 = sub_266ECB128(&unk_287890040);
  v1185 = v1184;
  v1186 = sub_2673810FC();
  v1188 = v1187;
  v1189 = *v1187;
  v1190 = swift_isUniquelyReferenced_nonNull_native();
  v1697 = *v1188;
  *v1188 = 0x8000000000000000;
  sub_266ECD4CC(v1183, v1185, 84, v1190);
  *v1188 = v1697;
  v1186(v1746, 0);
  v1191 = sub_26738111C();
  v1193 = v1192;
  v1194 = *v1192;
  v1195 = swift_isUniquelyReferenced_nonNull_native();
  v1698 = *v1193;
  *v1193 = 0x8000000000000000;
  sub_266ECD368(85, 0xD000000000000015, 0x800000026748E8F0, v1195);
  v1196 = *v1193;
  *v1193 = v1698;

  v1191(v1746, 0);
  v1197 = sub_266ECB128(&unk_2878900A0);
  v1199 = v1198;
  v1200 = sub_2673810FC();
  v1202 = v1201;
  v1203 = *v1201;
  v1204 = swift_isUniquelyReferenced_nonNull_native();
  v1699 = *v1202;
  *v1202 = 0x8000000000000000;
  sub_266ECD4CC(v1197, v1199, 85, v1204);
  *v1202 = v1699;
  v1200(v1746, 0);
  v1205 = sub_26738111C();
  v1207 = v1206;
  v1208 = *v1206;
  v1209 = swift_isUniquelyReferenced_nonNull_native();
  v1700 = *v1207;
  *v1207 = 0x8000000000000000;
  sub_266ECD368(86, 0xD000000000000010, 0x800000026748E910, v1209);
  v1210 = *v1207;
  *v1207 = v1700;

  v1205(v1746, 0);
  v1211 = sub_266ECB128(&unk_287890108);
  v1213 = v1212;
  v1214 = sub_2673810FC();
  v1216 = v1215;
  v1217 = *v1215;
  v1218 = swift_isUniquelyReferenced_nonNull_native();
  v1701 = *v1216;
  *v1216 = 0x8000000000000000;
  sub_266ECD4CC(v1211, v1213, 86, v1218);
  *v1216 = v1701;
  v1214(v1746, 0);
  v1219 = sub_26738111C();
  v1221 = v1220;
  v1222 = *v1220;
  v1223 = swift_isUniquelyReferenced_nonNull_native();
  v1702 = *v1221;
  *v1221 = 0x8000000000000000;
  sub_266ECD368(87, 0xD000000000000015, 0x800000026748E930, v1223);
  v1224 = *v1221;
  *v1221 = v1702;

  v1219(v1746, 0);
  v1225 = sub_266ECB128(&unk_287890160);
  v1227 = v1226;
  v1228 = sub_2673810FC();
  v1230 = v1229;
  v1231 = *v1229;
  v1232 = swift_isUniquelyReferenced_nonNull_native();
  v1703 = *v1230;
  *v1230 = 0x8000000000000000;
  sub_266ECD4CC(v1225, v1227, 87, v1232);
  *v1230 = v1703;
  v1228(v1746, 0);
  v1233 = sub_26738111C();
  v1235 = v1234;
  v1236 = *v1234;
  v1237 = swift_isUniquelyReferenced_nonNull_native();
  v1704 = *v1235;
  *v1235 = 0x8000000000000000;
  sub_266ECD368(88, 0x4E45494C435F5253, 0xEF544E4556455F54, v1237);
  v1238 = *v1235;
  *v1235 = v1704;

  v1233(v1746, 0);
  v1239 = sub_266ECB128(&unk_2878901C0);
  v1241 = v1240;
  v1242 = sub_2673810FC();
  v1244 = v1243;
  v1245 = *v1243;
  v1246 = swift_isUniquelyReferenced_nonNull_native();
  v1705 = *v1244;
  *v1244 = 0x8000000000000000;
  sub_266ECD4CC(v1239, v1241, 88, v1246);
  *v1244 = v1705;
  v1242(v1746, 0);
  v1247 = sub_26738111C();
  v1249 = v1248;
  v1250 = *v1248;
  v1251 = swift_isUniquelyReferenced_nonNull_native();
  v1706 = *v1249;
  *v1249 = 0x8000000000000000;
  sub_266ECD368(89, 0xD000000000000010, 0x800000026748E950, v1251);
  v1252 = *v1249;
  *v1249 = v1706;

  v1247(v1746, 0);
  v1253 = sub_266ECB128(&unk_287890218);
  v1255 = v1254;
  v1256 = sub_2673810FC();
  v1258 = v1257;
  v1259 = *v1257;
  v1260 = swift_isUniquelyReferenced_nonNull_native();
  v1707 = *v1258;
  *v1258 = 0x8000000000000000;
  sub_266ECD4CC(v1253, v1255, 89, v1260);
  *v1258 = v1707;
  v1256(v1746, 0);
  v1261 = sub_26738111C();
  v1263 = v1262;
  v1264 = *v1262;
  v1265 = swift_isUniquelyReferenced_nonNull_native();
  v1708 = *v1263;
  *v1263 = 0x8000000000000000;
  sub_266ECD368(90, 0x4E45494C435F4D43, 0xEF544E4556455F54, v1265);
  v1266 = *v1263;
  *v1263 = v1708;

  v1261(v1746, 0);
  v1267 = sub_266ECB128(&unk_287890270);
  v1269 = v1268;
  v1270 = sub_2673810FC();
  v1272 = v1271;
  v1273 = *v1271;
  v1274 = swift_isUniquelyReferenced_nonNull_native();
  v1709 = *v1272;
  *v1272 = 0x8000000000000000;
  sub_266ECD4CC(v1267, v1269, 90, v1274);
  *v1272 = v1709;
  v1270(v1746, 0);
  v1275 = sub_26738111C();
  v1277 = v1276;
  v1278 = *v1276;
  v1279 = swift_isUniquelyReferenced_nonNull_native();
  v1710 = *v1277;
  *v1277 = 0x8000000000000000;
  sub_266ECD368(91, 0xD00000000000001ALL, 0x800000026748E970, v1279);
  v1280 = *v1277;
  *v1277 = v1710;

  v1275(v1746, 0);
  v1281 = sub_266ECB128(&unk_2878902C8);
  v1283 = v1282;
  v1284 = sub_2673810FC();
  v1286 = v1285;
  v1287 = *v1285;
  v1288 = swift_isUniquelyReferenced_nonNull_native();
  v1711 = *v1286;
  *v1286 = 0x8000000000000000;
  sub_266ECD4CC(v1281, v1283, 91, v1288);
  *v1286 = v1711;
  v1284(v1746, 0);
  v1289 = sub_26738111C();
  v1291 = v1290;
  v1292 = *v1290;
  v1293 = swift_isUniquelyReferenced_nonNull_native();
  v1712 = *v1291;
  *v1291 = 0x8000000000000000;
  sub_266ECD368(92, 0x4E45494C435F524ALL, 0xEF544E4556455F54, v1293);
  v1294 = *v1291;
  *v1291 = v1712;

  v1289(v1746, 0);
  v1295 = sub_266ECB128(&unk_287890320);
  v1297 = v1296;
  v1298 = sub_2673810FC();
  v1300 = v1299;
  v1301 = *v1299;
  v1302 = swift_isUniquelyReferenced_nonNull_native();
  v1713 = *v1300;
  *v1300 = 0x8000000000000000;
  sub_266ECD4CC(v1295, v1297, 92, v1302);
  *v1300 = v1713;
  v1298(v1746, 0);
  v1303 = sub_26738111C();
  v1305 = v1304;
  v1306 = *v1304;
  v1307 = swift_isUniquelyReferenced_nonNull_native();
  v1714 = *v1305;
  *v1305 = 0x8000000000000000;
  sub_266ECD368(93, 0x4E45494C435F4752, 0xEF544E4556455F54, v1307);
  v1308 = *v1305;
  *v1305 = v1714;

  v1303(v1746, 0);
  v1309 = sub_266ECB128(&unk_287890378);
  v1311 = v1310;
  v1312 = sub_2673810FC();
  v1314 = v1313;
  v1315 = *v1313;
  v1316 = swift_isUniquelyReferenced_nonNull_native();
  v1715 = *v1314;
  *v1314 = 0x8000000000000000;
  sub_266ECD4CC(v1309, v1311, 93, v1316);
  *v1314 = v1715;
  v1312(v1746, 0);
  v1317 = sub_26738111C();
  v1319 = v1318;
  v1320 = *v1318;
  v1321 = swift_isUniquelyReferenced_nonNull_native();
  v1716 = *v1319;
  *v1319 = 0x8000000000000000;
  sub_266ECD368(94, 0x4E45494C435F5250, 0xEF544E4556455F54, v1321);
  v1322 = *v1319;
  *v1319 = v1716;

  v1317(v1746, 0);
  v1323 = sub_266ECB128(&unk_2878903D0);
  v1325 = v1324;
  v1326 = sub_2673810FC();
  v1328 = v1327;
  v1329 = *v1327;
  v1330 = swift_isUniquelyReferenced_nonNull_native();
  v1717 = *v1328;
  *v1328 = 0x8000000000000000;
  sub_266ECD4CC(v1323, v1325, 94, v1330);
  *v1328 = v1717;
  v1326(v1746, 0);
  v1331 = sub_26738111C();
  v1333 = v1332;
  v1334 = *v1332;
  v1335 = swift_isUniquelyReferenced_nonNull_native();
  v1718 = *v1333;
  *v1333 = 0x8000000000000000;
  sub_266ECD368(95, 0xD00000000000001DLL, 0x800000026748E990, v1335);
  v1336 = *v1333;
  *v1333 = v1718;

  v1331(v1746, 0);
  v1337 = sub_266ECB128(&unk_287890428);
  v1339 = v1338;
  v1340 = sub_2673810FC();
  v1342 = v1341;
  v1343 = *v1341;
  v1344 = swift_isUniquelyReferenced_nonNull_native();
  v1719 = *v1342;
  *v1342 = 0x8000000000000000;
  sub_266ECD4CC(v1337, v1339, 95, v1344);
  *v1342 = v1719;
  v1340(v1746, 0);
  v1345 = sub_26738111C();
  v1347 = v1346;
  v1348 = *v1346;
  v1349 = swift_isUniquelyReferenced_nonNull_native();
  v1720 = *v1347;
  *v1347 = 0x8000000000000000;
  sub_266ECD368(96, 0x4E45494C435F4750, 0xEF544E4556455F54, v1349);
  v1350 = *v1347;
  *v1347 = v1720;

  v1345(v1746, 0);
  v1351 = sub_266ECB128(&unk_287890480);
  v1353 = v1352;
  v1354 = sub_2673810FC();
  v1356 = v1355;
  v1357 = *v1355;
  v1358 = swift_isUniquelyReferenced_nonNull_native();
  v1721 = *v1356;
  *v1356 = 0x8000000000000000;
  sub_266ECD4CC(v1351, v1353, 96, v1358);
  *v1356 = v1721;
  v1354(v1746, 0);
  v1359 = sub_26738111C();
  v1361 = v1360;
  v1362 = *v1360;
  v1363 = swift_isUniquelyReferenced_nonNull_native();
  v1722 = *v1361;
  *v1361 = 0x8000000000000000;
  sub_266ECD368(97, 0xD000000000000019, 0x800000026748E9B0, v1363);
  v1364 = *v1361;
  *v1361 = v1722;

  v1359(v1746, 0);
  v1365 = sub_266ECB128(&unk_2878904D8);
  v1367 = v1366;
  v1368 = sub_2673810FC();
  v1370 = v1369;
  v1371 = *v1369;
  v1372 = swift_isUniquelyReferenced_nonNull_native();
  v1723 = *v1370;
  *v1370 = 0x8000000000000000;
  sub_266ECD4CC(v1365, v1367, 97, v1372);
  *v1370 = v1723;
  v1368(v1746, 0);
  v1373 = sub_26738111C();
  v1375 = v1374;
  v1376 = *v1374;
  v1377 = swift_isUniquelyReferenced_nonNull_native();
  v1724 = *v1375;
  *v1375 = 0x8000000000000000;
  sub_266ECD368(98, 0xD000000000000010, 0x800000026748E9D0, v1377);
  v1378 = *v1375;
  *v1375 = v1724;

  v1373(v1746, 0);
  v1379 = sub_266ECB128(&unk_287890538);
  v1381 = v1380;
  v1382 = sub_2673810FC();
  v1384 = v1383;
  v1385 = *v1383;
  v1386 = swift_isUniquelyReferenced_nonNull_native();
  v1725 = *v1384;
  *v1384 = 0x8000000000000000;
  sub_266ECD4CC(v1379, v1381, 98, v1386);
  *v1384 = v1725;
  v1382(v1746, 0);
  v1387 = sub_26738111C();
  v1389 = v1388;
  v1390 = *v1388;
  v1391 = swift_isUniquelyReferenced_nonNull_native();
  v1726 = *v1389;
  *v1389 = 0x8000000000000000;
  sub_266ECD368(99, 0xD000000000000018, 0x800000026748E9F0, v1391);
  v1392 = *v1389;
  *v1389 = v1726;

  v1387(v1746, 0);
  v1393 = sub_266ECB128(&unk_287890590);
  v1395 = v1394;
  v1396 = sub_2673810FC();
  v1398 = v1397;
  v1399 = *v1397;
  v1400 = swift_isUniquelyReferenced_nonNull_native();
  v1727 = *v1398;
  *v1398 = 0x8000000000000000;
  sub_266ECD4CC(v1393, v1395, 99, v1400);
  *v1398 = v1727;
  v1396(v1746, 0);
  v1401 = sub_26738111C();
  v1403 = v1402;
  v1404 = *v1402;
  v1405 = swift_isUniquelyReferenced_nonNull_native();
  v1728 = *v1403;
  *v1403 = 0x8000000000000000;
  sub_266ECD368(100, 0xD000000000000020, 0x800000026748EA10, v1405);
  v1406 = *v1403;
  *v1403 = v1728;

  v1401(v1746, 0);
  v1407 = sub_266ECB128(&unk_2878905F8);
  v1409 = v1408;
  v1410 = sub_2673810FC();
  v1412 = v1411;
  v1413 = *v1411;
  v1414 = swift_isUniquelyReferenced_nonNull_native();
  v1729 = *v1412;
  *v1412 = 0x8000000000000000;
  sub_266ECD4CC(v1407, v1409, 100, v1414);
  *v1412 = v1729;
  v1410(v1746, 0);
  v1415 = sub_26738111C();
  v1417 = v1416;
  v1418 = *v1416;
  v1419 = swift_isUniquelyReferenced_nonNull_native();
  v1730 = *v1417;
  *v1417 = 0x8000000000000000;
  sub_266ECD368(101, 0x4E45494C435F4C46, 0xEF544E4556455F54, v1419);
  v1420 = *v1417;
  *v1417 = v1730;

  v1415(v1746, 0);
  v1421 = sub_266ECB128(&unk_287890670);
  v1423 = v1422;
  v1424 = sub_2673810FC();
  v1426 = v1425;
  v1427 = *v1425;
  v1428 = swift_isUniquelyReferenced_nonNull_native();
  v1731 = *v1426;
  *v1426 = 0x8000000000000000;
  sub_266ECD4CC(v1421, v1423, 101, v1428);
  *v1426 = v1731;
  v1424(v1746, 0);
  v1429 = sub_26738111C();
  v1431 = v1430;
  v1432 = *v1430;
  v1433 = swift_isUniquelyReferenced_nonNull_native();
  v1732 = *v1431;
  *v1431 = 0x8000000000000000;
  sub_266ECD368(102, 0xD000000000000018, 0x800000026748EA40, v1433);
  v1434 = *v1431;
  *v1431 = v1732;

  v1429(v1746, 0);
  v1435 = sub_266ECB128(&unk_2878906C8);
  v1437 = v1436;
  v1438 = sub_2673810FC();
  v1440 = v1439;
  v1441 = *v1439;
  v1442 = swift_isUniquelyReferenced_nonNull_native();
  v1733 = *v1440;
  *v1440 = 0x8000000000000000;
  sub_266ECD4CC(v1435, v1437, 102, v1442);
  *v1440 = v1733;
  v1438(v1746, 0);
  v1443 = sub_26738111C();
  v1445 = v1444;
  v1446 = *v1444;
  v1447 = swift_isUniquelyReferenced_nonNull_native();
  v1734 = *v1445;
  *v1445 = 0x8000000000000000;
  sub_266ECD368(103, 0xD000000000000015, 0x800000026748EA60, v1447);
  v1448 = *v1445;
  *v1445 = v1734;

  v1443(v1746, 0);
  v1449 = sub_266ECB128(&unk_287890720);
  v1451 = v1450;
  v1452 = sub_2673810FC();
  v1454 = v1453;
  v1455 = *v1453;
  v1456 = swift_isUniquelyReferenced_nonNull_native();
  v1735 = *v1454;
  *v1454 = 0x8000000000000000;
  sub_266ECD4CC(v1449, v1451, 103, v1456);
  *v1454 = v1735;
  v1452(v1746, 0);
  v1457 = sub_26738111C();
  v1459 = v1458;
  v1460 = *v1458;
  v1461 = swift_isUniquelyReferenced_nonNull_native();
  v1736 = *v1459;
  *v1459 = 0x8000000000000000;
  sub_266ECD368(104, 0xD000000000000010, 0x800000026748EA80, v1461);
  v1462 = *v1459;
  *v1459 = v1736;

  v1457(v1746, 0);
  v1463 = sub_266ECB128(&unk_287890788);
  v1465 = v1464;
  v1466 = sub_2673810FC();
  v1468 = v1467;
  v1469 = *v1467;
  v1470 = swift_isUniquelyReferenced_nonNull_native();
  v1737 = *v1468;
  *v1468 = 0x8000000000000000;
  sub_266ECD4CC(v1463, v1465, 104, v1470);
  *v1468 = v1737;
  v1466(v1746, 0);
  v1471 = sub_26738111C();
  v1473 = v1472;
  v1474 = *v1472;
  v1475 = swift_isUniquelyReferenced_nonNull_native();
  v1738 = *v1473;
  *v1473 = 0x8000000000000000;
  sub_266ECD368(106, 0xD000000000000015, 0x800000026748EAA0, v1475);
  v1476 = *v1473;
  *v1473 = v1738;

  v1471(v1746, 0);
  v1477 = sub_266ECB128(&unk_2878907E0);
  v1479 = v1478;
  v1480 = sub_2673810FC();
  v1482 = v1481;
  v1483 = *v1481;
  v1484 = swift_isUniquelyReferenced_nonNull_native();
  v1739 = *v1482;
  *v1482 = 0x8000000000000000;
  sub_266ECD4CC(v1477, v1479, 106, v1484);
  *v1482 = v1739;
  v1480(v1746, 0);
  v1485 = sub_26738111C();
  v1487 = v1486;
  v1488 = *v1486;
  v1489 = swift_isUniquelyReferenced_nonNull_native();
  v1740 = *v1487;
  *v1487 = 0x8000000000000000;
  sub_266ECD368(107, 0xD00000000000001ALL, 0x800000026748EAC0, v1489);
  v1490 = *v1487;
  *v1487 = v1740;

  v1485(v1746, 0);
  v1491 = sub_266ECB128(&unk_287890848);
  v1493 = v1492;
  v1494 = sub_2673810FC();
  v1496 = v1495;
  v1497 = *v1495;
  v1498 = swift_isUniquelyReferenced_nonNull_native();
  v1741 = *v1496;
  *v1496 = 0x8000000000000000;
  sub_266ECD4CC(v1491, v1493, 107, v1498);
  *v1496 = v1741;
  v1494(v1746, 0);
  v1499 = sub_26738111C();
  v1501 = v1500;
  v1502 = *v1500;
  v1503 = swift_isUniquelyReferenced_nonNull_native();
  v1742 = *v1501;
  *v1501 = 0x8000000000000000;
  sub_266ECD368(108, 0xD000000000000010, 0x800000026748EAE0, v1503);
  v1504 = *v1501;
  *v1501 = v1742;

  v1499(v1746, 0);
  v1505 = sub_266ECB128(&unk_2878908B0);
  v1507 = v1506;
  v1508 = sub_2673810FC();
  v1510 = v1509;
  v1511 = *v1509;
  v1512 = swift_isUniquelyReferenced_nonNull_native();
  v1743 = *v1510;
  *v1510 = 0x8000000000000000;
  sub_266ECD4CC(v1505, v1507, 108, v1512);
  *v1510 = v1743;
  v1508(v1746, 0);
  v1513 = sub_26738111C();
  v1515 = v1514;
  v1516 = *v1514;
  v1517 = swift_isUniquelyReferenced_nonNull_native();
  v1744 = *v1515;
  *v1515 = 0x8000000000000000;
  sub_266ECD368(109, 0xD000000000000015, 0x800000026748EB00, v1517);
  v1518 = *v1515;
  *v1515 = v1744;

  v1513(v1746, 0);
  v1519 = sub_266ECB128(&unk_287890908);
  v1521 = v1520;
  v1522 = sub_2673810FC();
  v1524 = v1523;
  v1525 = *v1523;
  v1526 = swift_isUniquelyReferenced_nonNull_native();
  v1745 = *v1524;
  *v1524 = 0x8000000000000000;
  sub_266ECD4CC(v1519, v1521, 109, v1526);
  *v1524 = v1745;
  return v1522(v1746, 0);
}