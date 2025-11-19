uint64_t sub_21CADE470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DD0, &qword_21CBC7020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CADE4D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CADE520(uint64_t a1)
{
  v2 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CADE5C0()
{
  result = qword_27CDF7DD8;
  if (!qword_27CDF7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DD8);
  }

  return result;
}

unint64_t sub_21CADE618()
{
  result = qword_27CDF7DE0;
  if (!qword_27CDF7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DE0);
  }

  return result;
}

unint64_t sub_21CADE670()
{
  result = qword_27CDF7DE8;
  if (!qword_27CDF7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DE8);
  }

  return result;
}

unint64_t sub_21CADE6C8()
{
  result = qword_27CDF7DF0;
  if (!qword_27CDF7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DF0);
  }

  return result;
}

unint64_t sub_21CADE720()
{
  result = qword_27CDF7DF8;
  if (!qword_27CDF7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DF8);
  }

  return result;
}

unint64_t sub_21CADE778()
{
  result = qword_27CDF7E00;
  if (!qword_27CDF7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7E00);
  }

  return result;
}

unint64_t sub_21CADE7D0()
{
  result = qword_27CDF7E08;
  if (!qword_27CDF7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7E08);
  }

  return result;
}

unint64_t sub_21CADE828()
{
  result = qword_27CDF7E10;
  if (!qword_27CDF7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7E10);
  }

  return result;
}

unint64_t sub_21CADE880()
{
  result = qword_27CDF7E18;
  if (!qword_27CDF7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7E18);
  }

  return result;
}

unint64_t sub_21CADE8D8()
{
  result = qword_27CDF7E20[0];
  if (!qword_27CDF7E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF7E20);
  }

  return result;
}

uint64_t sub_21CADE92C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_21CB86344() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7773736150796DLL && a2 == 0xEB00000000736472 || (sub_21CB86344() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CB86344();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21CADEA4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CADEACC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CADEB98@<X0>(uint64_t a1@<X8>)
{
  sub_21CB82EB4();
  sub_21C96758C();
  sub_21CB82F94();
  result = type metadata accessor for PMDismissAction();
  v3 = (a1 + *(result + 20));
  *v3 = v4;
  v3[1] = v5;
  return result;
}

void sub_21CADEC64()
{
  type metadata accessor for PMRecentlyDeletedAccountsSource();
  if (v0 <= 0x3F)
  {
    sub_21CADECE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CADECE8()
{
  if (!qword_27CDF7EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDBE0, &qword_21CBB8760);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF7EB8);
    }
  }
}

uint64_t sub_21CADED68@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CADF128();
  sub_21CAE5B5C(v1, &v10[v7[6]], type metadata accessor for PMRecentlyDeletedAccountsSource);
  sub_21CADF2A8();
  sub_21CB81FA4();
  v11 = v28;
  v12 = v29;
  *v10 = v27;
  *(v10 + 1) = v11;
  v10[16] = v12;
  v13 = v7[7];
  *&v10[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  swift_storeEnumTagMultiPayload();
  v14 = &v10[v7[8]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v7[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v17 = &v10[v15];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v27);

  type metadata accessor for PMGroupsStore();
  sub_21C7065C0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v18 = sub_21CB82674();
  v20 = v19;

  *v17 = v18;
  v17[1] = v20;
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C7065C0(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);
  *(v10 + 3) = sub_21CB82674();
  *(v10 + 4) = v21;
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  (*(v3 + 8))(v6, v2);
  v27 = v22;
  v28 = v24;
  sub_21C7065C0(&qword_27CDF7EC8, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21C71F3FC();
  sub_21CB842F4();

  return sub_21CAE5D7C(v10, type metadata accessor for _PMRecentlyDeletedAccountsView);
}

uint64_t sub_21CADF128()
{
  v1 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PMRecentlyDeletedAccountsView(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v16 = *v5;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7ED0, &qword_21CBC74F0);
  sub_21CB84D54();
  v8 = *(v15 + 16);

  if (!v8)
  {
    sub_21CAE5B5C(v0, v4, type metadata accessor for PMRecentlyDeletedAccountsSource);
    v9 = type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_21CAEBA7C(v4);
    v16 = v6;
    v17 = v7;
    sub_21CB84D54();
    v12 = *(v15 + 16);
    *(v15 + 16) = v8;
  }

  return v8;
}

unint64_t sub_21CADF2A8()
{
  result = qword_27CDF7EC0;
  if (!qword_27CDF7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7EC0);
  }

  return result;
}

double sub_21CADF2FC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F08, &qword_21CBC75F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  *v8 = sub_21CB832E4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F10, &qword_21CBC75F8);
  sub_21CADF924(&v8[*(v9 + 44)]);
  v47 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F18, &qword_21CBC7600);
  sub_21C6EADEC(&qword_27CDF7F20, &qword_27CDF7F08, &qword_21CBC75F0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F28, &qword_21CBC7608);
  v11 = sub_21CAE5A68();
  *&v48 = v10;
  *(&v48 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  v40 = a1;
  sub_21CB84894();
  sub_21C6EA794(v8, &qword_27CDF7F08, &qword_21CBC75F0);
  v12 = v1;
  v13 = *(v1 + 32);
  LOBYTE(v10) = sub_21CAE917C();
  v44 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  v14 = v42;
  sub_21CAE5B5C(v1, v42, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v45 = *(v45 + 80);
  v15 = (v45 + 16) & ~v45;
  v16 = swift_allocObject();
  v41 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  sub_21CAE6610(v14, v16 + v15, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F48, &qword_21CBC7618) + 36);
  *v17 = v10 & 1;
  *(v17 + 8) = sub_21CAE5BC4;
  *(v17 + 16) = v16;
  *&v39 = *(v12 + 24);
  v37 = v12;
  v38 = type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C7065C0(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v19 = v54;
  v18 = v55;
  v20 = v56;
  v46 = 0;
  swift_getKeyPath();
  v51 = v19;
  v52 = v18;
  v53 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v36 = v48;
  v35 = v49;
  v21 = v50;

  v22 = v42;
  sub_21CAE5B5C(v12, v42, v44);
  v23 = swift_allocObject();
  v24 = v41;
  sub_21CAE6610(v22, v23 + v15, v41);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F50, &qword_21CBC76A8);
  v26 = v40;
  v27 = v40 + *(v25 + 36);
  v28 = v35;
  *v27 = v36;
  *(v27 + 16) = v28;
  *(v27 + 32) = v21;
  *(v27 + 40) = &unk_21CBC76A0;
  *(v27 + 48) = v23;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v36 = v48;
  v29 = v49;
  v30 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F58, &qword_21CBC76D8) + 36);
  *v30 = v36;
  *(v30 + 16) = v29;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v39 = v48;
  v31 = v49;
  sub_21CAE5B5C(v37, v22, v44);
  v32 = swift_allocObject();
  sub_21CAE6610(v22, v32 + v15, v24);
  v33 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F60, &qword_21CBC7708) + 36);
  result = *&v39;
  *v33 = v39;
  *(v33 + 16) = v31;
  *(v33 + 24) = sub_21CAE5D0C;
  *(v33 + 32) = v32;
  return result;
}

uint64_t sub_21CADF924@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F70, &qword_21CBC7778);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F78, &qword_21CBC7780);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F80, &qword_21CBC7788);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_21CADFC2C(&v26 - v19);
  sub_21CAE0214(v5);
  sub_21C716934(v5, v12, &qword_27CDF7F70, &qword_21CBC7778);
  (*(v2 + 56))(v12, 0, 1, v1);
  v21 = v14[2];
  v21(v17, v20, v13);
  sub_21C6EDBAC(v12, v9, &qword_27CDF7F78, &qword_21CBC7780);
  v22 = v27;
  v21(v27, v17, v13);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F88, &qword_21CBC7790);
  sub_21C6EDBAC(v9, &v22[*(v23 + 48)], &qword_27CDF7F78, &qword_21CBC7780);
  sub_21C6EA794(v12, &qword_27CDF7F78, &qword_21CBC7780);
  v24 = v14[1];
  v24(v20, v13);
  sub_21C6EA794(v9, &qword_27CDF7F78, &qword_21CBC7780);
  return (v24)(v17, v13);
}

uint64_t sub_21CADFC2C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v31 - v4;
  v5 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v36 = *(v5 - 8);
  v35 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB829D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FD0, &qword_21CBC7818);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FD8, &qword_21CBC7820);
  v17 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v31 - v18;
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FE0, &qword_21CBC7828);
  sub_21C6EADEC(&qword_27CDF7FE8, &qword_27CDF7FE0, &qword_21CBC7828);
  sub_21CB83EF4();
  sub_21CB85294();
  sub_21C6EADEC(&qword_27CDF7FF0, &qword_27CDF7FD0, &qword_21CBC7818);
  sub_21C7065C0(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v19 = v39;
  sub_21CB849C4();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v32 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  v21 = v33;
  v20 = v34;
  sub_21CAE5B5C(v33, v34, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v22 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v23 = swift_allocObject();
  sub_21CAE6610(v20, v23 + v22, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v24 = &v19[*(v40 + 36)];
  *v24 = sub_21CAE61BC;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  v25 = *(v21 + 24);
  v26 = *(v21 + 32);
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C7065C0(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);
  sub_21CB82684();
  swift_getKeyPath();
  v27 = v37;
  sub_21CB82694();

  sub_21CAE5B5C(v21, v20, v32);
  v28 = swift_allocObject();
  sub_21CAE6610(v20, v28 + v22, type metadata accessor for _PMRecentlyDeletedAccountsView);
  type metadata accessor for PMAccount(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FF8, &unk_21CBC7858);
  sub_21CAE61EC();
  sub_21C7065C0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21CAE6338();
  v29 = v39;
  sub_21CB847C4();

  sub_21C6EA794(v27, &qword_27CDEB1E8, &qword_21CBA13A0);
  return sub_21C6EA794(v29, &qword_27CDF7FD8, &qword_21CBC7820);
}

uint64_t sub_21CAE0214@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F90, &qword_21CBC7798);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_21CB84FB4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_21CB84FA4();
  *v10 = sub_21CB83074();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F98, &qword_21CBC77A0);
  sub_21CAE5564(v1, &v10[*(v19 + 44)]);
  v20 = sub_21CB83CE4();
  v21 = &v10[*(v4 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  v22 = v12[2];
  v22(v15, v18, v11);
  sub_21C6EDBAC(v10, v7, &qword_27CDF7F90, &qword_21CBC7798);
  v22(a1, v15, v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FA0, &qword_21CBC77A8);
  sub_21C6EDBAC(v7, &a1[*(v23 + 48)], &qword_27CDF7F90, &qword_21CBC7798);
  sub_21C6EA794(v10, &qword_27CDF7F90, &qword_21CBC7798);
  v24 = v12[1];
  v24(v18, v11);
  sub_21C6EA794(v7, &qword_27CDF7F90, &qword_21CBC7798);
  return (v24)(v15, v11);
}

uint64_t sub_21CAE049C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F28, &qword_21CBC7608);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F68, &qword_21CBC7770);
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F38, &qword_21CBC7610);
  v9 = sub_21C6EADEC(&qword_27CDF7F40, &qword_27CDF7F38, &qword_21CBC7610);
  v13[0] = v8;
  v13[1] = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF13220](v3, v7, OpaqueTypeConformance2);
  sub_21C6EA794(v3, &qword_27CDF7F28, &qword_21CBC7608);
  v11 = sub_21CAE5A68();
  MEMORY[0x21CF131E0](v6, v0, v11);
  return sub_21C6EA794(v6, &qword_27CDF7F28, &qword_21CBC7608);
}

void sub_21CAE066C(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMDismissAction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v8 = a2 + *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) + 28);
    sub_21C95B584(v7);
    v9 = &v7[*(v4 + 20)];
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 1);

      v10(v12);
      sub_21C71B710(v10);
    }

    else
    {
      sub_21CB823A4();
    }

    sub_21CAE5D7C(v7, type metadata accessor for PMDismissAction);
  }
}

uint64_t sub_21CAE0764(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21CB858B4();
  v2[4] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CAE07FC, v4, v3);
}

uint64_t sub_21CAE07FC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v2 + 32);
  sub_21CAEA660(v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21CAE086C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v4, v7);

  sub_21C833310(a1, sub_21C8C5780, v3);
}

uint64_t sub_21CAE095C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  *&v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8018, &qword_21CBC78A0);
  *&v36 = *(v40 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = v34 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8020, &qword_21CBC78A8);
  v8 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8028, &qword_21CBC78B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v38 = sub_21CAE0F30();
  v39 = v18;
  v19 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v20 = *(*&v42[0] + 16);

  if (v20)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v34[1] = swift_getKeyPath();
    sub_21CAE5B5C(a1, v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRecentlyDeletedAccountsView);
    v21 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v22 = swift_allocObject();
    sub_21CAE6610(v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for _PMRecentlyDeletedAccountsView);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_21CAE6438;
    *(v23 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC78, &qword_21CBC7920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8030, &unk_21CBC7928);
    sub_21C6EADEC(&qword_27CDEFC88, &qword_27CDEFC78, &qword_21CBC7920);
    sub_21C7065C0(&qword_27CDEFC90, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    sub_21CAE64C0();
    sub_21CB84FD4();
    v24 = v36;
    v25 = v40;
    (*(v36 + 16))(v10, v7, v40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC998, &unk_21CBC1840);
    sub_21C80FB40();
    sub_21CAE6584();
    sub_21CB83494();
    (*(v24 + 8))(v7, v25);
  }

  else
  {
    sub_21CAE1E9C(a1, v42);
    v26 = v43;
    v35 = v42[1];
    v36 = v42[0];
    v27 = sub_21CB84B34();
    KeyPath = swift_getKeyPath();
    v29 = v35;
    *v10 = v36;
    *(v10 + 1) = v29;
    v10[32] = v26;
    *(v10 + 5) = KeyPath;
    *(v10 + 6) = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC998, &unk_21CBC1840);
    sub_21C80FB40();
    sub_21CAE6584();
    sub_21CB83494();
  }

  sub_21C787630(v17, v14);
  v30 = v41;
  v31 = v39;
  *v41 = v38;
  v30[1] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8058, &qword_21CBC7940);
  sub_21C787630(v14, v30 + *(v32 + 48));

  sub_21C6EA794(v17, &qword_27CDF8028, &qword_21CBC78B0);
  sub_21C6EA794(v14, &qword_27CDF8028, &qword_21CBC78B0);
}

uint64_t sub_21CAE0F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for PMSharingGroup();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB85C44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = [objc_opt_self() recentlyDeletedExpirationTimeInDays];
  v22 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  sub_21CAE5B5C(v0 + *(v22 + 24), v21, type metadata accessor for PMRecentlyDeletedAccountsSource);
  if (!(*(v10 + 48))(v21, 2, v9))
  {
    v42 = v10;
    v29 = *(v10 + 32);
    v30 = v45;
    v29(v45, v21, v9);
    v31 = *(v0 + *(v22 + 36) + 8);
    sub_21CA1D444(v30, v4);
    v32 = v44;
    if ((*(v43 + 48))(v4, 1, v44) != 1)
    {
      v33 = v8;
      sub_21CAE6610(v4, v8, type metadata accessor for PMSharingGroup);
      sub_21CB81014();
      sub_21CB81004();
      (*(v14 + 8))(v17, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_21CBA15B0;
      v35 = &v8[*(v32 + 20)];
      v37 = *v35;
      v36 = *(v35 + 1);
      v38 = MEMORY[0x277D837D0];
      *(v34 + 56) = MEMORY[0x277D837D0];
      v39 = sub_21C7C0050();
      *(v34 + 64) = v39;
      *(v34 + 32) = v37;
      *(v34 + 40) = v36;
      v47 = v46;
      sub_21C8C5CE4();

      v40 = sub_21CB85EE4();
      *(v34 + 96) = v38;
      *(v34 + 104) = v39;
      *(v34 + 72) = v40;
      *(v34 + 80) = v41;
      v27 = sub_21CB85594();

      sub_21CAE5D7C(v33, type metadata accessor for PMSharingGroup);
      (*(v42 + 8))(v45, v9);
      return v27;
    }

    (*(v42 + 8))(v45, v9);
    sub_21C6EA794(v4, &qword_27CDF7670, &unk_21CBAA8F0);
  }

  sub_21CB81014();
  sub_21CB81004();
  (*(v14 + 8))(v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21CBA0690;
  v47 = v46;
  sub_21C8C5CE4();
  v24 = sub_21CB85EE4();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_21C7C0050();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v27 = sub_21CB85594();

  return v27;
}

uint64_t sub_21CAE14D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = a3;
  v28 = a2;
  sub_21CAE5B5C(a1, v14, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  v15 = (*(v7 + 48))(v14, 2, v6);
  if (!v15)
  {
    sub_21CAE6610(v14, v10, type metadata accessor for PMSharingGroup);
    v23 = &v10[*(v6 + 20)];
    v22 = *v23;
    v21 = v23[1];

    sub_21CAE5D7C(v10, type metadata accessor for PMSharingGroup);
LABEL_7:
    v29 = v22;
    v30 = v21;
    sub_21C71F3FC();
    v17 = sub_21CB84054();
    v19 = v24 & 1;
    goto LABEL_8;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (v16 != 1)
  {
    if (qword_27CDEA498 != -1)
    {
      swift_once();
    }

    v22 = qword_27CE18748;
    v21 = qword_27CE18750;

    goto LABEL_7;
  }

LABEL_8:
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8048, &qword_21CBC7938);
  sub_21C87DED8();
  sub_21C6EADEC(&qword_27CDF8040, &qword_27CDF8048, &qword_21CBC7938);
  return sub_21CB85034();
}

uint64_t sub_21CAE1798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CAE5B5C(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for _PMRecentlyDeletedAccountsView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21CAE6610(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v13 = v8;
  v14 = a2;
  v11 = &v14;
  v12 = sub_21CAE6678;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8060, &qword_21CBC79C8);
  sub_21CAE6730();
  sub_21CB83F34();
}

uint64_t sub_21CAE1924(uint64_t a1)
{
  v26 = a1;
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
  v8 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
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
  sub_21C8582C0();
  v27 = sub_21CB85CF4();
  sub_21CB85414();
  sub_21CB85434();
  v28 = *(v12 + 8);
  v28(v15, v11);
  sub_21CAE5B5C(v26, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRecentlyDeletedAccountsView);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_21CAE6610(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for _PMRecentlyDeletedAccountsView);
  aBlock[4] = sub_21CAE6420;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_38;
  v21 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C7065C0(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  v22 = v29;
  sub_21CB85F14();
  v23 = v27;
  MEMORY[0x21CF157D0](v18, v7, v3, v21);
  _Block_release(v21);

  (*(v32 + 8))(v3, v22);
  (*(v30 + 8))(v7, v31);
  return (v28)(v18, v11);
}

uint64_t sub_21CAE1DA4(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8010, &qword_21CBC7898);
  return sub_21CB81F64();
}

uint64_t sub_21CAE1E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21CAE5B5C(a1, a3, type metadata accessor for PMAccount);
  KeyPath = swift_getKeyPath();
  v6 = *(a2 + 32);
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FF8, &unk_21CBC7858) + 36));
  *v7 = KeyPath;
  v7[1] = v6 | 0x4000000000000000;
}

double sub_21CAE1E9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = v33;

  v11 = HIBYTE(*(&v10 + 1)) & 0xFLL;
  if ((*(&v10 + 1) & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_21CB81014();
    v12 = sub_21CB81004();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    *&v33 = v12;
    *(&v33 + 1) = v14;
    sub_21C71F3FC();
    v28 = sub_21CB84054();
    v29 = v16;
    v30 = v15 & 1;
    v31 = v17;
    v32 = 1;
  }

  else
  {
    sub_21CB81014();
    v18 = sub_21CB81004();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    *&v33 = v18;
    *(&v33 + 1) = v20;
    sub_21C71F3FC();
    v28 = sub_21CB84054();
    v29 = v21;
    v30 = v22 & 1;
    v31 = v23;
    v32 = 0;
  }

  sub_21CB83494();
  result = *&v33;
  v25 = v34;
  v26 = v35;
  *a2 = v33;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  return result;
}

uint64_t sub_21CAE20F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = v7;
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PMAccount(0);
  v13 = v12 - 8;
  v49 = *(v12 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for PMRecentlyDeletedAccountRow();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v17;
  sub_21CAE5B5C(a1, v17, type metadata accessor for PMAccount);
  v55 = a2;
  v22 = *(a2 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v47 = v58;
  v48 = v57;
  v23 = a1;
  sub_21CAE5B5C(a1 + *(v13 + 32), v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAE5D7C(v11, type metadata accessor for PMAccount.Storage);
    v46 = 0;
  }

  else
  {
    v24 = *v11;
    v25 = [*v11 canUserEditSavedAccount];

    v46 = v25 ^ 1;
  }

  v26 = v55;
  v27 = sub_21CAE25F4(a1);
  v44 = v28;
  v45 = v27;
  v30 = v29;
  v31 = v54;
  sub_21CAE5B5C(v26, v54, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v32 = v51;
  sub_21CAE5B5C(v23, v51, type metadata accessor for PMAccount);
  v33 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v34 = (v53 + *(v49 + 80) + v33) & ~*(v49 + 80);
  v35 = swift_allocObject();
  sub_21CAE6610(v31, v35 + v33, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21CAE6610(v32, v35 + v34, type metadata accessor for PMAccount);
  v36 = sub_21CAE6610(v50, v21, type metadata accessor for PMAccount);
  v37 = &v21[v18[5]];
  v38 = v47;
  *v37 = v48;
  *(v37 + 1) = v38;
  v21[v18[6]] = v46;
  v39 = &v21[v18[7]];
  v40 = v44;
  *v39 = v45;
  *(v39 + 1) = v40;
  v39[16] = v30 & 1;
  v41 = &v21[v18[8]];
  *v41 = sub_21CAE68F0;
  v41[1] = v35;
  MEMORY[0x28223BE20](v36);
  *(&v43 - 2) = v26;
  *(&v43 - 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8070, &qword_21CBC79D0);
  sub_21C7065C0(&qword_27CDF8078, type metadata accessor for PMRecentlyDeletedAccountRow);
  sub_21CAE6840();
  sub_21CB84154();
  return sub_21CAE5D7C(v21, type metadata accessor for PMRecentlyDeletedAccountRow);
}

uint64_t sub_21CAE25F4(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  sub_21CAE5B5C(v2, v11, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v21 = type metadata accessor for PMAccount;
  sub_21CAE5B5C(a1, v7, type metadata accessor for PMAccount);
  sub_21CB858B4();
  v12 = sub_21CB858A4();
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + *(v5 + 80) + v13) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  sub_21CAE6610(v11, v15 + v13, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21CAE6610(v7, v15 + v14, type metadata accessor for PMAccount);
  sub_21CAE5B5C(v24, v11, v23);
  sub_21CAE5B5C(v22, v7, v21);
  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = MEMORY[0x277D85700];
  sub_21CAE6610(v11, v18 + v13, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21CAE6610(v7, v18 + v14, type metadata accessor for PMAccount);
  sub_21CB84F64();
  return v25;
}

uint64_t sub_21CAE28C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *(a1 + 32);
  sub_21CAE5B5C(a2, &v14 - v9, type metadata accessor for PMAccount);
  v12 = type metadata accessor for PMAccount(0);
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v10, v7, &unk_27CDEBE60, &unk_21CB9FF40);

  sub_21CB81DC4();
  return sub_21C6EA794(v10, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21CAE2A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8090, &unk_21CBC79D8);
  v172 = *(v4 - 8);
  v5 = *(v172 + 64);
  MEMORY[0x28223BE20](v4);
  v165 = v136 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v164 = v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v163 = v136 - v11;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80A0, &qword_21CBC79F8);
  v12 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v14 = (v136 - v13);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80A8, &qword_21CBC7A00);
  v15 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v150 = v136 - v16;
  v149 = sub_21CB84FB4();
  v153 = *(v149 - 8);
  v17 = v153[8];
  MEMORY[0x28223BE20](v149);
  v146 = v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v148 = v136 - v20;
  v21 = type metadata accessor for PMAccount(0);
  v22 = v21 - 8;
  v157 = *(v21 - 8);
  v23 = *(v157 + 64);
  MEMORY[0x28223BE20](v21);
  v174 = v24;
  v171 = v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v156 = *(v25 - 8);
  v26 = *(v156 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v170 = v27;
  v173 = v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21CB81024();
  v169 = *(v28 - 8);
  v29 = *(v169 + 64);
  MEMORY[0x28223BE20](v28);
  v168 = v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v166 = v136 - v32;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v161 = *(v167 - 8);
  v33 = *(v161 + 64);
  MEMORY[0x28223BE20](v167);
  v152 = v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v151 = v136 - v36;
  MEMORY[0x28223BE20](v37);
  v147 = v136 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = v136 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80B0, &qword_21CBC7A08);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v162 = v136 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v179 = v136 - v46;
  v47 = type metadata accessor for PMAccount.Storage(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v158 = (v136 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v50);
  v52 = (v136 - v51);
  MEMORY[0x28223BE20](v53);
  v55 = (v136 - v54);
  v56 = *(v22 + 32);
  v178 = a1;
  v176 = v56;
  sub_21CAE5B5C(a1 + v56, v136 - v54, type metadata accessor for PMAccount.Storage);
  v177 = v47;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAE5D7C(v55, type metadata accessor for PMAccount.Storage);
    goto LABEL_4;
  }

  v57 = *v55;
  v58 = [*v55 canUserEditSavedAccount];

  if (v58)
  {
LABEL_4:
    v59 = v178;
    v60 = sub_21CAEFDA0(v178);
    v155 = a2;
    v154 = v4;
    v145 = v28;
    if (v60)
    {
      sub_21CAE5B5C(v59 + v176, v52, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CAE5D7C(v52, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v62 = *v52;
        v63 = [v62 isCurrentUserOriginalContributor];

        if (v63)
        {
          v64 = v166;
          sub_21CB81014();
          v65 = v168;
          sub_21CB81014();
          v66 = sub_21CB80FF4();
          v68 = v67;
          v69 = *(v169 + 8);
          v142 = v169 + 8;
          v143 = v69;
          v69(v65, v28);
          v69(v64, v28);
          v180 = v66;
          v181 = v68;
          v144 = type metadata accessor for _PMRecentlyDeletedAccountsView;
          v70 = v173;
          sub_21CAE5B5C(v175, v173, type metadata accessor for _PMRecentlyDeletedAccountsView);
          v141 = type metadata accessor for PMAccount;
          v71 = v171;
          sub_21CAE5B5C(v59, v171, type metadata accessor for PMAccount);
          v156 = *(v156 + 80);
          v72 = (v156 + 16) & ~v156;
          v157 = *(v157 + 80);
          v139 = v72;
          v73 = (v170 + v157 + v72) & ~v157;
          v140 = v156 | v157;
          v74 = swift_allocObject();
          v138 = type metadata accessor for _PMRecentlyDeletedAccountsView;
          sub_21CAE6610(v70, v74 + v72, type metadata accessor for _PMRecentlyDeletedAccountsView);
          v137 = type metadata accessor for PMAccount;
          sub_21CAE6610(v71, v74 + v73, type metadata accessor for PMAccount);
          v136[1] = sub_21C71F3FC();
          sub_21CB84DE4();
          sub_21CB81014();
          sub_21CB81014();
          v75 = sub_21CB80FF4();
          v77 = v76;
          v78 = v65;
          v79 = v143;
          v143(v78, v28);
          v79(v64, v28);
          v180 = v75;
          v181 = v77;
          v80 = v173;
          sub_21CAE5B5C(v175, v173, v144);
          sub_21CAE5B5C(v178, v71, v141);
          v81 = swift_allocObject();
          sub_21CAE6610(v80, v81 + v139, v138);
          sub_21CAE6610(v71, v81 + v73, v137);
          v82 = v147;
          sub_21CB84DE4();
          v144 = v14;
          v83 = v148;
          sub_21CB84FA4();
          v84 = v161;
          v94 = *(v161 + 16);
          v85 = v167;
          (v94)(v151, v41, v167);
          (v94)(v152, v82, v85);
          v143 = v153[2];
          v86 = v146;
          v87 = v83;
          v88 = v149;
          (v143)(v146, v87, v149);
          v89 = v150;
          (v94)(v150, v151, v85);
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80C8, &qword_21CBC7A18);
          (v94)(v89 + *(v90 + 48), v152, v85);
          (v143)(v89 + *(v90 + 64), v86, v88);
          v95 = v153[1];
          ++v153;
          v91 = v86;
          v92 = v178;
          (v95)(v91, v88);
          v93 = *(v84 + 8);
          v93(v152, v85);
          v93(v151, v85);
          sub_21C6EDBAC(v89, v144, &qword_27CDF80A8, &qword_21CBC7A00);
          swift_storeEnumTagMultiPayload();
          sub_21C6EADEC(&qword_27CDF80B8, &qword_27CDF80A8, &qword_21CBC7A00);
          sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
          sub_21CB83494();
          sub_21C6EA794(v150, &qword_27CDF80A8, &qword_21CBC7A00);
          (v95)(v148, v149);
          v93(v147, v85);
          v93(v41, v85);
          LODWORD(v94) = v157;
          LODWORD(v95) = v156;
          goto LABEL_11;
        }
      }
    }

    v96 = v166;
    sub_21CB81014();
    v97 = v168;
    sub_21CB81014();
    v98 = sub_21CB80FF4();
    v100 = v99;
    v92 = v59;
    v101 = *(v169 + 8);
    v101(v97, v28);
    v101(v96, v28);
    v180 = v98;
    v181 = v100;
    v102 = v41;
    v103 = v173;
    sub_21CAE5B5C(v175, v173, type metadata accessor for _PMRecentlyDeletedAccountsView);
    v104 = v171;
    sub_21CAE5B5C(v59, v171, type metadata accessor for PMAccount);
    v95 = *(v156 + 80);
    v105 = (v95 + 16) & ~v95;
    v94 = *(v157 + 80);
    v106 = (v170 + v94 + v105) & ~v94;
    v107 = swift_allocObject();
    v108 = v103;
    v41 = v102;
    sub_21CAE6610(v108, v107 + v105, type metadata accessor for _PMRecentlyDeletedAccountsView);
    sub_21CAE6610(v104, v107 + v106, type metadata accessor for PMAccount);
    sub_21C71F3FC();
    sub_21CB84DE4();
    v84 = v161;
    v85 = v167;
    (*(v161 + 16))(v14, v102, v167);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF80B8, &qword_27CDF80A8, &qword_21CBC7A00);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB83494();
    (*(v84 + 8))(v102, v85);
LABEL_11:
    v109 = v158;
    sub_21CAE5B5C(v92 + v176, v158, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v4 = v154;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CAE5D7C(v109, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v177 = v41;
      v111 = *v109;
      v112 = [v111 isCurrentUserOriginalContributor];

      if (v112)
      {
        v113 = v166;
        sub_21CB81014();
        v114 = v168;
        sub_21CB81014();
        v115 = sub_21CB80FF4();
        v117 = v116;
        v118 = *(v169 + 8);
        v119 = v114;
        v120 = v145;
        v118(v119, v145);
        v118(v113, v120);
        v180 = v115;
        v181 = v117;
        v121 = v173;
        sub_21CAE5B5C(v175, v173, type metadata accessor for _PMRecentlyDeletedAccountsView);
        v122 = v171;
        sub_21CAE5B5C(v178, v171, type metadata accessor for PMAccount);
        v123 = (v95 + 16) & ~v95;
        v124 = (v170 + v94 + v123) & ~v94;
        v125 = swift_allocObject();
        sub_21CAE6610(v121, v125 + v123, type metadata accessor for _PMRecentlyDeletedAccountsView);
        v126 = v122;
        v85 = v167;
        sub_21CAE6610(v126, v125 + v124, type metadata accessor for PMAccount);
        sub_21C71F3FC();
        v127 = v177;
        sub_21CB84DE4();
        v128 = v163;
        (*(v84 + 32))(v163, v127, v85);
        v129 = 0;
LABEL_16:
        (*(v84 + 56))(v128, v129, 1, v85);
        v130 = v179;
        v131 = v162;
        sub_21C6EDBAC(v179, v162, &qword_27CDF80B0, &qword_21CBC7A08);
        v132 = v164;
        sub_21C6EDBAC(v128, v164, &qword_27CDEC2B8, &qword_21CBA3EB0);
        v133 = v165;
        sub_21C6EDBAC(v131, v165, &qword_27CDF80B0, &qword_21CBC7A08);
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80C0, &qword_21CBC7A10);
        sub_21C6EDBAC(v132, v133 + *(v134 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
        sub_21C6EA794(v128, &qword_27CDEC2B8, &qword_21CBA3EB0);
        sub_21C6EA794(v130, &qword_27CDF80B0, &qword_21CBC7A08);
        sub_21C6EA794(v132, &qword_27CDEC2B8, &qword_21CBA3EB0);
        sub_21C6EA794(v131, &qword_27CDF80B0, &qword_21CBC7A08);
        a2 = v155;
        sub_21C716934(v133, v155, &qword_27CDF8090, &unk_21CBC79D8);
        v61 = 0;
        return (*(v172 + 56))(a2, v61, 1, v4);
      }
    }

    v129 = 1;
    v128 = v163;
    goto LABEL_16;
  }

  v61 = 1;
  return (*(v172 + 56))(a2, v61, 1, v4);
}

uint64_t sub_21CAE3DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA0690;
  sub_21CAE5B5C(a2, v7 + v6, type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CAE3F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  sub_21CAE5B5C(a2, v9 + v8, type metadata accessor for PMAccount);
  v10 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v10, v13);

  sub_21C833194(v9, a3, v5);
}

uint64_t sub_21CAE40A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA0690;
  sub_21CAE5B5C(a2, v7 + v6, type metadata accessor for PMAccount);
  v8 = sub_21C87E898(v7);
  v10 = v9;
  v12 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_21CB81DA4();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v15;
  *v15 = 0x8000000000000000;
  sub_21C8D4880(v8, v10, v12, 0, isUniquelyReferenced_nonNull_native);
  *v15 = v19;
  v13(v20, 0);
}

uint64_t sub_21CAE424C@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(a2) = sub_21C8FFAE0(*a2, a2[1], v7);

  *a3 = a2 & 1;
  return result;
}

uint64_t sub_21CAE42F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v42 = *(v46 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v46);
  v41 = &v40 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FB8, &qword_21CBC7800);
  v7 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v40 - v8;
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FC0, &unk_21CBC7808);
  v17 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v19 = &v40 - v18;
  v20 = a1;
  v21 = *(a1 + 32);
  v22 = sub_21CAEA250();
  LOBYTE(v21) = sub_21CAEACD8(v22);

  sub_21CB81014();
  v23 = (v10 + 8);
  sub_21CB81014();
  if (v21)
  {
    v24 = sub_21CB80FF4();
    v26 = v25;
    v27 = *v23;
    (*v23)(v13, v9);
    v28 = (v27)(v16, v9);
    v48 = v24;
    v49 = v26;
    MEMORY[0x28223BE20](v28);
    *(&v40 - 2) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
    sub_21C71F3FC();
    sub_21CB83F64();
    v29 = v43;
    *&v19[*(v44 + 36)] = 257;
    sub_21C6EDBAC(v19, v29, &qword_27CDF7FC0, &unk_21CBC7808);
    swift_storeEnumTagMultiPayload();
    sub_21CAE5DF4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB83494();
    return sub_21C6EA794(v19, &qword_27CDF7FC0, &unk_21CBC7808);
  }

  else
  {
    v31 = sub_21CB80FF4();
    v33 = v32;
    v34 = *v23;
    (*v23)(v13, v9);
    v34(v16, v9);
    v48 = v31;
    v49 = v33;
    sub_21CAE5B5C(v20, &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRecentlyDeletedAccountsView);
    v35 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v36 = swift_allocObject();
    sub_21CAE6610(&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for _PMRecentlyDeletedAccountsView);
    sub_21C71F3FC();
    v37 = v41;
    sub_21CB84DE4();
    v38 = v42;
    v39 = v46;
    (*(v42 + 16))(v43, v37, v46);
    swift_storeEnumTagMultiPayload();
    sub_21CAE5DF4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB83494();
    return (*(v38 + 8))(v37, v39);
  }
}

uint64_t sub_21CAE4938@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a1;
  v52 = a2;
  v2 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v48 = *(v2 - 8);
  v3 = *(v48 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v45[1] = v3;
  v53 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v51 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = v45 - v17;
  MEMORY[0x28223BE20](v18);
  v49 = v45 - v19;
  MEMORY[0x28223BE20](v20);
  v54 = v45 - v21;
  sub_21CB81014();
  sub_21CB81014();
  v22 = sub_21CB80FF4();
  v24 = v23;
  v25 = *(v5 + 8);
  v46 = v4;
  v25(v8, v4);
  v25(v11, v4);
  v56 = v22;
  v57 = v24;
  v47 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  v26 = v53;
  sub_21CAE5B5C(v55, v53, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v28 = swift_allocObject();
  v48 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  sub_21CAE6610(v26, v28 + v27, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v45[0] = sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB81014();
  sub_21CB81014();
  v29 = sub_21CB80FF4();
  v31 = v30;
  v32 = v8;
  v33 = v46;
  v25(v32, v46);
  v25(v11, v33);
  v56 = v29;
  v57 = v31;
  v34 = v53;
  sub_21CAE5B5C(v55, v53, v47);
  v35 = swift_allocObject();
  sub_21CAE6610(v34, v35 + v27, v48);
  v36 = v49;
  sub_21CB84DE4();
  v37 = v13[2];
  v38 = v50;
  v39 = v54;
  v37(v50, v54, v12);
  v40 = v51;
  v37(v51, v36, v12);
  v41 = v52;
  v37(v52, v38, v12);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v37(&v41[*(v42 + 48)], v40, v12);
  v43 = v13[1];
  v43(v36, v12);
  v43(v39, v12);
  v43(v40, v12);
  return (v43)(v38, v12);
}

uint64_t sub_21CAE4EAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_21CAEA250();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CAE4F24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_21CAEA250();
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v5, v8);

  sub_21C833194(v4, a2, v3);
}

uint64_t sub_21CAE5018@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v40 = *(v1 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  sub_21CB81014();
  sub_21CB81014();
  v19 = sub_21CB80FF4();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v14, v7);
  v23 = v18;
  v45 = v19;
  v46 = v21;
  sub_21CB81ED4();
  v24 = sub_21CB81F14();
  v25 = 1;
  (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
  v26 = v41;
  v27 = v39;
  sub_21CAE5B5C(v41, v39, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = swift_allocObject();
  sub_21CAE6610(v27, v29 + v28, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21C71F3FC();
  sub_21CB84DC4();
  v30 = *(v26 + 32);
  v31 = *(sub_21CAEA250() + 16);

  if (v31)
  {
    v32 = sub_21CAEA250();
    v33 = sub_21CAEF570(v32);

    v25 = !v33;
  }

  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v25 & 1;
  v36 = v44;
  (*(v42 + 32))(v44, v23, v43);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v38 = (v36 + *(result + 36));
  *v38 = KeyPath;
  v38[1] = sub_21C87E800;
  v38[2] = v35;
  return result;
}

uint64_t sub_21CAE5468(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_21CAEA250();
  v3 = sub_21C87E898(v2);
  v5 = v4;
  v7 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = sub_21CB81DA4();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v10;
  *v10 = 0x8000000000000000;
  sub_21C8D4880(v3, v5, v7, 1, isUniquelyReferenced_nonNull_native);
  *v10 = v14;
  v8(v15, 0);
}

uint64_t sub_21CAE5564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FA8, &unk_21CBC77B0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  sub_21CAE5018(&v28 - v17);
  sub_21CAE42F4(a1, v11);
  v19 = *(a1 + 32);
  v20 = *(sub_21CAEA250() + 16);

  v21 = v20 == 0;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = &v11[*(v5 + 44)];
  *v24 = KeyPath;
  v24[1] = sub_21C735744;
  v24[2] = v23;
  sub_21C6EDBAC(v18, v15, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EDBAC(v11, v8, &qword_27CDF7FA8, &unk_21CBC77B0);
  sub_21C6EDBAC(v15, a2, &qword_27CDEDA98, &unk_21CBABCB0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FB0, &unk_21CBC77F0);
  v26 = a2 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_21C6EDBAC(v8, a2 + *(v25 + 64), &qword_27CDF7FA8, &unk_21CBC77B0);
  sub_21C6EA794(v11, &qword_27CDF7FA8, &unk_21CBC77B0);
  sub_21C6EA794(v18, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v8, &qword_27CDF7FA8, &unk_21CBC77B0);
  return sub_21C6EA794(v15, &qword_27CDEDA98, &unk_21CBABCB0);
}

void sub_21CAE5814()
{
  sub_21CAE58F8();
  if (v0 <= 0x3F)
  {
    sub_21C72079C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PMRecentlyDeletedAccountsSource();
      if (v2 <= 0x3F)
      {
        sub_21C72044C();
        if (v3 <= 0x3F)
        {
          sub_21C7205C4();
          if (v4 <= 0x3F)
          {
            sub_21C70640C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21CAE58F8()
{
  if (!qword_27CDF7EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7EF0, &qword_21CBC7530);
    sub_21CAE5968();
    v0 = sub_21CB81FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF7EE8);
    }
  }
}

unint64_t sub_21CAE5968()
{
  result = qword_27CDF7EF8;
  if (!qword_27CDF7EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7EF0, &qword_21CBC7530);
    sub_21CADF2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7EF8);
  }

  return result;
}

unint64_t sub_21CAE5A0C()
{
  result = qword_27CDF7F00;
  if (!qword_27CDF7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7F00);
  }

  return result;
}

unint64_t sub_21CAE5A68()
{
  result = qword_27CDF7F30;
  if (!qword_27CDF7F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F28, &qword_21CBC7608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F38, &qword_21CBC7610);
    sub_21C6EADEC(&qword_27CDF7F40, &qword_27CDF7F38, &qword_21CBC7610);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7F30);
  }

  return result;
}

uint64_t sub_21CAE5B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21CAE5BC4(_BYTE *a1)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21CAE066C(a1, v4);
}

uint64_t sub_21CAE5C34(uint64_t a1)
{
  v4 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21CAE0764(a1, v1 + v5);
}

uint64_t sub_21CAE5D0C(uint64_t a1)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CAE086C(a1, v4);
}

uint64_t sub_21CAE5D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CAE5DF4()
{
  result = qword_27CDF7FC8;
  if (!qword_27CDF7FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7FC0, &unk_21CBC7808);
    sub_21C6EADEC(&qword_27CDF1740, &qword_27CDF1738, &unk_21CBB1D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7FC8);
  }

  return result;
}

uint64_t sub_21CAE5F48(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CAE5FD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8098, &unk_21CBC79E8);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  type metadata accessor for PMRecentlyDeletedAccountRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8070, &qword_21CBC79D0);
  sub_21C7065C0(&qword_27CDF8078, type metadata accessor for PMRecentlyDeletedAccountRow);
  sub_21CAE6840();
  swift_getOpaqueTypeConformance2();
  sub_21C7065C0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  return sub_21CB84FF4();
}

unint64_t sub_21CAE61EC()
{
  result = qword_27CDF8000;
  if (!qword_27CDF8000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7FD8, &qword_21CBC7820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7FD0, &qword_21CBC7818);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF7FF0, &qword_27CDF7FD0, &qword_21CBC7818);
    sub_21C7065C0(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8000);
  }

  return result;
}

unint64_t sub_21CAE6338()
{
  result = qword_27CDF8008;
  if (!qword_27CDF8008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7FF8, &unk_21CBC7858);
    sub_21C7065C0(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView);
    sub_21C6EADEC(&qword_27CDF6C48, &qword_27CDF6C50, &unk_21CBC2A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8008);
  }

  return result;
}

uint64_t sub_21CAE6438(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CAE14D4(a1, a2, v6);
}

unint64_t sub_21CAE64C0()
{
  result = qword_27CDF8038;
  if (!qword_27CDF8038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8030, &unk_21CBC7928);
    sub_21C87DED8();
    sub_21C6EADEC(&qword_27CDF8040, &qword_27CDF8048, &qword_21CBC7938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8038);
  }

  return result;
}

unint64_t sub_21CAE6584()
{
  result = qword_27CDF8050;
  if (!qword_27CDF8050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8018, &qword_21CBC78A0);
    sub_21CAE64C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8050);
  }

  return result;
}

uint64_t sub_21CAE6610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAE6690(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_21CAE6730()
{
  result = qword_27CDF8068;
  if (!qword_27CDF8068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8060, &qword_21CBC79C8);
    type metadata accessor for PMRecentlyDeletedAccountRow();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8070, &qword_21CBC79D0);
    sub_21C7065C0(&qword_27CDF8078, type metadata accessor for PMRecentlyDeletedAccountRow);
    sub_21CAE6840();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8068);
  }

  return result;
}

unint64_t sub_21CAE6840()
{
  result = qword_27CDF8080;
  if (!qword_27CDF8080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8070, &qword_21CBC79D0);
    sub_21C6EADEC(&qword_27CDF8088, &qword_27CDF8090, &unk_21CBC79D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8080);
  }

  return result;
}

uint64_t sub_21CAE6908@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_21CAE2A3C(v2, a1);
}

uint64_t objectdestroy_126Tm_0()
{
  v1 = v0;
  v2 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = v4 + v5 + v7;
  v69 = *(*(v6 - 1) + 64);
  v9 = v1 + v4;
  v10 = *(v1 + v4 + 8);

  v11 = *(v1 + v4 + 32);

  v12 = v2[6];
  v13 = sub_21CB85C44();
  v66 = *(v13 - 8);
  v71 = *(v66 + 48);
  if (!v71(v9 + v12, 2, v13))
  {
    (*(v66 + 8))(v9 + v12, v13);
  }

  v14 = v8 & ~v7;
  v15 = (v9 + v2[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB823B4();
    (*(*(v16 - 8) + 8))(v15, v16);
    v17 = (v15 + *(type metadata accessor for PMDismissAction() + 20));
    if (!*v17)
    {
      goto LABEL_7;
    }

    v15 = v17 + 1;
  }

  v18 = *v15;

LABEL_7:
  sub_21C7025C4(*(v9 + v2[8]), *(v9 + v2[8] + 8));
  v19 = *(v9 + v2[9] + 8);

  v67 = v14;
  v20 = v1 + v14;
  v21 = *(v1 + v14 + 8);

  v22 = (v1 + v14 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = *(v22 + 1);

  v25 = *(v22 + 3);

  v70 = v7;
  v68 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *(v22 + 5);

    v27 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v28 = v27[7];
    v29 = sub_21CB85B74();
    (*(*(v29 - 8) + 8))(&v22[v28], v29);
    v30 = *&v22[v27[8] + 8];

    v31 = v27[9];
    if (v71(&v22[v31], 1, v13))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v54 = *(v22 + 4);

  v55 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v56 = v55[7];
  v57 = sub_21CB85C04();
  v58 = *(v57 - 8);
  if (!(*(v58 + 48))(&v22[v56], 1, v57))
  {
    (*(v58 + 8))(&v22[v56], v57);
  }

  v59 = v55[8];
  v60 = sub_21CB85BB4();
  v61 = *(v60 - 8);
  if (!(*(v61 + 48))(&v22[v59], 1, v60))
  {
    (*(v61 + 8))(&v22[v59], v60);
  }

  v31 = v55[9];
  v7 = v70;
  v6 = v68;
  if (!v71(&v22[v31], 1, v13))
  {
LABEL_9:
    (*(v66 + 8))(&v22[v31], v13);
  }

LABEL_10:
  v32 = v20 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = v3;
    v65 = v1;
    v33 = *(v32 + 8);

    v34 = *(v32 + 24);

    v35 = *(v32 + 40);

    v36 = *(v32 + 56);

    v37 = type metadata accessor for PMAccount.MockData(0);
    v38 = v37[8];
    v39 = sub_21CB80DD4();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    if (!v41(v32 + v38, 1, v39))
    {
      (*(v40 + 8))(v32 + v38, v39);
    }

    v42 = *(v32 + v37[9]);

    v43 = *(v32 + v37[10] + 8);

    v44 = *(v32 + v37[11] + 8);

    v45 = v37[12];
    if (!v41(v32 + v45, 1, v39))
    {
      (*(v40 + 8))(v32 + v45, v39);
    }

    v46 = v37[15];
    v47 = sub_21CB85BB4();
    v48 = *(v47 - 8);
    v1 = v65;
    if (!(*(v48 + 48))(v32 + v46, 1, v47))
    {
      (*(v48 + 8))(v32 + v46, v47);
    }

    v49 = v37[16];
    v50 = sub_21CB85C04();
    v51 = *(v50 - 8);
    v3 = v64;
    if (!(*(v51 + 48))(v32 + v49, 1, v50))
    {
      (*(v51 + 8))(v32 + v49, v50);
    }

    v52 = *(v32 + v37[17] + 8);

    v53 = v37[18];
    v7 = v70;
    v6 = v68;
    if (!v71(v32 + v53, 1, v13))
    {
      (*(v66 + 8))(v32 + v53, v13);
    }
  }

  else
  {
  }

  v62 = v20 + v6[7];
  if (*(v62 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v67 + v69, v3 | v7 | 7);
}

uint64_t sub_21CAE70B0(uint64_t a1)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21CAE3F08(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_21CAE7190(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PMAccount(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_21CAE7288@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_21CAE424C(v1 + v4, v9, a1);
}

uint64_t objectdestroy_145Tm()
{
  v1 = v0;
  v2 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v71 = type metadata accessor for PMAccount(0);
  v6 = *(*(v71 - 1) + 80);
  v7 = v4 + v5 + v6;
  v68 = *(*(v71 - 1) + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = v1 + v4;
  v10 = *(v1 + v4 + 8);

  v11 = *(v1 + v4 + 32);

  v12 = v2[6];
  v13 = sub_21CB85C44();
  v14 = *(v13 - 8);
  v70 = *(v14 + 48);
  if (!v70(v9 + v12, 2, v13))
  {
    (*(v14 + 8))(v9 + v12, v13);
  }

  v15 = v7 & ~v6;
  v16 = (v9 + v2[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB823B4();
    (*(*(v17 - 8) + 8))(v16, v17);
    v18 = (v16 + *(type metadata accessor for PMDismissAction() + 20));
    if (!*v18)
    {
      goto LABEL_7;
    }

    v16 = v18 + 1;
  }

  v19 = *v16;

LABEL_7:
  v69 = v6;
  sub_21C7025C4(*(v9 + v2[8]), *(v9 + v2[8] + 8));
  v20 = *(v9 + v2[9] + 8);

  v67 = v15;
  v21 = v1 + v15;
  v22 = *(v1 + v15 + 8);

  v23 = (v1 + v15 + v71[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *(v23 + 1);

  v26 = *(v23 + 3);

  v66 = v14;
  if (EnumCaseMultiPayload == 1)
  {
    v27 = *(v23 + 5);

    v28 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v29 = v28[7];
    v30 = sub_21CB85B74();
    (*(*(v30 - 8) + 8))(&v23[v29], v30);
    v31 = *&v23[v28[8] + 8];

    v32 = v28[9];
    if (v70(&v23[v32], 1, v13))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v55 = *(v23 + 4);

  v56 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v57 = v56[7];
  v58 = sub_21CB85C04();
  v59 = *(v58 - 8);
  if (!(*(v59 + 48))(&v23[v57], 1, v58))
  {
    (*(v59 + 8))(&v23[v57], v58);
  }

  v60 = v56[8];
  v61 = sub_21CB85BB4();
  v62 = *(v61 - 8);
  if (!(*(v62 + 48))(&v23[v60], 1, v61))
  {
    (*(v62 + 8))(&v23[v60], v61);
  }

  v32 = v56[9];
  v14 = v66;
  if (!v70(&v23[v32], 1, v13))
  {
LABEL_9:
    (*(v14 + 8))(&v23[v32], v13);
  }

LABEL_10:
  v33 = v21 + v71[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = v3;
    v34 = *(v33 + 8);

    v35 = *(v33 + 24);

    v36 = *(v33 + 40);

    v37 = *(v33 + 56);

    v38 = type metadata accessor for PMAccount.MockData(0);
    v39 = v38[8];
    v40 = sub_21CB80DD4();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    if (!v42(v33 + v39, 1, v40))
    {
      (*(v41 + 8))(v33 + v39, v40);
    }

    v43 = *(v33 + v38[9]);

    v44 = *(v33 + v38[10] + 8);

    v45 = *(v33 + v38[11] + 8);

    v46 = v38[12];
    if (!v42(v33 + v46, 1, v40))
    {
      (*(v41 + 8))(v33 + v46, v40);
    }

    v47 = v38[15];
    v48 = sub_21CB85BB4();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v33 + v47, 1, v48))
    {
      (*(v49 + 8))(v33 + v47, v48);
    }

    v50 = v38[16];
    v51 = sub_21CB85C04();
    v52 = *(v51 - 8);
    v3 = v65;
    if (!(*(v52 + 48))(v33 + v50, 1, v51))
    {
      (*(v52 + 8))(v33 + v50, v51);
    }

    v53 = *(v33 + v38[17] + 8);

    v54 = v38[18];
    if (!v70(v33 + v54, 1, v13))
    {
      (*(v66 + 8))(v33 + v54, v13);
    }
  }

  else
  {
  }

  v63 = v21 + v71[7];
  if (*(v63 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v67 + v68, v3 | v69 | 7);
}

uint64_t sub_21CAE7AD0(char *a1)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
  v8 = *(v1 + v4 + 32);
  return sub_21CAEB94C(*a1, v7);
}

unint64_t sub_21CAE7BA0()
{
  result = qword_27CDF80D0;
  if (!qword_27CDF80D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F60, &qword_21CBC7708);
    sub_21CAE7C2C();
    sub_21C8C3E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80D0);
  }

  return result;
}

unint64_t sub_21CAE7C2C()
{
  result = qword_27CDF80D8;
  if (!qword_27CDF80D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F58, &qword_21CBC76D8);
    sub_21CAE7CB8();
    sub_21C8C3DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80D8);
  }

  return result;
}

unint64_t sub_21CAE7CB8()
{
  result = qword_27CDF80E0;
  if (!qword_27CDF80E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F50, &qword_21CBC76A8);
    sub_21CAE7D44();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80E0);
  }

  return result;
}

unint64_t sub_21CAE7D44()
{
  result = qword_27CDF80E8;
  if (!qword_27CDF80E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F48, &qword_21CBC7618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F08, &qword_21CBC75F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F18, &qword_21CBC7600);
    sub_21C6EADEC(&qword_27CDF7F20, &qword_27CDF7F08, &qword_21CBC75F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F28, &qword_21CBC7608);
    sub_21CAE5A68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED9D0, &qword_27CDED9D8, &unk_21CBB96E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80E8);
  }

  return result;
}

unint64_t sub_21CAE7F08()
{
  result = qword_27CDF80F0;
  if (!qword_27CDF80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80F0);
  }

  return result;
}

unint64_t sub_21CAE7FA0()
{
  result = qword_27CDF8108;
  if (!qword_27CDF8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8108);
  }

  return result;
}

uint64_t sub_21CAE8024(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PMAccount(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_21CAEFBD8(a3 + v16 + v17 * v14, v13, type metadata accessor for PMAccount);
      v18 = a1(v13);
      if (v3)
      {
        sub_21CAEFC40(v13, type metadata accessor for PMAccount);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_21CAEFD1C(v13, v25, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21C7B0C4C(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_21CAEFD1C(v25, v15 + v16 + v21 * v17, type metadata accessor for PMAccount);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_21CAEFC40(v13, type metadata accessor for PMAccount);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

void sub_21CAE82B0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PMGeneratedPassword(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_21CAEFBD8(a3 + v15 + v16 * v13, v12, type metadata accessor for PMGeneratedPassword);
      v17 = a1(v12);
      if (v3)
      {
        sub_21CAEFC40(v12, type metadata accessor for PMGeneratedPassword);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_21CAEFD1C(v12, v24, type metadata accessor for PMGeneratedPassword);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0B84(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21C7B0B84(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_21CAEFD1C(v24, v14 + v15 + v20 * v16, type metadata accessor for PMGeneratedPassword);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_21CAEFC40(v12, type metadata accessor for PMGeneratedPassword);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_21CAE853C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PMSharingGroup();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_21CAEFBD8(a3 + v16 + v17 * v14, v13, type metadata accessor for PMSharingGroup);
      v18 = a1(v13);
      if (v3)
      {
        sub_21CAEFC40(v13, type metadata accessor for PMSharingGroup);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_21CAEFD1C(v13, v25, type metadata accessor for PMSharingGroup);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B1188(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21C7B1188(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_21CAEFD1C(v25, v15 + v16 + v21 * v17, type metadata accessor for PMSharingGroup);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_21CAEFC40(v13, type metadata accessor for PMSharingGroup);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_21CAE87DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CAE88C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CAFB8DC(v2);
}

uint64_t sub_21CAE8994(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21CA4F1E0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21CAE8A88(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21CA4F420(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CAE8B8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21CB85FA4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_21CB85FA4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_21CB64B78();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21C950314(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21CAE8CD4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21CAE8E18(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21CA4F7F8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CAE8F10(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21CA4F2EC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CAE902C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *(result - 8);
  if (v13 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = *(v14 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v17 = *(v6 + 16);
  v18 = __OFADD__(v17, v5);
  v19 = v17 + v5;
  if (!v18)
  {
    *(v6 + 16) = v19;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_21CAE917C()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CAEFBD8(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, v9, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v10 = (*(v2 + 48))(v9, 2, v1);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
      v12 = qword_27CDEA4C0;

      if (v12 == -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
      v20 = qword_27CDEA4C0;

      if (v20 == -1)
      {
LABEL_11:
        sub_21CB86544();
        sub_21C7072A8(v11, v23);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v19 = *(v23 + 16);
        goto LABEL_12;
      }
    }

    swift_once();
    goto LABEL_11;
  }

  (*(v2 + 32))(v5, v9, v1);
  v13 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v14 = qword_27CDEA4C0;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v13, v23);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v15 = v23;
  if (*(v23 + 16))
  {
    v16 = sub_21CB10A54(v5);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      (*(v2 + 8))(v5, v1);
      v19 = *(v18 + 16);
LABEL_12:

      return v19 == 0;
    }
  }

  (*(v2 + 8))(v5, v1);
  return 1;
}

uint64_t sub_21CAE9588()
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v31);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = *(v32 + 16);
  if (!v10)
  {

    return MEMORY[0x277D84F90];
  }

  v11 = v32 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  v12 = *(v0 + 72);
  v29 = v32;
  v30 = v12;
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21C6EDBAC(v11, v9, &qword_27CDEAFF0, &qword_21CBA0D60);
    sub_21C6EDBAC(v9, v6, &qword_27CDEAFF0, &qword_21CBA0D60);
    v15 = *(v31 + 48);
    v16 = *&v6[v15];
    sub_21CAEFD1C(v6, v3, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    *&v3[v15] = v16;

    sub_21C6EA794(v3, &qword_27CDEAFF0, &qword_21CBA0D60);
    result = sub_21C6EA794(v9, &qword_27CDEAFF0, &qword_21CBA0D60);
    v17 = *(v16 + 16);
    v18 = v13[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v13[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v13 = sub_21CA4F1B8(isUniquelyReferenced_nonNull_native, v21, 1, v13);
      if (*(v16 + 16))
      {
LABEL_14:
        v22 = (v13[3] >> 1) - v13[2];
        result = type metadata accessor for PMAccount(0);
        v23 = *(result - 8);
        if (v22 < v17)
        {
          goto LABEL_23;
        }

        v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v25 = *(v23 + 72);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v26 = v13[2];
          v27 = __OFADD__(v26, v17);
          v28 = v26 + v17;
          if (v27)
          {
            goto LABEL_24;
          }

          v13[2] = v28;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_22;
    }

LABEL_4:
    v11 += v30;
    if (!--v10)
    {

      return v13;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21CAE98BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CAE9930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21CAE99B0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  return sub_21CAECED8(0, 0, 0);
}

uint64_t sub_21CAE9A6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21CAE9A98(v4);
}

uint64_t sub_21CAE9A98(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v3 = sub_21C7A2154(v7, a1);

  if ((v3 & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated);
    v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v6(a1);
  }

  return result;
}

uint64_t sub_21CAE9C44()
{
  v0 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81E8, &qword_21CBC8198);
  v4 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81F0, &unk_21CBC81A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v20 = *(v38 + 16);

  if (v20 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (*(v38 + 16))
    {
      sub_21C6EDBAC(v38 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v10, &qword_27CDEAFF0, &qword_21CBA0D60);

      v21 = *&v10[*(v7 + 48)];

      sub_21CAEFD1C(v10, v19, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
      v22 = 0;
    }

    else
    {

      v22 = 1;
    }

    v24 = v1[7];
    v24(v19, v22, 1, v0);
    v25 = type metadata accessor for PMSharingGroup();
    (*(*(v25 - 8) + 56))(v16, 2, 2, v25);
    v24(v16, 0, 1, v0);
    v26 = *(v37 + 48);
    sub_21C6EDBAC(v19, v6, &qword_27CDF81F0, &unk_21CBC81A0);
    sub_21C6EDBAC(v16, &v6[v26], &qword_27CDF81F0, &unk_21CBC81A0);
    v27 = v1[6];
    if (v27(v6, 1, v0) == 1)
    {
      sub_21C6EA794(v16, &qword_27CDF81F0, &unk_21CBC81A0);
      sub_21C6EA794(v19, &qword_27CDF81F0, &unk_21CBC81A0);
      if (v27(&v6[v26], 1, v0) == 1)
      {
        sub_21C6EA794(v6, &qword_27CDF81F0, &unk_21CBC81A0);
        v23 = 1;
        return v23 & 1;
      }
    }

    else
    {
      v28 = v35;
      sub_21C6EDBAC(v6, v35, &qword_27CDF81F0, &unk_21CBC81A0);
      if (v27(&v6[v26], 1, v0) != 1)
      {
        v29 = &v6[v26];
        v30 = v28;
        v31 = v34;
        sub_21CAEFD1C(v29, v34, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
        v23 = sub_21CAEF10C(v30, v31);
        sub_21CAEFC40(v31, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
        sub_21C6EA794(v16, &qword_27CDF81F0, &unk_21CBC81A0);
        sub_21C6EA794(v19, &qword_27CDF81F0, &unk_21CBC81A0);
        sub_21CAEFC40(v30, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
        sub_21C6EA794(v6, &qword_27CDF81F0, &unk_21CBC81A0);
        return v23 & 1;
      }

      sub_21C6EA794(v16, &qword_27CDF81F0, &unk_21CBC81A0);
      sub_21C6EA794(v19, &qword_27CDF81F0, &unk_21CBC81A0);
      sub_21CAEFC40(v28, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    }

    sub_21C6EA794(v6, &qword_27CDF81E8, &qword_21CBC8198);
    v23 = 0;
    return v23 & 1;
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_21CAEA250()
{
  v1 = type metadata accessor for PMAccount(0);
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - v5);
  v32 = v0;
  KeyPath = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_21CB86544();
    sub_21C7072A8(KeyPath, v33);

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_21CB81DB4();

    v9 = v33;
    v30 = *(v33 + 16);
    if (!v30)
    {
      break;
    }

    v10 = 0;
    v28 = MEMORY[0x277D84F90];
    v29 = v33;
    while (v10 < *(v9 + 16))
    {
      v11 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v12 = *(v31 + 72);
      sub_21CAEFBD8(v9 + v11 + v12 * v10, v6, type metadata accessor for PMAccount);
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      sub_21CB81DB4();

      v13 = v33;
      if (!*(v33 + 16))
      {
        goto LABEL_4;
      }

      KeyPath = *v6;
      v14 = v6[1];
      v15 = *(v33 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v16 = sub_21CB864D4();
      v17 = -1 << *(v13 + 32);
      v18 = v16 & ~v17;
      if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (1)
        {
          v20 = (*(v13 + 48) + 16 * v18);
          v21 = *v20 == KeyPath && v20[1] == v14;
          if (v21 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        sub_21CAEFD1C(v6, v27, type metadata accessor for PMAccount);
        v22 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v22 + 16) + 1, 1);
          v22 = v34;
        }

        v25 = *(v22 + 16);
        v24 = *(v22 + 24);
        KeyPath = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          sub_21C7B0C4C(v24 > 1, v25 + 1, 1);
          v22 = v34;
        }

        *(v22 + 16) = KeyPath;
        v28 = v22;
        sub_21CAEFD1C(v27, v22 + v11 + v25 * v12, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_4:

        sub_21CAEFC40(v6, type metadata accessor for PMAccount);
      }

      ++v10;
      v9 = v29;
      if (v10 == v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v28 = MEMORY[0x277D84F90];
LABEL_23:

  return v28;
}

uint64_t sub_21CAEA660(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v21 = v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated;
    v11 = v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    do
    {
      sub_21CAEFBD8(v11, v9, type metadata accessor for PMAccount);
      v12 = *v9;
      v13 = v9[1];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      sub_21CB4BAE4(v12, v13);

      v14 = v24;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v15 = v23;
      swift_getKeyPath();
      swift_getKeyPath();
      v23 = v14;

      sub_21CB81DC4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      LOBYTE(v13) = sub_21C7A2154(v15, v23);

      if ((v13 & 1) == 0)
      {
        v17 = *v21;
        v16 = *(v21 + 8);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_21CB81DB4();

        v17(v23);
      }

      v6 = sub_21CAEFC40(v9, type metadata accessor for PMAccount);
      v11 += v22;
      --v10;
    }

    while (v10);
  }

  MEMORY[0x28223BE20](v6);
  v18 = v20;
  *(&v20 - 2) = v2;
  *(&v20 - 1) = v18;
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21CAEA9F8(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v26 - v6);
  result = sub_21CAE9588();
  v30 = *(result + 16);
  if (v30)
  {
    v9 = 0;
    v10 = a1 + 56;
    v28 = MEMORY[0x277D84F90];
    v29 = result;
    while (v9 < *(result + 16))
    {
      v11 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v12 = *(v31 + 72);
      sub_21CAEFBD8(result + v11 + v12 * v9, v7, type metadata accessor for PMAccount);
      if (!*(a1 + 16))
      {
        goto LABEL_3;
      }

      v13 = *v7;
      v14 = v7[1];
      v15 = *(a1 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v16 = sub_21CB864D4();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if ((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (1)
        {
          v20 = (*(a1 + 48) + 16 * v18);
          v21 = *v20 == v13 && v20[1] == v14;
          if (v21 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_21CAEFD1C(v7, v27, type metadata accessor for PMAccount);
        v22 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v22 + 16) + 1, 1);
          v22 = v32;
        }

        v25 = *(v22 + 16);
        v24 = *(v22 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21C7B0C4C(v24 > 1, v25 + 1, 1);
          v22 = v32;
        }

        *(v22 + 16) = v25 + 1;
        v28 = v22;
        sub_21CAEFD1C(v27, v22 + v11 + v25 * v12, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_3:
        sub_21CAEFC40(v7, type metadata accessor for PMAccount);
      }

      ++v9;
      result = v29;
      if (v9 == v30)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_22:

    return v28;
  }

  return result;
}

uint64_t sub_21CAEACD8(uint64_t a1)
{
  v72 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v6 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v64 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v64 - v15;
  MEMORY[0x28223BE20](v16);
  v69 = &v64 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  MEMORY[0x28223BE20](v21);
  v77 = &v64 - v22;
  v23 = type metadata accessor for PMAccount(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v79 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v64 - v29;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return 0;
  }

  v66 = v13;
  v70 = v6;
  v64 = v27;
  v32 = *(v27 + 24);
  v75 = v31;
  v76 = v32;
  v33 = *(v28 + 80);
  v80 = *(v28 + 72);
  v78 = a1 + ((v33 + 32) & ~v33);
  v34 = v78;
  v35 = v31;
  v73 = &v64 - v29;
  v74 = v9;
  while (1)
  {
    v82 = v34;
    v83 = v35;
    sub_21CAEFBD8(v34, v30, type metadata accessor for PMAccount);
    sub_21CAEFBD8(&v30[v76], v9, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CAEFC40(v30, type metadata accessor for PMAccount);
      v36 = v71;
      sub_21CAEFD1C(v9, v71, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v36 + *(v72 + 72), v20, &unk_27CDF20B0, &unk_21CBA0090);
      v37 = type metadata accessor for PMAccount.MockData;
      v38 = v36;
    }

    else
    {
      v39 = *v9;
      sub_21CB85B94();

      v37 = type metadata accessor for PMAccount;
      v38 = v30;
    }

    sub_21CAEFC40(v38, v37);
    v40 = v20;
    v41 = v77;
    sub_21C716934(v20, v77, &unk_27CDF20B0, &unk_21CBA0090);
    v42 = sub_21CB85C44();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    v45 = v44(v41, 1, v42);
    sub_21C6EA794(v41, &unk_27CDF20B0, &unk_21CBA0090);
    if (v45 != 1)
    {
      break;
    }

    v34 = v82 + v80;
    v35 = v83 - 1;
    v20 = v40;
    v30 = v73;
    v9 = v74;
    if (v83 == 1)
    {
      return 0;
    }
  }

  v46 = *(v64 + 24);
  v82 = (v43 + 56);
  v83 = v46;
  v77 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState;
  v47 = v70;
  v48 = v68;
  v49 = v78;
  v50 = v44;
  v65 = v44;
  while (1)
  {
    v51 = v79;
    sub_21CAEFBD8(v49, v79, type metadata accessor for PMAccount);
    sub_21CAEFBD8(v51 + v83, v47, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v78 = v49;
    if (EnumCaseMultiPayload == 1)
    {
      v53 = v71;
      sub_21CAEFD1C(v47, v71, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v53 + *(v72 + 72), v48, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CAEFC40(v53, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v54 = *v70;
      sub_21CB85B94();

      v47 = v70;
    }

    v55 = v69;
    sub_21C716934(v48, v69, &unk_27CDF20B0, &unk_21CBA0090);
    if (v50(v55, 1, v42) != 1)
    {
      break;
    }

    sub_21CAEFC40(v79, type metadata accessor for PMAccount);
    sub_21C6EA794(v55, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_11:
    v49 = v78 + v80;
    if (!--v75)
    {
      return 1;
    }
  }

  sub_21C6EA794(v55, &unk_27CDF20B0, &unk_21CBA0090);
  v56 = *(v67 + v77);
  v57 = qword_27CDEA4C0;

  if (v57 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v58 = sub_21C7072A8(v56, v84);

  v59 = v66;
  (*v82)(v66, 1, 1, v42);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v60 = *(v58 + 24);
    ObjectType = swift_getObjectType();
    v62 = v79;
    LOBYTE(v60) = (*(v60 + 160))(v79, v59, ObjectType, v60);

    swift_unknownObjectRelease();
    sub_21C6EA794(v59, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CAEFC40(v62, type metadata accessor for PMAccount);
    v47 = v70;
    v48 = v68;
    v50 = v65;
    if ((v60 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_11;
  }

  sub_21C6EA794(v59, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CAEFC40(v79, type metadata accessor for PMAccount);
  return 0;
}

uint64_t sub_21CAEB488()
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v30);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v29 = v27 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v9 = v33;
  KeyPath = swift_getKeyPath();
  v11 = v9[2];
  if (v11)
  {
    v31 = KeyPath;
    v33 = MEMORY[0x277D84F90];
    sub_21C7B1288(0, v11, 0);
    v12 = v33;
    v13 = v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    v14 = *(v0 + 72);
    v27[1] = v9;
    v28 = v14;
    do
    {
      sub_21C6EDBAC(v13, v8, &qword_27CDEAFF0, &qword_21CBA0D60);
      v15 = v29;
      sub_21C6EDBAC(v8, v29, &qword_27CDEAFF0, &qword_21CBA0D60);
      v16 = *(v30 + 48);
      v17 = *(v15 + v16);
      sub_21CAEFD1C(v15, v3, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
      *&v3[v16] = v17;
      swift_getAtKeyPath();
      sub_21C6EA794(v3, &qword_27CDEAFF0, &qword_21CBA0D60);
      sub_21C6EA794(v8, &qword_27CDEAFF0, &qword_21CBA0D60);
      v18 = v32;
      v33 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_21C7B1288((v19 > 1), v20 + 1, 1);
        v12 = v33;
      }

      v12[2] = v20 + 1;
      v12[v20 + 4] = v18;
      v13 += v28;
      --v11;
    }

    while (v11);

    v22 = v12[2];
    if (v22)
    {
LABEL_7:
      v23 = 0;
      v24 = v12 + 4;
      while (1)
      {
        v25 = *v24++;
        v26 = __OFADD__(v23, v25);
        v23 += v25;
        if (v26)
        {
          break;
        }

        if (!--v22)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
LABEL_13:

  return v23;
}

uint64_t sub_21CAEB7A0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CAEB81C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EDBAC(a1, &v13 - v9, &unk_27CDEBE60, &unk_21CB9FF40);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v10, v7, &unk_27CDEBE60, &unk_21CB9FF40);

  sub_21CB81DC4();
  return sub_21C6EA794(v10, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21CAEB94C(char a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v6 = v7;
    sub_21CA94078(&v7, v2, v3);

    v4 = v6;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21CB4BAE4(v2, v3);

    v4 = v7;
  }

  return sub_21CAE9A98(v4);
}

uint64_t sub_21CAEBA7C(uint64_t a1)
{
  v91 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v2);
  v88 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD68, &qword_21CBA56A0);
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = &v65 - v7;
  v8 = sub_21CB85114();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v82 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v13);
  v78 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C0, &qword_21CBC0C70);
  v76 = *(v16 - 8);
  v77 = v16;
  v17 = *(v76 + 64);
  MEMORY[0x28223BE20](v16);
  v75 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81C8, &unk_21CBC7DC0);
  v73 = *(v19 - 8);
  v74 = v19;
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v19);
  v72 = &v65 - v21;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B8, &qword_21CBC0C68);
  v70 = *(v71 - 8);
  v22 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v65 - v23;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81D0, &qword_21CBC7DD0);
  v67 = *(v68 - 8);
  v24 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v65 - v25;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v26 = *(*(v66 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v66);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v65 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81D8, &qword_21CBC7DD8);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v65 - v35;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_subscriptions) = MEMORY[0x277D84FA0];
  v37 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState;
  *(v1 + v37) = swift_getKeyPath();
  v38 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__groupsStore;
  *(v1 + v38) = swift_getKeyPath();
  v39 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__allSections;
  v40 = MEMORY[0x277D84F90];
  v92 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC78, &qword_21CBC7920);
  sub_21CB81D74();
  v41 = *(v33 + 32);
  v41(v1 + v39, v36, v32);
  v42 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__listedSections;
  v92 = v40;
  sub_21CB81D74();
  v41(v1 + v42, v36, v32);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountForPresentedDetailsSheet;
  v44 = type metadata accessor for PMAccount(0);
  (*(*(v44 - 8) + 56))(v31, 1, 1, v44);
  sub_21C6EDBAC(v31, v29, &unk_27CDEBE60, &unk_21CB9FF40);
  v45 = v65;
  sub_21CB81D74();
  sub_21C6EA794(v31, &unk_27CDEBE60, &unk_21CB9FF40);
  (*(v67 + 32))(v1 + v43, v45, v68);
  v46 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsThatFailedToRecover;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0138, &qword_21CBC0840);
  v47 = v69;
  sub_21CB81D74();
  (*(v70 + 32))(v1 + v46, v47, v71);
  v48 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__deleteAccountsAlertConfiguration;
  v92 = sub_21CB12414(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81A8, &qword_21CBC7C70);
  v49 = v72;
  sub_21CB81D74();
  (*(v73 + 32))(v1 + v48, v49, v74);
  v50 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__recoverToMyPasswordsAlertConfiguration;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6440, &qword_21CBC0848);
  v51 = v75;
  sub_21CB81D74();
  (*(v76 + 32))(v1 + v50, v51, v77);
  v52 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__searchText;
  v92 = 0;
  v93 = 0xE000000000000000;
  v53 = v78;
  sub_21CB81D74();
  (*(v79 + 32))(v1 + v52, v53, v80);
  v54 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__editMode;
  v55 = v83;
  v56 = v84;
  v57 = v81;
  (*(v83 + 104))(v81, *MEMORY[0x277CDF0D8], v84);
  v58 = v55;
  (*(v55 + 16))(v82, v57, v56);
  v59 = v85;
  sub_21CB81D74();
  (*(v58 + 8))(v57, v56);
  (*(v86 + 32))(v1 + v54, v59, v87);
  v60 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated);
  *v60 = nullsub_1;
  v60[1] = 0;
  v61 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__selectedAccountIDs;
  v92 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  v62 = v88;
  sub_21CB81D74();
  (*(v89 + 32))(v1 + v61, v62, v90);
  v63 = v91;
  sub_21CAEFBD8(v91, v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, type metadata accessor for PMRecentlyDeletedAccountsSource);
  sub_21CAEC454();
  sub_21CAEFC40(v63, type metadata accessor for PMRecentlyDeletedAccountsSource);
  return v1;
}

uint64_t sub_21CAEC454()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC60, &unk_21CBA00B0);
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD70, &unk_21CBA5720);
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState;
  v15 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v16 = qword_27CDEA4C0;

  if (v16 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v15, v28);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v17 = *(v1 + v14);

  sub_21CB86544();
  sub_21C7072A8(v17, v28);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDECD80, &qword_27CDECD70, &unk_21CBA5720);
  v18 = v24;
  sub_21CB81E04();

  (*(v23 + 8))(v8, v18);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v19 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__groupsStore);

  sub_21CB86544();
  sub_21C7073E8(v19, v28);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v20 = v25;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC70, &qword_27CDEAC60, &unk_21CBA00B0);
  v21 = v27;
  sub_21CB81E04();

  (*(v26 + 8))(v20, v21);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

uint64_t sub_21CAECA38()
{
  v1 = v0;
  v2 = type metadata accessor for PMSharingGroup();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CAEFBD8(v1, v10, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    return MEMORY[0x21CF15F90](v11 != 1);
  }

  sub_21CAEFD1C(v10, v6, type metadata accessor for PMSharingGroup);
  MEMORY[0x21CF15F90](2);
  sub_21CB85C44();
  sub_21CAEFCA0(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  v12 = &v6[v2[5]];
  v13 = *v12;
  v14 = v12[1];
  sub_21CB854C4();
  v15 = *&v6[v2[6]];
  MEMORY[0x21CF15F90](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 32);
    do
    {
      v19 = v17[2];
      v20 = *v17;
      v34 = v17[1];
      v35 = v19;
      v33 = v20;
      v21 = v17[3];
      v22 = v17[4];
      v23 = v17[6];
      v38 = v17[5];
      v39 = v23;
      v36 = v21;
      v37 = v22;
      if (*(&v20 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v33, v32);
        sub_21CB854C4();
        if (*(&v34 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v33, v32);
        if (*(&v34 + 1))
        {
LABEL_9:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_12;
        }
      }

      sub_21CB864A4();
LABEL_12:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v24 = v39;
      v25 = BYTE2(v38);
      v26 = BYTE1(v38);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v26);
      MEMORY[0x21CF15F90](v25);
      if (v24)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v27 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_21CB864A4();
        v27 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
LABEL_16:
          sub_21CB864A4();
          goto LABEL_6;
        }
      }

      sub_21CB864A4();
      v18 = v27;
      sub_21CB85DE4();

LABEL_6:
      sub_21C7A344C(&v33);
      v17 += 7;
      --v16;
    }

    while (v16);
  }

  v28 = &v6[v2[7]];
  v29 = *v28;
  v30 = v28[1];
  sub_21CB854C4();
  return sub_21CAEFC40(v6, type metadata accessor for PMSharingGroup);
}

uint64_t sub_21CAECE2C()
{
  sub_21CB86484();
  sub_21CAECA38();
  return sub_21CB864D4();
}

uint64_t sub_21CAECE70()
{
  sub_21CB86484();
  sub_21CAECA38();
  return sub_21CB864D4();
}

uint64_t sub_21CAECED8(unint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  sub_21CAED650();
  sub_21CAEDA98();
  if (a1)
  {
    v8 = a1;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
    v15 = qword_27CDEA4C0;

    if (v15 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v14, v30);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v9 = v30;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v11 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v12 = qword_27CDEA4C0;
  v13 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);

  if (v12 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v11, v30);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v8 = v30;
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:

  v9 = a2;
  if (a3)
  {
LABEL_4:

    v10 = a3;
    goto LABEL_14;
  }

LABEL_11:
  v16 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__groupsStore);
  v17 = qword_27CDEA4C0;

  if (v17 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v16, v30);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = v30;
LABEL_14:

  v18 = sub_21CAEDD80(v8, v9, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v18;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v19 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
    v21 = qword_27CDEA4C0;

    if (v21 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v22 = sub_21C7072A8(v20, v31);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = *(v22 + 24);
      ObjectType = swift_getObjectType();
      v26 = (*(v24 + 48))(ObjectType, v24);
      swift_unknownObjectRelease();
      Strong = [v26 associatedDomainsManager];
    }

    matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v8, v31, v32, Strong);

    v28 = sub_21CAEF784(v9, v4);

    sub_21CAEDD80(matched, v28, v10);

    swift_getKeyPath();
    swift_getKeyPath();
  }

  else
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    swift_getKeyPath();
    swift_getKeyPath();
  }

  return sub_21CB81DC4();
}

uint64_t sub_21CAED510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v3, v6);

  sub_21C8329EC(a2);
}

uint64_t sub_21CAED5D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CAED650()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25[0] = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v25 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v25 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C6EDBAC(v16, v13, &unk_27CDEBE60, &unk_21CB9FF40);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
    (*(v3 + 56))(v18, 1, 1, v2);
  }

  else
  {
    sub_21CAEFD1C(v13, v6, type metadata accessor for PMAccount);
    v19 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
    v20 = qword_27CDEA4C0;

    if (v20 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v19, v26[0]);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v22 = v26[0];
    v23 = v6[1];
    v26[0] = *v6;
    v26[1] = v23;
    MEMORY[0x28223BE20](v21);
    v25[-2] = v26;

    sub_21C968D04(sub_21C7AE738, v22, v18);

    sub_21CAEFC40(v6, type metadata accessor for PMAccount);
    sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v18, v25[0], &unk_27CDEBE60, &unk_21CB9FF40);

  sub_21CB81DC4();
  return sub_21C6EA794(v18, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21CAEDA98()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v6 = v24;
  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v7, v24);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v9 = v24;
  v10 = *(v24 + 16);
  if (v10)
  {
    v22 = v6;
    v23 = v0;
    v24 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v10, 0);
    v11 = v24;
    v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_21CAEFBD8(v12, v5, type metadata accessor for PMAccount);
      v14 = *v5;
      v15 = v5[1];

      sub_21CAEFC40(v5, type metadata accessor for PMAccount);
      v24 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21C7B0C0C((v16 > 1), v17 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v12 += v13;
      --v10;
    }

    while (v10);

    v6 = v22;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v19 = sub_21CAEED74(v11, v6);

  return sub_21CAE9A98(v19);
}

uint64_t sub_21CAEDD80(uint64_t a1, char *a2, uint64_t a3)
{
  v89 = a1;
  v90 = a3;
  v96 = a2;
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for PMSharingGroup();
  v91 = *(v97 - 8);
  v9 = *(v91 + 64);
  v10 = MEMORY[0x28223BE20](v97);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v89 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  v16 = *(v15 - 8);
  v101 = v15;
  v102 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v100 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v98 = &v89 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v89 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v89 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v89 - v28;
  v30 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CAEFBD8(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, v33, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v34 = (v5[6])(v33, 2, v4);
  if (v34)
  {
    if (v34 == 1)
    {
      v35 = v90;
      v36 = *(v90 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFE8, &qword_21CBA0D58);
      v37 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v95 = *(v102 + 72);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_21CBA0690;
      v99 = v38;
      v94 = v37;
      v39 = v38 + v37;
      v40 = *(v101 + 48);
      v41 = v91;
      v42 = *(v91 + 56);
      if (v36)
      {
        v92 = *(v91 + 56);
        v93 = v91 + 56;
        v42(v39, 2, 2, v97);
        *(v39 + v40) = v89;
        v103 = MEMORY[0x277D84F90];

        sub_21C7B1248(0, v36, 0);
        v43 = v103;
        v44 = v35 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v91 = *(v41 + 72);
        v45 = v96;
        do
        {
          sub_21CAEFBD8(v44, v14, type metadata accessor for PMSharingGroup);
          sub_21CAEFBD8(v14, v29, type metadata accessor for PMSharingGroup);
          (v92)(v29, 0, 2, v97);
          if (*(v45 + 2))
          {
            v46 = sub_21CB10A54(v14);
            v47 = v101;
            if (v48)
            {
              v49 = *(*(v45 + 7) + 8 * v46);
            }

            else
            {
              v49 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v49 = MEMORY[0x277D84F90];
            v47 = v101;
          }

          v50 = *(v47 + 48);
          sub_21CAEFC40(v14, type metadata accessor for PMSharingGroup);
          *&v29[v50] = v49;
          v103 = v43;
          v52 = *(v43 + 16);
          v51 = *(v43 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_21C7B1248(v51 > 1, v52 + 1, 1);
            v43 = v103;
          }

          *(v43 + 16) = v52 + 1;
          sub_21C716934(v29, &v94[v43 + v52 * v95], &qword_27CDEAFF0, &qword_21CBA0D60);
          v44 += v91;
          --v36;
          v45 = v96;
        }

        while (v36);
        v103 = v99;
        sub_21CAE902C(v43, sub_21CA4F7D4, &qword_27CDEAFF0, &qword_21CBA0D60);
        result = v103;
      }

      else
      {
        v42(v39, 1, 2, v97);
        *(v39 + v40) = v89;

        result = v99;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFE8, &qword_21CBA0D58);
      v71 = *(v102 + 72);
      v72 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_21CBA0690;
      v74 = v73 + v72;
      v75 = *(v101 + 48);
      (*(v91 + 56))(v74, 2, 2, v97);
      *(v74 + v75) = v89;

      result = v73;
    }
  }

  else
  {
    v99 = v12;
    v53 = (v5[4])(v8, v33, v4);
    MEMORY[0x28223BE20](v53);
    v94 = v8;
    *(&v89 - 2) = v8;
    v54 = v90;

    v55 = sub_21CAE853C(sub_21CAEFBB8, (&v89 - 4), v54);
    v56 = *(v55 + 16);
    if (v56)
    {
      v92 = v5;
      v93 = v4;
      v103 = MEMORY[0x277D84F90];
      sub_21C7B1248(0, v56, 0);
      v57 = v103;
      v58 = *(v91 + 80);
      v90 = v55;
      v59 = v55 + ((v58 + 32) & ~v58);
      v95 = *(v91 + 72);
      v60 = (v91 + 56);
      v61 = v96;
      do
      {
        v62 = v99;
        sub_21CAEFBD8(v59, v99, type metadata accessor for PMSharingGroup);
        sub_21CAEFBD8(v62, v27, type metadata accessor for PMSharingGroup);
        (*v60)(v27, 0, 2, v97);
        v63 = v101;
        if (*(v61 + 2) && (v64 = sub_21CB10A54(v62), (v65 & 1) != 0))
        {
          v66 = *(*(v61 + 7) + 8 * v64);
        }

        else
        {
          v66 = MEMORY[0x277D84F90];
        }

        v67 = *(v63 + 48);
        sub_21CAEFC40(v62, type metadata accessor for PMSharingGroup);
        *&v27[v67] = v66;
        v68 = v57;
        v103 = v57;
        v70 = *(v57 + 16);
        v69 = *(v57 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_21C7B1248(v69 > 1, v70 + 1, 1);
          v68 = v103;
        }

        *(v68 + 16) = v70 + 1;
        v57 = v68;
        sub_21C716934(v27, v68 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v70, &qword_27CDEAFF0, &qword_21CBA0D60);
        v59 += v95;
        --v56;
      }

      while (v56);

      v5 = v92;
      v4 = v93;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    (v5[1])(v94, v4);
    result = v57;
  }

  v97 = *(result + 16);
  if (v97)
  {
    v77 = 0;
    v78 = MEMORY[0x277D84F90];
    v79 = v101;
    v96 = v24;
    v99 = result;
    while (v77 < *(result + 16))
    {
      v80 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v81 = *(v102 + 72);
      sub_21C6EDBAC(result + v80 + v81 * v77, v24, &qword_27CDEAFF0, &qword_21CBA0D60);
      v82 = v24;
      v83 = v24;
      v84 = v98;
      sub_21C6EDBAC(v82, v98, &qword_27CDEAFF0, &qword_21CBA0D60);
      v85 = *(*(v84 + *(v79 + 48)) + 16);

      sub_21CAEFC40(v84, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
      if (v85)
      {
        sub_21C716934(v83, v100, &qword_27CDEAFF0, &qword_21CBA0D60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B1248(0, *(v78 + 16) + 1, 1);
          v78 = v103;
        }

        v88 = *(v78 + 16);
        v87 = *(v78 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_21C7B1248(v87 > 1, v88 + 1, 1);
          v78 = v103;
        }

        *(v78 + 16) = v88 + 1;
        sub_21C716934(v100, v78 + v80 + v88 * v81, &qword_27CDEAFF0, &qword_21CBA0D60);
        v79 = v101;
        v24 = v96;
      }

      else
      {
        sub_21C6EA794(v83, &qword_27CDEAFF0, &qword_21CBA0D60);
        v24 = v83;
      }

      ++v77;
      result = v99;
      if (v97 == v77)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
LABEL_40:

    return v78;
  }

  return result;
}

uint64_t sub_21CAEE764()
{
  sub_21CB85C44();
  sub_21CAEFCA0(&qword_27CDECD58, MEMORY[0x277D49978]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_21CB86344();
  }

  return v1 & 1;
}

uint64_t sub_21CAEE854(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CAECED8(v1, 0, 0);
  }

  return result;
}

uint64_t sub_21CAEE8BC(char **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CAECED8(0, v1, 0);
  }

  return result;
}

uint64_t sub_21CAEE924(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CAECED8(0, 0, v1);
  }

  return result;
}

uint64_t sub_21CAEE98C()
{
  sub_21CAEFC40(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_subscriptions);

  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__groupsStore);

  v4 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__allSections;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81D8, &qword_21CBC7DD8);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__listedSections, v5);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountForPresentedDetailsSheet;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81D0, &qword_21CBC7DD0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsThatFailedToRecover;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B8, &qword_21CBC0C68);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__deleteAccountsAlertConfiguration;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81C8, &unk_21CBC7DC0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__recoverToMyPasswordsAlertConfiguration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C0, &qword_21CBC0C70);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__searchText;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__editMode;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD68, &qword_21CBA56A0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated + 8);

  v20 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__selectedAccountIDs;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  return v0;
}

uint64_t sub_21CAEECA4()
{
  sub_21CAEE98C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CAEED74(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_21CAEEF14(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_21CAEFCE8(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x21CF16D90](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_21CAEEF14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_21CB86484();

          sub_21CB854C4();
          v14 = sub_21CB864D4();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_21CB86344() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_21CAA1B00(v26, a2, v25, a4);
}

uint64_t sub_21CAEF10C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81E0, &qword_21CBC8070);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v31 - v15;
  v18 = *(v17 + 56);
  sub_21CAEFBD8(a1, v31 - v15, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  sub_21CAEFBD8(a2, &v16[v18], type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  v19 = *(v5 + 48);
  v20 = v19(v16, 2, v4);
  if (!v20)
  {
    sub_21CAEFBD8(v16, v12, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    if (v19(&v16[v18], 2, v4))
    {
      sub_21CAEFC40(v12, type metadata accessor for PMSharingGroup);
      goto LABEL_9;
    }

    sub_21CAEFD1C(&v16[v18], v8, type metadata accessor for PMSharingGroup);
    sub_21CB85C44();
    sub_21CAEFCA0(&qword_27CDECD58, MEMORY[0x277D49978]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v31[2] == v31[0] && v31[3] == v31[1])
    {
    }

    else
    {
      v22 = sub_21CB86344();

      if ((v22 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v23 = v4[5];
    v24 = *&v12[v23];
    v25 = *&v12[v23 + 8];
    v26 = &v8[v23];
    if (v24 == *v26 && v25 == *(v26 + 1) || (sub_21CB86344()) && (sub_21C967680(*&v12[v4[6]], *&v8[v4[6]]))
    {
      if (v27 = v4[7], v28 = *&v12[v27], v29 = *&v12[v27 + 8], v30 = &v8[v27], v28 == *v30) && v29 == *(v30 + 1) || (sub_21CB86344())
      {
        sub_21CAEFC40(v8, type metadata accessor for PMSharingGroup);
        sub_21CAEFC40(v12, type metadata accessor for PMSharingGroup);
        goto LABEL_8;
      }
    }

LABEL_23:
    sub_21CAEFC40(v8, type metadata accessor for PMSharingGroup);
    sub_21CAEFC40(v12, type metadata accessor for PMSharingGroup);
    sub_21CAEFC40(v16, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    return 0;
  }

  if (v20 == 1)
  {
    if (v19(&v16[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_21CAEFC40(v16, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    return 1;
  }

  if (v19(&v16[v18], 2, v4) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_21C6EA794(v16, &qword_27CDF81E0, &qword_21CBC8070);
  return 0;
}

BOOL sub_21CAEF570(uint64_t a1)
{
  v18 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = a1;
  v12 = *(a1 + 16);
  do
  {
    v13 = v10;
    if (v12 == v10)
    {
      break;
    }

    sub_21CAEFBD8(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v9, type metadata accessor for PMAccount);
    sub_21CAEFBD8(&v9[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CAEFC40(v4, type metadata accessor for PMAccount.Storage);
      sub_21CAEFC40(v9, type metadata accessor for PMAccount);
      return v12 == v13;
    }

    ++v10;
    v14 = *v4;
    v15 = [*v4 isCurrentUserOriginalContributor];

    sub_21CAEFC40(v9, type metadata accessor for PMAccount);
  }

  while ((v15 & 1) != 0);
  return v12 == v13;
}

uint64_t sub_21CAEF784(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v49 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
  result = sub_21CB86204();
  v12 = result;
  v13 = 0;
  v60 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v50 = (v17 + 63) >> 6;
  v51 = a2;
  v53 = v5 + 16;
  v54 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState;
  v58 = v5;
  v59 = v4;
  v66 = v5 + 32;
  v52 = result + 64;
  v55 = result;
  v57 = v9;
  if (v19)
  {
    while (1)
    {
      v20 = a2;
      v21 = __clz(__rbit64(v19));
      v61 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = v60;
      v26 = *(v60 + 48);
      v27 = v58;
      v28 = *(v58 + 16);
      v62 = *(v58 + 72) * v24;
      v29 = v56;
      v28(v56, v26 + v62, v4);
      v30 = *(v25 + 56);
      v63 = v24;
      v31 = *(v30 + 8 * v24);
      v32 = *(v27 + 32);
      v32(v9, v29, v4);
      v33 = v20;
      v34 = v31;
      v35 = *(v33 + v54);
      v36 = qword_27CDEA4C0;

      if (v36 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v37 = sub_21C7072A8(v35, v64);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v39 = v64;
      v38 = v65;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = *(v37 + 24);
        ObjectType = swift_getObjectType();
        v43 = (*(v41 + 48))(ObjectType, v41);
        swift_unknownObjectRelease();
        Strong = [v43 associatedDomainsManager];
      }

      matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v34, v39, v38, Strong);

      v45 = v63;
      *(v52 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v12 = v55;
      v9 = v57;
      v4 = v59;
      result = (v32)(*(v55 + 48) + v62, v57, v59);
      *(*(v12 + 56) + 8 * v45) = matched;
      v46 = *(v12 + 16);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        break;
      }

      *(v12 + 16) = v48;
      a2 = v51;
      v19 = v61;
      if (!v61)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v50)
      {
        return v12;
      }

      v23 = *(v15 + 8 * v13);
      ++v22;
      if (v23)
      {
        v20 = a2;
        v21 = __clz(__rbit64(v23));
        v61 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAEFBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAEFC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CAEFCA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CAEFCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21CAEEF14(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21CAEFD1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_21CAEFDA0(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = type metadata accessor for PMAccount(0);
  sub_21CAEFBD8(a1 + *(v17 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAEFD1C(v9, v5, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v5[*(v2 + 72)], v13, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CAEFC40(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v18 = *v9;
    sub_21CB85B94();
  }

  sub_21C716934(v13, v16, &unk_27CDF20B0, &unk_21CBA0090);
  v19 = sub_21CB85C44();
  v20 = (*(*(v19 - 8) + 48))(v16, 1, v19) != 1;
  sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  return v20;
}

uint64_t type metadata accessor for PMRecentlyDeletedRow()
{
  result = qword_27CDF81F8;
  if (!qword_27CDF81F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAF0088()
{
  type metadata accessor for PMRecentlyDeletedAccountsSource();
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      sub_21CAF0124();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CAF0124()
{
  if (!qword_27CDF5208)
  {
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF5208);
    }
  }
}

uint64_t sub_21CAF0190@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_21CB83124();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED670, &qword_21CBA7280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D00, &qword_21CBC2E40);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v40 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED680, &unk_21CBA7290);
  sub_21C830C8C();
  sub_21CB84C84();
  KeyPath = swift_getKeyPath();
  LOBYTE(v42) = 0;
  v15 = sub_21C830DF8();
  v16 = sub_21C830EB0();
  sub_21CB840E4();

  (*(v6 + 8))(v9, v5);
  v17 = sub_21CAF0914();
  sub_21CB83114();
  sub_21CB83104();
  KeyPath = v17;
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v18 = sub_21CB84034();
  v20 = v19;
  KeyPath = v5;
  v42 = &type metadata for PMAccountsListNavigationCellLabelStyle;
  LOBYTE(v5) = v21 & 1;
  v43 = v15;
  v44 = v16;
  swift_getOpaqueTypeConformance2();
  v22 = v39;
  v23 = v37;
  sub_21CB84774();
  sub_21C74A72C(v18, v20, v5);

  LOBYTE(v18) = sub_21CB83D34();
  sub_21CB81F24();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v38 + 8))(v14, v23);
  v32 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D08, &unk_21CBC8240) + 36);
  *v32 = v18;
  *(v32 + 8) = v25;
  *(v32 + 16) = v27;
  *(v32 + 24) = v29;
  *(v32 + 32) = v31;
  *(v32 + 40) = 0;
  v33 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D10, &unk_21CBC2EC0);
  v35 = v22 + *(result + 36);
  *v35 = v33;
  *(v35 + 8) = 0;
  return result;
}

uint64_t sub_21CAF05B4@<X0>(uint64_t a1@<X8>)
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

double sub_21CAF06E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for PMRecentlyDeletedRow() + 24);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v10, 0);
    (*(v5 + 8))(v8, v4);
    if ((v20 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18[0] = sub_21CB84BB4();
    memset(&v18[1], 0, 32);
    v19 = 1;
    goto LABEL_6;
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_21CB84BB4();
  v12 = sub_21CB84A84();
  v18[0] = v11;
  v18[1] = v12;
  *&v18[2] = vdupq_n_s64(0x4040000000000000uLL);
  v18[4] = 0x4018000000000000;
  v19 = 0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  sub_21CB83494();
  result = *&v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  *a2 = v20;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_21CAF0914()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CADDEAC(v0, v9);
  if ((*(v2 + 48))(v9, 2, v1))
  {
    v10 = *(v0 + *(type metadata accessor for PMRecentlyDeletedRow() + 20) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v17 = *(v20 + 16);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v11 = *(v0 + *(type metadata accessor for PMRecentlyDeletedRow() + 20) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v12 = v20;
    if (*(v20 + 16) && (v13 = sub_21CB10A54(v5), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      v16 = *(v2 + 8);

      v16(v5, v1);

      v17 = *(v15 + 16);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
      return 0;
    }
  }

  return v17;
}

id sub_21CAF0CB4(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata alertTitleForRecoveringSavedAccountToMyPasswords_];
  if (result)
  {
    v4 = result;
    v5 = [ObjCClassFromMetadata alertMessageForRecoveringSavedAccountToMyPasswords_];
    if (v5)
    {
      v6 = v5;
      sub_21CB855C4();

      v7 = sub_21CB85584();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_allocWithZone(MEMORY[0x277D49A80]) initWithFirst:v4 second:v7];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21CAF0DF0(unint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v100 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = v92 - v7;
  MEMORY[0x28223BE20](v8);
  v102 = v92 - v9;
  MEMORY[0x28223BE20](v10);
  v103 = v92 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v92 - v13;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = v92 - v17;
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20 != 1)
  {
    v98 = v92 - v17;
    v99 = v14;
    v96 = v3;
    v97 = v16;
    while (1)
    {
      v24 = 0;
      v104 = 0;
      v3 = 0;
      v14 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
      while (1)
      {
        if (v20 == v24)
        {
          if (v3 == 1)
          {
            v28 = v98;
            if (v104 == 1)
            {
              sub_21CB81014();
              sub_21CB81004();
              (*(v96 + 8))(v28, v97);
              return;
            }

            if (v104 >= 1)
            {
              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v95 = sub_21CB81034();
              v41 = *(v95 - 8);
              v42 = *(v41 + 72);
              v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
              v44 = swift_allocObject();
              v45 = v103;
              sub_21CB81014();
              v46 = v102;
              sub_21CB81014();
              v47 = v101;
              sub_21CB81014();
              v48 = v100;
              sub_21CB81014();
              sub_21CB80FE4();
              v49 = *(v96 + 8);
              v50 = v48;
              v51 = v97;
              v49(v50, v97);
              v49(v47, v51);
              v49(v46, v51);
              v49(v45, v51);
              swift_setDeallocating();
              (*(v41 + 8))(v44 + v43, v95);
              swift_deallocClassInstance();
              sub_21CB81004();
              v49(v99, v51);
              v49(v28, v51);
              goto LABEL_32;
            }

LABEL_36:
            sub_21CB81014();
            sub_21CB81014();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
            v104 = sub_21CB81034();
            v77 = *(v104 - 8);
            v78 = *(v77 + 72);
            v98 = ((*(v77 + 80) + 32) & ~*(v77 + 80));
            v79 = swift_allocObject();
            v80 = v103;
            sub_21CB81014();
            v81 = v102;
            sub_21CB81014();
            v82 = v101;
            sub_21CB81014();
            v83 = v100;
            sub_21CB81014();
            sub_21CB80FE4();
            v84 = *(v96 + 8);
            v85 = v83;
            v86 = v28;
            v87 = v97;
            v84(v85, v97);
            v84(v82, v87);
            v84(v81, v87);
            v84(v80, v87);
            swift_setDeallocating();
            (*(v77 + 8))(&v98[v79], v104);
            swift_deallocClassInstance();
            sub_21CB81004();
            v84(v99, v87);
            v84(v86, v87);
LABEL_37:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
            v88 = swift_allocObject();
            v89 = MEMORY[0x277D83B88];
            *(v88 + 16) = xmmword_21CBA0690;
            v90 = MEMORY[0x277D83C10];
            *(v88 + 56) = v89;
            *(v88 + 64) = v90;
            *(v88 + 32) = v3;
            sub_21CB85594();
          }

          else
          {
            v28 = v98;
            if (v3 < 1)
            {
              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v95 = sub_21CB81034();
              v52 = *(v95 - 8);
              v53 = *(v52 + 72);
              v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
              v55 = swift_allocObject();
              v56 = v103;
              sub_21CB81014();
              v57 = v102;
              sub_21CB81014();
              v58 = v101;
              sub_21CB81014();
              v59 = v100;
              sub_21CB81014();
              sub_21CB80FE4();
              v60 = *(v96 + 8);
              v61 = v59;
              v62 = v97;
              v60(v61, v97);
              v60(v58, v62);
              v60(v57, v62);
              v60(v56, v62);
              swift_setDeallocating();
              (*(v52 + 8))(v55 + v54, v95);
              swift_deallocClassInstance();
              sub_21CB81004();
              v60(v99, v62);
              v60(v28, v62);
LABEL_32:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v63 = swift_allocObject();
              v64 = MEMORY[0x277D83B88];
              *(v63 + 16) = xmmword_21CBA0690;
              v65 = MEMORY[0x277D83C10];
              *(v63 + 56) = v64;
              *(v63 + 64) = v65;
              *(v63 + 32) = v104;
            }

            else
            {
              if (v104 == 1)
              {
                sub_21CB81014();
                sub_21CB81014();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
                v104 = sub_21CB81034();
                v29 = *(v104 - 8);
                v30 = *(v29 + 72);
                v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
                v32 = swift_allocObject();
                v33 = v103;
                sub_21CB81014();
                v34 = v102;
                sub_21CB81014();
                v35 = v101;
                sub_21CB81014();
                v36 = v100;
                sub_21CB81014();
                sub_21CB80FE4();
                v98 = v28;
                v37 = *(v96 + 8);
                v38 = v36;
                v39 = v97;
                v37(v38, v97);
                v37(v35, v39);
                v37(v34, v39);
                v37(v33, v39);
                swift_setDeallocating();
                (*(v29 + 8))(v32 + v31, v104);
                swift_deallocClassInstance();
                v40 = v98;
                sub_21CB81004();
                v37(v99, v39);
                v37(v40, v39);
                goto LABEL_37;
              }

              if (v104 < 1)
              {
                goto LABEL_36;
              }

              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v94 = sub_21CB81034();
              v66 = *(v94 - 8);
              v92[1] = *(v66 + 72);
              v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
              v93 = swift_allocObject();
              v95 = v93 + v67;
              v68 = v103;
              sub_21CB81014();
              v69 = v102;
              sub_21CB81014();
              v70 = v101;
              sub_21CB81014();
              v71 = v100;
              sub_21CB81014();
              sub_21CB80FE4();
              v72 = v97;
              v73 = *(v96 + 8);
              v73(v71, v97);
              v73(v70, v72);
              v73(v69, v72);
              v73(v68, v72);
              sub_21CB81014();
              sub_21CB81014();
              sub_21CB81014();
              sub_21CB81014();
              sub_21CB80FE4();
              v73(v71, v72);
              v73(v70, v72);
              v73(v69, v72);
              v73(v68, v72);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              sub_21CB81004();
              v73(v99, v72);
              v73(v28, v72);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v74 = swift_allocObject();
              *(v74 + 16) = xmmword_21CBA15B0;
              v75 = MEMORY[0x277D83B88];
              v76 = MEMORY[0x277D83C10];
              *(v74 + 56) = MEMORY[0x277D83B88];
              *(v74 + 64) = v76;
              *(v74 + 32) = v3;
              *(v74 + 96) = v75;
              *(v74 + 104) = v76;
              *(v74 + 72) = v104;
            }

            sub_21CB85594();
          }

          return;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x21CF15BD0](v24, a1, v18);
        }

        else
        {
          if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v16 = *(a1 + 8 * v24 + 32);
        }

        v26 = v16;
        v19 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v16 = [v16 credentialTypes];
        if ((v16 & 2) != 0)
        {
          v27 = __OFADD__(v3++, 1);
          if (v27)
          {
            goto LABEL_41;
          }
        }

        v25 = [v26 credentialTypes];

        ++v24;
        if (v25)
        {
          v24 = v19;
          v27 = __OFADD__(v104++, 1);
          if (v27)
          {
            goto LABEL_46;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v91 = v16;
      if (sub_21CB85FA4() == 1)
      {
        break;
      }

      v98 = v19;
      v99 = v14;
      v96 = v3;
      v97 = v91;
      v16 = sub_21CB85FA4();
      v20 = v16;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x21CF15BD0](0, a1, v18);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(a1 + 32);
LABEL_6:
    v22 = v21;
    v23 = [swift_getObjCClassFromMetadata() alertTitleForRecoveringSavedAccountToMyPasswords_];

    sub_21CB855C4();
    return;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_21CAF1F24(unint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8220, &unk_21CBC8510);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v58 - v8;
  v63 = _s24AccountContainerIdentityOMa();
  v67 = *(v63 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v63);
  v66 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v58 - v12;
  MEMORY[0x28223BE20](v13);
  v76 = &v58 - v14;
  MEMORY[0x28223BE20](v15);
  v77 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v58 - v19;
  v78 = sub_21CB85C44();
  v21 = *(v78 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v78);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v72 = &v58 - v27;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v79 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79 != 1)
  {
    v80 = MEMORY[0x277D84FA0];
    while (1)
    {
      v60 = v3;
      v61 = v2;
      if (v79)
      {
        v58 = v24;
        v31 = 0;
        v24 = (a1 & 0xC000000000000001);
        v32 = a1 & 0xFFFFFFFFFFFFFF8;
        v69 = (v21 + 16);
        v70 = (v21 + 32);
        v73 = (v21 + 56);
        v74 = (v21 + 48);
        v59 = v21;
        v68 = (v21 + 8);
        v75 = a1;
        v71 = a1 & 0xFFFFFFFFFFFFFF8;
        v21 = v72;
        while (1)
        {
          if (v24)
          {
            v35 = MEMORY[0x21CF15BD0](v31, a1, v26);
          }

          else
          {
            if (v31 >= *(v32 + 16))
            {
              goto LABEL_46;
            }

            v35 = *(a1 + 8 * v31 + 32);
          }

          v2 = v35;
          v3 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          sub_21CB85B94();
          v36 = v78;
          if ((*v74)(v20, 1, v78) == 1)
          {
            sub_21C6EA794(v20, &unk_27CDF20B0, &unk_21CBA0090);
            v33 = v76;
            (*v73)(v76, 1, 1, v36);
            v34 = v77;
            sub_21CA963C8(v77, v33);

            sub_21CAF3188(v34);
          }

          else
          {
            (*v70)(v21, v20, v36);
            v37 = v20;
            v38 = v24;
            v39 = v76;
            (*v69)(v76, v21, v36);
            (*v73)(v39, 0, 1, v36);
            v40 = v77;
            v41 = v39;
            v24 = v38;
            v20 = v37;
            v32 = v71;
            sub_21CA963C8(v77, v41);

            sub_21CAF3188(v40);
            (*v68)(v21, v36);
          }

          ++v31;
          a1 = v75;
          if (v3 == v79)
          {
            v42 = v80;
            v3 = v60;
            v2 = v61;
            v21 = v59;
            v24 = v58;
            goto LABEL_22;
          }
        }
      }

      else
      {
        v42 = MEMORY[0x277D84FA0];
LABEL_22:
        v43 = v78;
        a1 = v64;
        if (*(v42 + 16) == 1)
        {
          sub_21C7C6F14(v42, v64);
          if ((*(v67 + 48))(a1, 1, v63) == 1)
          {
            sub_21C6EA794(a1, &qword_27CDF8220, &unk_21CBC8510);
          }

          else if ((*(v21 + 48))(a1, 1, v43) == 1)
          {
            sub_21CAF3188(a1);
          }

          else
          {
            (*(v21 + 32))(v24, a1, v43);
            v44 = [objc_opt_self() sharedProvider];
            a1 = sub_21CB85D84();

            if (a1)
            {
              v45 = [a1 displayName];

              if (v45)
              {

                v46 = sub_21CB855C4();
                v48 = v47;

                v49 = v3;
                v50 = v62;
                sub_21CB81014();
                sub_21CB81004();
                (*(v49 + 8))(v50, v2);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
                v51 = swift_allocObject();
                *(v51 + 16) = xmmword_21CBA0690;
                *(v51 + 56) = MEMORY[0x277D837D0];
                *(v51 + 64) = sub_21C7C0050();
                *(v51 + 32) = v46;
                *(v51 + 40) = v48;
                sub_21CB85594();

                (*(v21 + 8))(v24, v43);
                return;
              }
            }

            (*(v21 + 8))(v24, v43);
          }
        }

        v52 = 1 << *(v42 + 32);
        v53 = -1;
        if (v52 < 64)
        {
          v53 = ~(-1 << v52);
        }

        v54 = v53 & *(v42 + 56);
        v3 = (v52 + 63) >> 6;
        v20 = (v21 + 48);

        v2 = 0;
        v21 = v65;
        v24 = v66;
        while (v54)
        {
          v55 = v2;
LABEL_40:
          v56 = __clz(__rbit64(v54));
          v54 &= v54 - 1;
          sub_21CAF31E4(*(v42 + 48) + *(v67 + 72) * (v56 | (v55 << 6)), v21);
          sub_21CAF31E4(v21, v24);
          a1 = (*v20)(v24, 1, v43);
          sub_21CAF3188(v24);
          sub_21CAF3188(v21);
          if (a1 != 1)
          {

            v57 = v62;
            sub_21CB81014();
            sub_21CB81004();
            (*(v60 + 8))(v57, v61);
            return;
          }
        }

        while (1)
        {
          v55 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          if (v55 >= v3)
          {

            return;
          }

          v54 = *(v42 + 56 + 8 * v55);
          v2 = (v2 + 1);
          if (v54)
          {
            v2 = v55;
            goto LABEL_40;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      if (sub_21CB85FA4() == 1)
      {
        break;
      }

      v80 = MEMORY[0x277D84FA0];
      v79 = sub_21CB85FA4();
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x21CF15BD0](0, a1, v26);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v28 = *(a1 + 32);
  }

  v29 = v28;
  v30 = [swift_getObjCClassFromMetadata() alertMessageForRecoveringSavedAccountToMyPasswords_];

  if (v30)
  {
    sub_21CB855C4();
  }
}

void sub_21CAF2954()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v1 = sub_21CB85814();
  v2 = [ObjCClassFromMetadata alertTitleForRecoveringSavedAccountsToMyPasswords_];

  if (v2)
  {
    v3 = sub_21CB85814();
    v4 = [ObjCClassFromMetadata alertMessageForRecoveringSavedAccountsToMyPasswords_];

    if (v4)
    {
      sub_21CB855C4();

      v4 = sub_21CB85584();
      swift_bridgeObjectRelease_n();
    }

    [objc_allocWithZone(MEMORY[0x277D49A80]) initWithFirst:v2 second:v4];
  }

  else
  {
    __break(1u);
  }
}

PMRecoverToMyPasswordsAlertStrings __swiftcall PMRecoverToMyPasswordsAlertStrings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _s24AccountContainerIdentityOMa()
{
  result = qword_27CDF8228;
  if (!qword_27CDF8228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CAF2C10()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s24AccountContainerIdentityOMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CAF31E4(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    MEMORY[0x21CF15F90](0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x21CF15F90](1);
    sub_21CAF3B34(&qword_27CDF8950, MEMORY[0x277D49978]);
    sub_21CB85494();
    (*(v3 + 8))(v6, v2);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CAF2DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CAF31E4(v2, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x21CF15F90](0);
  }

  (*(v5 + 32))(v8, v12, v4);
  MEMORY[0x21CF15F90](1);
  sub_21CAF3B34(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21CAF2FA4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CAF31E4(v4, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    MEMORY[0x21CF15F90](0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x21CF15F90](1);
    sub_21CAF3B34(&qword_27CDF8950, MEMORY[0x277D49978]);
    sub_21CB85494();
    (*(v6 + 8))(v9, v5);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CAF3188(uint64_t a1)
{
  v2 = _s24AccountContainerIdentityOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CAF31E4(uint64_t a1, uint64_t a2)
{
  v4 = _s24AccountContainerIdentityOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAF3248(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s24AccountContainerIdentityOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7260, &qword_21CBC4718);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v24 - v15;
  v18 = *(v17 + 56);
  sub_21CAF31E4(a1, v24 - v15);
  sub_21CAF31E4(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_21CAF31E4(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_21C6EA794(v16, &qword_27CDF7260, &qword_21CBC4718);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_21CAF3B34(&qword_27CDECD58, MEMORY[0x277D49978]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v24[2] == v24[0] && v24[3] == v24[1])
  {
    v21 = *(v5 + 8);
    v21(v8, v4);

    v21(v12, v4);
  }

  else
  {
    v22 = sub_21CB86344();
    v23 = *(v5 + 8);
    v23(v8, v4);

    v23(v12, v4);
    if ((v22 & 1) == 0)
    {
      sub_21CAF3188(v16);
      return 0;
    }
  }

LABEL_12:
  sub_21CAF3188(v16);
  return 1;
}

uint64_t sub_21CAF35AC(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 credentialTypes];
  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21CAF3718(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB85B94();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v16 = [objc_opt_self() sharedProvider];
    v17 = sub_21CB85D84();

    if (v17)
    {
      v18 = [v17 displayName];

      if (v18)
      {
        v19 = sub_21CB855C4();
        v21 = v20;

        [a1 credentialTypes];
        sub_21CB81014();
        sub_21CB81004();
        (*(v3 + 8))(v6, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_21CBA0690;
        *(v22 + 56) = MEMORY[0x277D837D0];
        *(v22 + 64) = sub_21C7C0050();
        *(v22 + 32) = v19;
        *(v22 + 40) = v21;
        v23 = sub_21CB85594();

        (*(v12 + 8))(v15, v11);
        return v23;
      }
    }

    (*(v12 + 8))(v15, v11);
  }

  return 0;
}

uint64_t sub_21CAF3B34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CAF3BA8(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v8 + 24);
    v16 = *(v9 + 72);
    do
    {
      sub_21C80EABC(v14, v11, type metadata accessor for PMAccount);
      sub_21C80EABC(&v11[v15], v5, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7190C0(v5, type metadata accessor for PMAccount.Storage);
        sub_21C7190C0(v11, type metadata accessor for PMAccount);
      }

      else
      {
        v17 = *v5;
        v18 = sub_21C7190C0(v11, type metadata accessor for PMAccount);
        MEMORY[0x21CF15300](v18);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v12 = v22;
      }

      v14 += v16;
      --v13;
    }

    while (v13);
  }

  return v12;
}

uint64_t sub_21CAF3DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8240, &qword_21CBC86B8);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v39 - v5;
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v48 = *v2;
  v49 = v6;
  v50 = v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8248, &unk_21CBC86C0);
  MEMORY[0x21CF14A20](&v52);
  v9 = v52;
  if (v52)
  {
    v10 = objc_opt_self();
    sub_21CAF3BA8(v9);

    sub_21C897E98();
    v11 = sub_21CB85814();

    v12 = [v10 alertTitleForRecoveringSavedAccountsToMyPasswords_];

    v40 = sub_21CB855C4();
    v41 = v13;
  }

  else
  {
    v40 = 63;
    v41 = 0xE100000000000000;
  }

  v51 = v7;
  v52 = v8;
  v14 = v3[4];
  sub_21CB858B4();
  sub_21C74C770(&v51, &v48);

  sub_21CAF4850(&v52, &v48);

  v15 = sub_21CB858A4();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v18 = *(v3 + 1);
  *(v16 + 32) = *v3;
  *(v16 + 48) = v18;
  *(v16 + 64) = v3[4];
  sub_21C74C770(&v51, &v48);

  sub_21CAF4850(&v52, &v48);

  v19 = sub_21CB858A4();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  v21 = *(v3 + 1);
  *(v20 + 32) = *v3;
  *(v20 + 48) = v21;
  *(v20 + 64) = v3[4];
  sub_21CB84F64();
  v23 = v48;
  v22 = v49;
  v24 = v50;
  v48 = v7;
  v49 = v6;
  v50 = v8;
  MEMORY[0x21CF14A20](&v47, v42);
  v25 = v47;
  v26 = swift_allocObject();
  v27 = *(v3 + 1);
  *(v26 + 16) = *v3;
  *(v26 + 32) = v27;
  *(v26 + 48) = v3[4];
  KeyPath = swift_getKeyPath();
  v29 = v44;
  v30 = &v44[*(v43 + 36)];
  *v30 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8250, &qword_21CBC8700);
  *(v30 + v31[18]) = v25;
  v32 = (v30 + v31[15]);
  v33 = v41;
  *v32 = v40;
  v32[1] = v33;
  v34 = v30 + v31[16];
  *v34 = v23;
  *(v34 + 1) = v22;
  v34[16] = v24;
  *(v30 + v31[17]) = 0;
  *(v30 + v31[19]) = 2;
  v35 = (v30 + v31[20]);
  *v35 = sub_21CAF4928;
  v35[1] = v26;
  v36 = (v30 + v31[21]);
  *v36 = sub_21CAF46B8;
  v36[1] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8258, &qword_21CBC8708);
  (*(*(v37 - 8) + 16))(v29, v45, v37);
  sub_21CAF4930(v29, v46);
  sub_21C74C770(&v51, &v48);

  sub_21CAF4850(&v52, &v48);
}

uint64_t sub_21CAF41F4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v49 - v7;
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = v49 - v18;
  MEMORY[0x28223BE20](v19);
  v53 = v49 - v20;
  MEMORY[0x28223BE20](v21);
  v22 = *a1;
  v50 = v49 - v23;
  v51 = v22;
  sub_21CB81014();
  v24 = sub_21CB81004();
  v26 = v25;
  v27 = *(v10 + 8);
  v49[1] = v10 + 8;
  v27(v13, v9);
  v58 = v24;
  v59 = v26;
  sub_21CB81EF4();
  v28 = sub_21CB81F14();
  (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
  sub_21C71F3FC();
  sub_21CB84DC4();
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  v27(v13, v9);
  v58 = v29;
  v59 = v31;
  v32 = *a2;
  v33 = a2[1];
  v60 = a2[2];
  v61 = v32;
  v34 = a2[4];
  v35 = swift_allocObject();
  v36 = *(a2 + 1);
  *(v35 + 16) = *a2;
  *(v35 + 32) = v36;
  v37 = v51;
  *(v35 + 48) = a2[4];
  *(v35 + 56) = v37;
  sub_21C74C770(&v61, v57);

  sub_21CAF4850(&v60, v57);

  v38 = v53;
  sub_21CB84DE4();
  v39 = v52;
  v40 = *(v52 + 16);
  v41 = v54;
  v42 = v50;
  v40(v54, v50, v14);
  v43 = v55;
  v44 = v38;
  v40(v55, v38, v14);
  v45 = v56;
  v40(v56, v41, v14);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v40(&v45[*(v46 + 48)], v43, v14);
  v47 = *(v39 + 8);
  v47(v44, v14);
  v47(v42, v14);
  v47(v43, v14);
  return (v47)(v41, v14);
}

uint64_t sub_21CAF46B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_opt_self();
  sub_21CAF3BA8(v3);
  sub_21C897E98();
  v5 = sub_21CB85814();

  v6 = [v4 alertMessageForRecoveringSavedAccountsToMyPasswords_];

  if (v6)
  {
    sub_21CB855C4();

    sub_21C71F3FC();
    result = sub_21CB84054();
    v11 = v10 & 1;
  }

  else
  {
    result = 0;
    v8 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

void *sub_21CAF47A0@<X0>(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8248, &unk_21CBC86C0);
  result = MEMORY[0x21CF14A20](&v6, v3);
  v5 = v6;
  if (v6)
  {
  }

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21CAF4814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_21CAF3DEC(a1, a2);
}

uint64_t sub_21CAF4850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6440, &qword_21CBC0848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_21CAF48C0@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CAF47A0((v1 + 32), a1);
}

uint64_t sub_21CAF48CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8248, &unk_21CBC86C0);
  return sub_21CB84F34();
}

uint64_t sub_21CAF4930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8240, &qword_21CBC86B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAF49A0()
{
  v1 = *(v0 + 40);
  v3 = v0 + 48;
  v2 = *(v0 + 48);
  return v1(*(v3 + 8));
}

unint64_t sub_21CAF49CC()
{
  result = qword_27CDF8260;
  if (!qword_27CDF8260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8240, &qword_21CBC86B8);
    sub_21C6EADEC(&qword_27CDF8268, &qword_27CDF8258, &qword_21CBC8708);
    sub_21C6EADEC(qword_27CDF8270, &qword_27CDF8250, &qword_21CBC8700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8260);
  }

  return result;
}

void sub_21CAF4B50()
{
  if (!qword_27CDF8308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3CF0, &qword_21CBC8760);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF8308);
    }
  }
}

uint64_t sub_21CAF4BD0()
{
  v1 = type metadata accessor for PMSharingGroup();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PMRemoveDuplicateAccountsList(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v16 = *v5;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8318, &unk_21CBC87F0);
  sub_21CB84D54();
  v8 = *(v15 + 16);

  if (!v8)
  {
    sub_21CAF73B4(v0, v4, type metadata accessor for PMSharingGroup);
    v9 = type metadata accessor for PMRemoveDuplicateAccountsListModel();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_21CAF8444(v4);
    v16 = v6;
    v17 = v7;
    sub_21CB84D54();
    v12 = *(v15 + 16);
    *(v15 + 16) = v8;
  }

  return v8;
}

uint64_t sub_21CAF4D2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21CAF4BD0();
  v5 = (v2 + *(a1 + 20));
  v7 = *v5;
  v6 = v5[1];
  v8 = *(type metadata accessor for _PMRemoveDuplicateAccountsList(0) + 24);
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PMRemoveDuplicateAccountsListModel();
  sub_21CAF70B0(&qword_27CDF8310, type metadata accessor for PMRemoveDuplicateAccountsListModel);

  result = sub_21CB82674();
  a2[2] = result;
  a2[3] = v10;
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_21CAF4E38@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v86 = sub_21CB83554();
  v85 = *(v86 - 8);
  v2 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB83584();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v4);
  v83 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21CB829D4();
  v81 = *(v80 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21CB82FD4();
  v66 = *(v67 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85114();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8340, &qword_21CBC8870);
  v17 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v19 = &v62 - v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8348, &qword_21CBC8878);
  v71 = *(v69 - 8);
  v20 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  v62 = &v62 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8350, &qword_21CBC8880);
  v75 = *(v74 - 8);
  v22 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v65 = &v62 - v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8358, &qword_21CBC8888);
  v77 = *(v76 - 8);
  v24 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v68 = &v62 - v25;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8360, &qword_21CBC8890);
  v82 = *(v79 - 8);
  v26 = *(v82 + 64);
  MEMORY[0x28223BE20](v79);
  v91 = &v62 - v27;
  v28 = *(v1 + 24);
  v73 = *(v1 + 16);
  v90 = v28;
  v63 = v1;
  v72 = type metadata accessor for PMRemoveDuplicateAccountsListModel();
  v70 = sub_21CAF70B0(&qword_27CDF8310, type metadata accessor for PMRemoveDuplicateAccountsListModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v93 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8368, &qword_21CBC88C0);
  sub_21CAF711C();
  v29 = MEMORY[0x277D837D0];
  sub_21CB83F14();
  KeyPath = swift_getKeyPath();
  v31 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8388, &qword_21CBC8900) + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  (*(v13 + 104))(v16, *MEMORY[0x277CDF0D0], v12);
  sub_21CB84F74();
  (*(v13 + 8))(v16, v12);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v33 - 8) + 56))(v31 + v32, 0, 1, v33);
  *v31 = KeyPath;
  v34 = v66;
  v35 = v67;
  (*(v66 + 104))(v11, *MEMORY[0x277CDDDC0], v67);
  v36 = sub_21CAF71CC();
  v37 = v62;
  v38 = v64;
  sub_21CB84684();
  (*(v34 + 8))(v11, v35);
  sub_21CAF7334(v19);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v39 = *(v98 + 16);

  v98 = sub_21C7C56AC(v39);
  v99 = v40;
  v94 = v38;
  v95 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_21C71F3FC();
  v43 = v65;
  v44 = v69;
  sub_21CB842F4();

  (*(v71 + 8))(v37, v44);
  v45 = v78;
  sub_21CB85294();
  v98 = v44;
  v99 = v29;
  v100 = OpaqueTypeConformance2;
  v101 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_21CAF70B0(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v48 = v68;
  v49 = v74;
  v50 = v80;
  v51 = v43;
  sub_21CB849C4();
  v52 = v50;
  (*(v81 + 8))(v45, v50);
  (*(v75 + 8))(v51, v49);
  v92 = v63;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83B0, &qword_21CBC8930);
  v98 = v49;
  v99 = v52;
  v100 = v46;
  v101 = v47;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_21C6EADEC(&qword_27CDF83B8, &qword_27CDF83B0, &qword_21CBC8930);
  v56 = v76;
  sub_21CB84894();
  (*(v77 + 8))(v48, v56);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v57 = v84;
  sub_21CB83544();
  v58 = v83;
  sub_21CB83534();
  (*(v85 + 8))(v57, v86);
  v94 = v56;
  v95 = v53;
  v96 = v54;
  v97 = v55;
  swift_getOpaqueTypeConformance2();
  v59 = v79;
  v60 = v91;
  sub_21CB84114();

  (*(v87 + 8))(v58, v88);
  return (*(v82 + 8))(v60, v59);
}

uint64_t sub_21CAF5A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83C0, &unk_21CBC8960);
  v3 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v21 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - v7;
  v9 = sub_21CB83604();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_21CB835C4();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB82194();
  sub_21CB835D4();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C844588();
  sub_21CB82194();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  sub_21CB83394();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21CAF5DA0(uint64_t a1)
{
  v2 = type metadata accessor for _PMRemoveDuplicateAccountsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v16[0] = v10;
  v16[1] = v12;
  sub_21CAF73B4(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRemoveDuplicateAccountsList);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_21CAF7708(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for _PMRemoveDuplicateAccountsList);
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21CAF5FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _PMRemoveDuplicateAccountsList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CAF73B4(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRemoveDuplicateAccountsList);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21CAF7708(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for _PMRemoveDuplicateAccountsList);
  sub_21CB84DA4();
  v9 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = *(v15[1] + 16);

  LOBYTE(v6) = v10 == 0;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_21C735744;
  v14[2] = v12;
  return result;
}

uint64_t sub_21CAF61D0(uint64_t a1)
{
  v2 = type metadata accessor for _PMRemoveDuplicateAccountsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21CAF73B4(a1, v5, type metadata accessor for _PMRemoveDuplicateAccountsList);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21CAF7708(v5, v13 + v12, type metadata accessor for _PMRemoveDuplicateAccountsList);
  sub_21C98B308(0, 0, v9, &unk_21CBC89B0, v13);

  v16 = *(a1 + 8);
  return (*a1)(v15);
}

uint64_t sub_21CAF63BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21CAF6454, v6, v5);
}

uint64_t sub_21CAF6454()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21C7F0710;

  return sub_21CAF77AC();
}

uint64_t sub_21CAF64E8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CAF660C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83C8, &qword_21CBC89B8);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-v10];
  v12 = objc_opt_self();
  v13 = *(a1 + 24);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel_group;
  v15 = (v13 + *(type metadata accessor for PMSharingGroup() + 20) + v14);
  v16 = *v15;
  v17 = v15[1];

  v18 = sub_21CB85584();

  v19 = [v12 descriptionForRemovingDuplicateCredentialsInGroup_];

  v20 = sub_21CB855C4();
  v22 = v21;

  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83D0, &qword_21CBC89C0);
  sub_21CAF75D8();
  sub_21CB85054();
  v23 = v5[2];
  v23(v8, v11, v4);
  *a2 = v20;
  a2[1] = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83F0, &qword_21CBC89D0);
  v23(a2 + *(v24 + 48), v8, v4);
  v25 = v5[1];

  v25(v11, v4);
  v25(v8, v4);
}

uint64_t sub_21CAF6864(uint64_t a1)
{
  v2 = type metadata accessor for _PMRemoveDuplicateAccountsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CAF73B4(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRemoveDuplicateAccountsList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21CAF7708(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for _PMRemoveDuplicateAccountsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83E8, &qword_21CBC89C8);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21C6EADEC(&qword_27CDF83E0, &qword_27CDF83E8, &qword_21CBC89C8);
  sub_21CAF70B0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  return sub_21CB84FF4();
}

double sub_21CAF6ADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_21CB83074();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83F8, &qword_21CBC8A28);
  *&result = sub_21CAF6B44(a1, a2, a3 + *(v6 + 44)).n128_u64[0];
  return result;
}

__n128 sub_21CAF6B44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PMAccountRow();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CAF73B4(a1, v9, type metadata accessor for PMAccount);
  v10 = *(a2 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v11 = v32[0];
  v12 = sub_21CB837E4();
  v13 = &v9[v6[7]];
  v14 = MEMORY[0x277CE04E8];
  *(v13 + 3) = MEMORY[0x277CE04F8];
  *(v13 + 4) = v14;
  *v13 = v12;
  v15 = v6[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v17 = &v9[v15];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, *&v32[0]);

  type metadata accessor for PMGroupsStore();
  sub_21CAF70B0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v18 = sub_21CB82674();
  v20 = v19;

  *v17 = v18;
  v17[1] = v20;
  v21 = &v9[v6[10]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v9[v6[11]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v6[12];
  *&v9[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v24 = v6[13];
  *&v9[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v25 = v6[14];
  *&v9[v25] = swift_getKeyPath();
  v26 = &v9[v6[5]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v9[v6[6]];
  *v27 = 0;
  *(v27 + 1) = 0;
  *&v9[v6[8]] = v11;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21CAF7708(v9, a3, type metadata accessor for PMAccountRow);
  v28 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0) + 36);
  v29 = v32[5];
  *(v28 + 64) = v32[4];
  *(v28 + 80) = v29;
  *(v28 + 96) = v32[6];
  v30 = v32[1];
  *v28 = v32[0];
  *(v28 + 16) = v30;
  result = v32[3];
  *(v28 + 32) = v32[2];
  *(v28 + 48) = result;
  return result;
}

uint64_t sub_21CAF6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_21CAF701C()
{
  if (!qword_27CDF8330)
  {
    type metadata accessor for PMRemoveDuplicateAccountsListModel();
    sub_21CAF70B0(&qword_27CDF8310, type metadata accessor for PMRemoveDuplicateAccountsListModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF8330);
    }
  }
}

uint64_t sub_21CAF70B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CAF711C()
{
  result = qword_27CDF8370;
  if (!qword_27CDF8370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8368, &qword_21CBC88C0);
    sub_21C6EADEC(&qword_27CDF8378, &qword_27CDF8380, &qword_21CBC88C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8370);
  }

  return result;
}

unint64_t sub_21CAF71CC()
{
  result = qword_27CDF8390;
  if (!qword_27CDF8390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8340, &qword_21CBC8870);
    sub_21CAF7250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8390);
  }

  return result;
}

unint64_t sub_21CAF7250()
{
  result = qword_27CDF8398;
  if (!qword_27CDF8398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8388, &qword_21CBC8900);
    sub_21C6EADEC(&qword_27CDF83A0, &qword_27CDF83A8, &qword_21CBC8908);
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8398);
  }

  return result;
}

uint64_t sub_21CAF7334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8340, &qword_21CBC8870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CAF73B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAF741C()
{
  v1 = *(type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CAF61D0(v2);
}

uint64_t sub_21CAF747C(uint64_t a1)
{
  v4 = *(type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CAF63BC(a1, v6, v7, v1 + v5);
}

uint64_t sub_21CAF756C()
{
  v1 = *(type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_21CAF75D8()
{
  result = qword_27CDF83D8;
  if (!qword_27CDF83D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF83D0, &qword_21CBC89C0);
    sub_21C6EADEC(&qword_27CDF83E0, &qword_27CDF83E8, &qword_21CBC89C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF83D8);
  }

  return result;
}

double sub_21CAF7688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CAF6ADC(a1, v6, a2);
}

uint64_t sub_21CAF7708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAF77AC()
{
  v1[5] = v0;
  v2 = *(type metadata accessor for PMAccount(0) - 8);
  v1[6] = v2;
  v3 = *(v2 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = sub_21CB858B4();
  v1[9] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v1[10] = v5;
  v1[11] = v4;

  return MEMORY[0x2822009F8](sub_21CAF78A0, v5, v4);
}

uint64_t sub_21CAF78A0()
{
  v1 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = *(v0 + 16);
  *(v0 + 96) = v2;
  v3 = *(v2 + 16);
  *(v0 + 104) = v3;
  if (v3)
  {
    v4 = *(v0 + 48);
    *(v0 + 112) = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState;
    *(v0 + 176) = *(v4 + 80);
    *(v0 + 120) = 0;
    if (*(v2 + 16))
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v0 + 56);
        v7 = *(v0 + 40);
        sub_21CAF9744(v2 + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(*(v0 + 48) + 72) * v5, v6, type metadata accessor for PMAccount);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v8 = *(v0 + 24);
        if (*(v8 + 16))
        {
          v9 = *v6;
          v10 = v6[1];
          v11 = *(v8 + 40);
          sub_21CB86484();
          sub_21CB854C4();
          v12 = sub_21CB864D4();
          v13 = -1 << *(v8 + 32);
          v14 = v12 & ~v13;
          if ((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
          {
            break;
          }
        }

LABEL_13:

        v18 = *(v0 + 104);
        v19 = *(v0 + 120) + 1;
        sub_21CAF9814(*(v0 + 56), type metadata accessor for PMAccount);
        if (v19 == v18)
        {
          v27 = *(v0 + 96);
          goto LABEL_22;
        }

        v5 = *(v0 + 120) + 1;
        *(v0 + 120) = v5;
        v2 = *(v0 + 96);
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_15;
        }
      }

      v15 = ~v13;
      while (1)
      {
        v16 = (*(v8 + 48) + 16 * v14);
        v17 = *v16 == v9 && v16[1] == v10;
        if (v17 || (sub_21CB86344() & 1) != 0)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_15:
      __break(1u);
    }

    v20 = *(v0 + 112);
    v21 = *(v0 + 40);

    v22 = *(v21 + v20);
    v23 = qword_27CDEA4C0;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 64);
    sub_21CB86544();
    *(v0 + 128) = sub_21C7072A8(v22, *(v0 + 32));

    *(v0 + 136) = sub_21CB858A4();
    v26 = sub_21CB85874();
    *(v0 + 144) = v26;
    *(v0 + 152) = v25;

    return MEMORY[0x2822009F8](sub_21CAF7C34, v26, v25);
  }

  else
  {
LABEL_22:
    v28 = *(v0 + 72);

    v29 = *(v0 + 56);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_21CAF7C34()
{
  v1 = v0[16];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = *(v0[16] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_21CAF7DBC;
    v8 = v0[7];

    return v14(3, v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[16];
    v11 = v0[17];

    v12 = v0[10];
    v13 = v0[11];

    return MEMORY[0x2822009F8](sub_21CAF7F6C, v12, v13);
  }
}

uint64_t sub_21CAF7DBC()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_21CAF7F00, v5, v4);
}

uint64_t sub_21CAF7F00()
{
  v1 = v0[16];
  v2 = v0[17];

  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822009F8](sub_21CAF7F6C, v3, v4);
}

uint64_t sub_21CAF7F6C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 120) + 1;
  sub_21CAF9814(*(v0 + 56), type metadata accessor for PMAccount);
  if (v2 == v1)
  {
LABEL_2:
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);

    v5 = *(v0 + 56);

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = &unk_21CBC8C38;
  while (1)
  {
    v11 = *(v0 + 120) + 1;
    *(v0 + 120) = v11;
    v12 = *(v0 + 96);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_19;
    }

    v13 = *(v0 + 56);
    v14 = *(v0 + 40);
    sub_21CAF9744(v12 + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(*(v0 + 48) + 72) * v11, v13, type metadata accessor for PMAccount);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v15 = *(v0 + 24);
    if (*(v15 + 16))
    {
      v16 = *v13;
      v17 = v13[1];
      v18 = *(v15 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v19 = sub_21CB864D4();
      v20 = -1 << *(v15 + 32);
      v21 = v19 & ~v20;
      if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        break;
      }
    }

LABEL_6:

    v9 = *(v0 + 104);
    v10 = *(v0 + 120) + 1;
    sub_21CAF9814(*(v0 + 56), type metadata accessor for PMAccount);
    if (v10 == v9)
    {
      goto LABEL_2;
    }
  }

  v22 = ~v20;
  while (1)
  {
    v23 = (*(v15 + 48) + 16 * v21);
    v24 = *v23 == v16 && v23[1] == v17;
    if (v24 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v25 = *(v0 + 112);
  v26 = *(v0 + 40);

  v8 = *(v26 + v25);
  v27 = qword_27CDEA4C0;

  if (v27 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v28 = *(v0 + 64);
  sub_21CB86544();
  *(v0 + 128) = sub_21C7072A8(v8, *(v0 + 32));

  *(v0 + 136) = sub_21CB858A4();
  v30 = sub_21CB85874();
  *(v0 + 144) = v30;
  *(v0 + 152) = v29;

  return MEMORY[0x2822009F8](sub_21CAF7C34, v30, v29);
}

uint64_t sub_21CAF82B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CAF8328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21CAF83A8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  return sub_21CAF8C5C();
}

uint64_t sub_21CAF8444(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for PMAccount(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v40);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState;
  *(v2 + v20) = swift_getKeyPath();
  v21 = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel_subscriptions) = MEMORY[0x277D84FA0];
  v22 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__duplicateAccounts;
  v44 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB81D74();
  (*(v16 + 32))(v2 + v22, v19, v15);
  v23 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__selectedAccounts;
  v44 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  sub_21CB81D74();
  (*(v11 + 32))(v2 + v23, v14, v40);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__searchText;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_21CB81D74();
  (*(v41 + 32))(v2 + v24, v10, v42);
  sub_21CAF9744(v43, v2 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel_group, type metadata accessor for PMSharingGroup);
  sub_21CAF8970();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v25 = v44;
  v26 = *(v44 + 16);
  if (v26)
  {
    v44 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v26, 0);
    v27 = v44;
    v28 = *(v39 + 80);
    v42 = v25;
    v29 = v25 + ((v28 + 32) & ~v28);
    v30 = *(v39 + 72);
    do
    {
      sub_21CAF9744(v29, v6, type metadata accessor for PMAccount);
      v32 = *v6;
      v31 = v6[1];

      sub_21CAF9814(v6, type metadata accessor for PMAccount);
      v44 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_21C7B0C0C((v33 > 1), v34 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v34 + 1;
      v35 = v27 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      v29 += v30;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v36 = sub_21CB009AC(v27);

  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v36;

  sub_21CB81DC4();
  sub_21CAF9814(v43, type metadata accessor for PMSharingGroup);
  return v2;
}

uint64_t sub_21CAF8970()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8438, &qword_21CBC8C80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v6, v9[1]);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21C6EADEC(&qword_27CDF8440, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB857D4();

  swift_allocObject();
  swift_weakInit();
  sub_21C6EADEC(&qword_27CDF8448, &qword_27CDF8438, &qword_21CBC8C80);
  sub_21CB81E04();

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

uint64_t sub_21CAF8C5C()
{
  v1 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PMAccount.UniqueID(0);
  v7 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PMAccount(0);
  v57 = *(v12 - 1);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [objc_opt_self() sharedStore];
  v51 = v0;
  sub_21CB85B64();
  v17 = sub_21CB85584();

  v18 = [v16 duplicateAccountsWithGroupID_];

  sub_21C897E98();
  v19 = sub_21CB85824();

  if (v19 >> 62)
  {
    v20 = sub_21CB85FA4();
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_16:

    v17 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_3:
  v60 = MEMORY[0x277D84F90];
  sub_21C7B0C4C(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_21;
  }

  v21 = 0;
  v17 = v60;
  v54 = v19 & 0xC000000000000001;
  v55 = v20;
  do
  {
    if (v54)
    {
      v22 = MEMORY[0x21CF15BD0](v21, v19);
    }

    else
    {
      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    *v11 = v22;
    swift_storeEnumTagMultiPayload();
    v24 = (v15 + v12[7]);
    *v24 = 0u;
    v24[1] = 0u;
    sub_21CAF9744(v11, v15 + v12[6], type metadata accessor for PMAccount.Storage);
    v25 = v12[5];
    v26 = v23;
    sub_21C7C8A3C(v15 + v25);
    v27 = v56;
    sub_21CAF9744(v15 + v25, v56, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v53;
      sub_21CAF97AC(v27, v53, type metadata accessor for PMAccount.SIWAUniqueID);
      v29 = sub_21C7CE99C();
      v31 = v30;

      v32 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v28 = v52;
      sub_21CAF97AC(v27, v52, type metadata accessor for PMAccount.CombinedUniqueID);
      v29 = sub_21C7CE408();
      v31 = v33;

      v32 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21CAF9814(v28, v32);
    sub_21CAF9814(v11, type metadata accessor for PMAccount.Storage);
    *v15 = v29;
    v15[1] = v31;
    v60 = v17;
    v35 = v17[2];
    v34 = v17[3];
    if (v35 >= v34 >> 1)
    {
      sub_21C7B0C4C(v34 > 1, v35 + 1, 1);
      v17 = v60;
    }

    ++v21;
    v17[2] = v35 + 1;
    sub_21CAF97AC(v15, v17 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v35, type metadata accessor for PMAccount);
  }

  while (v55 != v21);

LABEL_17:
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v51;
  sub_21CB81DB4();

  v38 = v60;
  v37 = v61;

  v39 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v39 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v17;
    goto LABEL_25;
  }

  v20 = *(v36 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState);
  v40 = qword_27CDEA4C0;

  if (v40 != -1)
  {
    goto LABEL_27;
  }

LABEL_21:
  sub_21CB86544();
  v41 = sub_21C7072A8(v20, v60);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v43 = v60;
  v42 = v61;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = *(v41 + 24);
    ObjectType = swift_getObjectType();
    v47 = (*(v45 + 48))(ObjectType, v45);
    swift_unknownObjectRelease();
    Strong = [v47 associatedDomainsManager];
  }

  matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v17, v43, v42, Strong);

  swift_getKeyPath();
  swift_getKeyPath();
  v60 = matched;
LABEL_25:

  return sub_21CB81DC4();
}

uint64_t sub_21CAF9380()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CAF8C5C();
  }

  return result;
}

uint64_t sub_21CAF93D8()
{
  sub_21CAF9814(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel_group, type metadata accessor for PMSharingGroup);
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState);

  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel_subscriptions);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__duplicateAccounts;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__selectedAccounts;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__searchText;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMRemoveDuplicateAccountsListModel()
{
  result = qword_27CDF8428;
  if (!qword_27CDF8428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAF95B0()
{
  v0 = type metadata accessor for PMSharingGroup();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDEAED0, &qword_27CDEAED8, &unk_21CBA0730);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_21C6EA5CC(319, &qword_27CDECD28, &qword_27CDECD30, &unk_21CBA5590);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_21C7135A4();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_21CAF9744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAF97AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAF9814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CAF9874(uint64_t a1)
{
  v2 = sub_21CB80BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = WBSOngoingSharingInvitationFallbackURL();
  sub_21CB80B94();

  v8 = [objc_allocWithZone(MEMORY[0x277CD46E8]) init];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D49C98];
  sub_21CB85B64();
  v11 = sub_21CB85584();

  v12 = [v9 resourceSpecifierEncodedKey:v10 value:v11];

  if (!v12)
  {
    sub_21CB855C4();
    v12 = sub_21CB85584();
  }

  [v8 setUrlParameters_];

  v13 = (a1 + *(type metadata accessor for PMSharingGroup() + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_21CB85584();
  [v8 setGroupName_];

  v17 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v18 = sub_21CB80B74();
  [v17 setURL_];

  [v17 setSpecialization_];
  v19 = [v17 dataRepresentation];
  v20 = sub_21CB80C84();

  (*(v3 + 8))(v6, v2);
  return v20;
}

uint64_t sub_21CAF9AE0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
  sub_21CB810D4();

  v1 = *(v0 + 32);
  sub_21C8D7854(v1, *(v3 + 40));
  return v1;
}

uint64_t sub_21CAF9B98(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  v4 = *(a1 + 40);
  *(a1 + 40) = a3;
  sub_21C8D7854(a2, a3);
  return sub_21C989C08(v3, v4);
}

uint64_t sub_21CAF9BEC()
{
  swift_getKeyPath();
  sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_21CAF9CA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_21CAF9D64(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21CAF9EAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE660, &unk_21CBC3820);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = *(v0 + 56);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v7, v11);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CA8C180();
  sub_21CB81E04();

  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  v11 = v1;
  sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
  sub_21CB810D4();

  v11 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v11 = v1;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21CAFA198()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CAFA2EC();
  }

  return result;
}

uint64_t sub_21CAFA1F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_21C989C08(*(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = OBJC_IVAR____TtC17PasswordManagerUI26PMMultipleWiFiDetailsModel___observationRegistrar;
  v6 = sub_21CB81114();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CAFA2EC()
{
  v1 = v0;
  v2 = type metadata accessor for PMWiFiNetwork();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v50 = (v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (v49 - v7);
  v9 = MEMORY[0x28223BE20](v6);
  v51 = v49 - v10;
  MEMORY[0x28223BE20](v9);
  v57 = (v49 - v11);
  KeyPath = *(v0 + 56);
  v13 = qword_27CDEA4C0;

  if (v13 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v49[1] = qword_27CE18778;
    sub_21CB86544();
    sub_21C746438(KeyPath, v58);

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_21CB81DB4();

    v14 = v58;
    v54 = *(v58 + 16);
    if (!v54)
    {
      break;
    }

    v15 = 0;
    v52 = MEMORY[0x277D84F90];
    v53 = v58;
    while (v15 < *(v14 + 16))
    {
      v16 = v8;
      v17 = *(v55 + 72);
      v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      sub_21C84BF7C(v14 + v56 + v17 * v15, v57);
      v18 = v1;
      v19 = *(v1 + 16);
      if (!*(v19 + 16))
      {
        goto LABEL_4;
      }

      v20 = *v57;
      KeyPath = v57[1];
      v21 = *(v19 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v22 = sub_21CB864D4();
      v23 = -1 << *(v19 + 32);
      v24 = v22 & ~v23;
      if ((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v19 + 48) + 16 * v24);
          v27 = *v26 == v20 && v26[1] == KeyPath;
          if (v27 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        sub_21C6F0E30(v57, v51);
        v28 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B1204(0, *(v28 + 16) + 1, 1);
          v28 = v59;
        }

        v1 = v18;
        v8 = v16;
        v31 = *(v28 + 16);
        v30 = *(v28 + 24);
        KeyPath = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_21C7B1204(v30 > 1, v31 + 1, 1);
          v28 = v59;
        }

        *(v28 + 16) = KeyPath;
        v52 = v28;
        sub_21C6F0E30(v51, v28 + v56 + v31 * v17);
      }

      else
      {
LABEL_4:
        sub_21C864EF0(v57);
        v1 = v18;
        v8 = v16;
      }

      ++v15;
      v14 = v53;
      if (v15 == v54)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v52 = MEMORY[0x277D84F90];
LABEL_23:

  v32 = *(v52 + 16);
  if (v32)
  {
    if (v32 == 1)
    {
      sub_21C84BF7C(v52 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v8);

      swift_getKeyPath();
      v58 = v1;
      sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
      sub_21CB810D4();

      if (*(v1 + 40) != 1)
      {
        goto LABEL_30;
      }

      v33 = *(v1 + 32);
      swift_getKeyPath();
      v58 = v33;
      sub_21CAFABA0(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);

      sub_21CB810D4();

      v34 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
      swift_beginAccess();
      v35 = v50;
      sub_21C84BF7C(v33 + v34, v50);
      LOBYTE(v34) = _s17PasswordManagerUI13PMWiFiNetworkV2eeoiySbAC_ACtFZ_0(v35, v8);
      sub_21C989C08(v33, 1);
      sub_21C864EF0(v35);
      if (v34)
      {
        return sub_21C864EF0(v8);
      }

      else
      {
LABEL_30:
        v42 = v50;
        sub_21C84BF7C(v8, v50);
        v43 = type metadata accessor for PMWiFiDetailsModel();
        v44 = *(v43 + 48);
        v45 = *(v43 + 52);
        v46 = swift_allocObject();
        *(v46 + 16) = swift_getKeyPath();
        v47 = (v46 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
        v47[1] = 0;
        v47[2] = 0;
        *v47 = 0;
        *(v46 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) = 0;
        sub_21CB81104();
        sub_21C6F0E30(v42, v46 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network);
        v48 = swift_getKeyPath();
        MEMORY[0x28223BE20](v48);
        v49[-4] = v1;
        v49[-3] = v46;
        LOBYTE(v49[-2]) = 1;
        v59 = v1;
        sub_21CB810C4();

        return sub_21C864EF0(v8);
      }
    }

    else
    {
      v40 = swift_getKeyPath();
      MEMORY[0x28223BE20](v40);
      v41 = v52;
      v49[-4] = v1;
      v49[-3] = v41;
      LOBYTE(v49[-2]) = 2;
      v58 = v1;
      sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
      sub_21CB810C4();
    }
  }

  else
  {

    v37 = *(v1 + 56);

    sub_21CB86544();
    sub_21C746438(v37, v58);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v38 = *(v58 + 16);

    v39 = swift_getKeyPath();
    MEMORY[0x28223BE20](v39);
    v49[-4] = v1;
    v49[-3] = v38 == 0;
    LOBYTE(v49[-2]) = 0;
    v58 = v1;
    sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21CAFABA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CAFABE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 32);
  v4 = *(v0 + 32);
  *(v2 + 32) = v1;
  v5 = *(v2 + 40);
  *(v2 + 40) = v4;
  sub_21C8D7854(v1, v4);
  return sub_21C989C08(v3, v5);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CAFAC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_21CAFACC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CAFAD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v35 - v9);
  v11 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21C7B7408(a1 + v11, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v10;
LABEL_6:
    sub_21C7190C0(v12, type metadata accessor for PMAccount.Storage);
    result = sub_21C7190C0(a1, type metadata accessor for PMAccount);
    v18 = 0;
LABEL_7:
    v16 = 0;
    v19 = 0;
    v20 = 0;
    v14 = 0;
LABEL_9:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_10;
  }

  v13 = *v10;
  v14 = [v13 recoveryKeySerialNumber];

  if (!v14)
  {
    result = sub_21C7190C0(a1, type metadata accessor for PMAccount);
    v18 = 0;
    v16 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  v38 = sub_21CB855C4();
  v16 = v15;

  sub_21C7B7408(a1 + v11, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = v8;
    goto LABEL_6;
  }

  v25 = *v8;
  v18 = [v25 fileVaultRecoveryKeyDeviceInfo];

  if (!v18)
  {
    sub_21C7190C0(a1, type metadata accessor for PMAccount);

    goto LABEL_7;
  }

  v26 = [v18 model];
  v19 = sub_21CB855C4();
  v20 = v27;

  v28 = [v18 variant];
  if (v28)
  {
    v29 = v28;
    v14 = sub_21CB855C4();
    v21 = v30;
  }

  else
  {
    v14 = 0;
    v21 = 0;
  }

  v36 = v18;
  v31 = [v18 deviceTypeIdentifier];
  v22 = sub_21CB855C4();
  v23 = v32;

  v37 = [objc_opt_self() currentDevice];
  v33 = [v37 serialNumber];

  v35 = sub_21CB855C4();
  v37 = v34;

  v18 = v38;
  if (v38 == v35 && v16 == v37)
  {
    LODWORD(v35) = 1;
  }

  else
  {
    LODWORD(v35) = sub_21CB86344();
  }

  result = sub_21C7190C0(a1, type metadata accessor for PMAccount);
  v24 = v35 & 1;
LABEL_10:
  *a2 = v18;
  *(a2 + 8) = v16;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v14;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 64) = v24;
  return result;
}