uint64_t sub_2670B933C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B93A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670B9400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MHSchemaMHEndpointerAccessibleContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHEndpointerAccessibleLevel(0);
  sub_2670B977C(&qword_2800F4608, type metadata accessor for MHSchemaMHEndpointerAccessibleLevel);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267457810);
  return v5(v7, 0);
}

uint64_t sub_2670B9670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B96D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670B977C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670B97C4()
{
  result = qword_2800F4440;
  if (!qword_2800F4440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4440);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointerAccessibleLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267457870, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x80000002674578A0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674578D0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670B9A28(uint64_t a1)
{
  v2 = sub_2670B9B2C(&qword_2800F4610);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670B9A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670B9B2C(&qword_2800F4610);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670B9B2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHEndpointerAccessibleLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointerTimeoutMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x756F656D69547369, 0xE900000000000074);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E540], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267457940);
  return v15(v18, 0);
}

uint64_t sub_2670B9E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670B9EFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670B9F60()
{
  result = qword_2800F45F8;
  if (!qword_2800F45F8)
  {
    sub_2670B9FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45F8);
  }

  return result;
}

unint64_t sub_2670B9FB8()
{
  result = qword_2800F45F0;
  if (!qword_2800F45F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45F0);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267457990, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x80000002674579B0, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674579D0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x80000002674579F0, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267457A10, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267457A30, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x8000000267457A50, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000015, 0x8000000267457A70, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2670BA45C(uint64_t a1)
{
  v2 = sub_2670BA560(&qword_2800F4618);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670BA4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670BA560(&qword_2800F4618);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670BA560(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHEndpointerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointerUsed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHEndpointerType(0);
  sub_2670BA8A8(&qword_2800F45C8, type metadata accessor for MHSchemaMHEndpointerType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E696F70646E65, 0xEA00000000007265);
  v5(v7, 0);
  sub_266ECB128(&unk_287888340);
  return sub_2673811CC();
}

uint64_t sub_2670BA79C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BA800(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670BA8A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670BA8F0()
{
  result = qword_2800F4400;
  if (!qword_2800F4400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4400);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointFeaturesAtEndpoint.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v53 = sub_26738113C();
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v53);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v47 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v56 = "tFeaturesAtEndpoint";
  v10 = *MEMORY[0x277D3E540];
  v58 = *(v2 + 104);
  v55 = v2 + 104;
  v11 = v10;
  LODWORD(v50) = v10;
  v58(v5);
  v59[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v9, 0, 1, v12);
  v51 = v14;
  v57 = a1;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v56 | 0x8000000000000000);
  v16(v59, 0);
  v56 = "trailingSilenceDurationInNs";
  v17 = v58;
  (v58)(v5, v11, v53);
  v59[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v56 | 0x8000000000000000);
  v18(v59, 0);
  v49 = "clientSilenceFramesCountInNs";
  LODWORD(v56) = *MEMORY[0x277D3E500];
  v17(v5);
  v59[0] = 1;
  sub_26738114C();
  v54 = v12;
  v52 = v15;
  v19 = v51;
  v51(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v49 | 0x8000000000000000);
  v20(v59, 0);
  LODWORD(v49) = *MEMORY[0x277D3E538];
  v21 = v58;
  v58(v5);
  v59[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E756F4364726F77, 0xE900000000000074);
  v22(v59, 0);
  v48 = "endOfSentenceLikelihood";
  v23 = v53;
  (v21)(v5, v50, v53);
  v59[0] = 1;
  sub_26738114C();
  v24 = v51;
  v51(v9, 0, 1, v54);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v48 | 0x8000000000000000);
  v25(v59, 0);
  v48 = "serverFeaturesLatencyInNs";
  (v21)(v5, v56, v23);
  v59[0] = 1;
  sub_26738114C();
  v26 = v54;
  v27 = v24;
  v24(v9, 0, 1, v54);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v48 | 0x8000000000000000);
  v28(v59, 0);
  v48 = "clientSilenceProbability";
  v29 = v53;
  v30 = v58;
  (v58)(v5, v50, v53);
  v59[0] = 1;
  sub_26738114C();
  v27(v9, 0, 1, v26);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v48 | 0x8000000000000000);
  v31(v59, 0);
  v47 = v5;
  v48 = "rcTrailingSilenceDuration";
  (v30)(v5, v56, v29);
  v59[0] = 1;
  sub_26738114C();
  v32 = v54;
  v33 = v51;
  v51(v9, 0, 1, v54);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v48 | 0x8000000000000000);
  v34(v59, 0);
  v35 = v47;
  (v30)(v47, v49, v29);
  v59[0] = 1;
  sub_26738114C();
  v33(v9, 0, 1, v32);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F4364726F576372, 0xEB00000000746E75);
  v36(v59, 0);
  v49 = "rcEndOfSentenceLikelihood";
  (v30)(v35, v50, v29);
  v59[0] = 1;
  sub_26738114C();
  v33(v9, 0, 1, v32);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v49 | 0x8000000000000000);
  v37(v59, 0);
  v50 = "rcServerFeaturesLatency";
  v38 = v56;
  v39 = v58;
  (v58)(v35, v56, v29);
  v59[0] = 1;
  sub_26738114C();
  v40 = v54;
  v33(v9, 0, 1, v54);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v50 | 0x8000000000000000);
  v41(v59, 0);
  v50 = "silencePosterior";
  v42 = v53;
  v39(v35, v38, v53);
  v59[0] = 1;
  sub_26738114C();
  v43 = v51;
  v51(v9, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v50 | 0x8000000000000000);
  v44(v59, 0);
  (v58)(v35, v56, v42);
  v59[0] = 1;
  sub_26738114C();
  v43(v9, 0, 1, v40);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x8000000267457C40);
  return v45(v59, 0);
}

uint64_t sub_2670BB568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BB5CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BB630()
{
  result = qword_2800F45D8;
  if (!qword_2800F45D8)
  {
    sub_2670BB688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45D8);
  }

  return result;
}

unint64_t sub_2670BB688()
{
  result = qword_2800F45D0;
  if (!qword_2800F45D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45D0);
  }

  return result;
}

uint64_t static MHSchemaMHEndpointLatencyInfoReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v4 + 104))(v7, *MEMORY[0x277D3E540], v3);
  v38[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, 0x8000000267457CA0);
  v15(v38, 0);
  sub_266ECB294(0, &qword_2800F4620, 0x277D58950);
  sub_266ECAF2C(&qword_2800F4628, &qword_2800F4620, 0x277D58950);
  sub_26738120C();
  v33 = v14;
  v34 = v13 + 56;
  v14(v11, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x8000000267457CC0);
  v16(v38, 0);
  v35 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v37, 0xD000000000000019, 0x8000000267457CC0);
  v19 = *(v13 + 48);
  if (!v19(v20, 1, v12))
  {
    sub_266ECB128(&unk_287888368);
    sub_26738115C();
  }

  (v18)(v37, 0);
  v17(v38, 0);
  sub_26738120C();
  v33(v11, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000023, 0x8000000267457CE0);
  v21(v38, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v37, 0xD000000000000023, 0x8000000267457CE0);
  if (!v19(v24, 1, v12))
  {
    sub_266ECB128(&unk_287888390);
    sub_26738115C();
  }

  (v23)(v37, 0);
  v22(v38, 0);
  v32 = "ngPacketLatencyInfo";
  sub_266ECB294(0, &qword_2800F45E0, 0x277D58938);
  sub_266ECAF2C(&qword_2800F45E8, &qword_2800F45E0, 0x277D58938);
  sub_26738120C();
  v25 = v12;
  v26 = v12;
  v27 = v33;
  v33(v11, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, v32 | 0x8000000000000000);
  v28(v38, 0);
  sub_26738120C();
  v27(v11, 0, 1, v26);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, 0x8000000267457D30);
  return v29(v38, 0);
}

uint64_t sub_2670BBD54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BBDB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHFirstPassEnhancedCarplayTriggerMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x8000000267457D90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267457DC0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003DLL, 0x8000000267457DF0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ELL, 0x8000000267457E30, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2670BC0E0(uint64_t a1)
{
  v2 = sub_2670BC1E4(&qword_2800F4630);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670BC148(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670BC1E4(&qword_2800F4630);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670BC1E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHHostPowerState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267457EA0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267457EC0, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x8000000267457EE0, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267457F00, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267457F20, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670BC520(uint64_t a1)
{
  v2 = sub_2670BC624(&qword_2800F4640);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670BC588(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670BC624(&qword_2800F4640);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670BC624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHHostPowerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHLatticeFalseTriggerMitigationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x65726F6373, 0xE500000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C6F687365726874, 0xE900000000000064);
  return v16(v20, 0);
}

uint64_t sub_2670BC988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BC9EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BCA50()
{
  result = qword_2800F4648;
  if (!qword_2800F4648)
  {
    sub_2670BCAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4648);
  }

  return result;
}

unint64_t sub_2670BCAA8()
{
  result = qword_2800F4650;
  if (!qword_2800F4650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4650);
  }

  return result;
}

uint64_t static MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4658, 0x277D58888);
  sub_266ECAF2C(&qword_2800F4660, &qword_2800F4658, 0x277D58888);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F4650, 0x277D58870);
  sub_266ECAF2C(&qword_2800F4648, &qword_2800F4650, 0x277D58870);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F4668, 0x277D58880);
  sub_266ECAF2C(&qword_2800F4670, &qword_2800F4668, 0x277D58880);
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

uint64_t sub_2670BD00C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BD070(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHLatticeFalseTriggerMitigationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670BD364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BD3C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BD42C()
{
  result = qword_2800F4670;
  if (!qword_2800F4670)
  {
    sub_2670BD484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4670);
  }

  return result;
}

unint64_t sub_2670BD484()
{
  result = qword_2800F4668;
  if (!qword_2800F4668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4668);
  }

  return result;
}

uint64_t static MHSchemaMHLatticeFalseTriggerMitigationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670BD724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BD788(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BD7EC()
{
  result = qword_2800F4660;
  if (!qword_2800F4660)
  {
    sub_2670BD844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4660);
  }

  return result;
}

unint64_t sub_2670BD844()
{
  result = qword_2800F4658;
  if (!qword_2800F4658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4658);
  }

  return result;
}

uint64_t static MHSchemaMHMitigationDecisionRecommended.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267458090);
  return v10(v12, 0);
}

uint64_t sub_2670BDAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BDB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BDBA8()
{
  result = qword_2800F4428;
  if (!qword_2800F4428)
  {
    sub_2670BDC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4428);
  }

  return result;
}

unint64_t sub_2670BDC00()
{
  result = qword_2800F4420;
  if (!qword_2800F4420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4420);
  }

  return result;
}

uint64_t static MHSchemaMHOdldFalseTriggerMitigated.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v58 = sub_26738113C();
  v3 = *(v58 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v58);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v53 = a2;
  sub_26738119C();
  v49 = *MEMORY[0x277D3E530];
  v11 = *(v3 + 104);
  v11(v6);
  v60[0] = 1;
  sub_26738114C();
  v52 = sub_26738116C();
  v50 = *(v52 - 8);
  v12 = v50 + 56;
  v13 = *(v50 + 56);
  v13(v10, 0, 1, v52);
  v47 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v14(v60, 0);
  v15 = *MEMORY[0x277D3E500];
  v16 = v58;
  (v11)(v6, v15, v58);
  v56 = v11;
  v60[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v52);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x726F6353646C646FLL, 0xE900000000000065);
  v17(v60, 0);
  v46 = "seTriggerMitigated";
  v18 = v6;
  v54 = v15;
  v19 = v15;
  v20 = v6;
  v21 = v16;
  (v11)(v18, v19, v16);
  v60[0] = 1;
  sub_26738114C();
  v22 = v52;
  v23 = v47;
  v47(v10, 0, 1, v52);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v46 | 0x8000000000000000);
  v24(v60, 0);
  v57 = v3 + 104;
  (v56)(v20, v49, v21);
  v25 = v12;
  v60[0] = 1;
  v26 = v20;
  sub_26738114C();
  v27 = v23;
  v55 = v25;
  v23(v10, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x73654D726F727265, 0xEC00000065676173);
  v28(v60, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v59, 0x73654D726F727265, 0xEC00000065676173);
  if (!(*(v50 + 48))(v31, 1, v22))
  {
    sub_266ECB128(&unk_2878883B8);
    sub_26738115C();
  }

  (v30)(v59, 0);
  v29(v60, 0);
  v32 = *MEMORY[0x277D3E538];
  v48 = v26;
  (v56)(v26, v32, v58);
  v60[0] = 1;
  sub_26738114C();
  v23(v10, 0, 1, v22);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0x646F43726F727265, 0xE900000000000065);
  v33(v60, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v34 = v22;
  v27(v10, 0, 1, v22);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0x6552726F68636E61, 0xEF64497473657571);
  v35(v60, 0);
  sub_26738120C();
  v36 = v27;
  v27(v10, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x8000000267458110);
  v37(v60, 0);
  v51 = "previousRequestId";
  v38 = v48;
  v39 = v58;
  v40 = v56;
  (v56)(v48, v54, v58);
  v60[0] = 1;
  sub_26738114C();
  v41 = v52;
  v36(v10, 0, 1, v52);
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v51 | 0x8000000000000000);
  v42(v60, 0);
  (v40)(v38, v54, v39);
  v60[0] = 1;
  sub_26738114C();
  v36(v10, 0, 1, v41);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0x63536C6169636F73, 0xEB0000000065726FLL);
  v43(v60, 0);
  (v40)(v38, v54, v39);
  v60[0] = 1;
  sub_26738114C();
  v36(v10, 0, 1, v41);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267458150);
  return v44(v60, 0);
}

uint64_t sub_2670BE67C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BE6E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHOnDeviceEndpointerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x64656C62616E65, 0xE700000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_2878883E0);
  return sub_2673811CC();
}

uint64_t sub_2670BE9E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BEA4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BEAB0()
{
  result = qword_2800F43E8;
  if (!qword_2800F43E8)
  {
    sub_2670BEB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F43E8);
  }

  return result;
}

unint64_t sub_2670BEB08()
{
  result = qword_2800F43E0;
  if (!qword_2800F43E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F43E0);
  }

  return result;
}

uint64_t static MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2670BEE88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BEEEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BEF50()
{
  result = qword_2800F4518;
  if (!qword_2800F4518)
  {
    sub_2670BEFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4518);
  }

  return result;
}

unint64_t sub_2670BEFA8()
{
  result = qword_2800F4510;
  if (!qword_2800F4510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4510);
  }

  return result;
}

uint64_t static MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2670BF4DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BF540(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BF5A4()
{
  result = qword_2800F4528;
  if (!qword_2800F4528)
  {
    sub_2670BF5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4528);
  }

  return result;
}

unint64_t sub_2670BF5FC()
{
  result = qword_2800F4520;
  if (!qword_2800F4520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4520);
  }

  return result;
}

uint64_t static MHSchemaMHRaiseToSpeakTriggered.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670BF890(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BF8F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BF958()
{
  result = qword_2800F4508;
  if (!qword_2800F4508)
  {
    sub_2670BF9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4508);
  }

  return result;
}

unint64_t sub_2670BF9B0()
{
  result = qword_2800F4500;
  if (!qword_2800F4500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4500);
  }

  return result;
}

uint64_t static MHSchemaMHRTSFalseRejectDetected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670BFED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670BFF38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670BFF9C()
{
  result = qword_2800F4488;
  if (!qword_2800F4488)
  {
    sub_2670BFFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4488);
  }

  return result;
}

unint64_t sub_2670BFFF4()
{
  result = qword_2800F4480;
  if (!qword_2800F4480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4480);
  }

  return result;
}

uint64_t static MHSchemaMHSelfTriggerSuppressionAudioSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x80000002674583E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x8000000267458410, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x8000000267458460, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670C0254(uint64_t a1)
{
  v2 = sub_2670C0358(&qword_2800F4680);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670C02BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670C0358(&qword_2800F4680);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670C0358(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHSelfTriggerSuppressionAudioSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHSelfTriggerSuppressionSession.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v30 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E538];
  v13 = *(v4 + 104);
  v35 = v4 + 104;
  v36 = v13;
  v31 = v3;
  v13(v7, v12, v3);
  v37[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v33 = *(v15 + 56);
  v34 = v14;
  v16 = v15 + 56;
  v33(v11, 0, 1, v14);
  v30[1] = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000020, 0x80000002674584D0);
  v17(v37, 0);
  v18 = v36;
  v36(v7, *MEMORY[0x277D3E518], v3);
  v37[0] = 1;
  sub_26738114C();
  v19 = v14;
  v30[0] = v16;
  v20 = v33;
  v33(v11, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x8000000267458500);
  v21(v37, 0);
  type metadata accessor for MHSchemaMHSelfTriggerSuppressionAudioSource(0);
  sub_2670C0A4C(&qword_2800F4678, type metadata accessor for MHSchemaMHSelfTriggerSuppressionAudioSource);
  sub_26738120C();
  v22 = v34;
  v20(v11, 0, 1, v34);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0x756F536F69647561, 0xEB00000000656372);
  v23(v37, 0);
  v24 = *MEMORY[0x277D3E4E8];
  v25 = v31;
  v18(v7, v24, v31);
  v37[0] = 1;
  sub_26738114C();
  v26 = v33;
  v33(v11, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x8000000267458520);
  v27(v37, 0);
  v36(v7, v24, v25);
  v37[0] = 1;
  sub_26738114C();
  v26(v11, 0, 1, v34);
  v28 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, 0x8000000267458540);
  return v28(v37, 0);
}

uint64_t sub_2670C0940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C09A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670C0A4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670C0A94()
{
  result = qword_2800F4690;
  if (!qword_2800F4690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4690);
  }

  return result;
}

uint64_t static MHSchemaMHServerEndpointerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x64656C62616E65, 0xE700000000000000);
  v10(v12, 0);
  sub_266ECB128(&unk_287888408);
  return sub_2673811CC();
}

uint64_t sub_2670C0D44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C0DA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C0E0C()
{
  result = qword_2800F43F8;
  if (!qword_2800F43F8)
  {
    sub_2670C0E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F43F8);
  }

  return result;
}

unint64_t sub_2670C0E64()
{
  result = qword_2800F43F0;
  if (!qword_2800F43F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F43F0);
  }

  return result;
}

uint64_t static MHSchemaMHSiriDirectedSpeechDetectionFailed.makeTypeManifestAndEnsureFields(in:)()
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
  v21 = v1 + 104;
  v22 = v0;
  v20 = v10;
  v10(v4, v9, v0);
  v24[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v19 = *(v12 + 56);
  v19(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x73654D726F727265, 0xEC00000065676173);
  v13(v24, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v23, 0x73654D726F727265, 0xEC00000065676173);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_287888430);
    sub_26738115C();
  }

  (v15)(v23, 0);
  v14(v24, 0);
  v20(v4, *MEMORY[0x277D3E538], v22);
  v24[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v17(v24, 0);
}

uint64_t sub_2670C1294(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C12F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C135C()
{
  result = qword_2800F4478;
  if (!qword_2800F4478)
  {
    sub_2670C13B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4478);
  }

  return result;
}

unint64_t sub_2670C13B4()
{
  result = qword_2800F4470;
  if (!qword_2800F4470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4470);
  }

  return result;
}

uint64_t static MHSchemaMHSiriLaunchRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4698, 0x277D588F0);
  sub_266ECAF2C(&qword_2800F46A0, &qword_2800F4698, 0x277D588F0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F46A8, 0x277D588E8);
  sub_266ECAF2C(&qword_2800F46B0, &qword_2800F46A8, 0x277D588E8);
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

uint64_t sub_2670C184C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C18B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHSiriLaunchRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670C1B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C1C00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C1C64()
{
  result = qword_2800F46B0;
  if (!qword_2800F46B0)
  {
    sub_2670C1CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F46B0);
  }

  return result;
}

unint64_t sub_2670C1CBC()
{
  result = qword_2800F46A8;
  if (!qword_2800F46A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F46A8);
  }

  return result;
}

uint64_t static MHSchemaMHSiriLaunchRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670C1F50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C1FB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C2018()
{
  result = qword_2800F46A0;
  if (!qword_2800F46A0)
  {
    sub_2670C2070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F46A0);
  }

  return result;
}

unint64_t sub_2670C2070()
{
  result = qword_2800F4698;
  if (!qword_2800F4698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4698);
  }

  return result;
}

uint64_t static MHSchemaMHSpeakerFalseTriggerMitigated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v34 = sub_26738113C();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  LODWORD(v32) = *MEMORY[0x277D3E530];
  v36 = *(v2 + 104);
  v36(v5);
  v39[0] = 1;
  sub_26738114C();
  v33 = sub_26738116C();
  v30 = *(v33 - 8);
  v10 = (v30 + 56);
  v11 = *(v30 + 56);
  (v11)(v9, 0, 1, v33);
  v35 = a1;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v12(v39, 0);
  v31 = "FalseTriggerMitigated";
  v13 = *MEMORY[0x277D3E500];
  v14 = v34;
  v15 = v36;
  (v36)(v5, v13, v34);
  v37 = v2 + 104;
  v39[0] = 1;
  sub_26738114C();
  (v11)(v9, 0, 1, v33);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v31 | 0x8000000000000000);
  v16(v39, 0);
  v15(v5, v13, v14);
  v39[0] = 1;
  sub_26738114C();
  v17 = v33;
  (v11)(v9, 0, 1, v33);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6F687365726874, 0xEE0065726F635364);
  v18(v39, 0);
  (v36)(v5, v32, v14);
  v39[0] = 1;
  sub_26738114C();
  v31 = v11;
  v32 = v10;
  (v11)(v9, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x73654D726F727265, 0xEC00000065676173);
  v19(v39, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v38, 0x73654D726F727265, 0xEC00000065676173);
  v22 = v17;
  if (!(*(v30 + 48))(v23, 1, v17))
  {
    sub_266ECB128(&unk_287888458);
    sub_26738115C();
  }

  (v21)(v38, 0);
  v20(v39, 0);
  v30 = "speakerMatchScore";
  v24 = v34;
  v25 = v36;
  (v36)(v5, *MEMORY[0x277D3E518], v34);
  v39[0] = 1;
  sub_26738114C();
  v26 = v31;
  (v31)(v9, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v30 | 0x8000000000000000);
  v27(v39, 0);
  (v25)(v5, *MEMORY[0x277D3E538], v24);
  v39[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F43726F727265, 0xE900000000000065);
  return v28(v39, 0);
}

uint64_t sub_2670C27F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C2858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C28BC()
{
  result = qword_2800F4468;
  if (!qword_2800F4468)
  {
    sub_2670C2914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4468);
  }

  return result;
}

unint64_t sub_2670C2914()
{
  result = qword_2800F4460;
  if (!qword_2800F4460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4460);
  }

  return result;
}

uint64_t static MHSchemaMHSpeechDetectorContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F46B8, 0x277D58928);
  sub_266ECAF2C(&qword_2800F46C0, &qword_2800F46B8, 0x277D58928);
  sub_26738121C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
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

uint64_t sub_2670C2CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C2D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHSpeechDetectorEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v24 = sub_26738113C();
  v0 = *(v24 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v23 = v9 + 56;
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267458110);
  v11(v25, 0);
  v21 = "iri.mh.MHSpeechDetectorEnded";
  v12 = *MEMORY[0x277D3E540];
  v22 = *(v0 + 104);
  v13 = v24;
  v22(v3, v12, v24);
  v25[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, v21 | 0x8000000000000000);
  v14(v25, 0);
  v21 = "eptedRequestInNs";
  v15 = *MEMORY[0x277D3E500];
  v16 = v13;
  v17 = v22;
  v22(v3, v15, v16);
  v25[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v21 | 0x8000000000000000);
  v18(v25, 0);
  v17(v3, v15, v24);
  v25[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x80000002674587C0);
  return v19(v25, 0);
}

uint64_t sub_2670C32B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C331C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHSpeechErrorType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267458820, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267458840, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2670C3564(uint64_t a1)
{
  v2 = sub_2670C3668(&qword_2800F46C8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670C35CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670C3668(&qword_2800F46C8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670C3668(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHSpeechErrorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHSpeechStopDetected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670C387C()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670C3A14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C3A78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHStatisticDistributionInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v34 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v37 = v3 + 104;
  v38 = v11;
  v41[0] = 1;
  sub_26738114C();
  v35 = sub_26738116C();
  v12 = *(v35 - 8);
  v13 = *(v12 + 56);
  v36 = v12 + 56;
  v13(v10, 0, 1, v35);
  v34[1] = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 7173486, 0xE300000000000000);
  v14(v41, 0);
  v40 = *MEMORY[0x277D3E540];
  v15 = v40;
  v39 = v2;
  v11(v6, v40, v2);
  v41[0] = 1;
  sub_26738114C();
  v16 = v35;
  v17 = v13;
  v13(v10, 0, 1, v35);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 7889261, 0xE300000000000000);
  v18(v41, 0);
  v19 = v2;
  v20 = v38;
  v38(v6, v15, v19);
  v41[0] = 1;
  sub_26738114C();
  v17(v10, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 7235949, 0xE300000000000000);
  v21(v41, 0);
  v20(v6, v40, v39);
  v41[0] = 1;
  sub_26738114C();
  v34[0] = v17;
  v17(v10, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 6780513, 0xE300000000000000);
  v22(v41, 0);
  v23 = v40;
  v24 = v39;
  v38(v6, v40, v39);
  v41[0] = 1;
  sub_26738114C();
  v17(v10, 0, 1, v16);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E616964656DLL, 0xE600000000000000);
  v25(v41, 0);
  v26 = v38;
  v38(v6, v23, v24);
  v41[0] = 1;
  sub_26738114C();
  v27 = v34[0];
  (v34[0])(v10, 0, 1, v16);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 3488112, 0xE300000000000000);
  v28(v41, 0);
  v29 = v39;
  v26(v6, *MEMORY[0x277D3E500], v39);
  v41[0] = 1;
  sub_26738114C();
  v30 = v35;
  v27(v10, 0, 1, v35);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 6583411, 0xE300000000000000);
  v31(v41, 0);
  v26(v6, v40, v29);
  v41[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v30);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x70756D726177, 0xE600000000000000);
  return v32(v41, 0);
}

uint64_t sub_2670C4280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C42E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C4348()
{
  result = qword_2800F45E8;
  if (!qword_2800F45E8)
  {
    sub_2670C43A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F45E8);
  }

  return result;
}

unint64_t sub_2670C43A0()
{
  result = qword_2800F45E0;
  if (!qword_2800F45E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F45E0);
  }

  return result;
}

uint64_t static MHSchemaMHStoppedListeningForSpeechContinuation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670C45BC()
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670C4754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C47B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHTrailingPacketLatencyInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v38 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32[-v9];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v35 = a1;
  sub_26738119C();
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v34 = v3 + 104;
  v39 = v11;
  v40[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v37 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 7173486, 0xE300000000000000);
  v14(v40, 0);
  v33 = *MEMORY[0x277D3E540];
  v15 = v33;
  v16 = v38;
  v11(v6, v33, v38);
  v40[0] = 1;
  sub_26738114C();
  v17 = v12;
  v13(v10, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 7889261, 0xE300000000000000);
  v18(v40, 0);
  v19 = v16;
  v20 = v16;
  v21 = v39;
  v39(v6, v15, v19);
  v40[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 7235949, 0xE300000000000000);
  v22(v40, 0);
  v23 = v33;
  v21(v6, v33, v20);
  v40[0] = 1;
  sub_26738114C();
  v36 = v17;
  v24 = v37;
  v37(v10, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 6780513, 0xE300000000000000);
  v25(v40, 0);
  v39(v6, v23, v38);
  v40[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v17);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E616964656DLL, 0xE600000000000000);
  v26(v40, 0);
  v27 = v38;
  v28 = v39;
  v39(v6, v23, v38);
  v40[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v36);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 3488112, 0xE300000000000000);
  v29(v40, 0);
  v28(v6, v33, v27);
  v40[0] = 1;
  sub_26738114C();
  v24(v10, 0, 1, v36);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 6583411, 0xE300000000000000);
  return v30(v40, 0);
}

uint64_t sub_2670C4F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C4F74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C4FD8()
{
  result = qword_2800F4628;
  if (!qword_2800F4628)
  {
    sub_2670C5030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4628);
  }

  return result;
}

unint64_t sub_2670C5030()
{
  result = qword_2800F4620;
  if (!qword_2800F4620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4620);
  }

  return result;
}

uint64_t static MHSchemaMHTRPCreated.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v10(v15, 0);
  (*(v0 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674206D0);
  return v11(v15, 0);
}

uint64_t sub_2670C53AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C5410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHTRPDetectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674589C0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674589E0, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267458A00, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670C56C8(uint64_t a1)
{
  v2 = sub_2670C57CC(&qword_2800F46D0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670C5730(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670C57CC(&qword_2800F46D0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670C57CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHTRPDetectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHUnintendedResponseSuppressionEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v38 = a1;
  sub_26738119C();
  v32 = *MEMORY[0x277D3E530];
  v36 = *(v3 + 104);
  v11 = v2;
  v36(v6);
  v40[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v33 = *(v12 - 8);
  v13 = v33 + 56;
  v37 = *(v33 + 56);
  v31[0] = v12;
  v37(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v14(v40, 0);
  v34 = *MEMORY[0x277D3E500];
  v15 = v34;
  v35 = v11;
  v16 = v36;
  (v36)(v6, v34, v11);
  v40[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x65726F6373, 0xE500000000000000);
  v17(v40, 0);
  v16(v6, v15, v11);
  v31[1] = v3 + 104;
  v40[0] = 1;
  sub_26738114C();
  v18 = v31[0];
  v19 = v37;
  v31[2] = v13;
  v37(v10, 0, 1, v31[0]);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C6F687365726874, 0xE900000000000064);
  v20(v40, 0);
  v21 = v35;
  v22 = v36;
  (v36)(v6, v32, v35);
  v40[0] = 1;
  sub_26738114C();
  v23 = v18;
  v19(v10, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267458A60);
  v24(v40, 0);
  (v22)(v6, v34, v21);
  v40[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267458A80);
  v25(v40, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v39, 0xD000000000000012, 0x8000000267458A80);
  if (!(*(v33 + 48))(v28, 1, v23))
  {
    sub_266ECB128(&unk_287888480);
    sub_26738115C();
  }

  (v27)(v39, 0);
  v26(v40, 0);
  (v36)(v6, v34, v35);
  v40[0] = 1;
  sub_26738114C();
  v37(v10, 0, 1, v23);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x8000000267458AA0);
  return v29(v40, 0);
}

uint64_t sub_2670C5F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C5F78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C5FDC()
{
  result = qword_2800F46D8;
  if (!qword_2800F46D8)
  {
    sub_2670C6034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F46D8);
  }

  return result;
}

unint64_t sub_2670C6034()
{
  result = qword_2800F46E0;
  if (!qword_2800F46E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F46E0);
  }

  return result;
}

uint64_t static MHSchemaMHUnintendedResponseSuppressionEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F46E8, 0x277D58970);
  sub_266ECAF2C(&qword_2800F46F0, &qword_2800F46E8, 0x277D58970);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F46E0, 0x277D58958);
  sub_266ECAF2C(&qword_2800F46D8, &qword_2800F46E0, 0x277D58958);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F46F8, 0x277D58968);
  sub_266ECAF2C(&qword_2800F4700, &qword_2800F46F8, 0x277D58968);
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

uint64_t sub_2670C6598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C65FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUnintendedResponseSuppressionFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670C68F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C6954(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C69B8()
{
  result = qword_2800F4700;
  if (!qword_2800F4700)
  {
    sub_2670C6A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4700);
  }

  return result;
}

unint64_t sub_2670C6A10()
{
  result = qword_2800F46F8;
  if (!qword_2800F46F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F46F8);
  }

  return result;
}

uint64_t static MHSchemaMHUnintendedResponseSuppressionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v26 = a1;
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
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v2 + 104);
  v24 = v1;
  v25 = v2 + 104;
  v11(v5, v10, v1);
  v28[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v27 = v13 + 56;
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x65527273416D756ELL, 0xED00007364726F63);
  v15(v28, 0);
  v23 = "dedResponseSuppressionStarted";
  v11(v5, v10, v1);
  v28[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v23 | 0x8000000000000000);
  v16(v28, 0);
  v11(v5, *MEMORY[0x277D3E540], v24);
  v28[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267457B00);
  v17(v28, 0);
  sub_266ECB294(0, &qword_2800F3E18, 0x277D585F8);
  sub_266ECAF2C(&qword_2800F3E20, &qword_2800F3E18, 0x277D585F8);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F63536D746661, 0xE900000000000065);
  v18(v28, 0);
  sub_266ECB294(0, &qword_2800F4650, 0x277D58870);
  sub_266ECAF2C(&qword_2800F4648, &qword_2800F4650, 0x277D58870);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F63536E6E726CLL, 0xE900000000000065);
  v19(v28, 0);
  sub_266ECB294(0, &qword_2800F4708, 0x277D58998);
  sub_266ECAF2C(&qword_2800F4710, &qword_2800F4708, 0x277D58998);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F63536D6575, 0xE800000000000000);
  return v20(v28, 0);
}

uint64_t sub_2670C70DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C7140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserEngagementAccumulatedAggregationStats.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v25 = "edAggregationStats";
  v30 = *MEMORY[0x277D3E518];
  v12 = *(v4 + 104);
  v26 = v3;
  v12(v7);
  v27 = v4 + 104;
  v28 = v12;
  v33[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v31 = v14 + 56;
  v15(v11, 0, 1, v13);
  v24[1] = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v25 | 0x8000000000000000);
  v16(v33, 0);
  v25 = "aggregationStartTimestamp";
  (v12)(v7, *MEMORY[0x277D3E508], v3);
  v33[0] = 1;
  sub_26738114C();
  v32 = v13;
  v15(v11, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, v25 | 0x8000000000000000);
  v17(v33, 0);
  sub_266ECB294(0, &qword_2800F4718, 0x277D58980);
  sub_266ECAF2C(&qword_2800F4720, &qword_2800F4718, 0x277D58980);
  sub_26738122C();
  v15(v11, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x8000000267458C40);
  v18(v33, 0);
  v19 = v26;
  v20 = v28;
  (v28)(v7, *MEMORY[0x277D3E530], v26);
  v33[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v32);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x795474726F686F63, 0xEA00000000006570);
  v21(v33, 0);
  (v20)(v7, v30, v19);
  v33[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v32);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x8000000267458C60);
  return v22(v33, 0);
}

uint64_t sub_2670C779C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C7800(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserEngagementAggregatedStats.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MHSchemaMHUserEngagementModelTriggerMechanism(0);
  sub_2670C8108(&qword_2800F4738, type metadata accessor for MHSchemaMHUserEngagementModelTriggerMechanism);
  sub_26738120C();
  v41 = sub_26738116C();
  v11 = *(v41 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v10, 0, 1, v41);
  v34 = v13;
  v37 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x697461676974696DLL, 0xEE00657079546E6FLL);
  v14(v42, 0);
  v15 = *MEMORY[0x277D3E508];
  v39 = *(v3 + 104);
  v40 = v3 + 104;
  LODWORD(v36) = v15;
  v38 = v2;
  v39(v6, v15, v2);
  v42[0] = 1;
  sub_26738114C();
  v16 = v41;
  v12(v10, 0, 1, v41);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x4374736575716572, 0xEC000000746E756FLL);
  v17(v42, 0);
  v18 = v39;
  v39(v6, v15, v2);
  v42[0] = 1;
  sub_26738114C();
  v35 = v12;
  v12(v10, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x8000000267458CC0);
  v19(v42, 0);
  v20 = v38;
  v18(v6, v36, v38);
  v42[0] = 1;
  sub_26738114C();
  v21 = v41;
  v12(v10, 0, 1, v41);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267458CE0);
  v22(v42, 0);
  v36 = "aggregationStats";
  v23 = *MEMORY[0x277D3E518];
  v33 = v6;
  v24 = v39;
  v39(v6, v23, v20);
  v42[0] = 1;
  sub_26738114C();
  v25 = v35;
  v35(v10, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v36 | 0x8000000000000000);
  v26(v42, 0);
  v36 = "unintendedRequestCount";
  v27 = v33;
  v24(v33, v23, v20);
  v42[0] = 1;
  sub_26738114C();
  v28 = v41;
  v25(v10, 0, 1, v41);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v36 | 0x8000000000000000);
  v29(v42, 0);
  v24(v27, *MEMORY[0x277D3E530], v38);
  v42[0] = 1;
  sub_26738114C();
  v25(v10, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  return v30(v42, 0);
}

uint64_t sub_2670C7FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C8060(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670C8108(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670C8150()
{
  result = qword_2800F4718;
  if (!qword_2800F4718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4718);
  }

  return result;
}

uint64_t static MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4740, 0x277D589A0);
  sub_266ECAF2C(&qword_2800F4748, &qword_2800F4740, 0x277D589A0);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F4708, 0x277D58998);
  sub_266ECAF2C(&qword_2800F4710, &qword_2800F4708, 0x277D58998);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F4750, 0x277D58990);
  sub_266ECAF2C(&qword_2800F4758, &qword_2800F4750, 0x277D58990);
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

uint64_t sub_2670C86B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C8718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserEngagementFalseTriggerMitigationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670C8A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C8A70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C8AD4()
{
  result = qword_2800F4758;
  if (!qword_2800F4758)
  {
    sub_2670C8B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4758);
  }

  return result;
}

unint64_t sub_2670C8B2C()
{
  result = qword_2800F4750;
  if (!qword_2800F4750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4750);
  }

  return result;
}

uint64_t static MHSchemaMHUserEngagementFalseTriggerMitigationScoreGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v20[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x65726F63536D6575, 0xE800000000000000);
  v15(v20, 0);
  v12(v6, v11, v19);
  v20[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x73657268546D6575, 0xEC000000646C6F68);
  return v16(v20, 0);
}

uint64_t sub_2670C8EA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C8F04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670C8F68()
{
  result = qword_2800F4710;
  if (!qword_2800F4710)
  {
    sub_2670C8FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4710);
  }

  return result;
}

unint64_t sub_2670C8FC0()
{
  result = qword_2800F4708;
  if (!qword_2800F4708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4708);
  }

  return result;
}

uint64_t static MHSchemaMHUserEngagementFalseTriggerMitigationStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v13(v18, 0);
  v10(v5, *MEMORY[0x277D3E518], v17[0]);
  v18[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267458E60);
  v14(v18, 0);
  sub_266ECB294(0, &qword_2800F4730, 0x277D58978);
  sub_266ECAF2C(&qword_2800F4728, &qword_2800F4730, 0x277D58978);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267458E80);
  return v15(v18, 0);
}

uint64_t sub_2670C9410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C9474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserEngagementModelTriggerMechanism.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x8000000267458EE0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x8000000267458F10, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x8000000267458F50, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x8000000267458F90, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2670C979C(uint64_t a1)
{
  v2 = sub_2670C98A0(&qword_2800F4760);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670C9804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670C98A0(&qword_2800F4760);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670C98A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHUserEngagementModelTriggerMechanism(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHUserSpeakingContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4768, 0x277D589B8);
  sub_266ECAF2C(&qword_2800F4770, &qword_2800F4768, 0x277D589B8);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F4778, 0x277D589B0);
  sub_266ECAF2C(&qword_2800F4780, &qword_2800F4778, 0x277D589B0);
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
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
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

uint64_t sub_2670C9DF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670C9E5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHUserSpeakingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670CA148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CA1AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670CA210()
{
  result = qword_2800F4780;
  if (!qword_2800F4780)
  {
    sub_2670CA268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4780);
  }

  return result;
}

unint64_t sub_2670CA268()
{
  result = qword_2800F4778;
  if (!qword_2800F4778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4778);
  }

  return result;
}

uint64_t static MHSchemaMHUserSpeakingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670CA4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CA560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670CA5C4()
{
  result = qword_2800F4770;
  if (!qword_2800F4770)
  {
    sub_2670CA61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4770);
  }

  return result;
}

unint64_t sub_2670CA61C()
{
  result = qword_2800F4768;
  if (!qword_2800F4768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4768);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceAdBlockerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F3EE0, 0x277D58618);
  sub_266ECAF2C(&qword_2800F3ED8, &qword_2800F3EE0, 0x277D58618);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F3EC0, 0x277D58608);
  sub_266ECAF2C(&qword_2800F3EB8, &qword_2800F3EC0, 0x277D58608);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F3ED0, 0x277D58610);
  sub_266ECAF2C(&qword_2800F3EC8, &qword_2800F3ED0, 0x277D58610);
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

uint64_t sub_2670CAB80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CABE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceProfileConfusionScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v18 = "ofileConfusionScore";
  v11 = *(v3 + 104);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v19[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v18 | 0x8000000000000000);
  v14(v19, 0);
  v11(v6, *MEMORY[0x277D3E538], v2);
  v19[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x6972616C696D6973, 0xEF65726F63537974);
  return v15(v19, 0);
}

uint64_t sub_2670CAFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CB024(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670CB088()
{
  result = qword_2800F4788;
  if (!qword_2800F4788)
  {
    sub_2670CB0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4788);
  }

  return result;
}

unint64_t sub_2670CB0E0()
{
  result = qword_2800F4790;
  if (!qword_2800F4790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4790);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v5, *MEMORY[0x277D3E538], v1);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267459140);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F4790, 0x277D589D0);
  sub_266ECAF2C(&qword_2800F4788, &qword_2800F4790, 0x277D589D0);
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267459160);
  return v13(v16, 0);
}

uint64_t sub_2670CB468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CB4CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceProfileICloudSyncFinished.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v26 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v25 = *MEMORY[0x277D3E530];
  v10 = *(v2 + 104);
  v23 = v1;
  v24 = v10;
  v10(v5);
  v27[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D6C6C6F726E65, 0xEC0000006449746ELL);
  v13(v27, 0);
  v22 = "ofileICloudSyncFinished";
  v14 = v1;
  v15 = v24;
  v24(v5, *MEMORY[0x277D3E4E8], v14);
  v27[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v22 | 0x8000000000000000);
  v16(v27, 0);
  v15(v5, v25, v23);
  v27[0] = 1;
  sub_26738114C();
  v17 = v12;
  v12(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x80000002674591E0);
  v18(v27, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_2670CBB2C(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v17(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x656C61636F6CLL, 0xE600000000000000);
  return v19(v27, 0);
}

uint64_t sub_2670CBA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CBA84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670CBB2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670CBB74()
{
  result = qword_2800F4550;
  if (!qword_2800F4550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4550);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceProfileOnboarded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v5, *MEMORY[0x277D3E538], v1);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267459230);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F47A0, 0x277D589E0);
  sub_266ECAF2C(&qword_2800F4798, &qword_2800F47A0, 0x277D589E0);
  sub_26738122C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000025, 0x8000000267459250);
  return v13(v16, 0);
}

uint64_t sub_2670CBEFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CBF60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceTriggerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F47A8, 0x277D58A40);
  sub_266ECAF2C(&qword_2800F47B0, &qword_2800F47A8, 0x277D58A40);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F47B8, 0x277D58A48);
  sub_266ECAF2C(&qword_2800F47C0, &qword_2800F47B8, 0x277D58A48);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F47C8, 0x277D58A38);
  sub_266ECAF2C(&qword_2800F47D0, &qword_2800F47C8, 0x277D58A38);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F47D8, 0x277D58A30);
  sub_266ECAF2C(&qword_2800F47E0, &qword_2800F47D8, 0x277D58A30);
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

uint64_t sub_2670CC5E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670CC64C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceTriggerEventInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v321 = a1;
  v3 = sub_26738113C();
  v333 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v311 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v311 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v12 = a2;
  sub_26738119C();
  v324 = "iri.mh.MHVoiceTriggerEventInfo";
  v13 = *MEMORY[0x277D3E540];
  v14 = *(v4 + 104);
  v332 = v4 + 104;
  v330 = v14;
  v325 = v13;
  (v14)(v7, v13, v3);
  v335[0] = 1;
  sub_26738114C();
  v15 = sub_26738116C();
  v320 = *(v15 - 8);
  v16 = v320 + 56;
  v17 = *(v320 + 56);
  v17(v11, 0, 1, v15);
  v331 = v12;
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, v324 | 0x8000000000000000);
  v18(v335, 0);
  v324 = "rStartSampleCount";
  v19 = v13;
  v20 = v330;
  (v330)(v7, v19, v333);
  v335[0] = 1;
  sub_26738114C();
  v329 = v16;
  v17(v11, 0, 1, v15);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, v324 | 0x8000000000000000);
  v21(v335, 0);
  LODWORD(v324) = *MEMORY[0x277D3E500];
  v20(v7);
  v22 = v20;
  v335[0] = 1;
  sub_26738114C();
  v23 = v15;
  v17(v11, 0, 1, v15);
  v24 = sub_2673811AC();
  sub_266EC637C(v11, 0x65726F6353746173, 0xE800000000000000);
  v24(v335, 0);
  v323 = "secondPassAnalyerEndSampleCount";
  LODWORD(v322) = *MEMORY[0x277D3E538];
  v22(v7);
  v25 = v22;
  v335[0] = 1;
  sub_26738114C();
  v26 = v23;
  v17(v11, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v323 | 0x8000000000000000);
  v27(v335, 0);
  v28 = v333;
  (v25)(v7, v324, v333);
  v335[0] = 1;
  sub_26738114C();
  v328 = v17;
  v17(v11, 0, 1, v23);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x7365726854746173, 0xEC000000646C6F68);
  v29(v335, 0);
  LODWORD(v323) = *MEMORY[0x277D3E4E8];
  v30 = v330;
  v330(v7);
  v335[0] = 1;
  sub_26738114C();
  v17(v11, 0, 1, v26);
  v31 = sub_2673811AC();
  sub_266EC637C(v11, 0x6767697254746173, 0xEC00000064657265);
  v31(v335, 0);
  v319 = "satNumTrainingUtterances";
  v32 = v324;
  (v30)(v7, v324, v28);
  v335[0] = 1;
  sub_26738114C();
  v328(v11, 0, 1, v26);
  v33 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v319 | 0x8000000000000000);
  v33(v335, 0);
  v319 = "invocationTypeId";
  (v30)(v7, v32, v28);
  v335[0] = 1;
  sub_26738114C();
  v34 = v26;
  v35 = v328;
  v328(v11, 0, 1, v26);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000020, v319 | 0x8000000000000000);
  v36(v335, 0);
  v319 = "mitigationScoreThreshold";
  v326 = v7;
  v37 = v324;
  v38 = v330;
  (v330)(v7, v324, v28);
  v335[0] = 1;
  sub_26738114C();
  v35(v11, 0, 1, v34);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000024, v319 | 0x8000000000000000);
  v39(v335, 0);
  v40 = v326;
  v38(v326, v37, v28);
  v335[0] = 1;
  sub_26738114C();
  v327 = v34;
  v35(v11, 0, 1, v34);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000024, 0x8000000267459370);
  v41(v335, 0);
  type metadata accessor for MHSchemaMHBiometricMatchResult(0);
  sub_2670D15D8(&qword_2800F4318, type metadata accessor for MHSchemaMHBiometricMatchResult);
  sub_26738120C();
  v35(v11, 0, 1, v34);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0x697274656D6F6962, 0xED000065756C4363);
  v42(v335, 0);
  v43 = v333;
  v44 = v330;
  (v330)(v40, v323, v333);
  v335[0] = 1;
  sub_26738114C();
  v45 = v327;
  v328(v11, 0, 1, v327);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0x676E696542746173, 0xEF64656E69617254);
  v46(v335, 0);
  v319 = "zerCombinationWeight";
  (v44)(v40, v322, v43);
  v335[0] = 1;
  sub_26738114C();
  v47 = v328;
  v328(v11, 0, 1, v45);
  v48 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v319 | 0x8000000000000000);
  v48(v335, 0);
  v319 = "lastConsecutivePHSRejects";
  v49 = v333;
  v50 = v330;
  (v330)(v40, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v47(v11, 0, 1, v45);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ELL, v319 | 0x8000000000000000);
  v51(v335, 0);
  v52 = v324;
  (v50)(v40, v324, v49);
  v335[0] = 1;
  sub_26738114C();
  v53 = v328;
  v328(v11, 0, 1, v327);
  v54 = sub_2673811AC();
  v318 = 0xD000000000000017;
  sub_266EC637C(v11, 0xD000000000000017, 0x80000002674593E0);
  v54(v335, 0);
  v319 = "triggerExplicitSatScore";
  v55 = v52;
  v56 = v333;
  v57 = v330;
  (v330)(v40, v55, v333);
  v335[0] = 1;
  sub_26738114C();
  v53(v11, 0, 1, v327);
  v58 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v319 | 0x8000000000000000);
  v58(v335, 0);
  v59 = v324;
  v57(v40);
  v335[0] = 1;
  sub_26738114C();
  v60 = v327;
  v53(v11, 0, 1, v327);
  v61 = sub_2673811AC();
  sub_266EC637C(v11, 0x694D776F64616873, 0xEE0065726F635363);
  v61(v335, 0);
  v319 = "triggerExplicitTDSRSatScore";
  v62 = v330;
  (v330)(v40, v59, v56);
  v335[0] = 1;
  sub_26738114C();
  v63 = v60;
  v64 = v328;
  v328(v11, 0, 1, v63);
  v65 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, v319 | 0x8000000000000000);
  v65(v335, 0);
  v319 = "shadowMicScoreThresholdForVAD";
  v62(v40, v59, v333);
  v335[0] = 1;
  sub_26738114C();
  v66 = v327;
  v64(v11, 0, 1, v327);
  v67 = sub_2673811AC();
  v315 = 0xD000000000000011;
  sub_266EC637C(v11, 0xD000000000000011, v319 | 0x8000000000000000);
  v67(v335, 0);
  v317 = "remoteMicVADScore";
  v68 = v333;
  v69 = v330;
  (v330)(v40, v59, v333);
  v335[0] = 1;
  sub_26738114C();
  v64(v11, 0, 1, v66);
  v70 = sub_2673811AC();
  v319 = 0xD000000000000015;
  sub_266EC637C(v11, 0xD000000000000015, v317 | 0x8000000000000000);
  v70(v335, 0);
  v317 = "remoteMicVADThreshold";
  v69(v326, v59, v68);
  v335[0] = 1;
  sub_26738114C();
  v71 = v66;
  v72 = v66;
  v73 = v328;
  v328(v11, 0, 1, v72);
  v74 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, v317 | 0x8000000000000000);
  v74(v335, 0);
  type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode(0);
  sub_2670D15D8(&qword_2800F4338, type metadata accessor for MHSchemaMHFirstPassEnhancedCarplayTriggerMode);
  sub_26738120C();
  v75 = v71;
  v76 = v73;
  v73(v11, 0, 1, v75);
  v77 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, 0x80000002674594A0);
  v77(v335, 0);
  v317 = "enhancedCarplayTriggerMode";
  v78 = v333;
  v79 = v330;
  (v330)(v326, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v80 = v327;
  v76(v11, 0, 1, v327);
  v81 = sub_2673811AC();
  sub_266EC637C(v11, v318, v317 | 0x8000000000000000);
  v81(v335, 0);
  v82 = v78;
  v83 = v326;
  v79();
  v335[0] = 1;
  sub_26738114C();
  v76(v11, 0, 1, v80);
  v84 = sub_2673811AC();
  v317 = 0xD000000000000016;
  sub_266EC637C(v11, 0xD000000000000016, 0x80000002674594E0);
  v84(v335, 0);
  v316 = "clientStartSampleCount";
  v85 = v325;
  v86 = v82;
  v87 = v330;
  (v330)(v83, v325, v86);
  v335[0] = 1;
  sub_26738114C();
  v76(v11, 0, 1, v327);
  v88 = sub_2673811AC();
  sub_266EC637C(v11, v319, v316 | 0x8000000000000000);
  v88(v335, 0);
  v89 = v333;
  v87(v83, v85, v333);
  v335[0] = 1;
  sub_26738114C();
  v90 = v327;
  v328(v11, 0, 1, v327);
  v91 = sub_2673811AC();
  sub_266EC637C(v11, v317, 0x8000000267459520);
  v91(v335, 0);
  v92 = v325;
  (v330)(v83, v325, v89);
  v335[0] = 1;
  sub_26738114C();
  v93 = v328;
  v328(v11, 0, 1, v90);
  v94 = sub_2673811AC();
  sub_266EC637C(v11, 0x5372656767697274, 0xEE00734E74726174);
  v94(v335, 0);
  v95 = v333;
  v96 = v330;
  (v330)(v83, v92, v333);
  v335[0] = 1;
  sub_26738114C();
  v93(v11, 0, 1, v327);
  v97 = sub_2673811AC();
  sub_266EC637C(v11, 0x4572656767697274, 0xEC000000734E646ELL);
  v97(v335, 0);
  v98 = v326;
  v96(v326, v92, v95);
  v335[0] = 1;
  v99 = v98;
  sub_26738114C();
  v100 = v327;
  v328(v11, 0, 1, v327);
  v101 = sub_2673811AC();
  sub_266EC637C(v11, 0x4672656767697274, 0xED0000734E657269);
  v101(v335, 0);
  v316 = "triggerFireSampleCount";
  v102 = v99;
  v103 = v99;
  v104 = v333;
  v96(v103, v92, v333);
  v335[0] = 1;
  sub_26738114C();
  v105 = v100;
  v106 = v100;
  v107 = v328;
  v328(v11, 0, 1, v105);
  v108 = sub_2673811AC();
  v313 = 0xD000000000000013;
  sub_266EC637C(v11, 0xD000000000000013, v316 | 0x8000000000000000);
  v108(v335, 0);
  v316 = "extraSamplesAtStart";
  v109 = v325;
  v96(v102, v325, v104);
  v335[0] = 1;
  sub_26738114C();
  v107(v11, 0, 1, v106);
  v110 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v316 | 0x8000000000000000);
  v110(v335, 0);
  v316 = "analyzerPrependingSamples";
  v111 = v102;
  v112 = v333;
  v113 = v330;
  (v330)(v111, v109, v333);
  v335[0] = 1;
  sub_26738114C();
  v114 = v327;
  v107(v11, 0, 1, v327);
  v115 = sub_2673811AC();
  sub_266EC637C(v11, v318, v316 | 0x8000000000000000);
  v115(v335, 0);
  v116 = v326;
  (v113)(v326, v323, v112);
  v335[0] = 1;
  sub_26738114C();
  v107(v11, 0, 1, v114);
  v117 = sub_2673811AC();
  sub_266EC637C(v11, 0x6567676972547369, 0xEE00746E65764572);
  v117(v335, 0);
  v314 = "analyzerTrailingSamples";
  v118 = v333;
  v119 = v330;
  (v330)(v116, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v120 = v327;
  v107(v11, 0, 1, v327);
  v121 = sub_2673811AC();
  v316 = 0xD000000000000010;
  sub_266EC637C(v11, 0xD000000000000010, v314 | 0x8000000000000000);
  v121(v335, 0);
  (v119)(v116, v324, v118);
  v335[0] = 1;
  sub_26738114C();
  v122 = v120;
  v123 = v328;
  v328(v11, 0, 1, v120);
  v124 = sub_2673811AC();
  sub_266EC637C(v11, 0x5372656767697274, 0xEC00000065726F63);
  v124(v335, 0);
  v125 = v333;
  (v119)(v116, v323, v333);
  v335[0] = 1;
  sub_26738114C();
  v123(v11, 0, 1, v122);
  v126 = sub_2673811AC();
  sub_266EC637C(v11, 0x696D6978614D7369, 0xEB0000000064657ALL);
  v126(v335, 0);
  v314 = "totalSampleCount";
  v127 = v324;
  (v330)(v116, v324, v125);
  v335[0] = 1;
  sub_26738114C();
  v123(v11, 0, 1, v122);
  v128 = v123;
  v129 = sub_2673811AC();
  v312 = 0xD000000000000012;
  sub_266EC637C(v11, 0xD000000000000012, v314 | 0x8000000000000000);
  v129(v335, 0);
  v130 = v333;
  v131 = v330;
  (v330)(v116, v127, v333);
  v335[0] = 1;
  sub_26738114C();
  v128(v11, 0, 1, v122);
  v132 = sub_2673811AC();
  sub_266EC637C(v11, 0x7A696E676F636572, 0xEF65726F63537265);
  v132(v335, 0);
  v314 = "effectiveThreshold";
  v131(v116, v127, v130);
  v335[0] = 1;
  sub_26738114C();
  v133 = v327;
  v128(v11, 0, 1, v327);
  v134 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v314 | 0x8000000000000000);
  v134(v335, 0);
  v314 = "recognizerThresholdOffset";
  v135 = v333;
  v136 = v330;
  (v330)(v116, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v137 = v133;
  v128(v11, 0, 1, v133);
  v138 = sub_2673811AC();
  sub_266EC637C(v11, v317, v314 | 0x8000000000000000);
  v138(v335, 0);
  v317 = "recognizerWaitTimeInNs";
  v139 = v324;
  (v136)(v116, v324, v135);
  v335[0] = 1;
  sub_26738114C();
  v128(v11, 0, 1, v133);
  v140 = sub_2673811AC();
  sub_266EC637C(v11, v319, v317 | 0x8000000000000000);
  v140(v335, 0);
  v141 = v330;
  (v330)(v116, v139, v135);
  v335[0] = 1;
  sub_26738114C();
  v128(v11, 0, 1, v133);
  v142 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C6F687365726874, 0xE900000000000064);
  v142(v335, 0);
  v317 = "recognizerScaleFactor";
  v143 = v326;
  v144 = v325;
  (v141)(v326, v325, v135);
  v335[0] = 1;
  sub_26738114C();
  v128(v11, 0, 1, v137);
  v145 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, v317 | 0x8000000000000000);
  v145(v335, 0);
  v317 = "triggerStartTimeOffsetInNs";
  v146 = v144;
  v147 = v144;
  v148 = v333;
  v149 = v330;
  (v330)(v143, v146, v333);
  v335[0] = 1;
  sub_26738114C();
  v328(v11, 0, 1, v137);
  v150 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v317 | 0x8000000000000000);
  v150(v335, 0);
  v317 = "triggerEndTimeOffsetInNs";
  v151 = v326;
  v149(v326, v147, v148);
  v335[0] = 1;
  sub_26738114C();
  v153 = v327;
  v152 = v328;
  v328(v11, 0, 1, v327);
  v154 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v317 | 0x8000000000000000);
  v154(v335, 0);
  v317 = "triggerFireTimeOffsetInNs";
  v155 = *MEMORY[0x277D3E518];
  v156 = v333;
  v157 = v330;
  (v330)(v151, v155, v333);
  v335[0] = 1;
  sub_26738114C();
  v152(v11, 0, 1, v153);
  v158 = sub_2673811AC();
  sub_266EC637C(v11, v316, v317 | 0x8000000000000000);
  v158(v335, 0);
  v159 = v326;
  v160 = v157;
  v157(v326, v155, v156);
  v335[0] = 1;
  sub_26738114C();
  v161 = v327;
  v162 = v328;
  v328(v11, 0, 1, v327);
  v163 = sub_2673811AC();
  sub_266EC637C(v11, 0x4572656767697274, 0xEE00656D6954646ELL);
  v163(v335, 0);
  v317 = "triggerStartTime";
  LODWORD(v314) = v155;
  v164 = v333;
  v160(v159, v155, v333);
  v335[0] = 1;
  sub_26738114C();
  v162(v11, 0, 1, v161);
  v165 = sub_2673811AC();
  sub_266EC637C(v11, v316, v317 | 0x8000000000000000);
  v165(v335, 0);
  v166 = v326;
  v167 = v330;
  (v330)(v326, v322, v164);
  v335[0] = 1;
  sub_26738114C();
  v162(v11, 0, 1, v161);
  v168 = sub_2673811AC();
  sub_266EC637C(v11, v312, 0x80000002674596E0);
  v168(v335, 0);
  (v167)(v166, v323, v164);
  v335[0] = 1;
  sub_26738114C();
  v169 = v328;
  v328(v11, 0, 1, v161);
  v170 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E69746E6F437369, 0xEC00000073756F75);
  v170(v335, 0);
  v317 = "hardwareSamplerate";
  v171 = v326;
  (v167)(v326, v324, v164);
  v172 = v167;
  v335[0] = 1;
  sub_26738114C();
  v173 = v161;
  v169(v11, 0, 1, v161);
  v174 = sub_2673811AC();
  sub_266EC637C(v11, v313, v317 | 0x8000000000000000);
  v174(v335, 0);
  v317 = "triggerDurationInNs";
  v175 = v325;
  v176 = v333;
  (v172)(v171, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v177 = v328;
  v328(v11, 0, 1, v173);
  v178 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, v317 | 0x8000000000000000);
  v178(v335, 0);
  v317 = "totalSamplesAtTriggerStart";
  v179 = v175;
  v180 = v175;
  v181 = v176;
  v182 = v176;
  v183 = v330;
  (v330)(v171, v179, v182);
  v335[0] = 1;
  sub_26738114C();
  v184 = v327;
  v177(v11, 0, 1, v327);
  v185 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v317 | 0x8000000000000000);
  v185(v335, 0);
  v317 = "totalSamplesAtTriggerEnd";
  v186 = v326;
  v187 = v183;
  (v183)(v326, v180, v181);
  v335[0] = 1;
  sub_26738114C();
  v188 = v328;
  v328(v11, 0, 1, v184);
  v189 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, v317 | 0x8000000000000000);
  v189(v335, 0);
  LODWORD(v317) = *MEMORY[0x277D3E530];
  v190 = v317;
  v191 = v333;
  (v187)(v186, v317, v333);
  v335[0] = 1;
  sub_26738114C();
  v192 = v327;
  v188(v11, 0, 1, v327);
  v193 = sub_2673811AC();
  sub_266EC637C(v11, 0x65566769666E6F63, 0xED00006E6F697372);
  v193(v335, 0);
  v194 = v191;
  v195 = v191;
  v196 = v330;
  (v330)(v326, v190, v195);
  v335[0] = 1;
  sub_26738114C();
  v197 = v328;
  v328(v11, 0, 1, v192);
  v198 = sub_2673811AC();
  sub_266EC637C(v11, 0x61506769666E6F63, 0xEA00000000006874);
  v198(v335, 0);
  v199 = v326;
  v200 = v323;
  (v196)(v326, v323, v194);
  v335[0] = 1;
  sub_26738114C();
  v197(v11, 0, 1, v192);
  v201 = sub_2673811AC();
  sub_266EC637C(v11, 0x646E6F6365537369, 0xEE0065636E616843);
  v201(v335, 0);
  v202 = v333;
  v203 = v330;
  (v330)(v199, v200, v333);
  v335[0] = 1;
  sub_26738114C();
  v204 = v327;
  v197(v11, 0, 1, v327);
  v205 = sub_2673811AC();
  sub_266EC637C(v11, 0x6148656369766564, 0xEE00646C6568646ELL);
  v205(v335, 0);
  v203(v199, v322, v202);
  v335[0] = 1;
  sub_26738114C();
  v206 = v328;
  v328(v11, 0, 1, v204);
  v207 = sub_2673811AC();
  sub_266EC637C(v11, 0x6843657669746361, 0xED00006C656E6E61);
  v207(v335, 0);
  v208 = v333;
  v203(v199, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v209 = v327;
  v206(v11, 0, 1, v327);
  v210 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, 0x8000000267459780);
  v210(v335, 0);
  v316 = "twoShotAudibleFeedbackDelayInNs";
  v211 = v324;
  v203(v199, v324, v208);
  v212 = v203;
  v335[0] = 1;
  sub_26738114C();
  v213 = v328;
  v328(v11, 0, 1, v209);
  v214 = sub_2673811AC();
  sub_266EC637C(v11, v319, v316 | 0x8000000000000000);
  v214(v335, 0);
  v319 = "cumulativeUptimeInSec";
  v212(v326, v211, v333);
  v335[0] = 1;
  sub_26738114C();
  v213(v11, 0, 1, v209);
  v215 = sub_2673811AC();
  v216 = v318;
  sub_266EC637C(v11, v318, v319 | 0x8000000000000000);
  v215(v335, 0);
  type metadata accessor for MHSchemaMHHostPowerState(0);
  sub_2670D15D8(&qword_2800F4638, type metadata accessor for MHSchemaMHHostPowerState);
  sub_26738120C();
  v217 = v213;
  v213(v11, 0, 1, v209);
  v218 = sub_2673811AC();
  sub_266EC637C(v11, v216, 0x80000002674597E0);
  v218(v335, 0);
  v219 = v326;
  v220 = v333;
  v221 = v330;
  (v330)(v326, v323, v333);
  v335[0] = 1;
  sub_26738114C();
  v217(v11, 0, 1, v209);
  v222 = sub_2673811AC();
  sub_266EC637C(v11, 0x50616964654D7369, 0xEE00676E6979616CLL);
  v222(v335, 0);
  (v221)(v219, v324, v220);
  v335[0] = 1;
  sub_26738114C();
  v223 = v209;
  v224 = v328;
  v328(v11, 0, 1, v209);
  v225 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C6F56616964656DLL, 0xEB00000000656D75);
  v225(v335, 0);
  v319 = "hostPowerStateAtTrigger";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v224(v11, 0, 1, v209);
  v226 = sub_2673811AC();
  sub_266EC637C(v11, v315, v319 | 0x8000000000000000);
  v226(v335, 0);
  v227 = v326;
  v228 = v323;
  v229 = v333;
  (v330)(v326, v323, v333);
  v335[0] = 1;
  sub_26738114C();
  v224(v11, 0, 1, v223);
  v230 = sub_2673811AC();
  sub_266EC637C(v11, 0x7265747461426E6FLL, 0xEE007265776F5079);
  v230(v335, 0);
  v231 = v229;
  v232 = v330;
  (v330)(v227, v228, v231);
  v335[0] = 1;
  sub_26738114C();
  v233 = v327;
  v224(v11, 0, 1, v327);
  v234 = sub_2673811AC();
  sub_266EC637C(v11, 0x41656B6157646964, 0xE900000000000050);
  v234(v335, 0);
  v235 = v324;
  (v232)(v227, v324, v333);
  v335[0] = 1;
  sub_26738114C();
  v224(v11, 0, 1, v233);
  v236 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E49656D69747075, 0xEB00000000636553);
  v236(v335, 0);
  v237 = v333;
  (v232)(v227, v235, v333);
  v335[0] = 1;
  sub_26738114C();
  v224(v11, 0, 1, v233);
  v238 = sub_2673811AC();
  sub_266EC637C(v11, 0x656D69746E776F64, 0xED00006365536E49);
  v238(v335, 0);
  v321 = "audioProviderUUID";
  v239 = v237;
  v240 = v330;
  (v330)(v227, v322, v239);
  v335[0] = 1;
  sub_26738114C();
  v224(v11, 0, 1, v233);
  v241 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, v321 | 0x8000000000000000);
  v241(v335, 0);
  v242 = v317;
  v243 = v333;
  (v240)(v227, v317, v333);
  v335[0] = 1;
  sub_26738114C();
  v244 = v327;
  v224(v11, 0, 1, v327);
  v245 = sub_2673811AC();
  sub_266EC637C(v11, 0x4665727574706163, 0xEF68746150656C69);
  v245(v335, 0);
  (v240)(v227, v242, v243);
  v335[0] = 1;
  sub_26738114C();
  v224(v11, 0, 1, v244);
  v246 = sub_2673811AC();
  sub_266EC637C(v11, 0x61446769666E6F63, 0xEE00687361486174);
  v246(v335, 0);
  v322 = "lastConsecutiveVTRejects";
  v247 = v323;
  v248 = v330;
  (v330)(v227, v323, v243);
  v335[0] = 1;
  sub_26738114C();
  v328(v11, 0, 1, v244);
  v249 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001CLL, v322 | 0x8000000000000000);
  v249(v335, 0);
  v248(v227, v247, v243);
  v335[0] = 1;
  sub_26738114C();
  v250 = v328;
  v328(v11, 0, 1, v244);
  v251 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F69647541646964, 0xED00006C6C617453);
  v251(v335, 0);
  v248(v227, v247, v333);
  v335[0] = 1;
  sub_26738114C();
  v250(v11, 0, 1, v244);
  v252 = sub_2673811AC();
  sub_266EC637C(v11, 0x4965677261427369, 0xE90000000000006ELL);
  v252(v335, 0);
  v248(v227, v323, v333);
  v335[0] = 1;
  sub_26738114C();
  v328(v11, 0, 1, v244);
  v253 = sub_2673811AC();
  sub_266EC637C(v11, 0x7246656B61577369, 0xEF7065656C536D6FLL);
  v253(v335, 0);
  v254 = sub_2673811AC();
  v255 = sub_266ECB6CC(v334, 0x7246656B61577369, 0xEF7065656C536D6FLL);
  v256 = *(v320 + 48);
  v320 += 48;
  v322 = v256;
  if (!(v256)(v257, 1, v244))
  {
    sub_266ECB128(&unk_2878884A8);
    sub_26738115C();
  }

  (v255)(v334, 0);
  v254(v335, 0);
  v258 = v326;
  v259 = v333;
  v260 = v330;
  (v330)(v326, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v328(v11, 0, 1, v327);
  v261 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, 0x8000000267459860);
  v261(v335, 0);
  v321 = "ueryStartTimeInNs";
  v262 = v325;
  (v260)(v258, v325, v259);
  v335[0] = 1;
  sub_26738114C();
  v264 = v327;
  v263 = v328;
  v328(v11, 0, 1, v327);
  v265 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000024, v321 | 0x8000000000000000);
  v265(v335, 0);
  v321 = "ueryCompleteTimeInNs";
  v266 = v262;
  v267 = v330;
  (v330)(v258, v266, v259);
  v335[0] = 1;
  sub_26738114C();
  v263(v11, 0, 1, v264);
  v268 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000020, v321 | 0x8000000000000000);
  v268(v335, 0);
  v321 = "oadStartTimeInNs";
  v269 = v325;
  v270 = v333;
  (v267)(v258, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v271 = v264;
  v272 = v328;
  v328(v11, 0, 1, v271);
  v273 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000023, v321 | 0x8000000000000000);
  v273(v335, 0);
  v274 = v269;
  v275 = v330;
  (v330)(v258, v274, v270);
  v335[0] = 1;
  sub_26738114C();
  v276 = v327;
  v272(v11, 0, 1, v327);
  v277 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000022, 0x8000000267459920);
  v277(v335, 0);
  v321 = "treamStartTimeInNs";
  v278 = v325;
  v279 = v333;
  (v275)(v258, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v328(v11, 0, 1, v276);
  v280 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000022, v321 | 0x8000000000000000);
  v280(v335, 0);
  v281 = v326;
  (v275)(v326, v278, v279);
  v335[0] = 1;
  sub_26738114C();
  v282 = v328;
  v328(v11, 0, 1, v276);
  v283 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002BLL, 0x8000000267459980);
  v283(v335, 0);
  v321 = "udioPacketReceptionTimeInNs";
  v284 = v325;
  v285 = v333;
  v286 = v330;
  (v330)(v281, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v287 = v327;
  v282(v11, 0, 1, v327);
  v288 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002ALL, v321 | 0x8000000000000000);
  v288(v335, 0);
  v321 = "dioPacketReceptionTimeInNs";
  v289 = v326;
  v286(v326, v284, v285);
  v335[0] = 1;
  sub_26738114C();
  v290 = v287;
  v282(v11, 0, 1, v287);
  v291 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000033, v321 | 0x8000000000000000);
  v291(v335, 0);
  v321 = "ectionStartTimeInNs";
  v292 = v333;
  v286(v289, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v282(v11, 0, 1, v290);
  v293 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000031, v321 | 0x8000000000000000);
  v293(v335, 0);
  v294 = v326;
  v286(v326, v317, v292);
  v335[0] = 1;
  sub_26738114C();
  v295 = v327;
  v282(v11, 0, 1, v327);
  v296 = sub_2673811AC();
  sub_266EC637C(v11, 0x5072656767697274, 0xED00006573617268);
  v296(v335, 0);
  v286(v294, v314, v333);
  v335[0] = 1;
  sub_26738114C();
  v297 = v295;
  v282(v11, 0, 1, v295);
  v298 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001DLL, 0x8000000267459A60);
  v298(v335, 0);
  v299 = sub_2673811AC();
  v300 = sub_266ECB6CC(v334, 0xD00000000000001DLL, 0x8000000267459A60);
  if (!(v322)(v301, 1, v297))
  {
    sub_266ECB128(&unk_2878884D8);
    sub_26738115C();
  }

  (v300)(v334, 0);
  v299(v335, 0);
  v302 = v326;
  v303 = v330;
  (v330)(v326, v323, v333);
  v335[0] = 1;
  sub_26738114C();
  v304 = v327;
  v305 = v328;
  v328(v11, 0, 1, v327);
  v306 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000022, 0x8000000267459A80);
  v306(v335, 0);
  v323 = "mAlwaysOnMicBuffer";
  v307 = v333;
  (v303)(v302, v325, v333);
  v335[0] = 1;
  sub_26738114C();
  v305(v11, 0, 1, v304);
  v308 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, v323 | 0x8000000000000000);
  v308(v335, 0);
  (v303)(v302, v324, v307);
  v335[0] = 1;
  sub_26738114C();
  v305(v11, 0, 1, v304);
  v309 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000018, 0x8000000267459AD0);
  return v309(v335, 0);
}

uint64_t sub_2670D1514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D1578(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670D15D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MHSchemaMHVoiceTriggerFirstPassDailyMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  v22 = *MEMORY[0x277D3E530];
  v20 = *(v1 + 104);
  v21 = v1 + 104;
  v19 = v0;
  v20(v4);
  v23[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = v10;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x65566769666E6F63, 0xED00006E6F697372);
  v12(v23, 0);
  v18 = "iggerFirstPassDailyMetadata";
  v13 = v20;
  (v20)(v4, *MEMORY[0x277D3E508], v0);
  v23[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v18 | 0x8000000000000000);
  v14(v23, 0);
  (v13)(v4, v22, v19);
  v23[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267458A60);
  return v15(v23, 0);
}

uint64_t sub_2670D1A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D1AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D1B2C()
{
  result = qword_2800F47F8;
  if (!qword_2800F47F8)
  {
    sub_2670D1B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F47F8);
  }

  return result;
}

unint64_t sub_2670D1B84()
{
  result = qword_2800F4800;
  if (!qword_2800F4800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4800);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerFirstPassSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267459B90, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v68;

  v1(v79, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267459BC0, v11);
  v12 = *v9;
  *v9 = v69;

  v7(v79, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x8000000267459BF0, v17);
  v18 = *v15;
  *v15 = v70;

  v13(v79, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000039, 0x8000000267459C30, v23);
  v24 = *v21;
  *v21 = v71;

  v19(v79, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267459C70, v29);
  v30 = *v27;
  *v27 = v72;

  v25(v79, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x8000000267459CA0, v35);
  v36 = *v33;
  *v33 = v73;

  v31(v79, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267459CD0, v41);
  v42 = *v39;
  *v39 = v74;

  v37(v79, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000027, 0x8000000267459D00, v47);
  v48 = *v45;
  *v45 = v75;

  v43(v79, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x8000000267459D30, v53);
  v54 = *v51;
  *v51 = v76;

  v49(v79, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000038, 0x8000000267459D60, v59);
  v60 = *v57;
  *v57 = v77;

  v55(v79, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000024, 0x8000000267459DA0, v65);
  v66 = *v63;
  *v63 = v78;

  return v61(v79, 0);
}

uint64_t sub_2670D2170(uint64_t a1)
{
  v2 = sub_2670D2274(&qword_2800F4810);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D21D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D2274(&qword_2800F4810);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D2274(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerFirstPassStatistic.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v76 = sub_26738113C();
  v3 = *(v76 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v76);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v72 = a2;
  sub_26738119C();
  v66 = "onTimestampInSec";
  v74 = *MEMORY[0x277D3E500];
  v11 = *(v3 + 104);
  v11(v6);
  v70 = v3 + 104;
  v75 = v11;
  v77[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v66 | 0x8000000000000000);
  v16(v77, 0);
  v68 = v6;
  (v11)(v6, v74, v76);
  v77[0] = 1;
  sub_26738114C();
  v73 = v12;
  v14(v10, 0, 1, v12);
  v17 = v15;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x80000002674433F0);
  v18(v77, 0);
  type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource(0);
  sub_2670D323C(&qword_2800F4808, type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource);
  sub_26738120C();
  v19 = v14;
  v14(v10, 0, 1, v12);
  v71 = v17;
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x8000000267459E10);
  v20(v77, 0);
  v67 = "firstPassTriggerSource";
  v21 = v74;
  v22 = v75;
  (v75)(v68, v74, v76);
  v77[0] = 1;
  sub_26738114C();
  v23 = v73;
  v19(v10, 0, 1, v73);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v67 | 0x8000000000000000);
  v24(v77, 0);
  v67 = "recognizerScoreHS";
  v25 = v68;
  v26 = v21;
  v27 = v76;
  v22(v68, v26, v76);
  v77[0] = 1;
  sub_26738114C();
  v28 = v19;
  v19(v10, 0, 1, v23);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v67 | 0x8000000000000000);
  v29(v77, 0);
  v30 = v74;
  (v75)(v25, v74, v27);
  v77[0] = 1;
  sub_26738114C();
  v19(v10, 0, 1, v73);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0x5372656767697274, 0xEE00534865726F63);
  v31(v77, 0);
  v32 = v25;
  v33 = v30;
  v34 = v27;
  v35 = v27;
  v36 = v75;
  (v75)(v32, v30, v34);
  v77[0] = 1;
  sub_26738114C();
  v37 = v73;
  v19(v10, 0, 1, v73);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, 0x5372656767697274, 0xEE00534A65726F63);
  v38(v77, 0);
  v39 = v68;
  v36(v68, v33, v35);
  v77[0] = 1;
  sub_26738114C();
  v40 = v37;
  v19(v10, 0, 1, v37);
  v69 = v19;
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0x697461676974696DLL, 0xEF65726F63536E6FLL);
  v41(v77, 0);
  v67 = "firstPassPeakScoreJS";
  v42 = v75;
  v43 = v76;
  (v75)(v39, *MEMORY[0x277D3E508], v76);
  v77[0] = 1;
  sub_26738114C();
  v28(v10, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v67 | 0x8000000000000000);
  v44(v77, 0);
  v67 = "recognizerScoreJS";
  (v42)(v39, *MEMORY[0x277D3E510], v43);
  v77[0] = 1;
  sub_26738114C();
  v45 = v40;
  v46 = v69;
  v69(v10, 0, 1, v45);
  v47 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v67 | 0x8000000000000000);
  v47(v77, 0);
  v67 = "nextTurnInvocationSource";
  v48 = v74;
  v49 = v75;
  v50 = v76;
  (v75)(v39, v74, v76);
  v77[0] = 1;
  sub_26738114C();
  v46(v10, 0, 1, v73);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, v67 | 0x8000000000000000);
  v51(v77, 0);
  v67 = "invocationTypeId";
  v49(v39, v48, v50);
  v77[0] = 1;
  sub_26738114C();
  v52 = v73;
  v46(v10, 0, 1, v73);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v67 | 0x8000000000000000);
  v53(v77, 0);
  v67 = "secondsSinceEpoch";
  v54 = v74;
  v55 = v76;
  (v75)(v39, v74, v76);
  v77[0] = 1;
  sub_26738114C();
  v69(v10, 0, 1, v52);
  v56 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v67 | 0x8000000000000000);
  v56(v77, 0);
  v67 = "keywordThresholdHS";
  v57 = v75;
  (v75)(v39, v54, v55);
  v77[0] = 1;
  sub_26738114C();
  v58 = v73;
  v59 = v69;
  v69(v10, 0, 1, v73);
  v60 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v67 | 0x8000000000000000);
  v60(v77, 0);
  v67 = "keywordThresholdJS";
  v61 = v74;
  (v57)(v39, v74, v76);
  v77[0] = 1;
  sub_26738114C();
  v59(v10, 0, 1, v58);
  v62 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, v67 | 0x8000000000000000);
  v62(v77, 0);
  (v57)(v39, v61, v76);
  v77[0] = 1;
  sub_26738114C();
  v59(v10, 0, 1, v58);
  v63 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, 0x8000000267459F00);
  return v63(v77, 0);
}

uint64_t sub_2670D3130(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D3194(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670D323C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670D3284()
{
  result = qword_2800F4820;
  if (!qword_2800F4820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4820);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerRejectDetected.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v68 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v57 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v66 = a1;
  sub_26738119C();
  v63 = "iggerRejectDetected";
  v11 = *MEMORY[0x277D3E538];
  v12 = *(v3 + 104);
  v67 = v3 + 104;
  LODWORD(v60) = v11;
  v12(v6, v11, v2);
  v64 = v12;
  v69[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v13);
  v65 = v16;
  v62 = v15;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, v63 | 0x8000000000000000);
  v17(v69, 0);
  v63 = "phsRejectBeforeActivationCount";
  v18 = v11;
  v19 = v68;
  v12(v6, v18, v68);
  v69[0] = 1;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v63 | 0x8000000000000000);
  v20(v69, 0);
  v63 = "eforeActivationCount";
  v21 = v64;
  (v64)(v6, v60, v19);
  v69[0] = 1;
  sub_26738114C();
  v22 = v62;
  v62(v10, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000024, v63 | 0x8000000000000000);
  v23(v69, 0);
  v60 = "eforeActivationCount";
  LODWORD(v63) = *MEMORY[0x277D3E500];
  v24 = v6;
  v21(v6);
  v25 = v21;
  v69[0] = 1;
  sub_26738114C();
  v22(v10, 0, 1, v13);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001FLL, v60 | 0x8000000000000000);
  v26(v69, 0);
  v60 = "phsRejectBeforeActivationScores";
  v27 = v63;
  v28 = v68;
  (v25)(v24, v63, v68);
  v69[0] = 1;
  sub_26738114C();
  v29 = v62;
  v62(v10, 0, 1, v13);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, v60 | 0x8000000000000000);
  v30(v69, 0);
  v31 = v28;
  v32 = v64;
  (v64)(v24, v27, v31);
  v69[0] = 1;
  sub_26738114C();
  v61 = v13;
  v29(v10, 0, 1, v13);
  v33 = v29;
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x800000026745A040);
  v34(v69, 0);
  v59 = "eforeActivationScores";
  LODWORD(v60) = *MEMORY[0x277D3E540];
  v35 = v68;
  v32(v24);
  v69[0] = 1;
  sub_26738114C();
  v29(v10, 0, 1, v13);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, v59 | 0x8000000000000000);
  v36(v69, 0);
  v59 = "ctivationTimeDiffInNs";
  v37 = v60;
  (v32)(v24, v60, v35);
  v69[0] = 1;
  sub_26738114C();
  v38 = v61;
  v33(v10, 0, 1, v61);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002BLL, v59 | 0x8000000000000000);
  v39(v69, 0);
  v59 = "eforeActivationTimeDiffInNs";
  v40 = v37;
  v41 = v68;
  (v32)(v24, v40, v68);
  v69[0] = 1;
  sub_26738114C();
  v42 = v62;
  v62(v10, 0, 1, v38);
  v43 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002BLL, v59 | 0x8000000000000000);
  v43(v69, 0);
  v44 = v63;
  (v32)(v24, v63, v41);
  v69[0] = 1;
  sub_26738114C();
  v45 = v61;
  v42(v10, 0, 1, v61);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0x7365726854736870, 0xEC000000646C6F68);
  v46(v69, 0);
  v58 = v24;
  v47 = v44;
  v48 = v44;
  v49 = v68;
  v50 = v64;
  (v64)(v24, v47, v68);
  v69[0] = 1;
  sub_26738114C();
  v42(v10, 0, 1, v45);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0x7365726854736A70, 0xEC000000646C6F68);
  v51(v69, 0);
  v60 = "eforeActivationTimeDiffInNs";
  v52 = v58;
  v50(v58, v48, v49);
  v69[0] = 1;
  sub_26738114C();
  v53 = v61;
  v42(v10, 0, 1, v61);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, v60 | 0x8000000000000000);
  v54(v69, 0);
  (v64)(v52, v63, v68);
  v69[0] = 1;
  sub_26738114C();
  v42(v10, 0, 1, v53);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026745A120);
  return v55(v69, 0);
}

uint64_t sub_2670D3F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D3F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D3FCC()
{
  result = qword_2800F4568;
  if (!qword_2800F4568)
  {
    sub_2670D4024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4568);
  }

  return result;
}

unint64_t sub_2670D4024()
{
  result = qword_2800F4560;
  if (!qword_2800F4560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4560);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerRePrompted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v8, 0x6565705369726973, 0xEC00000044496863);
  v12(v22, 0);
  v13 = v0;
  v14 = v20;
  v20(v4, *MEMORY[0x277D3E4E8], v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D6F725065527369, 0xEC00000064657470);
  v15(v22, 0);
  v14(v4, v21, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026745A170);
  return v16(v22, 0);
}

uint64_t sub_2670D4460(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D44C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D4528()
{
  result = qword_2800F4548;
  if (!qword_2800F4548)
  {
    sub_2670D4580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4548);
  }

  return result;
}

unint64_t sub_2670D4580()
{
  result = qword_2800F4540;
  if (!qword_2800F4540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4540);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassCancelled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F47F0, 0x277D58A08);
  sub_266ECAF2C(&qword_2800F47E8, &qword_2800F47F0, 0x277D58A08);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026745A1D0);
  return v5(v7, 0);
}

uint64_t sub_2670D47C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D4828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassRejected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F47F0, 0x277D58A08);
  sub_266ECAF2C(&qword_2800F47E8, &qword_2800F47F0, 0x277D58A08);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026745A1D0);
  v6(v9, 0);
  type metadata accessor for MHSchemaMHVoiceTriggerSecondPassRejectReason(0);
  sub_2670D4C18();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_2670D4B54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D4BB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D4C18()
{
  result = qword_2800F4828;
  if (!qword_2800F4828)
  {
    type metadata accessor for MHSchemaMHVoiceTriggerSecondPassRejectReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4828);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassRejectReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002CLL, 0x800000026745A270, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v62;

  v1(v72, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x800000026745A2A0, v11);
  v12 = *v9;
  *v9 = v63;

  v7(v72, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x800000026745A2D0, v17);
  v18 = *v15;
  *v15 = v64;

  v13(v72, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000031, 0x800000026745A300, v23);
  v24 = *v21;
  *v21 = v65;

  v19(v72, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000034, 0x800000026745A340, v29);
  v30 = *v27;
  *v27 = v66;

  v25(v72, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x800000026745A380, v35);
  v36 = *v33;
  *v33 = v67;

  v31(v72, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000036, 0x800000026745A3B0, v41);
  v42 = *v39;
  *v39 = v68;

  v37(v72, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000031, 0x800000026745A3F0, v47);
  v48 = *v45;
  *v45 = v69;

  v43(v72, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x800000026745A430, v53);
  v54 = *v51;
  *v51 = v70;

  v49(v72, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002ALL, 0x800000026745A460, v59);
  v60 = *v57;
  *v57 = v71;

  return v55(v72, 0);
}

uint64_t sub_2670D51DC(uint64_t a1)
{
  v2 = sub_2670D52E0(&qword_2800F4830);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D5244(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D52E0(&qword_2800F4830);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D52E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MHSchemaMHVoiceTriggerSecondPassRejectReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v69 = sub_26738113C();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v69);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v64 = a2;
  sub_26738119C();
  v63 = "iggerSecondPassStarted";
  v62 = *MEMORY[0x277D3E538];
  v67 = *(v3 + 104);
  v65 = v3 + 104;
  v67(v6);
  v71[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v57 = *(v11 - 8);
  v13 = v57 + 56;
  v12 = *(v57 + 7);
  v61 = v11;
  v12(v10, 0, 1, v11);
  v66 = v13;
  v14 = sub_2673811AC();
  v59 = 0xD000000000000018;
  sub_266EC637C(v10, 0xD000000000000018, v63 | 0x8000000000000000);
  v14(v71, 0);
  LODWORD(v63) = *MEMORY[0x277D3E500];
  v15 = v69;
  v16 = v67;
  v67(v6);
  v71[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v11);
  v68 = v12;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x7361507473726966, 0xEE0065726F635373);
  v17(v71, 0);
  v58 = "firstPassDetectedChannel";
  v55 = v6;
  (v16)(v6, v62, v15);
  v18 = v16;
  v71[0] = 1;
  sub_26738114C();
  v12(v10, 0, 1, v61);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v58 | 0x8000000000000000);
  v19(v71, 0);
  v20 = v55;
  (v18)(v55, v63, v15);
  v71[0] = 1;
  sub_26738114C();
  v21 = v61;
  v22 = v68;
  v68(v10, 0, 1, v61);
  v23 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026745A510);
  v23(v71, 0);
  sub_266ECB294(0, &qword_2800F3E00, 0x277D585D8);
  sub_266ECAF2C(&qword_2800F3DF8, &qword_2800F3E00, 0x277D585D8);
  sub_26738122C();
  v22(v10, 0, 1, v21);
  v24 = sub_2673811AC();
  v58 = 0xD000000000000016;
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026745A530);
  v24(v71, 0);
  v56 = "channelSelectionScores";
  v62 = *MEMORY[0x277D3E540];
  v25 = v69;
  v26 = v67;
  v67(v20);
  v71[0] = 1;
  sub_26738114C();
  v68(v10, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, v56 | 0x8000000000000000);
  v27(v71, 0);
  (v26)(v20, v63, v25);
  v71[0] = 1;
  sub_26738114C();
  v68(v10, 0, 1, v21);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x800000026745A580);
  v28(v71, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v70, 0xD000000000000020, 0x800000026745A580);
  if (!(*(v57 + 6))(v31, 1, v21))
  {
    sub_266ECB128(&unk_287888500);
    sub_26738115C();
  }

  (v30)(v70, 0);
  v29(v71, 0);
  v32 = v62;
  v33 = v67;
  (v67)(v20, v62, v69);
  v71[0] = 1;
  sub_26738114C();
  v68(v10, 0, 1, v21);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026745A5B0);
  v34(v71, 0);
  v57 = "firstPassStartSampleCount";
  v35 = v69;
  v33(v20, v32, v69);
  v71[0] = 1;
  sub_26738114C();
  v68(v10, 0, 1, v21);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v57 | 0x8000000000000000);
  v36(v71, 0);
  v57 = "firstPassEndSampleCount";
  v33(v20, v32, v35);
  v71[0] = 1;
  sub_26738114C();
  v37 = v68;
  v68(v10, 0, 1, v21);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, v59, v57 | 0x8000000000000000);
  v38(v71, 0);
  type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource(0);
  sub_2670D6334();
  sub_26738120C();
  v37(v10, 0, 1, v21);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, v58, 0x8000000267459E10);
  v39(v71, 0);
  v40 = v69;
  v41 = v67;
  (v67)(v20, v62, v69);
  v71[0] = 1;
  sub_26738114C();
  v42 = v61;
  v37(v10, 0, 1, v61);
  v43 = sub_2673811AC();
  v60 = 0xD00000000000001ELL;
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026745A610);
  v43(v71, 0);
  v59 = "earlyDetectFiredTimeOffsetInNs";
  v44 = v63;
  (v41)(v20, v63, v40);
  v71[0] = 1;
  sub_26738114C();
  v45 = v68;
  v68(v10, 0, 1, v42);
  v46 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v59 | 0x8000000000000000);
  v46(v71, 0);
  v59 = "earlyDetectFiredTime";
  v47 = v44;
  v48 = v69;
  v49 = v67;
  (v67)(v20, v47, v69);
  v71[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v42);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, v59 | 0x8000000000000000);
  v50(v71, 0);
  v63 = "ChannelScoreBoost";
  v51 = v62;
  (v49)(v20, v62, v48);
  v71[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v42);
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v63 | 0x8000000000000000);
  v52(v71, 0);
  (v67)(v20, v51, v69);
  v71[0] = 1;
  sub_26738114C();
  v45(v10, 0, 1, v42);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, v60, 0x800000026745A6A0);
  return v53(v71, 0);
}

uint64_t sub_2670D6270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D62D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D6334()
{
  result = qword_2800F4808;
  if (!qword_2800F4808)
  {
    type metadata accessor for MHSchemaMHVoiceTriggerFirstPassSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4808);
  }

  return result;
}

uint64_t static MHSchemaMHVoiceTriggerSecondPassTriggered.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F47F0, 0x277D58A08);
  sub_266ECAF2C(&qword_2800F47E8, &qword_2800F47F0, 0x277D58A08);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026745A1D0);
  return v5(v7, 0);
}

uint64_t sub_2670D65C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D662C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MHSchemaMHVoiceTriggerTwoShotDetected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670D6918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D697C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670D69E0()
{
  result = qword_2800F4398;
  if (!qword_2800F4398)
  {
    sub_2670D6A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4398);
  }

  return result;
}

unint64_t sub_2670D6A38()
{
  result = qword_2800F4390;
  if (!qword_2800F4390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4390);
  }

  return result;
}

uint64_t static MTSchemaMTApiInvocationMetadata.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670D6C5C()
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

uint64_t sub_2670D6DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D6E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTAppBackgroundedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026745A7A0);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0xD000000000000012, 0x800000026745A7A0);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_287888528);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v17(v21, 0);
}

uint64_t sub_2670D72E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D7348(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTAppConversationTabView.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026745A7F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026745A820, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026745A850, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670D7604(uint64_t a1)
{
  v2 = sub_2670D7708(&qword_2800F4870);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D766C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D7708(&qword_2800F4870);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D7708(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTAppConversationTabView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTAppDisplayMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026745A8B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026745A8D0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026745A8F0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x800000026745A910, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2670D79D0(uint64_t a1)
{
  v2 = sub_2670D7AD4(&qword_2800F4880);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D7A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D7AD4(&qword_2800F4880);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D7AD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTAppDisplayMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTAppInvocationMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v30 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MTSchemaMTAppDisplayMode(0);
  sub_2670D847C(&qword_2800F4878, type metadata accessor for MTSchemaMTAppDisplayMode);
  v29 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v10;
  v12(v9, 0, 1);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D79616C70736964, 0xEB0000000065646FLL);
  v15(v33, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  (v12)(v9, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6150656C61636F6CLL, 0xEA00000000007269);
  v16(v33, 0);
  v27 = *MEMORY[0x277D3E4E8];
  v17 = *(v32 + 104);
  v32 += 104;
  v28 = v17;
  v17(v30);
  v33[0] = 1;
  sub_26738114C();
  (v12)(v9, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026745A960);
  v18(v33, 0);
  type metadata accessor for MTSchemaMTAppTabName(0);
  sub_2670D847C(&qword_2800F4888, type metadata accessor for MTSchemaMTAppTabName);
  sub_26738120C();
  v26[1] = v13;
  (v12)(v9, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D614E626174, 0xE700000000000000);
  v19(v33, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  (v12)(v9, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6973736553626174, 0xEC00000064496E6FLL);
  v20(v33, 0);
  sub_26738120C();
  (v12)(v9, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026745A980);
  v21(v33, 0);
  v28(v30, v27, v31);
  v33[0] = 1;
  sub_26738114C();
  (v12)(v9, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x800000026745A9A0);
  v22(v33, 0);
  type metadata accessor for MTSchemaMTAppConversationTabView(0);
  sub_2670D847C(&qword_2800F4868, type metadata accessor for MTSchemaMTAppConversationTabView);
  sub_26738120C();
  (v12)(v9, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026745A9C0);
  v23(v33, 0);
  type metadata accessor for MTSchemaMTAudioChannel(0);
  sub_2670D847C(&qword_2800F4890, type metadata accessor for MTSchemaMTAudioChannel);
  sub_26738120C();
  (v12)(v9, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6168436F69647561, 0xEC0000006C656E6ELL);
  return v24(v33, 0);
}

uint64_t sub_2670D83B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D841C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670D847C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MTSchemaMTAppNextButtonTappedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026745A7A0);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0xD000000000000012, 0x800000026745A7A0);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_287888550);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v17(v21, 0);
}

uint64_t sub_2670D88E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D894C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTAppTabName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026745AA40, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026745AA60, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x800000026745AA80, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x800000026745AAA0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x800000026745AAC0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670D8CE4(uint64_t a1)
{
  v2 = sub_2670D8DE8(&qword_2800F48B8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D8D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D8DE8(&qword_2800F48B8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D8DE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTAppTabName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTAppTextBoxDismissedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026745A7A0);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0xD000000000000012, 0x800000026745A7A0);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_287888578);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v17(v21, 0);
}

uint64_t sub_2670D920C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D9270(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTAppTimedOutTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026745A7A0);
  v13(v21, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v20, 0xD000000000000012, 0x800000026745A7A0);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_2878885A0);
    sub_26738115C();
  }

  (v15)(v20, 0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v17(v21, 0);
}

uint64_t sub_2670D96F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D9758(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTASRState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x800000026745AB60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026745AB80, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026745ABB0, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026745ABE0, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026745AC10, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026745AC40, v35);
  v36 = *v33;
  *v33 = v43;

  v31(v44, 0);
  sub_266ECB128(&unk_2878885C8);
  return sub_26738112C();
}

uint64_t sub_2670D9B78(uint64_t a1)
{
  v2 = sub_2670D9C7C(&qword_2800F48E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670D9BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670D9C7C(&qword_2800F48E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670D9C7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTASRState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTASRStateUpdated.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MTSchemaMTASRState(0);
  sub_2670D9FC0(&qword_2800F48E0, type metadata accessor for MTSchemaMTASRState);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574617453727361, 0xE800000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_2878885F0);
  return sub_2673811CC();
}

uint64_t sub_2670D9EB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670D9F18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670D9FC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670DA008()
{
  result = qword_2800F48F8;
  if (!qword_2800F48F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F48F8);
  }

  return result;
}

uint64_t static MTSchemaMTAudioChannel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026745ACD0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026745ACF0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026745AD10, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x800000026745AD40, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x800000026745AD60, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000027, 0x800000026745AD90, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2670DA3BC(uint64_t a1)
{
  v2 = sub_2670DA4C0(&qword_2800F4900);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670DA424(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670DA4C0(&qword_2800F4900);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670DA4C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTAudioChannel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTBatchRequestCancelled.makeTypeManifestAndEnsureFields(in:)()
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
  v10(v12, 0);
  sub_266ECB128(&unk_287888618);
  return sub_2673811CC();
}

uint64_t sub_2670DA764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DA7C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DA82C()
{
  result = qword_2800F4908;
  if (!qword_2800F4908)
  {
    sub_2670DA884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4908);
  }

  return result;
}

unint64_t sub_2670DA884()
{
  result = qword_2800F4910;
  if (!qword_2800F4910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4910);
  }

  return result;
}

uint64_t static MTSchemaMTBatchRequestContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v9(v27, 0);
  sub_266ECB294(0, &qword_2800F4918, 0x277D58AB0);
  sub_266ECAF2C(&qword_2800F4920, &qword_2800F4918, 0x277D58AB0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v27, 0);
  sub_266ECB294(0, &qword_2800F4928, 0x277D58AA0);
  sub_266ECAF2C(&qword_2800F4930, &qword_2800F4928, 0x277D58AA0);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800F4938, 0x277D58AA8);
  sub_266ECAF2C(&qword_2800F4940, &qword_2800F4938, 0x277D58AA8);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F4910, 0x277D58A90);
  sub_266ECAF2C(&qword_2800F4908, &qword_2800F4910, 0x277D58A90);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x656C6C65636E6163, 0xE900000000000064);
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
  sub_266ECB128(&unk_287888640);
  return sub_2673811CC();
}

uint64_t sub_2670DAF90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DAFF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTBatchRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v10(v12, 0);
  sub_266ECB128(&unk_287888668);
  return sub_2673811CC();
}

uint64_t sub_2670DB2F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DB35C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DB3C0()
{
  result = qword_2800F4930;
  if (!qword_2800F4930)
  {
    sub_2670DB418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4930);
  }

  return result;
}

unint64_t sub_2670DB418()
{
  result = qword_2800F4928;
  if (!qword_2800F4928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4928);
  }

  return result;
}

uint64_t static MTSchemaMTBatchRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E538], v0);
  v14[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267452F50);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F4958, 0x277D58AC8);
  sub_266ECAF2C(&qword_2800F4960, &qword_2800F4958, 0x277D58AC8);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x726F727265, 0xE500000000000000);
  v12(v14, 0);
  sub_266ECB128(&unk_287888690);
  return sub_2673811CC();
}

uint64_t sub_2670DB7A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DB80C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTBatchRequestStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v10, 0x67617261506D756ELL, 0xED00007368706172);
  v14(v18, 0);
  v11(v6, *MEMORY[0x277D3E530], v2);
  v18[0] = 1;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x65636E6575716573, 0xEE007265626D754ELL);
  v15(v18, 0);
  sub_266ECB128(&unk_2878886B8);
  return sub_2673811CC();
}

uint64_t sub_2670DBC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DBC64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DBCC8()
{
  result = qword_2800F4920;
  if (!qword_2800F4920)
  {
    sub_2670DBD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4920);
  }

  return result;
}

unint64_t sub_2670DBD20()
{
  result = qword_2800F4918;
  if (!qword_2800F4918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4918);
  }

  return result;
}

uint64_t static MTSchemaMTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v15[0] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v15[1] = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 1682535533, 0xE400000000000000);
  v9(v17, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v16, 1682535533, 0xE400000000000000);
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_2878886E0);
    sub_26738115C();
  }

  (v11)(v16, 0);
  v10(v17, 0);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x496E6F6973736573, 0xE900000000000064);
  return v13(v17, 0);
}

uint64_t sub_2670DC08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DC0F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTClientEventV2.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v89 = a1;
  v1 = sub_26738118C();
  v84 = *(v1 - 8);
  v85 = v1;
  v2 = *(v84 + 64);
  MEMORY[0x28223BE20](v1);
  v83 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v82 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4970, 0x277D58AB8);
  sub_266ECAF2C(&qword_2800F4968, &qword_2800F4970, 0x277D58AB8);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v91, 0);
  sub_266ECB294(0, &qword_2800F4950, 0x277D58A98);
  sub_266ECAF2C(&qword_2800F4948, &qword_2800F4950, 0x277D58A98);
  sub_26738121C();
  v82 = v9 + 56;
  v87 = v10;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026745AF10);
  v12(v91, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v90, 0xD000000000000013, 0x800000026745AF10);
  v15 = *(v9 + 48);
  v88 = v9 + 48;
  v86 = v15;
  if (!v15(v16, 1, v8))
  {
    sub_266ECB128(&unk_287888708);
    sub_26738115C();
  }

  (v14)(v90, 0);
  v13(v91, 0);
  sub_266ECB294(0, &qword_2800F4978, 0x277D58AE8);
  sub_266ECAF2C(&qword_2800F4980, &qword_2800F4978, 0x277D58AE8);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026745AF30);
  v17(v91, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v90, 0xD000000000000011, 0x800000026745AF30);
  if (!v86(v20, 1, v8))
  {
    sub_266ECB128(&unk_287888738);
    sub_26738115C();
  }

  (v19)(v90, 0);
  v18(v91, 0);
  sub_266ECB294(0, &qword_2800F48F8, 0x277D58A58);
  sub_266ECAF2C(&qword_2800F48F0, &qword_2800F48F8, 0x277D58A58);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574617453727361, 0xEF64657461647055);
  v21(v91, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v90, 0x6574617453727361, 0xEF64657461647055);
  if (!v86(v24, 1, v8))
  {
    sub_266ECB128(&unk_287888760);
    sub_26738115C();
  }

  (v23)(v90, 0);
  v22(v91, 0);
  sub_266ECB294(0, &qword_2800F4988, 0x277D58B38);
  sub_266ECAF2C(&qword_2800F4990, &qword_2800F4988, 0x277D58B38);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026745AF50);
  v25(v91, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v90, 0xD000000000000012, 0x800000026745AF50);
  if (!v86(v28, 1, v8))
  {
    sub_266ECB128(&unk_287888790);
    sub_26738115C();
  }

  (v27)(v90, 0);
  v26(v91, 0);
  sub_266ECB294(0, &qword_2800F4998, 0x277D58B08);
  sub_266ECAF2C(&qword_2800F49A0, &qword_2800F4998, 0x277D58B08);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026745AF70);
  v29(v91, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v90, 0xD000000000000016, 0x800000026745AF70);
  if (!v86(v32, 1, v8))
  {
    sub_266ECB128(&unk_2878887B8);
    sub_26738115C();
  }

  (v31)(v90, 0);
  v30(v91, 0);
  sub_266ECB294(0, &qword_2800F48B0, 0x277D58A78);
  sub_266ECAF2C(&qword_2800F48A8, &qword_2800F48B0, 0x277D58A78);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026745AF90);
  v33(v91, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v90, 0xD000000000000013, 0x800000026745AF90);
  if (!v86(v36, 1, v8))
  {
    sub_266ECB128(&unk_2878887E0);
    sub_26738115C();
  }

  (v35)(v90, 0);
  v34(v91, 0);
  sub_266ECB294(0, &qword_2800F48C8, 0x277D58A80);
  sub_266ECAF2C(&qword_2800F48C0, &qword_2800F48C8, 0x277D58A80);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026745AFB0);
  v37(v91, 0);
  v38 = sub_2673811AC();
  v39 = sub_266ECB6CC(v90, 0xD000000000000013, 0x800000026745AFB0);
  if (!v86(v40, 1, v8))
  {
    sub_266ECB128(&unk_287888808);
    sub_26738115C();
  }

  (v39)(v90, 0);
  v38(v91, 0);
  sub_266ECB294(0, &qword_2800F48D8, 0x277D58A88);
  sub_266ECAF2C(&qword_2800F48D0, &qword_2800F48D8, 0x277D58A88);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v41 = sub_2673811AC();
  sub_266EC637C(v7, 0x64656D6954707061, 0xEB0000000074754FLL);
  v41(v91, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v90, 0x64656D6954707061, 0xEB0000000074754FLL);
  if (!v86(v44, 1, v8))
  {
    sub_266ECB128(&unk_287888830);
    sub_26738115C();
  }

  (v43)(v90, 0);
  v42(v91, 0);
  sub_266ECB294(0, &qword_2800F49A8, 0x277D58AD8);
  sub_266ECAF2C(&qword_2800F49B0, &qword_2800F49A8, 0x277D58AD8);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v45 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026745AFD0);
  v45(v91, 0);
  v46 = sub_2673811AC();
  v47 = sub_266ECB6CC(v90, 0xD000000000000014, 0x800000026745AFD0);
  if (!v86(v48, 1, v8))
  {
    sub_266ECB128(&unk_287888858);
    sub_26738115C();
  }

  (v47)(v90, 0);
  v46(v91, 0);
  sub_266ECB294(0, &qword_2800F49B8, 0x277D58AD0);
  sub_266ECAF2C(&qword_2800F49C0, &qword_2800F49B8, 0x277D58AD0);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v49 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, 0x800000026745AFF0);
  v49(v91, 0);
  v50 = sub_2673811AC();
  v51 = sub_266ECB6CC(v90, 0xD000000000000020, 0x800000026745AFF0);
  if (!v86(v52, 1, v8))
  {
    sub_266ECB128(&unk_287888880);
    sub_26738115C();
  }

  (v51)(v90, 0);
  v50(v91, 0);
  sub_266ECB294(0, &qword_2800F4860, 0x277D58A68);
  sub_266ECAF2C(&qword_2800F4858, &qword_2800F4860, 0x277D58A68);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v53 = sub_2673811AC();
  sub_266EC637C(v7, 0x676B636142707061, 0xEF6465646E756F72);
  v53(v91, 0);
  v54 = sub_2673811AC();
  v55 = sub_266ECB6CC(v90, 0x676B636142707061, 0xEF6465646E756F72);
  if (!v86(v56, 1, v8))
  {
    sub_266ECB128(&unk_2878888A8);
    sub_26738115C();
  }

  (v55)(v90, 0);
  v54(v91, 0);
  sub_266ECB294(0, &qword_2800F49C8, 0x277D58B20);
  sub_266ECAF2C(&qword_2800F49D0, &qword_2800F49C8, 0x277D58B20);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v57 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x800000026745B020);
  v57(v91, 0);
  v58 = sub_2673811AC();
  v59 = sub_266ECB6CC(v90, 0xD00000000000001FLL, 0x800000026745B020);
  if (!v86(v60, 1, v8))
  {
    sub_266ECB128(&unk_2878888D0);
    sub_26738115C();
  }

  (v59)(v90, 0);
  v58(v91, 0);
  sub_266ECB294(0, &qword_2800F49D8, 0x277D58B18);
  sub_266ECAF2C(&qword_2800F49E0, &qword_2800F49D8, 0x277D58B18);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v61 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026745B040);
  v61(v91, 0);
  v62 = sub_2673811AC();
  v63 = sub_266ECB6CC(v90, 0xD00000000000001DLL, 0x800000026745B040);
  if (!v86(v64, 1, v8))
  {
    sub_266ECB128(&unk_2878888F8);
    sub_26738115C();
  }

  (v63)(v90, 0);
  v62(v91, 0);
  sub_266ECB294(0, &qword_2800F49E8, 0x277D58B10);
  sub_266ECAF2C(&qword_2800F49F0, &qword_2800F49E8, 0x277D58B10);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v65 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, 0x800000026745B060);
  v65(v91, 0);
  v66 = sub_2673811AC();
  v67 = sub_266ECB6CC(v90, 0xD000000000000020, 0x800000026745B060);
  if (!v86(v68, 1, v8))
  {
    sub_266ECB128(&unk_287888920);
    sub_26738115C();
  }

  (v67)(v90, 0);
  v66(v91, 0);
  sub_266ECB294(0, &qword_2800F49F8, 0x277D58B40);
  sub_266ECAF2C(&qword_2800F4A00, &qword_2800F49F8, 0x277D58B40);
  sub_26738121C();
  v87(v7, 0, 1, v8);
  v69 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026745B090);
  v69(v91, 0);
  v70 = sub_2673811AC();
  v71 = sub_266ECB6CC(v90, 0xD000000000000014, 0x800000026745B090);
  if (!v86(v72, 1, v8))
  {
    sub_266ECB128(&unk_287888948);
    sub_26738115C();
  }

  (v71)(v90, 0);
  v70(v91, 0);
  v73 = v83;
  sub_26738117C();
  v74 = sub_2673811BC();
  v76 = v75;
  v77 = *v75;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v76 = v77;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v77 = sub_266ECAD54(0, v77[2] + 1, 1, v77);
    *v76 = v77;
  }

  v80 = v77[2];
  v79 = v77[3];
  if (v80 >= v79 >> 1)
  {
    v77 = sub_266ECAD54(v79 > 1, v80 + 1, 1, v77);
    *v76 = v77;
  }

  v77[2] = v80 + 1;
  (*(v84 + 32))(v77 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v80, v73, v85);
  v74(v91, 0);
  sub_266ECB128(&unk_287888970);
  return sub_2673811CC();
}

uint64_t sub_2670DDA5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2670DDAF4()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670DDBC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DDC24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670DDC84(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4A08, &qword_2800F4A10, 0x277D58AC0);
  a1[2] = sub_266ECAF2C(&qword_2800F4A18, &qword_2800F4A10, 0x277D58AC0);
  result = sub_266ECAF2C(&qword_2800F4A20, &qword_2800F4A10, 0x277D58AC0);
  a1[3] = result;
  return result;
}

uint64_t static MTSchemaMTError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v12(v21, 0);
  v13 = v19;
  (v8)(v3, v20, v19);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x73654D726F727265, 0xEC00000065676173);
  v14(v21, 0);
  (v18)(v3, *MEMORY[0x277D3E508], v13);
  v21[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v15(v21, 0);
}

uint64_t sub_2670DE180(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DE1E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DE248()
{
  result = qword_2800F4960;
  if (!qword_2800F4960)
  {
    sub_2670DE2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4960);
  }

  return result;
}

unint64_t sub_2670DE2A0()
{
  result = qword_2800F4958;
  if (!qword_2800F4958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4958);
  }

  return result;
}

uint64_t static MTSchemaMTFrameworkRequestResponseReceived.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026745B110);
  v9(v17, 0);
  type metadata accessor for MTSchemaMTFrameworkRequestRoute(0);
  sub_2670DE784();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x5274736575716572, 0xEC0000006574756FLL);
  v10(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E538], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x65746E65536D756ELL, 0xEC0000007365636ELL);
  return v11(v17, 0);
}

uint64_t sub_2670DE6C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DE724(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670DE784()
{
  result = qword_2800F4A30;
  if (!qword_2800F4A30)
  {
    type metadata accessor for MTSchemaMTFrameworkRequestRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4A30);
  }

  return result;
}

uint64_t static MTSchemaMTFrameworkRequestRoute.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026745B160, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026745B180, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026745B1A0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2670DEA38(uint64_t a1)
{
  v2 = sub_2670DEB3C(&qword_2800F4A38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670DEAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670DEB3C(&qword_2800F4A38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670DEB3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTFrameworkRequestRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTFrameworkRequestSent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_26738113C();
  v21 = v1;
  v23 = *(v1 - 8);
  v2 = *(v23 + 64);
  MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026745B110);
  v10(v24, 0);
  v11 = *MEMORY[0x277D3E530];
  v22 = *(v23 + 104);
  v23 += 104;
  v12 = v19;
  v22(v19, v11, v1);
  v24[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6973736553737371, 0xEC00000064496E6FLL);
  v13(v24, 0);
  type metadata accessor for MTSchemaMTFrameworkRequestType(0);
  sub_2670DF1EC(&qword_2800F4A40, type metadata accessor for MTSchemaMTFrameworkRequestType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x5474736575716572, 0xEB00000000657079);
  v14(v24, 0);
  type metadata accessor for MTSchemaMTFrameworkRequestRoute(0);
  sub_2670DF1EC(&qword_2800F4A30, type metadata accessor for MTSchemaMTFrameworkRequestRoute);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x5274736575716572, 0xEC0000006574756FLL);
  v15(v24, 0);
  v22(v12, *MEMORY[0x277D3E538], v21);
  v24[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x5374736575716572, 0xEB00000000657A69);
  return v16(v24, 0);
}

uint64_t sub_2670DF128(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DF18C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670DF1EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MTSchemaMTFrameworkRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026745B230, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026745B250, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026745B280, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026745B2B0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026745B2D0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670DF570(uint64_t a1)
{
  v2 = sub_2670DF674(&qword_2800F4A48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670DF5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670DF674(&qword_2800F4A48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670DF674(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTFrameworkRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTInputSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026745B320, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026745B340, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026745B360, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x800000026745B380, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x800000026745B3A0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2670DF9B0(uint64_t a1)
{
  v2 = sub_2670DFAB4(&qword_2800F4A58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670DFA18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670DFAB4(&qword_2800F4A58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670DFAB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTInputSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTInvocationCancelled.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6973736553737371, 0xEC00000064496E6FLL);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v13(v15, 0);
}

uint64_t sub_2670DFEF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670DFF5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB294(0, &qword_2800F4A70, 0x277D58B00);
  sub_266ECAF2C(&qword_2800F4A78, &qword_2800F4A70, 0x277D58B00);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F4A80, 0x277D58AF0);
  sub_266ECAF2C(&qword_2800F4A88, &qword_2800F4A80, 0x277D58AF0);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F4A90, 0x277D58AF8);
  sub_266ECAF2C(&qword_2800F4A98, &qword_2800F4A90, 0x277D58AF8);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F4A68, 0x277D58AE0);
  sub_266ECAF2C(&qword_2800F4A60, &qword_2800F4A68, 0x277D58AE0);
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

uint64_t sub_2670E05E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E0648(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v15[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6973736553737371, 0xEC00000064496E6FLL);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v13(v15, 0);
}

uint64_t sub_2670E0AEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E0B50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4958, 0x277D58AC8);
  sub_266ECAF2C(&qword_2800F4960, &qword_2800F4958, 0x277D58AC8);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6973736553737371, 0xEC00000064496E6FLL);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F4838, 0x277D58B30);
  sub_266ECAF2C(&qword_2800F4840, &qword_2800F4838, 0x277D58B30);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6150656C61636F6CLL, 0xEA00000000007269);
  return v8(v10, 0);
}

uint64_t sub_2670E0F8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E0FF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v3 = sub_26738118C();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v62 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_26738113C();
  v68 = *(v65 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v13 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v60 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v61 = v13;
  sub_26738120C();
  v14 = sub_26738116C();
  v69 = *(v14 - 8);
  v15 = *(v69 + 56);
  v58 = v69 + 56;
  v56 = v14;
  v15(v12, 0, 1, v14);
  v70 = v15;
  v57 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v12, 0x64496B6E696CLL, 0xE600000000000000);
  v16(v73, 0);
  v55 = "i.mt.MTInvocationStarted";
  v67 = *MEMORY[0x277D3E4E8];
  v18 = v68 + 104;
  v17 = *(v68 + 104);
  v19 = v65;
  v17(v8);
  v66 = v17;
  v68 = v18;
  v73[0] = 1;
  sub_26738114C();
  v15(v12, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, v55 | 0x8000000000000000);
  v20(v73, 0);
  v21 = *MEMORY[0x277D3E538];
  v59 = v8;
  (v17)(v8, v21, v19);
  v73[0] = 1;
  sub_26738114C();
  v22 = v56;
  v23 = v70;
  v70(v12, 0, 1, v56);
  v24 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, 0x8000000267453300);
  v24(v73, 0);
  type metadata accessor for MTSchemaMTTask(0);
  sub_2670E1F50(&qword_2800F4AA0, type metadata accessor for MTSchemaMTTask);
  sub_26738120C();
  v25 = v22;
  v23(v12, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v12, 1802723700, 0xE400000000000000);
  v26(v73, 0);
  type metadata accessor for MTSchemaMTInputSource(0);
  sub_2670E1F50(&qword_2800F4A50, type metadata accessor for MTSchemaMTInputSource);
  sub_26738120C();
  v23(v12, 0, 1, v22);
  v27 = v23;
  v28 = sub_2673811AC();
  sub_266EC637C(v12, 0x756F537475706E69, 0xEB00000000656372);
  v28(v73, 0);
  v55 = "isOnDeviceTranslation";
  v29 = v59;
  v30 = v65;
  (v66)(v59, v67, v65);
  v73[0] = 1;
  sub_26738114C();
  v27(v12, 0, 1, v25);
  v31 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001FLL, v55 | 0x8000000000000000);
  v31(v73, 0);
  (v66)(v29, v67, v30);
  v73[0] = 1;
  sub_26738114C();
  v27(v12, 0, 1, v25);
  v32 = sub_2673811AC();
  sub_266EC637C(v12, 0xD00000000000001FLL, 0x800000026745B4F0);
  v32(v73, 0);
  type metadata accessor for MTSchemaMTAppDisplayMode(0);
  sub_2670E1F50(&qword_2800F4878, type metadata accessor for MTSchemaMTAppDisplayMode);
  sub_26738120C();
  v27(v12, 0, 1, v25);
  v33 = sub_2673811AC();
  sub_266EC637C(v12, 0x4D79616C70736964, 0xEB0000000065646FLL);
  v33(v73, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v72, 0x4D79616C70736964, 0xEB0000000065646FLL);
  v36 = *(v69 + 48);
  v69 += 48;
  if (!v36(v37, 1, v25))
  {
    sub_266ECB128(&unk_2878889A8);
    sub_26738115C();
  }

  (v35)(v72, 0);
  v34(v73, 0);
  sub_26738120C();
  v70(v12, 0, 1, v25);
  v38 = sub_2673811AC();
  sub_266EC637C(v12, 0x6973736553737371, 0xEC00000064496E6FLL);
  v38(v73, 0);
  v39 = sub_2673811AC();
  v40 = sub_266ECB6CC(v72, 0x6973736553737371, 0xEC00000064496E6FLL);
  if (!v36(v41, 1, v25))
  {
    sub_266ECB128(&unk_2878889D0);
    sub_26738115C();
  }

  (v40)(v72, 0);
  v39(v73, 0);
  type metadata accessor for MTSchemaMTInvocationType(0);
  sub_2670E1F50(&qword_2800F4AA8, type metadata accessor for MTSchemaMTInvocationType);
  sub_26738120C();
  v42 = v70;
  v70(v12, 0, 1, v25);
  v43 = sub_2673811AC();
  sub_266EC637C(v12, 0x697461636F766E69, 0xEE00657079546E6FLL);
  v43(v73, 0);
  sub_266ECB294(0, &qword_2800F48A0, 0x277D58A70);
  sub_266ECAF2C(&qword_2800F4898, &qword_2800F48A0, 0x277D58A70);
  sub_26738121C();
  v42(v12, 0, 1, v25);
  v44 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x800000026745B510);
  v44(v73, 0);
  sub_266ECB294(0, &qword_2800F4850, 0x277D58A60);
  sub_266ECAF2C(&qword_2800F4848, &qword_2800F4850, 0x277D58A60);
  sub_26738121C();
  v42(v12, 0, 1, v25);
  v45 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000015, 0x800000026745B530);
  v45(v73, 0);
  v46 = v62;
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
  (*(v63 + 32))(v50 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v53, v46, v64);
  return v47(v73, 0);
}

uint64_t sub_2670E1E8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E1EF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E1F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MTSchemaMTInvocationStartedTier1.makeTypeManifestAndEnsureFields(in:)()
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
    sub_266ECB128(&unk_2878889F8);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_2670E23BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E2420(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static MTSchemaMTInvocationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026745B5D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v98;

  v1(v114, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026745B5F0, v11);
  v12 = *v9;
  *v9 = v99;

  v7(v114, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026745B610, v17);
  v18 = *v15;
  *v15 = v100;

  v13(v114, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026745B630, v23);
  v24 = *v21;
  *v21 = v101;

  v19(v114, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026745B650, v29);
  v30 = *v27;
  *v27 = v102;

  v25(v114, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x800000026745B680, v35);
  v36 = *v33;
  *v33 = v103;

  v31(v114, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x800000026745B6A0, v41);
  v42 = *v39;
  *v39 = v104;

  v37(v114, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x800000026745B6C0, v47);
  v48 = *v45;
  *v45 = v105;

  v43(v114, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x800000026745B6F0, v53);
  v54 = *v51;
  *v51 = v106;

  v49(v114, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x800000026745B720, v59);
  v60 = *v57;
  *v57 = v107;

  v55(v114, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x800000026745B740, v65);
  v66 = *v63;
  *v63 = v108;

  v61(v114, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001FLL, 0x800000026745B770, v71);
  v72 = *v69;
  *v69 = v109;

  v67(v114, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001ELL, 0x800000026745B790, v77);
  v78 = *v75;
  *v75 = v110;

  v73(v114, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x800000026745B7B0, v83);
  v84 = *v81;
  *v81 = v111;

  v79(v114, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002DLL, 0x800000026745B7D0, v89);
  v90 = *v87;
  *v87 = v112;

  v85(v114, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001FLL, 0x800000026745B800, v95);
  v96 = *v93;
  *v93 = v113;

  return v91(v114, 0);
}

uint64_t sub_2670E2CA4(uint64_t a1)
{
  v2 = sub_2670E2DA8(&qword_2800F4AB0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670E2D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670E2DA8(&qword_2800F4AB0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670E2DA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTSchemaMTInvocationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTSchemaMTLanguageDisambiguationUISelected.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3238(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E2FA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3238(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E312C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E3190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E3238(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670E3280()
{
  result = qword_2800F49E8;
  if (!qword_2800F49E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F49E8);
  }

  return result;
}

uint64_t static MTSchemaMTLanguageDisambiguationUIShown.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3718(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E3488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3718(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C61636F6CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670E360C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E3670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E3718(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670E3760()
{
  result = qword_2800F49D8;
  if (!qword_2800F49D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F49D8);
  }

  return result;
}

uint64_t static MTSchemaMTLanguageIdentificationCompleted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for MTSchemaMTInputSource(0);
  sub_2670E3BF8(&qword_2800F4A50, type metadata accessor for MTSchemaMTInputSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x756F537475706E69, 0xEB00000000656372);
  v6(v10, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_2670E3BF8(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636F4C706F74, 0xE900000000000065);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F4AB8, 0x277D58B28);
  sub_266ECAF2C(&qword_2800F4AC0, &qword_2800F4AB8, 0x277D58B28);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x69666E6F4364696CLL, 0xED000065636E6564);
  return v8(v10, 0);
}

uint64_t sub_2670E3B34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E3B98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E3BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MTSchemaMTLanguageIdentificationConfidence.makeTypeManifestAndEnsureFields(in:)()
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
  sub_2670E40B4(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
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
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026745B920);
  return v11(v15, 0);
}

uint64_t sub_2670E3FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E400C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E40B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670E40FC()
{
  result = qword_2800F4AB8;
  if (!qword_2800F4AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4AB8);
  }

  return result;
}

uint64_t static MTSchemaMTLocalePair.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_2670E44DC(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F4C656372756F73, 0xEC000000656C6163);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F4C746567726174, 0xEC000000656C6163);
  return v7(v9, 0);
}

uint64_t sub_2670E43D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670E4434(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670E44DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2670E4524()
{
  result = qword_2800F4838;
  if (!qword_2800F4838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4838);
  }

  return result;
}