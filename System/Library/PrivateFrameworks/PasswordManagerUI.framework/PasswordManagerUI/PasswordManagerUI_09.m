unint64_t sub_21C7EC61C()
{
  result = qword_27CDEBCB0;
  if (!qword_27CDEBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBCB0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21C7EC68C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C7EC6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C7EC740@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  LODWORD(v16) = a1;
  v17 = a2;
  v18 = sub_21CB82A74();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBCB8, &qword_21CBA33B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBCC0, &qword_21CBA33C0);
  v12 = sub_21C6EADEC(&qword_27CDEBCC8, &qword_27CDEBCC0, &qword_21CBA33C0);
  sub_21CB84354();
  sub_21CB81E94();
  if ((v19 & 1) != 0 || (v16 & 1) == 0)
  {
    v19 = MEMORY[0x277D84F90];
    v16 = sub_21C7ECA18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBCD8, &qword_21CBA33C8);
    sub_21C6EADEC(&qword_27CDEBCE0, &qword_27CDEBCD8, &qword_21CBA33C8);
    v13 = v18;
    sub_21CB85F14();
  }

  else
  {
    sub_21CB82A64();
    v13 = v18;
  }

  v19 = v11;
  v20 = v12;
  swift_getOpaqueTypeConformance2();
  sub_21CB84954();
  (*(v2 + 8))(v5, v13);
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_21C7ECA18()
{
  result = qword_27CDEBCD0;
  if (!qword_27CDEBCD0)
  {
    sub_21CB82A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBCD0);
  }

  return result;
}

uint64_t (*sub_21C7ECA88())()
{
  sub_21C7ECAF4();
  sub_21CB82F94();
  *(swift_allocObject() + 16) = v1;
  return sub_21C7A2124;
}

unint64_t sub_21C7ECAF4()
{
  result = qword_27CDEBCE8;
  if (!qword_27CDEBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBCE8);
  }

  return result;
}

uint64_t sub_21C7ECB58(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v37 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v38 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v16 = *(v39 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = v34 - v17;
  v19 = *(v7 + 48);
  if (v19(a1, 1, v6) == 1)
  {
    v20 = 0;
  }

  else
  {
    v34[1] = a3;
    v35 = v7;
    v21 = TupleTypeMetadata2;
    v22 = a1;
    v36 = v21;
    v23 = *(v21 + 48);
    v24 = *(v12 + 16);
    v24(v18, v40, v4);
    v40 = v23;
    v24(&v18[v23], v22, v4);
    if (v19(v18, 1, v6) == 1)
    {
      if (v19(&v18[v40], 1, v6) == 1)
      {
        v20 = 1;
      }

      else
      {
        v12 = v39;
        v4 = v36;
        v20 = 0;
      }
    }

    else
    {
      v25 = v36;
      v26 = v38;
      v24(v38, v18, v4);
      v27 = v40;
      if (v19(&v18[v40], 1, v6) == 1)
      {
        (*(v35 + 8))(v26, v6);
        v20 = 0;
        v12 = v39;
        v4 = v25;
      }

      else
      {
        v28 = v35;
        v29 = &v18[v27];
        v30 = v37;
        (*(v35 + 32))(v37, v29, v6);
        v31 = v26;
        v20 = sub_21CB85574();
        v32 = *(v28 + 8);
        v32(v30, v6);
        v32(v31, v6);
      }
    }

    (*(v12 + 8))(v18, v4);
  }

  return v20 & 1;
}

uint64_t sub_21C7ECF08@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = qword_27CDEA4C0;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v12);

  type metadata accessor for PMAccountsState();
  sub_21C705E20(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v4 = sub_21CB82674();
  v6 = v5;

  a1[2] = v4;
  a1[3] = v6;
  a1[4] = swift_getKeyPath();
  v7 = type metadata accessor for PMAccountPickerViewContent();
  v8 = v7[7];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v7[8];
  sub_21C7ED10C();
  sub_21CB81FA4();
  *v9 = v12;
  *(v9 + 1) = v13;
  v9[16] = v14;
  *(a1 + v7[9]) = 0;
  type metadata accessor for PMAccountPickerModel();
  sub_21C705E20(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel);
  result = sub_21CB82674();
  *a1 = result;
  a1[1] = v11;
  return result;
}

unint64_t sub_21C7ED10C()
{
  result = qword_27CDEBD70;
  if (!qword_27CDEBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBD70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PMAccountPickerViewContent.FocusElement(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PMAccountPickerViewContent.FocusElement(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata accessor for PMAccountPickerViewContent()
{
  result = qword_27CDEBD10;
  if (!qword_27CDEBD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7ED2BC()
{
  sub_21C7ED390();
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      sub_21C7E4F08();
      if (v2 <= 0x3F)
      {
        sub_21C70DC98();
        if (v3 <= 0x3F)
        {
          sub_21C7ED424();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C7ED390()
{
  if (!qword_27CDEBD20)
  {
    type metadata accessor for PMAccountPickerModel();
    sub_21C7FD70C(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEBD20);
    }
  }
}

void sub_21C7ED424()
{
  if (!qword_27CDEBD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD60, &unk_21CBA35A0);
    sub_21C7ED494();
    v0 = sub_21CB81FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEBD58);
    }
  }
}

unint64_t sub_21C7ED494()
{
  result = qword_27CDEBD68;
  if (!qword_27CDEBD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD60, &unk_21CBA35A0);
    sub_21C7ED10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBD68);
  }

  return result;
}

uint64_t sub_21C7ED534(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_21C7ED590()
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](0);
  return sub_21CB864D4();
}

uint64_t sub_21C7ED5D4()
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](0);
  return sub_21CB864D4();
}

uint64_t sub_21C7ED614@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for PMAccountPickerViewContent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = v5;
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBD88, &qword_21CBA3668);
  v55 = *(v54 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v9 = &v44 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBD90, &qword_21CBA3670);
  *&v58 = *(v57 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  *&v61 = &v44 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBD98, &qword_21CBA3678);
  v12 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v44 - v13;
  sub_21C7EE08C();
  v14 = *v1;
  v69 = v1[1];
  v70 = v14;
  v53 = v1;
  v68 = type metadata accessor for PMAccountPickerModel();
  v63 = sub_21C7FD70C(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v49 = v82;
  v77 = v80;
  v78 = v81;
  v79 = v82;
  v64 = type metadata accessor for PMAccountPickerViewContent;
  v52 = v6;
  sub_21C7FCBD8(v1, v6, type metadata accessor for PMAccountPickerViewContent);
  v66 = *(v3 + 80);
  v15 = (v66 + 16) & ~v66;
  v62 = v15;
  v16 = swift_allocObject();
  v65 = type metadata accessor for PMAccountPickerViewContent;
  sub_21C7FD754(v6, v16 + v15, type metadata accessor for PMAccountPickerViewContent);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDB0, &qword_21CBA36B8);
  v47 = sub_21C6EADEC(&qword_27CDEBDB8, &qword_27CDEBD88, &qword_21CBA3668);
  v48 = sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0);
  v17 = type metadata accessor for PMAddAccountView();
  v18 = sub_21CB83994();
  v51 = v18;
  v19 = sub_21C7FD70C(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView);
  *&v73 = v17;
  *(&v73 + 1) = v18;
  *&v74 = v19;
  *(&v74 + 1) = MEMORY[0x277CDE2B8];
  v50 = MEMORY[0x277CDEB40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v54;
  sub_21CB847C4();

  v22 = v21;
  (*(v55 + 8))(v9, v21);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v23 = v53;
  v24 = v52;
  v25 = v64;
  sub_21C7FCBD8(v53, v52, v64);
  v26 = v62;
  v27 = swift_allocObject();
  sub_21C7FD754(v24, v27 + v26, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDD0, &qword_21CBB0460);
  *&v73 = v22;
  *(&v73 + 1) = v46;
  *&v74 = v45;
  *(&v74 + 1) = v47;
  v75 = v48;
  v76 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = type metadata accessor for PMGeneratedPasswordsLogView();
  v29 = sub_21C7FD70C(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  *&v73 = v28;
  *(&v73 + 1) = v51;
  *&v74 = v29;
  *(&v74 + 1) = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v30 = v56;
  v31 = v57;
  v32 = v61;
  sub_21CB847B4();

  (*(v58 + 8))(v32, v31);
  v33 = v23;
  sub_21C7FCBD8(v23, v24, v25);
  v34 = v62;
  v35 = swift_allocObject();
  v36 = v65;
  sub_21C7FD754(v24, v35 + v34, v65);
  v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDE0, &qword_21CBA36F0) + 36));
  *v37 = sub_21C7FB278;
  v37[1] = v35;
  v37[2] = 0;
  v37[3] = 0;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v61 = v73;
  v58 = v74;
  v38 = v75;
  sub_21C7FCBD8(v33, v24, v64);
  v39 = swift_allocObject();
  sub_21C7FD754(v24, v39 + v34, v36);
  v40 = v30 + *(v59 + 36);
  v41 = v58;
  *v40 = v61;
  *(v40 + 16) = v41;
  *(v40 + 32) = v38;
  *(v40 + 40) = &unk_21CBA3728;
  *(v40 + 48) = v39;
  v80 = sub_21C7EF634();
  v81 = v42;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v72 = v33;
  v71 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDE8, &qword_21CBA3758);
  sub_21C7FB378();
  sub_21C71F3FC();
  sub_21C7FB6BC();
  sub_21CB84754();

  return sub_21C6EA794(v30, &qword_27CDEBD98, &qword_21CBA3678);
}

uint64_t sub_21C7EE08C()
{
  v1 = *(v0 + 8);
  sub_21CB858B4();

  v2 = sub_21CB858A4();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v1;

  v5 = sub_21CB858A4();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  sub_21CB84F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED8, &qword_21CBA3940);
  sub_21C6EADEC(&qword_27CDEBEE0, &qword_27CDEBED0, &unk_21CBA1A60);
  sub_21C6EADEC(&qword_27CDEBEE8, &qword_27CDEBED0, &unk_21CBA1A60);
  sub_21C6EADEC(&qword_27CDEBEF0, &qword_27CDEBED0, &unk_21CBA1A60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBEF8, &qword_21CBA3948);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF00, &qword_21CBA3950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF08, &qword_21CBA3958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF10, &qword_21CBA3960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF18, &qword_21CBA3968);
  sub_21C7FB938();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBFA0, &qword_21CBA39A0);
  sub_21C6EADEC(&qword_27CDEBFA8, &qword_27CDEBFA0, &qword_21CBA39A0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C7FBDD0();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82914();
}

uint64_t sub_21C7EE420(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7EE49C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v5 = sub_21CB83994();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAddAccountView();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7FD70C(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);

  *v13 = sub_21CB82674();
  v13[1] = v15;
  v13[2] = 0x4079000000000000;
  v16 = v10[6];
  *(v13 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v17 = v10[7];
  sub_21C721B58();
  sub_21CB81FA4();
  v18 = v10[8];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v20 = (v13 + v18);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v28);

  type metadata accessor for PMGroupsStore();
  sub_21C7FD70C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v21 = sub_21CB82674();
  v23 = v22;

  *v20 = v21;
  v20[1] = v23;
  v24 = v13 + v10[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v28 = 0x756F636341646461;
  v29 = 0xEA0000000000746ELL;
  v25 = *(a2 + *(type metadata accessor for PMAccountPickerViewContent() + 36));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C7FD70C(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView);
  sub_21CB84524();
  (*(v6 + 8))(v9, v5);
  return sub_21C719180(v13, type metadata accessor for PMAddAccountView);
}

uint64_t sub_21C7EE83C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C7EE8BC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7EE930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMGeneratedPasswordsLogView();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v27 = *(&v33 + 1);
  v28 = v33;
  swift_unknownObjectWeakInit();
  v13 = v8[5];
  *&v11[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v14 = v8[6];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v16 = &v11[v14];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v33);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C7FD70C(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v17 = sub_21CB82674();
  v19 = v18;

  *v16 = v17;
  v16[1] = v19;
  v20 = &v11[v8[8]];
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_21CB84D44();
  v21 = &v11[v8[9]];
  v31 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v22 = *(&v33 + 1);
  *v21 = v33;
  *(v21 + 1) = v22;
  v23 = v8[10];
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v11[v23] = v33;
  swift_unknownObjectWeakAssign();

  v11[v8[7]] = 0;
  v24 = v27;
  *v20 = v28;
  *(v20 + 1) = v24;
  *(v20 + 2) = 0;
  *&v33 = 0xD000000000000012;
  *(&v33 + 1) = 0x800000021CB8F740;
  v25 = *(v29 + *(type metadata accessor for PMAccountPickerViewContent() + 36));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C7FD70C(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21CB84524();
  (*(v4 + 8))(v7, v3);
  return sub_21C719180(v11, type metadata accessor for PMGeneratedPasswordsLogView);
}

uint64_t sub_21C7EED5C(uint64_t a1)
{
  v27 = a1;
  v29 = sub_21CB853D4();
  v32 = *(v29 - 8);
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB85404();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccountPickerViewContent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = sub_21CB85424();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v26 = sub_21CB85CF4();
  sub_21CB85414();
  sub_21CB85434();
  v28 = *(v12 + 8);
  v28(v15, v11);
  sub_21C7FCBD8(v27, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_21C7FD754(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for PMAccountPickerViewContent);
  aBlock[4] = sub_21C7FB900;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C7FD70C(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  v22 = v29;
  sub_21CB85F14();
  v23 = v26;
  MEMORY[0x21CF157D0](v18, v7, v3, v21);
  _Block_release(v21);

  (*(v32 + 8))(v3, v22);
  (*(v30 + 8))(v7, v31);
  return (v28)(v18, v11);
}

uint64_t sub_21C7EF1EC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMAccountPickerViewContent() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE90, &qword_21CBA37F8);
  return sub_21CB81F64();
}

double sub_21C7EF264@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_21C7EF2EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21C7FB8AC(v2, v3, v4);
  return sub_21CB81DC4();
}

uint64_t sub_21C7EF380(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21CB858B4();
  v2[4] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_21C7EF418, v4, v3);
}

uint64_t sub_21C7EF418()
{
  v1 = *(v0[3] + 8);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_21C7EF4B4;
  v3 = v0[2];

  return sub_21C7AA740(v3);
}

uint64_t sub_21C7EF4B4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21C7EF5D4, v4, v3);
}

uint64_t sub_21C7EF5D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C7EF634()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v44 - v12;
  v14 = *(v0 + 8);
  v15 = *(v14 + 29);
  if (v15 && !*(v14 + 27))
  {
    v45 = *(v14 + 28);

    sub_21CB81014();
    sub_21CB81014();
    v44[0] = sub_21CB80FF4();
    v44[1] = v29;
    v30 = *(v7 + 8);
    v30(v10, v6);
    v30(v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21CBA15B0;
    v32 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
    swift_beginAccess();
    v33 = (*(v2 + 48))(&v14[v32], 1, v1);
    v34 = 0;
    v35 = 0;
    if (!v33)
    {
      sub_21C7FCBD8(&v14[v32], v5, type metadata accessor for PMAccount);
      v34 = PMAccount.effectiveTitle.getter();
      v35 = v36;
      sub_21C719180(v5, type metadata accessor for PMAccount);
    }

    v37 = MEMORY[0x277D837D0];
    *(v31 + 56) = MEMORY[0x277D837D0];
    v38 = sub_21C7C0050();
    if (v35)
    {
      v39 = v34;
    }

    else
    {
      v39 = 0;
    }

    v40 = 0xE000000000000000;
    if (v35)
    {
      v40 = v35;
    }

    *(v31 + 32) = v39;
    *(v31 + 40) = v40;
    *(v31 + 96) = v37;
    *(v31 + 104) = v38;
    v41 = v45;
    *(v31 + 64) = v38;
    *(v31 + 72) = v41;
    *(v31 + 80) = v15;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v7 + 8))(v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21CBA15B0;
    v17 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
    swift_beginAccess();
    v18 = (*(v2 + 48))(&v14[v17], 1, v1);
    v19 = 0;
    v20 = 0;
    if (!v18)
    {
      sub_21C7FCBD8(&v14[v17], v5, type metadata accessor for PMAccount);
      v19 = PMAccount.effectiveTitle.getter();
      v20 = v21;
      sub_21C719180(v5, type metadata accessor for PMAccount);
    }

    v22 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v23 = sub_21C7C0050();
    *(v16 + 64) = v23;
    if (v20)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    *(v16 + 32) = v24;
    *(v16 + 40) = v26;
    v28 = *(v14 + 26);
    v27 = *(v14 + 27);
    *(v16 + 96) = v22;
    *(v16 + 104) = v23;
    if (v27)
    {
      v25 = v27;
    }

    else
    {
      v28 = 0;
    }

    *(v16 + 72) = v28;
    *(v16 + 80) = v25;
  }

  v42 = sub_21CB85594();

  return v42;
}

uint64_t sub_21C7EFAC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v55 - v5;
  v70 = sub_21CB81024();
  v68 = *(v70 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB82A04();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccountPickerViewContent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = v14;
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v75 = *(v61 - 8);
  v16 = v75[8];
  MEMORY[0x28223BE20](v61);
  v69 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v55 - v19;
  MEMORY[0x28223BE20](v20);
  v74 = &v55 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  v76 = *(v65 - 8);
  v25 = v76[8];
  MEMORY[0x28223BE20](v65);
  v64 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v73 = &v55 - v28;
  v59 = type metadata accessor for PMAccountPickerViewContent;
  sub_21C7FCBD8(a1, v15, type metadata accessor for PMAccountPickerViewContent);
  v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v30 = swift_allocObject();
  v60 = type metadata accessor for PMAccountPickerViewContent;
  sub_21C7FD754(v15, v30 + v29, type metadata accessor for PMAccountPickerViewContent);
  sub_21CB84DA4();
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v31 = v61;
  sub_21CB84334();
  (*(v62 + 8))(v11, v63);
  v62 = v75[1];
  v63 = v75 + 1;
  (v62)(v24, v31);
  v57 = a1;
  v32 = v59;
  sub_21C7FCBD8(a1, v15, v59);
  v33 = swift_allocObject();
  sub_21C7FD754(v15, v33 + v29, type metadata accessor for PMAccountPickerViewContent);
  v77 = a1;
  v34 = v24;
  v56 = v24;
  sub_21CB84DA4();
  v35 = v66;
  sub_21CB81014();
  v36 = sub_21CB81004();
  v38 = v37;
  (*(v68 + 8))(v35, v70);
  v78 = v36;
  v79 = v38;
  v39 = v71;
  sub_21CB81EF4();
  v40 = sub_21CB81F14();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_21C7FCBD8(v57, v15, v32);
  v41 = swift_allocObject();
  sub_21C7FD754(v15, v41 + v29, v60);
  sub_21C71F3FC();
  v42 = v74;
  sub_21CB84DC4();
  v43 = v76[2];
  v44 = v64;
  v45 = v65;
  v43(v64, v73, v65);
  v46 = v75[2];
  v47 = v67;
  v46(v67, v34, v31);
  v48 = v69;
  v46(v69, v42, v31);
  v49 = v72;
  v43(v72, v44, v45);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE58, &unk_21CBA3788);
  v46(&v49[*(v50 + 48)], v47, v31);
  v46(&v49[*(v50 + 64)], v48, v31);
  v51 = v62;
  (v62)(v74, v31);
  v51(v56, v31);
  v52 = v51;
  v53 = v76[1];
  v53(v73, v45);
  v52(v48, v31);
  v52(v47, v31);
  return (v53)(v44, v45);
}

uint64_t sub_21C7F02D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C7F0404(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountPickerViewContent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21C7FCBD8(a1, v5, type metadata accessor for PMAccountPickerViewContent);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21C7FD754(v5, v13 + v12, type metadata accessor for PMAccountPickerViewContent);
  sub_21C98B308(0, 0, v9, &unk_21CBA37C8, v13);
}

uint64_t sub_21C7F05E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21C7F067C, v6, v5);
}

uint64_t sub_21C7F067C()
{
  v1 = *(*(v0 + 16) + 8);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21C7F0710;

  return sub_21C7A9ECC();
}

uint64_t sub_21C7F0710()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21C74FF00, v4, v3);
}

uint64_t sub_21C7F0830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  if (*(v9 + 232))
  {
    *(v9 + 216);
  }

  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v17[0] = v10;
  v17[1] = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_21C7F099C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-v4];
  v6 = *(a1 + 8);
  v7 = type metadata accessor for PMAccount(0);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
  swift_beginAccess();
  sub_21C7AE758(v5, v6 + v8);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v10[8] = 0;

  return sub_21CB81DC4();
}

uint64_t sub_21C7F0AD0@<X0>(uint64_t a1@<X8>)
{
  sub_21C7F0B2C();
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21C7F0B2C()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = v6[29];
  if (v7 && !v6[27])
  {
    v14 = v6[28];

    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21CBA0690;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_21C7C0050();
    *(v15 + 32) = v14;
    *(v15 + 40) = v7;
    v13 = sub_21CB85594();
  }

  else
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21CBA0690;
    v10 = v6[26];
    v9 = v6[27];
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_21C7C0050();
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = 0xE000000000000000;
    if (v9)
    {
      v12 = v9;
    }

    *(v8 + 32) = v11;
    *(v8 + 40) = v12;

    v13 = sub_21CB85594();
  }

  return v13;
}

uint64_t sub_21C7F0DA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for PMAccountPickerViewContent();
  v73 = *(v3 - 8);
  v72 = *(v73 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB82FD4();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v63 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF28, &qword_21CBA3970);
  v60[1] = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v60 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF18, &qword_21CBA3968);
  v12 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v14 = v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF08, &qword_21CBA3958);
  v16 = *(v15 - 8);
  v67 = v15;
  v68 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v61 = v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEF8, &qword_21CBA3948);
  v20 = *(v19 - 8);
  v69 = v19;
  v70 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v64 = v60 - v22;
  sub_21C7F1580(v11);
  v23 = *a1;
  v24 = a1[1];
  type metadata accessor for PMAccountPickerModel();
  sub_21C7FD70C(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v25 = v80;
  v26 = v81;
  v27 = v82;
  v28 = &v11[*(v8 + 36)];
  *v28 = v79;
  *(v28 + 1) = v25;
  *(v28 + 2) = v26;
  *(v28 + 3) = v27;
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  v28[48] = 0;
  *(v28 + 7) = 0;
  *(v28 + 8) = 0;
  v28[72] = 0;
  *(v28 + 73) = 257;
  *(v28 + 10) = 0;
  *(v28 + 11) = 0;
  v76 = 0;

  sub_21CB84D44();
  v29 = v78;
  v28[96] = v77;
  *(v28 + 13) = v29;
  v30 = sub_21CB81F94();
  v32 = v31;
  v34 = v33;

  v28[112] = v30 & 1;
  *(v28 + 15) = v32;
  v28[128] = v34 & 1;
  v35 = *(type metadata accessor for PMSearchable() + 48);
  *&v28[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v79 = sub_21C7FBF98();
  v80 = v36;
  sub_21C7FBA1C();
  sub_21C71F3FC();
  sub_21CB842F4();
  sub_21C6EA794(v11, &qword_27CDEBF28, &qword_21CBA3970);
  v37 = sub_21C7FC058();
  v38 = v62;
  v39 = &v14[*(v62 + 36)];
  *v39 = v37;
  v39[1] = v40;
  v42 = v65;
  v41 = v66;
  v43 = v63;
  (*(v65 + 104))(v63, *MEMORY[0x277CDDDC0], v66);
  v44 = sub_21C7FB938();

  v45 = v61;
  sub_21CB84684();
  (*(v42 + 8))(v43, v41);
  sub_21C6EA794(v14, &qword_27CDEBF18, &qword_21CBA3968);
  v75 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF10, &qword_21CBA3960);
  v79 = v38;
  v80 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBFA0, &qword_21CBA39A0);
  v49 = sub_21C6EADEC(&qword_27CDEBFA8, &qword_27CDEBFA0, &qword_21CBA39A0);
  v79 = v48;
  v80 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v64;
  v52 = v67;
  sub_21CB84894();
  v53 = v45;
  v54 = v52;
  (*(v68 + 8))(v53, v52);
  v55 = v71;
  sub_21C7FCBD8(a1, v71, type metadata accessor for PMAccountPickerViewContent);
  v56 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v57 = swift_allocObject();
  sub_21C7FD754(v55, v57 + v56, type metadata accessor for PMAccountPickerViewContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF00, &qword_21CBA3950);
  v79 = v54;
  v80 = v46;
  v81 = OpaqueTypeConformance2;
  v82 = v50;
  swift_getOpaqueTypeConformance2();
  sub_21C7FBDD0();
  v58 = v69;
  sub_21CB84564();

  return (*(v70 + 8))(v51, v58);
}

uint64_t sub_21C7F1580@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_21CB836B4();
  v4 = *(v3 - 8);
  v62 = v3;
  v63 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v7 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v60 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = v50 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v11 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = v50 - v14;
  v15 = type metadata accessor for PMAccountPickerViewContent();
  *&v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF48, &qword_21CBA3980);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v50 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF38, &qword_21CBA3978);
  v21 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = v50 - v22;
  v23 = v2[1];
  *&v53 = *v2;
  v51 = v23;
  v52 = type metadata accessor for PMAccountPickerModel();
  sub_21C7FD70C(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v71 = v68;
  v72 = v69;
  v73 = v70;
  v67 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0B0, &qword_21CBA3BB0);
  sub_21C7FBD28();
  sub_21C7FC33C();
  sub_21CB83F24();
  v24 = sub_21CB85214();
  v26 = v25;
  v27 = &v20[*(v17 + 36)];
  sub_21C7F3C38(v2, v27);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
  *v28 = v24;
  v28[1] = v26;
  sub_21C7FCBD8(v2, v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v29 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v30 = swift_allocObject();
  sub_21C7FD754(v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for PMAccountPickerViewContent);
  sub_21C7FBC44();
  v31 = v65;
  sub_21CB84214();

  sub_21C6EA794(v20, &qword_27CDEBF48, &qword_21CBA3980);
  v32 = v51;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v54 = v68;
  v53 = v69;
  v52 = v70;
  v33 = &v31[*(v66 + 36)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF88, &qword_21CBA3998);
  v50[1] = v34[9];
  v35 = type metadata accessor for PMAccount(0);
  v36 = *(*(v35 - 8) + 56);
  v37 = v55;
  v36(v55, 1, 1, v35);
  sub_21C6EDBAC(v37, v56, &unk_27CDEBE60, &unk_21CB9FF40);
  swift_retain_n();
  sub_21CB84D44();
  sub_21C6EA794(v37, &unk_27CDEBE60, &unk_21CB9FF40);
  v38 = v34[10];
  v39 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v40 = v58;
  (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
  v36((v40 + *(v59 + 20)), 1, 1, v35);
  sub_21C7FCBD8(v40, v60, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21CB84D44();
  sub_21C719180(v40, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v41 = v34[13];
  v42 = &v33[v34[12]];
  *&v33[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v43 = &v33[v34[14]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = v53;
  *v33 = v54;
  *(v33 + 1) = v44;
  *(v33 + 4) = v52;
  v45 = &v33[v34[11]];
  *v45 = sub_21C7FC45C;
  v45[1] = v32;
  *v42 = sub_21C7FC460;
  v42[1] = v32;
  v46 = v61;
  sub_21CB836A4();
  sub_21C7FBB34();
  v47 = v65;
  v48 = v62;
  sub_21CB849F4();
  (*(v63 + 8))(v46, v48);
  return sub_21C6EA794(v47, &qword_27CDEBF38, &qword_21CBA3978);
}

uint64_t sub_21C7F1DC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBFA0, &qword_21CBA39A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_21C7F1EE4(&v7 - v3);
  v5 = sub_21C6EADEC(&qword_27CDEBFA8, &qword_27CDEBFA0, &qword_21CBA39A0);
  MEMORY[0x21CF131E0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C7F1EE4@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC008, &unk_21CBA3A90);
  v2 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v4 = &v33 - v3;
  v5 = sub_21CB83604();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC018, &qword_21CBA3AA0);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC020, &qword_21CBA3AA8);
  v15 = *(v14 - 8);
  v16 = v15;
  v33 = v14;
  v34 = v15;
  v17 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v35 = &v33 - v18;
  sub_21C7FA0C8(&v33 - v18);
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC028, &qword_21CBA3AB0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC030, &qword_21CBA3AB8);
  v20 = sub_21C6EADEC(&qword_27CDEC038, &qword_27CDEC030, &qword_21CBA3AB8);
  v44 = v19;
  v45 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v13;
  sub_21CB851B4();
  sub_21CB835C4();
  v43 = v1;
  type metadata accessor for PMPlatformRoleButton();
  sub_21C7FD70C(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  v22 = v36;
  sub_21CB82194();
  v23 = *(v41 + 48);
  v24 = *(v41 + 64);
  v25 = *(v16 + 16);
  v26 = v35;
  v25(v4, v35, v14);
  v27 = v37;
  v28 = v38;
  v29 = v21;
  (*(v37 + 16))(&v4[v23], v21, v38);
  v31 = v39;
  v30 = v40;
  (*(v39 + 16))(&v4[v24], v22, v40);
  sub_21CB83394();
  (*(v31 + 8))(v22, v30);
  (*(v27 + 8))(v29, v28);
  return (*(v34 + 8))(v26, v33);
}

uint64_t sub_21C7F2364@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBFD0, &unk_21CBA39B0);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBFC0, &qword_21CBA39A8);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for PMAccount(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  v46 = a2;
  v23 = *(a2 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v24 = v53[0];
  v53[0] = v21;
  v53[1] = v22;
  v52 = v53;
  sub_21C968D04(sub_21C7AE738, v24, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21C6EA794(v15, &unk_27CDEBE60, &unk_21CB9FF40);
    v25 = 1;
    v27 = v50;
    v26 = v51;
  }

  else
  {
    sub_21C7FD754(v15, v20, type metadata accessor for PMAccount);
    v28 = v44;
    sub_21C7FD754(v20, v44, type metadata accessor for PMAccount);
    v29 = *(v46 + 8);
    v30 = *(v29 + 32) > 1u;
    KeyPath = swift_getKeyPath();
    v32 = v28 + *(v45 + 36);
    *v32 = KeyPath;
    *(v32 + 8) = v30;
    if (*(v29 + 32) == 1)
    {
      v34 = *(v29 + 376);
      v33 = *(v29 + 384);
      v35 = swift_getKeyPath();
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      *(v36 + 24) = v33;

      v37 = sub_21C7FC1A0;
    }

    else
    {
      v35 = swift_getKeyPath();
      v37 = 0;
      v36 = 0;
    }

    v27 = v50;
    v38 = v28;
    v39 = v48;
    sub_21C716934(v38, v48, &unk_27CDEBFD0, &unk_21CBA39B0);
    v40 = (v39 + *(v27 + 36));
    *v40 = v35;
    v40[1] = v37;
    v40[2] = v36;
    v41 = v47;
    sub_21C716934(v39, v47, &unk_27CDEBFC0, &qword_21CBA39A8);
    v42 = v41;
    v26 = v51;
    sub_21C716934(v42, v51, &unk_27CDEBFC0, &qword_21CBA39A8);
    v25 = 0;
  }

  return (*(v49 + 56))(v26, v25, 1, v27);
}

BOOL sub_21C7F27C8()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v2 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return 0;
  }

  if (*(v1 + 32) != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v4 = *(v5 + 16);

  return v4 != 0;
}

uint64_t sub_21C7F28D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0E0, &qword_21CBA3CC0);
  v94 = *(v3 - 8);
  v95 = v3;
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v3);
  v93 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v102 = &v81 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0E8, &qword_21CBA3CC8);
  v8 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v81 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0F0, &qword_21CBA3CD0);
  v96 = *(v90 - 8);
  v10 = *(v96 + 64);
  MEMORY[0x28223BE20](v90);
  v85 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0F8, &qword_21CBA3CD8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = &v81 - v16;
  v83 = sub_21CB81024();
  v82 = *(v83 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC100, &qword_21CBA3CE0);
  v88 = *(v89 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v84 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC108, &qword_21CBA3CE8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v101 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v100 = &v81 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC110, &qword_21CBA3CF0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v81 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v81 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC118, &qword_21CBA3CF8);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v99 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v81 - v39;
  v97 = a1;
  v41 = *(a1 + 8);
  v42 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C6EDBAC(v41 + v42, v34, &unk_27CDEBE60, &unk_21CB9FF40);
  v43 = type metadata accessor for PMAccount(0);
  v44 = 1;
  LODWORD(v42) = (*(*(v43 - 8) + 48))(v34, 1, v43);
  sub_21C6EA794(v34, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v42 != 1 && [objc_opt_self() isSavedAccountHistoryInAutoFillEnabled])
  {
    sub_21C7F3508(v30);
    sub_21C755C04(v30, v40);
    v44 = 0;
  }

  v45 = *(v27 + 56);
  v46 = 1;
  v98 = v40;
  v45(v40, v44, 1, v26);
  v47 = v100;
  v48 = v90;
  v49 = v97;
  v50 = v89;
  v51 = v88;
  if (*(v41 + 256) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v52 = *(v104 + 16);

    if (v52 || *(v41 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions))
    {
      MEMORY[0x28223BE20](v53);
      v54 = v48;
      v55 = v81;
      sub_21CB81014();
      v56 = sub_21CB81004();
      v58 = v57;
      (*(v82 + 8))(v55, v83);
      v104 = v56;
      v105 = v58;
      sub_21C71F3FC();
      v104 = sub_21CB84054();
      v105 = v59;
      v106 = v60 & 1;
      v107 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC220, &qword_21CBA3D80);
      sub_21C6EADEC(&qword_27CDEC228, &qword_27CDEC220, &qword_21CBA3D80);
      v62 = v84;
      v48 = v54;
      sub_21CB85034();
      (*(v51 + 32))(v47, v62, v50);
      v46 = 0;
    }
  }

  v63 = 1;
  (*(v51 + 56))(v47, v46, 1, v50);
  v64 = sub_21C7F27C8();
  if (v64)
  {
    MEMORY[0x28223BE20](v64);
    sub_21C7F655C(v49, &v104);
    sub_21C7F6844(v49, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC140, &unk_21CBA3D10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC1D8, &qword_21CBA3D60);
    sub_21C7FC4F4();
    sub_21C6EADEC(&qword_27CDEC1E0, &qword_27CDEC1D8, &qword_21CBA3D60);
    sub_21C7FCA10();
    v65 = v85;
    v49 = v97;
    sub_21CB85044();
    (*(v96 + 32))(v103, v65, v48);
    v63 = 0;
  }

  v66 = v103;
  v67 = (*(v96 + 56))(v103, v63, 1, v48);
  MEMORY[0x28223BE20](v67);
  sub_21C7F97DC(v49, &v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC120, &qword_21CBA3D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC128, &qword_21CBA3D08);
  sub_21C7FC470();
  sub_21C7FC5F4();
  v68 = v102;
  sub_21CB85034();
  v69 = v99;
  sub_21C6EDBAC(v98, v99, &qword_27CDEC118, &qword_21CBA3CF8);
  v70 = v101;
  sub_21C6EDBAC(v47, v101, &qword_27CDEC108, &qword_21CBA3CE8);
  v71 = v91;
  sub_21C6EDBAC(v66, v91, &qword_27CDEC0F8, &qword_21CBA3CD8);
  v73 = v93;
  v72 = v94;
  v74 = *(v94 + 16);
  v75 = v68;
  v76 = v95;
  v74(v93, v75, v95);
  v77 = v92;
  sub_21C6EDBAC(v69, v92, &qword_27CDEC118, &qword_21CBA3CF8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC1D0, &qword_21CBA3D58);
  sub_21C6EDBAC(v70, v77 + v78[12], &qword_27CDEC108, &qword_21CBA3CE8);
  sub_21C6EDBAC(v71, v77 + v78[16], &qword_27CDEC0F8, &qword_21CBA3CD8);
  v74((v77 + v78[20]), v73, v76);
  v79 = *(v72 + 8);
  v79(v102, v76);
  sub_21C6EA794(v103, &qword_27CDEC0F8, &qword_21CBA3CD8);
  sub_21C6EA794(v100, &qword_27CDEC108, &qword_21CBA3CE8);
  sub_21C6EA794(v98, &qword_27CDEC118, &qword_21CBA3CF8);
  v79(v73, v76);
  sub_21C6EA794(v71, &qword_27CDEC0F8, &qword_21CBA3CD8);
  sub_21C6EA794(v101, &qword_27CDEC108, &qword_21CBA3CE8);
  return sub_21C6EA794(v99, &qword_27CDEC118, &qword_21CBA3CF8);
}

uint64_t sub_21C7F3508@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_21CB81024();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC230, &qword_21CBA3D88);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = &v54 - v7;
  v8 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - v14;
  v16 = type metadata accessor for PMAccount(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  v21 = *(v1 + 8);
  v22 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C6EDBAC(v21 + v22, v15, &unk_27CDEBE60, &unk_21CB9FF40);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21C6EA794(v15, &unk_27CDEBE60, &unk_21CB9FF40);
    return (*(v60 + 56))(v62, 1, 1, v61);
  }

  sub_21C7FD754(v15, v20, type metadata accessor for PMAccount);
  sub_21C7FCBD8(&v20[*(v16 + 24)], v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719180(v11, type metadata accessor for PMAccount.Storage);
    sub_21C719180(v20, type metadata accessor for PMAccount);
    return (*(v60 + 56))(v62, 1, 1, v61);
  }

  v24 = *v11;
  v25 = [*v11 historyItems];

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC238, &qword_21CBA3D90);
  v27 = sub_21CB85824();

  v28 = v27 >> 62;
  if (v27 >> 62)
  {
    v53 = sub_21CB85FA4();
    if (v53 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v53;
    }

    if ((v53 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v29 = v53;
    result = sub_21CB85FA4();
    if (result < 0)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    result = sub_21CB85FA4();
    if (result >= v30)
    {
      goto LABEL_11;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 < v30)
  {
    goto LABEL_39;
  }

LABEL_11:
  if ((v27 & 0xC000000000000001) == 0)
  {

    if (!v28)
    {
      goto LABEL_16;
    }

LABEL_19:

    v28 = sub_21CB861F4();
    v26 = v34;
    v30 = v35;
    if (v35)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_21CAC8CC4(v28, v33, v26, v30);
    v37 = v36;
LABEL_27:
    v40 = swift_unknownObjectRelease();
    goto LABEL_28;
  }

  if (v29)
  {
    v31 = 0;
    do
    {
      v32 = v31 + 1;
      sub_21CB860C4();
      v31 = v32;
    }

    while (v30 != v32);
  }

  if (v28)
  {
    goto LABEL_19;
  }

LABEL_16:
  v26 = 0;
  v28 = v27 & 0xFFFFFFFFFFFFFF8;
  v33 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
  v30 = (2 * v30) | 1;
  if ((v30 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v22 = v33;
  sub_21CB86364();
  swift_unknownObjectRetain_n();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    swift_unknownObjectRelease();
    v38 = MEMORY[0x277D84F90];
  }

  v39 = *(v38 + 16);

  if (__OFSUB__(v30 >> 1, v26))
  {
    goto LABEL_35;
  }

  if (v39 != (v30 >> 1) - v26)
  {
LABEL_36:
    swift_unknownObjectRelease();
    v33 = v22;
    goto LABEL_20;
  }

  v37 = swift_dynamicCastClass();
  v40 = swift_unknownObjectRelease();
  if (!v37)
  {
    v37 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

LABEL_28:
  MEMORY[0x28223BE20](v40);
  v41 = v56;
  *(&v54 - 4) = v55;
  *(&v54 - 3) = v20;
  *(&v54 - 2) = v37;
  *(&v54 - 1) = v27;
  sub_21CB81014();
  v42 = sub_21CB81004();
  v44 = v43;
  (*(v57 + 8))(v41, v58);
  v63 = v42;
  v64 = v44;
  sub_21C71F3FC();
  v63 = sub_21CB84054();
  v64 = v45;
  v65 = v46 & 1;
  v66 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC240, &qword_21CBA3D98);
  sub_21C6EADEC(&qword_27CDEC248, &qword_27CDEC240, &qword_21CBA3D98);
  v48 = v59;
  sub_21CB85034();

  v49 = v60;
  v50 = v62;
  v51 = v48;
  v52 = v61;
  (*(v60 + 32))(v62, v51, v61);
  (*(v49 + 56))(v50, 0, 1, v52);
  return sub_21C719180(v20, type metadata accessor for PMAccount);
}

uint64_t sub_21C7F3C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v12 = *(v4 - 8);
  v5 = *(v12 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  if (sub_21C7F3DE8())
  {
    v8 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21CB83784();

    (*(v12 + 32))(a2, v7, v4);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v12 + 56);

    return v10(a2, 1, 1, v4);
  }
}

BOOL sub_21C7F3DE8()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v2 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v3 = *(v5 + 16);

  return v3 == 0;
}

void sub_21C7F3EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v31 - v6;
  v8 = sub_21C7C6E04(a1);
  v11 = v8;
  v12 = v9;
  switch(v10)
  {
    case 0u:
      v21 = *(a2 + 8);
      sub_21C7A904C(v8, v9);
      v22 = v11;
      v23 = v12;
      v24 = 0;
LABEL_13:

      sub_21C7AE5A0(v22, v23, v24);
      return;
    case 0xFFu:
      return;
    case 3u:
      v13 = sub_21CAAA050();
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v17 = *(a2 + 8) + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_didSelectHistoryItem;
        v19 = *v17;
        v18 = *(v17 + 8);
        sub_21C7FCBD8(v11 + OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account, v7, type metadata accessor for PMAccount);
        v20 = type metadata accessor for PMAccount(0);
        (*(*(v20 - 8) + 56))(v7, 0, 1, v20);

        v19(v7, v15, v16);

        sub_21C7AE5A0(v11, v12, 3u);

        sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
        return;
      }

      v22 = v11;
      v23 = v12;
      v24 = 3;
      goto LABEL_13;
  }

  if (*(*(a2 + 8) + 32) == 1)
  {
    v25 = v10;
    if (v10 >= 3u)
    {
      v26 = *&v8[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
      v27 = *&v8[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account + 8];
    }

    else
    {
      sub_21C79B008(v8, v9, v10);
      v26 = v11;
      v27 = v12;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v31[0] = v26;
    v31[1] = v27;

    sub_21CB81DC4();
    sub_21C7AE5A0(v11, v12, v25);
  }

  else
  {
    v28 = v10;
    if (v10 >= 3u)
    {
      v29 = *&v8[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
      v30 = *&v8[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account + 8];
    }

    else
    {
      sub_21C79B008(v8, v9, v10);
      v29 = v11;
      v30 = v12;
    }

    sub_21C7A8470(v29, v30);
    sub_21C7AE5A0(v11, v12, v28);
  }
}

uint64_t sub_21C7F421C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7F42A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v3 = sub_21CB81024();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v55 - v13;
  v14 = type metadata accessor for PMAccountPickerViewContent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2C0, &unk_21CBA3EB8);
  v67 = *(v17 - 8);
  v68 = v17;
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v17);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v63 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v77 = v73;
  v61 = a1;
  sub_21C7FCBD8(a1, &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v55 = v16;
  v24 = swift_allocObject();
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7FD754(v56, v24 + v23, type metadata accessor for PMAccountPickerViewContent);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC268, qword_21CBA3DB8);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v26 = type metadata accessor for PMAccountPickerRow();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
  v28 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow);
  v29 = sub_21C7FC81C();
  v73 = v26;
  v74 = v27;
  v75 = v28;
  v76 = v29;
  v30 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_21C7FBD28();
  v73 = v25;
  v74 = &type metadata for PMAccountPickerRow.RowTag;
  v75 = OpaqueTypeConformance2;
  v76 = v32;
  swift_getOpaqueTypeConformance2();
  sub_21C7FD70C(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  v65 = v22;
  sub_21CB84FF4();
  if (*(v63 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions))
  {
    v33 = v57;
    sub_21CB81014();
    v34 = sub_21CB81004();
    v36 = v35;
    (*(v58 + 8))(v33, v59);
    v73 = v34;
    v74 = v36;
    v37 = v56;
    sub_21C7FCBD8(v61, v56, type metadata accessor for PMAccountPickerViewContent);
    v38 = swift_allocObject();
    sub_21C7FD754(v37, v38 + v23, type metadata accessor for PMAccountPickerViewContent);
    sub_21C71F3FC();
    v39 = v60;
    sub_21CB84DE4();
    v41 = v69;
    v40 = v70;
    v42 = v64;
    (*(v69 + 32))(v64, v39, v70);
    v30 = 0;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    v44 = v69;
    v43 = v70;
    v42 = v64;
  }

  (*(v44 + 56))(v42, v30, 1, v43);
  v46 = v66;
  v45 = v67;
  v47 = *(v67 + 16);
  v48 = v65;
  v49 = v68;
  v47(v66, v65, v68);
  v50 = v71;
  sub_21C6EDBAC(v42, v71, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v51 = v72;
  v47(v72, v46, v49);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2E0, &qword_21CBA3EC8);
  sub_21C6EDBAC(v50, &v51[*(v52 + 48)], &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v42, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v53 = *(v45 + 8);
  v53(v48, v49);
  sub_21C6EA794(v50, &qword_27CDEC2B8, &qword_21CBA3EB0);
  return (v53)(v46, v49);
}

uint64_t sub_21C7F4A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v57 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v53 = *(v55 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - v5;
  v6 = sub_21CB85C04();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3B0, &unk_21CBA1A50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for PMAccount.MockData(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PMAccount.Storage(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v50 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v48 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  v30 = *(type metadata accessor for PMAccount(0) + 24);
  v56 = a1;
  sub_21C7FCBD8(a1 + v30, v20, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7FD754(v20, v16, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v16[*(v13 + 64)], v29, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C719180(v16, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v31 = *v20;
    sub_21CB85C14();
  }

  sub_21CB85BE4();
  v32 = v51;
  (*(v51 + 56))(v26, 0, 1, v6);
  v33 = *(v9 + 48);
  sub_21C6EDBAC(v29, v12, &unk_27CDEC2F0, &unk_21CBA1660);
  sub_21C6EDBAC(v26, &v12[v33], &unk_27CDEC2F0, &unk_21CBA1660);
  v34 = *(v32 + 48);
  if (v34(v12, 1, v6) == 1)
  {
    sub_21C6EA794(v26, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C6EA794(v29, &unk_27CDEC2F0, &unk_21CBA1660);
    if (v34(&v12[v33], 1, v6) == 1)
    {
      sub_21C6EA794(v12, &unk_27CDEC2F0, &unk_21CBA1660);
      v35 = 2;
      goto LABEL_13;
    }

LABEL_9:
    sub_21C6EA794(v12, &qword_27CDEB3B0, &unk_21CBA1A50);
    v35 = 0;
    goto LABEL_13;
  }

  v36 = v50;
  sub_21C6EDBAC(v12, v50, &unk_27CDEC2F0, &unk_21CBA1660);
  if (v34(&v12[v33], 1, v6) == 1)
  {
    sub_21C6EA794(v26, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C6EA794(v29, &unk_27CDEC2F0, &unk_21CBA1660);
    (*(v32 + 8))(v36, v6);
    goto LABEL_9;
  }

  v37 = v49;
  (*(v32 + 32))(v49, &v12[v33], v6);
  sub_21C7FD70C(&qword_27CDEB3B8, MEMORY[0x277D49960]);
  v38 = v36;
  v39 = sub_21CB85574();
  v40 = *(v32 + 8);
  v40(v37, v6);
  sub_21C6EA794(v26, &unk_27CDEC2F0, &unk_21CBA1660);
  sub_21C6EA794(v29, &unk_27CDEC2F0, &unk_21CBA1660);
  v40(v38, v6);
  sub_21C6EA794(v12, &unk_27CDEC2F0, &unk_21CBA1660);
  if (v39)
  {
    v35 = 2;
  }

  else
  {
    v35 = 0;
  }

LABEL_13:
  v58 = 1;
  v59 = 0u;
  v60 = 0u;
  v61 = v35;
  v41 = v52;
  v42 = v56;
  sub_21C7F50F0(v56, &v58, v52);
  v44 = *v42;
  v43 = v42[1];
  v45 = v57;
  (*(v53 + 32))(v57, v41, v55);
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEA4D0, &unk_21CB9E5E0) + 36);
  *v46 = v44;
  *(v46 + 8) = v43;
  *(v46 + 16) = 256;
}

uint64_t sub_21C7F50F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v6 = *a2;
  v7 = *(a2 + 24);
  v43 = *(a2 + 8);
  v44 = v7;
  v8 = *(a2 + 40);
  v9 = type metadata accessor for PMAccount(0);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = v11;
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccountPickerViewContent();
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMAccountPickerRow();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16.n128_u64[1] == 2)
  {
    sub_21C7F9360(a1, v46);
    v37 = v49;
    v43 = v47;
    v44 = v48;
    v36 = v46[0];
  }

  else
  {
    v37 = v8;
    v36 = v6;
  }

  sub_21C7FCBD8(a1, v18, type metadata accessor for PMAccount);
  v19 = *(v3 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(a2, v45, &qword_27CDEC2A8, &qword_21CBA3E70);
  sub_21CB81DB4();

  v20 = v45[0];
  v34 = v45[1];
  v21 = v35;
  sub_21C7FCBD8(v3, v35, type metadata accessor for PMAccountPickerViewContent);
  v22 = v41;
  sub_21C7FCBD8(a1, v41, type metadata accessor for PMAccount);
  v23 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v24 = (v13 + *(v39 + 80) + v23) & ~*(v39 + 80);
  v25 = swift_allocObject();
  sub_21C7FD754(v21, v25 + v23, type metadata accessor for PMAccountPickerViewContent);
  v26 = sub_21C7FD754(v22, v25 + v24, type metadata accessor for PMAccount);
  v27 = &v18[v14[5]];
  *v27 = sub_21C7FCDFC;
  v27[1] = v25;
  v28 = &v18[v14[6]];
  *v28 = v36 & 1;
  v29 = v43;
  *(v28 + 24) = v44;
  *(v28 + 8) = v29;
  v28[40] = v37;
  v30 = &v18[v14[7]];
  v31 = v34;
  *v30 = v20;
  *(v30 + 1) = v31;
  MEMORY[0x28223BE20](v26);
  *(&v33 - 2) = a1;
  *(&v33 - 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC178, &unk_21CBA3D30);
  sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow);
  sub_21C7FC81C();
  sub_21CB84204();
  return sub_21C719180(v18, type metadata accessor for PMAccountPickerRow);
}

void sub_21C7F5570(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy);
    v6[4] = sub_21C7FD704;
    v6[5] = v1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_21C7ED534;
    v6[3] = &block_descriptor_194;
    v4 = _Block_copy(v6);
    v5 = v2;

    [v3 userSelectedAutoFillNearbyDevice:v5 completionHandler:v4];
    _Block_release(v4);
  }
}

uint64_t sub_21C7F5670@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = v71 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC310, &unk_21CBA3F10);
  v88 = *(v81 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v81);
  v76 = v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC318, &qword_21CBB26D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = v71 - v12;
  MEMORY[0x28223BE20](v13);
  v90 = v71 - v14;
  MEMORY[0x28223BE20](v15);
  v91 = v71 - v16;
  v75 = type metadata accessor for PMAccountPickerViewContent();
  v17 = *(v75 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v75);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2C0, &unk_21CBA3EB8);
  v83 = *(v19 - 8);
  v84 = v19;
  v20 = *(v83 + 64);
  MEMORY[0x28223BE20](v19);
  v82 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v71 - v23;
  v25 = *(a1 + 8);
  v96 = sub_21C7A7388();
  v77 = a1;
  sub_21C7FCBD8(a1, v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v26 = *(v17 + 80);
  v27 = (v26 + 16) & ~v26;
  v73 = v18;
  v71[1] = v26;
  v28 = swift_allocObject();
  v72 = v27;
  v74 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7FD754(v74, v28 + v27, type metadata accessor for PMAccountPickerViewContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC268, qword_21CBA3DB8);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v30 = type metadata accessor for PMAccountPickerRow();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
  v32 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow);
  v33 = sub_21C7FC81C();
  v92 = v30;
  v93 = v31;
  v34 = v81;
  v94 = v32;
  v95 = v33;
  v35 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_21C7FBD28();
  v92 = v29;
  v93 = &type metadata for PMAccountPickerRow.RowTag;
  v94 = OpaqueTypeConformance2;
  v95 = v37;
  swift_getOpaqueTypeConformance2();
  sub_21C7FD70C(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  v89 = v24;
  sub_21CB84FF4();
  if (sub_21C7A9BB0())
  {
    v38 = v77;
    v39 = v74;
    sub_21C7FCBD8(v77, v74, type metadata accessor for PMAccountPickerViewContent);
    v40 = v72;
    v41 = swift_allocObject();
    sub_21C7FD754(v39, v41 + v40, type metadata accessor for PMAccountPickerViewContent);
    v42 = v78;
    sub_21CB84DA4();
    v92 = 0xD000000000000012;
    v93 = 0x800000021CB8F740;
    v43 = *(v38 + *(v75 + 36));
    sub_21CB852C4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v44 = v76;
    v45 = v80;
    sub_21CB845E4();
    (*(v79 + 8))(v42, v45);
    (*(v88 + 32))(v91, v44, v34);
    v35 = 0;
  }

  v46 = *(v88 + 56);
  v47 = 1;
  v46(v91, v35, 1, v34);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v49 = v92;
  v48 = v93;

  v50 = (v48 >> 56) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v50 = v49 & 0xFFFFFFFFFFFFLL;
  }

  v51 = v90;
  v52 = v34;
  if (!v50 && [objc_opt_self() shouldAllowAddingNewPasswords])
  {
    v53 = v77;
    v54 = v74;
    sub_21C7FCBD8(v77, v74, type metadata accessor for PMAccountPickerViewContent);
    v55 = v72;
    v56 = swift_allocObject();
    sub_21C7FD754(v54, v56 + v55, type metadata accessor for PMAccountPickerViewContent);
    v57 = v78;
    sub_21CB84DA4();
    v92 = 0x756F636341646461;
    v93 = 0xEA0000000000746ELL;
    v58 = *(v53 + *(v75 + 36));
    sub_21CB852C4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v59 = v76;
    v60 = v80;
    sub_21CB845E4();
    (*(v79 + 8))(v57, v60);
    (*(v88 + 32))(v51, v59, v52);
    v47 = 0;
  }

  v46(v51, v47, 1, v52);
  v61 = v82;
  v62 = v83;
  v63 = *(v83 + 16);
  v64 = v84;
  v63(v82, v89, v84);
  v65 = v85;
  sub_21C6EDBAC(v91, v85, &qword_27CDEC318, &qword_21CBB26D0);
  v66 = v86;
  sub_21C6EDBAC(v51, v86, &qword_27CDEC318, &qword_21CBB26D0);
  v67 = v87;
  v63(v87, v61, v64);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC320, &qword_21CBA3F20);
  sub_21C6EDBAC(v65, &v67[*(v68 + 48)], &qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EDBAC(v66, &v67[*(v68 + 64)], &qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EA794(v90, &qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EA794(v91, &qword_27CDEC318, &qword_21CBB26D0);
  v69 = *(v62 + 8);
  v69(v89, v64);
  sub_21C6EA794(v66, &qword_27CDEC318, &qword_21CBB26D0);
  sub_21C6EA794(v65, &qword_27CDEC318, &qword_21CBB26D0);
  return (v69)(v61, v64);
}

uint64_t sub_21C7F6148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v13[0] = xmmword_21CBA3540;
  v13[1] = xmmword_21CBA3550;
  v14 = 1;
  v15 = 0;
  sub_21C7F50F0(a1, v13, v13 - v7);
  v10 = *a1;
  v9 = a1[1];
  (*(v5 + 32))(a2, v8, v4);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEA4D0, &unk_21CB9E5E0) + 36);
  *v11 = v10;
  *(v11 + 8) = v9;
  *(v11 + 16) = 257;
}

uint64_t sub_21C7F6290(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7F6304@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C7F6430@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C7F655C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *(a1 + 8);
  if (*(v12 + 256) == 1 && ((swift_getKeyPath(), swift_getKeyPath(), sub_21CB81DB4(), , , v13 = *(v35 + 16), , v13) || *(v12 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions)))
  {
    sub_21CB81014();
    sub_21CB81014();
    v14 = sub_21CB80FF4();
    v16 = v15;
    v17 = *(v5 + 8);
    v17(v8, v4);
    v17(v11, v4);
    *&v35 = v14;
    *(&v35 + 1) = v16;
    sub_21C71F3FC();
    v30 = sub_21CB84054();
    v31 = v18;
    v32 = v19 & 1;
    v33 = v20;
    v34 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v21 = *(v35 + 16);

    if (!v21)
    {
      v28 = 0uLL;
      v29 = -1;
      v27 = 0uLL;
      goto LABEL_9;
    }

    v23 = *(v12 + 128);
    *&v35 = *(v12 + 120);
    *(&v35 + 1) = v23;
    sub_21C71F3FC();

    v30 = sub_21CB84054();
    v31 = v25;
    v32 = v24 & 1;
    v33 = v26;
    v34 = 1;
  }

  result = sub_21CB83494();
  v27 = v36;
  v28 = v35;
  v29 = v37;
LABEL_9:
  *a2 = v28;
  *(a2 + 16) = v27;
  *(a2 + 32) = v29;
  return result;
}

uint64_t sub_21C7F6844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = type metadata accessor for PMAccountPickerViewContent();
  v87 = *(v3 - 8);
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = v5;
  v88 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC208, &qword_21CBA3D70);
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v6);
  v89 = v81 - v8;
  v97 = sub_21CB80964();
  v95 = *(v97 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v96 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21CB80974();
  v90 = *(v93 - 8);
  v11 = *(v90 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB80994();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v101 = v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC308, &qword_21CBA3ED8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v94 = v81 - v21;
  v102 = sub_21CB809E4();
  v100 = *(v102 - 8);
  v22 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v24 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v81 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC1F8, &qword_21CBA3D68);
  v103 = *(v28 - 8);
  v104 = v28;
  v29 = *(v103 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = v81 - v30;
  v32 = sub_21CB81024();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v40 = v106;
  v39 = v107;

  v41 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v41 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    goto LABEL_5;
  }

  v82 = v24;
  v42 = v101;
  v84 = v27;
  v43 = v100;
  v85 = v31;
  v44 = v102;
  v83 = v37;
  v45 = [objc_opt_self() mainBundle];
  v46 = [v45 safari_isPasswordsAppBundle];

  if (v46)
  {
LABEL_5:
    v47 = 1;
    v48 = v105;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81004();
    v81[1] = v50;
    (*(v33 + 8))(v36, v32);
    v51 = sub_21CB80BE4();
    (*(*(v51 - 8) + 56))(v42, 1, 1, v51);
    (*(v90 + 104))(v91, *MEMORY[0x277CC8BB0], v93);
    (*(v95 + 104))(v96, *MEMORY[0x277CC8B98], v97);
    sub_21CB80984();
    v52 = v94;
    sub_21CB809D4();
    v53 = v43;
    (*(v43 + 56))(v52, 0, 1, v44);
    v54 = v84;
    (*(v43 + 32))(v84, v52, v44);
    (*(v43 + 16))(v82, v54, v44);
    v55 = sub_21CB84044();
    v57 = v56;
    LOBYTE(v54) = v58;
    sub_21CB84B34();
    v59 = sub_21CB83FB4();
    v61 = v60;
    v63 = v62;

    sub_21C74A72C(v55, v57, v54 & 1);

    sub_21CB83EB4();
    v64 = sub_21CB84024();
    v66 = v65;
    v68 = v67;
    v70 = v69;

    sub_21C74A72C(v59, v61, v63 & 1);

    KeyPath = swift_getKeyPath();
    v72 = v88;
    sub_21C7FCBD8(v83, v88, type metadata accessor for PMAccountPickerViewContent);
    v73 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v74 = swift_allocObject();
    sub_21C7FD754(v72, v74 + v73, type metadata accessor for PMAccountPickerViewContent);
    v75 = v99;
    v76 = v89;
    v77 = &v89[*(v99 + 36)];
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC218, &qword_21CBA3D78) + 28);
    sub_21CB82474();
    (*(v53 + 8))(v84, v102);
    *v77 = KeyPath;
    *v76 = v64;
    *(v76 + 8) = v66;
    *(v76 + 16) = v68 & 1;
    *(v76 + 24) = v70;
    v79 = v85;
    sub_21C716934(v76, v85, &qword_27CDEC208, &qword_21CBA3D70);
    (*(v98 + 56))(v79, 0, 1, v75);
    v80 = v105;
    sub_21C716934(v79, v105, &qword_27CDEC1F8, &qword_21CBA3D68);
    v48 = v80;
    v47 = 0;
  }

  return (*(v103 + 56))(v48, v47, 1, v104);
}

uint64_t sub_21C7F7224(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB80BE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB82484();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 + *(type metadata accessor for PMAccountPickerViewContent() + 28);
  sub_21C95B2F0(v12);
  v14 = [objc_opt_self() passwordManagerURL];
  sub_21CB80B94();

  sub_21CB82454();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  return sub_21CB82464();
}

uint64_t sub_21C7F73E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v108 = a4;
  v107 = a3;
  v114 = a5;
  v96 = sub_21CB81024();
  v95 = *(v96 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v102 = *(v103 - 8);
  v9 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v99 = v92 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC250, &qword_21CBA3DA0);
  v113 = *(v117 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x28223BE20](v117);
  v101 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC258, &qword_21CBA3DA8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v122 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v121 = v92 - v19;
  v20 = type metadata accessor for PMAccount(0);
  v106 = *(v20 - 8);
  v115 = *(v106 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v116 = v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PMAccountPickerViewContent();
  v105 = *(v22 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC260, &qword_21CBA3DB0);
  v111 = *(v112 - 8);
  v24 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v123 = v92 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v92 - v31;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC268, qword_21CBA3DB8);
  v109 = *(v120 - 8);
  v33 = *(v109 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v92 - v36;
  memset(v132, 0, sizeof(v132));
  v133 = 2;
  v134 = 0;
  sub_21C7F50F0(a2, v132, v32);
  v38 = *a2;
  v39 = a2[1];
  (*(v29 + 32))(v37, v32, v28);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEA4D0, &unk_21CB9E5E0) + 36);
  v118 = v37;
  v41 = &v37[v40];
  *v41 = v38;
  *(v41 + 1) = v39;
  *(v41 + 8) = 257;
  v124 = v107;
  KeyPath = swift_getKeyPath();
  v98 = a1;
  sub_21C7FCBD8(a1, v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v97 = a2;
  v42 = v116;
  sub_21C7FCBD8(a2, v116, type metadata accessor for PMAccount);
  v43 = *(v105 + 80);
  v44 = (v43 + 16) & ~v43;
  v45 = *(v106 + 80);
  v105 = v23;
  v46 = (v23 + v45 + v44) & ~v45;
  v93 = v43;
  v92[0] = v45;
  v92[1] = v43 | v45;
  v47 = swift_allocObject();
  v106 = v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7FD754(v106, v47 + v44, type metadata accessor for PMAccountPickerViewContent);
  sub_21C7FD754(v42, v47 + v46, type metadata accessor for PMAccount);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4160, &qword_21CBA3DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC270, &qword_21CBA3E00);
  sub_21C6EADEC(&qword_27CDEC278, &qword_27CDF4160, &qword_21CBA3DF8);
  sub_21C7FD70C(&qword_27CDEC280, MEMORY[0x277CC9578]);
  v48 = type metadata accessor for PMAccountPickerRow();
  v49 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow);
  v50 = sub_21C7FBD28();
  *&v125 = v48;
  *(&v125 + 1) = &type metadata for PMAccountPickerRow.RowTag;
  *&v126 = v49;
  *(&v126 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  sub_21CB84FD4();
  if (v108 >> 62)
  {
    v51 = sub_21CB85FA4();
  }

  else
  {
    v51 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = 1;
  v53 = v121;
  v54 = v117;
  if (v51 >= 3)
  {
    v55 = v93;
    v56 = v92[0];
    v57 = v94;
    sub_21CB81014();
    v58 = sub_21CB81004();
    v60 = v59;
    (*(v95 + 8))(v57, v96);
    *&v125 = v58;
    *(&v125 + 1) = v60;
    v61 = v116;
    sub_21C7FCBD8(v97, v116, type metadata accessor for PMAccount);
    v62 = v106;
    sub_21C7FCBD8(v98, v106, type metadata accessor for PMAccountPickerViewContent);
    v63 = (v56 + 16) & ~v56;
    v64 = (v115 + v55 + v63) & ~v55;
    v65 = swift_allocObject();
    sub_21C7FD754(v61, v65 + v63, type metadata accessor for PMAccount);
    sub_21C7FD754(v62, v65 + v64, type metadata accessor for PMAccountPickerViewContent);
    sub_21C71F3FC();
    v66 = v99;
    sub_21CB84DE4();
    sub_21CB85224();
    sub_21CB82AC4();
    v67 = v101;
    v68 = v66;
    v54 = v117;
    (*(v102 + 32))(v101, v68, v103);
    v69 = &v67[*(v54 + 36)];
    v70 = v130;
    *(v69 + 4) = v129;
    *(v69 + 5) = v70;
    *(v69 + 6) = v131;
    v71 = v126;
    *v69 = v125;
    *(v69 + 1) = v71;
    v72 = v128;
    *(v69 + 2) = v127;
    *(v69 + 3) = v72;
    v73 = v67;
    v74 = v100;
    sub_21C716934(v73, v100, &qword_27CDEC250, &qword_21CBA3DA0);
    sub_21C716934(v74, v53, &qword_27CDEC250, &qword_21CBA3DA0);
    v52 = 0;
  }

  v75 = v53;
  (*(v113 + 56))(v53, v52, 1, v54);
  v76 = v109;
  v77 = *(v109 + 16);
  v78 = v119;
  v77(v119, v118, v120);
  v79 = v111;
  v80 = *(v111 + 16);
  v81 = v110;
  v82 = v112;
  v80(v110, v123, v112);
  sub_21C6EDBAC(v75, v122, &qword_27CDEC258, &qword_21CBA3DA8);
  v83 = v114;
  v84 = v78;
  v85 = v120;
  v77(v114, v84, v120);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC288, &qword_21CBA3E08);
  v80(&v83[*(v86 + 48)], v81, v82);
  v87 = &v83[*(v86 + 64)];
  v88 = v122;
  sub_21C6EDBAC(v122, v87, &qword_27CDEC258, &qword_21CBA3DA8);
  sub_21C6EA794(v121, &qword_27CDEC258, &qword_21CBA3DA8);
  v89 = *(v79 + 8);
  v89(v123, v82);
  v90 = *(v76 + 8);
  v90(v118, v85);
  sub_21C6EA794(v88, &qword_27CDEC258, &qword_21CBA3DA8);
  v89(v81, v82);
  return (v90)(v119, v85);
}

void sub_21C7F8134(id *a1)
{
  v1 = [*a1 date];
  sub_21CB80D94();
}

id sub_21C7F8194@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v49 = a3;
  v4 = type metadata accessor for PMAccountPickerViewContent();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccountPickerRow();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB80DD4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  *&v17 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 date];
  sub_21CB80D94();

  if (qword_27CDEA3C0 != -1)
  {
    swift_once();
  }

  v21 = qword_27CDF2488;
  v22 = sub_21CB80D24();
  v23 = [v21 stringFromDate_];

  v44 = sub_21CB855C4();
  v25 = v24;

  (*(v15 + 8))(v19, v14);
  v26 = v45;
  sub_21C7FCBD8(v45, v13, type metadata accessor for PMAccount);
  v27 = type metadata accessor for PMAccountPickerHistoryItem();
  v28 = objc_allocWithZone(v27);
  sub_21C7FCBD8(v13, &v28[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account], type metadata accessor for PMAccount);
  *&v28[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_configuration] = a1;
  v53.receiver = v28;
  v53.super_class = v27;
  swift_unknownObjectRetain();
  v50 = objc_msgSendSuper2(&v53, sel_init);
  sub_21C719180(v13, type metadata accessor for PMAccount);
  sub_21C7FCBD8(v26, v9, type metadata accessor for PMAccount);
  v29 = v47;
  v30 = *(v47 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v31 = v51;
  v32 = v52;
  v33 = v48;
  sub_21C7FCBD8(v29, v48, type metadata accessor for PMAccountPickerViewContent);
  v34 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v35 = swift_allocObject();
  sub_21C7FD754(v33, v35 + v34, type metadata accessor for PMAccountPickerViewContent);
  *(v35 + ((v5 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v36 = &v9[v6[5]];
  *v36 = sub_21C7FCD70;
  v36[1] = v35;
  v37 = &v9[v6[6]];
  *v37 = 1;
  *(v37 + 8) = xmmword_21CBA3560;
  *(v37 + 3) = v44;
  *(v37 + 4) = v25;
  v37[40] = 0;
  v38 = &v9[v6[7]];
  *v38 = v31;
  *(v38 + 1) = v32;
  v39 = v49;
  sub_21C7FD754(v9, v49, type metadata accessor for PMAccountPickerRow);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2A0, &qword_21CBA3E20) + 36);
  v41 = v50;
  *v40 = v50;
  *(v40 + 8) = 0;
  *(v40 + 16) = 259;

  return v41;
}

uint64_t sub_21C7F8654(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v2 = sub_21CB82484();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB80BE4();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB85614();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_21CB85CA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7C61D0(v16);
  v17 = sub_21CB85C84();
  v19 = v18;
  v35 = v9;
  v36 = v5;
  v37 = v6;
  (*(v13 + 8))(v16, v12);
  sub_21CB85604();
  v20 = sub_21CB855E4();
  if (!v21)
  {
    return sub_21C7A34C0(v17, v19);
  }

  v22 = v20;
  v23 = v21;
  v24 = v19;
  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC290, &unk_21CBA3E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  v27 = *MEMORY[0x277D49CA0];
  *(inited + 32) = sub_21CB855C4();
  *(inited + 40) = v28;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  sub_21CB126C0(inited);
  swift_setDeallocating();
  sub_21C6EA794(inited + 32, &unk_27CDF3320, &unk_21CBA0E30);
  v29 = sub_21CB85464();

  v30 = [v25 passwordManagerURLWithDictionary_];

  v31 = v35;
  sub_21CB80B94();

  v32 = v39 + *(type metadata accessor for PMAccountPickerViewContent() + 28);
  v33 = v36;
  sub_21C95B2F0(v36);
  sub_21CB82454();
  sub_21C7A34C0(v17, v24);
  (*(v40 + 8))(v33, v41);
  return (*(v38 + 8))(v31, v37);
}

uint64_t sub_21C7F8A34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = a2;
  return sub_21CB81DC4();
}

uint64_t sub_21C7F8AAC(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountPickerViewContent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C7FCBD8(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21C7FD754(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PMAccountPickerViewContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC168, &unk_21CBA3D20);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21C7FC678();
  sub_21C7FD70C(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  return sub_21CB84FF4();
}

uint64_t sub_21C7F8CF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45[1] = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC328, &qword_21CBA3F28);
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v6 = v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC330, &unk_21CBA3F30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - v9;
  v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC268, qword_21CBA3DB8);
  v11 = *(v45[0] - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v45[0]);
  v14 = v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC170, &qword_21CB9E5D8);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v45 - v17;
  sub_21C7F9360(a1, v52);
  v56 = v54;
  v57 = v53;
  v58 = v52[0];
  v59 = v53;
  v60 = v54;
  v61 = v55;
  sub_21C7FD98C(&v57, &v48);
  sub_21C7FD9E8(&v56, &v48);
  sub_21C7F50F0(a1, &v58, v18);
  sub_21C7FDA44(&v57);
  sub_21C7FDA98(&v56);
  sub_21C7FDA44(&v57);
  sub_21C7FDA98(&v56);
  if (v52[0])
  {
    v20 = *a1;
    v19 = a1[1];
    (*(v47 + 16))(v14, v18, v15);
    v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEA4D0, &unk_21CB9E5E0) + 36)];
    *v21 = v20;
    *(v21 + 1) = v19;
    *(v21 + 8) = 258;
    v22 = v45[0];
    (*(v11 + 16))(v10, v14, v45[0]);
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for PMAccountPickerRow();

    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
    v25 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow);
    v26 = sub_21C7FC81C();
    v48 = v23;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_21C7FBD28();
    v48 = v15;
    v49 = &type metadata for PMAccountPickerRow.RowTag;
    v50 = OpaqueTypeConformance2;
    v51 = v28;
    swift_getOpaqueTypeConformance2();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1C0, &qword_21CBA3D50);
    v30 = sub_21C7FC984();
    v48 = v15;
    v49 = v29;
    v50 = OpaqueTypeConformance2;
    v51 = v30;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v11 + 8))(v14, v22);
  }

  else
  {
    (*(v47 + 16))(v6, v18, v15);
    v31 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E0, &unk_21CB9E5F0) + 36)];
    *v31 = 0;
    *(v31 + 1) = 0;
    *(v31 + 8) = 511;
    v32 = *(v3 + 16);
    v33 = v10;
    v34 = v3;
    v35 = v46;
    v32(v33, v6, v46);
    swift_storeEnumTagMultiPayload();
    v36 = type metadata accessor for PMAccountPickerRow();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
    v38 = sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow);
    v39 = sub_21C7FC81C();
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v41 = sub_21C7FBD28();
    v48 = v15;
    v49 = &type metadata for PMAccountPickerRow.RowTag;
    v50 = v40;
    v51 = v41;
    swift_getOpaqueTypeConformance2();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1C0, &qword_21CBA3D50);
    v43 = sub_21C7FC984();
    v48 = v15;
    v49 = v42;
    v50 = v40;
    v51 = v43;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v34 + 8))(v6, v35);
  }

  return (*(v47 + 8))(v18, v15);
}

void sub_21C7F9360(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v41 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v41 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (&v41 - v16);
  v18 = sub_21CB81024();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(v2 + 8) + 32);
  if (!*(*(v2 + 8) + 32))
  {
    v42 = v20;
    v27 = *(type metadata accessor for PMAccount(0) + 24);
    sub_21C7FCBD8(a1 + v27, v12, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719180(v12, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v29 = *v12;
      v30 = [*v12 credentialTypes];

      if (v30 == 2)
      {
        goto LABEL_12;
      }
    }

    sub_21C7FCBD8(a1 + v27, v9, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v9;
LABEL_18:
      sub_21C719180(v31, type metadata accessor for PMAccount.Storage);
      goto LABEL_19;
    }

    v32 = *v9;
    v33 = [*v9 credentialTypes];

    if (v33 == 4)
    {
      goto LABEL_12;
    }

LABEL_19:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    LOBYTE(v23) = 0;
    goto LABEL_20;
  }

  if (v23 == 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
LABEL_20:
    v35 = 1;
    goto LABEL_21;
  }

  v42 = v20;
  v28 = PMAccount.totpGenerator.getter();
  if (!v28)
  {
    v36 = *(type metadata accessor for PMAccount(0) + 24);
    sub_21C7FCBD8(a1 + v36, v17, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719180(v17, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v37 = *v17;
      v38 = [*v17 credentialTypes];

      if (v38 == 2)
      {
        goto LABEL_12;
      }
    }

    sub_21C7FCBD8(a1 + v36, v15, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v15;
      goto LABEL_18;
    }

    v39 = *v15;
    v40 = [*v15 credentialTypes];

    if (v40 == 4)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_12:
  sub_21CB81014();
  v25 = sub_21CB81004();
  v26 = v34;
  (*(v42 + 8))(v22, v18);
  v35 = 0;
  LOBYTE(v23) = 0;
  v24 = 2;
LABEL_21:
  *a2 = v35;
  *(a2 + 8) = 0;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25;
  *(a2 + 32) = v26;
  *(a2 + 40) = v23;
}

uint64_t sub_21C7F97DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21C7F3DE8();
  v5 = 0uLL;
  if (result)
  {
    v6 = -2;
    v7 = 0uLL;
  }

  else
  {
    v8 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v9 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v9 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v12 = *(v8 + 152);
      sub_21C71F3FC();

      sub_21CB84054();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v10 = *(v11 + 16);

      if (!v10)
      {
        v6 = -1;
        v7 = 0uLL;
        v5 = 0uLL;
        goto LABEL_10;
      }

      v12 = *(v8 + 136);
      sub_21C71F3FC();

      sub_21CB84054();
    }

    result = sub_21CB83494();
    v5 = v12;
    v7 = v14;
    v6 = v15;
  }

LABEL_10:
  *a2 = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_21C7F99A8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7F9A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v49 = a3;
  v4 = type metadata accessor for PMAccount(0);
  v5 = v4 - 8;
  v44 = *(v4 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = v7;
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccountPickerViewContent();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = type metadata accessor for PMAccount.Storage(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v5 + 32);
  v24 = a1;
  sub_21C7FCBD8(a1 + v23, v22, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719180(v22, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v25 = *v22;
    v26 = [*v22 canUserEditSavedAccount];

    if (!v26)
    {
      v40 = 1;
      v37 = v48;
      v39 = v49;
      return (*(v47 + 56))(v39, v40, 1, v37);
    }
  }

  sub_21CB81014();
  v27 = sub_21CB81004();
  v29 = v28;
  (*(v11 + 8))(v14, v10);
  sub_21C7FCBD8(v43, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v30 = v46;
  sub_21C7FCBD8(v24, v46, type metadata accessor for PMAccount);
  v31 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v32 = (v9 + *(v44 + 80) + v31) & ~*(v44 + 80);
  v33 = swift_allocObject();
  sub_21C7FD754(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v31, type metadata accessor for PMAccountPickerViewContent);
  v34 = sub_21C7FD754(v30, v33 + v32, type metadata accessor for PMAccount);
  v50[0] = v27;
  v50[1] = v29;
  MEMORY[0x28223BE20](v34);
  *(&v42 - 4) = v50;
  *(&v42 - 3) = 0x69662E6873617274;
  *(&v42 - 2) = 0xEA00000000006C6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();

  v35 = sub_21CB84A64();
  KeyPath = swift_getKeyPath();
  v37 = v48;
  v38 = &v18[*(v48 + 36)];
  *v38 = KeyPath;
  v38[1] = v35;
  v39 = v49;
  sub_21C716934(v18, v49, &qword_27CDEC198, &qword_21CBAF100);
  v40 = 0;
  return (*(v47 + 56))(v39, v40, 1, v37);
}

uint64_t sub_21C7F9F88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA0690;
  sub_21C7FCBD8(a2, v7 + v6, type metadata accessor for PMAccount);
  sub_21C87E898(v7);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7FA0C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC050, &qword_21CBA3AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = v35 - v5;
  v6 = sub_21CB83604();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC058, &qword_21CBA3AC8);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC060, &qword_21CBA3AD0);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = v35 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC068, &qword_21CBA3AD8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v35 - v20;
  if ([objc_opt_self() shouldAllowAddingNewPasswords] && (v39 = v15, v22 = sub_21C7F27C8(), v15 = v39, !v22))
  {
    v35[0] = v35;
    MEMORY[0x28223BE20](v22);
    v35[1] = a1;
    v35[-2] = v41;
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC080, &qword_21CBA3AE0);
    sub_21C6EADEC(&qword_27CDEC088, &qword_27CDEC080, &qword_21CBA3AE0);
    sub_21CB82194();
    v42 = 0x756F636341646461;
    v43 = 0xEA0000000000746ELL;
    v26 = *(v41 + *(type metadata accessor for PMAccountPickerViewContent() + 36));
    sub_21CB852C4();
    v27 = sub_21C6EADEC(&qword_27CDEC070, &qword_27CDEC058, &qword_21CBA3AC8);
    v28 = MEMORY[0x277D837D0];
    sub_21CB82774();
    v15 = v39;
    (*(v36 + 8))(v11, v8);
    v42 = v8;
    v43 = v28;
    v44 = v27;
    v45 = MEMORY[0x277D837E0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v38;
    v31 = v40;
    MEMORY[0x21CF131E0](v40, v12, OpaqueTypeConformance2);
    (*(v3 + 16))(v18, v30, v2);
    (*(v3 + 56))(v18, 0, 1, v2);
    v42 = v12;
    v43 = OpaqueTypeConformance2;
    v32 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v18, v2, v32);
    sub_21C6EA794(v18, &qword_27CDEC068, &qword_21CBA3AD8);
    (*(v3 + 8))(v30, v2);
    (*(v37 + 8))(v31, v12);
  }

  else
  {
    (*(v3 + 56))(v18, 1, 1, v2);
    v23 = sub_21C6EADEC(&qword_27CDEC070, &qword_27CDEC058, &qword_21CBA3AC8);
    v42 = v8;
    v43 = MEMORY[0x277D837D0];
    v44 = v23;
    v45 = MEMORY[0x277D837E0];
    v24 = swift_getOpaqueTypeConformance2();
    v42 = v12;
    v43 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v18, v2, v25);
    sub_21C6EA794(v18, &qword_27CDEC068, &qword_21CBA3AD8);
  }

  v33 = sub_21C7FC1C8();
  MEMORY[0x21CF131E0](v21, v15, v33);
  return sub_21C6EA794(v21, &qword_27CDEC068, &qword_21CBA3AD8);
}

uint64_t sub_21C7FA728()
{
  v0 = sub_21CB83604();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC030, &qword_21CBA3AB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_21CB835F4();
  sub_21CB831C4();
  sub_21C7FD70C(&qword_27CDEC048, MEMORY[0x277CDDEB0]);
  sub_21CB82AA4();
  v7 = sub_21C6EADEC(&qword_27CDEC038, &qword_27CDEC030, &qword_21CBA3AB8);
  MEMORY[0x21CF131E0](v6, v2, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C7FA8FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMAccountPickerViewContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15 = type metadata accessor for PMPlatformRoleButton();
  v16 = a2 + *(v15 + 20);
  sub_21CB81EF4();
  sub_21C7FCBD8(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  result = sub_21C7FD754(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMAccountPickerViewContent);
  *a2 = v12;
  a2[1] = v14;
  v20 = (a2 + *(v15 + 24));
  *v20 = sub_21C7FC1B0;
  v20[1] = v18;
  return result;
}

uint64_t sub_21C7FAB10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = *(a1 + 8);
  v7 = *(v6 + 360);
  v8 = *(v6 + 368);
  v9 = type metadata accessor for PMAccount(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);

  v7(v5);

  return sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C7FAC0C(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountPickerViewContent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C7FCBD8(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountPickerViewContent);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21C7FD754(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMAccountPickerViewContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC090, &unk_21CBA3B30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v8 = sub_21CB83094();
  v9 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v10 = sub_21C7FD70C(&qword_27CDEC0A8, MEMORY[0x277CDDE78]);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_21CB84DA4();
}

uint64_t sub_21C7FAE30@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v20[0] = sub_21CB83094();
  v1 = *(v20[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v20[2] = v15;
  v20[3] = v17;
  sub_21C71F3FC();
  sub_21CB84CB4();
  sub_21CB83084();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C7FD70C(&qword_27CDEC0A8, MEMORY[0x277CDDE78]);
  v18 = v20[0];
  sub_21CB840E4();
  (*(v1 + 8))(v4, v18);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_21C7FB134()
{
  result = qword_27CDEBD80;
  if (!qword_27CDEBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBD80);
  }

  return result;
}

uint64_t sub_21C7FB188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C7EE49C(a1, v6, a2);
}

uint64_t sub_21C7FB208@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C7EE930(v4, a1);
}

uint64_t sub_21C7FB290(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C7EF380(a1, v1 + v5);
}

unint64_t sub_21C7FB378()
{
  result = qword_27CDEBDF0;
  if (!qword_27CDEBDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD98, &qword_21CBA3678);
    sub_21C7FB404();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBDF0);
  }

  return result;
}

unint64_t sub_21C7FB404()
{
  result = qword_27CDEBDF8;
  if (!qword_27CDEBDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDE0, &qword_21CBA36F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD90, &qword_21CBA3670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDD0, &qword_21CBB0460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD88, &qword_21CBA3668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDA8, &qword_21CBA36B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDB0, &qword_21CBA36B8);
    sub_21C6EADEC(&qword_27CDEBDB8, &qword_27CDEBD88, &qword_21CBA3668);
    sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0);
    type metadata accessor for PMAddAccountView();
    sub_21CB83994();
    sub_21C7FD70C(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PMGeneratedPasswordsLogView();
    sub_21C7FD70C(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBDF8);
  }

  return result;
}

unint64_t sub_21C7FB6BC()
{
  result = qword_27CDEBE10;
  if (!qword_27CDEBE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDE8, &qword_21CBA3758);
    sub_21C6EADEC(&qword_27CDEBE18, &unk_27CDEBE20, &unk_21CBA3760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBE10);
  }

  return result;
}

uint64_t sub_21C7FB7BC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C7F05E4(a1, v6, v7, v1 + v5);
}

id sub_21C7FB8AC(id result, uint64_t a2, void *a3)
{
  if (result)
  {

    return a3;
  }

  return result;
}

uint64_t sub_21C7FB918@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21C7A7A58(v1[4], a1);
}

uint64_t sub_21C7FB924(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21C7A7C8C(a1);
}

unint64_t sub_21C7FB938()
{
  result = qword_27CDEBF20;
  if (!qword_27CDEBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF18, &qword_21CBA3968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF28, &qword_21CBA3970);
    sub_21C7FBA1C();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C7FBD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF20);
  }

  return result;
}

unint64_t sub_21C7FBA1C()
{
  result = qword_27CDEBF30;
  if (!qword_27CDEBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF28, &qword_21CBA3970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF38, &qword_21CBA3978);
    sub_21CB836B4();
    sub_21C7FBB34();
    swift_getOpaqueTypeConformance2();
    sub_21C7FD70C(&qword_27CDEBF90, type metadata accessor for PMSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF30);
  }

  return result;
}

unint64_t sub_21C7FBB34()
{
  result = qword_27CDEBF40;
  if (!qword_27CDEBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF38, &qword_21CBA3978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF48, &qword_21CBA3980);
    sub_21C7FBC44();
    sub_21C7FBD28();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBF80, &qword_27CDEBF88, &qword_21CBA3998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF40);
  }

  return result;
}

unint64_t sub_21C7FBC44()
{
  result = qword_27CDEBF50;
  if (!qword_27CDEBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF48, &qword_21CBA3980);
    sub_21C6EADEC(&qword_27CDEBF58, &qword_27CDEBF60, &qword_21CBA3988);
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF50);
  }

  return result;
}

unint64_t sub_21C7FBD28()
{
  result = qword_27CDEBF78;
  if (!qword_27CDEBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF78);
  }

  return result;
}

unint64_t sub_21C7FBD7C()
{
  result = qword_27CDEBF98;
  if (!qword_27CDEBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBF98);
  }

  return result;
}

unint64_t sub_21C7FBDD0()
{
  result = qword_27CDEBFB0;
  if (!qword_27CDEBFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBF00, &qword_21CBA3950);
    sub_21C7FBE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBFB0);
  }

  return result;
}

unint64_t sub_21C7FBE54()
{
  result = qword_27CDEBFB8;
  if (!qword_27CDEBFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBFC0, &qword_21CBA39A8);
    sub_21C7B85D8();
    sub_21C6EADEC(&qword_27CDEBFF0, &qword_27CDEBFF8, &qword_21CBA39C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBFB8);
  }

  return result;
}

uint64_t sub_21C7FBF20(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_21CB81DC4();
}

uint64_t sub_21C7FBF98()
{
  v1 = *(v0 + 8);
  if (*(v1 + 256) == 1 && ((swift_getKeyPath(), swift_getKeyPath(), sub_21CB81DB4(), , , v2 = *(v7 + 16), , v2) || *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions)))
  {
    v3 = 80;
    v4 = 72;
  }

  else
  {
    v3 = 64;
    v4 = 56;
  }

  v5 = *(v1 + v3);
  return *(v1 + v4);
}

uint64_t sub_21C7FC058()
{
  v1 = *(v0 + 8);
  if (*(v1 + 256) == 1 && ((swift_getKeyPath(), swift_getKeyPath(), sub_21CB81DB4(), , , v2 = *(v7 + 16), , v2) || *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions)))
  {
    v3 = 112;
    v4 = 104;
  }

  else
  {
    v3 = 96;
    v4 = 88;
  }

  v5 = *(v1 + v3);
  return *(v1 + v4);
}

uint64_t sub_21C7FC120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C7F2364(a1, v6, a2);
}

unint64_t sub_21C7FC1C8()
{
  result = qword_27CDEC078;
  if (!qword_27CDEC078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC068, &qword_21CBA3AD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC060, &qword_21CBA3AD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC058, &qword_21CBA3AC8);
    sub_21C6EADEC(&qword_27CDEC070, &qword_27CDEC058, &qword_21CBA3AC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC078);
  }

  return result;
}

unint64_t sub_21C7FC33C()
{
  result = qword_27CDEC0B8;
  if (!qword_27CDEC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC0B0, &qword_21CBA3BB0);
    sub_21C6EADEC(&qword_27CDEC0C0, &qword_27CDEC0C8, &qword_21CBA3BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC0B8);
  }

  return result;
}

void sub_21C7FC3EC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21C7F3EDC(a1, v4);
}

unint64_t sub_21C7FC470()
{
  result = qword_27CDEC130;
  if (!qword_27CDEC130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC120, &qword_21CBA3D00);
    sub_21C7FC4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC130);
  }

  return result;
}

unint64_t sub_21C7FC4F4()
{
  result = qword_27CDEC138;
  if (!qword_27CDEC138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC140, &unk_21CBA3D10);
    sub_21C7FC578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC138);
  }

  return result;
}

unint64_t sub_21C7FC578()
{
  result = qword_27CDEC148;
  if (!qword_27CDEC148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC150, &unk_21CBA4F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC148);
  }

  return result;
}

unint64_t sub_21C7FC5F4()
{
  result = qword_27CDEC158;
  if (!qword_27CDEC158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC128, &qword_21CBA3D08);
    sub_21C7FC678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC158);
  }

  return result;
}

unint64_t sub_21C7FC678()
{
  result = qword_27CDEC160;
  if (!qword_27CDEC160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC168, &unk_21CBA3D20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC170, &qword_21CB9E5D8);
    type metadata accessor for PMAccountPickerRow();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
    sub_21C7FD70C(&qword_27CDEC180, type metadata accessor for PMAccountPickerRow);
    sub_21C7FC81C();
    swift_getOpaqueTypeConformance2();
    sub_21C7FBD28();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1C0, &qword_21CBA3D50);
    sub_21C7FC984();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC160);
  }

  return result;
}

unint64_t sub_21C7FC81C()
{
  result = qword_27CDEC188;
  if (!qword_27CDEC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC178, &unk_21CBA3D30);
    sub_21C7FC8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC188);
  }

  return result;
}

unint64_t sub_21C7FC8A0()
{
  result = qword_27CDEC190;
  if (!qword_27CDEC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC198, &qword_21CBAF100);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC190);
  }

  return result;
}

unint64_t sub_21C7FC984()
{
  result = qword_27CDEC1C8;
  if (!qword_27CDEC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1C0, &qword_21CBA3D50);
    sub_21C7FBD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC1C8);
  }

  return result;
}

unint64_t sub_21C7FCA10()
{
  result = qword_27CDEC1E8;
  if (!qword_27CDEC1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC0E8, &qword_21CBA3CC8);
    sub_21C7FCA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC1E8);
  }

  return result;
}

unint64_t sub_21C7FCA94()
{
  result = qword_27CDEC1F0;
  if (!qword_27CDEC1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC1F8, &qword_21CBA3D68);
    sub_21C7FCB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC1F0);
  }

  return result;
}

unint64_t sub_21C7FCB18()
{
  result = qword_27CDEC200;
  if (!qword_27CDEC200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC208, &qword_21CBA3D70);
    sub_21C6EADEC(&qword_27CDEC210, &qword_27CDEC218, &qword_21CBA3D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC200);
  }

  return result;
}

uint64_t sub_21C7FCBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_21C7FCC58@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21C7F8194(*a1, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_21C7FCD70()
{
  v1 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21C7F8A34(v0 + v2, v3);
}

uint64_t objectdestroy_162Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccountPickerViewContent();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 1) + 80);
  v67 = *(*(v6 - 1) + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v1 + v4;
  v10 = *(v1 + v4 + 8);

  v11 = *(v1 + v4 + 24);

  v12 = *(v1 + v4 + 32);

  v13 = *(v2 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB82484();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
  }

  else
  {
    v15 = *(v9 + v13);
  }

  v16 = *(v9 + *(v2 + 32) + 8);

  v66 = v8;
  v17 = v1 + v8;
  v18 = *(v1 + v8 + 8);

  v19 = (v1 + v8 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *(v19 + 1);

  v22 = *(v19 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v23 = *(v19 + 5);

    v24 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v25 = v24[7];
    v26 = sub_21CB85B74();
    (*(*(v26 - 8) + 8))(&v19[v25], v26);
    v27 = *&v19[v24[8] + 8];

    v28 = v24[9];
    v29 = sub_21CB85C44();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(&v19[v28], 1, v29))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v55 = *(v19 + 4);

  v56 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v57 = v56[7];
  v58 = sub_21CB85C04();
  v59 = *(v58 - 8);
  if (!(*(v59 + 48))(&v19[v57], 1, v58))
  {
    (*(v59 + 8))(&v19[v57], v58);
  }

  v60 = v56[8];
  v61 = sub_21CB85BB4();
  v62 = *(v61 - 8);
  if (!(*(v62 + 48))(&v19[v60], 1, v61))
  {
    (*(v62 + 8))(&v19[v60], v61);
  }

  v28 = v56[9];
  v29 = sub_21CB85C44();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(&v19[v28], 1, v29))
  {
LABEL_6:
    (*(v30 + 8))(&v19[v28], v29);
  }

LABEL_7:
  v31 = v17 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = v3;
    v32 = *(v31 + 8);

    v33 = *(v31 + 24);

    v34 = *(v31 + 40);

    v35 = *(v31 + 56);

    v36 = type metadata accessor for PMAccount.MockData(0);
    v37 = v36[8];
    v38 = sub_21CB80DD4();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (!v40(v31 + v37, 1, v38))
    {
      (*(v39 + 8))(v31 + v37, v38);
    }

    v41 = *(v31 + v36[9]);

    v42 = *(v31 + v36[10] + 8);

    v43 = *(v31 + v36[11] + 8);

    v44 = v36[12];
    if (!v40(v31 + v44, 1, v38))
    {
      (*(v39 + 8))(v31 + v44, v38);
    }

    v45 = v36[15];
    v46 = sub_21CB85BB4();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(v31 + v45, 1, v46))
    {
      (*(v47 + 8))(v31 + v45, v46);
    }

    v48 = v36[16];
    v49 = sub_21CB85C04();
    v50 = *(v49 - 8);
    v3 = v65;
    if (!(*(v50 + 48))(v31 + v48, 1, v49))
    {
      (*(v50 + 8))(v31 + v48, v49);
    }

    v51 = *(v31 + v36[17] + 8);

    v52 = v36[18];
    v53 = sub_21CB85C44();
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(v31 + v52, 1, v53))
    {
      (*(v54 + 8))(v31 + v52, v53);
    }
  }

  else
  {
  }

  v63 = v17 + v6[7];
  if (*(v63 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v66 + v67, v3 | v7 | 7);
}

uint64_t sub_21C7FD5E4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

uint64_t sub_21C7FD70C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7FD754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7FD7EC(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 8);
  return a1();
}

uint64_t sub_21C7FD86C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C7FD8F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMAccountPickerViewContent() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21C7FDAF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3A0, &qword_21CBA4138);
  v65 = *(v70 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v70);
  v64 = &v57 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3A8, &qword_21CBA4140);
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v57 - v6;
  v71 = sub_21CB83934();
  v61 = *(v71 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v71);
  v60 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3B0, &qword_21CBA4148);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v59 = &v57 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3B8, &qword_21CBA4150);
  v63 = *(v67 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v67);
  v62 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3C0, &qword_21CBA4158);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3C8, &qword_21CBA4160);
  v72 = *(v22 - 8);
  v23 = *(v72 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  v26 = *(v2 + *(type metadata accessor for PMBulkOperationProgressView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v27 = v9;

  v28 = *(v79 + 16);

  *&v79 = v28;
  BYTE4(v79) = 0;
  *&v75 = *(*(v26 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16);
  v74 = v2;
  v73 = v2;
  sub_21C7FE6D0();
  sub_21CB82214();
  v29 = sub_21CB83CE4();
  v30 = &v21[*(v18 + 36)];
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  v31 = sub_21C7FE724();
  sub_21CB84644();
  sub_21C7FE7DC(v21);
  sub_21C728D50(v17);
  v32 = sub_21CB83834();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v17, 1, v32) == 1)
  {
    goto LABEL_5;
  }

  v34 = v71;
  if ((*(v33 + 88))(v17, v32) != *MEMORY[0x277CE0560])
  {
    (*(v33 + 8))(v17, v32);
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3F0, &qword_21CBA4870);
    v46 = sub_21CB83184();
    v47 = *(v46 - 8);
    v48 = *(v47 + 72);
    v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_21CBA0690;
    sub_21CB83174();
    sub_21C8D7B00(v50);
    swift_setDeallocating();
    (*(v47 + 8))(v50 + v49, v46);
    swift_deallocClassInstance();
    *&v79 = v18;
    *(&v79 + 1) = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v52 = v64;
    sub_21CB844D4();

    v53 = v65;
    v54 = v70;
    (*(v65 + 16))(v66, v52, v70);
    swift_storeEnumTagMultiPayload();
    v55 = sub_21C7FE844();
    *&v79 = v27;
    *(&v79 + 1) = v71;
    *&v80 = v55;
    *(&v80 + 1) = MEMORY[0x277CDE280];
    swift_getOpaqueTypeConformance2();
    *&v79 = v22;
    *(&v79 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v53 + 8))(v52, v54);
    return (*(v72 + 8))(v25, v22);
  }

  sub_21CB85214();
  sub_21CB82374();
  v35 = *(v72 + 16);
  v36 = v59;
  v58 = v25;
  v35(v59, v25, v22);
  v37 = v9;
  v38 = (v36 + *(v9 + 36));
  v39 = v80;
  *v38 = v79;
  v38[1] = v39;
  v38[2] = v81;
  v40 = v60;
  sub_21CB83194();
  v41 = sub_21C7FE844();
  v42 = v62;
  sub_21CB84454();
  (*(v61 + 8))(v40, v34);
  sub_21C756830(v36);
  v43 = v63;
  v44 = v67;
  (*(v63 + 16))(v66, v42, v67);
  swift_storeEnumTagMultiPayload();
  v75 = v37;
  v76 = v34;
  v77 = v41;
  v78 = MEMORY[0x277CDE280];
  swift_getOpaqueTypeConformance2();
  v75 = v18;
  v76 = v31;
  v25 = v58;
  v45 = swift_getOpaqueTypeConformance2();
  v75 = v22;
  v76 = v45;
  swift_getOpaqueTypeConformance2();
  sub_21CB83494();
  (*(v43 + 8))(v42, v44);
  return (*(v72 + 8))(v25, v22);
}

uint64_t sub_21C7FE4DC@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for PMBulkOperationProgressView() + 20) + 8);
  a2();
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v9;
  return result;
}

uint64_t sub_21C7FE560@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v4 = (a2 + *(type metadata accessor for PMBulkOperationProgressView() + 20));
  type metadata accessor for PMBulkOperationProgress();
  sub_21C705E68(&qword_27CDEC368, type metadata accessor for PMBulkOperationProgress);

  result = sub_21CB82674();
  *v4 = result;
  v4[1] = v6;
  return result;
}

unint64_t sub_21C7FE6D0()
{
  result = qword_27CDEC3D0;
  if (!qword_27CDEC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC3D0);
  }

  return result;
}

unint64_t sub_21C7FE724()
{
  result = qword_27CDEC3D8;
  if (!qword_27CDEC3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3C0, &qword_21CBA4158);
    sub_21C6EADEC(&qword_27CDEC3E0, &qword_27CDEC3E8, &unk_21CBA41B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC3D8);
  }

  return result;
}

uint64_t sub_21C7FE7DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3C0, &qword_21CBA4158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C7FE844()
{
  result = qword_27CDEC3F8;
  if (!qword_27CDEC3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3B0, &qword_21CBA4148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3C0, &qword_21CBA4158);
    sub_21C7FE724();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC3F8);
  }

  return result;
}

unint64_t sub_21C7FE90C()
{
  result = qword_27CDEC400;
  if (!qword_27CDEC400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDEC408, &unk_21CBA41C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3B0, &qword_21CBA4148);
    sub_21CB83934();
    sub_21C7FE844();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3C8, &qword_21CBA4160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC3C0, &qword_21CBA4158);
    sub_21C7FE724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC400);
  }

  return result;
}

void sub_21C7FEA74(uint64_t a1)
{
  sub_21C6EE394(319, &qword_27CDEB2F0);
  if (v2 <= 0x3F)
  {
    sub_21C6EE394(319, &qword_27CDEC490);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        sub_21C735A14();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21C7FEB5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_21CB82054() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 35) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        v20 = *(v6 + 48);

        return v20((a1 + v11 + 35) & ~v11, v7, v5);
      }

      else
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        if ((v19 + 1) >= 2)
        {
          return v19;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_21C7FEDD0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_21CB82054() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 35) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *(a1 + v15) = v18;
              }

              else
              {
                *(a1 + v15) = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        *(a1 + 2) = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      *(a1 + v15) = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v15) = 0;
  }

  else if (v16)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 > 0x7FFFFFFE)
  {
    v22 = *(v23 + 56);

    v22((a1 + v13 + 35) & ~v13, a2, v9, v7);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

uint64_t sub_21C7FF130(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4A0, &unk_21CBA4260);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  v4 = sub_21CB84E14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10];
  v12 = *(a1 + 24);
  v17 = v3;
  v18 = v12;
  v19 = v1;
  sub_21CB83074();
  sub_21CB84E04();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v8, v4, WitnessTable);
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_21C72BE10(v11, v4, WitnessTable);
  return (v14)(v11, v4);
}

uint64_t sub_21C7FF338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v44 = sub_21CB83274();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v44);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4A8, &qword_21CBA4270);
  v15 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v17 = &v40 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4A0, &unk_21CBA4260);
  v18 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v45 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  v23 = *(a2 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v42 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v40 - v28;
  v41 = a3;
  v30 = type metadata accessor for PMSecurityRecommendationAccountRowBadgeView();
  sub_21C72BE10(a1 + *(v30 + 48), a2, a3);
  sub_21C7FF7BC(a1, a2, a3, v17);
  sub_21CB83244();
  sub_21C800A1C();
  sub_21CB84614();
  (*(v11 + 8))(v14, v44);
  sub_21C6EA794(v17, &qword_27CDEC4A8, &qword_21CBA4270);
  v31 = sub_21CB83DC4();
  (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  v32 = sub_21CB83E14();
  sub_21C6EA794(v10, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath();
  v34 = v42;
  v35 = v43;
  v36 = &v22[*(v43 + 36)];
  *v36 = KeyPath;
  v36[1] = v32;
  (*(v23 + 16))(v34, v29, a2);
  v51 = 0;
  v52 = 1;
  v53[0] = v34;
  v53[1] = &v51;
  v37 = v45;
  sub_21C6EDBAC(v22, v45, &qword_27CDEC4A0, &unk_21CBA4260);
  v53[2] = v37;
  v50[0] = a2;
  v50[1] = MEMORY[0x277CE1180];
  v50[2] = v35;
  v47 = v41;
  v48 = MEMORY[0x277CE1170];
  v49 = sub_21C800FE8();
  sub_21C74A55C(v53, 3uLL, v50);
  sub_21C6EA794(v22, &qword_27CDEC4A0, &unk_21CBA4260);
  v38 = *(v23 + 8);
  v38(v29, a2);
  sub_21C6EA794(v37, &qword_27CDEC4A0, &unk_21CBA4260);
  return (v38)(v34, a2);
}

uint64_t sub_21C7FF7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v133 = a3;
  v132 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC570, &qword_21CBA4308);
  v129 = *(v131 - 8);
  v6 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v128 = &v119 - v7;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC550, &qword_21CBA42C0);
  v8 = *(*(v137 - 1) + 64);
  MEMORY[0x28223BE20](v137);
  v130 = &v119 - v9;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC578, &unk_21CBA4310);
  v10 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v136 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC580, &qword_21CBBA870);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v119 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC588, &qword_21CBA4320);
  v125 = *(v127 - 8);
  v16 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v124 = &v119 - v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC540, &qword_21CBA42B8);
  v18 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v126 = &v119 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC520, &qword_21CBA42A8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v143 = &v119 - v22;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC590, &qword_21CBA4328);
  v23 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v25 = &v119 - v24;
  v26 = sub_21CB81024();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v142 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v119 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC598, &unk_21CBA4330);
  v138 = *(v33 - 8);
  v139 = v33;
  v34 = *(v138 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v119 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4F0, &qword_21CBA4290);
  v144 = *(v37 - 8);
  v145 = v37;
  v38 = *(v144 + 64);
  MEMORY[0x28223BE20](v37);
  v141 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v140 = &v119 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4E0, &qword_21CBA4288);
  v43 = *(*(v42 - 8) + 64);
  *&v45 = MEMORY[0x28223BE20](v42).n128_u64[0];
  v47 = &v119 - v46;
  LODWORD(v46) = *(a1 + 34);
  v48 = a1;
  v49 = *(a1 + 32);
  if (v46 == 1)
  {
    v146 = v44;
    if (v49 == 2)
    {
      v50 = sub_21CB84BB4();
      v135 = v50;
      v51 = sub_21CB837D4();
      v148 = v50;
      LODWORD(v149) = v51;
      v150 = 3;
      sub_21CB81014();
      v52 = sub_21CB81004();
      v123 = a4;
      v54 = v53;
      v55 = *(v27 + 8);
      v136 = v27 + 8;
      v137 = v55;
      v120 = v26;
      v55(v32, v26);
      v152 = v52;
      v153 = v54;
      v143 = sub_21C71F3FC();
      v56 = sub_21CB84054();
      v122 = v20;
      v58 = v57;
      v60 = v59;
      v121 = v25;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4F8, &qword_21CBA4298);
      v62 = sub_21C800CF4();
      sub_21CB846D4();
      sub_21C74A72C(v56, v58, v60 & 1);

      v25 = v121;

      sub_21CB83134();
      v148 = v61;
      v149 = v62;
      swift_getOpaqueTypeConformance2();
      v63 = v141;
      v64 = v139;
      sub_21CB84374();

      (*(v138 + 8))(v36, v64);
      sub_21CB81014();
      v65 = v142;
      sub_21CB81014();
      v66 = sub_21CB80FF4();
      v68 = v67;
      v69 = v65;
      v70 = v120;
      v71 = v137;
      v137(v69, v120);
      v71(v32, v70);
      v148 = v66;
      v149 = v68;
      v72 = sub_21CB84054();
      v74 = v73;
      LOBYTE(v56) = v75;
      v76 = v140;
      v77 = v145;
      sub_21CB82884();
      v78 = v56 & 1;
      a4 = v123;
      sub_21C74A72C(v72, v74, v78);

      sub_21C6EA794(v63, &qword_27CDEC4F0, &qword_21CBA4290);
      sub_21C7568A4(v76, v47);
      (*(v144 + 56))(v47, 0, 1, v77);
    }

    else
    {
      (*(v144 + 56))(v47, 1, 1, v145);
    }

    v82 = &qword_27CDEC4E0;
    v83 = &qword_21CBA4288;
    sub_21C6EDBAC(v47, v25, &qword_27CDEC4E0, &qword_21CBA4288);
    swift_storeEnumTagMultiPayload();
    sub_21C800BB0(&qword_27CDEC4D8, &qword_27CDEC4E0, &qword_21CBA4288, sub_21C800C2C);
    goto LABEL_24;
  }

  if (v49 != 2)
  {
    v146 = v44;
    v84 = v48;
    if (*(v48 + 8) && [*(v48 + 24) hasBeenCompromised])
    {
      v122 = v20;
      sub_21CB84BB4();
      sub_21CB83334();
      v85 = sub_21CB83354();
      (*(*(v85 - 8) + 56))(v15, 0, 1, v85);
      v86 = sub_21CB84C24();

      sub_21C6EA794(v15, &qword_27CDEC580, &qword_21CBBA870);
      v152 = v86;
      v87 = *(v84 + 8);
      v123 = a4;
      v121 = v25;
      if (v87)
      {
        v88 = [*(v84 + 24) localizedShortDescriptivePhrase];
        v89 = sub_21CB855C4();
        v91 = v90;
      }

      else
      {
        v89 = 0;
        v91 = 0xE000000000000000;
      }

      v148 = v89;
      v149 = v91;
      v110 = sub_21C71F3FC();
      v111 = MEMORY[0x277CE1088];
      v112 = MEMORY[0x277D837D0];
      v113 = MEMORY[0x277CE1078];
      v114 = v124;
      sub_21CB846E4();

      type metadata accessor for PMSecurityRecommendationAccountRowBadgeView();
      v152 = sub_21C800808();
      v153 = v115;
      v148 = v111;
      v149 = v112;
      v150 = v113;
      v151 = v110;
      swift_getOpaqueTypeConformance2();
      v106 = v126;
      v116 = v127;
      sub_21CB843E4();

      (*(v125 + 8))(v114, v116);
      v108 = &qword_27CDEC540;
      v109 = &qword_21CBA42B8;
      sub_21C6EDBAC(v106, v136, &qword_27CDEC540, &qword_21CBA42B8);
    }

    else
    {
      if (v49 == 3)
      {
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC530, &qword_21CBA42B0);
        v47 = v143;
        (*(*(v92 - 8) + 56))(v143, 1, 1, v92);
LABEL_23:
        v82 = &qword_27CDEC520;
        v83 = &qword_21CBA42A8;
        sub_21C6EDBAC(v47, v25, &qword_27CDEC520, &qword_21CBA42A8);
        swift_storeEnumTagMultiPayload();
        sub_21C800BB0(&qword_27CDEC4D8, &qword_27CDEC4E0, &qword_21CBA4288, sub_21C800C2C);
LABEL_24:
        sub_21C800BB0(&qword_27CDEC518, &qword_27CDEC520, &qword_21CBA42A8, sub_21C800DAC);
        sub_21CB83494();
        sub_21C6EA794(v47, v82, v83);
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4D0, &qword_21CBA4280);
        return (*(*(v118 - 8) + 56))(a4, 0, 1, v118);
      }

      v122 = v20;
      v93 = sub_21CB84BB4();
      v94 = sub_21CB837B4();
      v148 = v93;
      LODWORD(v149) = v94;
      v150 = 3;
      v95 = *(v84 + 8);
      v123 = a4;
      v121 = v25;
      if (v95)
      {
        v96 = [*(v84 + 24) localizedShortDescriptivePhrase];
        v97 = sub_21CB855C4();
        v99 = v98;
      }

      else
      {
        v97 = 0;
        v99 = 0xE000000000000000;
      }

      v152 = v97;
      v153 = v99;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4F8, &qword_21CBA4298);
      v101 = sub_21C800CF4();
      v102 = sub_21C71F3FC();
      v103 = MEMORY[0x277D837D0];
      v104 = v128;
      sub_21CB846E4();

      type metadata accessor for PMSecurityRecommendationAccountRowBadgeView();
      v152 = sub_21C800808();
      v153 = v105;
      v148 = v100;
      v149 = v103;
      v150 = v101;
      v151 = v102;
      swift_getOpaqueTypeConformance2();
      v106 = v130;
      v107 = v131;
      sub_21CB843E4();

      (*(v129 + 8))(v104, v107);
      v108 = &qword_27CDEC550;
      v109 = &qword_21CBA42C0;
      sub_21C6EDBAC(v106, v136, &qword_27CDEC550, &qword_21CBA42C0);
    }

    swift_storeEnumTagMultiPayload();
    sub_21C800E38();
    sub_21C800F04();
    v47 = v143;
    sub_21CB83494();
    sub_21C6EA794(v106, v108, v109);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC530, &qword_21CBA42B0);
    (*(*(v117 - 8) + 56))(v47, 0, 1, v117);
    a4 = v123;
    v25 = v121;
    goto LABEL_23;
  }

  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4D0, &qword_21CBA4280);
  v80 = *(*(v79 - 8) + 56);

  return v80(a4, 1, 1, v79);
}

uint64_t sub_21C800808()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  if (*(v0 + 32) - 2 < 2 || *(v0 + 32) && !*(v0 + 33))
  {
    return 0;
  }

  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v11 = *(v2 + 8);
  v11(v5, v1);
  v11(v8, v1);
  return v10;
}

unint64_t sub_21C800A1C()
{
  result = qword_27CDEC4B0;
  if (!qword_27CDEC4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4A8, &qword_21CBA4270);
    sub_21C800BB0(&qword_27CDEC4B8, &qword_27CDEC4C0, &qword_21CBA4278, sub_21C800ACC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC4B0);
  }

  return result;
}

unint64_t sub_21C800ACC()
{
  result = qword_27CDEC4C8;
  if (!qword_27CDEC4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4D0, &qword_21CBA4280);
    sub_21C800BB0(&qword_27CDEC4D8, &qword_27CDEC4E0, &qword_21CBA4288, sub_21C800C2C);
    sub_21C800BB0(&qword_27CDEC518, &qword_27CDEC520, &qword_21CBA42A8, sub_21C800DAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC4C8);
  }

  return result;
}

uint64_t sub_21C800BB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C800C2C()
{
  result = qword_27CDEC4E8;
  if (!qword_27CDEC4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4F0, &qword_21CBA4290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4F8, &qword_21CBA4298);
    sub_21C800CF4();
    swift_getOpaqueTypeConformance2();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC4E8);
  }

  return result;
}

unint64_t sub_21C800CF4()
{
  result = qword_27CDEC500;
  if (!qword_27CDEC500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4F8, &qword_21CBA4298);
    sub_21C6EADEC(&qword_27CDEC508, &qword_27CDEC510, &qword_21CBA42A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC500);
  }

  return result;
}

unint64_t sub_21C800DAC()
{
  result = qword_27CDEC528;
  if (!qword_27CDEC528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC530, &qword_21CBA42B0);
    sub_21C800E38();
    sub_21C800F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC528);
  }

  return result;
}

unint64_t sub_21C800E38()
{
  result = qword_27CDEC538;
  if (!qword_27CDEC538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC540, &qword_21CBA42B8);
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC538);
  }

  return result;
}

unint64_t sub_21C800F04()
{
  result = qword_27CDEC548;
  if (!qword_27CDEC548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC550, &qword_21CBA42C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4F8, &qword_21CBA4298);
    sub_21C800CF4();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC548);
  }

  return result;
}

unint64_t sub_21C800FE8()
{
  result = qword_27CDEC558;
  if (!qword_27CDEC558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4A0, &unk_21CBA4260);
    sub_21C8010A0();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC558);
  }

  return result;
}

unint64_t sub_21C8010A0()
{
  result = qword_27CDEC560;
  if (!qword_27CDEC560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC568, &qword_21CBA42F8);
    sub_21C800A1C();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC560);
  }

  return result;
}

uint64_t sub_21C80112C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 <= 1)
  {
    if (!v5)
    {
      return !v6;
    }

    if (v5 == 1)
    {
      return v6 == 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        return v6 == 2;
      case 3:
        return v6 == 3;
      case 4:
        return v6 == 4;
    }
  }

  if (v6 < 5)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  return sub_21CB86344();
}

uint64_t sub_21C8011D4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_21CB86344();
  }

  return 1;
}

uint64_t sub_21C801234()
{
  sub_21C7EC528();
  sub_21CB82F94();
  return v1;
}

uint64_t sub_21C801280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C8012D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMAccountRow()
{
  result = qword_27CDEC5B0;
  if (!qword_27CDEC5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C8013B4()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C801560();
    if (v1 <= 0x3F)
    {
      sub_21C70640C();
      if (v2 <= 0x3F)
      {
        sub_21C7202E4();
        if (v3 <= 0x3F)
        {
          sub_21C8015C4(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21C8015C4(319, &qword_27CDEC5D0, MEMORY[0x277CE0358], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21C8015C4(319, &qword_27CDEC5D8, type metadata accessor for PMDebugSettingsManager, type metadata accessor for PMDependency);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21C801560()
{
  result = qword_27CDEC5C0;
  if (!qword_27CDEC5C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CDEC5C0);
  }

  return result;
}

void sub_21C8015C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21C801628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C801680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_21C8016E0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB832F4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC678, &qword_21CBA4678) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC680, &unk_21CBA4680);
  sub_21C6EADEC(&qword_27CDEC688, &qword_27CDEC680, &unk_21CBA4680);
  return sub_21CB81FC4();
}

uint64_t sub_21C8017B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v119 = a2;
  v117 = sub_21CB834E4();
  v115 = *(v117 - 8);
  v3 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v113 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v110 = &v95 - v9;
  v111 = sub_21CB83ED4();
  v109 = *(v111 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB81024();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v12);
  v95 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for PMAccount.Storage(0);
  v15 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v123 = (&v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_21CB82F84();
  v99 = *(v17 - 8);
  v100 = v17;
  v18 = *(v99 + 64);
  MEMORY[0x28223BE20](v17);
  v98 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21CB82834();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC690, &qword_21CBA4690);
  v114 = *(v116 - 8);
  v25 = *(v114 + 64);
  MEMORY[0x28223BE20](v116);
  v124 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v125 = &v95 - v28;
  sub_21C802388(&v140);
  v103 = v141;
  v120 = v140;
  v102 = v142;
  v29 = WORD4(v142) | (BYTE10(v142) << 16);
  v30 = BYTE11(v142);
  sub_21C805AD8();
  v101 = sub_21CB83314();
  v146 = v30;
  v31 = type metadata accessor for PMAccountRow();
  v105 = *(v31 + 48);
  sub_21C7448E0(v24);
  v32 = sub_21CB82824();
  v33 = *(v21 + 8);
  v106 = v21 + 8;
  v107 = v20;
  v104 = v33;
  v33(v24, v20);
  v34 = (v32 & 1) == 0;
  KeyPath = swift_getKeyPath();
  v36 = v32 & 1;
  v147 = v32 & 1;
  v121 = v31;
  v37 = a1 + *(v31 + 44);
  v38 = *v37;
  LODWORD(v37) = *(v37 + 8);
  v118 = a1;
  if (v37 == 1)
  {
    if ((v38 & 1) == 0)
    {
LABEL_3:
      v39 = sub_21CB837E4();
      goto LABEL_6;
    }
  }

  else
  {

    sub_21CB85B04();
    v40 = sub_21CB83C94();
    sub_21CB81C14();

    v41 = v98;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v38, 0);
    (*(v99 + 8))(v41, v100);
    if (v140 != 1)
    {
      goto LABEL_3;
    }
  }

  v39 = sub_21CB837B4();
LABEL_6:
  v134 = v120;
  v135 = v103;
  *&v136 = v102;
  BYTE10(v136) = BYTE2(v29);
  WORD4(v136) = v29;
  BYTE11(v136) = v30;
  *&v137 = v101;
  *(&v137 + 1) = sub_21C7902AC;
  *&v138 = 0;
  *(&v138 + 1) = KeyPath;
  *&v139 = v34;
  BYTE8(v139) = v36;
  HIDWORD(v139) = v39;
  sub_21CB85184();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6A0, &qword_21CBA46C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6A8, &qword_21CBA46D0);
  v43 = sub_21C805B2C();
  *&v140 = v42;
  *(&v140 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  sub_21CB84974();
  v142 = v136;
  v143 = v137;
  v144 = v138;
  v145 = v139;
  v140 = v134;
  v141 = v135;
  sub_21C6EA794(&v140, &qword_27CDEC6A0, &qword_21CBA46C8);
  v44 = type metadata accessor for PMAccount(0);
  v45 = v118;
  v46 = v123;
  sub_21C8058E8(v118 + *(v44 + 24), v123, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C805A70(v46, type metadata accessor for PMAccount.Storage);
    v47 = v121;
LABEL_9:
    v50 = sub_21C804C40();
    v122 = v51;
    v123 = v50;
    goto LABEL_11;
  }

  v48 = *v46;
  v49 = [v48 credentialTypes];

  v47 = v121;
  if ((v49 & 8) == 0)
  {
    goto LABEL_9;
  }

  v52 = v95;
  sub_21CB81014();
  v53 = sub_21CB81004();
  v122 = v54;
  v123 = v53;
  (*(v96 + 8))(v52, v97);
LABEL_11:
  v55 = (v45 + v47[8]);
  v56 = v55[1];
  v121 = *v55;
  *&v120 = v56;

  sub_21C7448E0(v24);
  v57 = sub_21CB82824();
  v104(v24, v107);
  if (v57)
  {
    v106 = 0;
    v58 = 1;
  }

  else
  {
    v59 = *(v45 + v47[6] + 8);
    v58 = v59 != 0;
    v106 = v59 == 0;
  }

  v105 = swift_getKeyPath();
  LODWORD(v107) = v58;
  v132 = v58;
  v61 = v108;
  v60 = v109;
  v62 = v111;
  (*(v109 + 104))(v108, *MEMORY[0x277CE0A58], v111);
  v63 = sub_21CB83DC4();
  v64 = v110;
  (*(*(v63 - 8) + 56))(v110, 1, 1, v63);
  v104 = sub_21CB83E24();
  sub_21C6EA794(v64, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v60 + 8))(v61, v62);
  v111 = swift_getKeyPath();
  v65 = v45 + v47[13];
  v66 = v112;
  sub_21C95B534(v112);
  v67 = v113;
  sub_21CB834D4();
  LOBYTE(v65) = sub_21CB834B4();
  v68 = *(v115 + 8);
  v69 = v117;
  v68(v67, v117);
  v68(v66, v69);
  if (v65)
  {
    LODWORD(v134) = sub_21CB837E4();
  }

  else
  {
    v70 = (v45 + v47[7]);
    v71 = v70[3];
    v72 = __swift_project_boxed_opaque_existential_0(v70, v71);
    v73 = *(*(v71 - 8) + 64);
    v74 = MEMORY[0x28223BE20](v72);
    (*(v76 + 16))(&v95 - v75, v74);
  }

  v118 = sub_21CB82384();
  v77 = v114;
  v78 = *(v114 + 16);
  v79 = v124;
  v80 = v116;
  v78(v124, v125, v116);
  v81 = v119;
  v78(v119, v79, v80);
  v82 = &v81[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC740, &qword_21CBA4740) + 48)];
  *&v126 = v123;
  *(&v126 + 1) = v122;
  *&v127 = v121;
  *(&v127 + 1) = v120;
  v83 = v105;
  v84 = v106;
  *&v128 = 0;
  *(&v128 + 1) = v105;
  *&v129 = v106;
  v85 = v107;
  BYTE8(v129) = v107;
  HIDWORD(v129) = *&v133[3];
  *(&v129 + 9) = *v133;
  v86 = v111;
  v87 = v104;
  *&v130 = v111;
  *(&v130 + 1) = v104;
  v88 = v118;
  v131 = v118;
  v89 = v127;
  *v82 = v126;
  *(v82 + 1) = v89;
  v90 = v128;
  v91 = v129;
  v92 = v130;
  *(v82 + 10) = v88;
  *(v82 + 3) = v91;
  *(v82 + 4) = v92;
  *(v82 + 2) = v90;
  sub_21C6EDBAC(&v126, &v134, &qword_27CDEC748, &qword_21CBA4748);
  v93 = *(v77 + 8);
  v93(v125, v80);
  *&v134 = v123;
  *(&v134 + 1) = v122;
  *&v135 = v121;
  *(&v135 + 1) = v120;
  *&v136 = 0;
  *(&v136 + 1) = v83;
  *&v137 = v84;
  BYTE8(v137) = v85;
  *(&v137 + 9) = *v133;
  HIDWORD(v137) = *&v133[3];
  *&v138 = v86;
  *(&v138 + 1) = v87;
  *&v139 = v88;
  sub_21C6EA794(&v134, &qword_27CDEC748, &qword_21CBA4748);
  return (v93)(v124, v80);
}

uint64_t sub_21C802388@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v124 - v8;
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (v124 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (v124 - v18);
  v20 = type metadata accessor for PMAccountRow();
  v21 = (v1 + *(v20 + 20));
  v22 = v21[1];
  if (v22 > 1)
  {
    if (v22 != 2)
    {
      if (v22 != 3)
      {
        if (v22 == 4)
        {
          v23 = v20;
          v24 = sub_21C8049D8();
          v25 = (v1 + *(v23 + 32));
          v26 = *v25;
          v27 = v25[1];
          *&v127 = v24;
          *(&v127 + 1) = v28;
          *&v128 = v26;
          *(&v128 + 1) = v27;
          v129 = 1;
          LOBYTE(v130) = 0;
          sub_21C805EBC();

          sub_21CB83494();
          v127 = v132;
          v128 = v133;
          v129 = v134;
          v130 = v135;
          v131 = 256;
LABEL_48:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6F0, &qword_21CBA46F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC728, &qword_21CBA4708);
          sub_21C805E40(&qword_27CDEC6E8, &qword_27CDEC6F0, &qword_21CBA46F0, sub_21C805DE0);
          sub_21C805F10();
          result = sub_21CB83494();
          goto LABEL_49;
        }

LABEL_24:
        *&v132 = *v21;
        *(&v132 + 1) = v22;
        sub_21C71F3FC();

        v74 = sub_21CB84054();
        v76 = v75;
        *&v127 = v74;
        *(&v127 + 1) = v75;
        v78 = v77 & 1;
        *&v128 = v77 & 1;
        *(&v128 + 1) = v79;
        v129 = 0;
        LOBYTE(v130) = 1;
        sub_21C79B058(v74, v75, v77 & 1);
        sub_21C805EBC();

        sub_21CB83494();
        v127 = v132;
        v128 = v133;
        v129 = v134;
        v130 = v135;
        v131 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6F0, &qword_21CBA46F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC728, &qword_21CBA4708);
        sub_21C805E40(&qword_27CDEC6E8, &qword_27CDEC6F0, &qword_21CBA46F0, sub_21C805DE0);
        sub_21C805F10();
        sub_21CB83494();
        sub_21C74A72C(v74, v76, v78);

LABEL_49:
        v112 = v132;
        v113 = v133;
        v114 = v134;
        v115 = v135 | (v136 << 16);
        v116 = v137;
        v73 = v126;
        goto LABEL_59;
      }

      v125 = v20;
      v50 = PMAccount.userVisibleDomain.getter();
      if (!v51)
      {
        v50 = PMAccount.effectiveTitle.getter();
      }

      v52 = v50;
      v53 = v51;
      v54 = PMAccount.userName.getter();
      if (v55)
      {
        v56 = v54;
        v57 = v55;
        v58 = HIBYTE(v55) & 0xF;
        if ((v55 & 0x2000000000000000) == 0)
        {
          v58 = v54 & 0xFFFFFFFFFFFFLL;
        }

        if (v58)
        {
          sub_21CB81014();
          sub_21CB81014();
          v59 = sub_21CB80FF4();
          v124[0] = v60;
          v124[1] = v59;
          v61 = *(v3 + 8);
          v61(v6, v2);
          v61(v9, v2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_21CBA15B0;
          v63 = MEMORY[0x277D837D0];
          *(v62 + 56) = MEMORY[0x277D837D0];
          v64 = sub_21C7C0050();
          *(v62 + 32) = v52;
          *(v62 + 40) = v53;
          *(v62 + 96) = v63;
          *(v62 + 104) = v64;
          *(v62 + 64) = v64;
          *(v62 + 72) = v56;
          *(v62 + 80) = v57;
          v65 = sub_21CB85594();
          v67 = v66;

          v68 = (v1 + *(v125 + 32));
          v69 = *v68;
          v70 = v68[1];
          *&v127 = v65;
          *(&v127 + 1) = v67;
          *&v128 = v69;
          *(&v128 + 1) = v70;
          v129 = 1;
          LOBYTE(v130) = 0;
LABEL_43:
          sub_21C805EBC();

          sub_21CB83494();
          v127 = v132;
          v128 = v133;
          v129 = v134;
          LOBYTE(v130) = v135;
          HIBYTE(v130) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC710, &qword_21CBA4700);
          sub_21C805E10();
          sub_21CB83494();
          if (HIBYTE(v135))
          {
            v111 = 256;
          }

          else
          {
            v111 = 0;
          }

          v127 = v132;
          v128 = v133;
          v129 = v134;
          v130 = v111 | v135;
          LOBYTE(v131) = 1;
LABEL_47:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC700, &qword_21CBA46F8);
          sub_21C805DE0();
          sub_21CB83494();
          v127 = v132;
          v128 = v133;
          v129 = v134;
          v131 = v136 != 0;
          v130 = v135;
          goto LABEL_48;
        }
      }

      v108 = (v1 + *(v125 + 32));
      v109 = *v108;
      v110 = v108[1];
      *&v127 = v52;
      *(&v127 + 1) = v53;
      *&v128 = v109;
      *(&v128 + 1) = v110;
      v129 = 1;
      LOBYTE(v130) = 1;
      goto LABEL_43;
    }

    v31 = v20;
    v32 = PMAccount.userName.getter();
    if (v33)
    {
      v34 = v32;
      v35 = v33;
      v36 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v36 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        sub_21CB81014();
        sub_21CB81014();
        v125 = sub_21CB80FF4();
        v37 = *(v3 + 8);
        v37(v6, v2);
        v37(v9, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_21CBA15B0;
        v39 = PMAccount.effectiveTitle.getter();
        v41 = v40;
        v42 = MEMORY[0x277D837D0];
        *(v38 + 56) = MEMORY[0x277D837D0];
        v43 = sub_21C7C0050();
        *(v38 + 32) = v39;
        *(v38 + 40) = v41;
        *(v38 + 96) = v42;
        *(v38 + 104) = v43;
        *(v38 + 64) = v43;
        *(v38 + 72) = v34;
        *(v38 + 80) = v35;
        v44 = sub_21CB85594();
        v46 = v45;

        v47 = (v1 + *(v31 + 32));
        v48 = *v47;
        v49 = v47[1];
        *&v127 = v44;
        *(&v127 + 1) = v46;
        *&v128 = v48;
        *(&v128 + 1) = v49;
        v129 = 1;
        LOBYTE(v130) = 0;
        sub_21C805EBC();

LABEL_37:
        sub_21CB83494();
        v127 = v132;
        v128 = v133;
        v129 = v134;
        v130 = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC710, &qword_21CBA4700);
        sub_21C805E10();
        sub_21CB83494();
        if (HIBYTE(v135))
        {
          v107 = 256;
        }

        else
        {
          v107 = 0;
        }

        v127 = v132;
        v128 = v133;
        v129 = v134;
        v130 = v107 | v135;
        LOBYTE(v131) = 1;
        goto LABEL_47;
      }
    }

    v102 = PMAccount.effectiveTitle.getter();
    v103 = (v1 + *(v31 + 32));
    v104 = *v103;
    v105 = v103[1];
    *&v127 = v102;
    *(&v127 + 1) = v106;
    *&v128 = v104;
    *(&v128 + 1) = v105;
    v129 = 1;
    LOBYTE(v130) = 1;
    sub_21C805EBC();

    goto LABEL_37;
  }

  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_24;
    }

    v29 = v20;
    v30 = *(type metadata accessor for PMAccount(0) + 24);
    sub_21C8058E8(v1 + v30, v16, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C805A70(v16, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v93 = *v16;
      v94 = [*v16 credentialTypes];

      if (v94 == 4)
      {
        sub_21C8058E8(v1 + v30, v13, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C805A70(v13, type metadata accessor for PMAccount.Storage);
          v95 = 0;
          v96 = 0xE000000000000000;
          v73 = v126;
        }

        else
        {
          v117 = *v13;
          v118 = [*v13 serviceName];

          v73 = v126;
          if (v118)
          {
            v95 = sub_21CB855C4();
            v96 = v119;
          }

          else
          {
            v95 = 0;
            v96 = 0xE000000000000000;
          }
        }

        v120 = (v1 + *(v29 + 32));
        v121 = *v120;
        v122 = v120[1];
        *&v127 = v95;
        *(&v127 + 1) = v96;
        *&v128 = v121;
        *(&v128 + 1) = v122;
        v129 = 4;
        LOBYTE(v130) = 0;
        sub_21C805EBC();

LABEL_54:
        sub_21CB83494();
        v127 = v132;
        v128 = v133;
        v129 = v134;
        LOBYTE(v130) = v135;
        HIBYTE(v130) = 1;
        goto LABEL_55;
      }
    }

    v97 = PMAccount.userVisibleDomain.getter();
    v73 = v126;
    if (!v98)
    {
      v97 = PMAccount.effectiveTitle.getter();
    }

    v99 = (v1 + *(v29 + 32));
    v100 = *v99;
    v101 = v99[1];
    *&v127 = v97;
    *(&v127 + 1) = v98;
    *&v128 = v100;
    *(&v128 + 1) = v101;
    v129 = 1;
    LOBYTE(v130) = 1;
    sub_21C805EBC();

    goto LABEL_54;
  }

  v71 = v20;
  v72 = type metadata accessor for PMAccount(0);
  sub_21C8058E8(v1 + *(v72 + 24), v19, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C805A70(v19, type metadata accessor for PMAccount.Storage);
    v73 = v126;
LABEL_27:
    v88 = PMAccount.effectiveTitle.getter();
    v89 = (v1 + *(v71 + 32));
    v90 = *v89;
    v91 = v89[1];
    *&v127 = v88;
    *(&v127 + 1) = v92;
    *&v128 = v90;
    *(&v128 + 1) = v91;
    v129 = 3;
    LOBYTE(v130) = 1;
    goto LABEL_28;
  }

  v81 = *v19;
  v82 = [*v19 credentialTypes];

  v73 = v126;
  if (v82 != 4)
  {
    goto LABEL_27;
  }

  v83 = PMAccount.effectiveTitle.getter();
  v84 = (v1 + *(v71 + 32));
  v85 = *v84;
  v86 = v84[1];
  *&v127 = v83;
  *(&v127 + 1) = v87;
  *&v128 = v85;
  *(&v128 + 1) = v86;
  v129 = 4;
  LOBYTE(v130) = 0;
LABEL_28:
  sub_21C805EBC();

  sub_21CB83494();
  v127 = v132;
  v128 = v133;
  v129 = v134;
  v130 = v135;
LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC710, &qword_21CBA4700);
  sub_21C805E10();
  sub_21CB83494();
  if (HIBYTE(v135))
  {
    v123 = 256;
  }

  else
  {
    v123 = 0;
  }

  v127 = v132;
  v128 = v133;
  v129 = v134;
  v130 = v123 | v135;
  LOBYTE(v131) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC700, &qword_21CBA46F8);
  sub_21C805DE0();
  sub_21CB83494();
  v127 = v132;
  v128 = v133;
  v129 = v134;
  v131 = v136 != 0;
  v130 = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6F0, &qword_21CBA46F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC728, &qword_21CBA4708);
  sub_21C805E40(&qword_27CDEC6E8, &qword_27CDEC6F0, &qword_21CBA46F0, sub_21C805DE0);
  sub_21C805F10();
  result = sub_21CB83494();
  v112 = v132;
  v113 = v133;
  v114 = v134;
  v115 = v135 | (v136 << 16);
  v116 = v137;
LABEL_59:
  *v73 = v112;
  *(v73 + 16) = v113;
  *(v73 + 32) = v114;
  *(v73 + 40) = v115;
  *(v73 + 42) = BYTE2(v115);
  *(v73 + 43) = v116;
  return result;
}

uint64_t sub_21C803184(__int128 *a1)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v2 = *a1;
  v3 = a1[1];
  sub_21CB83E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC6A0, &qword_21CBA46C8);
  sub_21C805B2C();
  return sub_21CB840D4();
}

uint64_t sub_21C80320C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v16);
  v18 = &v25[-v17 - 8];
  v19 = type metadata accessor for PMAccount(0);
  sub_21C8058E8(v2 + *(v19 + 24), v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C8059AC(v11, v7, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v7[*(v4 + 72)], v15, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C805A70(v7, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v20 = *v11;
    sub_21CB85B94();
  }

  sub_21C716934(v15, v18, &unk_27CDF20B0, &unk_21CBA0090);
  v21 = sub_21CB85C44();
  v22 = (*(*(v21 - 8) + 48))(v18, 1, v21) != 1;
  sub_21C6EA794(v18, &unk_27CDF20B0, &unk_21CBA0090);
  v25[0] = v22;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v29 = 0x3FE199999999999ALL;
  v30 = 0;
  v31 = 0;
  return sub_21C8034B8(v2, v25, a1);
}

uint64_t sub_21C8034B8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a3;
  v139 = *a2;
  v5 = *(a2 + 2);
  v144 = *(a2 + 1);
  v145 = v5;
  v138 = a2[24];
  v146 = *(a2 + 4);
  v137 = a2[40];
  v147 = *(a2 + 6);
  v149 = type metadata accessor for PMFileVaultRecoveryKeyIcon();
  v6 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v150 = (&v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC638, &unk_21CBA4548);
  v8 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v151 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v152 = &v132 - v11;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC658, &qword_21CBB1FB0);
  v12 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v157 = &v132 - v13;
  v148 = type metadata accessor for PMAccount(0);
  v14 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v154 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v155 = &v132 - v17;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC628, &qword_21CBA4540);
  v18 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v158 = &v132 - v19;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC660, &qword_21CBA4590);
  v20 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v162 = &v132 - v21;
  v143 = sub_21CB80E34();
  v142 = *(v143 - 8);
  v22 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v140 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v141 = &v132 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v153 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v132 = &v132 - v30;
  v160 = type metadata accessor for PMAccountIcon();
  v31 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v33 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v136 = &v132 - v35;
  MEMORY[0x28223BE20](v36);
  v133 = (&v132 - v37);
  v38 = type metadata accessor for PMAccount.Storage(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (&v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v135 = &v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v132 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v132 - v49;
  v51 = type metadata accessor for PMSignInWithAppleAccount();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v132 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  PMAccount.signInWithAppleAccount.getter(v50);
  v134 = *(v52 + 48);
  if (v134(v50, 1, v51) == 1)
  {
    sub_21C6EA794(v50, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_11:
    v86 = v155;
    sub_21C8058E8(a1, v155, type metadata accessor for PMAccount);
    sub_21CAFAD24(v86, v166);
    if (*(&v166[0] + 1))
    {
      v167 = v166[3];
      sub_21C805950(&v167, v165);
      sub_21C6EA794(v166, &qword_27CDEC670, &unk_21CBC0D00);
      v87 = v150;
      *v150 = v167;
      *(v87 + 16) = 0;
      v88 = *(v149 + 24);
      *(v87 + v88) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
      swift_storeEnumTagMultiPayload();
      v89 = *a2;
      v90 = *(a2 + 2);
      v91 = *(a2 + 4);
      v92 = *(a2 + 6);
      if (a2[24])
      {
        v93 = 0.3;
      }

      else
      {
        v93 = *(a2 + 2);
      }

      if (a2[24])
      {
        v94 = 0.3;
      }

      else
      {
        v94 = *(a2 + 1);
      }

      if (a2[40])
      {
        v95 = 0.6;
      }

      else
      {
        v95 = *(a2 + 4);
      }

      LOBYTE(v165[0]) = 1;
      v96 = v87;
      v97 = v151;
      sub_21C8059AC(v96, v151, type metadata accessor for PMFileVaultRecoveryKeyIcon);
      v98 = v97 + *(v159 + 36);
      *v98 = v89;
      *(v98 + 8) = v94;
      *(v98 + 16) = v93;
      *(v98 + 24) = v95;
      *(v98 + 40) = 0;
      *(v98 + 48) = 0;
      *(v98 + 32) = 0x3FF1EB851EB851ECLL;
      *(v98 + 56) = 1;
      *(v98 + 64) = v92;
      v99 = v152;
      sub_21C716934(v97, v152, &qword_27CDEC638, &unk_21CBA4548);
      sub_21C6EDBAC(v99, v157, &qword_27CDEC638, &unk_21CBA4548);
      swift_storeEnumTagMultiPayload();
      sub_21C805790();
      sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon);

      v100 = v158;
      sub_21CB83494();
      sub_21C6EA794(v99, &qword_27CDEC638, &unk_21CBA4548);
    }

    else
    {
      sub_21C8058E8(a1, v154, type metadata accessor for PMAccount);
      v165[0] = *(a2 + 6);
      sub_21C6EDBAC(v165, &v167, &qword_27CDEC668, &qword_21CBA4598);
      PMAccount.signInWithAppleAccount.getter(v47);
      v101 = v134;
      if (v134(v47, 1, v51) == 1)
      {
        sub_21C6EA794(v47, &qword_27CDEB2A8, &qword_21CBA1670);
        v155 = PMAccount.titleForSorting.getter();
        v152 = v102;
      }

      else
      {
        v103 = &v47[*(v51 + 24)];
        v104 = v103[1];
        v155 = *v103;
        v152 = v104;

        sub_21C805A70(v47, type metadata accessor for PMSignInWithAppleAccount);
      }

      v105 = v135;
      v149 = v139 & 1;
      v150 = (v138 & 1);
      v151 = v137 & 1;
      v148 = PMAccount.userVisibleDomain.getter();
      v139 = v106;
      PMAccount.signInWithAppleAccount.getter(v105);
      if (v101(v105, 1, v51) == 1)
      {
        sub_21C6EA794(v105, &qword_27CDEB2A8, &qword_21CBA1670);
        v107 = sub_21CB85B74();
        (*(*(v107 - 8) + 56))(v153, 1, 1, v107);
      }

      else
      {
        v108 = *(v51 + 20);
        v109 = sub_21CB85B74();
        v110 = *(v109 - 8);
        v111 = v153;
        (*(v110 + 16))(v153, v105 + v108, v109);
        sub_21C805A70(v105, type metadata accessor for PMSignInWithAppleAccount);
        (*(v110 + 56))(v111, 0, 1, v109);
      }

      v112 = v160;
      KeyPath = swift_getKeyPath();
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(KeyPath, v167);

      type metadata accessor for PMAccountsState();
      sub_21C7064A0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
      v114 = sub_21CB82674();
      v116 = v115;

      *v33 = v114;
      *(v33 + 1) = v116;
      *(v33 + 2) = swift_getKeyPath();
      *(v33 + 3) = swift_getKeyPath();
      *(v33 + 4) = swift_getKeyPath();
      v165[2] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
      sub_21CB84D44();
      *(v33 + 40) = v167;
      v117 = v112[11];
      v118 = sub_21CB85B74();
      (*(*(v118 - 8) + 56))(&v33[v117], 1, 1, v118);
      v119 = &v33[v112[16]];
      v120 = &v33[v112[17]];
      *v120 = sub_21C7E79A0;
      *(v120 + 1) = 0;
      v120[16] = 0;
      v121 = v112[18];
      v122 = v141;
      sub_21CB80E24();
      v123 = v142;
      v124 = v143;
      (*(v142 + 16))(v140, v122, v143);
      sub_21CB84D44();
      (*(v123 + 8))(v122, v124);
      sub_21C805A70(v154, type metadata accessor for PMAccount);
      v125 = v152;
      *(v33 + 7) = v155;
      *(v33 + 8) = v125;
      v126 = v139;
      *(v33 + 9) = v148;
      *(v33 + 10) = v126;
      sub_21C805878(v153, &v33[v117]);
      v33[v112[12]] = 0;
      v33[v112[13]] = 1;
      v33[v112[14]] = 1;
      v127 = &v33[v112[15]];
      *v127 = xmmword_21CBA4340;
      v127[16] = 0;
      v128 = v144;
      *v119 = v149;
      v119[1] = v128;
      v129 = v150;
      v119[2] = v145;
      v119[3] = v129;
      v130 = v151;
      v119[4] = v146;
      v119[5] = v130;
      v119[6] = v147;
      v131 = v136;
      sub_21C8059AC(v33, v136, type metadata accessor for PMAccountIcon);
      sub_21C8058E8(v131, v157, type metadata accessor for PMAccountIcon);
      swift_storeEnumTagMultiPayload();
      sub_21C805790();
      sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
      v100 = v158;
      sub_21CB83494();
      sub_21C805A70(v131, type metadata accessor for PMAccountIcon);
    }

    sub_21C6EDBAC(v100, v162, &qword_27CDEC628, &qword_21CBA4540);
    swift_storeEnumTagMultiPayload();
    sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
    sub_21C8056D4();
    sub_21CB83494();
    return sub_21C6EA794(v100, &qword_27CDEC628, &qword_21CBA4540);
  }

  sub_21C8059AC(v50, v55, type metadata accessor for PMSignInWithAppleAccount);
  sub_21C8058E8(a1 + *(v148 + 24), v41, type metadata accessor for PMAccount.Storage);
  v56 = v55;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C805A70(v41, type metadata accessor for PMAccount.Storage);
LABEL_10:
    sub_21C805A70(v56, type metadata accessor for PMSignInWithAppleAccount);
    goto LABEL_11;
  }

  v57 = *v41;
  v58 = [v57 credentialTypes];

  v59 = v58 == 4;
  v56 = v55;
  if (!v59)
  {
    goto LABEL_10;
  }

  v60 = *(v51 + 20);
  v61 = &v55[*(v51 + 24)];
  v62 = v61[1];
  v157 = *v61;
  v63 = sub_21CB85B74();
  v64 = *(v63 - 8);
  v65 = v132;
  (*(v64 + 16))(v132, v56 + v60, v63);
  v159 = v56;
  v66 = *(v64 + 56);
  v66(v65, 0, 1, v63);
  v154 = v139 & 1;
  v156 = v138 & 1;
  v155 = v137 & 1;
  v67 = swift_getKeyPath();
  v158 = v62;

  sub_21C805A14(a2, v166);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v67, *&v166[0]);

  type metadata accessor for PMAccountsState();
  sub_21C7064A0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v68 = sub_21CB82674();
  v70 = v69;

  v71 = v133;
  *v133 = v68;
  *(v71 + 8) = v70;
  *(v71 + 16) = swift_getKeyPath();
  *(v71 + 24) = swift_getKeyPath();
  *(v71 + 32) = swift_getKeyPath();
  *&v167 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
  sub_21CB84D44();
  *(v71 + 40) = v166[0];
  v72 = v160;
  v73 = *(v160 + 44);
  v66(v71 + v73, 1, 1, v63);
  v74 = (v71 + v72[16]);
  v75 = v71 + v72[17];
  *v75 = sub_21C7E79A0;
  *(v75 + 8) = 0;
  *(v75 + 16) = 0;
  v76 = v72[18];
  v77 = v141;
  sub_21CB80E24();
  v78 = v142;
  v79 = v143;
  (*(v142 + 16))(v140, v77, v143);
  sub_21CB84D44();
  (*(v78 + 8))(v77, v79);
  v80 = v158;
  *(v71 + 56) = v157;
  *(v71 + 64) = v80;
  *(v71 + 72) = 0;
  *(v71 + 80) = 0;
  sub_21C805878(v65, v71 + v73);
  *(v71 + v72[12]) = 0;
  *(v71 + v72[13]) = 1;
  *(v71 + v72[14]) = 1;
  v81 = v71 + v72[15];
  *v81 = xmmword_21CBA4340;
  *(v81 + 16) = 0;
  v82 = v144;
  *v74 = v154;
  v74[1] = v82;
  v83 = v156;
  v74[2] = v145;
  v74[3] = v83;
  v84 = v155;
  v74[4] = v146;
  v74[5] = v84;
  v74[6] = v147;
  sub_21C8058E8(v71, v162, type metadata accessor for PMAccountIcon);
  swift_storeEnumTagMultiPayload();
  sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
  sub_21C8056D4();
  sub_21CB83494();
  sub_21C805A70(v71, type metadata accessor for PMAccountIcon);
  return sub_21C805A70(v159, type metadata accessor for PMSignInWithAppleAccount);
}

uint64_t sub_21C8049D8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = PMAccount.userName.getter();
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  v12 = [objc_opt_self() dontSaveMarker];
  v13 = sub_21CB855C4();
  v15 = v14;

  if (v10 == v13 && v11 == v15)
  {

LABEL_10:

    sub_21CB81014();
    goto LABEL_11;
  }

  v17 = sub_21CB86344();

  if (v17)
  {
    goto LABEL_10;
  }

  v20 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v20 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

LABEL_8:
    sub_21CB81014();
LABEL_11:
    sub_21CB81014();
    v10 = sub_21CB80FF4();
    v18 = *(v1 + 8);
    v18(v4, v0);
    v18(v7, v0);
  }

  return v10;
}

uint64_t sub_21C804C40()
{
  v1 = sub_21CB81024();
  v66 = *(v1 - 8);
  v2 = *(v66 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - v6;
  v8 = sub_21CB82F84();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount.Storage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v67 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v62 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = (&v62 - v19);
  v21 = type metadata accessor for PMAccountRow();
  v22 = *(v21 + 24);
  v68 = v0;
  v23 = (v0 + v22);
  v24 = *v23;
  v25 = v23[1];
  if (!v25)
  {
    v63 = v11;
    v64 = v1;
    v67 = 0;
    v28 = v24;
    v29 = type metadata accessor for PMAccount(0);
    v30 = v68;
    sub_21C8058E8(v68 + *(v29 + 24), v20, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C805A70(v20, type metadata accessor for PMAccount.Storage);
LABEL_21:
      v31 = sub_21C8049D8();
LABEL_22:
      v24 = v28;
      v25 = v67;
      goto LABEL_23;
    }

    v38 = *v20;
    v39 = [*v20 sharedGroupName];
    if (!v39)
    {

      goto LABEL_21;
    }

    v40 = v39;
    v41 = sub_21CB855C4();
    v43 = v42;

    if ([v38 hasSameUsernameAndHighLevelDomainAsOtherSharedSavedAccounts])
    {
      v62 = v41;
      v44 = v30 + *(v21 + 40);
      v45 = *v44;
      if (*(v44 + 8) == 1)
      {
        v46 = v4;
        v47 = v7;
        if ((v45 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_21CB85B04();
        v51 = sub_21CB83C94();
        sub_21CB81C14();

        v52 = v63;
        sub_21CB82F74();
        swift_getAtKeyPath();
        sub_21C7025C4(v45, 0);
        (*(v65 + 8))(v52, v8);
        v46 = v4;
        v47 = v7;
        if (v69 != 1)
        {
          goto LABEL_19;
        }
      }

      sub_21CB81014();
      sub_21CB81014();
      sub_21CB80FF4();
      v53 = *(v66 + 8);
      v54 = v64;
      v53(v46, v64);
      v53(v47, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_21CBA15B0;
      v56 = sub_21C8049D8();
      v58 = v57;
      v59 = MEMORY[0x277D837D0];
      *(v55 + 56) = MEMORY[0x277D837D0];
      v60 = sub_21C7C0050();
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      *(v55 + 96) = v59;
      *(v55 + 104) = v60;
      v61 = v62;
      *(v55 + 64) = v60;
      *(v55 + 72) = v61;
      *(v55 + 80) = v43;
      v31 = sub_21CB85594();

      goto LABEL_22;
    }

LABEL_19:

    goto LABEL_21;
  }

  if (v25 == 1)
  {
    v26 = *v23;
    v27 = *(type metadata accessor for PMAccount(0) + 24);
    sub_21C8058E8(v68 + v27, v17, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C805A70(v17, type metadata accessor for PMAccount.Storage);
LABEL_11:
      v36 = PMAccount.userVisibleDomain.getter();
      if (!v37)
      {
        v36 = PMAccount.effectiveTitle.getter();
      }

      v31 = v36;
      goto LABEL_14;
    }

    v33 = *v17;
    v34 = [*v17 credentialTypes];

    if (v34 != 4)
    {
      goto LABEL_11;
    }

    v35 = v67;
    sub_21C8058E8(v68 + v27, v67, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C805A70(v35, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v49 = *v35;
      v50 = [v49 serviceName];

      if (v50)
      {
        v31 = sub_21CB855C4();

LABEL_14:
        v24 = v26;
        v25 = 1;
        goto LABEL_23;
      }
    }

    v31 = 0;
    goto LABEL_14;
  }

  v31 = *v23;
  v32 = v23[1];
LABEL_23:
  sub_21C7EC3F4(v24, v25);
  return v31;
}

uint64_t sub_21C805284()
{
  v1 = type metadata accessor for PMAccountRowLabelStyle();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5E0, &qword_21CBA4520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v14 = v0;
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5E8, &qword_21CBA4528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5F0, &qword_21CBA4530);
  sub_21C6EADEC(&qword_27CDEC5F8, &qword_27CDEC5E8, &qword_21CBA4528);
  sub_21C805594();
  sub_21CB84C84();
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v10 = *(v1 + 20);
  *(v4 + v10) = sub_21CB83074();
  sub_21C6EADEC(&qword_27CDEC648, &qword_27CDEC5E0, &qword_21CBA4520);
  sub_21C7064A0(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle);
  sub_21CB840E4();
  sub_21C805A70(v4, type metadata accessor for PMAccountRowLabelStyle);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_21C805594()
{
  result = qword_27CDEC600;
  if (!qword_27CDEC600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC5F0, &qword_21CBA4530);
    sub_21C805618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC600);
  }

  return result;
}

unint64_t sub_21C805618()
{
  result = qword_27CDEC608;
  if (!qword_27CDEC608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC610, &qword_21CBA4538);
    sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
    sub_21C8056D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC608);
  }

  return result;
}

unint64_t sub_21C8056D4()
{
  result = qword_27CDEC620;
  if (!qword_27CDEC620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC628, &qword_21CBA4540);
    sub_21C805790();
    sub_21C7064A0(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC620);
  }

  return result;
}

unint64_t sub_21C805790()
{
  result = qword_27CDEC630;
  if (!qword_27CDEC630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC638, &unk_21CBA4548);
    sub_21C7064A0(&qword_27CDEC640, type metadata accessor for PMFileVaultRecoveryKeyIcon);
    sub_21C6EADEC(&qword_27CDEBB20, &qword_27CDEBB28, &unk_21CBA2B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC630);
  }

  return result;
}

uint64_t sub_21C805878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8058E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8059AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C805A70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C805AD8()
{
  result = qword_27CDEC698;
  if (!qword_27CDEC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC698);
  }

  return result;
}

unint64_t sub_21C805B2C()
{
  result = qword_27CDEC6B0;
  if (!qword_27CDEC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC6A0, &qword_21CBA46C8);
    sub_21C805BE4();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC6B0);
  }

  return result;
}

unint64_t sub_21C805BE4()
{
  result = qword_27CDEC6B8;
  if (!qword_27CDEC6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC6C0, &qword_21CBA46D8);
    sub_21C805C9C();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC6B8);
  }

  return result;
}

unint64_t sub_21C805C9C()
{
  result = qword_27CDEC6C8;
  if (!qword_27CDEC6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC6D0, &qword_21CBA46E0);
    sub_21C805D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC6C8);
  }

  return result;
}

unint64_t sub_21C805D28()
{
  result = qword_27CDEC6D8;
  if (!qword_27CDEC6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC6E0, &qword_21CBA46E8);
    sub_21C805E40(&qword_27CDEC6E8, &qword_27CDEC6F0, &qword_21CBA46F0, sub_21C805DE0);
    sub_21C805F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC6D8);
  }

  return result;
}

uint64_t sub_21C805E40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C805EBC()
{
  result = qword_27CDEC718;
  if (!qword_27CDEC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC718);
  }

  return result;
}

unint64_t sub_21C805F10()
{
  result = qword_27CDEC720;
  if (!qword_27CDEC720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC728, &qword_21CBA4708);
    sub_21C805EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC720);
  }

  return result;
}

uint64_t sub_21C805FA0(void *a1)
{
  v1 = [a1 type];
  v2 = *MEMORY[0x277D49D68];
  v3 = sub_21CB855C4();
  v5 = v4;
  if (v3 == sub_21CB855C4() && v5 == v6)
  {
    goto LABEL_14;
  }

  v8 = sub_21CB86344();

  if (v8)
  {
LABEL_6:

    goto LABEL_15;
  }

  v9 = *MEMORY[0x277D49D60];
  v10 = sub_21CB855C4();
  v12 = v11;
  if (v10 == sub_21CB855C4() && v12 == v13)
  {
    goto LABEL_14;
  }

  v15 = sub_21CB86344();

  if (v15)
  {
    goto LABEL_6;
  }

  v16 = *MEMORY[0x277D49D58];
  v17 = sub_21CB855C4();
  v19 = v18;
  if (v17 == sub_21CB855C4() && v19 == v20)
  {
    goto LABEL_14;
  }

  v24 = sub_21CB86344();

  if (v24)
  {
    goto LABEL_6;
  }

  v25 = *MEMORY[0x277D49D70];
  v26 = sub_21CB855C4();
  v28 = v27;
  if (v26 == sub_21CB855C4() && v28 == v29)
  {
LABEL_14:
  }

  else
  {
    v30 = sub_21CB86344();

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_15:
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    return 0;
  }

  v22 = [v21 password];
  v23 = sub_21CB855C4();

  return v23;
}

uint64_t sub_21C80620C(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v41 - v9;
  v11 = [a1 type];
  v12 = *MEMORY[0x277D49D60];
  v13 = sub_21CB855C4();
  v15 = v14;
  if (v13 == sub_21CB855C4() && v15 == v16)
  {

    goto LABEL_8;
  }

  v18 = sub_21CB86344();

  if ((v18 & 1) == 0)
  {
    v20 = *MEMORY[0x277D49D68];
    v21 = sub_21CB855C4();
    v23 = v22;
    if (v21 != sub_21CB855C4() || v23 != v24)
    {
      v26 = sub_21CB86344();

      if (v26)
      {

LABEL_16:
        sub_21CB81014();
        sub_21CB81014();
        v19 = sub_21CB80FF4();
        v27 = *(v3 + 8);
        v27(v6, v2);
        v27(v10, v2);
        return v19;
      }

      v29 = *MEMORY[0x277D49D70];
      v30 = sub_21CB855C4();
      v32 = v31;
      if (v30 != sub_21CB855C4() || v32 != v33)
      {
        v34 = sub_21CB86344();

        if (v34)
        {

          goto LABEL_16;
        }

        v35 = *MEMORY[0x277D49D58];
        v36 = sub_21CB855C4();
        v38 = v37;
        if (v36 != sub_21CB855C4() || v38 != v39)
        {
          v40 = sub_21CB86344();

          if ((v40 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

LABEL_8:
  sub_21CB81014();
  v19 = sub_21CB81004();
  (*(v3 + 8))(v10, v2);
  return v19;
}

uint64_t sub_21C806664(void *a1)
{
  v1 = [a1 type];
  v2 = *MEMORY[0x277D49D68];
  v3 = sub_21CB855C4();
  v5 = v4;
  if (v3 == sub_21CB855C4() && v5 == v6)
  {
    v9 = 0x73746F642E79656BLL;

    return v9;
  }

  v8 = sub_21CB86344();

  if (v8)
  {
    v9 = 0x73746F642E79656BLL;

    return v9;
  }

  v9 = 0x6C69636E6570;
  v10 = *MEMORY[0x277D49D70];
  v11 = sub_21CB855C4();
  v13 = v12;
  if (v11 == sub_21CB855C4() && v13 == v14)
  {
    goto LABEL_17;
  }

  v16 = sub_21CB86344();

  if (v16)
  {
LABEL_14:

    return v9;
  }

  v17 = *MEMORY[0x277D49D60];
  v18 = sub_21CB855C4();
  v20 = v19;
  if (v18 == sub_21CB855C4() && v20 == v21)
  {
    goto LABEL_17;
  }

  v23 = sub_21CB86344();

  if (v23)
  {
    goto LABEL_14;
  }

  v24 = *MEMORY[0x277D49D58];
  v25 = sub_21CB855C4();
  v27 = v26;
  if (v25 == sub_21CB855C4() && v27 == v28)
  {
LABEL_17:

    return v9;
  }

  v29 = sub_21CB86344();

  if ((v29 & 1) == 0)
  {
    return 0;
  }

  return v9;
}

uint64_t sub_21C8068C8(void *a1)
{
  v1 = [a1 type];
  v2 = *MEMORY[0x277D49D68];
  v3 = sub_21CB855C4();
  v5 = v4;
  if (v3 == sub_21CB855C4() && v5 == v6)
  {
    goto LABEL_15;
  }

  v8 = sub_21CB86344();

  if (v8)
  {
LABEL_6:

LABEL_16:

    return sub_21CB84AC4();
  }

  v9 = *MEMORY[0x277D49D58];
  v10 = sub_21CB855C4();
  v12 = v11;
  if (v10 == sub_21CB855C4() && v12 == v13)
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = sub_21CB86344();

  if (v15)
  {
    goto LABEL_6;
  }

  v16 = *MEMORY[0x277D49D70];
  v17 = sub_21CB855C4();
  v19 = v18;
  if (v17 == sub_21CB855C4() && v19 == v20)
  {
    goto LABEL_14;
  }

  v22 = sub_21CB86344();

  if (v22)
  {

    goto LABEL_21;
  }

  v23 = *MEMORY[0x277D49D60];
  v24 = sub_21CB855C4();
  v26 = v25;
  if (v24 == sub_21CB855C4() && v26 == v27)
  {
LABEL_14:

LABEL_21:

    return sub_21CB84AF4();
  }

  v28 = sub_21CB86344();

  if (v28)
  {
    goto LABEL_21;
  }

  return sub_21CB84A84();
}

uint64_t sub_21C806B18(void *a1)
{
  v2 = sub_21CB80DD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 type];
  v9 = *MEMORY[0x277D49D58];
  v10 = sub_21CB855C4();
  v12 = v11;
  if (v10 == sub_21CB855C4() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_21CB86344();

    if ((v15 & 1) == 0)
    {
      v16 = [a1 date];
      sub_21CB80D94();

      v17 = Date.stringUsingHistoryItemAutoFillViewHostingFormat.getter();
      (*(v3 + 8))(v7, v2);
      return v17;
    }
  }

  return 0;
}

uint64_t type metadata accessor for PMAirDropView()
{
  result = qword_27CDEC750;
  if (!qword_27CDEC750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C806D74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC760, &qword_21CBA4850);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC768, &qword_21CBA4858);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v50 - v10;
  v11 = sub_21CB80BE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC770, &qword_21CBA4860);
  v19 = *(v60 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v60);
  v22 = &v50 - v21;
  v23 = type metadata accessor for PMAccount.Storage(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for PMAccount(0);
  sub_21C7B7408(v1 + *(v27 + 24), v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C807658(v26);
    v28 = 1;
  }

  else
  {
    v29 = *v26;
    v30 = [objc_allocWithZone(MEMORY[0x277D49DF8]) initWithSavedPassword_];
    v31 = [v30 urlRepresentationForAirDrop];
    if (v31)
    {
      v50 = v30;
      v51 = v29;
      v52 = a1;
      v32 = v31;
      sub_21CB80B94();

      (*(v12 + 32))(v18, v15, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC778, &qword_21CBA4868);
      v33 = *(v12 + 72);
      v34 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_21CBA0690;
      (*(v12 + 16))(v35 + v34, v18, v11);
      v61 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3F0, &qword_21CBA4870);
      v36 = *(sub_21CB83184() - 8);
      v37 = *(v36 + 72);
      v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_21CBA15B0;
      sub_21CB83164();
      sub_21CB83154();
      sub_21C8D7B00(v39);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_21C807604();
      v40 = v55;
      sub_21CB844D4();

      v41 = sub_21CB82934();
      v42 = sub_21CB83D04();
      v43 = sub_21CB83D24();
      sub_21CB83D24();
      if (sub_21CB83D24() != v42)
      {
        v43 = sub_21CB83D24();
      }

      (*(v12 + 8))(v18, v11);
      v44 = v53;
      (*(v56 + 32))(v53, v40, v57);
      v45 = v59;
      v46 = v44 + *(v59 + 36);
      *v46 = v41;
      *(v46 + 8) = v43;
      v47 = v54;
      sub_21C716934(v44, v54, &qword_27CDEC768, &qword_21CBA4858);
      sub_21C716934(v47, v22, &qword_27CDEC768, &qword_21CBA4858);
      v48 = 0;
      a1 = v52;
    }

    else
    {

      v48 = 1;
      v45 = v59;
    }

    (*(v58 + 56))(v22, v48, 1, v45);
    sub_21C716934(v22, a1, &qword_27CDEC770, &qword_21CBA4860);
    v28 = 0;
  }

  return (*(v19 + 56))(a1, v28, 1, v60);
}

id sub_21C8073C0(uint64_t a1, uint64_t a2)
{
  sub_21CA493E0(a2);
  v2 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v3 = sub_21CB85814();

  v4 = [v2 initWithActivityItems:v3 applicationActivities:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFE0, &qword_21CBA0D50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  v6 = *MEMORY[0x277D54710];
  type metadata accessor for ActivityType(0);
  *(v5 + 56) = v7;
  *(v5 + 32) = v6;
  v8 = v6;
  v9 = sub_21CB85814();

  [v4 setIncludedActivityTypes_];

  return v4;
}

uint64_t sub_21C807514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C807838();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21C807578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C807838();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21C8075DC()
{
  sub_21C807838();
  sub_21CB83B44();
  __break(1u);
}

unint64_t sub_21C807604()
{
  result = qword_27CDEC780;
  if (!qword_27CDEC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC780);
  }

  return result;
}

uint64_t sub_21C807658(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C8076F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C807770()
{
  result = qword_27CDEC7A0;
  if (!qword_27CDEC7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC768, &qword_21CBA4858);
    sub_21C807604();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC7A0);
  }

  return result;
}

unint64_t sub_21C807838()
{
  result = qword_27CDEC7A8;
  if (!qword_27CDEC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC7A8);
  }

  return result;
}

uint64_t sub_21C80788C()
{
  v0 = sub_21C8D7E20(&unk_282E48B60);
  swift_arrayDestroy();

  v1 = sub_21CB85714();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = v0 + 56;
    do
    {
      if (*(v0 + 16))
      {
        v7 = *(v0 + 40);
        sub_21CB86484();
        sub_21CB854C4();
        v8 = sub_21CB864D4();
        v9 = -1 << *(v0 + 32);
        v10 = v8 & ~v9;
        if ((*(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          v11 = ~v9;
          while (1)
          {
            v12 = (*(v0 + 48) + 16 * v10);
            v13 = *v12 == v3 && v4 == v12[1];
            if (v13 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v10 = (v10 + 1) & v11;
            if (((*(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          MEMORY[0x21CF151F0](92, 0xE100000000000000);
        }
      }

LABEL_4:
      MEMORY[0x21CF151E0](v3, v4);

      v3 = sub_21CB85714();
      v4 = v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t sub_21C807A74(void *a1)
{
  v2 = type metadata accessor for PMWiFiNetwork();
  result = 0;
  v4 = *(a1 + v2[11]);
  if ((v4 & 0xFFFFFFFFFFFFFCAALL) == 0)
  {
    if (v4 <= 0xFF)
    {
      if (*(a1 + v2[12]) == 1)
      {
        v5 = 5260631;
      }

      else
      {
        v5 = 4280407;
      }

      MEMORY[0x21CF151F0](v5, 0xE300000000000000);

      MEMORY[0x21CF151F0](59, 0xE100000000000000);
      MEMORY[0x21CF151F0](14932, 0xE200000000000000);
    }

    v6 = a1[2];
    v7 = a1[3];
    v8 = sub_21C80788C();
    MEMORY[0x21CF151F0](v8);

    MEMORY[0x21CF151F0](59, 0xE100000000000000);
    MEMORY[0x21CF151F0](14931, 0xE200000000000000);

    if (a1[5])
    {
      v9 = a1[4];
      v10 = sub_21C80788C();
      MEMORY[0x21CF151F0](v10);

      MEMORY[0x21CF151F0](59, 0xE100000000000000);
      MEMORY[0x21CF151F0](14928, 0xE200000000000000);
    }

    if (*(a1 + v2[10]) == 1)
    {
      MEMORY[0x21CF151F0](0x3B657572743A48, 0xE700000000000000);
    }

    MEMORY[0x21CF151F0](59, 0xE100000000000000);
    return 0x3A49464957;
  }

  return result;
}

uint64_t sub_21C807C3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v23 = a6;
  v21[0] = a2;
  v21[1] = a7;
  v22 = a8;
  v12 = type metadata accessor for PMAccountsContextMenu();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = v17;
  sub_21C74C770(&v27, v24);

  sub_21C6EDBAC(&v25, v24, &qword_27CDEAEF8, &unk_21CBA0740);

  sub_21C71DD5C(a4);
  v19 = sub_21C807F5C(a1, v21[0], a3, a4, a5, v16);
  MEMORY[0x21CF14400](v16, v23, v12, v22, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21C807DCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_21C6EDBAC(a1, &v6 - v4, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB84D44();
  return sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C807E94(uint64_t a1)
{
  v2 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_21C80CB60(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21CB84D44();
  return sub_21C80CD5C(a1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
}

__n128 sub_21C807F5C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v8 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for PMAccountsContextMenu();
  v18 = v17[9];
  v19 = type metadata accessor for PMAccount(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v16, 1, 1, v19);
  sub_21C807DCC(v16);
  v21 = v17[10];
  v22 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v20(&v12[*(v9 + 28)], 1, 1, v19);
  sub_21C807E94(v12);
  v23 = v17[13];
  v24 = (a6 + v17[12]);
  *(a6 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v25 = a6 + v17[14];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  *(a6 + 32) = *(a1 + 32);
  result = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = result;
  v27 = (a6 + v17[11]);
  v28 = v31;
  *v27 = v30;
  v27[1] = v28;
  v29 = v33;
  *v24 = v32;
  v24[1] = v29;
  return result;
}

uint64_t sub_21C8081A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a2;
  v96 = a1;
  v98 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v68 - v9;
  v88 = *(a2 - 8);
  v94 = *(v88 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v12 = sub_21CB83744();
  v13 = *(a2 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC868, &qword_21CBA4AA0);
  WitnessTable = swift_getWitnessTable();
  v16 = *(a2 + 24);
  v17 = sub_21C6EADEC(&qword_27CDEC870, &qword_27CDEC868, &qword_21CBA4AA0);
  v101 = v12;
  v102 = v13;
  v81 = v12;
  v18 = v13;
  v80 = v13;
  v103 = v14;
  v104 = WitnessTable;
  v84 = v14;
  v83 = WitnessTable;
  v105 = v16;
  v106 = v17;
  v79 = v16;
  v19 = v17;
  v82 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v93 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v87 = &v68 - v21;
  type metadata accessor for PMMoveAccountToGroupAlert(255);
  v22 = sub_21CB828F4();
  v23 = type metadata accessor for PMAccount(255);
  v24 = type metadata accessor for PMNewGroupFlow(255);
  v101 = v12;
  v102 = v18;
  v103 = v14;
  v104 = WitnessTable;
  v105 = v16;
  v106 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = OpaqueTypeConformance2;
  v26 = sub_21C80CD14(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert);
  v99 = OpaqueTypeConformance2;
  v100 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_21C80CD14(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  v29 = sub_21C80CD14(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  v101 = v22;
  v102 = v23;
  v103 = v24;
  v104 = v27;
  v105 = v28;
  v106 = v29;
  v30 = MEMORY[0x277CDEE40];
  v31 = swift_getOpaqueTypeMetadata2();
  v75 = v31;
  v85 = *(v31 - 8);
  v32 = *(v85 + 64);
  MEMORY[0x28223BE20](v31);
  v69 = &v68 - v33;
  v34 = type metadata accessor for PMAirDropView();
  v101 = v22;
  v102 = v23;
  v74 = v23;
  v103 = v24;
  v104 = v27;
  v71 = v28;
  v105 = v28;
  v106 = v29;
  v77 = v30;
  v35 = swift_getOpaqueTypeConformance2();
  v72 = v35;
  v70 = sub_21C80CD14(&qword_27CDEB788, type metadata accessor for PMAirDropView);
  v101 = v31;
  v102 = v23;
  v103 = v34;
  v104 = v35;
  v105 = v28;
  v106 = v70;
  v76 = swift_getOpaqueTypeMetadata2();
  v78 = *(v76 - 8);
  v36 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  v68 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v38);
  v73 = &v68 - v40;
  v42 = v88;
  v41 = v89;
  v43 = v91;
  (*(v88 + 16))(v91, v92, v89, v39);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v46 = v79;
  *(v45 + 16) = v80;
  *(v45 + 24) = v46;
  v47 = *(v42 + 32);
  v48 = v41;
  v47(v45 + v44, v43, v41);
  swift_checkMetadataState();
  v49 = v87;
  sub_21CB84144();

  v50 = *(v48 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  v51 = v95;
  sub_21CB84D74();
  v52 = v69;
  v53 = OpaqueTypeMetadata2;
  sub_21CA673E0(v51, 0, 0, OpaqueTypeMetadata2, v86, v69);
  sub_21C6EA794(v51, &qword_27CDEB6B8, &qword_21CBA2488);
  (*(v93 + 8))(v49, v53);
  v54 = *(v48 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  v55 = v97;
  sub_21CB84D74();
  v56 = swift_checkMetadataState();
  v57 = v70;
  v58 = v71;
  v59 = v72;
  v60 = v68;
  v61 = v75;
  v62 = v74;
  sub_21CB847C4();
  sub_21C6EA794(v55, &qword_27CDEB1E8, &qword_21CBA13A0);
  (*(v85 + 8))(v52, v61);
  v101 = v61;
  v102 = v62;
  v103 = v56;
  v104 = v59;
  v105 = v58;
  v106 = v57;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v73;
  v65 = v76;
  sub_21C72BE10(v60, v76, v63);
  v66 = *(v78 + 8);
  v66(v60, v65);
  sub_21C72BE10(v64, v65, v63);
  return (v66)(v64, v65);
}

uint64_t sub_21C808ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PMAccountsContextMenu();
  v7 = a2 + *(v6 + 44);
  v8 = *(v7 + 8);
  v9 = (*v7)(a1);
  sub_21C808B58(v9, v6, a3);
}

uint64_t sub_21C808B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC878, &qword_21CBA4AA8);
  v6 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v83 = &v80 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC880, &qword_21CBA4AB0);
  v85 = *(v95 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v95);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC888, &qword_21CBA4AB8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v92 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v93 = &v80 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC890, &qword_21CBA4AC0);
  v17 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v80 - v18;
  v86 = type metadata accessor for PMAccount.Storage(0);
  v19 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v21 = (&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC898, &qword_21CBA4AC8);
  v98 = *(v22 - 8);
  v99 = v22;
  v23 = *(v98 + 64);
  MEMORY[0x28223BE20](v22);
  v90 = &v80 - v24;
  v25 = type metadata accessor for PMAccount(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A0, &unk_21CBA4AD0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v100 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v103 = &v80 - v34;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  v35 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v97 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v80 - v38;
  MEMORY[0x28223BE20](v40);
  v104 = &v80 - v41;
  MEMORY[0x28223BE20](v42);
  v96 = &v80 - v43;
  v44 = a2;
  v102 = v3;
  sub_21C809600(a1, a2, &v80 - v43);
  v45 = *(a1 + 16);
  if (v45)
  {
    sub_21C80CB60(a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v29, type metadata accessor for PMAccount);
    if (v45 == 1)
    {
      sub_21C80CB60(&v29[*(v25 + 24)], v21, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v82 = v44;
      if (EnumCaseMultiPayload == 1)
      {
        sub_21C80CD5C(v21, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v49 = *v21;
        v50 = [v49 userIsNeverSaveMarker];

        if (v50)
        {
          v47 = v39;
          v51 = v104;
          sub_21C80987C(v29, v44, v104);
          sub_21C6EDBAC(v51, v89, &qword_27CDEC8A8, &unk_21CBACF50);
          swift_storeEnumTagMultiPayload();
          sub_21C80CBC8();
          sub_21C6EADEC(&qword_27CDEC8D8, &qword_27CDEC878, &qword_21CBA4AA8);
          v52 = v90;
          sub_21CB83494();
          v53 = v51;
          v54 = &qword_27CDEC8A8;
          v55 = &unk_21CBACF50;
LABEL_11:
          sub_21C6EA794(v53, v54, v55);
          sub_21C80CD5C(v29, type metadata accessor for PMAccount);
          sub_21C716934(v52, v103, &qword_27CDEC898, &qword_21CBA4AC8);
          v48 = 0;
          v44 = v82;
          goto LABEL_12;
        }
      }

      v56 = v93;
      sub_21C80CB60(v29, v93, type metadata accessor for PMAccount);
      v57 = v104;
      v81 = v29;
      sub_21C80987C(v29, v44, v104);
      v58 = v94;
      sub_21C809AA8(v29, v44);
      v59 = v92;
      sub_21C6EDBAC(v56, v92, &qword_27CDEC888, &qword_21CBA4AB8);
      sub_21C6EDBAC(v57, v39, &qword_27CDEC8A8, &unk_21CBACF50);
      v60 = v84;
      v61 = v85;
      v62 = *(v85 + 16);
      v63 = v58;
      v64 = v95;
      v62(v84, v63, v95);
      v65 = v59;
      v66 = v83;
      sub_21C6EDBAC(v65, v83, &qword_27CDEC888, &qword_21CBA4AB8);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8B8, &qword_21CBA4AE8);
      v86 = a1;
      v68 = v67;
      sub_21C6EDBAC(v39, v66 + *(v67 + 48), &qword_27CDEC8A8, &unk_21CBACF50);
      v62((v66 + *(v68 + 64)), v60, v64);
      v69 = *(v61 + 8);
      v69(v60, v64);
      v47 = v39;
      sub_21C6EA794(v39, &qword_27CDEC8A8, &unk_21CBACF50);
      sub_21C6EA794(v92, &qword_27CDEC888, &qword_21CBA4AB8);
      sub_21C6EDBAC(v66, v89, &qword_27CDEC878, &qword_21CBA4AA8);
      swift_storeEnumTagMultiPayload();
      sub_21C80CBC8();
      sub_21C6EADEC(&qword_27CDEC8D8, &qword_27CDEC878, &qword_21CBA4AA8);
      v52 = v90;
      sub_21CB83494();
      a1 = v86;
      sub_21C6EA794(v66, &qword_27CDEC878, &qword_21CBA4AA8);
      v29 = v81;
      v69(v94, v95);
      sub_21C6EA794(v104, &qword_27CDEC8A8, &unk_21CBACF50);
      v53 = v93;
      v54 = &qword_27CDEC888;
      v55 = &qword_21CBA4AB8;
      goto LABEL_11;
    }

    v47 = v39;
    sub_21C80CD5C(v29, type metadata accessor for PMAccount);
  }

  else
  {
    v47 = v39;
  }

  v48 = 1;
LABEL_12:
  v70 = v103;
  (*(v98 + 56))(v103, v48, 1, v99);
  v71 = v104;
  sub_21C809B54(a1, v44, v104);
  v72 = v96;
  v73 = v47;
  sub_21C6EDBAC(v96, v47, &qword_27CDEC8A8, &unk_21CBACF50);
  v74 = v100;
  sub_21C6EDBAC(v70, v100, &qword_27CDEC8A0, &unk_21CBA4AD0);
  v75 = v97;
  sub_21C6EDBAC(v71, v97, &qword_27CDEC8A8, &unk_21CBACF50);
  v76 = v47;
  v77 = v101;
  sub_21C6EDBAC(v76, v101, &qword_27CDEC8A8, &unk_21CBACF50);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8B0, &qword_21CBA4AE0);
  sub_21C6EDBAC(v74, v77 + *(v78 + 48), &qword_27CDEC8A0, &unk_21CBA4AD0);
  sub_21C6EDBAC(v75, v77 + *(v78 + 64), &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v71, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v70, &qword_27CDEC8A0, &unk_21CBA4AD0);
  sub_21C6EA794(v72, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v75, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v74, &qword_27CDEC8A0, &unk_21CBA4AD0);
  return sub_21C6EA794(v73, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21C809600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21CB82F84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v3 + *(a2 + 56);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_21CB85B04();
    v15 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v14, 0);
    v10 = (*(v8 + 8))(v12, v7);
    if (v19[15] != 1)
    {
LABEL_7:
      v16 = 1;
      goto LABEL_8;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  MEMORY[0x28223BE20](v10);
  *&v19[-32] = *(a2 + 16);
  *&v19[-16] = a1;
  *&v19[-8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB85054();
  v16 = 0;
LABEL_8:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  return (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
}

uint64_t sub_21C80987C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  v8 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v20 - v12;
  v14 = (v3 + *(a2 + 48));
  v15 = *v14;
  if (*v14)
  {
    v16 = v14[1];
    MEMORY[0x28223BE20](v9);
    *(&v20 - 4) = v15;
    *(&v20 - 3) = v16;
    *(&v20 - 2) = a1;
    v21 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21CB85054();
    sub_21C71B710(v15);
    (*(v21 + 32))(a3, v13, v7);
    return (*(v21 + 56))(a3, 0, 1, v7);
  }

  else
  {
    v19 = *(v10 + 56);

    return v19(a3, 1, 1, v7, v11);
  }
}

uint64_t sub_21C809AA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8E0, &qword_21CBA4B00);
  sub_21C6EADEC(&qword_27CDEC8E8, &qword_27CDEC8E0, &qword_21CBA4B00);
  return sub_21CB85054();
}

uint64_t sub_21C809B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v26 = a2;
    v27 = a1;
    v28 = v3;
    v29 = a3;
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    do
    {
      sub_21C80CB60(v17, v15, type metadata accessor for PMAccount);
      sub_21C80CB60(&v15[*(v11 + 24)], v10, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C80CD5C(v10, type metadata accessor for PMAccount.Storage);
        v19 = sub_21C80CD5C(v15, type metadata accessor for PMAccount);
      }

      else
      {
        v20 = *v10;
        v21 = [*v10 canUserEditSavedAccount];

        v19 = sub_21C80CD5C(v15, type metadata accessor for PMAccount);
        if ((v21 & 1) == 0)
        {
          v22 = 1;
          a3 = v29;
          goto LABEL_10;
        }
      }

      v17 += v18;
      --v16;
    }

    while (v16);
    MEMORY[0x28223BE20](v19);
    *(&v26 - 2) = *(v26 + 16);
    v23 = v27;
    *(&v26 - 2) = v28;
    *(&v26 - 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    a3 = v29;
    sub_21CB85054();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

LABEL_10:
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  return (*(*(v24 - 8) + 56))(a3, v22, 1, v24);
}

uint64_t sub_21C809E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PMAccountsContextMenu();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v17[-v12];
  (*(v9 + 16))(&v17[-v12], a2, v8, v11);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a1;
  (*(v9 + 32))(&v15[v14], v13, v8);
  v18 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84DA4();
}

void sub_21C80A050(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v29 = sub_21CB82F84();
  v33 = *(v29 - 8);
  v3 = *(v33 + 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  v5 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v7 = (&v26 - v6);
  v8 = sub_21CB82A34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + 16);
  if (v18)
  {
    v30 = *(type metadata accessor for PMAccountsContextMenu() + 52);
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v26 = (v9 + 32);
    v27 = (v33 + 8);
    v21 = (v9 + 8);
    v33 = v12;
    do
    {
      sub_21C80CB60(v19, v17, type metadata accessor for PMAccount);
      sub_21C6EDBAC(v32 + v30, v7, &qword_27CDEC0D0, &qword_21CBA3BF0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v26)(v12, v7, v8);
      }

      else
      {
        v23 = *v7;
        sub_21CB85B04();
        v24 = sub_21CB83C94();
        sub_21CB81C14();

        v25 = v28;
        sub_21CB82F74();
        swift_getAtKeyPath();

        (*v27)(v25, v29);
      }

      v22 = v17[1];
      v34 = *v17;
      v35 = v22;

      sub_21CB82A14();
      v12 = v33;

      (*v21)(v12, v8);
      sub_21C80CD5C(v17, type metadata accessor for PMAccount);
      v19 += v20;
      --v18;
    }

    while (v18);
  }
}

uint64_t sub_21C80A480(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16) == 1;
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v12[0] = v8;
  v12[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C80A5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21C80CB60(a3, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccount);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_21C80CDBC(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PMAccount);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84DA4();
}

uint64_t sub_21C80A7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v139 = a3;
  v140 = a4;
  v145 = a2;
  v146 = a1;
  v143 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB798, &unk_21CBA2530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v144 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v142 = &v113 - v9;
  v10 = sub_21CB82874();
  v133 = *(v10 - 8);
  v134 = v10;
  v11 = *(v133 + 64);
  MEMORY[0x28223BE20](v10);
  v132 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for PMAccount.MockData(0);
  v13 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v118 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v125 = *(v126 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v121 = &v113 - v16;
  v17 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v124 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v137 = &v113 - v22;
  v23 = sub_21CB81024();
  v119 = *(v23 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v113 - v28;
  v138 = type metadata accessor for PMAccount(0);
  v30 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v135 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v32 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v123 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8F0, &qword_21CBA4B08);
  v130 = *(v34 - 8);
  v131 = v34;
  v35 = *(v130 + 64);
  MEMORY[0x28223BE20](v34);
  v129 = &v113 - v36;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8F8, &qword_21CBA4B10);
  v37 = *(v141 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v141);
  v128 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v127 = &v113 - v41;
  v42 = type metadata accessor for PMAccount.Storage(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v120 = (&v113 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v47 = (&v113 - v46);
  MEMORY[0x28223BE20](v48);
  v50 = (&v113 - v49);
  MEMORY[0x28223BE20](v51);
  v53 = (&v113 - v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC900, &qword_21CBA4B18);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v57 = &v113 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v113 - v59;
  if (![objc_opt_self() isOngoingCredentialSharingEnabled])
  {
    goto LABEL_12;
  }

  v116 = *(v138 + 24);
  sub_21C80CB60(v146 + v116, v53, type metadata accessor for PMAccount.Storage);
  v136 = v42;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v53, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v61 = *v53;
    v62 = [v61 canUserEditSavedAccount];

    if (!v62)
    {
LABEL_12:
      (*(v37 + 56))(v60, 1, 1, v141);
      v91 = type metadata accessor for PMAccountsContextMenu();
      goto LABEL_13;
    }
  }

  sub_21C80CB60(v146 + v116, v50, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v50, type metadata accessor for PMAccount.Storage);
    goto LABEL_12;
  }

  v63 = *v50;
  v64 = [v63 isCurrentUserOriginalContributor];

  if (!v64)
  {
    goto LABEL_12;
  }

  sub_21C80CB60(v146, v135, type metadata accessor for PMAccount);
  sub_21CB81014();
  sub_21CB81014();
  v115 = sub_21CB80FF4();
  v114 = v65;
  v66 = *(v119 + 8);
  v66(v26, v23);
  v66(v29, v23);
  v140 = type metadata accessor for PMAccountsContextMenu();
  v67 = *(v140 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  sub_21CB84D74();
  v68 = v122;
  v69 = v123;
  v139 = &v123[*(v122 + 32)];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v148);

  type metadata accessor for PMAccountsState();
  sub_21C80CD14(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v71 = sub_21CB82674();
  v73 = v72;

  v74 = v139;
  *v139 = v71;
  v74[1] = v73;
  v75 = (v69 + v68[9]);
  v76 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v76, v148);

  type metadata accessor for PMGroupsStore();
  sub_21C80CD14(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v77 = sub_21CB82674();
  v79 = v78;

  *v75 = v77;
  v75[1] = v79;
  v80 = (v69 + v68[12]);
  v147 = sub_21CB12DEC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
  sub_21CB84D44();
  v81 = v149;
  *v80 = v148;
  v80[1] = v81;
  v82 = v69 + v68[13];
  LOBYTE(v147) = 0;
  sub_21CB84D44();
  v83 = v149;
  *v82 = v148;
  *(v82 + 8) = v83;
  v84 = v135;
  sub_21C80CB60(v135, v69, type metadata accessor for PMAccount);
  v85 = (v69 + v68[5]);
  v86 = v114;
  *v85 = v115;
  v85[1] = v86;
  sub_21C80CB60(v84 + *(v138 + 24), v47, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v84, type metadata accessor for PMAccount);
    v87 = v118;
    sub_21C80CDBC(v47, v118, type metadata accessor for PMAccount.MockData);
    v88 = v121;
    sub_21C6EDBAC(v87 + *(v117 + 72), v121, &unk_27CDF20B0, &unk_21CBA0090);
    v89 = type metadata accessor for PMAccount.MockData;
    v90 = v87;
  }

  else
  {
    v97 = *v47;
    v88 = v121;
    sub_21CB85B94();

    v89 = type metadata accessor for PMAccount;
    v90 = v84;
  }

  sub_21C80CD5C(v90, v89);
  v98 = v129;
  v99 = v124;
  sub_21C716934(v88, v124, &unk_27CDF20B0, &unk_21CBA0090);
  (*(v125 + 56))(v99, 0, 2, v126);
  v100 = v69 + v68[10];
  *(v100 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28)) = 0;
  sub_21C80CDBC(v99, v100, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v101 = v69 + v68[11];
  sub_21C716934(v137, v101, &qword_27CDEB6B8, &qword_21CBA2488);
  type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  swift_storeEnumTagMultiPayload();
  *(v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28)) = 0;
  *(v69 + v68[6]) = 0;
  *(v69 + v68[7]) = 1;
  v102 = v132;
  sub_21CB82864();
  sub_21C80CD14(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker);
  v103 = v134;
  sub_21CB84194();
  (*(v133 + 8))(v102, v103);
  sub_21C80CD5C(v69, type metadata accessor for PMMoveAccountToGroupPicker);
  v104 = v120;
  sub_21C80CB60(v146 + v116, v120, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v104, type metadata accessor for PMAccount.Storage);
    v105 = 0;
  }

  else
  {
    v106 = *v104;
    v105 = [*v104 userIsNeverSaveMarker];
  }

  v107 = swift_getKeyPath();
  v108 = swift_allocObject();
  *(v108 + 16) = v105;
  v109 = v128;
  (*(v130 + 32))(v128, v98, v131);
  v110 = v141;
  v111 = (v109 + *(v141 + 36));
  *v111 = v107;
  v111[1] = sub_21C735744;
  v111[2] = v108;
  v112 = v127;
  sub_21C716934(v109, v127, &qword_27CDEC8F8, &qword_21CBA4B10);
  sub_21C716934(v112, v60, &qword_27CDEC8F8, &qword_21CBA4B10);
  (*(v37 + 56))(v60, 0, 1, v110);
  v91 = v140;
LABEL_13:
  v92 = v142;
  sub_21C80B7A8(v146, v91, v142);
  sub_21C6EDBAC(v60, v57, &qword_27CDEC900, &qword_21CBA4B18);
  v93 = v144;
  sub_21C6EDBAC(v92, v144, &qword_27CDEB798, &unk_21CBA2530);
  v94 = v143;
  sub_21C6EDBAC(v57, v143, &qword_27CDEC900, &qword_21CBA4B18);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC908, &qword_21CBA4B20);
  sub_21C6EDBAC(v93, v94 + *(v95 + 48), &qword_27CDEB798, &unk_21CBA2530);
  sub_21C6EA794(v92, &qword_27CDEB798, &unk_21CBA2530);
  sub_21C6EA794(v60, &qword_27CDEC900, &qword_21CBA4B18);
  sub_21C6EA794(v93, &qword_27CDEB798, &unk_21CBA2530);
  return sub_21C6EA794(v57, &qword_27CDEC900, &qword_21CBA4B18);
}