uint64_t QueryProtocol.erasedToAnyQuery()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t AnyQuery.inner.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_231BFBCA8(a1, v1);
}

uint64_t AnyQuery.primitiveString.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t AnyQuery.primitiveAttributes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t AnyQuery.isLeaf.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2) & 1;
}

uint64_t AnyQuery.negated()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v14 - v9;
  (*(v4 + 80))(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a1[3] = AssociatedTypeWitness;
  a1[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(v6 + 16))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  return (*(v6 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_231BFCB08()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2) & 1;
}

uint64_t sub_231BFCB60@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v13 - v9;
  (*(v4 + 80))(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  QueryProtocol.erasedToAnyQuery()(AssociatedTypeWitness, AssociatedConformanceWitness, a1);
  return (*(v6 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_231BFCCA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E4F8, &unk_231C22A90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_231C228D0;
  *(v3 + 56) = a1;
  *(v3 + 64) = &protocol witness table for AnyQuery;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  sub_231BF8388(v1, v4 + 16);
  return v3;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_231BFCDAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231BFCDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

SKDQuery __swiftcall SKDQuery.negated()()
{
  result.super.isa = sub_231C17E80();
  __break(1u);
  return result;
}

id sub_231BFD28C@<X0>(void *a1@<X8>)
{
  result = [*v1 negated];
  *a1 = result;
  return result;
}

uint64_t sub_231BFD2C8()
{
  v1 = [*v0 primitiveString];
  v2 = sub_231C17C60();

  return v2;
}

uint64_t sub_231BFD320()
{
  v1 = [*v0 primitiveAttributes];
  v2 = sub_231C17CE0();

  return v2;
}

id sub_231BFD380(void *a1)
{
  v1 = a1;
  sub_231BFD3E8();

  v2 = sub_231C17C50();

  return v2;
}

uint64_t sub_231BFD3E8()
{
  v1 = *(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 56);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60);
  return v1(v2);
}

id sub_231BFD468(void *a1)
{
  v1 = a1;
  sub_231BFD4D0();

  v2 = sub_231C17CD0();

  return v2;
}

uint64_t sub_231BFD4D0()
{
  v1 = *(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 64);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60);
  return v1(v2);
}

uint64_t sub_231BFD550(void *a1)
{
  v1 = a1;
  v2 = sub_231BFD584();

  return v2 & 1;
}

uint64_t sub_231BFD584()
{
  v1 = *(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 72);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60);
  return v1(v2) & 1;
}

Class sub_231BFD608()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v14 - v9;
  v11 = v0 + *((v2 & v1) + 0x60);
  (*(v3 + 80))(v4, v3);
  swift_getAssociatedConformanceWitness();
  isa = QueryProtocol.erasedToSKDQuery()().super.isa;
  (*(v6 + 8))(v10, AssociatedTypeWitness);
  return isa;
}

Class sub_231BFD7EC(void *a1)
{
  v1 = a1;
  v2 = sub_231BFD608();

  return v2;
}

id _s24SpotlightKnowledgeDaemon9SchedulerC20StaticBackgroundTaskCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_231BFD8CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t type metadata accessor for SKDQuery()
{
  result = qword_27DD6E6C8[0];
  if (!qword_27DD6E6C8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27DD6E6C8);
  }

  return result;
}

uint64_t sub_231BFD9E0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_231BFDBAC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_231BF70F8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_231BFDBDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231BFDC30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_231BFDC84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2037149295 && a2 == 0xE400000000000000;
  if (v3 || (sub_231C17F40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70656378456C6C61 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v6 = sub_231C17F40();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231BFDD90(char a1)
{
  sub_231C17FC0();
  MEMORY[0x238376CE0](a1 & 1);
  return sub_231C17FE0();
}

uint64_t sub_231BFDDD8(char a1)
{
  if (a1)
  {
    return 0x70656378456C6C61;
  }

  else
  {
    return 2037149295;
  }
}

uint64_t sub_231BFDE0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_231C17F40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231BFDEAC(uint64_t a1, uint64_t a2)
{
  sub_231C17FC0();
  v4 = *(a2 + 16);
  sub_231BFDD68(v6, *v2);
  return sub_231C17FE0();
}

uint64_t sub_231BFDF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_231BFDC84(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_231BFDF30@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_231BFF9C0();
  *a2 = result;
  return result;
}

uint64_t sub_231BFDF5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231BFDFB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_231BFE004(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231BFE058(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_231BFE0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v43 = a1;
  v5 = *(a3 - 8);
  v44 = a2;
  v45 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v39 = &v38 - v10;
  v11 = type metadata accessor for SetComplementSelection();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v38 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](TupleTypeMetadata2, v24);
  v27 = &v38 - v26;
  v28 = *(v25 + 48);
  v41 = v12;
  v29 = *(v12 + 16);
  v29(&v38 - v26, v43, v11);
  v29(&v27[v28], v44, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29(v20, v27, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = v45;
      v36 = v39;
      (*(v45 + 32))(v39, &v27[v28], a3);
      v32 = sub_231C17C40();
      v33 = *(v35 + 8);
      v33(v36, a3);
      v34 = v20;
      goto LABEL_6;
    }

LABEL_8:
    (*(v45 + 8))(v20, a3);
    v32 = 0;
    v11 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v29(v17, v27, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = v17;
    goto LABEL_8;
  }

  v30 = v45;
  v31 = v40;
  (*(v45 + 32))(v40, &v27[v28], a3);
  v32 = sub_231C17C40();
  v33 = *(v30 + 8);
  v33(v31, a3);
  v34 = v17;
LABEL_6:
  v33(v34, a3);
  v22 = v41;
LABEL_9:
  (*(v22 + 8))(v27, v11);
  return v32 & 1;
}

uint64_t sub_231BFE46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v5 = *(a2 + 16);
  v59 = a2;
  v56 = type metadata accessor for SetComplementSelection.AllExceptCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_231C17F30();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v55 = &v46 - v10;
  v11 = type metadata accessor for SetComplementSelection.OnlyCodingKeys();
  v12 = swift_getWitnessTable();
  v51 = v11;
  v49 = v12;
  v13 = sub_231C17F30();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v50 = &v46 - v17;
  v60 = *(v5 - 8);
  v18 = *(v60 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v48 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v47 = &v46 - v24;
  v25 = *(a2 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23, v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SetComplementSelection.CodingKeys();
  swift_getWitnessTable();
  v61 = sub_231C17F30();
  v63 = *(v61 - 8);
  v30 = *(v63 + 64);
  MEMORY[0x28223BE20](v61, v31);
  v33 = &v46 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v60;
  sub_231C18000();
  (*(v25 + 16))(v29, v62, v59);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = *(v35 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v38 = v48;
    v37(v48, v29, v5);
    v66 = 1;
    v39 = v55;
    v40 = v61;
    sub_231C17F10();
    v41 = v58;
    sub_231C17F20();
    (*(v57 + 8))(v39, v41);
    v42 = v38;
  }

  else
  {
    v42 = v47;
    v37(v47, v29, v5);
    v65 = 0;
    v43 = v50;
    v40 = v61;
    sub_231C17F10();
    v44 = v53;
    sub_231C17F20();
    (*(v52 + 8))(v43, v44);
  }

  (*(v35 + 8))(v42, v5);
  return (*(v63 + 8))(v33, v40);
}

uint64_t sub_231BFE988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v75 = a4;
  v76 = a3;
  v6 = type metadata accessor for SetComplementSelection.AllExceptCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v73 = v6;
  v68 = sub_231C17F00();
  v67 = *(v68 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v68, v8);
  v74 = &v61 - v9;
  v10 = type metadata accessor for SetComplementSelection.OnlyCodingKeys();
  v11 = swift_getWitnessTable();
  v70 = v10;
  v69 = v11;
  v66 = sub_231C17F00();
  v65 = *(v66 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v66, v13);
  v71 = &v61 - v14;
  type metadata accessor for SetComplementSelection.CodingKeys();
  swift_getWitnessTable();
  v15 = sub_231C17F00();
  v79 = *(v15 - 8);
  v80 = v15;
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v61 - v18;
  v78 = a2;
  v20 = type metadata accessor for SetComplementSelection();
  v64 = *(v20 - 8);
  v21 = *(v64 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v61 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v61 - v31;
  v33 = a1;
  v34 = a1[3];
  v35 = v33[4];
  v86 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v77 = v19;
  v36 = v81;
  sub_231C17FF0();
  if (!v36)
  {
    v63 = v25;
    v81 = v29;
    v62 = v32;
    v37 = v77;
    v38 = v80;
    *&v82 = sub_231C17EF0();
    sub_231C17CC0();
    swift_getWitnessTable();
    *&v84 = sub_231C17DD0();
    *(&v84 + 1) = v39;
    *&v85 = v40;
    *(&v85 + 1) = v41;
    sub_231C17DC0();
    swift_getWitnessTable();
    sub_231C17D00();
    v42 = v82;
    if (v82 == 2 || (v61 = v84, v82 = v84, v83 = v85, (sub_231C17D10() & 1) == 0))
    {
      v47 = sub_231C17E60();
      swift_allocError();
      v48 = v37;
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD6E750, &qword_231C23200) + 48);
      *v50 = v20;
      sub_231C17ED0();
      sub_231C17E50();
      (*(*(v47 - 8) + 104))(v50, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      (*(v79 + 8))(v48, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v82) = 1;
        v43 = v74;
        sub_231C17EC0();
        v44 = v79;
        v45 = v63;
        v46 = v68;
        sub_231C17EE0();
        (*(v67 + 8))(v43, v46);
        (*(v44 + 8))(v37, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v58 = v75;
      }

      else
      {
        LOBYTE(v82) = 0;
        v52 = v71;
        sub_231C17EC0();
        v53 = v37;
        v58 = v75;
        v54 = v79;
        v55 = v53;
        v45 = v81;
        v56 = v66;
        sub_231C17EE0();
        (*(v65 + 8))(v52, v56);
        (*(v54 + 8))(v55, v80);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
      }

      v59 = *(v64 + 32);
      v60 = v62;
      v59(v62, v45, v20);
      v59(v58, v60, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v86);
}

uint64_t sub_231BFF13C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v6, v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  v15 = swift_getEnumCaseMultiPayload() == 1;
  (*(v4 + 32))(v8, v12, v3);
  MEMORY[0x238376CE0](v15);
  sub_231C17C20();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_231BFF2E4(uint64_t a1)
{
  sub_231C17FC0();
  sub_231BFF13C(v3, a1);
  return sub_231C17FE0();
}

uint64_t sub_231BFF394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_231C17FC0();
  sub_231BFF13C(v6, a2);
  return sub_231C17FE0();
}

uint64_t sub_231BFF454(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_231BFF4E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_231BFF5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231BFF60C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_231BFF718(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_231BFFAA4()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD6E958);
  v1 = __swift_project_value_buffer(v0, qword_27DD6E958);
  if (qword_27DD6E2C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DD704F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_231BFFB6C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_231C17F40();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_231BFFBB0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier);
  v4 = *(a2 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier + 8);
  sub_231BFFC80(v5, v4);
  if (!v2)
  {
    swift_beginAccess();

    v6 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    sub_231C02D20(1, 0, v5, v4, isUniquelyReferenced_nonNull_native);

    *(a1 + 64) = v8;
    swift_endAccess();
  }
}

void sub_231BFFC80(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_231C17BF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v4[3];
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x277D85200], v7);
  v14 = v13;
  v15 = sub_231C17C00();
  (*(v8 + 8))(v12, v7);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_10;
  }

  swift_beginAccess();
  if (*(v4[8] + 16))
  {
    sub_231BF7C64(a1, a2);
    if (v16)
    {
      swift_endAccess();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v17 = sub_231C17BB0();
      __swift_project_value_buffer(v17, qword_27DD6E958);

      v18 = sub_231C17B90();
      v19 = sub_231C17D20();

      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_18;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_231C0ABE0(a1, a2, &aBlock);
      v22 = "Cannot register task %s: Task has already been registered";
LABEL_17:
      _os_log_impl(&dword_231B25000, v18, v19, v22, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x238378B40](v21, -1, -1);
      MEMORY[0x238378B40](v20, -1, -1);
LABEL_18:

      sub_231C02438();
      swift_allocError();
      *v39 = 0;
      v39[1] = 0;
      swift_willThrow();
      return;
    }
  }

  v40 = v3;
  swift_endAccess();
  v23 = v4[2];
  v24 = sub_231C17C50();
  v46 = sub_231C033E0;
  v47 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_231C018D4;
  v45 = &block_descriptor_0;
  v25 = _Block_copy(&aBlock);

  v26 = swift_allocObject();
  v26[2] = v4;
  v26[3] = a1;
  v26[4] = a2;
  v46 = sub_231C033FC;
  v47 = v26;
  v41 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_231C0205C;
  v45 = &block_descriptor_5;
  v27 = _Block_copy(&aBlock);

  v28 = [v23 registerTaskWithIdentifier:v24 usingQueue:v14 onLaunch:v25 onExpiration:v27];
  _Block_release(v27);
  _Block_release(v25);

  if (!v28)
  {
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v36 = sub_231C17BB0();
    __swift_project_value_buffer(v36, qword_27DD6E958);

    v18 = sub_231C17B90();
    v19 = sub_231C17D20();

    v37 = os_log_type_enabled(v18, v19);
    v38 = v41;
    if (!v37)
    {
      goto LABEL_18;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_231C0ABE0(v38, a2, &aBlock);
    v22 = "Cannot register task %s: DAS claims task has already been registered";
    goto LABEL_17;
  }

  if (qword_27DD6E2A8 != -1)
  {
    goto LABEL_20;
  }

LABEL_10:
  v29 = sub_231C17BB0();
  __swift_project_value_buffer(v29, qword_27DD6E958);

  v30 = sub_231C17B90();
  v31 = sub_231C17D30();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v41;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_231C0ABE0(v33, a2, &aBlock);
    _os_log_impl(&dword_231B25000, v30, v31, "Task registered: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x238378B40](v35, -1, -1);
    MEMORY[0x238378B40](v34, -1, -1);
  }
}

void sub_231C00268(uint64_t a1, char *a2)
{
  v6 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier];
  v5 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8];
  sub_231BFFC80(v6, v5);
  if (!v2)
  {
    v7 = *(a1 + 16);
    v8 = sub_231C17C50();
    v9 = [v7 taskRequestForIdentifier_];

    if (v9)
    {

      v10 = [v9 isRepeating];
      swift_beginAccess();
      v11 = *(a1 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      sub_231C02D20(v10, 0, v6, v5, isUniquelyReferenced_nonNull_native);

      *(a1 + 64) = v21;
      swift_endAccess();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v13 = sub_231C17BB0();
      __swift_project_value_buffer(v13, qword_27DD6E958);
      v14 = a2;
      v15 = sub_231C17B90();
      v16 = sub_231C17D30();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_231C0ABE0(v6, v5, &v23);
        _os_log_impl(&dword_231B25000, v15, v16, "Found existing submission for task: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x238378B40](v18, -1, -1);
        MEMORY[0x238378B40](v17, -1, -1);
      }
    }

    else
    {
      swift_beginAccess();

      v19 = *(a1 + 64);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      sub_231C02D20(0, 0x8000, v6, v5, v20);

      *(a1 + 64) = v22;
      swift_endAccess();
    }
  }
}

void sub_231C0050C(uint64_t a1, char *a2)
{
  v49[3] = *MEMORY[0x277D85DE8];
  v4 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier];
  v5 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8];
  swift_beginAccess();
  v6 = *(a1 + 64);
  if (*(v6 + 16) && (v7 = sub_231BF7C64(v4, v5), (v8 & 1) != 0) && (v9 = *(v6 + 56) + 16 * v7, v10 = *(v9 + 8), (v10 & 0xC000) == 0x8000) && ((v11 = *v9, v10 == 0x8000) ? (v12 = v11 == 0) : (v12 = 0), v12))
  {
    v21 = swift_endAccess();
    v22 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask__createRequest + 8];
    v23 = (*&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask__createRequest])(v21);
    v24 = *(a1 + 16);
    v49[0] = 0;
    if ([v24 submitTaskRequest:v23 error:v49])
    {
      v25 = v49[0];

      v26 = [v23 isRepeating];
      swift_beginAccess();
      v27 = *(a1 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      sub_231C02D20(v26, 0, v4, v5, isUniquelyReferenced_nonNull_native);

      *(a1 + 64) = v46;
      swift_endAccess();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v29 = sub_231C17BB0();
      __swift_project_value_buffer(v29, qword_27DD6E958);
      v30 = a2;
      v31 = sub_231C17B90();
      v32 = sub_231C17D30();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_231C0ABE0(v4, v5, v49);
        _os_log_impl(&dword_231B25000, v31, v32, "Dynamic task submitted: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x238378B40](v34, -1, -1);
        MEMORY[0x238378B40](v33, -1, -1);
      }
    }

    else
    {
      v35 = v49[0];
      v36 = sub_231C17B40();

      swift_willThrow();
      ErrorValue = swift_getErrorValue();
      v38 = *(*(v48 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue, v47);
      (*(v40 + 16))(&v45 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
      v41 = sub_231C17C70();
      v43 = v42;
      sub_231C02438();
      swift_allocError();
      *v44 = v41;
      v44[1] = v43;
      swift_willThrow();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v13 = sub_231C17BB0();
    __swift_project_value_buffer(v13, qword_27DD6E958);
    v14 = a2;
    v15 = sub_231C17B90();
    v16 = sub_231C17D20();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_231C0ABE0(v4, v5, v49);
      _os_log_impl(&dword_231B25000, v15, v16, "Cannot submit dynamic task %s: Task is not registered", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x238378B40](v18, -1, -1);
      MEMORY[0x238378B40](v17, -1, -1);
    }

    sub_231C02438();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    swift_willThrow();
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_231C00A18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 64);
  if (*(v6 + 16) && (v7 = sub_231BF7C64(a2, a3), (v8 & 1) != 0) && (v9 = *(v6 + 56) + 16 * v7, v10 = *(v9 + 8), (v10 & 0xC000) == 0x4000))
  {
    v11 = *v9;
    swift_endAccess();
    [swift_unknownObjectRetain() setTaskCompleted];
    swift_beginAccess();

    v12 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    if (v10)
    {
      v14 = 1;
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0x8000;
    }

    sub_231C02D20(v14, v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 64) = v29;
    swift_endAccess();
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v23 = sub_231C17BB0();
    __swift_project_value_buffer(v23, qword_27DD6E958);

    v24 = sub_231C17B90();
    v25 = sub_231C17D30();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_231C0ABE0(a2, a3, v28);
      _os_log_impl(&dword_231B25000, v24, v25, "Task completed: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x238378B40](v27, -1, -1);
      MEMORY[0x238378B40](v26, -1, -1);
    }

    return sub_231C0248C(v11, v10);
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v16 = sub_231C17BB0();
    __swift_project_value_buffer(v16, qword_27DD6E958);

    v17 = sub_231C17B90();
    v18 = sub_231C17D20();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_231C0ABE0(a2, a3, v28);
      _os_log_impl(&dword_231B25000, v17, v18, "Cannot complete task %s: Task is not running", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x238378B40](v20, -1, -1);
      MEMORY[0x238378B40](v19, -1, -1);
    }

    sub_231C02438();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_231C00DD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v49[3] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v6 = *(a1 + 64);
  if (*(v6 + 16) && (v7 = sub_231BF7C64(a2, a3), (v8 & 1) != 0) && (v9 = *(v6 + 56) + 16 * v7, v10 = *(v9 + 8), (v10 & 0xC000) == 0x4000))
  {
    v11 = *v9;
    swift_endAccess();
    v49[0] = 0;
    v12 = [swift_unknownObjectRetain() setTaskExpiredWithError_];
    v13 = v49[0];
    if (v12)
    {
      swift_beginAccess();
      v14 = v13;

      v15 = *(a1 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      sub_231C02D20(v10 & 1, 0, a2, a3, isUniquelyReferenced_nonNull_native);

      *(a1 + 64) = v46;
      swift_endAccess();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v17 = sub_231C17BB0();
      __swift_project_value_buffer(v17, qword_27DD6E958);

      v18 = sub_231C17B90();
      v19 = sub_231C17D30();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v49[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_231C0ABE0(a2, a3, v49);
        _os_log_impl(&dword_231B25000, v18, v19, "Task deferred: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x238378B40](v21, -1, -1);
        MEMORY[0x238378B40](v20, -1, -1);
      }
    }

    else
    {
      v30 = v49[0];
      v31 = sub_231C17B40();

      swift_willThrow();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v32 = sub_231C17BB0();
      __swift_project_value_buffer(v32, qword_27DD6E958);

      v33 = sub_231C17B90();
      v34 = sub_231C17D20();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v49[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_231C0ABE0(a2, a3, v49);
        _os_log_impl(&dword_231B25000, v33, v34, "Failed to defer task %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x238378B40](v36, -1, -1);
        MEMORY[0x238378B40](v35, -1, -1);
      }

      ErrorValue = swift_getErrorValue();
      v38 = *(*(v48 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue, v47);
      (*(v40 + 16))(&v45 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
      v41 = sub_231C17C70();
      v43 = v42;
      sub_231C02438();
      swift_allocError();
      *v44 = v41;
      v44[1] = v43;
      swift_willThrow();
    }

    result = sub_231C0248C(v11, v10);
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v22 = sub_231C17BB0();
    __swift_project_value_buffer(v22, qword_27DD6E958);

    v23 = sub_231C17B90();
    v24 = sub_231C17D20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_231C0ABE0(a2, a3, v49);
      _os_log_impl(&dword_231B25000, v23, v24, "Cannot defer task %s: Task is not running", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x238378B40](v26, -1, -1);
      MEMORY[0x238378B40](v25, -1, -1);
    }

    sub_231C02438();
    swift_allocError();
    *v27 = 0;
    v27[1] = 0;
    result = swift_willThrow();
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231C013B4(void *a1)
{
  v3 = v1;
  v5 = sub_231C17BF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v56[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[3];
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_231C17C00();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  v2 = &selRef_enablePeople;
  v13 = [a1 identifier];
  v14 = sub_231C17C60();
  v16 = v15;

  swift_beginAccess();
  v17 = v3[8];
  if (*(v17 + 16))
  {
    v18 = sub_231BF7C64(v14, v16);
    v20 = v19;

    if (v20)
    {
      v21 = (*(v17 + 56) + 16 * v18);
      if ((v21[4] & 0xC000) == 0)
      {
        v22 = *v21;
        swift_endAccess();
        v23 = [a1 identifier];
        v24 = sub_231C17C60();
        v26 = v25;

        swift_beginAccess();
        swift_unknownObjectRetain();
        v27 = v3[8];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v3[8];
        v3[8] = 0x8000000000000000;
        sub_231C02D20(a1, v22 & 1 | 0x4000, v24, v26, isUniquelyReferenced_nonNull_native);

        v3[8] = v55;
        swift_endAccess();
        if (qword_27DD6E2A8 != -1)
        {
          swift_once();
        }

        v29 = sub_231C17BB0();
        __swift_project_value_buffer(v29, qword_27DD6E958);
        swift_unknownObjectRetain();
        v30 = sub_231C17B90();
        v31 = sub_231C17D30();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v56[0] = v33;
          *v32 = 136315138;
          v34 = [a1 identifier];
          v35 = sub_231C17C60();
          v37 = v36;

          v38 = sub_231C0ABE0(v35, v37, v56);

          *(v32 + 4) = v38;
          _os_log_impl(&dword_231B25000, v30, v31, "Task launched: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x238378B40](v33, -1, -1);
          MEMORY[0x238378B40](v32, -1, -1);
        }

        v40 = v3[4];
        v39 = v3[5];
        v41 = [a1 identifier];
        v42 = sub_231C17C60();
        v44 = v43;

        v40(v42, v44);

        return;
      }
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_27DD6E2A8 != -1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v45 = sub_231C17BB0();
  __swift_project_value_buffer(v45, qword_27DD6E958);
  swift_unknownObjectRetain();
  v46 = sub_231C17B90();
  v47 = sub_231C17D20();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v56[0] = v49;
    *v48 = 136315138;
    v50 = [a1 v2[256]];
    v51 = sub_231C17C60();
    v53 = v52;

    v54 = sub_231C0ABE0(v51, v53, v56);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_231B25000, v46, v47, "Task %s launched even though it wasn't submitted", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x238378B40](v49, -1, -1);
    MEMORY[0x238378B40](v48, -1, -1);
  }
}

uint64_t sub_231C018D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_231C01934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231C17BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_231C17BE0();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(a1 + 24);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  aBlock[4] = sub_231C03448;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231C0205C;
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);

  sub_231C17BD0();
  v22 = MEMORY[0x277D84F90];
  sub_231C03AB4(&qword_27DD6E980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E988, &unk_231C23700);
  sub_231C03AFC(&qword_27DD6E990, &qword_27DD6E988, &unk_231C23700);
  sub_231C17DE0();
  MEMORY[0x238376A70](0, v16, v11, v18);
  _Block_release(v18);
  (*(v7 + 8))(v11, v6);
  (*(v12 + 8))(v16, v21);
}

void sub_231C01C04(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_231C17BF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = (&v34[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 24);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_231C17C00();
  (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_8:
    v23 = sub_231C17BB0();
    __swift_project_value_buffer(v23, qword_27DD6E958);

    v24 = sub_231C17B90();
    v25 = sub_231C17D20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_231C0ABE0(a1, a2, v34);
      _os_log_impl(&dword_231B25000, v24, v25, "Task %s expired even though it wasn't running", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x238378B40](v27, -1, -1);
      MEMORY[0x238378B40](v26, -1, -1);
    }

    goto LABEL_10;
  }

  swift_beginAccess();
  v14 = *(v3 + 64);
  if (!*(v14 + 16) || (v15 = sub_231BF7C64(a1, a2), (v16 & 1) == 0) || (v17 = *(v14 + 56) + 16 * v15, v18 = *(v17 + 8), (v18 & 0xC000) != 0x4000))
  {
    swift_endAccess();
    if (qword_27DD6E2A8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v19 = *v17;
  swift_endAccess();
  if ((v18 & 0x100) == 0)
  {
    swift_beginAccess();
    sub_231C03374(v19, v18);
    sub_231C03374(v19, v18);

    v20 = *(v3 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v3 + 64);
    *(v3 + 64) = 0x8000000000000000;
    sub_231C02D20(v19, v18 & 1 | 0x4100, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 64) = v33;
    swift_endAccess();
    v22 = *(v3 + 56);
    (*(v3 + 48))(a1, a2);
    sub_231C0248C(v19, v18);
    return;
  }

  v28 = qword_27DD6E2A8;
  swift_unknownObjectRetain();
  if (v28 != -1)
  {
    swift_once();
  }

  v29 = sub_231C17BB0();
  __swift_project_value_buffer(v29, qword_27DD6E958);

  v24 = sub_231C17B90();
  v30 = sub_231C17D20();

  if (os_log_type_enabled(v24, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_231C0ABE0(a1, a2, v34);
    _os_log_impl(&dword_231B25000, v24, v30, "Task %s expired even though it was already expired", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x238378B40](v32, -1, -1);
    MEMORY[0x238378B40](v31, -1, -1);
  }

  sub_231C0248C(v19, v18);
LABEL_10:
}

uint64_t sub_231C0205C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_231C020A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t get_enum_tag_for_layout_string_24SpotlightKnowledgeDaemon9SchedulerC24DASBackgroundTaskManagerC0F5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_231C02150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_231C021B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_231C02230(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

unint64_t sub_231C02438()
{
  result = qword_27DD6E970;
  if (!qword_27DD6E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6E970);
  }

  return result;
}

uint64_t sub_231C0248C(uint64_t a1, __int16 a2)
{
  if ((a2 & 0xC000) == 0x4000)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_231C024A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E978, &unk_231C239B0);
  v40 = a2;
  result = sub_231C17EA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = v24[1];
      v41 = *v24;
      v26 = *(v5 + 56) + v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v40 & 1) == 0)
      {

        sub_231C03374(v27, v28);
      }

      v29 = *(v8 + 40);
      sub_231C17FC0();
      sub_231C17C80();
      result = sub_231C17FE0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v41;
      v18[1] = v25;
      v19 = *(v8 + 56) + v17;
      *v19 = v27;
      *(v19 + 8) = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_231C02770(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E998, &unk_231C239D0);
  v39 = a2;
  result = sub_231C17EA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_231C17FC0();
      sub_231C17C80();
      result = sub_231C17FE0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_231C02A14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9A0, &unk_231C23710);
  v40 = a2;
  result = sub_231C17EA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v44 = *v23;
      v25 = *(v5 + 56) + 48 * v22;
      v42 = *v25;
      v43 = *(v25 + 8);
      v26 = *(v25 + 24);
      v27 = *(v25 + 32);
      v28 = *(v25 + 40);
      if ((v40 & 1) == 0)
      {

        sub_231C037D0(v27);
      }

      v29 = *(v8 + 40);
      sub_231C17FC0();
      sub_231C17C80();
      result = sub_231C17FE0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v44;
      v17[1] = v24;
      v18 = *(v8 + 56) + 48 * v16;
      v13 = v41;
      *v18 = v42;
      *(v18 + 8) = v43;
      *(v18 + 24) = v26;
      *(v18 + 32) = v27;
      *(v18 + 40) = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_231C02D20(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_231BF7C64(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_231C024A0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_231BF7C64(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_231C17F70();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_231C031E8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * v13;
    v26 = *v25;
    *v25 = a1;
    v27 = *(v25 + 8);
    *(v25 + 8) = a2;

    return sub_231C0248C(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = v24[7] + 16 * v13;
  *v30 = a1;
  *(v30 + 8) = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

void sub_231C02EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_231BF7C64(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_231C02770(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_231BF7C64(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_231C17F70();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_231C03490();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_231C0302C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_231BF7C64(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_231C02A14(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_231BF7C64(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_231C17F70();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_231C035FC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;
    v24 = *(v23 + 8);
    v25 = *(v23 + 24);
    v26 = *(v23 + 32);
    v27 = *(v23 + 40);
    v28 = a1[1];
    *v23 = *a1;
    *(v23 + 16) = v28;
    *(v23 + 32) = a1[2];

    return sub_231C037C0(v26);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v30 = (v22[6] + 16 * v11);
  *v30 = a2;
  v30[1] = a3;
  v31 = (v22[7] + 48 * v11);
  v32 = a1[1];
  *v31 = *a1;
  v31[1] = v32;
  v31[2] = a1[2];
  v33 = v22[2];
  v15 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v34;
}

void *sub_231C031E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E978, &unk_231C239B0);
  v2 = *v0;
  v3 = sub_231C17E90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = *(v21 + 8);
        *v23 = v20;
        v23[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v24;

        result = sub_231C03374(v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_231C03374(uint64_t a1, __int16 a2)
{
  if ((a2 & 0xC000) == 0x4000)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_231C03448()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_231C01C04(v1, v2);
}

id sub_231C03490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E998, &unk_231C239D0);
  v2 = *v0;
  v3 = sub_231C17E90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_231C035FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9A0, &unk_231C23710);
  v2 = *v0;
  v3 = sub_231C17E90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = *(v22 + 32);
        v26 = *(v22 + 40);
        v27 = (*(v4 + 48) + v18);
        v28 = *(v22 + 8);
        *v27 = v21;
        v27[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v28;
        *(v29 + 24) = v24;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;

        result = sub_231C037D0(v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_231C037C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_231C037D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_231C037E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v25 = sub_231C17D50();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231C17D70();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v15 = sub_231C17BE0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v18 = sub_231C03A68();
  v24[1] = "groundSystemTaskProviding>8";
  v24[2] = v18;
  sub_231C17BD0();
  v31 = MEMORY[0x277D84F90];
  sub_231C03AB4(&qword_27DD6E9B0, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9B8, &qword_231C239A0);
  sub_231C03AFC(&qword_27DD6E9C0, &qword_27DD6E9B8, &qword_231C239A0);
  sub_231C17DE0();
  (*(v7 + 104))(v11, *MEMORY[0x277D85268], v25);
  a6[3] = sub_231C17D80();
  v19 = sub_231C096B4(MEMORY[0x277D84F90]);
  v20 = v27;
  a6[2] = v26;
  v22 = v28;
  v21 = v29;
  a6[4] = v20;
  a6[5] = v22;
  a6[6] = v21;
  a6[7] = v30;
  a6[8] = v19;
  return a6;
}

unint64_t sub_231C03A68()
{
  result = qword_27DD6E9A8;
  if (!qword_27DD6E9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD6E9A8);
  }

  return result;
}

uint64_t sub_231C03AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231C03AFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_231C03B50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231C03BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_231C03BF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_231C03C0C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t Scheduler.StaticBackgroundTask.description.getter()
{
  v1 = v0;
  sub_231C17E40();

  MEMORY[0x2383769A0](*(v1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_name), *(v1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_name + 8));
  MEMORY[0x2383769A0](10272, 0xE200000000000000);
  MEMORY[0x2383769A0](*(v1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier), *(v1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier + 8));
  MEMORY[0x2383769A0](15913, 0xE200000000000000);
  return 0xD000000000000015;
}

id Scheduler.StaticBackgroundTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_231C03E1C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_231C17C50();

  return v5;
}

unint64_t Scheduler.DynamicBackgroundTask.description.getter()
{
  v1 = v0;
  sub_231C17E40();

  MEMORY[0x2383769A0](*(v1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_name), *(v1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_name + 8));
  MEMORY[0x2383769A0](10272, 0xE200000000000000);
  MEMORY[0x2383769A0](*(v1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier), *(v1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8));
  MEMORY[0x2383769A0](15913, 0xE200000000000000);
  return 0xD000000000000016;
}

id sub_231C04018()
{
  v0 = type metadata accessor for Scheduler.StaticBackgroundTask();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___SKDSchedulerStaticBackgroundTask_name];
  *v2 = 0x7363697274654DLL;
  v2[1] = 0xE700000000000000;
  v3 = &v1[OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier];
  *v3 = 0xD000000000000028;
  v3[1] = 0x8000000231C352F0;
  v1[OBJC_IVAR___SKDSchedulerStaticBackgroundTask_isRepeating] = 1;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_27DD6E9C8 = result;
  return result;
}

id sub_231C04108()
{
  v0 = type metadata accessor for Scheduler.DynamicBackgroundTask();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_name];
  *v2 = 0xD000000000000012;
  v2[1] = 0x8000000231C352A0;
  v3 = &v1[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask__createRequest];
  *v3 = sub_231C042E0;
  v3[1] = 0;
  v4 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v5 = sub_231C17C50();
  v6 = [v4 initWithIdentifier_];

  v7 = v6;
  [v7 setResources_];
  [v7 setPriority_];
  [v7 setRequiresExternalPower_];
  [v7 setResourceIntensive_];
  v8 = sub_231C17CB0();
  [v7 setInvolvedProcesses_];

  v9 = [v7 identifier];
  v10 = sub_231C17C60();
  v12 = v11;

  v13 = &v1[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier];
  *v13 = v10;
  v13[1] = v12;
  LOBYTE(v9) = [v7 isRepeating];

  v1[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_isRepeating] = v9;
  v15.receiver = v1;
  v15.super_class = v0;
  result = objc_msgSendSuper2(&v15, sel_init);
  qword_27DD6E9D0 = result;
  return result;
}

id sub_231C042E0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v1 = sub_231C17C50();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setResources_];
  [v3 setPriority_];
  [v3 setRequiresExternalPower_];
  [v3 setResourceIntensive_];
  v4 = sub_231C17CB0();
  [v3 setInvolvedProcesses_];

  return v3;
}

id sub_231C043F8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_231C044F4(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t sub_231C04560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 8);
  if (v7)
  {
    *&v25[0] = *a1;
    *(&v25[0] + 1) = v7;
    v8 = *(a1 + 32);
    v25[1] = *(a1 + 16);
    v25[2] = v8;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    sub_231C0302C(v25, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v24;
  }

  else
  {
    v12 = *v3;
    v13 = sub_231BF7C64(a2, a3);
    LOBYTE(v12) = v14;

    if (v12)
    {
      v15 = *v4;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      *&v25[0] = *v4;
      if (!v16)
      {
        sub_231C035FC();
        v17 = *&v25[0];
      }

      v18 = *(*(v17 + 48) + 16 * v13 + 8);

      v19 = (*(v17 + 56) + 48 * v13);
      v20 = v19[1];
      v21 = v19[3];
      v22 = v19[4];
      v23 = v19[5];

      sub_231C037C0(v22);
      result = sub_231C08100(v13, v17);
      *v4 = v17;
    }
  }

  return result;
}

uint64_t sub_231C0468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_231C02EB4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_231BF7C64(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_231C03490();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_231C07F50(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_231C04784()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD6EA10);
  v1 = __swift_project_value_buffer(v0, qword_27DD6EA10);
  if (qword_27DD6E2C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DD704F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_231C0484C()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD704F0);
  __swift_project_value_buffer(v0, qword_27DD704F0);
  return sub_231C17BA0();
}

id sub_231C048C8()
{
  v0 = [objc_allocWithZone(type metadata accessor for BackgroundSystemTaskScheduler()) init];
  v1 = objc_allocWithZone(type metadata accessor for Scheduler());
  result = sub_231C08304(v0, v1);
  qword_27DD70508 = result;
  return result;
}

id Scheduler.__allocating_init(bgTaskScheduler:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_231C082BC(a1, v1, ObjectType);
}

unint64_t Scheduler.TaskState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_231C04984()
{
  v1 = *v0;
  sub_231C17FC0();
  MEMORY[0x238376CE0](v1);
  return sub_231C17FE0();
}

uint64_t sub_231C049F8()
{
  v1 = *v0;
  sub_231C17FC0();
  MEMORY[0x238376CE0](v1);
  return sub_231C17FE0();
}

uint64_t *sub_231C04A3C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_231C04A64()
{
  v1 = *v0;
  sub_231C17FC0();
  MEMORY[0x238376CE0](v1);
  return sub_231C17FE0();
}

uint64_t sub_231C04AAC()
{
  v1 = *v0;
  sub_231C17FC0();
  MEMORY[0x238376CE0](v1);
  return sub_231C17FE0();
}

id Scheduler.init(bgTaskScheduler:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_231C08854(a1, v1, ObjectType);
}

void sub_231C04B30(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_231C17BF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v3[OBJC_IVAR___SKDScheduler__concurrentQueue];
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_231C17C00();
  v14 = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    v16 = *&v3[OBJC_IVAR___SKDScheduler__queue];
    MEMORY[0x28223BE20](v14, v15);
    *&v36[-32] = v3;
    *&v36[-24] = a1;
    *&v36[-16] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA90, &qword_231C239C8);
    v17 = sub_231C17D40();
    v41[0] = aBlock;
    v41[1] = v38;
    v42 = v39;
    v23 = v40;
    v25 = MEMORY[0x28223BE20](v17, v24);
    *&v36[-16] = v41;
    *&v36[-8] = v23;
    v27 = MEMORY[0x28223BE20](v25, v26);
    *&v36[-32] = v3;
    *&v36[-24] = a1;
    *&v36[-16] = a2;
    MEMORY[0x28223BE20](v27, v28);
    *&v36[-32] = v3;
    *&v36[-24] = a1;
    *&v36[-16] = a2;
    sub_231C061F0(a1, a2, sub_231C09930, v29, sub_231C0995C, v30, sub_231C09968, &v36[-48]);
    v31 = swift_allocObject();
    v31[2] = v3;
    v31[3] = a1;
    v31[4] = a2;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_231C09974;
    *(v32 + 24) = v31;
    *&v39 = sub_231C09D88;
    *(&v39 + 1) = v32;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v38 = sub_231C06070;
    *(&v38 + 1) = &block_descriptor_60;
    v33 = _Block_copy(&aBlock);
    v34 = v3;

    dispatch_async_and_wait(v16, v33);
    aBlock = v41[0];
    sub_231BF83E4(&aBlock);

    sub_231C037C0(v42);

    _Block_release(v33);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v18 = sub_231C17BB0();
    __swift_project_value_buffer(v18, qword_27DD6EA10);

    v19 = sub_231C17B90();
    v20 = sub_231C17D20();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&aBlock = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_231C0ABE0(a1, a2, &aBlock);
      _os_log_impl(&dword_231B25000, v19, v20, "Unknown background task launched: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x238378B40](v22, -1, -1);
      MEMORY[0x238378B40](v21, -1, -1);
    }
  }
}

uint64_t sub_231C05014(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a6;
  v10 = sub_231C17BC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_231C17BE0();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *&a3[OBJC_IVAR___SKDScheduler__concurrentQueue];
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = a5;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231C0205C;
  aBlock[3] = v23[0];
  v20 = _Block_copy(aBlock);
  v21 = a3;

  sub_231C17BD0();
  v25 = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6E980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E988, &unk_231C23700);
  sub_231C03AFC(&qword_27DD6E990, &qword_27DD6E988, &unk_231C23700);
  sub_231C17DE0();
  MEMORY[0x238376A70](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v24);
}

void sub_231C052DC(uint64_t a1, unint64_t a2)
{
  v5 = sub_231C17BF0();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR___SKDScheduler__concurrentQueue);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_231C17C00();
  v13 = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v15 = *(v2 + OBJC_IVAR___SKDScheduler__queue);
    MEMORY[0x28223BE20](v13, v14);
    *(&v31 - 4) = v2;
    *(&v31 - 3) = a1;
    *(&v31 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA80, &qword_231C239C0);
    sub_231C17D40();
    v21 = v32;
    v22 = v33;
    if (v33)
    {
      v23 = v34;
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      v25 = sub_231C09868;
    }

    else
    {
      v25 = 0;
    }

    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v26 = sub_231C17BB0();
    __swift_project_value_buffer(v26, qword_27DD6EA10);

    v27 = sub_231C17B90();
    v28 = sub_231C17D30();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_231C0ABE0(a1, a2, &v32);
      _os_log_impl(&dword_231B25000, v27, v28, "Cancelling running background task: %s...", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x238378B40](v30, -1, -1);
      MEMORY[0x238378B40](v29, -1, -1);
    }

    *(v21 + OBJC_IVAR___SKDCancellationToken__isCancelled) = 1;
    if (v22)
    {
      v25();

      sub_231C037C0(v25);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v16 = sub_231C17BB0();
    __swift_project_value_buffer(v16, qword_27DD6EA10);

    v17 = sub_231C17B90();
    v18 = sub_231C17D20();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_231C0ABE0(a1, a2, &v32);
      _os_log_impl(&dword_231B25000, v17, v18, "Unknown background task cancelled: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x238378B40](v20, -1, -1);
      MEMORY[0x238378B40](v19, -1, -1);
    }
  }
}

uint64_t Scheduler.schedule(taskNamed:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___SKDScheduler__queue];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_231C08DA4;
  *(v11 + 24) = v10;
  v16[4] = sub_231C08DB4;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_231C06070;
  v16[3] = &block_descriptor_1;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_async_and_wait(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_231C058B0(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_231C17BC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231C17BE0();
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v44 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  if (*(*&a1[v19] + 16) && (sub_231BF7C64(a2, a3), (v20 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v21 = sub_231C17BB0();
    __swift_project_value_buffer(v21, qword_27DD6EA10);

    v22 = sub_231C17B90();
    v23 = sub_231C17D20();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v49 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_231C0ABE0(a2, a3, &v49);
      _os_log_impl(&dword_231B25000, v22, v23, "Task named %s already exists", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x238378B40](v25, -1, -1);
      MEMORY[0x238378B40](v24, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    *&v49 = a2;
    *(&v49 + 1) = a3;
    v50 = a4;
    v51 = a5;
    v52 = 0;
    v53 = 0;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v26 = *&a1[v19];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *&a1[v19];
    v43 = v10;
    *&a1[v19] = 0x8000000000000000;
    sub_231C0302C(&v49, a2, a3, isUniquelyReferenced_nonNull_native);

    *&a1[v19] = v48;
    swift_endAccess();
    v28 = [objc_allocWithZone(SKDCancellationToken) init];
    v29 = OBJC_IVAR___SKDScheduler__cancellationTokens;
    swift_beginAccess();

    v30 = v28;
    v42 = v15;
    v31 = v30;
    v32 = *&a1[v29];
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *&a1[v29];
    *&a1[v29] = 0x8000000000000000;
    sub_231C02EB4(v31, a2, a3, v33);

    *&a1[v29] = v48;
    swift_endAccess();
    v41 = *&a1[OBJC_IVAR___SKDScheduler__concurrentQueue];
    v34 = swift_allocObject();
    v34[2] = a1;
    v34[3] = a2;
    v34[4] = a3;
    v34[5] = a4;
    v34[6] = a5;
    v34[7] = v31;
    aBlock[4] = sub_231C09A90;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_231C0205C;
    aBlock[3] = &block_descriptor_86;
    v35 = _Block_copy(aBlock);

    v36 = v31;
    v37 = a1;
    v38 = v44;
    sub_231C17BD0();
    v48 = MEMORY[0x277D84F90];
    sub_231C09800(&qword_27DD6E980, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E988, &unk_231C23700);
    sub_231C03AFC(&qword_27DD6E990, &qword_27DD6E988, &unk_231C23700);
    v39 = v46;
    v40 = v43;
    sub_231C17DE0();
    MEMORY[0x238376A70](0, v38, v39, v35);
    _Block_release(v35);

    (*(v11 + 8))(v39, v40);
    (*(v45 + 8))(v38, v42);
  }
}

uint64_t sub_231C05E38(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *&a1[OBJC_IVAR___SKDScheduler__queue];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_231C09BAC;
  *(v8 + 24) = v7;
  v12[4] = sub_231C09D88;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_231C06070;
  v12[3] = &block_descriptor_96;
  v9 = _Block_copy(v12);
  v10 = a1;

  dispatch_async_and_wait(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C05FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  sub_231C0468C(0, a2, a3);
  swift_endAccess();
  memset(v6, 0, sizeof(v6));
  swift_beginAccess();

  sub_231C04560(v6, a2, a3);
  return swift_endAccess();
}

void sub_231C06098(uint64_t a1, unint64_t a2)
{
  if (qword_27DD6E2C0 != -1)
  {
    swift_once();
  }

  v4 = sub_231C17BB0();
  __swift_project_value_buffer(v4, qword_27DD6EA10);

  oslog = sub_231C17B90();
  v5 = sub_231C17D20();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_231C0ABE0(a1, a2, &v9);
    _os_log_impl(&dword_231B25000, oslog, v5, "Immediate task %s requested unsupported deferral", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x238378B40](v7, -1, -1);
    MEMORY[0x238378B40](v6, -1, -1);
  }
}

uint64_t sub_231C061F0(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v37[1] = a8;
  v38 = a7;
  v14 = sub_231C17BF0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = (v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v8 + OBJC_IVAR___SKDScheduler__concurrentQueue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_231C17C00();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    if (qword_27DD6E2C0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v37[0] = a6;
  v21 = sub_231C17BB0();
  __swift_project_value_buffer(v21, qword_27DD6EA10);

  v22 = sub_231C17B90();
  v23 = sub_231C17D30();

  v24 = a5;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_231C0ABE0(a1, a2, &v39);
    _os_log_impl(&dword_231B25000, v22, v23, "Task beginning: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x238378B40](v26, -1, -1);
    MEMORY[0x238378B40](v25, -1, -1);
  }

  do
  {
    v27 = a3();
  }

  while (v27 == 1);
  if (v27 == 2)
  {

    v28 = sub_231C17B90();
    v29 = sub_231C17D30();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_231C0ABE0(a1, a2, &v39);
      _os_log_impl(&dword_231B25000, v28, v29, "Task requested deferral: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x238378B40](v31, -1, -1);
      MEMORY[0x238378B40](v30, -1, -1);
    }

    return v38();
  }

  else if (v27)
  {
    v39 = v27;
    result = sub_231C17F50();
    __break(1u);
  }

  else
  {

    v33 = sub_231C17B90();
    v34 = sub_231C17D30();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_231C0ABE0(a1, a2, &v39);
      _os_log_impl(&dword_231B25000, v33, v34, "Task completed: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x238378B40](v36, -1, -1);
      MEMORY[0x238378B40](v35, -1, -1);
    }

    return v24();
  }

  return result;
}

uint64_t sub_231C06644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR___SKDScheduler__queue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_231C09A60;
  *(v13 + 24) = v12;
  v19[4] = sub_231C09D88;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_231C06070;
  v19[3] = &block_descriptor_80;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = v5;

  sub_231C037D0(a4);

  dispatch_async_and_wait(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_231C06810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier);
  v10 = *(a1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier + 8);
  v12 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  v13 = *(*(a2 + v12) + 16);

  if (v13 && (sub_231BF7C64(v11, v10), (v14 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v15 = sub_231C17BB0();
    __swift_project_value_buffer(v15, qword_27DD6EA10);

    v16 = sub_231C17B90();
    v17 = sub_231C17D20();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v29 = v19;
      *v18 = 136315138;
      v20 = sub_231C0ABE0(v11, v10, &v29);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_231B25000, v16, v17, "Task named %s already exists", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x238378B40](v19, -1, -1);
      MEMORY[0x238378B40](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v26 = a5;
    v21 = v11;
    swift_endAccess();
    v22 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
    swift_beginAccess();
    sub_231C09980(a2 + v22, &v29);
    if (v31)
    {
      __swift_project_boxed_opaque_existential_1(&v29, v31);
      v23 = off_2846CD598[0];
      _s24DASBackgroundTaskManagerCMa();
      v23();
      __swift_destroy_boxed_opaque_existential_1(&v29);
      *&v29 = v21;
      *(&v29 + 1) = v10;
      v30 = a3;
      v31 = a4;
      v32 = v26;
      v33 = a6;
      swift_beginAccess();

      sub_231C037D0(v26);
      v24 = *(a2 + v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(a2 + v12);
      *(a2 + v12) = 0x8000000000000000;
      sub_231C0302C(&v29, v21, v10, isUniquelyReferenced_nonNull_native);

      *(a2 + v12) = v28;
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_231C06B34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR___SKDScheduler__queue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_231C099F0;
  *(v13 + 24) = v12;
  v19[4] = sub_231C09D88;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_231C06070;
  v19[3] = &block_descriptor_70;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = v5;

  sub_231C037D0(a4);

  dispatch_async_and_wait(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C06D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  a8(a1, a7, v15, a4, a5);
}

void sub_231C06DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier);
  v10 = *(a1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8);
  v12 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  v13 = *(*(a2 + v12) + 16);

  if (v13 && (sub_231BF7C64(v11, v10), (v14 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v15 = sub_231C17BB0();
    __swift_project_value_buffer(v15, qword_27DD6EA10);

    v16 = sub_231C17B90();
    v17 = sub_231C17D20();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v29 = v19;
      *v18 = 136315138;
      v20 = sub_231C0ABE0(v11, v10, &v29);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_231B25000, v16, v17, "Task named %s already exists", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x238378B40](v19, -1, -1);
      MEMORY[0x238378B40](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v26 = a5;
    v21 = v11;
    swift_endAccess();
    v22 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
    swift_beginAccess();
    sub_231C09980(a2 + v22, &v29);
    if (v31)
    {
      __swift_project_boxed_opaque_existential_1(&v29, v31);
      v23 = off_2846CD5A0[0];
      _s24DASBackgroundTaskManagerCMa();
      v23();
      __swift_destroy_boxed_opaque_existential_1(&v29);
      *&v29 = v21;
      *(&v29 + 1) = v10;
      v30 = a3;
      v31 = a4;
      v32 = v26;
      v33 = a6;
      swift_beginAccess();

      sub_231C037D0(v26);
      v24 = *(a2 + v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(a2 + v12);
      *(a2 + v12) = 0x8000000000000000;
      sub_231C0302C(&v29, v21, v10, isUniquelyReferenced_nonNull_native);

      *(a2 + v12) = v28;
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t Scheduler.schedule(dynamicBackgroundTask:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR___SKDScheduler__queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_231C08E1C;
  *(v5 + 24) = v4;
  v11[4] = sub_231C09D88;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_231C06070;
  v11[3] = &block_descriptor_19;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_async_and_wait(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_231C07224(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier];
  v5 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8];
  v6 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_231BF7C64(v4, v5), (v7 & 1) != 0))
  {
    swift_endAccess();
    v8 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
    swift_beginAccess();
    sub_231C09980(a1 + v8, v16);
    if (v17)
    {
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v9 = off_2846CD5A8[0];
      _s24DASBackgroundTaskManagerCMa();
      v9();
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v10 = sub_231C17BB0();
    __swift_project_value_buffer(v10, qword_27DD6EA10);
    v11 = a2;
    v12 = sub_231C17B90();
    v13 = sub_231C17D20();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_231C0ABE0(v4, v5, v16);
      _os_log_impl(&dword_231B25000, v12, v13, "Unknown background task scheduled: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x238378B40](v15, -1, -1);
      MEMORY[0x238378B40](v14, -1, -1);
    }
  }
}

uint64_t sub_231C07450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_231BF7C64(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 48 * v10;
    v31 = *v12;
    v32 = a2;
    v34 = *(v12 + 8);
    v33 = a3;
    v14 = *(v12 + 24);
    v13 = *(v12 + 32);
    v15 = *(v12 + 40);
    swift_endAccess();
    v16 = OBJC_IVAR___SKDScheduler__cancellationTokens;
    swift_beginAccess();
    v17 = *(*(a1 + v16) + 16);

    sub_231C037D0(v13);
    if (v17 && (sub_231BF7C64(v32, v33), (v18 & 1) != 0))
    {
      swift_endAccess();
      if (qword_27DD6E2C0 != -1)
      {
        swift_once();
      }

      v19 = sub_231C17BB0();
      __swift_project_value_buffer(v19, qword_27DD6EA10);

      v20 = sub_231C17B90();
      v21 = sub_231C17D20();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v35 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_231C0ABE0(v32, v33, &v35);
        _os_log_impl(&dword_231B25000, v20, v21, "Unexpected existing cancellation token found for task %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x238378B40](v23, -1, -1);
        MEMORY[0x238378B40](v22, -1, -1);
      }

      sub_231C09890();
      swift_allocError();
      *v24 = 2;
      swift_willThrow();

      return sub_231C037C0(v13);
    }

    else
    {
      swift_endAccess();
      v27 = [objc_allocWithZone(SKDCancellationToken) init];
      swift_beginAccess();

      v28 = v27;
      v29 = *(a1 + v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(a1 + v16);
      *(a1 + v16) = 0x8000000000000000;
      sub_231C02EB4(v28, v32, v33, isUniquelyReferenced_nonNull_native);

      *(a1 + v16) = v36;
      result = swift_endAccess();
      *a4 = v31;
      *(a4 + 8) = v34;
      *(a4 + 24) = v14;
      *(a4 + 32) = v13;
      *(a4 + 40) = v15;
      *(a4 + 48) = v28;
    }
  }

  else
  {
    swift_endAccess();
    sub_231C09890();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_231C077CC(uint64_t a1)
{
  v2 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
  swift_beginAccess();
  result = sub_231C09980(a1 + v2, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v4 = off_2846CD5B0[0];
    _s24DASBackgroundTaskManagerCMa();
    v4();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C0789C(uint64_t a1)
{
  v2 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
  swift_beginAccess();
  result = sub_231C09980(a1 + v2, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v4 = off_2846CD5B8;
    _s24DASBackgroundTaskManagerCMa();
    v4();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C0796C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR___SKDScheduler__cancellationTokens;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_231BF7C64(a2, a3), (v7 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v8 = sub_231C17BB0();
    __swift_project_value_buffer(v8, qword_27DD6EA10);

    v9 = sub_231C17B90();
    v10 = sub_231C17D20();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_231C0ABE0(a2, a3, &v14);
      _os_log_impl(&dword_231B25000, v9, v10, "Task %s is missing its cancellation token after run completion", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x238378B40](v12, -1, -1);
      MEMORY[0x238378B40](v11, -1, -1);
    }
  }

  swift_beginAccess();

  sub_231C0468C(0, a2, a3);
  return swift_endAccess();
}

void sub_231C07B44(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR___SKDScheduler__cancellationTokens;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_231BF7C64(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = OBJC_IVAR___SKDScheduler__tasks;
    swift_beginAccess();
    v14 = *(a1 + v13);
    v15 = *(v14 + 16);
    v16 = v12;
    if (v15 && (v17 = sub_231BF7C64(a2, a3), (v18 & 1) != 0))
    {
      v19 = *(v14 + 56) + 48 * v17;
      v20 = *(v19 + 32);
      v21 = *(v19 + 40);
      swift_endAccess();
      if (v20)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v23 = sub_231C08DB4;
      }

      else
      {
        v23 = 0;
        v22 = 0;
      }

      *a4 = v16;
      a4[1] = v23;
      a4[2] = v22;
      sub_231C037D0(v20);
    }

    else
    {
      swift_endAccess();
      sub_231C09890();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v24 = sub_231C17BB0();
    __swift_project_value_buffer(v24, qword_27DD6EA10);

    v25 = sub_231C17B90();
    v26 = sub_231C17D20();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_231C0ABE0(a2, a3, &v31);
      _os_log_impl(&dword_231B25000, v25, v26, "Cancellation token not found for expired task %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x238378B40](v28, -1, -1);
      MEMORY[0x238378B40](v27, -1, -1);
    }

    sub_231C09890();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
  }
}

id Scheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Scheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_231C07F50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_231C17DF0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_231C17FC0();

      sub_231C17C80();
      v13 = sub_231C17FE0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_231C08100(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_231C17DF0() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_231C17FC0();

      sub_231C17C80();
      v15 = sub_231C17FE0();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

id sub_231C082BC(uint64_t a1, Class a2, uint64_t a3)
{
  v5 = objc_allocWithZone(a2);

  return sub_231C08854(a1, v5, a3);
}

id sub_231C08304(uint64_t a1, char *a2)
{
  v43 = a2;
  v47 = a1;
  ObjectType = swift_getObjectType();
  v45 = sub_231C17D90();
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_231C17D50();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231C17D70();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v13 = sub_231C17BE0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v41 = OBJC_IVAR___SKDScheduler__queue;
  v16 = sub_231C0908C(0, &qword_27DD6E9A8, 0x277D85C90);
  v38 = "_cancellationTokens";
  v39 = v16;
  sub_231C17BD0();
  v48[0] = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6E9B0, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9B8, &qword_231C239A0);
  sub_231C03AFC(&qword_27DD6E9C0, &qword_27DD6E9B8, &qword_231C239A0);
  sub_231C17DE0();
  v17 = *MEMORY[0x277D85268];
  v18 = *(v5 + 104);
  v40 = v5 + 104;
  v19 = v42;
  v18(v9, v17, v42);
  v20 = sub_231C17D80();
  v21 = v43;
  *&v43[v41] = v20;
  v41 = OBJC_IVAR___SKDScheduler__concurrentQueue;
  v22 = sub_231C0908C(0, &qword_27DD6EA60, 0x277D85C88);
  v38 = "ghtknowledged.Scheduler";
  v39 = v22;
  sub_231C17BD0();
  v48[0] = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6EA68, MEMORY[0x277D852E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA70, &qword_231C239A8);
  sub_231C03AFC(&qword_27DD6EA78, &qword_27DD6EA70, &qword_231C239A8);
  sub_231C17DE0();
  v18(v9, v17, v19);
  *&v21[v41] = sub_231C17DA0();
  v23 = &v21[OBJC_IVAR___SKDScheduler__backgroundTaskManager];
  v24 = v21;
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v25 = OBJC_IVAR___SKDScheduler__tasks;
  v26 = MEMORY[0x277D84F90];
  *&v24[v25] = sub_231C0936C(MEMORY[0x277D84F90]);
  v27 = OBJC_IVAR___SKDScheduler__cancellationTokens;
  *&v24[v27] = sub_231C094C0(v26);
  v49.receiver = v24;
  v49.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v49, sel_init);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = _s24DASBackgroundTaskManagerCMa();
  v32 = swift_allocObject();
  v33 = v28;
  v34 = sub_231C090D4(v47, sub_231C095C4, v29, sub_231C09604, v30, v32);
  v48[3] = v31;
  v48[4] = &off_2846CD590;
  v48[0] = v34;
  v35 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
  swift_beginAccess();
  sub_231C09644(v48, v33 + v35);
  swift_endAccess();

  return v33;
}

id sub_231C08854(uint64_t a1, char *a2, uint64_t a3)
{
  v47 = a1;
  v48 = a3;
  v43 = a2;
  ObjectType = swift_getObjectType();
  v45 = sub_231C17D90();
  v3 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v4);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_231C17D50();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v42, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231C17D70();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v14 = sub_231C17BE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v41 = OBJC_IVAR___SKDScheduler__queue;
  v17 = sub_231C0908C(0, &qword_27DD6E9A8, 0x277D85C90);
  v38 = "_cancellationTokens";
  v39 = v17;
  sub_231C17BD0();
  v49[0] = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6E9B0, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9B8, &qword_231C239A0);
  sub_231C03AFC(&qword_27DD6E9C0, &qword_27DD6E9B8, &qword_231C239A0);
  sub_231C17DE0();
  v18 = *MEMORY[0x277D85268];
  v19 = *(v6 + 104);
  v40 = v6 + 104;
  v20 = v42;
  v19(v10, v18, v42);
  v21 = sub_231C17D80();
  v22 = v43;
  *&v43[v41] = v21;
  v41 = OBJC_IVAR___SKDScheduler__concurrentQueue;
  v23 = sub_231C0908C(0, &qword_27DD6EA60, 0x277D85C88);
  v38 = "ghtknowledged.Scheduler";
  v39 = v23;
  sub_231C17BD0();
  v49[0] = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6EA68, MEMORY[0x277D852E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA70, &qword_231C239A8);
  sub_231C03AFC(&qword_27DD6EA78, &qword_27DD6EA70, &qword_231C239A8);
  sub_231C17DE0();
  v19(v10, v18, v20);
  *&v22[v41] = sub_231C17DA0();
  v24 = &v22[OBJC_IVAR___SKDScheduler__backgroundTaskManager];
  v25 = v22;
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v26 = OBJC_IVAR___SKDScheduler__tasks;
  v27 = MEMORY[0x277D84F90];
  *&v25[v26] = sub_231C0936C(MEMORY[0x277D84F90]);
  v28 = OBJC_IVAR___SKDScheduler__cancellationTokens;
  *&v25[v28] = sub_231C094C0(v27);
  v50.receiver = v25;
  v50.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v50, sel_init);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v32 = _s24DASBackgroundTaskManagerCMa();
  v33 = swift_allocObject();
  v34 = v29;
  v35 = sub_231C037E0(v47, sub_231C09D80, v30, sub_231C09D84, v31, v33);
  v49[3] = v32;
  v49[4] = &off_2846CD590;
  v49[0] = v35;
  v36 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
  swift_beginAccess();
  sub_231C09644(v49, v34 + v36);
  swift_endAccess();

  return v34;
}

uint64_t sub_231C08DB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231C08DF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_231C08E28()
{
  result = qword_27DD6EA30;
  if (!qword_27DD6EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EA30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Iegh_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_231C08F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_231C08FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231C09024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA58, &qword_231C23998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231C0908C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_231C090D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v20 = sub_231C17D50();
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_231C17D70() - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = *(*(sub_231C17BE0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = sub_231C0908C(0, &qword_27DD6E9A8, 0x277D85C90);
  v19[1] = "groundSystemTaskProviding>8";
  v19[2] = v13;
  sub_231C17BD0();
  v26 = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6E9B0, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9B8, &qword_231C239A0);
  sub_231C03AFC(&qword_27DD6E9C0, &qword_27DD6E9B8, &qword_231C239A0);
  sub_231C17DE0();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v20);
  a6[3] = sub_231C17D80();
  v14 = sub_231C096B4(MEMORY[0x277D84F90]);
  v15 = v22;
  a6[2] = v21;
  v17 = v23;
  v16 = v24;
  a6[4] = v15;
  a6[5] = v17;
  a6[6] = v16;
  a6[7] = v25;
  a6[8] = v14;
  return a6;
}

unint64_t sub_231C0936C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9A0, &unk_231C23710);
    v3 = sub_231C17EB0();

    for (i = (a1 + 48); ; i += 8)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v18 = *(i + 1);
      v8 = i[3];
      v9 = i[4];
      v10 = i[5];

      sub_231C037D0(v9);
      result = sub_231BF7C64(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 48 * result;
      *v14 = v7;
      *(v14 + 8) = v18;
      *(v14 + 24) = v8;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_231C094C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E998, &unk_231C239D0);
    v3 = sub_231C17EB0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_231BF7C64(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_231C09644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA58, &qword_231C23998);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_231C096B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E978, &unk_231C239B0);
    v3 = sub_231C17EB0();

    for (i = (a1 + 56); ; i += 16)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_231C03374(v7, v8);
      result = sub_231BF7C64(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_231C097D4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_231C052DC(v1, v2);
}

uint64_t sub_231C09800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231C09868()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_231C09890()
{
  result = qword_27DD6EA88;
  if (!qword_27DD6EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EA88);
  }

  return result;
}

void sub_231C098E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_231C04B30(v1, v2);
}

uint64_t sub_231C09930()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  return (*(v2 + 16))(v1);
}

uint64_t sub_231C0995C()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_231C077CC(v0[2]);
}

uint64_t sub_231C09968()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_231C0789C(v0[2]);
}

uint64_t sub_231C09980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA58, &qword_231C23998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_62Tm()
{
  v1 = *(v0 + 40);

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231C09A90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = v4;
  v8 = v2;
  v9 = v1;
  v10 = v3;
  v6[2] = v1;
  v6[3] = v3;
  return sub_231C061F0(v1, v3, sub_231C09B28, v11, sub_231C09B58, v7, sub_231C09B64, v6);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for Scheduler.SchedulerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Scheduler.SchedulerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_231C09D0C()
{
  result = qword_27DD6EA98;
  if (!qword_27DD6EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EA98);
  }

  return result;
}

id BackgroundSystemTaskScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_231C09DE4()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD6EAA0);
  __swift_project_value_buffer(v0, qword_27DD6EAA0);
  return sub_231C17BA0();
}

uint64_t sub_231C09E68(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *))
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v20[4] = sub_231C0B914;
  v20[5] = v12;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_231C0205C;
  v20[3] = &block_descriptor_14;
  v13 = _Block_copy(v20);

  [a1 setExpirationHandler_];
  _Block_release(v13);
  if (qword_27DD6E2D8 != -1)
  {
    swift_once();
  }

  v14 = sub_231C17BB0();
  __swift_project_value_buffer(v14, qword_27DD6EAA0);

  v15 = sub_231C17B90();
  v16 = sub_231C17D30();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_231C0ABE0(a2, a3, v20);
    _os_log_impl(&dword_231B25000, v15, v16, "Background System Task Launched: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x238378B40](v18, -1, -1);
    MEMORY[0x238378B40](v17, -1, -1);
  }

  return a6(a1);
}

uint64_t sub_231C0A09C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (qword_27DD6E2D8 != -1)
  {
    swift_once();
  }

  v6 = sub_231C17BB0();
  __swift_project_value_buffer(v6, qword_27DD6EAA0);

  v7 = sub_231C17B90();
  v8 = sub_231C17D30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_231C0ABE0(a1, a2, &v12);
    _os_log_impl(&dword_231B25000, v7, v8, "Background System Task Expired: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x238378B40](v10, -1, -1);
    MEMORY[0x238378B40](v9, -1, -1);
  }

  return a3();
}

void sub_231C0A200(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id BackgroundSystemTaskScheduler.taskRequest(forIdentifier:)()
{
  v0 = [objc_opt_self() sharedScheduler];
  v1 = sub_231C17C50();
  v2 = [v0 taskRequestForIdentifier_];

  return v2;
}

id BackgroundSystemTaskScheduler.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BackgroundSystemTaskScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BGSystemTask.setTaskExpired()()
{
  v32[1] = *MEMORY[0x277D85DE8];
  v32[0] = 0;
  if ([v0 setTaskExpiredWithRetryAfter:v32 error:300.0])
  {
    v1 = qword_27DD6E2D8;
    v2 = v32[0];
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_231C17BB0();
    __swift_project_value_buffer(v3, qword_27DD6EAA0);
    v4 = v0;
    v5 = sub_231C17B90();
    v6 = sub_231C17D30();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136315138;
      v9 = [v4 identifier];
      v10 = sub_231C17C60();
      v12 = v11;

      v13 = sub_231C0ABE0(v10, v12, v32);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_231B25000, v5, v6, "Expired Background System Task %s for 5 minutes", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x238378B40](v8, -1, -1);
      MEMORY[0x238378B40](v7, -1, -1);
    }
  }

  else
  {
    v14 = v32[0];
    v15 = sub_231C17B40();

    swift_willThrow();
    if (qword_27DD6E2D8 != -1)
    {
      swift_once();
    }

    v16 = sub_231C17BB0();
    __swift_project_value_buffer(v16, qword_27DD6EAA0);
    v17 = v0;
    v18 = v15;
    v19 = sub_231C17B90();
    v20 = sub_231C17D20();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v21 = 136315394;
      v24 = [v17 identifier];
      v25 = sub_231C17C60();
      v27 = v26;

      v28 = sub_231C0ABE0(v25, v27, v32);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2112;
      v29 = v15;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v30;
      *v22 = v30;
      _os_log_impl(&dword_231B25000, v19, v20, "Failed to expire Background System Task %s: %@", v21, 0x16u);
      sub_231BF7510(v22);
      MEMORY[0x238378B40](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x238378B40](v23, -1, -1);
      MEMORY[0x238378B40](v21, -1, -1);
    }

    swift_willThrow();
  }

  v31 = *MEMORY[0x277D85DE8];
}

BOOL sub_231C0A9B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  BGSystemTask.setTaskExpired()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_231C17B30();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

uint64_t sub_231C0AA2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_231C0AA78(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_231C0AAD8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_231C0AAE8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_231C0AB84(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_231C0ABE0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_231C0ABE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_231C0ACAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_231BF7D44(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_231C0ACAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_231C0ADB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_231C17E70();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_231C0ADB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_231C0AE04(a1, a2);
  sub_231C0AF34(&unk_2846CC490);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_231C0AE04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_231C0B020(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_231C17E70();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_231C17CA0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_231C0B020(v10, 0);
        result = sub_231C17E30();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_231C0AF34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_231C0B094(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_231C0B020(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EAB8, qword_231C23B08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_231C0B094(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EAB8, qword_231C23B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id _s24SpotlightKnowledgeDaemon29BackgroundSystemTaskSchedulerC8register14taskIdentifier5using8onLaunch0L10ExpirationSbSS_So17OS_dispatch_queueCySo013SKDBackgroundeF9Providing_pYbcyyYbctF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [objc_opt_self() sharedScheduler];
  v15 = sub_231C17C50();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a4;
  v16[7] = a5;
  v27[4] = sub_231C0B8EC;
  v27[5] = v16;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1107296256;
  v27[2] = sub_231C0A200;
  v27[3] = &block_descriptor_2;
  v17 = _Block_copy(v27);

  v18 = [v14 registerForTaskWithIdentifier:v15 usingQueue:a3 launchHandler:v17];
  _Block_release(v17);

  if (v18)
  {
    if (qword_27DD6E2D8 != -1)
    {
      swift_once();
    }

    v19 = sub_231C17BB0();
    __swift_project_value_buffer(v19, qword_27DD6EAA0);

    v20 = sub_231C17B90();
    v21 = sub_231C17D30();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_231C0ABE0(a1, a2, v27);
      v24 = "Registered Background System Task: %s";
LABEL_10:
      _os_log_impl(&dword_231B25000, v20, v21, v24, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x238378B40](v23, -1, -1);
      MEMORY[0x238378B40](v22, -1, -1);
    }
  }

  else
  {
    if (qword_27DD6E2D8 != -1)
    {
      swift_once();
    }

    v25 = sub_231C17BB0();
    __swift_project_value_buffer(v25, qword_27DD6EAA0);

    v20 = sub_231C17B90();
    v21 = sub_231C17D20();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_231C0ABE0(a1, a2, v27);
      v24 = "Cannot re-register already registered Background System Task: %s";
      goto LABEL_10;
    }
  }

  return v18;
}

void sub_231C0B4CC(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedScheduler];
  v35 = 0;
  v3 = [v2 submitTaskRequest:a1 error:&v35];

  if (v3)
  {
    v4 = qword_27DD6E2D8;
    v5 = v35;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_231C17BB0();
    __swift_project_value_buffer(v6, qword_27DD6EAA0);
    v7 = a1;
    v8 = sub_231C17B90();
    v9 = sub_231C17D30();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;
      v12 = [v7 identifier];
      v13 = sub_231C17C60();
      v15 = v14;

      v16 = sub_231C0ABE0(v13, v15, &v35);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_231B25000, v8, v9, "Submitted Background System Task Request: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x238378B40](v11, -1, -1);
      MEMORY[0x238378B40](v10, -1, -1);
    }
  }

  else
  {
    v17 = v35;
    v18 = sub_231C17B40();

    swift_willThrow();
    if (qword_27DD6E2D8 != -1)
    {
      swift_once();
    }

    v19 = sub_231C17BB0();
    __swift_project_value_buffer(v19, qword_27DD6EAA0);
    v20 = a1;
    v21 = v18;
    v22 = sub_231C17B90();
    v23 = sub_231C17D20();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v24 = 136315394;
      v27 = [v20 identifier];
      v28 = sub_231C17C60();
      v30 = v29;

      v31 = sub_231C0ABE0(v28, v30, &v35);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      v32 = v18;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v33;
      *v25 = v33;
      _os_log_impl(&dword_231B25000, v22, v23, "Failed to submit Background System Task Request %s: %@", v24, 0x16u);
      sub_231BF7510(v25);
      MEMORY[0x238378B40](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x238378B40](v26, -1, -1);
      MEMORY[0x238378B40](v24, -1, -1);
    }

    swift_willThrow();
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

const char *sub_231C0B93C()
{
  v1 = *v0;
  v2 = "AppEntities";
  v3 = "SpotlightKnowledgePIRLocationLookup";
  v4 = "SpotlightKnowledgePreExtractionScanning";
  if (v1 != 3)
  {
    v4 = "SpotlightScheduledReceiverDebug";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "SpotlightKnowledgeOfflineLocationLookup";
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

const char *sub_231C0B9C8()
{
  v1 = *v0;
  v2 = "EmbeddingCacheDiagnostics";
  v3 = "SpotlightKnowledgePipelineDebug";
  v4 = "SpotlightKnowledgePipelineKeyphrases";
  if (v1 != 3)
  {
    v4 = "SpotlightKnowledgeScheduler";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "SpotlightKnowledgePipeline";
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

id FeatureFlagsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureFlagsProvider.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___SKDFeatureFlagsProvider_isAppEntitiesEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v3 = sub_231C0BE08();
  v19 = v3;
  LOBYTE(v17[0]) = 0;
  v4 = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v2] = v4 & 1;
  v5 = OBJC_IVAR___SKDFeatureFlagsProvider_isEmbeddingCacheDiagnosticsEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v6 = sub_231C0BE5C();
  v19 = v6;
  LOBYTE(v17[0]) = 0;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v5] = v2 & 1;
  v7 = OBJC_IVAR___SKDFeatureFlagsProvider_isOfflineLocationLookupEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v19 = v3;
  LOBYTE(v17[0]) = 1;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v7] = v2 & 1;
  v8 = OBJC_IVAR___SKDFeatureFlagsProvider_isPIRLocationLookupEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v19 = v3;
  LOBYTE(v17[0]) = 2;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v8] = v2 & 1;
  v9 = OBJC_IVAR___SKDFeatureFlagsProvider_isPipelineEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v19 = v6;
  LOBYTE(v17[0]) = 1;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v9] = v2 & 1;
  v10 = OBJC_IVAR___SKDFeatureFlagsProvider_isPipelineDebugEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v19 = v6;
  LOBYTE(v17[0]) = 2;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v10] = v2 & 1;
  v11 = OBJC_IVAR___SKDFeatureFlagsProvider_isPipelineKeyphrasesEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v19 = v6;
  LOBYTE(v17[0]) = 3;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v11] = v2 & 1;
  v12 = OBJC_IVAR___SKDFeatureFlagsProvider_isPreExtractionScanningEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v19 = v3;
  LOBYTE(v17[0]) = 3;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v12] = v2 & 1;
  v13 = OBJC_IVAR___SKDFeatureFlagsProvider_isScheduledReceiverDebugEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v19 = v3;
  LOBYTE(v17[0]) = 4;
  LOBYTE(v3) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v13] = v3 & 1;
  v14 = OBJC_IVAR___SKDFeatureFlagsProvider_isSchedulerEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v19 = v6;
  LOBYTE(v17[0]) = 4;
  LOBYTE(v3) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v14] = v3 & 1;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_231C0BE08()
{
  result = qword_28158A2A8;
  if (!qword_28158A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158A2A8);
  }

  return result;
}

unint64_t sub_231C0BE5C()
{
  result = qword_28158A2A0;
  if (!qword_28158A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158A2A0);
  }

  return result;
}

id FeatureFlagsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_231C0BF40(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_231C0BFD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_231C0C094()
{
  result = qword_27DD6EB70;
  if (!qword_27DD6EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EB70);
  }

  return result;
}

unint64_t sub_231C0C0EC()
{
  result = qword_27DD6EB78;
  if (!qword_27DD6EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EB78);
  }

  return result;
}

unint64_t type metadata accessor for SKDCancellationToken()
{
  result = qword_27DD6EB88;
  if (!qword_27DD6EB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD6EB88);
  }

  return result;
}

void store_stream_init_fd_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "store_stream_init err:%d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void store_stream_flush_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "store_stream_flush write err:%d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t _partition_oid_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 8 * a2);
  v5 = &v4[v3 / 2];
  v6 = (a1 + 8 * a3);
  if (a3 - a2 < 1024)
  {
    v25 = (a1 + 8 * a3);
    v21 = &v4[v3 / 2];
    v11 = (a1 + 8 * a2);
  }

  else
  {
    v7 = v3 >> 3;
    v8 = &v4[v3 >> 3];
    v9 = *v4;
    v10 = *v8;
    v11 = (a1 + 8 * a2);
    if (*v4 != *v8)
    {
      v11 = &v4[2 * v7];
      v12 = *v11;
      if (v9 >= *v11)
      {
        v13 = &v4[2 * v7];
      }

      else
      {
        v13 = (a1 + 8 * a2);
      }

      if (v10 > v12)
      {
        v13 = v8;
      }

      if (v9 >= v12)
      {
        v14 = (a1 + 8 * a2);
      }

      else
      {
        v14 = &v4[2 * v7];
      }

      if (v10 >= v12)
      {
        v8 = v14;
      }

      if (v9 >= v10)
      {
        v8 = v13;
      }

      if (v12 != v9 && v12 != v10)
      {
        v11 = v8;
      }
    }

    v16 = 2 * v7;
    v17 = -v7;
    v18 = &v5[-v7];
    v19 = *v18;
    v20 = *v5;
    if (*v18 == *v5)
    {
      v21 = &v5[-v7];
    }

    else
    {
      v21 = &v5[v7];
      v22 = *v21;
      if (*v21 != v19 && v22 != v20)
      {
        if (v19 >= v22)
        {
          v24 = v21;
        }

        else
        {
          v24 = v18;
        }

        if (v20 > v22)
        {
          v24 = v5;
        }

        if (v19 >= v22)
        {
          v21 = v18;
        }

        if (v20 < v22)
        {
          v21 = v5;
        }

        if (v19 >= v20)
        {
          v21 = v24;
        }
      }
    }

    v25 = &v6[-v16];
    v26 = &v6[v17];
    v27 = *v25;
    v28 = *v26;
    if (*v25 != *v26)
    {
      v29 = *v6;
      if (v27 >= *v6)
      {
        v30 = (a1 + 8 * a3);
      }

      else
      {
        v30 = v25;
      }

      if (v28 > v29)
      {
        v30 = v26;
      }

      if (v27 < v29)
      {
        v25 = (a1 + 8 * a3);
      }

      if (v28 < v29)
      {
        v25 = v26;
      }

      if (v27 >= v28)
      {
        v25 = v30;
      }

      if (v29 == v27 || v29 == v28)
      {
        v25 = (a1 + 8 * a3);
      }
    }
  }

  v32 = *v11;
  v33 = *v21;
  if (*v11 == *v21)
  {
    v21 = v11;
  }

  else
  {
    v34 = *v25;
    if (*v25 == v32 || v34 == v33)
    {
      v21 = v25;
    }

    else if (v32 >= v33)
    {
      if (v33 <= v34)
      {
        if (v32 >= v34)
        {
          v21 = v25;
        }

        else
        {
          v21 = v11;
        }
      }
    }

    else if (v33 >= v34)
    {
      if (v32 >= v34)
      {
        v21 = v11;
      }

      else
      {
        v21 = v25;
      }
    }
  }

  v36 = *v21;
  *v21 = *v6;
  *v6 = v36;
  v37 = *v4;
  v38 = a3 - a2;
  if (a3 > a2)
  {
    v39 = v4 + 1;
    do
    {
      v40 = *v39;
      if (v37 <= v36)
      {
        *(v39 - 1) = *(a1 + 8 * a2);
        *(a1 + 8 * a2++) = v37;
      }

      ++v39;
      v37 = v40;
      --v38;
    }

    while (v38);
    v37 = *(a1 + 8 * a2);
    v36 = *v6;
  }

  *(a1 + 8 * a2) = v36;
  *v6 = v37;
  return a2;
}

void _qsort_big_oid_t_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __message_assert(a1, a2, a3, a4, a5, a6, a7, a8, "qsort_oids.c");
  MEMORY[0xBAD] = -559038737;
  abort();
}

void nosymlink_chown_chmod_directory_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231B25000, MEMORY[0x277D86220], v0, "Changing user ID (%u -> %u): %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void nosymlink_chown_chmod_directory_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231B25000, MEMORY[0x277D86220], v0, "Changing group ID (%u -> %u): %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void nosymlink_chown_chmod_directory_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231B25000, MEMORY[0x277D86220], v0, "Modifying permissions (%o -> %o): %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void SIValueSet<unsigned long long>::SIValueSetInsert()
{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1650, "s->sharedDepth>=0", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1670, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", "");
  OUTLINED_FUNCTION_0_0();
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>()
{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", "");
  OUTLINED_FUNCTION_0_0();
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_vint(unint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v3 = v2_writeVInt64(v6, 0, a1);
  result = store_stream_write_bytes(a2, v6, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_vint32(char a1, unsigned int a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  if (a1)
  {
    LOBYTE(v7[0]) = a2;
    v4 = 1;
  }

  else if (a2 >> 14)
  {
    if (a2 >> 21)
    {
      if (a2 >> 28)
      {
        LOBYTE(v7[0]) = -16;
        *(v7 + 1) = a2;
        v4 = 5;
      }

      else
      {
        LOBYTE(v7[0]) = HIBYTE(a2) | 0xE0;
        BYTE1(v7[0]) = BYTE2(a2);
        BYTE2(v7[0]) = BYTE1(a2);
        BYTE3(v7[0]) = a2;
        v4 = 4;
      }
    }

    else
    {
      LOBYTE(v7[0]) = BYTE2(a2) | 0xC0;
      BYTE1(v7[0]) = BYTE1(a2);
      BYTE2(v7[0]) = a2;
      v4 = 3;
    }
  }

  else
  {
    LOBYTE(v7[0]) = BYTE1(a2) | 0x80;
    BYTE1(v7[0]) = a2;
    v4 = 2;
  }

  result = store_stream_write_bytes(a3, v7, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_vint32(uint64_t a1, _DWORD *a2)
{
  if (OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8], v9, v10, v11, v12) != 1)
  {
    goto LABEL_12;
  }

  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v4 = 2;
  v5 = 3;
  if (v10 >= 0xF0u)
  {
    v5 = 4;
  }

  if (v10 >= 0xE0u)
  {
    v4 = v5;
  }

  v6 = v10 <= 0xBFu ? 1 : v4;
  if (store_stream_read_bytes(a1, &v10 + 1, v6) == v6)
  {
LABEL_11:
    v9 = 0;
    result = v2_readVInt32(&v10, &v9);
  }

  else
  {
LABEL_12:
    result = 0;
  }

  *a2 = result;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_vint(uint64_t a1, unint64_t *a2)
{
  if (OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8], v7, v8, v9, v10) == 1 && ((v4 = v2_vInt64DataSize(v8), v4 == 1) || store_stream_read_bytes(a1, &v8 + 1, (v4 - 1)) == (v4 - 1)))
  {
    v7 = 0;
    result = v2_readVInt64(&v8, &v7);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void SIValueSet<unsigned long long>::SIValueSet()
{
  OUTLINED_FUNCTION_0_0();
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SIValueSet<unsigned long long>::_SIValueSetAddSortedValues()
{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 2014, "s->sharedDepth>=0", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 2026, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 2039, "s->sharedDepth", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1998, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", "");
  OUTLINED_FUNCTION_0_0();
}

void SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk()
{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1380, "startPrefix == (startPrefix & startMask)", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1331, "holder->GetRawCount() <= (63)", "");
  OUTLINED_FUNCTION_0_0();
}

void journalStateSKJLogging(void *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = +[SKGActivityJournal sharedJournal];
  v14[0] = &unk_2846E76E0;
  if (v3)
  {
    v5 = *(v3 + 4);
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 1);
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_4:
  v8 = v7;
  v9 = [v8 taskName];
  v14[1] = &unk_2846E76F8;
  v15[0] = v9;
  if (v3)
  {
    v10 = *(v3 + 3);
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:getCSIndexTypeShortNameCString(v10)];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v4 addEventWithType:a2 params:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void SDTransactionDone_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "SDTransactionDone, %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void launchPriorityTask_cold_1(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void launchEmbeddingsTask_cold_1(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void launchKeyphrasesTask_cold_1(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void launchPreExtractionTask_cold_1(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void launchQueryUpdatesTask_cold_3(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(a1, a2);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void purgeOldEventFilesAtRootPath_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_6(&dword_231B25000, v5, v6, "### Unable to purge file at path <%@>");
}

void __purgeOldEventFilesAtRootPath_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "### error enumerating directory to files to purge: %@, %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void setDirstatsTrackingOnEventsPath_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6(&dword_231B25000, v1, v2, "setDirstatsTrackingOnEventsPath fsctl failed with errno: %d", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void calculateDirectorySize_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6(&dword_231B25000, v1, v2, "fsctl failed errno: %d", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void SKGDaemonMain_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6(&dword_231B25000, v1, v2, "unable to getrlimit, error %d.", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void SKGDaemonMain_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6(&dword_231B25000, v1, v2, "unable to setrlimit, error %d.", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void SKGDaemonMain_cold_3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315138;
  v5 = v2;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "Sandbox initialization failed, error:%s\n", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t enumerateInfoInString_cold_3()
{
  dlerror();
  v0 = abort_report_np();
  return +[(SKGProcessorTaskManager *)v0];
}

void __saveHistoricalReport_block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void deferTask_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  OUTLINED_FUNCTION_1_11(&dword_231B25000, v1, v1, "Failed to defer task %@: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void createCascadeRootDirectory_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = cascadePath();
  OUTLINED_FUNCTION_0_1();
  v8 = a1;
  OUTLINED_FUNCTION_1_11(&dword_231B25000, a2, v5, "### unable to create cascade root directory %@ with error (%@)", v7);

  v6 = *MEMORY[0x277D85DE8];
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = MEMORY[0x28210F330](calendar, smallerUnit, biggerUnit, at);
  result.length = v5;
  result.location = v4;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}