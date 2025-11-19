uint64_t sub_25F464690(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8)) & 1;
}

uint64_t sub_25F4647C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v7 = *v6;
  v8 = v6[1];
  v9 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
  result = a2(a3, a1, v7, v8);
  *v9 = result;
  v9[1] = v11;
  return result;
}

uint64_t sub_25F46492C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v19 = a1;
  v3 = *v2;
  v4 = *(*v2 + 88);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](a1);
  v22 = &v18 - v6;
  v7 = v3[12];
  v8 = v3[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v18 - v12;
  swift_beginAccess();
  v14 = v2[8];
  type metadata accessor for Junction();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v15 = v3[13];
  v21 = v4;
  sub_25F4A2BB0();
  v16 = v24;
  if (!v24)
  {
    return swift_endAccess();
  }

  v26 = v25;
  swift_endAccess();
  (*(v10 + 16))(v13, v19, AssociatedTypeWitness);
  sub_25F4A2DF0();
  (*(v20 + 16))(v22, v23, v21);
  v24 = v16;
  v25 = v26;
  swift_beginAccess();
  sub_25F4A2BA0();

  sub_25F4A2BC0();
  swift_endAccess();
}

uint64_t sub_25F464C64()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[12];
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v5 = v1[13];
  sub_25F4A2BA0();
  sub_25F4A2B90();
  return swift_endAccess();
}

uint64_t sub_25F464DD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v72 = *a2;
  v7 = v72;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F5F8, &unk_25F4AEF20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - v10;
  v12 = sub_25F4A2AE0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F4A2A70();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v7[11] - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v27 = &v61 - v26;
  v73 = *a1;
  LOBYTE(v26) = *(a1 + 8);
  v70 = v24;
  v71 = a3;
  v69 = v28;
  v67 = v25;
  if (v26)
  {
    v64 = a2;
    v65 = v27;
    _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
    v29 = v73;
    v30 = v73;
    v31 = sub_25F4A2AD0();
    v32 = sub_25F4A3010();
    sub_25F468D34(v29, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66 = v11;
      v35 = v34;
      *v33 = 138412290;
      v36 = v73;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_25F3DE000, v31, v32, "Branching fork failed to create new branch: %@", v33, 0xCu);
      sub_25F3F21F4(v35, &qword_27FD6DEC8, &qword_25F4AB2B0);
      v38 = v35;
      v11 = v66;
      MEMORY[0x25F8DE250](v38, -1, -1);
      MEMORY[0x25F8DE250](v33, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
    v76 = *(v68 + *(v39 + 48));
    sub_25F4A2A80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
    sub_25F428848();
    sub_25F4A2670();
    (*(v69 + 8))(v21, v70);
    (*(v22 + 16))(v65, v71, v67);
  }

  else
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    v40 = v25;
    v65 = v21;
    MEMORY[0x25F8DD480](0x2068636E617262, 0xE700000000000000);
    v41 = a3;
    v42 = v40;
    sub_25F4A3240();
    v43 = v76;
    v44 = v77;
    v45 = v72[10];
    v46 = v72[12];
    v62 = v72[13];
    v76 = v45;
    v77 = v42;
    v78 = v46;
    v79 = v62;
    v47 = type metadata accessor for BranchingFork();
    WitnessTable = swift_getWitnessTable();
    v66 = v11;
    v49 = WitnessTable;
    v50 = sub_25F4634D0(v43, v44, v47, WitnessTable);
    v61 = v50;

    v51 = sub_25F46708C(v50, v47, v49);
    v53 = v52;
    v63 = *(v22 + 16);
    v64 = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v54 = v41;
    v55 = v67;
    v63(v27, v54, v67);
    v74 = v51;
    v75 = v53;
    swift_beginAccess();
    type metadata accessor for Junction();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_25F4A2E20();

    swift_getTupleTypeMetadata2();
    sub_25F4A2BA0();
    sub_25F4A2BC0();
    swift_endAccess();
    sub_25F440BC0(v61, v73);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
    v76 = *(v68 + *(v56 + 48));
    v57 = v65;
    sub_25F4A2A80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
    sub_25F428848();
    sub_25F4A2680();
    v11 = v66;

    (*(v69 + 8))(v57, v70);
    v63(v27, v71, v55);
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  (*(*(v58 - 8) + 56))(v11, 1, 1, v58);
  swift_beginAccess();
  v59 = v72[13];
  sub_25F4A2BA0();
  sub_25F4A2BC0();
  return swift_endAccess();
}

uint64_t sub_25F465564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v9 = *a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v10 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v12 = (&v34 - v11);
  v13 = sub_25F4A2A70();
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F4A2AE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v21 = *a1;
    _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
    v22 = v21;
    v23 = sub_25F4A2AD0();
    v24 = sub_25F4A3010();
    sub_25F468CA4(v21, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_25F3DE000, v23, v24, "Fork failed to create new branch: %@", v25, 0xCu);
      sub_25F3F21F4(v26, &qword_27FD6DEC8, &qword_25F4AB2B0);
      MEMORY[0x25F8DE250](v26, -1, -1);
      MEMORY[0x25F8DE250](v25, -1, -1);
    }

    (*(v17 + 8))(v20, v16);
    v29 = v35;
    sub_25F4A2A80();
    *v12 = v21;
    swift_storeEnumTagMultiPayload();
    v30 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();
    sub_25F3F21F4(v12, &qword_27FD6DEB8, &unk_25F4A8D20);
    return (*(v37 + 8))(v29, v38);
  }

  else
  {
    sub_25F46492C(a3, a4);
    v32 = *(v9 + 80);
    v33 = *(v9 + 96);
    type metadata accessor for PipeEvent();
    return sub_25F40C854(sub_25F468CB0);
  }
}

void *sub_25F465924()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return v0;
}

uint64_t sub_25F46596C()
{
  sub_25F465924();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_25F465A20(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_25F465A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0980](a1, a2, a3, WitnessTable);
}

uint64_t sub_25F465AD4()
{
  v0 = swift_allocObject();
  sub_25F466974();
  return v0;
}

uint64_t sub_25F465B0C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F600, &qword_25F4AEF38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  v6 = sub_25F4A2120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v17[0] = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = v0[5];
  v11 = *(v1 + 88);
  v12 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F4A2BB0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25F3F21F4(v5, &qword_27FD6F600, &qword_25F4AEF38);
    swift_endAccess();
    return 0;
  }

  else
  {
    v14 = v17[0];
    (*(v7 + 32))(v17[0], v5, v6);
    swift_endAccess();
    swift_beginAccess();
    v15 = v0[4];
    type metadata accessor for Junction();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_25F4A2E20();
    swift_getTupleTypeMetadata2();
    sub_25F46A788(&qword_27FD6F608);
    sub_25F4A2BB0();
    v13 = v17[1];
    swift_endAccess();
    (*(v7 + 8))(v14, v6);
  }

  return v13;
}

uint64_t sub_25F465E60(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_25F4A2120();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_25F4A3060();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_25F4660B8(a1, &v17 - v11);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v12, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  else
  {
    v14 = &v12[*(TupleTypeMetadata2 + 48)];
    v13 = *v14;
    v15 = *(v14 + 1);
    (*(*(v4 - 8) + 8))(v12, v4);
  }

  return v13;
}

uint64_t sub_25F4660B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = *v2;
  sub_25F4A2120();
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v7 = sub_25F4A3060();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  swift_beginAccess();
  v26 = v2[4];
  v22 = v5;
  v23 = v6;
  v24 = sub_25F46A61C;
  v25 = a1;
  sub_25F46A788(&qword_27FD6F608);
  sub_25F4A2BA0();

  swift_getWitnessTable();
  sub_25F4A2CE0();

  v18 = v5;
  v19 = v6;
  v20 = sub_25F46A64C;
  v21 = 0;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F462728(sub_25F46A650, v17, MEMORY[0x277D84A98], TupleTypeMetadata2, v13, v16);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_25F4663C0()
{
  v1 = *v0;
  swift_beginAccess();
  sub_25F4A2120();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  sub_25F46A788(&qword_27FD6F608);
  sub_25F4A2BA0();
  sub_25F4A2B90();
  swift_endAccess();
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F4A2BA0();
  sub_25F4A2B90();
  return swift_endAccess();
}

uint64_t sub_25F4665BC(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  sub_25F4A2120();
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8)) & 1;
}

uint64_t sub_25F4666F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A2120();
  (*(*(v6 - 8) + 16))(a1, a2, v6);

  return a3;
}

uint64_t sub_25F46677C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_25F4A2120();
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  swift_getTupleTypeMetadata2();
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v7 = *v6;
  v8 = v6[1];
  v9 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
  result = a2(a3, a1, v7, v8);
  *v9 = result;
  v9[1] = v11;
  return result;
}

void *sub_25F4668F0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t sub_25F466928()
{
  sub_25F4668F0();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *sub_25F466974()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25F4A2990();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[2] = sub_25F4A2980();
  v0[3] = 0;
  v6 = sub_25F4A2120();
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v10 = sub_25F4A2DB0();
  v11 = sub_25F46A788(&qword_27FD6F608);
  v12 = sub_25F467170(v10, v6, TupleTypeMetadata2, v11);

  v1[4] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v14 = sub_25F4A2DB0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_25F467170(v14, AssociatedTypeWitness, v6, AssociatedConformanceWitness);

  v1[5] = v16;
  return v1;
}

uint64_t sub_25F466BEC(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_25F466C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0980](a1, a2, a3, WitnessTable);
}

uint64_t sub_25F466C94(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466CD0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466D0C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466D64(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466DA0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466DDC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F466E34(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F610, &unk_25F4AEF40);
  }

  else
  {

    return sub_25F4A3220();
  }
}

unint64_t sub_25F466EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_25F4A2BD0();

  return sub_25F466F04(a1, v9, a2, a3);
}

unint64_t sub_25F466F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_25F4A2C00();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t *sub_25F46708C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a3 + 8);
  v6 = *(v4 + 80);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  sub_25F4A2DB0();
  return a1;
}

uint64_t sub_25F467170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25F4A2DE0())
  {
    sub_25F4A3160();
    v13 = sub_25F4A3150();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25F4A2DE0();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25F4A2DD0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25F4A3100();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25F466EA8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_25F46745C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v115 = a3;
  v131 = a2;
  v135 = a1;
  v121 = *v3;
  v5 = v121;
  v6 = type metadata accessor for TransportReply();
  v114 = *(v6 - 8);
  v7 = *(v114 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = v8;
  v126 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v121 + 80);
  v127 = v121;
  v10 = *(v121 + 96);
  v132 = v9;
  v11 = type metadata accessor for PipeEvent();
  v117 = *(v11 - 8);
  v113 = *(v117 + 64);
  MEMORY[0x28223BE20](v11);
  v124 = v96 - v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v112 = *(AssociatedTypeWitness - 8);
  v111 = *(v112 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v123 = v96 - v13;
  type metadata accessor for Junction();
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v107 = sub_25F4A2510();
  v106 = *(v107 - 8);
  v14 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v110 = v96 - v15;
  v103 = sub_25F4A2A70();
  v102 = *(v103 - 8);
  v16 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v100 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v105 = *(v118 - 8);
  v18 = *(v105 + 64);
  v19 = MEMORY[0x28223BE20](v118);
  v99 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v119 = v96 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F5F8, &unk_25F4AEF20);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v101 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v109 = (v96 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  v129 = *(v26 - 8);
  v130 = v26;
  v27 = *(v129 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v122 = v96 - v29;
  v30 = *(v5 + 88);
  v128 = *(v30 - 8);
  v31 = *(v128 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v32);
  v34 = v96 - v33;
  v35 = v3[2];
  v36 = v3[3];
  v125 = v11;
  v35(v135 + *(v11 + 36));
  swift_beginAccess();
  v37 = v4[8];
  v120 = v10;
  type metadata accessor for Junction();
  sub_25F4A2E20();
  v38 = v30;
  swift_getTupleTypeMetadata2();
  v39 = *(v127 + 104);
  sub_25F4A2BB0();
  v40 = v134;
  swift_endAccess();
  if (v40)
  {
    sub_25F468C64(v40);
    sub_25F46492C(v131, v34);
    v41 = v121;
    WitnessTable = swift_getWitnessTable();
    sub_25F4632CC(v135, v41, WitnessTable);
    return (*(v128 + 8))(v34, v38);
  }

  else
  {
    v44 = v118;
    v96[1] = v18;
    v121 = v31;
    v108 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v128;
    swift_beginAccess();
    v97 = v4;
    v46 = v4[9];
    v47 = v109;
    v48 = v130;
    v127 = v39;
    sub_25F4A2BB0();
    v49 = (*(v129 + 48))(v47, 1, v48);
    v98 = v34;
    if (v49 == 1)
    {
      sub_25F3F21F4(v47, &qword_27FD6F5F8, &unk_25F4AEF20);
      swift_endAccess();
      v50 = v44;
      v51 = *(v44 + 48);
      v52 = v100;
      sub_25F4A2A80();
      v53 = v119;
      v54 = sub_25F4A24E0();
      (*(v102 + 8))(v52, v103);
      *(v53 + v51) = v54;
      v55 = v45;
      v109 = *(v45 + 16);
      v109(v108, v34, v38);
      v56 = v99;
      sub_25F46825C(v53, v99);
      v57 = *(v56 + *(v50 + 48));

      v96[0] = v38;
      v58 = v129;
      v104 = *(v129 + 32);
      v59 = v101;
      v60 = v130;
      v104(v101, v56, v130);
      (*(v58 + 56))(v59, 0, 1, v60);
      v61 = v97;
      swift_beginAccess();
      sub_25F4A2BA0();
      v62 = v108;
      sub_25F4A2BC0();
      swift_endAccess();
      v63 = v119;
      sub_25F46825C(v119, v56);
      v64 = *(v56 + *(v118 + 48));

      v65 = v60;
      v66 = v98;
      v104(v122, v56, v65);
      v67 = v61[5];
      (v61[4])(v131, v66);
      v68 = v62;
      v69 = v62;
      v70 = v96[0];
      v109(v68, v66, v96[0]);
      sub_25F46825C(v63, v56);
      v71 = (*(v55 + 80) + 56) & ~*(v55 + 80);
      v72 = (v121 + *(v105 + 80) + v71) & ~*(v105 + 80);
      v73 = swift_allocObject();
      *&v74 = v132;
      *(&v74 + 1) = v70;
      *&v75 = v120;
      *(&v75 + 1) = v127;
      *(v73 + 16) = v74;
      *(v73 + 32) = v75;
      *(v73 + 48) = v61;
      (*(v55 + 32))(v73 + v71, v69, v70);
      sub_25F468450(v56, v73 + v72);

      v76 = v107;
      v77 = v110;
      sub_25F4A24B0();

      v78 = v76;
      v79 = v69;
      v34 = v98;
      (*(v106 + 8))(v77, v78);
      sub_25F3F21F4(v119, &qword_27FD6E468, &qword_25F4A8F58);
      v80 = v131;
      v81 = v125;
      v82 = v126;
      v83 = v135;
      v84 = v117;
    }

    else
    {
      (*(v129 + 32))(v122, v47, v130);
      swift_endAccess();
      v81 = v125;
      v82 = v126;
      v83 = v135;
      v70 = v38;
      v84 = v117;
      v80 = v131;
      v55 = v45;
      v79 = v108;
    }

    v85 = v112;
    (*(v112 + 16))(v123, v80, AssociatedTypeWitness);
    (*(v55 + 16))(v79, v34, v70);
    (*(v84 + 16))(v124, v83, v81);
    sub_25F412F00(v115, v82);
    v86 = (*(v85 + 80) + 56) & ~*(v85 + 80);
    v87 = (v111 + *(v55 + 80) + v86) & ~*(v55 + 80);
    v88 = (v121 + *(v84 + 80) + v87) & ~*(v84 + 80);
    v135 = (v113 + *(v114 + 80) + v88) & ~*(v114 + 80);
    v89 = v55;
    v90 = swift_allocObject();
    *&v91 = v132;
    v92 = v70;
    *(&v91 + 1) = v70;
    *&v93 = v120;
    *(&v93 + 1) = v127;
    *(v90 + 16) = v91;
    *(v90 + 32) = v93;
    *(v90 + 48) = v97;
    (*(v85 + 32))(v90 + v86, v123, AssociatedTypeWitness);
    (*(v89 + 32))(v90 + v87, v108, v70);
    (*(v84 + 32))(v90 + v88, v124, v125);
    sub_25F40CA18(v126, v90 + v135);

    v94 = v130;
    v95 = v122;
    sub_25F4A24B0();

    (*(v129 + 8))(v95, v94);
    return (*(v89 + 8))(v98, v92);
  }
}

uint64_t sub_25F46825C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4682CC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  (*(*(v12 - 8) + 8))(v0 + v8, v12);
  v13 = *(v0 + v8 + v6[14]);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F468450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4684C0(uint64_t a1)
{
  v3 = (*(*(*(v1 + 24) - 8) + 80) + 56) & ~*(*(*(v1 + 24) - 8) + 80);
  v4 = *(*(*(v1 + 24) - 8) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58) - 8);
  v6 = *(v1 + 48);
  v7 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_25F464DD8(a1, v6, v1 + v3, v7);
}

uint64_t sub_25F4685A0()
{
  v1 = *(v0 + 3);
  v30 = v1;
  v2 = *(v0 + 4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v37 = *(v4 + 80);
  v5 = (v37 + 56) & ~v37;
  v6 = *(v1 - 8);
  v7 = v6;
  v35 = *(v6 + 80);
  v8 = (v5 + *(v4 + 64) + v35) & ~v35;
  v9 = *(v6 + 64);
  v10 = type metadata accessor for PipeEvent();
  v33 = *(*(v10 - 8) + 80);
  v34 = v10;
  v11 = (v8 + v9 + v33) & ~v33;
  v32 = *(*(v10 - 8) + 64);
  v12 = type metadata accessor for TransportReply();
  v28 = *(v12 - 8);
  v29 = v12;
  v31 = *(v28 + 80);
  v36 = *(v28 + 64);
  v13 = *(v0 + 6);

  v14 = *(v4 + 8);
  v14(&v0[v5], AssociatedTypeWitness);
  (*(v7 + 8))(&v0[v8], v30);
  v15 = v11;
  v16 = &v0[v11];
  type metadata accessor for PipeEvent.Content();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_25F4A25E0();
    (*(*(v21 - 8) + 8))(&v0[v11], v21);
    v20 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48)];
    if ((*(v28 + 48))(v20, 1, v29))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v14(&v0[v11], AssociatedTypeWitness);
    v18 = swift_getAssociatedTypeWitness();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(v18 - 8) + 8))(&v16[*(TupleTypeMetadata3 + 48)], v18);
    v20 = &v16[*(TupleTypeMetadata3 + 64)];
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  (*(*(v22 - 8) + 8))(v20, v22);
LABEL_6:
  v23 = (v15 + v32 + v31) & ~v31;
  v24 = *(v34 + 36);
  v25 = swift_getAssociatedTypeWitness();
  (*(*(v25 - 8) + 8))(&v16[v24], v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  (*(*(v26 - 8) + 8))(&v0[v23], v26);

  return MEMORY[0x2821FE8E8](v0, v23 + v36, v37 | v35 | v33 | v31 | 7);
}

uint64_t sub_25F468A68(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = *(*(v4 - 8) + 64);
  v10 = *(type metadata accessor for PipeEvent() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for TransportReply() - 8);
  v14 = v1[6];
  v15 = v1 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_25F465564(a1, v14, v1 + v7, v1 + v8, v1 + v11, v15);
}

uint64_t sub_25F468C64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_25F468CA4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_25F468CB0(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25F4632CC(a1, v3, WitnessTable);
}

void sub_25F468D34(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_25F468D40()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F468D84()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F468DC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[4];
  return sub_25F4636E8(v3, v1, v2);
}

uint64_t sub_25F468E10(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25F463094(a1, v2, v3);
}

uint64_t sub_25F468E38(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25F462C90(a1, a2, v3, v4);
}

uint64_t sub_25F468E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v34 = a1;
  v4 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v32 = a2;
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for PipeEvent.Content();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v29 = type metadata accessor for TransportReply();
  v10 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v28 - v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = v34;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  (*(v6 + 16))(v9, v17, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v6 + 8))(v9, v5);
    return sub_25F4632CC(v17, v32, v33);
  }

  else
  {
    v24 = v31;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v26 = *(TupleTypeMetadata3 + 48);
    v27 = *(TupleTypeMetadata3 + 64);
    (*(v19 + 32))(v22, v9, v18);
    (*(v30 + 32))(v16, &v9[v26], v24);
    sub_25F40CA18(&v9[v27], v12);
    (*(v33 + 72))(v34, v22, v16, v12, v32);
    sub_25F40C9BC(v12);
    (*(v30 + 8))(v16, v31);
    return (*(v19 + 8))(v22, v18);
  }
}

void sub_25F469268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v91 = a3;
  *&v87 = a2;
  v84 = *v4;
  v5 = v84;
  v85 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v6 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v80 = (&v69 - v7);
  v81 = sub_25F4A2A70();
  v79 = *(v81 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F600, &qword_25F4AEF38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v69 - v12;
  v13 = *(v5 + 88);
  v14 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v89 = &v69 - v16;
  v17 = sub_25F4A2120();
  type metadata accessor for Junction();
  v18 = swift_getAssociatedTypeWitness();
  v71 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73 = v18;
  v75 = swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = swift_getTupleTypeMetadata2();
  v21 = sub_25F4A3060();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  v76 = TupleTypeMetadata2;
  v26 = swift_getTupleTypeMetadata2();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v69 - v29;
  v83 = v17;
  v31 = *(v17 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v28);
  v70 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v88 = &v69 - v35;
  v92 = v4;
  sub_25F4660B8(v87, v25);
  if ((*(*(v20 - 8) + 48))(v25, 1, v20) == 1)
  {
    (*(v22 + 8))(v25, v21);
    v37 = v89;
    v36 = AssociatedTypeWitness;
    (*(v86 + 16))(v89, v91, AssociatedTypeWitness);
    type metadata accessor for EndpointInvalidated();
    swift_getWitnessTable();
    v38 = swift_allocError();
    sub_25F40CFA0(v37, v36, v39);
    v40 = v77;
    sub_25F4A2A80();
    v41 = v80;
    *v80 = v38;
    swift_storeEnumTagMultiPayload();
    v42 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();
    sub_25F3F21F4(v41, &qword_27FD6DEB8, &unk_25F4A8D20);
    (*(v79 + 8))(v40, v81);
  }

  else
  {
    v43 = *(v20 + 48);
    v44 = *(v26 + 48);
    v45 = *(v31 + 32);
    v87 = *&v25[v43];
    v46 = v83;
    v45(v30, v25, v83);
    *&v30[v44] = v87;
    v47 = &v30[*(v26 + 48)];
    v49 = *v47;
    v48 = *(v47 + 1);
    *&v87 = v49;
    v82 = v48;
    v50 = v31;
    v51 = v88;
    v45(v88, v30, v46);
    (*(v86 + 16))(v89, v91, AssociatedTypeWitness);
    v52 = *(v50 + 16);
    v53 = v74;
    v52(v74, v51, v46);
    v91 = v50;
    (*(v50 + 56))(v53, 0, 1, v46);
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    sub_25F4A2BA0();
    sub_25F4A2BC0();
    swift_endAccess();
    v52(v70, v51, v46);
    v54 = v75;
    v55 = sub_25F466E34(v75, v75);
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    v58 = *(v54 - 8);
    v59 = *(v58 + 72);
    v60 = *(v58 + 80);
    swift_allocObject();
    v61 = v87;

    sub_25F4A2D30();
    v63 = v62;
    v64 = type metadata accessor for PipeEvent();
    v65 = v85;
    (*(v58 + 16))(v63, v85 + *(v64 + 36), v54);
    sub_25F4A2E20();
    v66 = sub_25F4A2D50();

    v93 = v61;
    v94 = v66;
    swift_beginAccess();
    sub_25F46A788(&qword_27FD6F608);
    sub_25F4A2BA0();
    sub_25F4A2BC0();
    swift_endAccess();
    v67 = v84;
    WitnessTable = swift_getWitnessTable();
    sub_25F463094(v65, v67, WitnessTable);
    (*(v91 + 8))(v88, v46);
  }
}

uint64_t sub_25F469C24(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_25F4A2120();
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  v42 = v7;
  v43 = v6;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = swift_getTupleTypeMetadata2();
  v10 = sub_25F4A3060();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v40 = TupleTypeMetadata2;
  v15 = swift_getTupleTypeMetadata2();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v44 = *(v5 - 8);
  v20 = *(v44 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v41 = &v39 - v24;
  sub_25F4660B8(a1, v14);
  if ((*(*(v9 - 8) + 48))(v14, 1, v9) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v26 = *(v9 + 48);
  v27 = *(v15 + 48);
  v28 = v44;
  v29 = *(v44 + 32);
  v39 = *&v14[v26];
  v29(v19, v14, v5);
  *&v19[v27] = v39;
  v30 = &v19[*(v15 + 48)];
  v31 = *v30;

  v32 = *(v30 + 1);

  v33 = v41;
  v29(v41, v19, v5);
  (*(v28 + 16))(v23, v33, v5);
  v45 = 0;
  v46 = 0;
  swift_beginAccess();
  sub_25F46A788(&qword_27FD6F608);
  sub_25F4A2BA0();
  sub_25F4A2BC0();
  swift_endAccess();
  v34 = swift_beginAccess();
  v35 = v2[5];
  MEMORY[0x28223BE20](v34);
  v36 = v42;
  *(&v39 - 4) = v43;
  *(&v39 - 3) = v36;
  *(&v39 - 2) = v33;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v37 = sub_25F4A2B80();
  v38 = v2[5];
  v2[5] = v37;

  return (*(v44 + 8))(v33, v5);
}

uint64_t sub_25F46A12C(uint64_t a1)
{
  v32 = *v1;
  v33 = a1;
  v2 = v32[11];
  v3 = v32[10];
  v4 = v32[12];
  type metadata accessor for Junction();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_25F4A2E20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = swift_getTupleTypeMetadata2();
  *&v30 = sub_25F4A3060();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v30 - v9;
  v11 = swift_getTupleTypeMetadata2();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = *(v2 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v31 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  sub_25F464310(v33, v10);
  if ((*(*(v6 - 8) + 48))(v10, 1, v6) == 1)
  {
    return (*(v7 + 8))(v10, v30);
  }

  v23 = *(v6 + 48);
  v24 = *(v11 + 48);
  v33 = TupleTypeMetadata2;
  v25 = *(v16 + 32);
  v30 = *&v10[v23];
  v25(v15, v10, v2);
  *&v15[v24] = v30;
  v26 = &v15[*(v11 + 48)];
  v27 = *v26;

  v28 = *(v26 + 1);

  v25(v21, v15, v2);
  (*(v16 + 16))(v31, v21, v2);
  v34 = 0;
  v35 = 0;
  swift_beginAccess();
  v29 = v32[13];
  sub_25F4A2BA0();
  sub_25F4A2BC0();
  swift_endAccess();
  return (*(v16 + 8))(v21, v2);
}

uint64_t sub_25F46A55C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return sub_25F464690(a1, *(v1 + 48)) & 1;
}

uint64_t sub_25F46A584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(v3 + 16) - 8) + 16))();

  return a3;
}

uint64_t sub_25F46A5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  return sub_25F4647C0(a1, *(v2 + 48), a2);
}

uint64_t sub_25F46A628(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_25F4665BC(a1, *(v1 + 32)) & 1;
}

uint64_t sub_25F46A650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_25F46677C(a1, *(v2 + 32), a2);
}

BOOL sub_25F46A674()
{
  v1 = *(v0 + 32);
  sub_25F4A2120();
  sub_25F46A788(&qword_27FD6F618);
  return (sub_25F4A2C00() & 1) == 0;
}

uint64_t sub_25F46A6F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  (*(v2 + 24))(0, v1, v2);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_25F46A760(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25F468E60(a1, v2, v3);
}

uint64_t sub_25F46A788(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25F4A2120();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F46A7F4()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F46A900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F46EBBC();
  *a2 = result;
  return result;
}

void sub_25F46A930(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6D726177657270;
  v5 = 0xE700000000000000;
  v6 = 0x4C525579706F63;
  v7 = 0x800000025F4B6800;
  v8 = 0xD000000000000016;
  if (v2 != 4)
  {
    v8 = 0x7070417465736572;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007070;
  v10 = 0x416C6C6174736E69;
  if (v2 != 1)
  {
    v10 = 0x6C6174736E696E75;
    v9 = 0xED0000737070416CLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_25F46AA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F46EB68();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t AppManagerInterface.TwoWayMessage.propertyListValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  *v38 = v0[2];
  *&v38[16] = v2;
  *&v38[25] = *(v0 + 57);
  v36 = *v0;
  v37 = v1;
  v3 = *v0;
  v4 = *(v0 + 1);
  v6 = *(v0 + 2);
  v5 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = sub_25F46AE68();
  sub_25F46AEBC();
  result = sub_25F4A25C0();
  if (v38[40] <= 2u)
  {
    if (!v38[40])
    {
      *&v31 = v36;
      BYTE8(v31) = BYTE8(v36) & 1;
      *(&v26 + 1) = &type metadata for AppManagerInterface.TwoWayMessage.Key;
      v27 = v8;
      LOBYTE(v25) = 1;
      sub_25F46B138();
      v12 = v3;
      sub_25F4A2520();

      v10 = &v25;
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    if (v38[40] == 1)
    {
      *&v31 = v36;
      BYTE8(v31) = BYTE8(v36) & 1;
      *(&v26 + 1) = &type metadata for AppManagerInterface.TwoWayMessage.Key;
      v27 = v8;
      LOBYTE(v25) = 1;
      sub_25F46B0D4();

      sub_25F4A2520();
      sub_25F46B128(v31);
      v10 = &v25;
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    *&v24[8] = *&v38[8];
    *&v24[24] = *&v38[24];
    v22 = v36;
    v23 = v37;
    *v24 = *v38;
    v20 = &type metadata for AppManagerInterface.TwoWayMessage.Key;
    v21 = v8;
    v19 = 1;
    *&v25 = v3;
    *(&v25 + 1) = v4;
    *&v26 = v6;
    *(&v26 + 1) = v5;
    v27 = v7;
    v17 = *(v0 + 40);
    v18 = *(v0 + 56);
    v30 = *(v0 + 72);
    v28 = v17;
    v29 = v18;
    sub_25F46B048(&v25, &v31);
    sub_25F46B080();
    sub_25F4A2520();
    v33 = *v24;
    v34 = *&v24[16];
    v35 = *&v24[32];
    v31 = v22;
    v32 = v23;
    v15 = &unk_27FD6F650;
    v16 = &unk_25F4AEF58;
LABEL_11:
    sub_25F3F21F4(&v31, v15, v16);
    v10 = &v19;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  if (v38[40] == 3)
  {
    *&v24[8] = *&v38[8];
    *&v24[24] = *&v38[24];
    v22 = v36;
    v23 = v37;
    *v24 = *v38;
    v20 = &type metadata for AppManagerInterface.TwoWayMessage.Key;
    v21 = v8;
    v19 = 1;
    *&v25 = v3;
    *(&v25 + 1) = v4;
    *&v26 = v6;
    *(&v26 + 1) = v5;
    v27 = v7;
    v13 = *(v0 + 40);
    v14 = *(v0 + 56);
    v30 = *(v0 + 72);
    v28 = v13;
    v29 = v14;
    sub_25F46AFBC(&v25, &v31);
    sub_25F46AFF4();
    sub_25F4A2520();
    v33 = *v24;
    v34 = *&v24[16];
    v35 = *&v24[32];
    v31 = v22;
    v32 = v23;
    v15 = &unk_27FD6F640;
    v16 = &unk_25F4AEF50;
    goto LABEL_11;
  }

  if (v38[40] != 4)
  {
    return result;
  }

  v25 = v36;
  v26 = v37;
  v27 = *v38;
  *(&v32 + 1) = &type metadata for AppManagerInterface.TwoWayMessage.Key;
  *&v33 = v8;
  LOBYTE(v31) = 1;
  sub_25F46AF10();

  v11 = v7;
  sub_25F4A2520();
  sub_25F46AF64(v25, *(&v25 + 1), v26, *(&v26 + 1), v27);
  v10 = &v31;
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

_BYTE *sub_25F46AE3C(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  *result = 0;
  *a2 = 0x504030201uLL >> (8 * *(a3 + 72));
  return result;
}

unint64_t sub_25F46AE68()
{
  result = qword_27FD6F620;
  if (!qword_27FD6F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F620);
  }

  return result;
}

unint64_t sub_25F46AEBC()
{
  result = qword_27FD6F628;
  if (!qword_27FD6F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F628);
  }

  return result;
}

unint64_t sub_25F46AF10()
{
  result = qword_27FD6F630;
  if (!qword_27FD6F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F630);
  }

  return result;
}

void sub_25F46AF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

unint64_t sub_25F46AFF4()
{
  result = qword_27FD6F638;
  if (!qword_27FD6F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F638);
  }

  return result;
}

unint64_t sub_25F46B080()
{
  result = qword_27FD6F648;
  if (!qword_27FD6F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F648);
  }

  return result;
}

unint64_t sub_25F46B0D4()
{
  result = qword_27FD6F658;
  if (!qword_27FD6F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F658);
  }

  return result;
}

uint64_t sub_25F46B128(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_25F46B138()
{
  result = qword_27FD6F660;
  if (!qword_27FD6F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F660);
  }

  return result;
}

uint64_t AppManagerInterface.TwoWayMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[3] = &type metadata for AppManagerInterface.TwoWayMessage.Key;
  v5 = sub_25F46AE68();
  v32[4] = v5;
  LOBYTE(v32[0]) = 0;
  sub_25F46AEBC();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    if (v33 > 2u)
    {
      if (v33 == 3)
      {
        v30 = &type metadata for AppManagerInterface.TwoWayMessage.Key;
        v31 = v5;
        LOBYTE(v28) = 1;
        sub_25F46B080();
        sub_25F4A2530();
        v19 = sub_25F4A25E0();
        (*(*(v19 - 8) + 8))(a1, v19);
        result = __swift_destroy_boxed_opaque_existential_1(&v28);
        v15 = v22;
        v16 = v23;
        v10 = v24;
        v11 = v25;
        v12 = v26;
        v9 = v27;
        v14 = v23 & 0xFFFFFFFFFFFFFF00;
        v13 = 2;
      }

      else
      {
        v30 = &type metadata for AppManagerInterface.TwoWayMessage.Key;
        v31 = v5;
        LOBYTE(v28) = 1;
        if (v33 == 4)
        {
          sub_25F46AFF4();
          sub_25F4A2530();
          v17 = sub_25F4A25E0();
          (*(*(v17 - 8) + 8))(a1, v17);
          result = __swift_destroy_boxed_opaque_existential_1(&v28);
          v15 = v22;
          v16 = v23;
          v10 = v24;
          v11 = v25;
          v12 = v26;
          v9 = v27;
          v14 = v23 & 0xFFFFFFFFFFFFFF00;
          v13 = 3;
        }

        else
        {
          sub_25F46AF10();
          sub_25F4A2530();
          v21 = sub_25F4A25E0();
          (*(*(v21 - 8) + 8))(a1, v21);
          result = __swift_destroy_boxed_opaque_existential_1(&v28);
          v15 = v22;
          v16 = v23;
          v10 = v24;
          *&v11 = v25;
          v14 = v23 & 0xFFFFFFFFFFFFFF00;
          v13 = 4;
        }
      }
    }

    else if (v33)
    {
      *(&v24 + 1) = &type metadata for AppManagerInterface.TwoWayMessage.Key;
      *&v25 = v5;
      LOBYTE(v22) = 1;
      if (v33 == 1)
      {
        sub_25F46B138();
        sub_25F4A2530();
        v8 = sub_25F4A25E0();
        (*(*(v8 - 8) + 8))(a1, v8);
        result = __swift_destroy_boxed_opaque_existential_1(&v22);
        v13 = 0;
        v14 = 0;
        v15 = v28;
        v16 = v29;
      }

      else
      {
        sub_25F46B0D4();
        sub_25F4A2530();
        v20 = sub_25F4A25E0();
        (*(*(v20 - 8) + 8))(a1, v20);
        result = __swift_destroy_boxed_opaque_existential_1(&v22);
        v14 = 0;
        v15 = v28;
        v16 = v29;
        v13 = 1;
      }
    }

    else
    {
      v18 = sub_25F4A25E0();
      result = (*(*(v18 - 8) + 8))(a1, v18);
      v15 = 0;
      v9 = 0;
      v16 = 0;
      v14 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
      v13 = 5;
      v12 = 0uLL;
    }

    *a2 = v15;
    *(a2 + 8) = v14 | v16;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
    *(a2 + 64) = v9;
    *(a2 + 72) = v13;
  }

  return result;
}

id InstallAppRequest.sourceURLWrapper.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t InstallAppRequest.init(sourceURL:isDevelopment:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_25F4A2040();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v12 = sub_25F4A2010();
  v13 = [v11 initWithURL:v12 readonly:0];

  v14 = *(v7 + 8);
  v14(a1, v6);
  result = (v14)(v10, v6);
  *a3 = v13;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_25F46B7BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F6C657665447369;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x800000025F4B6820;
  }

  else
  {
    v5 = 0xED0000746E656D70;
  }

  if (*a2)
  {
    v6 = 0x6F6C657665447369;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = 0xED0000746E656D70;
  }

  else
  {
    v7 = 0x800000025F4B6820;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F46B874()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46B908()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F46B988()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F46BA24(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6820;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x6F6C657665447369;
    v2 = 0xED0000746E656D70;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_25F46BA74()
{
  if (*v0)
  {
    result = 0x6F6C657665447369;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_25F46BAD8(void *a1)
{
  sub_25F46BD2C();
  sub_25F46BD80();
  v2 = a1;
  v3 = sub_25F4A28D0();

  return v3;
}

uint64_t InstallAppRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = &type metadata for InstallAppRequest.Key;
  v5 = sub_25F46BD2C();
  v13 = v5;
  LOBYTE(v11[0]) = 0;
  sub_25F46BD80();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    v7 = v14;
    v12 = &type metadata for InstallAppRequest.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v7;
    *(a2 + 8) = v10;
  }

  return result;
}

unint64_t sub_25F46BD2C()
{
  result = qword_27FD6F668;
  if (!qword_27FD6F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F668);
  }

  return result;
}

unint64_t sub_25F46BD80()
{
  result = qword_27FD6F670;
  if (!qword_27FD6F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F670);
  }

  return result;
}

uint64_t UninstallAppsRequest.init(bundleIDs:arePrefixes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_25F46BE18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6966657250657261;
  }

  else
  {
    v4 = 0x4449656C646E7562;
  }

  if (v3)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xEB00000000736578;
  }

  if (*a2)
  {
    v6 = 0x6966657250657261;
  }

  else
  {
    v6 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v7 = 0xEB00000000736578;
  }

  else
  {
    v7 = 0xE900000000000073;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F46BECC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46BF5C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F46BFD8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F46C070(uint64_t *a1@<X8>)
{
  v2 = 0x4449656C646E7562;
  if (*v1)
  {
    v2 = 0x6966657250657261;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xEB00000000736578;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F46C0BC()
{
  if (*v0)
  {
    result = 0x6966657250657261;
  }

  else
  {
    result = 0x4449656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_25F46C12C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return sub_25F4A25A0();
}

uint64_t sub_25F46C160()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F46C3B8();
  sub_25F41A91C();
  return sub_25F4A28D0();
}

uint64_t sub_25F46C1F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25F46C160();
}

uint64_t UninstallAppsRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = &type metadata for UninstallAppsRequest.Key;
  v5 = sub_25F46C3B8();
  v13 = v5;
  LOBYTE(v11[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F41A91C();
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8 = v14;
    v12 = &type metadata for UninstallAppsRequest.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    v10 = v14;
    *a2 = v8;
    *(a2 + 8) = v10;
  }

  return result;
}

unint64_t sub_25F46C3B8()
{
  result = qword_27FD6F678;
  if (!qword_27FD6F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F678);
  }

  return result;
}

uint64_t sub_25F46C424()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return sub_25F4A25A0();
}

uint64_t CopyURLRequest.filename.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

id CopyURLRequest.sourceURLWrapper.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return v2;
}

__n128 CopyURLRequest.init(agentDescriptor:sourceURL:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F4A2040();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v24 = a1[1];
  v25 = v11;
  v12 = *(a1 + 4);
  v22 = *(a1 + 5);
  v23 = v12;
  v13 = sub_25F4A2000();
  v15 = v14;
  (*(v7 + 16))(v10, a2, v6);
  v16 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v17 = sub_25F4A2010();
  v18 = [v16 initWithURL:v17 readonly:0];

  v19 = *(v7 + 8);
  v19(a2, v6);
  v19(v10, v6);
  result = v24;
  *a3 = v25;
  *(a3 + 16) = result;
  v21 = v22;
  *(a3 + 32) = v23;
  *(a3 + 40) = v21;
  *(a3 + 48) = v13;
  *(a3 + 56) = v15;
  *(a3 + 64) = v18;
  return result;
}

uint64_t sub_25F46C65C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F46EC08();
  *a2 = result;
  return result;
}

void sub_25F46C68C(unint64_t *a1@<X8>)
{
  v2 = 0xEF7265696669746ELL;
  v3 = 0x656449746E656761;
  v4 = 0xE800000000000000;
  v5 = 0x656D616E656C6966;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x800000025F4B6820;
  }

  if (*v1)
  {
    v3 = 0x736544746E656761;
    v2 = 0xEF726F7470697263;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F46C728()
{
  v1 = 0x656449746E656761;
  v2 = 0x656D616E656C6966;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x736544746E656761;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t CopyURLRequest.propertyListValue.getter()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

unint64_t sub_25F46C884()
{
  result = qword_27FD6F680;
  if (!qword_27FD6F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F680);
  }

  return result;
}

uint64_t sub_25F46C8D8()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t CopyURLResponse.finalPath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F46C980()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F46C9F4()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F46CA48@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  *a2 = v5 != 0;
  return result;
}

uint64_t CopyURLResponse.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25F46CB58();
  return sub_25F4A25C0();
}

unint64_t sub_25F46CB58()
{
  result = qword_27FD6F688;
  if (!qword_27FD6F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F688);
  }

  return result;
}

uint64_t CopyURLResponse.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for CopyURLResponse.Key;
  v8[4] = sub_25F46CB58();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_25F46CCAC()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25F46CB58();
  return sub_25F4A25C0();
}

uint64_t sub_25F46CD1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for CopyURLResponse.Key;
  v8[4] = sub_25F46CB58();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t _s19PreviewsMessagingOS14CopyURLRequestV15agentDescriptorAA05AgentG0Vvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 GrantExecutePermissionRequest.init(agentDescriptor:sourceURL:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F4A2040();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v26 = a1[1];
  v27 = v11;
  v12 = *(a1 + 4);
  v24 = *(a1 + 5);
  v25 = v12;
  v23 = sub_25F4A2000();
  v14 = v13;
  (*(v7 + 16))(v10, a2, v6);
  v15 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v16 = sub_25F4A2010();
  v17 = sub_25F4A2C10();
  v18 = [v15 initWithURL:v16 readonly:1 extensionClass:v17];

  v19 = *(v7 + 8);
  v19(a2, v6);
  v19(v10, v6);
  result = v26;
  *a3 = v27;
  *(a3 + 16) = result;
  v21 = v24;
  *(a3 + 32) = v25;
  *(a3 + 40) = v21;
  *(a3 + 48) = v23;
  *(a3 + 56) = v14;
  *(a3 + 64) = v18;
  return result;
}

uint64_t sub_25F46D034()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46D114()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F46D1E0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46D2BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F46EC54();
  *a2 = result;
  return result;
}

uint64_t GrantExecutePermissionRequest.propertyListValue.getter()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F46D344(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v3;
  v27 = *(a1 + 32);
  v28[0] = v3;
  v28[1] = v27;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v25 = v6;
  v24 = 0;
  v22 = v3;
  v23 = v27;
  v21 = 1;
  v18 = v26[0];
  v19 = v3;
  v20 = v27;
  v17 = 2;
  v15 = v4;
  v16 = v5;
  v14 = 3;
  v13 = v6;
  sub_25F452120(v26, v12);
  sub_25F4520E8(v28, v12);

  v7 = sub_25F46ECEC(&v25, v12);
  a2(v7);
  sub_25F44F534();
  sub_25F44F6EC();
  sub_25F46BD80();
  v8 = v6;
  v9 = sub_25F4A28B0();
  v10 = v13;

  sub_25F3E4814(v18, *(&v18 + 1));
  sub_25F403404(v22, *(&v22 + 1));

  return v9;
}

uint64_t sub_25F46D564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v21 = a2;
  v8 = a3();
  v22 = v8;
  LOBYTE(v20[0]) = 1;
  sub_25F44F6EC();
  sub_25F4A2530();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = a2;
    v22 = v8;
    LOBYTE(v20[0]) = 0;
    sub_25F4A2530();
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  v9 = v23[1];
  v10 = v24;
  v18 = v23[2];
  v19 = v23[0];
  v11 = v26;
  v17 = v25;
  v24 = a2;
  v25 = v8;
  LOBYTE(v23[0]) = 2;
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v12 = v20[1];
  v16 = v20[0];
  v24 = a2;
  v25 = v8;
  LOBYTE(v23[0]) = 3;
  sub_25F46BD80();
  sub_25F4A2530();
  v13 = sub_25F4A25E0();
  (*(*(v13 - 8) + 8))(a1, v13);
  result = __swift_destroy_boxed_opaque_existential_1(v23);
  v15 = v27;
  *a4 = v19;
  a4[1] = v9;
  a4[2] = v18;
  a4[3] = v10;
  a4[4] = v17;
  a4[5] = v11;
  a4[6] = v16;
  a4[7] = v12;
  a4[8] = v15;
  return result;
}

unint64_t sub_25F46D830()
{
  result = qword_27FD6F690;
  if (!qword_27FD6F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F690);
  }

  return result;
}

uint64_t sub_25F46D884()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t ResetAppRequest.agentDescriptorBundle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

id ResetAppRequest.sourceURLWrapper.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

uint64_t ResetAppRequest.init(agentDescriptorBundle:sourceURL:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E638, &qword_25F4A9828);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_25F4A2040();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = *a1;
  v31 = a1[1];
  v32 = v18;
  v19 = a1[2];
  v29 = a1[3];
  v30 = v19;
  v33 = a2;
  sub_25F404B8C(a2, v9, &qword_27FD6E638, &qword_25F4A9828);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25F3F21F4(v33, &qword_27FD6E638, &qword_25F4A9828);
    result = sub_25F3F21F4(v9, &qword_27FD6E638, &qword_25F4A9828);
    v21 = 0;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v22 = objc_allocWithZone(MEMORY[0x277CCAC90]);
    v23 = sub_25F4A2010();
    v24 = sub_25F4A2C10();
    v21 = [v22 initWithURL:v23 readonly:1 extensionClass:v24];

    sub_25F3F21F4(v33, &qword_27FD6E638, &qword_25F4A9828);
    v25 = *(v11 + 8);
    v25(v15, v10);
    result = (v25)(v17, v10);
  }

  v26 = v31;
  *a3 = v32;
  a3[1] = v26;
  v27 = v29;
  a3[2] = v30;
  a3[3] = v27;
  a3[4] = v21;
  return result;
}

uint64_t sub_25F46DC08(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x800000025F4B6870;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3 == 1)
  {
    v6 = 0x800000025F4B6870;
  }

  else
  {
    v6 = 0x800000025F4B6890;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656449746E656761;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEF7265696669746ELL;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x800000025F4B6890;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x656449746E656761;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF7265696669746ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F46DCF0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46DDA8()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F46DE4C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F46DF00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F46ECA0();
  *a2 = result;
  return result;
}

void sub_25F46DF30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7265696669746ELL;
  v4 = 0x800000025F4B6870;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000025F4B6890;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656449746E656761;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F46DFA4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656449746E656761;
  }
}

uint64_t ResetAppRequest.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t sub_25F46E064(uint64_t a1)
{
  v1 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v1;
  v2 = *(a1 + 32);
  v15 = v2;
  v14 = 0;
  v12 = v16[0];
  v13 = v1;
  v11 = 1;
  v9 = v16[0];
  v10 = v1;
  v8 = 2;
  v7 = v2;
  sub_25F4520E8(v16, v6);
  sub_25F4520E8(v16, v6);
  sub_25F404B8C(&v15, v6, &qword_27FD6F708, &unk_25F4AFB10);
  sub_25F46E3CC();
  sub_25F44F534();
  sub_25F46BD80();
  v3 = v2;
  v4 = sub_25F4A28C0();

  sub_25F403404(v9, *(&v9 + 1));
  sub_25F403404(v12, *(&v12 + 1));

  return v4;
}

uint64_t ResetAppRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for ResetAppRequest.Key;
  v5 = sub_25F46E3CC();
  v14 = v5;
  LOBYTE(v12[0]) = 1;
  sub_25F44F534();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = &type metadata for ResetAppRequest.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 0;
    sub_25F4A2530();
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  v6 = v16;
  v19 = v15;
  v8 = v17;
  v7 = v18;
  v13 = &type metadata for ResetAppRequest.Key;
  v14 = v5;
  LOBYTE(v12[0]) = 2;
  sub_25F46BD80();
  sub_25F4A2580();
  v9 = sub_25F4A25E0();
  (*(*(v9 - 8) + 8))(a1, v9);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  v11 = v15;
  *a2 = v19;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v11;
  return result;
}

unint64_t sub_25F46E3CC()
{
  result = qword_27FD6F698;
  if (!qword_27FD6F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F698);
  }

  return result;
}

uint64_t sub_25F46E420()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS19AppManagerInterfaceO13TwoWayMessageO(uint64_t a1)
{
  if ((*(a1 + 72) & 7u) <= 4)
  {
    return *(a1 + 72) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F46E4D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 73))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 72);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F46E514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F46E564(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_25F46E5B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F46E60C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F46E6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F46E704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F46E7F8()
{
  result = qword_27FD6F6A0;
  if (!qword_27FD6F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6A0);
  }

  return result;
}

unint64_t sub_25F46E850()
{
  result = qword_27FD6F6A8;
  if (!qword_27FD6F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6A8);
  }

  return result;
}

unint64_t sub_25F46E8A8()
{
  result = qword_27FD6F6B0;
  if (!qword_27FD6F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6B0);
  }

  return result;
}

unint64_t sub_25F46E930()
{
  result = qword_27FD6F6C8;
  if (!qword_27FD6F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6C8);
  }

  return result;
}

unint64_t sub_25F46E988()
{
  result = qword_27FD6F6D0;
  if (!qword_27FD6F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6D0);
  }

  return result;
}

uint64_t sub_25F46EA0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F46EA64()
{
  result = qword_27FD6F6E8;
  if (!qword_27FD6F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6E8);
  }

  return result;
}

unint64_t sub_25F46EABC()
{
  result = qword_27FD6F6F0;
  if (!qword_27FD6F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6F0);
  }

  return result;
}

unint64_t sub_25F46EB14()
{
  result = qword_27FD6F6F8;
  if (!qword_27FD6F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6F8);
  }

  return result;
}

unint64_t sub_25F46EB68()
{
  result = qword_27FD6F700;
  if (!qword_27FD6F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F700);
  }

  return result;
}

uint64_t sub_25F46EBBC()
{
  v0 = sub_25F4A3170();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F46EC08()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F46EC54()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F46ECA0()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F46ED88(char a1, char a2)
{
  if (*&aUuid_2[8 * a1] == *&aUuid_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25F46EDF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007865;
  v3 = 0x646E496567616D69;
  v4 = a1;
  v5 = 0x6F4C6C6F626D7973;
  v6 = 0xEE006E6F69746163;
  v7 = 0x6946656372756F73;
  v8 = 0xEA0000000000656CLL;
  if (a1 != 4)
  {
    v7 = 0x694C656372756F73;
    v8 = 0xEA0000000000656ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x66664F6567616D69;
  v10 = 0xEB00000000746573;
  if (a1 != 1)
  {
    v9 = 0x6C6F626D7973;
    v10 = 0xE600000000000000;
  }

  if (!a1)
  {
    v9 = 0x646E496567616D69;
    v10 = 0xEA00000000007865;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE006E6F69746163;
      if (v11 != 0x6F4C6C6F626D7973)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA0000000000656CLL;
      if (v11 != 0x6946656372756F73)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEA0000000000656ELL;
      if (v11 != 0x694C656372756F73)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000746573;
        if (v11 != 0x66664F6567616D69)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x6C6F626D7973;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_25F4A3270();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_25F46EFF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6469507962;
  if (a1 != 6)
  {
    v5 = 0x736E6F73616572;
    v4 = 0xE700000000000000;
  }

  v6 = 0x6F74616369646E69;
  v7 = 0xE900000000000072;
  if (a1 != 4)
  {
    v6 = 0x636F72507962;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x63617073656D616ELL;
  v9 = 0xE900000000000065;
  if (a1 != 2)
  {
    v8 = 0x736C6961746564;
    v9 = 0xE700000000000000;
  }

  v10 = 1701080931;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v10 = 0x7367616C66;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v13 = 0xE900000000000072;
        if (v11 != 0x6F74616369646E69)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x636F72507962)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 6)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6469507962)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 0xE700000000000000;
    v14 = 0x6E6F73616572;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1701080931)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7367616C66)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 2)
    {
      v13 = 0xE900000000000065;
      if (v11 != 0x63617073656D616ELL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 0xE700000000000000;
    v14 = 0x6C6961746564;
  }

  if (v11 != (v14 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
  {
LABEL_45:
    v15 = sub_25F4A3270();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_25F46F258(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000687461506BLL;
  v3 = 0xD000000000000010;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000015;
    if (v4 == 2)
    {
      v5 = 0xD000000000000012;
      v6 = 0x800000025F4B6DF0;
    }

    else
    {
      v6 = 0x800000025F4B6E10;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x726F77656D617266;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4)
    {
      v6 = 0xED0000687461506BLL;
    }

    else
    {
      v6 = 0x800000025F4B6DD0;
    }
  }

  v7 = 0xD000000000000012;
  v8 = 0x800000025F4B6E10;
  if (a2 == 2)
  {
    v8 = 0x800000025F4B6DF0;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (a2)
  {
    v3 = 0x726F77656D617266;
  }

  else
  {
    v2 = 0x800000025F4B6DD0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F46F38C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x73746E6169726176;
    }

    else
    {
      v5 = 0x800000025F4B6CF0;
      v4 = 0xD00000000000001ALL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0x800000025F4B6CD0;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0x73746E6169726176;
  v7 = 0x800000025F4B6CF0;
  if (a2 == 2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  v8 = 0x800000025F4B6CD0;
  if (a2)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F46F4D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x754E776F646E6977;
    }

    else
    {
      v5 = 0x6B6F547469647561;
    }

    if (v2)
    {
      v6 = 0xEC0000007265626DLL;
    }

    else
    {
      v6 = 0xEA00000000006E65;
    }
  }

  else
  {
    v3 = 0x636146656C616373;
    v4 = 0xEB00000000726F74;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
      v4 = 0x800000025F4B6260;
    }

    if (a1 == 2)
    {
      v5 = 1702521203;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x754E776F646E6977;
    }

    else
    {
      v11 = 0x6B6F547469647561;
    }

    if (a2)
    {
      v10 = 0xEC0000007265626DLL;
    }

    else
    {
      v10 = 0xEA00000000006E65;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x636146656C616373;
    v8 = 0x800000025F4B6260;
    if (a2 == 3)
    {
      v8 = 0xEB00000000726F74;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v9 = 1702521203;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_25F4A3270();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F46F670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000017;
  v5 = 0x800000025F4B5AD0;
  if (a1 != 5)
  {
    v4 = 0x7269757165527369;
    v5 = 0xEA00000000006465;
  }

  v6 = 0x53676E6964616F6CLL;
  v7 = 0xEA0000000000656DLL;
  if (a1 == 3)
  {
    v7 = 0xEF79676574617274;
  }

  else
  {
    v6 = 0x614E656C75646F6DLL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6261747563657865;
  v9 = 0xEE0068746150656CLL;
  if (a1 != 1)
  {
    v8 = 0x6E6F697461636F6CLL;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1752457584;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE0068746150656CLL;
        if (v10 != 0x6261747563657865)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1752457584)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x800000025F4B5AD0;
      if (v10 != 0xD000000000000017)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x7269757165527369)
      {
LABEL_40:
        v13 = sub_25F4A3270();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEF79676574617274;
    if (v10 != 0x53676E6964616F6CLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEA0000000000656DLL;
    if (v10 != 0x614E656C75646F6DLL)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_25F46F8DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xED00007466654C65;
  if (a1 != 2)
  {
    v4 = 0xEE00746867695265;
  }

  v5 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x800000025F4B6AF0;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x70616373646E616CLL;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xED00007466654C65;
    }

    else
    {
      v9 = 0xEE00746867695265;
    }

    if (v6 != 0x70616373646E616CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x7469617274726F70;
    }

    if (a2)
    {
      v9 = 0x800000025F4B6AF0;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_25F4A3270();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

uint64_t sub_25F46FA54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6946656372756F73;
    }

    else
    {
      v5 = 0x616C706552726F66;
    }

    if (v4 == 2)
    {
      v6 = 0xEF7368746150656CLL;
    }

    else
    {
      v6 = 0xEE00746E656D6563;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1752457584;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0x6946656372756F73;
  v8 = 0xEF7368746150656CLL;
  if (a2 != 2)
  {
    v7 = 0x616C706552726F66;
    v8 = 0xEE00746E656D6563;
  }

  if (a2)
  {
    v3 = 1752457584;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F46FBB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656C67676F74;
    }

    else
    {
      v4 = 0x656E696C656D6974;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1684632167;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656C6261736964;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656C67676F74;
    }

    else
    {
      v9 = 0x656E696C656D6974;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6D6F74737563;
    if (a2 != 3)
    {
      v6 = 0x64656C6261736964;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1684632167;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_25F4A3270();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_25F46FD24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x5379616C70736964;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x5379616C70736964;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3)
    {
      v5 = 0xEB00000000657A69;
    }

    else
    {
      v5 = 0x800000025F4B65F0;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xEC000000656C6163;
    v4 = 0x5379616C70736964;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v3 == 3)
    {
      v5 = 0x800000025F4B6620;
    }

    else
    {
      v5 = 0x800000025F4B6640;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xEB00000000657A69;
    }

    else
    {
      v2 = 0xD000000000000010;
      v7 = 0x800000025F4B65F0;
    }

    if (v4 != v2)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0xEC000000656C6163;
    if (v4 != 0x5379616C70736964)
    {
LABEL_34:
      v8 = sub_25F4A3270();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2 == 3)
    {
      v7 = 0x800000025F4B6620;
    }

    else
    {
      v7 = 0x800000025F4B6640;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v7)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_25F46FEA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E616ELL;
  v3 = 0x696D697263736964;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x72656469766F7270;
    }

    else
    {
      v5 = 0x696D697263736964;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC000000746E616ELL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x506E497865646E69;
    v6 = 0xEF72656469766F72;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4449656C62617473;
    }

    else
    {
      v5 = 0x6E6F697461636F6CLL;
    }

    v6 = 0xE800000000000000;
  }

  v7 = 0x506E497865646E69;
  v8 = 0xEF72656469766F72;
  v9 = 0x4449656C62617473;
  if (a2 != 3)
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x72656469766F7270;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25F4A3270();
  }

  return v12 & 1;
}

uint64_t sub_25F470048(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 2)
    {
      v4 = 0x800000025F4B6C90;
    }

    else
    {
      v4 = 0x800000025F4B6CB0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0x800000025F4B6C70;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    if (a2 == 2)
    {
      v6 = 0x800000025F4B6C90;
    }

    else
    {
      v6 = 0x800000025F4B6CB0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 25705;
    }

    if (a2)
    {
      v6 = 0x800000025F4B6C70;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_25F4A3270();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_25F47016C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x4C525579706F63;
  v6 = 0xD000000000000016;
  v7 = 0x800000025F4B6800;
  if (a1 != 4)
  {
    v6 = 0x7070417465736572;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x416C6C6174736E69;
  v9 = 0xEA00000000007070;
  if (a1 != 1)
  {
    v8 = 0x6C6174736E696E75;
    v9 = 0xED0000737070416CLL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6D726177657270;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x4C525579706F63)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x800000025F4B6800;
      if (v10 != 0xD000000000000016)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7070417465736572)
      {
LABEL_34:
        v13 = sub_25F4A3270();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007070;
      if (v10 != 0x416C6C6174736E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED0000737070416CLL;
      if (v10 != 0x6C6174736E696E75)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6D726177657270)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_25F470370(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7250636974617473;
    }

    else
    {
      v3 = 0x73746375646F7270;
    }

    if (v2)
    {
      v4 = 0xEE0073746375646FLL;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000025F4B5E20;
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x73657461647075;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0x800000025F4B5E50;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7250636974617473;
    }

    else
    {
      v9 = 0x73746375646F7270;
    }

    if (a2)
    {
      v8 = 0xEE0073746375646FLL;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x73657461647075;
    v6 = 0x800000025F4B5E50;
    if (a2 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001ALL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000025F4B5E20;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_25F4A3270();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_25F470524(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xED00007365746174;
  v4 = 0x50746E65746E6F63;
  if (a1 == 2)
  {
    v4 = 0x536C6F72746E6F63;
  }

  else
  {
    v3 = 0xEE0064616F6C7961;
  }

  v5 = 0xD000000000000013;
  v6 = 0x800000025F4B6A50;
  if (!a1)
  {
    v5 = 0x7954656D6F726863;
    v6 = 0xEA00000000006570;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x536C6F72746E6F63;
    }

    else
    {
      v11 = 0x50746E65746E6F63;
    }

    if (a2 == 2)
    {
      v10 = 0xED00007365746174;
    }

    else
    {
      v10 = 0xEE0064616F6C7961;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x7954656D6F726863;
    }

    if (a2)
    {
      v10 = 0x800000025F4B6A50;
    }

    else
    {
      v10 = 0xEA00000000006570;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_25F4A3270();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_25F47069C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7065526873617263;
    }

    else
    {
      v5 = 0x696D697263736964;
    }

    if (v2)
    {
      v6 = 0xEB0000000074726FLL;
    }

    else
    {
      v6 = 0xEC000000746E616ELL;
    }
  }

  else
  {
    v3 = 0x686542746E656761;
    v4 = 0xED0000726F697661;
    if (a1 != 3)
    {
      v3 = 0xD000000000000011;
      v4 = 0x800000025F4B6EE0;
    }

    if (a1 == 2)
    {
      v5 = 6580592;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x7065526873617263;
    }

    else
    {
      v11 = 0x696D697263736964;
    }

    if (a2)
    {
      v10 = 0xEB0000000074726FLL;
    }

    else
    {
      v10 = 0xEC000000746E616ELL;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x686542746E656761;
    v8 = 0x800000025F4B6EE0;
    if (a2 == 3)
    {
      v8 = 0xED0000726F697661;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v9 = 6580592;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_25F4A3270();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F470844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 25705;
  if (a1 == 5)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v4 = 0x66457265646E6572;
    v5 = 0xED00007374636566;
  }

  v6 = 0xD000000000000011;
  v7 = 0x800000025F4B5E50;
  if (a1 != 3)
  {
    v6 = 0x72656469766F7270;
    v7 = 0xEC000000656D614ELL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7250636974617473;
  v9 = 0xEE0073746375646FLL;
  if (a1 != 1)
  {
    v8 = 0x73657461647075;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73746375646F7270;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE0073746375646FLL;
        if (v10 != 0x7250636974617473)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x73657461647075)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x73746375646F7270)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE200000000000000;
      if (v10 != 25705)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xED00007374636566;
      if (v10 != 0x66457265646E6572)
      {
LABEL_40:
        v13 = sub_25F4A3270();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000025F4B5E50;
    if (v10 != 0xD000000000000011)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEC000000656D614ELL;
    if (v10 != 0x72656469766F7270)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_25F470A98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000079746974;
  v3 = 0x6E65644974736F68;
  v4 = a1;
  v5 = 0xED00007365746174;
  v6 = 0x50746E65746E6F63;
  v7 = 0xEE0064616F6C7961;
  if (a1 != 4)
  {
    v6 = 0x44496E6565726373;
    v7 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x536C6F72746E6F63;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x79614C656E656373;
  v9 = 0xEB0000000074756FLL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000013;
    v9 = 0x800000025F4B6A50;
  }

  if (!a1)
  {
    v8 = 0x6E65644974736F68;
    v9 = 0xEC00000079746974;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xED00007365746174;
      if (v10 != 0x536C6F72746E6F63)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE0064616F6C7961;
      if (v10 != 0x50746E65746E6F63)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x44496E6565726373)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB0000000074756FLL;
        if (v10 != 0x79614C656E656373)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000013;
      v2 = 0x800000025F4B6A50;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_25F4A3270();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_25F470CB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x746867696568;
    if (a1 != 2)
    {
      v13 = 0x7265507365747962;
      v12 = 0xEB00000000776F52;
    }

    v14 = 0x6874646977;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 1635017060;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000025F4B6040;
    v5 = 0x5072655073746962;
    v6 = 0xEC0000006C657869;
    if (a1 != 7)
    {
      v5 = 0x617053726F6C6F63;
      v6 = 0xEA00000000006563;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6564724F65747962;
    v8 = 0xE900000000000072;
    if (a1 != 4)
    {
      v7 = 0x6E4970616D746962;
      v8 = 0xEA00000000006F66;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x746867696568)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEB00000000776F52;
        if (v9 != 0x7265507365747962)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6874646977)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1635017060)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE900000000000072;
      if (v9 != 0x6564724F65747962)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEA00000000006F66;
      if (v9 != 0x6E4970616D746962)
      {
LABEL_52:
        v16 = sub_25F4A3270();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x800000025F4B6040;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEC0000006C657869;
    if (v9 != 0x5072655073746962)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEA00000000006563;
    if (v9 != 0x617053726F6C6F63)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_25F470F98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49747865746E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6874646977;
    }

    else
    {
      v5 = 0x746867696568;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x636146656C616373;
    }

    else
    {
      v5 = 0x49747865746E6F63;
    }

    if (v4)
    {
      v6 = 0xEB00000000726F74;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6874646977;
  if (a2 != 2)
  {
    v8 = 0x746867696568;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x636146656C616373;
    v2 = 0xEB00000000726F74;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4710DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x636146656C616373;
    }

    else
    {
      v5 = 0x4965636166727573;
    }

    if (v2)
    {
      v6 = 0xEB00000000726F74;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x746867696568;
    if (a1 != 3)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000025F4B69B0;
    }

    if (a1 == 2)
    {
      v5 = 0x6874646977;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x636146656C616373;
    }

    else
    {
      v11 = 0x4965636166727573;
    }

    if (a2)
    {
      v10 = 0xEB00000000726F74;
    }

    else
    {
      v10 = 0xE900000000000044;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x746867696568;
    v8 = 0x800000025F4B69B0;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v9 = 0x6874646977;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_25F4A3270();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F471268(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C646E7562;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xED00007475706E49;
    v4 = 0xED00007475707475;
    if (a1 == 2)
    {
      v6 = 0x6E6F6974636E7566;
    }

    else
    {
      v6 = 0x4F736D6165727473;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xEC000000656D614ELL;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6E6F6974636E7566;
    }

    else
    {
      v6 = 0x656C646E7562;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6E6F6974636E7566;
  v10 = 0xED00007475706E49;
  if (a2 != 2)
  {
    v9 = 0x4F736D6165727473;
    v10 = 0xED00007475707475;
  }

  if (a2)
  {
    v2 = 0x6E6F6974636E7566;
    v8 = 0xEC000000656D614ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25F4A3270();
  }

  return v13 & 1;
}

uint64_t sub_25F4713CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x800000025F4B6940;
    v12 = 0xD000000000000014;
    v13 = 0x800000025F4B6960;
    v14 = 0xD00000000000001BLL;
    if (a1 == 8)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0x800000025F4B6980;
    }

    if (a1 != 7)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0x800000025F4B6920;
    v16 = 0xD000000000000012;
    if (a1 != 5)
    {
      v16 = 0x736F48726579616CLL;
      v15 = 0xE900000000000074;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x800000025F4B6900;
    v5 = 0x79616C70736964;
    if (a1 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xE700000000000000;
    }

    if (a1 == 2)
    {
      v6 = 0x7265646E6572;
    }

    else
    {
      v6 = v5;
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    v7 = 0x800000025F4B68B0;
    v8 = 0xD00000000000001BLL;
    if (a1)
    {
      v7 = 0x800000025F4B68D0;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v2 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x7265646E6572)
        {
          goto LABEL_62;
        }
      }

      else if (a2 == 3)
      {
        v17 = 0x800000025F4B6900;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x79616C70736964)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (!a2)
    {
      v18 = "previewInstances";
LABEL_44:
      v17 = (v18 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v19 = "incrementalPreviewInstances";
    goto LABEL_57;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v17 = 0x800000025F4B6940;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 8)
    {
      v18 = "captureIOSurface";
      goto LABEL_44;
    }

    v19 = "incrementalCaptureIOSurface";
LABEL_57:
    v17 = (v19 - 32) | 0x8000000000000000;
    if (v9 != 0xD00000000000001BLL)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 5)
  {
    v17 = 0x800000025F4B6920;
    if (v9 != 0xD000000000000012)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v17 = 0xE900000000000074;
    if (v9 != 0x736F48726579616CLL)
    {
LABEL_62:
      v20 = sub_25F4A3270();
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v10 != v17)
  {
    goto LABEL_62;
  }

  v20 = 1;
LABEL_63:

  return v20 & 1;
}

uint64_t sub_25F4716AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E69616D6FLL;
  v3 = 0x44746E65746E6F63;
  v4 = a1;
  v5 = 0xEE0070756F724777;
  v6 = 0x4E79616C70736964;
  if (a1 == 5)
  {
    v6 = 0x6569766572507369;
  }

  else
  {
    v5 = 0xEB00000000656D61;
  }

  v7 = 0x800000025F4B6BD0;
  v8 = 0xD000000000000013;
  if (a1 != 3)
  {
    v8 = 0x6574736575716572;
    v7 = 0xEF73746961725464;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x43746E65746E6F63;
  v10 = 0xEF79726F67657461;
  if (a1 != 1)
  {
    v9 = 0xD000000000000010;
    v10 = 0x800000025F4B6BB0;
  }

  if (!a1)
  {
    v9 = 0x44746E65746E6F63;
    v10 = 0xED00006E69616D6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEF79726F67657461;
        if (v11 != 0x43746E65746E6F63)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x800000025F4B6BB0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE0070756F724777;
        if (v11 != 0x6569766572507369)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEB00000000656D61;
        if (v11 != 0x4E79616C70736964)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x800000025F4B6BD0;
      if (v11 != 0xD000000000000013)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0x6574736575716572;
    v2 = 0xEF73746961725464;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_25F4A3270();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_25F47192C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E616ELL;
  v3 = 0xD000000000000012;
  v4 = 0x696D697263736964;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x696D697263736964;
    }

    if (v5)
    {
      v7 = 0x800000025F4B6E40;
    }

    else
    {
      v7 = 0xEC000000746E616ELL;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x800000025F4B5DA0;
    v6 = 0xD000000000000011;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0x6164705574736F68;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5 == 3)
    {
      v7 = 0xEE00646565536574;
    }

    else
    {
      v7 = 0x800000025F4B6DF0;
    }
  }

  if (a2 <= 1u)
  {
    v8 = 0x800000025F4B6E40;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x800000025F4B5DA0;
    v4 = 0xD000000000000011;
    v8 = 0x800000025F4B6DF0;
    if (a2 == 3)
    {
      v3 = 0x6164705574736F68;
      v8 = 0xEE00646565536574;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25F4A3270();
  }

  return v12 & 1;
}

uint64_t sub_25F471AB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4E79616C70736964;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEB00000000656D61;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x66457265646E6572;
    v4 = 0xED00007374636566;
  }

  else if (a1 == 3)
  {
    v3 = 0xD00000000000001CLL;
    v4 = 0x800000025F4B6DA0;
  }

  else
  {
    v3 = 0x66457265646E6572;
    v4 = 0xEC00000074636566;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4E79616C70736964;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEB00000000656D61;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00007374636566;
    if (v3 != 0x66457265646E6572)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000025F4B6DA0;
    if (v3 != 0xD00000000000001CLL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC00000074636566;
    if (v3 != 0x66457265646E6572)
    {
LABEL_31:
      v7 = sub_25F4A3270();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_25F471C88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x546567617373656DLL;
  v4 = a1;
  v5 = 0xD000000000000012;
  v6 = 0x800000025F4B6670;
  v7 = 0x800000025F4B6690;
  v8 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v8 = 0x656449656E656373;
    v7 = 0xEF7265696669746ELL;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x506567617373656DLL;
  v10 = 0xEE0064616F6C7961;
  if (a1 != 1)
  {
    v9 = 6580592;
    v10 = 0xE300000000000000;
  }

  if (!a1)
  {
    v9 = 0x546567617373656DLL;
    v10 = 0xEB00000000657079;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x800000025F4B6670;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000025F4B6690;
      if (v11 != 0xD00000000000001BLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF7265696669746ELL;
      if (v11 != 0x656449656E656373)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE0064616F6C7961;
        if (v11 != 0x506567617373656DLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE300000000000000;
      v3 = 6580592;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_25F4A3270();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_25F471E88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7265696669746ELL;
  v3 = 0x656449746E656761;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656D616E656C6966;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0x800000025F4B6820;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x736544746E656761;
    }

    else
    {
      v5 = 0x656449746E656761;
    }

    if (v4)
    {
      v6 = 0xEF726F7470697263;
    }

    else
    {
      v6 = 0xEF7265696669746ELL;
    }
  }

  v7 = 0x656D616E656C6966;
  v8 = 0x800000025F4B6820;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0x736544746E656761;
    v2 = 0xEF726F7470697263;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F471FEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726F74;
  v3 = 0x636146656C616373;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x636146656C616373;
    }

    if (v4 == 2)
    {
      v5 = 0x800000025F4B6AA0;
    }

    else
    {
      v5 = 0xEB00000000726F74;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x800000025F4B69B0;
    }

    else
    {
      v5 = 0x800000025F4B6A80;
    }

    v6 = 0xD000000000000011;
  }

  if (a2 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000025F4B6AA0;
  }

  v7 = 0x800000025F4B69B0;
  if (!a2)
  {
    v7 = 0x800000025F4B6A80;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = v3;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (v6 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25F4A3270();
  }

  return v10 & 1;
}

uint64_t sub_25F472114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E616ELL;
  v3 = 0x696D697263736964;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7972747369676572;
    }

    else
    {
      v5 = 0x4E79616C70736964;
    }

    if (v4 == 2)
    {
      v6 = 0xEC00000065707954;
    }

    else
    {
      v6 = 0xEB00000000656D61;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x4D77656976657270;
    }

    else
    {
      v5 = 0x696D697263736964;
    }

    if (v4)
    {
      v6 = 0xEF61746164617465;
    }

    else
    {
      v6 = 0xEC000000746E616ELL;
    }
  }

  v7 = 0x7972747369676572;
  v8 = 0xEC00000065707954;
  if (a2 != 2)
  {
    v7 = 0x4E79616C70736964;
    v8 = 0xEB00000000656D61;
  }

  if (a2)
  {
    v3 = 0x4D77656976657270;
    v2 = 0xEF61746164617465;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F472294(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1852399981;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64657463656A6E69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F74616C756D6973;
    }

    else
    {
      v4 = 1852399981;
    }

    if (v3)
    {
      v5 = 0xE900000000000072;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x64657463656A6E69;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6F74616C756D6973;
    v6 = 0xE900000000000072;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4723D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6E6563536E69616DLL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C707369446D6973;
    }

    else
    {
      v5 = 0x6E6563536E69616DLL;
    }

    if (v4)
    {
      v6 = 0xEF656E6563537961;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x64657463656A6E69;
    v6 = 0xED0000656E656353;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6C616E7265747865;
    }

    else
    {
      v5 = 0x656976657250736ELL;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000077;
    }
  }

  v7 = 0x64657463656A6E69;
  v8 = 0xED0000656E656353;
  v9 = 0xE800000000000000;
  v10 = 0x6C616E7265747865;
  if (a2 != 3)
  {
    v10 = 0x656976657250736ELL;
    v9 = 0xE900000000000077;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6C707369446D6973;
    v2 = 0xEF656E6563537961;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25F4A3270();
  }

  return v13 & 1;
}

uint64_t sub_25F47258C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 2)
    {
      v4 = 0x800000025F4B60C0;
    }

    else
    {
      v4 = 0x800000025F4B60E0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x7972747369676572;
    }

    else
    {
      v3 = 0x6946656372756F73;
    }

    if (v2)
    {
      v4 = 0xEC00000065707954;
    }

    else
    {
      v4 = 0xEE0068746150656CLL;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v6 = 0x800000025F4B60C0;
    }

    else
    {
      v6 = 0x800000025F4B60E0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x7972747369676572;
    }

    else
    {
      v5 = 0x6946656372756F73;
    }

    if (a2)
    {
      v6 = 0xEC00000065707954;
    }

    else
    {
      v6 = 0xEE0068746150656CLL;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_25F4A3270();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_25F4726F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656369766564;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x6C616D696E696DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x506465646E756F72;
    }

    else
    {
      v5 = 0x426465646E756F72;
    }

    if (v4 == 3)
    {
      v6 = 0xEE0072657474616CLL;
    }

    else
    {
      v6 = 0xED0000726564726FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C616D696E696DLL;
  v9 = 0x506465646E756F72;
  v10 = 0xEE0072657474616CLL;
  if (a2 != 3)
  {
    v9 = 0x426465646E756F72;
    v10 = 0xED0000726564726FLL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x656369766564;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25F4A3270();
  }

  return v13 & 1;
}

uint64_t sub_25F4728A8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4729C8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472AF0()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472C0C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472D40()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472E64()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472FCC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4730FC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F473238()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F473350()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F473490()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4735CC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t AgentMessageType.incrementalVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (v9 > 4)
  {
    if (*v1 <= 6u)
    {
      if (v9 != 5)
      {
        LOBYTE(v9) = 7;
        goto LABEL_17;
      }
    }

    else if (v9 != 7 && v9 == 8)
    {
      LOBYTE(v9) = 9;
      goto LABEL_17;
    }

LABEL_16:
    MEMORY[0x28223BE20](result);
    *(&v11 - 16) = v9;
    sub_25F4A2A80();
    sub_25F4A2720();
    result = (*(v4 + 8))(v8, v3);
    goto LABEL_17;
  }

  if (*v1 <= 1u)
  {
    if (!*v1)
    {
      LOBYTE(v9) = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v9 == 2)
  {
    LOBYTE(v9) = 3;
    goto LABEL_17;
  }

  if (v9 == 3)
  {
    goto LABEL_16;
  }

  LOBYTE(v9) = 5;
LABEL_17:
  *a1 = v9;
  return result;
}

uint64_t sub_25F4738A0()
{
  sub_25F4A30F0();
  sub_25F4A3140();
  MEMORY[0x25F8DD480](0xD000000000000035, 0x800000025F4B8850);
  return 0;
}

PreviewsMessagingOS::AgentMessageType_optional __swiftcall AgentMessageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AgentMessageType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD00000000000001BLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    if (v1 != 5)
    {
      v8 = 0x736F48726579616CLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7265646E6572;
    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0x79616C70736964;
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (*v0)
    {
      v4 = 0xD00000000000001BLL;
    }

    if (*v0 <= 1u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25F473B14()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F42B81C();
  return sub_25F4A3350();
}

uint64_t sub_25F473B64()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F42B81C();
  return sub_25F4A3350();
}

uint64_t sub_25F473BB4@<X0>(uint64_t *a1@<X8>)
{
  result = AgentMessageType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F473BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B3DC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t LegacyAgentPayload.loggingOutputPath.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t LegacyAgentPayload.providerName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t LegacyAgentPayload.previewID.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t LegacyAgentPayload.init(dynamicProducts:staticProducts:updates:loggingOutputPath:providerName:previewID:renderEffects:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_25F473D6C()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F473E9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48ADF4();
  *a2 = result;
  return result;
}

void sub_25F473ECC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73746375646F7270;
  v5 = 0xE200000000000000;
  v6 = 25705;
  if (v2 != 5)
  {
    v6 = 0x66457265646E6572;
    v5 = 0xED00007374636566;
  }

  v7 = 0x800000025F4B5E50;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x72656469766F7270;
    v7 = 0xEC000000656D614ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0073746375646FLL;
  v10 = 0x7250636974617473;
  if (v2 != 1)
  {
    v10 = 0x73657461647075;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_25F473FC4()
{
  v1 = *v0;
  v2 = 0x73746375646F7270;
  v3 = 25705;
  if (v1 != 5)
  {
    v3 = 0x66457265646E6572;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x72656469766F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7250636974617473;
  if (v1 != 1)
  {
    v5 = 0x73657461647075;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t LegacyAgentPayload.propertyListValue.getter()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F474110(uint64_t *a1)
{
  v7 = *(a1 + 3);
  v3 = a1[7];
  v4 = *(a1 + 64);
  v10 = *a1;
  v9 = a1[1];
  v8 = a1[2];
  v5 = a1[5];
  v6 = a1[6];
  v2 = a1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCA8, &unk_25F4AFB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCC0, &qword_25F4A6640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F474970();
  sub_25F4749C4(&qword_27FD6DCB0, &qword_27FD6DCA8, &unk_25F4AFB20, sub_25F4078FC);
  sub_25F4749C4(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
  sub_25F4749C4(&qword_27FD6DCC8, &qword_27FD6DCC0, &qword_25F4A6640, sub_25F4079CC);
  sub_25F4749C4(&qword_27FD6E6B8, &qword_27FD6E6B0, &qword_25F4A9840, sub_25F43872C);
  return sub_25F4A2880();
}

uint64_t LegacyAgentPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = &type metadata for LegacyAgentPayload.Key;
  v5 = sub_25F474970();
  v22 = v5;
  LOBYTE(v20[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCA8, &unk_25F4AFB20);
  sub_25F4749C4(&qword_27FD6DCB0, &qword_27FD6DCA8, &unk_25F4AFB20, sub_25F4078FC);
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v7 = v23;
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
    sub_25F4749C4(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCC0, &qword_25F4A6640);
    sub_25F4749C4(&qword_27FD6DCC8, &qword_27FD6DCC0, &qword_25F4A6640, sub_25F4079CC);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 3;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 4;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 5;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
    sub_25F4749C4(&qword_27FD6E6B8, &qword_27FD6E6B0, &qword_25F4A9840, sub_25F43872C);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v10 = sub_25F4A25E0();
    result = (*(*(v10 - 8) + 8))(a1, v10);
    *a2 = v7;
    *(a2 + 8) = v19;
    *(a2 + 16) = v18;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v14;
    *(a2 + 48) = v15;
    *(a2 + 56) = v12;
    *(a2 + 64) = v13;
    *(a2 + 72) = v9;
  }

  return result;
}

unint64_t sub_25F474970()
{
  result = qword_27FD6F710;
  if (!qword_27FD6F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F710);
  }

  return result;
}

uint64_t sub_25F4749C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F474A40()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t TimelinePayload.timelineData.getter()
{
  v1 = *v0;
  sub_25F42BDA0(*v0, *(v0 + 8));
  return v1;
}

uint64_t TimelinePayload.init(timelineData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_25F474B58(uint64_t a1@<X8>)
{
  strcpy(a1, "timelineData");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t TimelinePayload.propertyListValue.getter()
{
  v2 = *v0;
  sub_25F474C1C();
  return sub_25F4A25C0();
}

uint64_t sub_25F474C0C(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a2 = v3;
  a2[1] = v4;
  return sub_25F42BDA0(v3, v4);
}

unint64_t sub_25F474C1C()
{
  result = qword_27FD6F718;
  if (!qword_27FD6F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F718);
  }

  return result;
}

double TimelinePayload.init(propertyListValue:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for TimelinePayload.Key;
  v7[4] = sub_25F474C1C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F474D70()
{
  v2 = *v0;
  sub_25F474C1C();
  return sub_25F4A25C0();
}

double sub_25F474DE0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for TimelinePayload.Key;
  v7[4] = sub_25F474C1C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F474EF0()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F474F64()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t GeometryPayload.propertyListValue.getter()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F4750C4();
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  return sub_25F4A25C0();
}

unint64_t sub_25F4750C4()
{
  result = qword_27FD6F728;
  if (!qword_27FD6F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F728);
  }

  return result;
}

unint64_t sub_25F475118()
{
  result = qword_27FD6F738;
  if (!qword_27FD6F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F738);
  }

  return result;
}

uint64_t GeometryPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for GeometryPayload.Key;
  v7[4] = sub_25F4750C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F4752B4()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F4750C4();
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  return sub_25F4A25C0();
}

uint64_t sub_25F475378@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for GeometryPayload.Key;
  v7[4] = sub_25F4750C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

void SceneLayout.interfaceOrientation.getter(_BYTE *a1@<X8>)
{
  if (v1[16])
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t sub_25F4754DC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6D6F74737563;
  }

  else
  {
    v2 = 0x656369766564;
  }

  if (*a2)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x656369766564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F47555C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4755CC()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F475620()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F475698(uint64_t *a1@<X8>)
{
  v2 = 0x656369766564;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_25F4756C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48ACF8();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F47578C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461746E6569726FLL;
  v4 = 0xEB000000006E6F69;
  if (v2 != 1)
  {
    v3 = 1702521203;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0x7461746E6569726FLL;
  v8 = 0xEB000000006E6F69;
  if (*a2 != 1)
  {
    v7 = 1702521203;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F475894()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F475940()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4759D8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F475A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48AE40();
  *a2 = result;
  return result;
}

void sub_25F475AB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7461746E6569726FLL;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F475B18()
{
  v1 = 0x7461746E6569726FLL;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t SceneLayout.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_25F475C74();
  sub_25F475CC8();
  sub_25F4A25C0();
  if (v3)
  {
    v9 = v1;
    v10 = v2;
    v11 = 0;
    v7 = &type metadata for SceneLayout.Key;
    v8 = v4;
    LOBYTE(v6[0]) = 2;
    type metadata accessor for CGSize(0);
  }

  else
  {
    LOBYTE(v9) = v1;
    v7 = &type metadata for SceneLayout.Key;
    v8 = v4;
    LOBYTE(v6[0]) = 1;
    sub_25F43AA08();
  }

  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_25F475C74()
{
  result = qword_27FD6F740;
  if (!qword_27FD6F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F740);
  }

  return result;
}

unint64_t sub_25F475CC8()
{
  result = qword_27FD6F748;
  if (!qword_27FD6F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F748);
  }

  return result;
}

uint64_t SceneLayout.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = &type metadata for SceneLayout.Key;
  v5 = sub_25F475C74();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F475CC8();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for SceneLayout.Key;
    v16 = v5;
    if (v12)
    {
      LOBYTE(v14[0]) = 2;
      type metadata accessor for CGSize(0);
      sub_25F4A2530();
      v8 = sub_25F4A25E0();
      (*(*(v8 - 8) + 8))(a1, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      v9 = v12;
      v10 = v13;
    }

    else
    {
      LOBYTE(v14[0]) = 1;
      sub_25F43AA08();
      sub_25F4A2530();
      v11 = sub_25F4A25E0();
      (*(*(v11 - 8) + 8))(a1, v11);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      v10 = 0;
      v9 = v12;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
  }

  return result;
}

BOOL static SceneLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v3 = *a1;
      v4 = *a2;
      return *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v6 = 0x7469617274726F70;
  v7 = *a1;
  v8 = 0xE800000000000000;
  v9 = 0xED00007466654C65;
  if (v7 != 2)
  {
    v9 = 0xEE00746867695265;
  }

  v10 = 0xD000000000000012;
  v11 = 0x800000025F4B6AF0;
  if (*a1)
  {
    v8 = 0x800000025F4B6AF0;
  }

  else
  {
    v10 = 0x7469617274726F70;
  }

  if (*a1 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x70616373646E616CLL;
  }

  if (v7 <= 1)
  {
    v13 = v8;
  }

  else
  {
    v13 = v9;
  }

  v14 = 0xED00007466654C65;
  if (*a2 != 2)
  {
    v14 = 0xEE00746867695265;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0x70616373646E616CLL;
  }

  if (*a2 <= 1u)
  {
    v16 = v11;
  }

  else
  {
    v16 = v14;
  }

  if (v12 == v15 && v13 == v16)
  {

    return 1;
  }

  else
  {
    v17 = sub_25F4A3270();

    return v17 & 1;
  }
}

uint64_t sub_25F4760C0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_25F46F8DC(LOBYTE(v4), LOBYTE(v5));
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && v4 == v5;
}

uint64_t sub_25F476144()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F476204()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4762B0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47636C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48AE8C();
  *a2 = result;
  return result;
}

void sub_25F47639C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1852399981;
  v4 = 0xE800000000000000;
  v5 = 0x64657463656A6E69;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F74616C756D6973;
    v2 = 0xE900000000000072;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25F476418(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48AD4C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4764DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x44496E6565726373;
  if (v2 != 1)
  {
    v4 = 0x656449656E656373;
    v3 = 0xEF7265696669746ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x44496E6565726373;
  if (*a2 != 1)
  {
    v8 = 0x656449656E656373;
    v7 = 0xEF7265696669746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4765FC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4766B4()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F476758()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47680C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48AED8();
  *a2 = result;
  return result;
}

void sub_25F47683C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xE800000000000000;
  v5 = 0x44496E6565726373;
  if (v2 != 1)
  {
    v5 = 0x656449656E656373;
    v4 = 0xEF7265696669746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4768B0()
{
  v1 = 0x44496E6565726373;
  if (*v0 != 1)
  {
    v1 = 0x656449656E656373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t HostIdentity.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_25F47C6E4();
  sub_25F47C738();
  result = sub_25F4A25C0();
  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v9 = v1;
    v10 = v2;
    v7 = &type metadata for HostIdentity.Key;
    v8 = v4;
    LOBYTE(v6[0]) = 2;
  }

  else
  {
    LODWORD(v9) = v1;
    BYTE4(v9) = 0;
    v7 = &type metadata for HostIdentity.Key;
    v8 = v4;
    LOBYTE(v6[0]) = 1;
  }

  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t HostIdentity.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = &type metadata for HostIdentity.Key;
  v5 = sub_25F47C6E4();
  v19 = v5;
  LOBYTE(v17[0]) = 0;
  sub_25F47C738();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    if (v15 > 1u)
    {
      if (v15 == 2)
      {
        v18 = &type metadata for HostIdentity.Key;
        v19 = v5;
        LOBYTE(v17[0]) = 2;
        sub_25F4A2530();
        v12 = sub_25F4A25E0();
        (*(*(v12 - 8) + 8))(a1, v12);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
        v9 = v15;
        v10 = v16;
        v11 = 1;
      }

      else
      {
        v14 = sub_25F4A25E0();
        result = (*(*(v14 - 8) + 8))(a1, v14);
        v10 = 0;
        v11 = 2;
        v9 = 1;
      }
    }

    else if (v15)
    {
      v18 = &type metadata for HostIdentity.Key;
      v19 = v5;
      LOBYTE(v17[0]) = 1;
      sub_25F4A2530();
      v13 = sub_25F4A25E0();
      (*(*(v13 - 8) + 8))(a1, v13);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      v10 = 0;
      v11 = 0;
      v9 = v15;
    }

    else
    {
      v8 = sub_25F4A25E0();
      result = (*(*(v8 - 8) + 8))(a1, v8);
      v9 = 0;
      v10 = 0;
      v11 = 2;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return result;
}

PreviewsMessagingOS::ChromeType_optional __swiftcall ChromeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChromeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0x6C616D696E696DLL;
  v4 = 0x506465646E756F72;
  if (v1 != 3)
  {
    v4 = 0x426465646E756F72;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F476DD8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F476ED8()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F476FC4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4770CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xE700000000000000;
  v6 = 0x6C616D696E696DLL;
  v7 = 0xEE0072657474616CLL;
  v8 = 0x506465646E756F72;
  if (v2 != 3)
  {
    v8 = 0x426465646E756F72;
    v7 = 0xED0000726564726FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656369766564;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25F477188(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B388();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

PreviewsMessagingOS::GridIndex __swiftcall GridIndex.init(section:item:)(Swift::Int section, Swift::Int item)
{
  *v2 = section;
  v2[1] = item;
  result.item = item;
  result.section = section;
  return result;
}

uint64_t sub_25F4772B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1835365481;
  }

  else
  {
    v4 = 0x6E6F6974636573;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1835365481;
  }

  else
  {
    v6 = 0x6E6F6974636573;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}