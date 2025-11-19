uint64_t sub_21C7B6D08@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_21C7B72F8();
    sub_21CB810D4();

    v5 = v3[3];
    v4 = v3[4];
    v6 = v3[7];
    v7 = qword_27CDEA4C0;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v6, v3);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (v4)
    {
      MEMORY[0x28223BE20](v8);

      sub_21C968D04(sub_21C7AE738, v3, a1);

      return swift_bridgeObjectRelease_n();
    }

    else
    {

      v11 = type metadata accessor for PMAccount(0);
      (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }
  }

  else
  {
    v10 = type metadata accessor for PMAccount(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_21C7B6F90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C725C54(a1, v5);
    v7 = type metadata accessor for PMAccount(0);
    if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
    {
      sub_21C7B7380(v5);
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = *v5;
      v9 = v5[1];

      sub_21C7190C0(v5, type metadata accessor for PMAccount);
    }

    sub_21C7B57D0(v8, v9);
  }

  return result;
}

uint64_t sub_21C7B70D4(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_21C7B72F8();
    sub_21CB810D4();

    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v5 + 24) == *a1 && v6 == a1[1];
      if (v7 || (sub_21CB86344() & 1) != 0)
      {
        v9 = *a2;
        v8 = a2[1];

        sub_21C7B57D0(v9, v8);
      }
    }
  }

  return result;
}

uint64_t sub_21C7B71C0()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(v0 + 7);

  v6 = OBJC_IVAR____TtC17PasswordManagerUI23PMAppTOTPMigrationModel___observationRegistrar;
  v7 = sub_21CB81114();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_21C7B7294()
{
  result = qword_27CDEAF98;
  if (!qword_27CDEAF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAF90, &qword_21CBA77E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAF98);
  }

  return result;
}

unint64_t sub_21C7B72F8()
{
  result = qword_27CDEB150;
  if (!qword_27CDEB150)
  {
    type metadata accessor for PMAppTOTPMigrationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB150);
  }

  return result;
}

uint64_t sub_21C7B7368@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21C7B6D08(a1);
}

uint64_t sub_21C7B7374(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21C7B6F90(a1);
}

uint64_t sub_21C7B7380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7B7408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7B746C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C7B6870(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21C7B7534()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_21C7B7570()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_21C7B75B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_21C7B7660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C7B8934(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

uint64_t sub_21C7B770C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C7B5320(v4);
}

uint64_t sub_21C7B7738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C7B8934(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel);
  sub_21CB810D4();

  *a2 = *(v3 + 40);
}

uint64_t sub_21C7B77E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C7B8934(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel);
  sub_21CB810C4();
}

uint64_t sub_21C7B78B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v39 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  v41 = *(v46 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v40 = v39 - v7;
  v8 = type metadata accessor for PMAppTOTPMigrationView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v39 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB188, &unk_21CBA1370);
  v44 = *(v42 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  v47 = v39 - v19;
  sub_21CB85084();
  v20 = v54;
  swift_getKeyPath();
  v54 = v20;
  sub_21C7B8934(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel);
  sub_21CB810D4();

  v21 = *(v20 + 2);

  sub_21C7B88CC(a1, v17, type metadata accessor for PMAppTOTPMigrationView);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v39[3] = v23;
  sub_21C7B86C0(v17, v23 + v22);
  sub_21C7B88CC(a1, v15, type metadata accessor for PMAppTOTPMigrationView);
  v24 = swift_allocObject();
  v39[2] = v24;
  sub_21C7B86C0(v15, v24 + v22);
  v39[4] = a1;
  sub_21C7B88CC(a1, v12, type metadata accessor for PMAppTOTPMigrationView);
  v25 = swift_allocObject();
  sub_21C7B86C0(v12, v25 + v22);
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21C7B8934(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel);
  v26 = sub_21CB82674();
  v39[1] = v27;
  v54 = sub_21C7B8724;
  v55 = v23;
  v56 = sub_21C7B8794;
  v57 = v24;
  v58 = sub_21C7B8804;
  v59 = v25;
  v60 = v26;
  v61 = v27;
  v28 = v40;
  v29 = v46;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v41 + 8))(v28, v29);
  v48 = v51;
  v49 = v52;
  v50 = v53;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB190, &qword_21CBA1380);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB198, &qword_21CBA1388);
  v32 = sub_21C7B1DC8();
  v33 = sub_21C6EADEC(&qword_27CDEB1A0, &qword_27CDEB190, &qword_21CBA1380);
  v34 = sub_21C71FA88();
  sub_21CB847C4();

  sub_21CB85084();
  v35 = v43;
  sub_21C7B6BA4();

  type metadata accessor for PMAccount(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBFD0, &unk_21CBA39B0);
  v54 = &type metadata for PMTOTPMigrationView;
  v55 = v30;
  v56 = v31;
  v57 = v32;
  v58 = v33;
  v59 = v34;
  swift_getOpaqueTypeConformance2();
  sub_21C7B8934(&qword_27CDEB1C8, type metadata accessor for PMAccount);
  sub_21C7B85D8();
  v36 = v42;
  v37 = v47;
  sub_21CB84574();
  sub_21C7B8864(v35);
  return (*(v44 + 8))(v37, v36);
}

uint64_t sub_21C7B7FB4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  sub_21CB85084();
  sub_21C7B5AD8(a1);
}

uint64_t sub_21C7B8010(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  sub_21CB85084();
  sub_21C7B5C2C(a1);
}

uint64_t sub_21C7B806C(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_21CB823B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAppTOTPMigrationView();
  sub_21C7B8998(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21CB823A4();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21C7B82E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PMAccountPickerModel();
  sub_21C7B8934(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel);

  v4 = sub_21CB82674();
  v6 = v5;
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_21C7B8384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C7B88CC(a1, a2, type metadata accessor for PMAccount);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBFD0, &unk_21CBA39B0);
  v5 = a2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_21C7B83F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB180, &qword_21CBA1368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB188, &unk_21CBA1370);
  type metadata accessor for PMAccount(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBFD0, &unk_21CBA39B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB190, &qword_21CBA1380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB198, &qword_21CBA1388);
  sub_21C7B1DC8();
  sub_21C6EADEC(&qword_27CDEB1A0, &qword_27CDEB190, &qword_21CBA1380);
  sub_21C71FA88();
  swift_getOpaqueTypeConformance2();
  sub_21C7B8934(&qword_27CDEB1C8, type metadata accessor for PMAccount);
  sub_21C7B85D8();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21C7B85D8()
{
  result = qword_27CDEB1D0;
  if (!qword_27CDEB1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBFD0, &unk_21CBA39B0);
    sub_21C7B8934(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView);
    sub_21C6EADEC(&unk_27CDEBFE0, &qword_27CDEB1E0, &unk_21CBA5270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB1D0);
  }

  return result;
}

uint64_t sub_21C7B86C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppTOTPMigrationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7B8724(uint64_t *a1)
{
  v2 = *(*(type metadata accessor for PMAppTOTPMigrationView() - 8) + 80);

  return sub_21C7B7FB4(a1);
}

uint64_t sub_21C7B8794(void *a1)
{
  v2 = *(*(type metadata accessor for PMAppTOTPMigrationView() - 8) + 80);

  return sub_21C7B8010(a1);
}

uint64_t sub_21C7B8804()
{
  v1 = *(type metadata accessor for PMAppTOTPMigrationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C7B806C(v2);
}

uint64_t sub_21C7B8864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7B88CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7B8934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7B8998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7B8A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21C7B8A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C7B8AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CB830D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21C7B8D48(a1, a2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  sub_21CB85034();
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB218, &qword_21CBA14F0) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB220, &qword_21CBA14F8) + 28);
  v13 = sub_21CB84004();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *v11 = swift_getKeyPath();
  sub_21CB830B4();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB228, &qword_21CBA1530) + 36);
  (*(v7 + 16))(a3 + v14, v10, v6);
  v15 = *(v7 + 56);
  v15((a3 + v14), 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB230, &qword_21CBA1568) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v7 + 32))(v17 + v18, v10, v6);
  result = v15(v17 + v18, 0, 1, v6);
  *v17 = KeyPath;
  return result;
}

__n128 sub_21C7B8D48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v17 = a1;
  *(&v17 + 1) = a2;
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83D64();
  v9 = sub_21CB84024();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_21C74A72C(v4, v6, v8 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 96) = v21;
  *(a3 + 112) = v22;
  *(a3 + 128) = v23;
  *(a3 + 32) = v17;
  *(a3 + 48) = v18;
  result = v20;
  *(a3 + 64) = v19;
  *(a3 + 80) = v20;
  return result;
}

unint64_t sub_21C7B8EA4()
{
  result = qword_27CDEB210;
  if (!qword_27CDEB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB208, &unk_21CBB3F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB210);
  }

  return result;
}

uint64_t sub_21C7B8F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB240, &qword_21CBA1578);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C7B8FDC(a1, &v6 - v4);
  return sub_21CB82F04();
}

uint64_t sub_21C7B8FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB240, &qword_21CBA1578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C7B904C()
{
  result = qword_27CDEB248;
  if (!qword_27CDEB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB230, &qword_21CBA1568);
    sub_21C7B9104();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB248);
  }

  return result;
}

unint64_t sub_21C7B9104()
{
  result = qword_27CDEB250;
  if (!qword_27CDEB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB228, &qword_21CBA1530);
    sub_21C7B91BC();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB250);
  }

  return result;
}

unint64_t sub_21C7B91BC()
{
  result = qword_27CDEB258;
  if (!qword_27CDEB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB218, &qword_21CBA14F0);
    sub_21C7B9274();
    sub_21C6EADEC(&qword_27CDEB270, &qword_27CDEB220, &qword_21CBA14F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB258);
  }

  return result;
}

unint64_t sub_21C7B9274()
{
  result = qword_27CDEB260;
  if (!qword_27CDEB260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB268, &unk_21CBA1580);
    sub_21C7B8EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB260);
  }

  return result;
}

int *sub_21C7B9304@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedManager];
  v56 = v2;
  v16 = [v15 groupMemberDataForGroup_];

  sub_21C7B9798();
  v17 = sub_21CB85824();

  if (v17 >> 62)
  {
    v18 = sub_21CB85FA4();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v12;
  v55 = v11;
  v52 = v5;
  if (v18)
  {
    v57 = MEMORY[0x277D84F90];
    result = sub_21C7B10A0(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v49 = v4;
    v50 = a1;
    v20 = 0;
    v21 = v57;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CF15BD0](v20, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v20 + 32);
      }

      v23 = v22;
      sub_21C9DCC64(v22, v58);

      v57 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21C7B10A0((v24 > 1), v25 + 1, 1);
        v21 = v57;
      }

      ++v20;
      *(v21 + 16) = v25 + 1;
      v26 = (v21 + 112 * v25);
      v27 = v58[0];
      v28 = v58[2];
      v26[3] = v58[1];
      v26[4] = v28;
      v26[2] = v27;
      v29 = v58[3];
      v30 = v58[4];
      v31 = v58[6];
      v26[7] = v58[5];
      v26[8] = v31;
      v26[5] = v29;
      v26[6] = v30;
    }

    while (v18 != v20);

    a1 = v50;
    v4 = v49;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v32 = v56;
  v33 = [v56 groupID];
  sub_21CB855C4();

  v34 = v53;
  sub_21CB85B54();
  v35 = [v32 displayName];
  if (v35)
  {
    v36 = v35;
    v37 = sub_21CB855C4();
    v39 = v38;
  }

  else
  {
    sub_21CB81014();
    v40 = v51;
    sub_21CB81014();
    v37 = sub_21CB80FF4();
    v39 = v41;
    v42 = *(v52 + 8);
    v42(v40, v4);
    v42(v10, v4);
    v32 = v56;
  }

  v43 = [v32 as_groupMemberTableViewCellDescription];
  v44 = sub_21CB855C4();
  v46 = v45;

  (*(v54 + 32))(a1, v34, v55);
  result = type metadata accessor for PMSharingGroup();
  v47 = (a1 + result[5]);
  *v47 = v37;
  v47[1] = v39;
  *(a1 + result[6]) = v21;
  v48 = (a1 + result[7]);
  *v48 = v44;
  v48[1] = v46;
  return result;
}

unint64_t sub_21C7B9798()
{
  result = qword_27CDEE440;
  if (!qword_27CDEE440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEE440);
  }

  return result;
}

uint64_t sub_21C7B9970(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_21C7C0050();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_21CB85594();

  return v10;
}

uint64_t sub_21C7B9CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_21C7C0050();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_21CB85594();

  return v10;
}

uint64_t sub_21C7BA054(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_21C7C0050();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_21CB85594();

  return v10;
}

uint64_t sub_21C7BA56C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7BA73C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7BA9C0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7BAE10()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7BB034()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_21C7BB134()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  v5 = sub_21CB85584();

  return v5;
}

uint64_t sub_21C7BB25C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_21C7BB35C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  v5 = sub_21CB85584();

  return v5;
}

uint64_t sub_21C7BB484()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7BB728()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_21C7BB828()
{
  sub_21C7C2E34();
  v0 = sub_21CB85584();

  return v0;
}

uint64_t sub_21C7BB994()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7BBBB8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7BBDDC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7BBEDC(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    [v5 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BC180(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    [v5 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BC424(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    [v5 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BC6C8(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    [v5 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BC96C(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    [v5 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BCC10(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    [v5 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BCEB4(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    [v5 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BD158(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    [v5 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

id OngoingCredentialSharingAlertConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OngoingCredentialSharingAlertConfiguration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingCredentialSharingAlertConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OngoingCredentialSharingAlertConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingCredentialSharingAlertConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21C7BD554(void *a1, void *a2)
{
  v346 = a1;
  v3 = sub_21CB81024();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v342 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedManager];
  v345 = a2;
  v9 = [v8 groupMemberDataForGroup_];

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v10 = sub_21CB85824();

  v347 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
  {
    v342 = v7;
    v343 = v3;
    v344 = v4;
    v7 = 0;
    v4 = v10 & 0xC000000000000001;
    v3 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
    while (1)
    {
      if (v4)
      {
        v13 = MEMORY[0x21CF15BD0](v7, v10);
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v13 = *(v10 + 8 * v7 + 32);
      }

      v14 = v13;
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v13 isMeParticipant])
      {
      }

      else
      {
        sub_21CB86134();
        v12 = *(v347 + 16);
        sub_21CB86164();
        sub_21CB86174();
        sub_21CB86144();
      }

      ++v7;
      if (v15 == i)
      {
        v16 = v347;
        v3 = v343;
        v4 = v344;
        v7 = v342;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_18:

  v17 = [v346 credentialTypes];
  if (v17 > 3)
  {
    if ((v17 - 8) < 2)
    {
      v22 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
      if (v22)
      {
        v23 = sub_21CB85FA4();
        if (v23 <= 1)
        {
LABEL_37:
          if (!v23)
          {
            goto LABEL_210;
          }

          if (v23 == 1)
          {
            sub_21CB81014();
            v10 = sub_21CB81004();
            (*(v4 + 8))(v7, v3);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_21CBA15B0;
            if (v22)
            {
              v24 = sub_21CB85FA4();
            }

            else
            {
              v24 = *(v16 + 16);
            }

            if (!v24)
            {
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
              goto LABEL_364;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
LABEL_364:
              v45 = MEMORY[0x21CF15BD0](0, v16);
LABEL_88:
              v46 = v45;

              v47 = [v46 displayName];

              v48 = sub_21CB855C4();
              v50 = v49;

              v42 = MEMORY[0x277D837D0];
              *(v20 + 56) = MEMORY[0x277D837D0];
              v43 = sub_21C7C0050();
              *(v20 + 64) = v43;
              *(v20 + 32) = v48;
              *(v20 + 40) = v50;
              v44 = [v345 displayName];
              if (v44)
              {
                goto LABEL_110;
              }

              goto LABEL_118;
            }

            if (*(v16 + 16))
            {
              v45 = *(v16 + 32);
              goto LABEL_88;
            }

            __break(1u);
            goto LABEL_368;
          }

          goto LABEL_126;
        }
      }

      else
      {
        v23 = *(v16 + 16);
        if (v23 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v23 == 2)
      {
        sub_21CB81014();
        v88 = sub_21CB81004();
        (*(v4 + 8))(v7, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_21CBA15A0;
        if (v22)
        {
          v89 = sub_21CB85FA4();
        }

        else
        {
          v89 = *(v16 + 16);
        }

        if (!v89)
        {
          goto LABEL_363;
        }

        v10 = v16 & 0xC000000000000001;
        v346 = v88;
        if ((v16 & 0xC000000000000001) != 0)
        {
          v99 = MEMORY[0x21CF15BD0](0, v16);
        }

        else
        {
          if (!*(v16 + 16))
          {
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
            goto LABEL_374;
          }

          v99 = *(v16 + 32);
        }

        v100 = v99;
        v101 = [v99 displayName];

        v102 = sub_21CB855C4();
        v104 = v103;

        v105 = MEMORY[0x277D837D0];
        *(v20 + 56) = MEMORY[0x277D837D0];
        v106 = sub_21C7C0050();
        *(v20 + 64) = v106;
        *(v20 + 32) = v102;
        *(v20 + 40) = v104;
        if (v10)
        {
          v107 = MEMORY[0x21CF15BD0](1, v16);
        }

        else
        {
          if (*(v16 + 16) < 2uLL)
          {
LABEL_419:
            __break(1u);
            goto LABEL_420;
          }

          v107 = *(v16 + 40);
        }

        v116 = v107;

        v117 = [v116 displayName];

        v118 = sub_21CB855C4();
        v120 = v119;

        *(v20 + 96) = v105;
        *(v20 + 104) = v106;
        *(v20 + 72) = v118;
        *(v20 + 80) = v120;
        v121 = [v345 displayName];
        if (!v121)
        {
          goto LABEL_349;
        }

        goto LABEL_340;
      }

      if (v23 == 3)
      {
        sub_21CB81014();
        v80 = sub_21CB81004();
        (*(v4 + 8))(v7, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_21CBA1590;
        if (v22)
        {
          v81 = sub_21CB85FA4();
        }

        else
        {
          v81 = *(v16 + 16);
        }

        if (!v81)
        {
          goto LABEL_362;
        }

        v10 = v16 & 0xC000000000000001;
        v346 = v80;
        if ((v16 & 0xC000000000000001) != 0)
        {
          v90 = MEMORY[0x21CF15BD0](0, v16);
        }

        else
        {
          if (!*(v16 + 16))
          {
LABEL_368:
            __break(1u);
            goto LABEL_369;
          }

          v90 = *(v16 + 32);
        }

        v91 = v90;
        v92 = [v90 displayName];

        v93 = sub_21CB855C4();
        v95 = v94;

        v96 = MEMORY[0x277D837D0];
        *(v20 + 56) = MEMORY[0x277D837D0];
        v97 = sub_21C7C0050();
        *(v20 + 64) = v97;
        *(v20 + 32) = v93;
        *(v20 + 40) = v95;
        if (v10)
        {
          v98 = MEMORY[0x21CF15BD0](1, v16);
        }

        else
        {
          if (*(v16 + 16) < 2uLL)
          {
LABEL_418:
            __break(1u);
            goto LABEL_419;
          }

          v98 = *(v16 + 40);
        }

        v110 = v98;
        v111 = [v98 displayName];

        v112 = sub_21CB855C4();
        v114 = v113;

        *(v20 + 96) = v96;
        *(v20 + 104) = v97;
        *(v20 + 72) = v112;
        *(v20 + 80) = v114;
        if (v10)
        {
          v115 = MEMORY[0x21CF15BD0](2, v16);
        }

        else
        {
          if (*(v16 + 16) < 3uLL)
          {
LABEL_420:
            __break(1u);
            goto LABEL_421;
          }

          v115 = *(v16 + 48);
        }

        v122 = v115;

        v123 = [v122 displayName];

        v124 = sub_21CB855C4();
        v126 = v125;

        *(v20 + 136) = v96;
        *(v20 + 144) = v97;
        *(v20 + 112) = v124;
        *(v20 + 120) = v126;
        v127 = [v345 displayName];
        if (!v127)
        {
          goto LABEL_354;
        }

        goto LABEL_256;
      }

LABEL_126:

      sub_21CB81014();
      sub_21CB81004();
      (*(v4 + 8))(v7, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_21CBA0690;
      v83 = [v345 displayName];
      if (v83)
      {
        v84 = v83;
        v85 = sub_21CB855C4();
        v87 = v86;
      }

      else
      {
        v85 = 0;
        v87 = 0;
      }

      *(v82 + 56) = MEMORY[0x277D837D0];
      *(v82 + 64) = sub_21C7C0050();
      if (v87)
      {
        v108 = v85;
      }

      else
      {
        v108 = 0;
      }

      v109 = 0xE000000000000000;
      if (v87)
      {
        v109 = v87;
      }

      *(v82 + 32) = v108;
      *(v82 + 40) = v109;
      goto LABEL_357;
    }

    if (v17 != 4)
    {
      goto LABEL_60;
    }

    v25 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
    if (v25)
    {
      v26 = sub_21CB85FA4();
      if (v26 <= 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v26 = *(v16 + 16);
      if (v26 <= 1)
      {
LABEL_47:
        if (!v26)
        {
          goto LABEL_210;
        }

        if (v26 == 1)
        {
          sub_21CB81014();
          v10 = sub_21CB81004();
          (*(v4 + 8))(v7, v3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_21CBA15B0;
          if (v25)
          {
            v27 = sub_21CB85FA4();
          }

          else
          {
            v27 = *(v16 + 16);
          }

          if (v27)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v57 = MEMORY[0x21CF15BD0](0, v16);
            }

            else
            {
              if (!*(v16 + 16))
              {
LABEL_409:
                __break(1u);
                goto LABEL_410;
              }

              v57 = *(v16 + 32);
            }

            v58 = v57;

            v59 = [v58 displayName];

            v60 = sub_21CB855C4();
            v62 = v61;

            v42 = MEMORY[0x277D837D0];
            *(v20 + 56) = MEMORY[0x277D837D0];
            v43 = sub_21C7C0050();
            *(v20 + 64) = v43;
            *(v20 + 32) = v60;
            *(v20 + 40) = v62;
            v44 = [v345 displayName];
            if (v44)
            {
              goto LABEL_110;
            }

            goto LABEL_118;
          }

          goto LABEL_377;
        }

        goto LABEL_216;
      }
    }

    if (v26 == 2)
    {
      sub_21CB81014();
      v181 = sub_21CB81004();
      (*(v4 + 8))(v7, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21CBA15A0;
      if (v25)
      {
        v182 = sub_21CB85FA4();
      }

      else
      {
        v182 = *(v16 + 16);
      }

      if (!v182)
      {
        goto LABEL_379;
      }

      v346 = v181;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v198 = MEMORY[0x21CF15BD0](0, v16);
      }

      else
      {
        if (!*(v16 + 16))
        {
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
          goto LABEL_413;
        }

        v198 = *(v16 + 32);
      }

      v199 = v198;
      v200 = [v198 displayName];

      v201 = sub_21CB855C4();
      v203 = v202;

      v105 = MEMORY[0x277D837D0];
      *(v20 + 56) = MEMORY[0x277D837D0];
      v106 = sub_21C7C0050();
      *(v20 + 64) = v106;
      *(v20 + 32) = v201;
      *(v20 + 40) = v203;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v204 = MEMORY[0x21CF15BD0](1, v16);
      }

      else
      {
        if (*(v16 + 16) < 2uLL)
        {
LABEL_428:
          __break(1u);
          goto LABEL_429;
        }

        v204 = *(v16 + 40);
      }

      v216 = v204;

      v217 = [v216 displayName];

      v218 = sub_21CB855C4();
      v220 = v219;

      *(v20 + 96) = v105;
      *(v20 + 104) = v106;
      *(v20 + 72) = v218;
      *(v20 + 80) = v220;
      v121 = [v345 displayName];
      if (v121)
      {
        goto LABEL_340;
      }

      goto LABEL_349;
    }

    if (v26 == 3)
    {
      sub_21CB81014();
      v177 = sub_21CB81004();
      (*(v4 + 8))(v7, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21CBA1590;
      if (v25)
      {
        v178 = sub_21CB85FA4();
      }

      else
      {
        v178 = *(v16 + 16);
      }

      if (!v178)
      {
        goto LABEL_378;
      }

      v190 = v16 & 0xC000000000000001;
      v346 = v177;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v191 = MEMORY[0x21CF15BD0](0, v16);
      }

      else
      {
        if (!*(v16 + 16))
        {
LABEL_410:
          __break(1u);
          goto LABEL_411;
        }

        v191 = *(v16 + 32);
      }

      v192 = v191;
      v193 = [v191 displayName];

      v194 = sub_21CB855C4();
      v196 = v195;

      v96 = MEMORY[0x277D837D0];
      *(v20 + 56) = MEMORY[0x277D837D0];
      v97 = sub_21C7C0050();
      *(v20 + 64) = v97;
      *(v20 + 32) = v194;
      *(v20 + 40) = v196;
      if (v190)
      {
        v197 = MEMORY[0x21CF15BD0](1, v16);
      }

      else
      {
        if (*(v16 + 16) < 2uLL)
        {
LABEL_427:
          __break(1u);
          goto LABEL_428;
        }

        v197 = *(v16 + 40);
      }

      v210 = v197;
      v211 = [v197 displayName];

      v212 = sub_21CB855C4();
      v214 = v213;

      *(v20 + 96) = v96;
      *(v20 + 104) = v97;
      *(v20 + 72) = v212;
      *(v20 + 80) = v214;
      if (v190)
      {
        v215 = MEMORY[0x21CF15BD0](2, v16);
      }

      else
      {
        if (*(v16 + 16) < 3uLL)
        {
LABEL_434:
          __break(1u);
          goto LABEL_435;
        }

        v215 = *(v16 + 48);
      }

      v221 = v215;

      v222 = [v221 displayName];

      v223 = sub_21CB855C4();
      v225 = v224;

      *(v20 + 136) = v96;
      *(v20 + 144) = v97;
      *(v20 + 112) = v223;
      *(v20 + 120) = v225;
      v127 = [v345 displayName];
      if (!v127)
      {
        goto LABEL_354;
      }

      goto LABEL_256;
    }

LABEL_216:
    sub_21CB81014();
    v179 = sub_21CB81004();
    (*(v4 + 8))(v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21CBA15A0;
    if (v25)
    {
      v180 = sub_21CB85FA4();
    }

    else
    {
      v180 = *(v16 + 16);
    }

    if (v180)
    {
      v346 = v179;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v183 = MEMORY[0x21CF15BD0](0, v16);
      }

      else
      {
        if (!*(v16 + 16))
        {
LABEL_405:
          __break(1u);
          goto LABEL_406;
        }

        v183 = *(v16 + 32);
      }

      v184 = v183;
      v185 = [v183 displayName];

      v186 = sub_21CB855C4();
      v188 = v187;

      v105 = MEMORY[0x277D837D0];
      *(v20 + 56) = MEMORY[0x277D837D0];
      v106 = sub_21C7C0050();
      *(v20 + 64) = v106;
      *(v20 + 32) = v186;
      *(v20 + 40) = v188;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v189 = MEMORY[0x21CF15BD0](1, v16);
      }

      else
      {
        if (*(v16 + 16) < 2uLL)
        {
LABEL_424:
          __break(1u);
          goto LABEL_425;
        }

        v189 = *(v16 + 40);
      }

      v205 = v189;

      v206 = [v205 displayName];

      v207 = sub_21CB855C4();
      v209 = v208;

      *(v20 + 96) = v105;
      *(v20 + 104) = v106;
      *(v20 + 72) = v207;
      *(v20 + 80) = v209;
      v121 = [v345 displayName];
      if (v121)
      {
        goto LABEL_340;
      }

      goto LABEL_349;
    }

    goto LABEL_373;
  }

  if (v17 == 1)
  {
    v28 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
    if (v28)
    {
      v29 = sub_21CB85FA4();
      if (v29 <= 1)
      {
LABEL_56:
        if (!v29)
        {
          goto LABEL_210;
        }

        if (v29 == 1)
        {
          sub_21CB81014();
          v10 = sub_21CB81004();
          (*(v4 + 8))(v7, v3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_21CBA15B0;
          if (v28)
          {
            v30 = sub_21CB85FA4();
          }

          else
          {
            v30 = *(v16 + 16);
          }

          if (v30)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v51 = MEMORY[0x21CF15BD0](0, v16);
LABEL_95:
              v52 = v51;

              v53 = [v52 displayName];

              v54 = sub_21CB855C4();
              v56 = v55;

              v42 = MEMORY[0x277D837D0];
              *(v20 + 56) = MEMORY[0x277D837D0];
              v43 = sub_21C7C0050();
              *(v20 + 64) = v43;
              *(v20 + 32) = v54;
              *(v20 + 40) = v56;
              v44 = [v345 displayName];
              if (v44)
              {
                goto LABEL_110;
              }

              goto LABEL_118;
            }

            if (*(v16 + 16))
            {
              v51 = *(v16 + 32);
              goto LABEL_95;
            }

            goto LABEL_403;
          }

          goto LABEL_371;
        }

        goto LABEL_168;
      }
    }

    else
    {
      v29 = *(v16 + 16);
      if (v29 <= 1)
      {
        goto LABEL_56;
      }
    }

    if (v29 == 2)
    {
      sub_21CB81014();
      v132 = sub_21CB81004();
      (*(v4 + 8))(v7, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21CBA15A0;
      if (v28)
      {
        v133 = sub_21CB85FA4();
      }

      else
      {
        v133 = *(v16 + 16);
      }

      if (v133)
      {
        v346 = v132;
        if ((v16 & 0xC000000000000001) != 0)
        {
          v149 = MEMORY[0x21CF15BD0](0, v16);
        }

        else
        {
          if (!*(v16 + 16))
          {
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
            goto LABEL_408;
          }

          v149 = *(v16 + 32);
        }

        v150 = v149;
        v151 = [v149 displayName];

        v152 = sub_21CB855C4();
        v154 = v153;

        v105 = MEMORY[0x277D837D0];
        *(v20 + 56) = MEMORY[0x277D837D0];
        v106 = sub_21C7C0050();
        *(v20 + 64) = v106;
        *(v20 + 32) = v152;
        *(v20 + 40) = v154;
        if ((v16 & 0xC000000000000001) != 0)
        {
          v155 = MEMORY[0x21CF15BD0](1, v16);
        }

        else
        {
          if (*(v16 + 16) < 2uLL)
          {
LABEL_423:
            __break(1u);
            goto LABEL_424;
          }

          v155 = *(v16 + 40);
        }

        v167 = v155;

        v168 = [v167 displayName];

        v169 = sub_21CB855C4();
        v171 = v170;

        *(v20 + 96) = v105;
        *(v20 + 104) = v106;
        *(v20 + 72) = v169;
        *(v20 + 80) = v171;
        v121 = [v345 displayName];
        if (v121)
        {
          goto LABEL_340;
        }

        goto LABEL_349;
      }

LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
      goto LABEL_386;
    }

    if (v29 == 3)
    {
      sub_21CB81014();
      v128 = sub_21CB81004();
      (*(v4 + 8))(v7, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21CBA1590;
      if (v28)
      {
        v129 = sub_21CB85FA4();
      }

      else
      {
        v129 = *(v16 + 16);
      }

      if (v129)
      {
        v141 = v16 & 0xC000000000000001;
        v346 = v128;
        if ((v16 & 0xC000000000000001) != 0)
        {
          v142 = MEMORY[0x21CF15BD0](0, v16);
        }

        else
        {
          if (!*(v16 + 16))
          {
LABEL_404:
            __break(1u);
            goto LABEL_405;
          }

          v142 = *(v16 + 32);
        }

        v143 = v142;
        v144 = [v142 displayName];

        v145 = sub_21CB855C4();
        v147 = v146;

        v96 = MEMORY[0x277D837D0];
        *(v20 + 56) = MEMORY[0x277D837D0];
        v97 = sub_21C7C0050();
        *(v20 + 64) = v97;
        *(v20 + 32) = v145;
        *(v20 + 40) = v147;
        if (v141)
        {
          v148 = MEMORY[0x21CF15BD0](1, v16);
        }

        else
        {
          if (*(v16 + 16) < 2uLL)
          {
LABEL_422:
            __break(1u);
            goto LABEL_423;
          }

          v148 = *(v16 + 40);
        }

        v161 = v148;
        v162 = [v148 displayName];

        v163 = sub_21CB855C4();
        v165 = v164;

        *(v20 + 96) = v96;
        *(v20 + 104) = v97;
        *(v20 + 72) = v163;
        *(v20 + 80) = v165;
        if (v141)
        {
          v166 = MEMORY[0x21CF15BD0](2, v16);
        }

        else
        {
          if (*(v16 + 16) < 3uLL)
          {
LABEL_433:
            __break(1u);
            goto LABEL_434;
          }

          v166 = *(v16 + 48);
        }

        v172 = v166;

        v173 = [v172 displayName];

        v174 = sub_21CB855C4();
        v176 = v175;

        *(v20 + 136) = v96;
        *(v20 + 144) = v97;
        *(v20 + 112) = v174;
        *(v20 + 120) = v176;
        v127 = [v345 displayName];
        if (!v127)
        {
          goto LABEL_354;
        }

        goto LABEL_256;
      }

      goto LABEL_372;
    }

LABEL_168:
    sub_21CB81014();
    v130 = sub_21CB81004();
    (*(v4 + 8))(v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21CBA15A0;
    if (v28)
    {
      v131 = sub_21CB85FA4();
    }

    else
    {
      v131 = *(v16 + 16);
    }

    if (v131)
    {
      v10 = v16 & 0xC000000000000001;
      v346 = v130;
      if ((v16 & 0xC000000000000001) != 0)
      {
LABEL_386:
        v134 = MEMORY[0x21CF15BD0](0, v16);
LABEL_177:
        v135 = v134;
        v136 = [v134 displayName];

        v137 = sub_21CB855C4();
        v139 = v138;

        v105 = MEMORY[0x277D837D0];
        *(v20 + 56) = MEMORY[0x277D837D0];
        v106 = sub_21C7C0050();
        *(v20 + 64) = v106;
        *(v20 + 32) = v137;
        *(v20 + 40) = v139;
        if (v10)
        {
          v140 = MEMORY[0x21CF15BD0](1, v16);
        }

        else
        {
          if (*(v16 + 16) < 2uLL)
          {
LABEL_421:
            __break(1u);
            goto LABEL_422;
          }

          v140 = *(v16 + 40);
        }

        v156 = v140;

        v157 = [v156 displayName];

        v158 = sub_21CB855C4();
        v160 = v159;

        *(v20 + 96) = v105;
        *(v20 + 104) = v106;
        *(v20 + 72) = v158;
        *(v20 + 80) = v160;
        v121 = [v345 displayName];
        if (!v121)
        {
          goto LABEL_349;
        }

LABEL_340:
        v321 = v121;
        v322 = sub_21CB855C4();
        v324 = v323;

        v325 = (v20 + 112);
        *(v20 + 136) = v105;
        *(v20 + 144) = v106;
        if (v324)
        {
          *v325 = v322;
          *(v20 + 120) = v324;
          goto LABEL_357;
        }

LABEL_350:
        *v325 = 0;
        *(v20 + 120) = 0xE000000000000000;
        goto LABEL_357;
      }

      if (*(v16 + 16))
      {
        v134 = *(v16 + 32);
        goto LABEL_177;
      }

      __break(1u);
LABEL_403:
      __break(1u);
      goto LABEL_404;
    }

    goto LABEL_370;
  }

  if (v17 != 2)
  {
    if (v17 == 3)
    {
      v18 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
      if (v18)
      {
        v19 = sub_21CB85FA4();
        if (v19 <= 1)
        {
LABEL_27:
          if (v19)
          {
            if (v19 == 1)
            {
              sub_21CB81014();
              v10 = sub_21CB81004();
              (*(v4 + 8))(v7, v3);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v20 = swift_allocObject();
              *(v20 + 16) = xmmword_21CBA15B0;
              if (v18)
              {
                v21 = sub_21CB85FA4();
              }

              else
              {
                v21 = *(v16 + 16);
              }

              if (v21)
              {
                if ((v16 & 0xC000000000000001) != 0)
                {
                  v63 = MEMORY[0x21CF15BD0](0, v16);
LABEL_109:
                  v64 = v63;

                  v65 = [v64 displayName];

                  v66 = sub_21CB855C4();
                  v68 = v67;

                  v42 = MEMORY[0x277D837D0];
                  *(v20 + 56) = MEMORY[0x277D837D0];
                  v43 = sub_21C7C0050();
                  *(v20 + 64) = v43;
                  *(v20 + 32) = v66;
                  *(v20 + 40) = v68;
                  v44 = [v345 displayName];
                  if (v44)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_118;
                }

                if (*(v16 + 16))
                {
                  v63 = *(v16 + 32);
                  goto LABEL_109;
                }

                goto LABEL_412;
              }

              goto LABEL_380;
            }

LABEL_263:
            sub_21CB81014();
            v233 = sub_21CB81004();
            (*(v4 + 8))(v7, v3);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_21CBA15A0;
            if (v18)
            {
              v234 = sub_21CB85FA4();
            }

            else
            {
              v234 = *(v16 + 16);
            }

            if (v234)
            {
              v346 = v233;
              if ((v16 & 0xC000000000000001) != 0)
              {
                v237 = MEMORY[0x21CF15BD0](0, v16);
LABEL_272:
                v238 = v237;
                v239 = [v237 displayName];

                v240 = sub_21CB855C4();
                v242 = v241;

                v105 = MEMORY[0x277D837D0];
                *(v20 + 56) = MEMORY[0x277D837D0];
                v106 = sub_21C7C0050();
                *(v20 + 64) = v106;
                *(v20 + 32) = v240;
                *(v20 + 40) = v242;
                if ((v16 & 0xC000000000000001) != 0)
                {
                  v243 = MEMORY[0x21CF15BD0](1, v16);
                }

                else
                {
                  if (*(v16 + 16) < 2uLL)
                  {
LABEL_425:
                    __break(1u);
                    goto LABEL_426;
                  }

                  v243 = *(v16 + 40);
                }

                v261 = v243;

                v262 = [v261 displayName];

                v263 = sub_21CB855C4();
                v265 = v264;

                *(v20 + 96) = v105;
                *(v20 + 104) = v106;
                *(v20 + 72) = v263;
                *(v20 + 80) = v265;
                v121 = [v345 displayName];
                if (v121)
                {
                  goto LABEL_340;
                }

                goto LABEL_349;
              }

              if (*(v16 + 16))
              {
                v237 = *(v16 + 32);
                goto LABEL_272;
              }

              goto LABEL_407;
            }

            goto LABEL_375;
          }

LABEL_210:

          return;
        }
      }

      else
      {
        v19 = *(v16 + 16);
        if (v19 <= 1)
        {
          goto LABEL_27;
        }
      }

      if (v19 == 2)
      {
        sub_21CB81014();
        v235 = sub_21CB81004();
        (*(v4 + 8))(v7, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_21CBA15A0;
        if (v18)
        {
          v236 = sub_21CB85FA4();
        }

        else
        {
          v236 = *(v16 + 16);
        }

        if (v236)
        {
          v346 = v235;
          if ((v16 & 0xC000000000000001) != 0)
          {
            v254 = MEMORY[0x21CF15BD0](0, v16);
          }

          else
          {
            if (!*(v16 + 16))
            {
LABEL_415:
              __break(1u);
              goto LABEL_416;
            }

            v254 = *(v16 + 32);
          }

          v255 = v254;
          v256 = [v254 displayName];

          v257 = sub_21CB855C4();
          v259 = v258;

          v105 = MEMORY[0x277D837D0];
          *(v20 + 56) = MEMORY[0x277D837D0];
          v106 = sub_21C7C0050();
          *(v20 + 64) = v106;
          *(v20 + 32) = v257;
          *(v20 + 40) = v259;
          if ((v16 & 0xC000000000000001) != 0)
          {
            v260 = MEMORY[0x21CF15BD0](1, v16);
          }

          else
          {
            if (*(v16 + 16) < 2uLL)
            {
LABEL_430:
              __break(1u);
              goto LABEL_431;
            }

            v260 = *(v16 + 40);
          }

          v272 = v260;

          v273 = [v272 displayName];

          v274 = sub_21CB855C4();
          v276 = v275;

          *(v20 + 96) = v105;
          *(v20 + 104) = v106;
          *(v20 + 72) = v274;
          *(v20 + 80) = v276;
          v121 = [v345 displayName];
          if (!v121)
          {
            goto LABEL_349;
          }

          goto LABEL_340;
        }

        goto LABEL_383;
      }

      if (v19 == 3)
      {
        sub_21CB81014();
        v231 = sub_21CB81004();
        (*(v4 + 8))(v7, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_21CBA1590;
        if (v18)
        {
          v232 = sub_21CB85FA4();
        }

        else
        {
          v232 = *(v16 + 16);
        }

        if (v232)
        {
          v244 = v16 & 0xC000000000000001;
          v346 = v231;
          if ((v16 & 0xC000000000000001) != 0)
          {
            v245 = MEMORY[0x21CF15BD0](0, v16);
          }

          else
          {
            if (!*(v16 + 16))
            {
LABEL_413:
              __break(1u);
              goto LABEL_414;
            }

            v245 = *(v16 + 32);
          }

          v246 = v245;
          v247 = [v245 displayName];

          v248 = sub_21CB855C4();
          v250 = v249;

          v251 = MEMORY[0x277D837D0];
          *(v20 + 56) = MEMORY[0x277D837D0];
          v252 = sub_21C7C0050();
          *(v20 + 64) = v252;
          *(v20 + 32) = v248;
          *(v20 + 40) = v250;
          if (v244)
          {
            v253 = MEMORY[0x21CF15BD0](1, v16);
          }

          else
          {
            if (*(v16 + 16) < 2uLL)
            {
LABEL_429:
              __break(1u);
              goto LABEL_430;
            }

            v253 = *(v16 + 40);
          }

          v266 = v253;
          v267 = [v253 displayName];

          v268 = sub_21CB855C4();
          v270 = v269;

          *(v20 + 96) = v251;
          *(v20 + 104) = v252;
          *(v20 + 72) = v268;
          *(v20 + 80) = v270;
          if (v244)
          {
            v271 = MEMORY[0x21CF15BD0](2, v16);
          }

          else
          {
            if (*(v16 + 16) < 3uLL)
            {
LABEL_435:
              __break(1u);
              goto LABEL_436;
            }

            v271 = *(v16 + 48);
          }

          v277 = v271;

          v278 = [v277 displayName];

          v279 = sub_21CB855C4();
          v281 = v280;

          *(v20 + 136) = v251;
          *(v20 + 144) = v252;
          *(v20 + 112) = v279;
          *(v20 + 120) = v281;
          v282 = [v345 displayName];
          if (v282)
          {
            v283 = v282;
            v284 = sub_21CB855C4();
            v286 = v285;

            v287 = (v20 + 152);
            *(v20 + 176) = v251;
            *(v20 + 184) = v252;
            if (v286)
            {
              *v287 = v284;
              *(v20 + 160) = v286;
              goto LABEL_357;
            }
          }

          else
          {
            v287 = (v20 + 152);
            *(v20 + 176) = v251;
            *(v20 + 184) = v252;
          }

          *v287 = 0;
          *(v20 + 160) = 0xE000000000000000;
          goto LABEL_357;
        }

        goto LABEL_381;
      }

      goto LABEL_263;
    }

LABEL_60:
    v31 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
    if (v31)
    {
      if (!sub_21CB85FA4())
      {
        goto LABEL_210;
      }
    }

    else if (!*(v16 + 16))
    {
      goto LABEL_210;
    }

    sub_21CB81014();
    sub_21CB81004();
    (*(v4 + 8))(v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21CBA15B0;
    if (v31)
    {
      v32 = sub_21CB85FA4();
    }

    else
    {
      v32 = *(v16 + 16);
    }

    if (v32)
    {
      if ((v16 & 0xC000000000000001) == 0)
      {
        if (*(v16 + 16))
        {
          v36 = *(v16 + 32);
          goto LABEL_81;
        }

        __break(1u);
        goto LABEL_361;
      }
    }

    else
    {
      __break(1u);
    }

    v36 = MEMORY[0x21CF15BD0](0, v16);
LABEL_81:
    v37 = v36;

    v38 = [v37 displayName];

    v39 = sub_21CB855C4();
    v41 = v40;

    v42 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v43 = sub_21C7C0050();
    *(v20 + 64) = v43;
    *(v20 + 32) = v39;
    *(v20 + 40) = v41;
    v44 = [v345 displayName];
    if (v44)
    {
      goto LABEL_110;
    }

    goto LABEL_118;
  }

  v33 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
  if (v33)
  {
    v34 = sub_21CB85FA4();
    if (v34 <= 1)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v34 = *(v16 + 16);
    if (v34 <= 1)
    {
LABEL_72:
      if (!v34)
      {
        goto LABEL_210;
      }

      if (v34 == 1)
      {
        sub_21CB81014();
        v10 = sub_21CB81004();
        (*(v4 + 8))(v7, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_21CBA15B0;
        if (v33)
        {
          v35 = sub_21CB85FA4();
        }

        else
        {
          v35 = *(v16 + 16);
        }

        if (v35)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v74 = MEMORY[0x21CF15BD0](0, v16);
          }

          else
          {
            if (!*(v16 + 16))
            {
LABEL_414:
              __break(1u);
              goto LABEL_415;
            }

            v74 = *(v16 + 32);
          }

          v75 = v74;

          v76 = [v75 displayName];

          v77 = sub_21CB855C4();
          v79 = v78;

          v42 = MEMORY[0x277D837D0];
          *(v20 + 56) = MEMORY[0x277D837D0];
          v43 = sub_21C7C0050();
          *(v20 + 64) = v43;
          *(v20 + 32) = v77;
          *(v20 + 40) = v79;
          v44 = [v345 displayName];
          if (v44)
          {
LABEL_110:
            v69 = v44;
            v70 = sub_21CB855C4();
            v72 = v71;

            v73 = (v20 + 72);
            *(v20 + 96) = v42;
            *(v20 + 104) = v43;
            if (v72)
            {
              *v73 = v70;
LABEL_120:
              *(v20 + 80) = v72;
LABEL_357:
              sub_21CB85594();

              return;
            }

LABEL_119:
            *v73 = 0;
            v72 = 0xE000000000000000;
            goto LABEL_120;
          }

LABEL_118:
          v73 = (v20 + 72);
          *(v20 + 96) = v42;
          *(v20 + 104) = v43;
          goto LABEL_119;
        }

        goto LABEL_382;
      }

      goto LABEL_312;
    }
  }

  if (v34 == 2)
  {
    sub_21CB81014();
    v292 = sub_21CB81004();
    (*(v4 + 8))(v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21CBA15A0;
    if (v33)
    {
      v293 = sub_21CB85FA4();
    }

    else
    {
      v293 = *(v16 + 16);
    }

    if (v293)
    {
      v346 = v292;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v309 = MEMORY[0x21CF15BD0](0, v16);
      }

      else
      {
        if (!*(v16 + 16))
        {
LABEL_417:
          __break(1u);
          goto LABEL_418;
        }

        v309 = *(v16 + 32);
      }

      v310 = v309;
      v311 = [v309 displayName];

      v312 = sub_21CB855C4();
      v314 = v313;

      v105 = MEMORY[0x277D837D0];
      *(v20 + 56) = MEMORY[0x277D837D0];
      v106 = sub_21C7C0050();
      *(v20 + 64) = v106;
      *(v20 + 32) = v312;
      *(v20 + 40) = v314;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v315 = MEMORY[0x21CF15BD0](1, v16);
      }

      else
      {
        if (*(v16 + 16) < 2uLL)
        {
LABEL_432:
          __break(1u);
          goto LABEL_433;
        }

        v315 = *(v16 + 40);
      }

      v332 = v315;

      v333 = [v332 displayName];

      v334 = sub_21CB855C4();
      v336 = v335;

      *(v20 + 96) = v105;
      *(v20 + 104) = v106;
      *(v20 + 72) = v334;
      *(v20 + 80) = v336;
      v121 = [v345 displayName];
      if (!v121)
      {
        goto LABEL_349;
      }

      goto LABEL_340;
    }

    goto LABEL_385;
  }

  if (v34 != 3)
  {
LABEL_312:
    sub_21CB81014();
    v290 = sub_21CB81004();
    (*(v4 + 8))(v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21CBA15A0;
    if (v33)
    {
      v291 = sub_21CB85FA4();
    }

    else
    {
      v291 = *(v16 + 16);
    }

    if (!v291)
    {
      goto LABEL_376;
    }

    v346 = v290;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v294 = MEMORY[0x21CF15BD0](0, v16);
    }

    else
    {
      if (!*(v16 + 16))
      {
LABEL_408:
        __break(1u);
        goto LABEL_409;
      }

      v294 = *(v16 + 32);
    }

    v295 = v294;
    v296 = [v294 displayName];

    v297 = sub_21CB855C4();
    v299 = v298;

    v105 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v106 = sub_21C7C0050();
    *(v20 + 64) = v106;
    *(v20 + 32) = v297;
    *(v20 + 40) = v299;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v300 = MEMORY[0x21CF15BD0](1, v16);
    }

    else
    {
      if (*(v16 + 16) < 2uLL)
      {
LABEL_426:
        __break(1u);
        goto LABEL_427;
      }

      v300 = *(v16 + 40);
    }

    v316 = v300;

    v317 = [v316 displayName];

    v318 = sub_21CB855C4();
    v320 = v319;

    *(v20 + 96) = v105;
    *(v20 + 104) = v106;
    *(v20 + 72) = v318;
    *(v20 + 80) = v320;
    v121 = [v345 displayName];
    if (v121)
    {
      goto LABEL_340;
    }

LABEL_349:
    v325 = (v20 + 112);
    *(v20 + 136) = v105;
    *(v20 + 144) = v106;
    goto LABEL_350;
  }

  sub_21CB81014();
  v288 = sub_21CB81004();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21CBA1590;
  if (v33)
  {
    v289 = sub_21CB85FA4();
  }

  else
  {
    v289 = *(v16 + 16);
  }

  if (!v289)
  {
    goto LABEL_384;
  }

  v301 = v16 & 0xC000000000000001;
  v346 = v288;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v302 = MEMORY[0x21CF15BD0](0, v16);
  }

  else
  {
    if (!*(v16 + 16))
    {
LABEL_416:
      __break(1u);
      goto LABEL_417;
    }

    v302 = *(v16 + 32);
  }

  v303 = v302;
  v304 = [v302 displayName];

  v305 = sub_21CB855C4();
  v307 = v306;

  v96 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v97 = sub_21C7C0050();
  *(v20 + 64) = v97;
  *(v20 + 32) = v305;
  *(v20 + 40) = v307;
  if (v301)
  {
    v308 = MEMORY[0x21CF15BD0](1, v16);
  }

  else
  {
    if (*(v16 + 16) < 2uLL)
    {
LABEL_431:
      __break(1u);
      goto LABEL_432;
    }

    v308 = *(v16 + 40);
  }

  v326 = v308;
  v327 = [v308 displayName];

  v328 = sub_21CB855C4();
  v330 = v329;

  *(v20 + 96) = v96;
  *(v20 + 104) = v97;
  *(v20 + 72) = v328;
  *(v20 + 80) = v330;
  if (v301)
  {
    v331 = MEMORY[0x21CF15BD0](2, v16);
    goto LABEL_353;
  }

  if (*(v16 + 16) >= 3uLL)
  {
    v331 = *(v16 + 48);
LABEL_353:
    v337 = v331;

    v338 = [v337 displayName];

    v339 = sub_21CB855C4();
    v341 = v340;

    *(v20 + 136) = v96;
    *(v20 + 144) = v97;
    *(v20 + 112) = v339;
    *(v20 + 120) = v341;
    v127 = [v345 displayName];
    if (!v127)
    {
LABEL_354:
      v230 = (v20 + 152);
      *(v20 + 176) = v96;
      *(v20 + 184) = v97;
      goto LABEL_355;
    }

LABEL_256:
    v226 = v127;
    v227 = sub_21CB855C4();
    v229 = v228;

    v230 = (v20 + 152);
    *(v20 + 176) = v96;
    *(v20 + 184) = v97;
    if (v229)
    {
      *v230 = v227;
LABEL_356:
      *(v20 + 160) = v229;
      goto LABEL_357;
    }

LABEL_355:
    *v230 = 0;
    v229 = 0xE000000000000000;
    goto LABEL_356;
  }

LABEL_436:
  __break(1u);
}

uint64_t sub_21C7BFCA4(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 credentialTypes] == 4)
  {
    return 0;
  }

  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_21C7BFE38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 credentialTypes];
  sub_21CB81014();
  sub_21CB81004();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21C7C0050();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  v12 = sub_21CB85594();

  return v12;
}

unint64_t sub_21C7C0050()
{
  result = qword_27CDEBE30;
  if (!qword_27CDEBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBE30);
  }

  return result;
}

uint64_t sub_21C7C00A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v12 = *(v5 + 8);
  v12(v9, v4);
  v12(v11, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21CBA0690;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_21C7C0050();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v14 = sub_21CB85594();

  return v14;
}

uint64_t sub_21C7C0290(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v35 = sub_21CB85FA4();
    if (!v35)
    {
      goto LABEL_42;
    }

    v12 = v35;
    if (v35 >= 1)
    {
      goto LABEL_3;
    }

    __break(1u);
LABEL_40:
    v18 = MEMORY[0x21CF15BD0](0, a1);
LABEL_19:
    v19 = v18;
    v20 = [v18 effectiveTitle];

    v21 = sub_21CB855C4();
    v23 = v22;

    if (v3 == 3)
    {
      if (a3)
      {
        goto LABEL_30;
      }
    }

    else if (v3 == 2)
    {
      if (a3)
      {
        goto LABEL_30;
      }
    }

    else if (a3)
    {
LABEL_30:

      v27 = v39;
      sub_21CB81014();
      sub_21CB81004();
      (*(v8 + 8))(v27, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_21CBA15B0;
      v29 = MEMORY[0x277D837D0];
      *(v28 + 56) = MEMORY[0x277D837D0];
      v30 = sub_21C7C0050();
      *(v28 + 32) = v21;
      *(v28 + 40) = v23;
      *(v28 + 96) = v29;
      *(v28 + 104) = v30;
      *(v28 + 64) = v30;
      *(v28 + 72) = a2;
      *(v28 + 80) = a3;
      v26 = sub_21CB85594();
      goto LABEL_35;
    }

    v32 = v39;
    sub_21CB81014();
    sub_21CB81004();
    (*(v8 + 8))(v32, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_21CBA0690;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_21C7C0050();
    *(v33 + 32) = v21;
    *(v33 + 40) = v23;
    v26 = sub_21CB85594();
    goto LABEL_35;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    v3 = 0;
    goto LABEL_15;
  }

LABEL_3:
  v36 = v7;
  v37 = v8;
  v38 = a2;
  v13 = a3;
  v3 = 0;
  v14 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x21CF15BD0](v14, a1);
    }

    else
    {
      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    ++v14;
    v17 = [v15 credentialTypes];

    v3 |= v17;
  }

  while (v12 != v14);
  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  a3 = v13;
  v8 = v37;
  a2 = v38;
  v7 = v36;
  if (!(a1 >> 62))
  {
LABEL_15:
    if (*(v11 + 16) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  while (sub_21CB85FA4() == 1)
  {
LABEL_16:
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_40;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(a1 + 32);
      goto LABEL_19;
    }

    __break(1u);
LABEL_42:
    v3 = 0;
  }

LABEL_10:
  if (v3 == 3)
  {
    if (a3)
    {
      goto LABEL_26;
    }

LABEL_32:
    v31 = v39;
    goto LABEL_33;
  }

  if (v3 != 2)
  {
    if (a3)
    {
LABEL_26:

      v24 = v39;
      sub_21CB81014();
      sub_21CB81004();
      (*(v8 + 8))(v24, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_21CBA0690;
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = sub_21C7C0050();
      *(v25 + 32) = a2;
      *(v25 + 40) = a3;
      v26 = sub_21CB85594();
LABEL_35:

      return v26;
    }

    goto LABEL_32;
  }

  if (a3)
  {
    goto LABEL_26;
  }

  v31 = v39;
LABEL_33:
  sub_21CB81014();
  v26 = sub_21CB81004();
  (*(v8 + 8))(v31, v7);
  return v26;
}

uint64_t sub_21C7C08A8(void (**a1)(char *, uint64_t), uint64_t a2)
{
  v86 = sub_21CB81024();
  v84 = *(v86 - 8);
  v4 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v92 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v81 - v10;
  v12 = sub_21CB85C44();
  v87 = *(v12 - 8);
  v13 = *(v87 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v81 - v17;
  v94 = MEMORY[0x277D84F90];
  v82 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_95;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v88 = v16;
  v93 = a1;
  if (v18)
  {
    LODWORD(v90) = a2;
    v19 = 0;
    v20 = a1 & 0xC000000000000001;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v20)
      {
        v22 = MEMORY[0x21CF15BD0](v19, a1);
      }

      else
      {
        if (v19 >= *(v21 + 16))
        {
          goto LABEL_90;
        }

        v22 = a1[v19 + 4];
      }

      v23 = v22;
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if ([v22 isSavedInSharedGroup])
      {
        a2 = &v94;
        sub_21CB86134();
        v25 = *(v94 + 16);
        sub_21CB86164();
        a1 = v93;
        sub_21CB86174();
        sub_21CB86144();
      }

      else
      {
      }

      ++v19;
    }

    while (v24 != v18);
    v26 = v94;
    a2 = v90;
    if ((v94 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_17:
      if ((v26 & 0x4000000000000000) == 0)
      {
        v27 = *(v26 + 16);
        if (v27)
        {
          v16 = *(v26 + 16);
          v28 = v88;
          goto LABEL_22;
        }

        v16 = 0;
        v28 = v88;
        if (a2)
        {
          goto LABEL_22;
        }

LABEL_20:

        return 0;
      }
    }
  }

  v27 = sub_21CB85FA4();
  v28 = v88;
  if (v27 <= 0 && (a2 & 1) == 0)
  {
    goto LABEL_20;
  }

  v16 = sub_21CB85FA4();
LABEL_22:
  v81 = v27;
  v90 = v16;
  if (v16)
  {
    a1 = 0;
    v89 = v26 & 0xC000000000000001;
    v30 = (v87 + 48);
    v31 = (v87 + 32);
    v32 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v89)
      {
        v16 = MEMORY[0x21CF15BD0](a1, v26);
        v33 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (a1 >= *(v26 + 16))
        {
          goto LABEL_94;
        }

        v16 = *(v26 + 8 * a1 + 32);
        v33 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          v80 = v16;
          v18 = sub_21CB85FA4();
          v16 = v80;
          goto LABEL_3;
        }
      }

      a2 = v16;
      v34 = v92;
      sub_21CB85B94();
      sub_21C7C3490(v34, v11);

      if ((*v30)(v11, 1, v28) == 1)
      {
        v16 = sub_21C7C3500(v11);
      }

      else
      {
        v35 = *v31;
        (*v31)(v91, v11, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_21CA4F554(0, v32[2] + 1, 1, v32);
        }

        v37 = v32[2];
        v36 = v32[3];
        a2 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v32 = sub_21CA4F554(v36 > 1, v37 + 1, 1, v32);
        }

        v32[2] = a2;
        v38 = v32 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v37;
        v28 = v88;
        v16 = (v35)(v38, v91, v88);
      }

      a1 = (a1 + 1);
      if (v33 == v90)
      {
        goto LABEL_39;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_39:
  v39 = sub_21CB00D70(v32);

  v40 = *(v39 + 16);
  if (!v40)
  {

    v41 = MEMORY[0x277D84F90];
    v43 = v90;
    v44 = v93;
    if (v90)
    {
      goto LABEL_42;
    }

LABEL_55:

    goto LABEL_56;
  }

  v41 = sub_21CAC8AB8(*(v39 + 16), 0);
  v42 = sub_21C8974A8(&v94, (v41 + ((*(v87 + 80) + 32) & ~*(v87 + 80))), v40, v39);
  result = sub_21C6F1E7C();
  v43 = v90;
  if (v42 != v40)
  {
    __break(1u);
    goto LABEL_100;
  }

  v44 = v93;
  if (!v90)
  {
    goto LABEL_55;
  }

LABEL_42:
  if (v43 >= 1)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x21CF15BD0](v46, v26);
      }

      else
      {
        v47 = *(v26 + 8 * v46 + 32);
      }

      v48 = v47;
      ++v46;
      v49 = [v47 credentialTypes];

      v45 |= v49;
      v44 = v93;
    }

    while (v43 != v46);

    if (v45 == 3)
    {
      v54 = *(v41 + 16);
      if (v54 != 1)
      {
        if (!v54)
        {

          if (v82)
          {
            sub_21CB85FA4();
          }

          else
          {
            v55 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v62 = (v84 + 8);
          goto LABEL_86;
        }

        goto LABEL_78;
      }

      v67 = v87;
      v68 = v83;
      (*(v87 + 16))(v83, v41 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v28);

      v69 = [objc_opt_self() sharedProvider];
      v70 = sub_21CB85D84();

      (*(v67 + 8))(v68, v28);
      if (v70)
      {
        v71 = [v70 displayName];

        if (v71)
        {
          a2 = sub_21CB855C4();
          v20 = v72;

          a1 = (v84 + 8);
          v76 = v85;
LABEL_92:
          sub_21CB81014();
          sub_21CB81004();
          (*a1)(v76, v86);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_21CBA15B0;
          v78 = MEMORY[0x277D837D0];
          *(v77 + 56) = MEMORY[0x277D837D0];
          v79 = sub_21C7C0050();
          *(v77 + 32) = a2;
          *(v77 + 40) = v20;
          *(v77 + 96) = v78;
          *(v77 + 104) = v79;
          *(v77 + 64) = v79;
          *(v77 + 72) = a2;
          *(v77 + 80) = v20;

          v74 = sub_21CB85594();

          return v74;
        }
      }

      v62 = (v84 + 8);
      goto LABEL_86;
    }

    if (v45 == 2)
    {
      v50 = *(v41 + 16);
      if (v50 != 1)
      {
        if (!v50)
        {

          if (v82)
          {
            sub_21CB85FA4();
          }

          else
          {
            v51 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v62 = (v84 + 8);
          goto LABEL_86;
        }

LABEL_78:

        v73 = v85;
        sub_21CB81014();
        v74 = sub_21CB81004();
        (*(v84 + 8))(v73, v86);
        return v74;
      }

      v63 = v87;
      v64 = v83;
      (*(v87 + 16))(v83, v41 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v28);

      v65 = [objc_opt_self() sharedProvider];
      v66 = sub_21CB85D84();

      (*(v63 + 8))(v64, v28);
      if (v66)
      {
        v60 = [v66 displayName];

        if (v60)
        {
LABEL_66:
          a2 = sub_21CB855C4();
          v20 = v61;

          a1 = (v84 + 8);
LABEL_91:
          v76 = v85;
          goto LABEL_92;
        }
      }

      v62 = (v84 + 8);
LABEL_86:
      v75 = v85;
      goto LABEL_87;
    }

LABEL_56:
    v52 = *(v41 + 16);
    if (v52 != 1)
    {
      if (!v52)
      {

        if (v82)
        {
          sub_21CB85FA4();
        }

        else
        {
          v53 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v62 = (v84 + 8);
        goto LABEL_86;
      }

      goto LABEL_78;
    }

    v56 = v87;
    v57 = v83;
    (*(v87 + 16))(v83, v41 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v28);

    v58 = [objc_opt_self() sharedProvider];
    v59 = sub_21CB85D84();

    (*(v56 + 8))(v57, v28);
    if (v59)
    {
      v60 = [v59 displayName];

      if (v60)
      {
        goto LABEL_66;
      }
    }

    v62 = (v84 + 8);
    if (v81 != 1)
    {
      v75 = v85;
LABEL_87:
      sub_21CB81014();
      v74 = sub_21CB81004();
      (*v62)(v75, v86);
      return v74;
    }

    goto LABEL_86;
  }

LABEL_100:
  __break(1u);
  return result;
}

id sub_21C7C15C0(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, char a4)
{
  sub_21C7C0290(a1, a2, a3);
  if (v6)
  {
    sub_21C7C08A8(a1, a4 & 1);
    if (v7)
    {
      v8 = sub_21CB85584();

      v9 = sub_21CB85584();

      v10 = [objc_allocWithZone(MEMORY[0x277D49A80]) initWithFirst:v8 second:v9];

      return v10;
    }
  }

  return 0;
}

uint64_t sub_21C7C1684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2)
  {
    if (a1 == 2)
    {
      if (a3)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_21CB81014();
      v12 = sub_21CB81004();
      (*(v7 + 8))(v10, v6);
      return v12;
    }

    goto LABEL_9;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      if (a3)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_9:
    if (a3)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_12:

  sub_21CB81014();
  sub_21CB81004();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21C7C0050();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v12 = sub_21CB85594();

  return v12;
}

uint64_t sub_21C7C196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 3)
  {
    if (a1 == 2)
    {
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else if (a3)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_21CB81014();
    v12 = sub_21CB81004();
    (*(v7 + 8))(v10, v6);
    return v12;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_8:

  sub_21CB81014();
  sub_21CB81004();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21C7C0050();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v12 = sub_21CB85594();

  return v12;
}

unint64_t sub_21C7C1BFC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result >> 62;
  if (result >> 62)
  {
    v12 = a3;
    result = sub_21CB85FA4();
    a3 = v12;
    v5 = result;
    v14 = a2;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = a3;
    v7 = 0;
    goto LABEL_11;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = a2;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = a3;
  v7 = 0;
  v8 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CF15BD0](v8, v3);
    }

    else
    {
      v9 = *(v3 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v11 = [v9 credentialTypes];

    v7 |= v11;
  }

  while (v5 != v8);
LABEL_11:
  if (v4)
  {
    if (sub_21CB85FA4() != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_13:

    return sub_21C7C196C(v7, v14, v6);
  }

  return sub_21C7C1684(v7, v14, v6);
}

uint64_t sub_21C7C1D78(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    result = [a1 credentialTypes];
    if (result > 3)
    {
LABEL_14:
      if ((result - 8) < 2)
      {
        v14 = [a1 customTitle];
        if (v14)
        {
          v15 = v14;
          v16 = sub_21CB855C4();
          v18 = v17;

          v19 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v19 = v16 & 0xFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            sub_21CB81014();
            sub_21CB81004();
            (*(v7 + 8))(v10, v6);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_21CBA15B0;
            v21 = MEMORY[0x277D837D0];
            *(v20 + 56) = MEMORY[0x277D837D0];
            v22 = sub_21C7C0050();
            *(v20 + 32) = v16;
            *(v20 + 40) = v18;
            *(v20 + 96) = v21;
            *(v20 + 104) = v22;
            *(v20 + 64) = v22;
            *(v20 + 72) = a2;
            *(v20 + 80) = a3;
LABEL_59:
            v23 = sub_21CB85594();

            return v23;
          }

          goto LABEL_46;
        }

LABEL_47:
        sub_21CB81014();
        sub_21CB81004();
        (*(v7 + 8))(v10, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_21CBA0690;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = sub_21C7C0050();
        *(v53 + 32) = a2;
        *(v53 + 40) = a3;
        goto LABEL_59;
      }

      if (result == 4)
      {
        sub_21CB81014();
        sub_21CB81004();
        (*(v7 + 8))(v10, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_21CBA15B0;
        result = [a1 signInWithAppleAccount];
        if (result)
        {
          v24 = result;
          v25 = [result localizedAppName];

          v26 = sub_21CB855C4();
          v28 = v27;

          v29 = MEMORY[0x277D837D0];
          *(v6 + 56) = MEMORY[0x277D837D0];
          v30 = sub_21C7C0050();
          *(v6 + 32) = v26;
          *(v6 + 40) = v28;
          *(v6 + 96) = v29;
LABEL_52:
          *(v6 + 104) = v30;
          *(v6 + 64) = v30;
          *(v6 + 72) = a2;
          *(v6 + 80) = a3;
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_63;
      }

      goto LABEL_30;
    }

    if (result == 1)
    {
      v31 = [a1 customTitle];
      if (v31)
      {
        v32 = v31;
        v33 = sub_21CB855C4();
        v35 = v34;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          sub_21CB81014();
          sub_21CB81004();
          (*(v7 + 8))(v10, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_21CBA15B0;
          v38 = MEMORY[0x277D837D0];
          *(v37 + 56) = MEMORY[0x277D837D0];
          v39 = sub_21C7C0050();
          *(v37 + 32) = v33;
          *(v37 + 40) = v35;
          *(v37 + 96) = v38;
          *(v37 + 104) = v39;
          *(v37 + 64) = v39;
          *(v37 + 72) = a2;
          *(v37 + 80) = a3;
          goto LABEL_59;
        }
      }

      if (![a1 hasValidWebsite])
      {
        goto LABEL_47;
      }

      sub_21CB81014();
      sub_21CB81004();
      (*(v7 + 8))(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA15B0;
      result = [a1 highLevelDomain];
      if (!result)
      {
        goto LABEL_64;
      }

      goto LABEL_51;
    }

    if (result == 2)
    {
LABEL_32:
      sub_21CB81014();
      sub_21CB81004();
      v41 = *(v7 + 8);
      v7 += 8;
      v41(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA15B0;
      result = [a1 highLevelDomain];
      if (!result)
      {
        __break(1u);
        goto LABEL_34;
      }

LABEL_51:
      v54 = result;
      v55 = sub_21CB855C4();
      v57 = v56;

      v58 = MEMORY[0x277D837D0];
      *(v6 + 56) = MEMORY[0x277D837D0];
      v30 = sub_21C7C0050();
      *(v6 + 32) = v55;
      *(v6 + 40) = v57;
      *(v6 + 96) = v58;
      goto LABEL_52;
    }

    if (result != 3)
    {
LABEL_30:
      sub_21CB81014();
      sub_21CB81004();
      v40 = *(v7 + 8);
      v7 += 8;
      v40(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA15B0;
      result = [a1 highLevelDomain];
      if (result)
      {
        goto LABEL_51;
      }

      __break(1u);
      goto LABEL_32;
    }

    sub_21CB81014();
    sub_21CB81004();
    v12 = *(v7 + 8);
    v7 += 8;
    v12(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21CBA15B0;
    result = [a1 highLevelDomain];
    if (result)
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  result = [a1 credentialTypes];
  if (result > 3)
  {
    if ((result - 8) < 2)
    {
      sub_21CB81014();
      v23 = sub_21CB81004();
      (*(v7 + 8))(v10, v6);
      return v23;
    }

LABEL_34:
    if (result == 4)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v7 + 8))(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA0690;
      result = [a1 signInWithAppleAccount];
      if (!result)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v42 = result;
      v43 = [result localizedAppName];

      v44 = sub_21CB855C4();
      v46 = v45;

      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = sub_21C7C0050();
      *(v6 + 32) = v44;
LABEL_58:
      *(v6 + 40) = v46;
      goto LABEL_59;
    }

LABEL_42:
    sub_21CB81014();
    sub_21CB81004();
    v51 = *(v7 + 8);
    v7 += 8;
    v51(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21CBA0690;
    result = [a1 highLevelDomain];
    if (!result)
    {
      __break(1u);
LABEL_44:
      sub_21CB81014();
      a3 = sub_21CB81004();
      v52 = *(v7 + 8);
      v7 += 8;
      v52(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA0690;
      result = [a1 highLevelDomain];
      if (!result)
      {
        __break(1u);
LABEL_46:

        goto LABEL_47;
      }
    }

LABEL_57:
    v60 = result;
    v61 = sub_21CB855C4();
    v46 = v62;

    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_21C7C0050();
    *(v6 + 32) = v61;
    goto LABEL_58;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      goto LABEL_44;
    }

    if (result != 3)
    {
      goto LABEL_42;
    }

    sub_21CB81014();
    a3 = sub_21CB81004();
    v13 = *(v7 + 8);
    v7 += 8;
    v13(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21CBA0690;
    result = [a1 highLevelDomain];
    if (result)
    {
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_14;
  }

  v47 = [a1 customTitle];
  if (v47)
  {
    v48 = v47;
    a2 = sub_21CB855C4();
    a3 = v49;

    v50 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v50 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      goto LABEL_47;
    }
  }

  v59 = (v7 + 8);
  if (![a1 hasValidWebsite])
  {
    sub_21CB81014();
    v23 = sub_21CB81004();
    (*v59)(v10, v6);
    return v23;
  }

  sub_21CB81014();
  sub_21CB81004();
  (*v59)(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21CBA0690;
  result = [a1 highLevelDomain];
  if (result)
  {
    goto LABEL_57;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_21C7C2A6C(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v3 + 8))(v6, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21CBA15A0;
      v14 = a1[4];
      v13 = a1[5];
      v15 = MEMORY[0x277D837D0];
      *(v12 + 56) = MEMORY[0x277D837D0];
      v16 = sub_21C7C0050();
      *(v12 + 32) = v14;
      *(v12 + 40) = v13;
      *(v12 + 96) = v15;
      *(v12 + 104) = v16;
      v17 = a1[6];
      v18 = a1[7];
      *(v12 + 64) = v16;
      *(v12 + 72) = v17;
      *(v12 + 80) = v18;
      *(v12 + 136) = v15;
      *(v12 + 144) = v16;
      v19 = a1[8];
      v20 = a1[9];
      *(v12 + 112) = v19;
      *(v12 + 120) = v20;

LABEL_10:

      v11 = sub_21CB85594();
      goto LABEL_11;
    }

LABEL_9:
    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_21CBA15B0;
    v23 = a1[4];
    v22 = a1[5];
    v24 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v25 = sub_21C7C0050();
    *(v21 + 32) = v23;
    *(v21 + 40) = v22;
    *(v21 + 96) = v24;
    *(v21 + 104) = v25;
    v26 = a1[6];
    v27 = a1[7];
    *(v21 + 64) = v25;
    *(v21 + 72) = v26;
    *(v21 + 80) = v27;
    goto LABEL_10;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v3 + 8))(v6, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_21CBA0690;
      v10 = a1[4];
      v9 = a1[5];
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_21C7C0050();
      *(v8 + 32) = v10;
      *(v8 + 40) = v9;

      v11 = sub_21CB85594();
LABEL_11:

      return v11;
    }

    goto LABEL_9;
  }

  sub_21CB81014();
  v11 = sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_21C7C2E34()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if ([objc_opt_self() isInternalInstall])
  {
    v12 = 0xD000000000000027;
    v13 = 0x800000021CB8BC60;
    v10 = v5;
    v11 = v7;
    v10 = sub_21CB857A4();
    v11 = v8;
    sub_21CB856D4();
    return v10;
  }

  return v5;
}

uint64_t sub_21C7C2FB4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  if (a3)
  {
    sub_21CB81004();
    (*(v7 + 8))(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21CBA0690;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_21C7C0050();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;

    v12 = sub_21CB85594();
  }

  else
  {
    v12 = sub_21CB81004();
    (*(v7 + 8))(v10, v6);
  }

  return v12;
}

uint64_t sub_21C7C3490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7C3500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7C36B0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7C38D4()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_21C7C39D8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  v5 = sub_21CB85584();

  return v5;
}

uint64_t sub_21C7C3AFC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7C3D20()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7C3F98()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8;
}

uint64_t sub_21C7C4274()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8;
}

uint64_t sub_21C7C43D8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8;
}

uint64_t sub_21C7C4678()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7C489C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7C4AC0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_21C7C4BDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  v4 = sub_21CB85584();

  return v4;
}

uint64_t sub_21C7C4D50()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7C4E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_21C7C0050();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_21CB85594();

  return v10;
}

uint64_t sub_21C7C52AC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7C54D0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id OngoingCredentialSharingStrings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OngoingCredentialSharingStrings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingCredentialSharingStrings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OngoingCredentialSharingStrings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingCredentialSharingStrings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21C7C56AC(uint64_t a1)
{
  v35 = a1;
  v31 = sub_21CB81024();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v31);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v33 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v34 = &v30 - v16;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v32 = sub_21CB81034();
  v17 = *(v32 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  v21 = v30;
  sub_21CB81014();
  sub_21CB80FE4();
  v22 = *(v1 + 8);
  v23 = v31;
  v22(v21, v31);
  v22(v7, v23);
  v22(v10, v23);
  v22(v13, v23);
  swift_setDeallocating();
  (*(v17 + 8))(v20 + v19, v32);
  swift_deallocClassInstance();
  v24 = v34;
  sub_21CB81004();
  v22(v33, v23);
  v22(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D83B88];
  *(v25 + 16) = xmmword_21CBA0690;
  v27 = MEMORY[0x277D83C10];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = v35;
  v28 = sub_21CB85594();

  return v28;
}

uint64_t sub_21C7C5AA8(uint64_t a1)
{
  v34 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v30 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v30 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v32 = v30 - v17;
  MEMORY[0x28223BE20](v16);
  v33 = v30 - v18;
  v30[1] = "roupsUnavailableAlertTitle";
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v31 = sub_21CB81034();
  v19 = *(v31 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v23 = *(v2 + 8);
  v23(v6, v1);
  v23(v9, v1);
  v23(v12, v1);
  v23(v15, v1);
  swift_setDeallocating();
  (*(v19 + 8))(v22 + v21, v31);
  swift_deallocClassInstance();
  v24 = v33;
  sub_21CB81004();
  v23(v32, v1);
  v23(v24, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D83B88];
  *(v25 + 16) = xmmword_21CBA0690;
  v27 = MEMORY[0x277D83C10];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = v34;
  v28 = sub_21CB85594();

  return v28;
}

uint64_t PMAccount.highLevelDomain.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = *(v4 + 6);
    v11 = *(v4 + 7);

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v12 = *v8;
    v13 = [*v8 highLevelDomain];
    if (v13)
    {
      v14 = v13;
      v10 = sub_21CB855C4();
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

uint64_t sub_21C7C61D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB398, &unk_21CBA1A30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v63 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v68 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v67 = &v62 - v22;
  v23 = type metadata accessor for PMAccount.MockData(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PMAccount.Storage(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v62 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = (&v62 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v73 = &v62 - v39;
  v40 = PMAccount.userName.getter();
  v65 = v41;
  v66 = v40;
  v42 = *(PMAccount.sites.getter() + 16);

  if (v42)
  {
    v64 = PMAccount.sites.getter();
  }

  else
  {
    v64 = 0;
  }

  v43 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21C7D3210(v1 + v43, v36, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v36, v26, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v26[v23[15]], v73, &qword_27CDEAF58, &unk_21CBA0980);
    sub_21C7C6B10(v26, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v44 = *v36;
    sub_21CB85BD4();
  }

  sub_21C7D3210(v2 + v43, v34, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v34, v26, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v26[v23[16]], v67, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C7C6B10(v26, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v45 = *v34;
    sub_21CB85C14();
  }

  sub_21C7D3210(v2 + v43, v31, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v31, v26, type metadata accessor for PMAccount.MockData);
    v46 = v63;
    sub_21C6EDBAC(&v26[v23[18]], v63, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7C6B10(v26, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v47 = *v31;
    v46 = v63;
    sub_21CB85B94();
  }

  sub_21C716934(v46, v68, &unk_27CDF20B0, &unk_21CBA0090);
  PMAccount.signInWithAppleAccount.getter(v11);
  v48 = type metadata accessor for PMSignInWithAppleAccount();
  v49 = *(*(v48 - 8) + 48);
  if (v49(v11, 1, v48) == 1)
  {
    sub_21C6EA794(v11, &qword_27CDEB2A8, &qword_21CBA1670);
    v50 = sub_21CB85B74();
    (*(*(v50 - 8) + 56))(v70, 1, 1, v50);
  }

  else
  {
    v51 = *(v48 + 20);
    v52 = sub_21CB85B74();
    v53 = *(v52 - 8);
    v54 = &v11[v51];
    v55 = v70;
    (*(v53 + 16))(v70, v54, v52);
    sub_21C7C6B10(v11, type metadata accessor for PMSignInWithAppleAccount);
    (*(v53 + 56))(v55, 0, 1, v52);
  }

  v56 = v69;
  PMAccount.signInWithAppleAccount.getter(v69);
  if (v49(v56, 1, v48) == 1)
  {
    sub_21C6EA794(v56, &qword_27CDEB2A8, &qword_21CBA1670);
    v57 = sub_21CB85B44();
    (*(*(v57 - 8) + 56))(v71, 1, 1, v57);
  }

  else
  {
    v58 = sub_21CB85B44();
    v59 = *(v58 - 8);
    v60 = v71;
    (*(v59 + 16))(v71, v56, v58);
    sub_21C7C6B10(v56, type metadata accessor for PMSignInWithAppleAccount);
    (*(v59 + 56))(v60, 0, 1, v58);
  }

  return sub_21CB85C94();
}

uint64_t PMAccount.savedAccount.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v5 + 24), v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v4;
  }

  sub_21C7C6B10(v4, type metadata accessor for PMAccount.Storage);
  return 0;
}

uint64_t sub_21C7C6B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PMAccount.userName.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    if (v4[1])
    {
      v10 = *v4;
      v11 = v4[1];
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v12 = *v8;
    if ([*v8 credentialTypes] == 4)
    {
      v13 = sub_21C7CBA64();
      if (v14)
      {
        v10 = v13;
        v11 = v14;
        v15 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v15 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {

          goto LABEL_19;
        }
      }

      else
      {
        v19 = sub_21C7CC0C8(&selRef_aa_fullName);
        if (v20)
        {
          v10 = v19;
          v11 = v20;

          goto LABEL_19;
        }
      }
    }

    else
    {
      v16 = [v12 user];
      if (v16)
      {
        v17 = v16;
        v10 = sub_21CB855C4();
        v11 = v18;

        goto LABEL_19;
      }
    }

    v10 = 0;
    v11 = 0xE000000000000000;
  }

LABEL_19:

  v21 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v21 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    return 0;
  }

  return v10;
}

uint64_t sub_21C7C6DBC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_21CB85794();
  }

  else
  {
    return 0;
  }
}

void *sub_21C7C6E04(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_21CB85F24();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_21CAA20C0(v3, *(a1 + 36), 0, a1);
  sub_21C79B008(v5, v6, v7);
  return v5;
}

uint64_t sub_21C7C6E94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_21CB85F24();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    result = sub_21CA91C78(result, *(a1 + 36), a1, v8);
    v6 = v8[0];
    v7 = v8[1];
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_21C7C6F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_21CB85F24();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_21CA91CD0(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = _s24AccountContainerIdentityOMa();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t PMAccount.additionalSites.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v5 + 24), v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v4, type metadata accessor for PMAccount.Storage);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = *v4;
    v8 = [v7 additionalSites];
    v9 = sub_21CB85824();

    return v9;
  }
}

void PMAccount.passkeyCredentialID.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v10, v6, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v6[*(v3 + 60)], a1, &qword_27CDEAF58, &unk_21CBA0980);
    sub_21C7C6B10(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v12 = *v10;
    sub_21CB85BD4();
  }
}

id PMAccount.credentialTypes.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v5 + 24), v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v4, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v7 = *v4;
    v8 = [v7 credentialTypes];

    return v8;
  }
}

uint64_t PMAccount.totpGenerator.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = *&v4[*(v1 + 56)];
    v11 = v10;
    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
    return v10;
  }

  v12 = *v8;
  v13 = [*v8 totpGenerators];
  sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
  v14 = sub_21CB85824();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = sub_21CB85FA4();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x21CF15BD0](0, v14);
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
LABEL_8:
    v10 = v16;

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t PMAccount.MockData.init(user:password:userVisibleDomain:highLevelDomain:creationDate:sites:notesEntry:customTitle:creationDateForPasskey:isOneTimeSharable:totpGenerator:passkeyCredentialID:passkeyRelyingPartyID:passkeyUserHandle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = type metadata accessor for PMAccount.MockData(0);
  v25 = v24[8];
  v39 = v25;
  v26 = sub_21CB80DD4();
  v27 = *(*(v26 - 8) + 56);
  v27(&a9[v25], 1, 1, v26);
  v28 = &a9[v24[10]];
  v29 = &a9[v24[11]];
  v30 = v24[12];
  v27(&a9[v30], 1, 1, v26);
  v31 = v24[15];
  v40 = v24[14];
  v32 = sub_21CB85BB4();
  (*(*(v32 - 8) + 56))(&a9[v31], 1, 1, v32);
  v33 = v24[16];
  v34 = sub_21CB85C04();
  (*(*(v34 - 8) + 56))(&a9[v33], 1, 1, v34);
  v35 = v24[18];
  v36 = &a9[v24[17]];
  v37 = sub_21CB85C44();
  (*(*(v37 - 8) + 56))(&a9[v35], 1, 1, v37);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  sub_21C7D3344(a10, &a9[v39], &unk_27CDED250, &qword_21CBA64C0);
  *&a9[v24[9]] = a11;
  *v28 = a12;
  *(v28 + 1) = a13;
  *v29 = a14;
  *(v29 + 1) = a15;
  sub_21C7D3344(a16, &a9[v30], &unk_27CDED250, &qword_21CBA64C0);
  a9[v24[13]] = a17;
  *&a9[v40] = a18;
  sub_21C7D3344(a19, &a9[v31], &qword_27CDEAF58, &unk_21CBA0980);
  result = sub_21C7D3344(a20, &a9[v33], &unk_27CDEC2F0, &unk_21CBA1660);
  *v36 = a21;
  *(v36 + 1) = a22;
  return result;
}

uint64_t PMAccount.MockData.hash(into:)()
{
  v1 = v0;
  v89 = sub_21CB85C44();
  v2 = *(v89 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v89);
  v78 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v74 - v7;
  v8 = sub_21CB85C04();
  v85 = *(v8 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v8);
  v77 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v74 - v13;
  v14 = sub_21CB85BB4();
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v14);
  v76 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = &v74 - v19;
  v20 = sub_21CB80DD4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v80 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v79 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v74 - v28;
  if (v0[1])
  {
    v30 = *v0;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v31 = v0[3];
  v86 = v8;
  if (v31)
  {
    v32 = v0[2];
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v33 = v0[4];
  v34 = v0[5];
  sub_21CB854C4();
  v35 = v0[6];
  v36 = v0[7];
  sub_21CB854C4();
  v37 = type metadata accessor for PMAccount.MockData(0);
  sub_21C6EDBAC(v0 + v37[8], v29, &unk_27CDED250, &qword_21CBA64C0);
  v38 = v21;
  v39 = *(v21 + 48);
  v40 = v39(v29, 1, v20);
  v88 = v2;
  v75 = v38;
  if (v40 == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v41 = v80;
    (*(v38 + 32))(v80, v29, v20);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEC280, MEMORY[0x277CC9578]);
    sub_21CB85494();
    (*(v38 + 8))(v41, v20);
  }

  v42 = *(v0 + v37[9]);
  MEMORY[0x21CF15F90](*(v42 + 16));
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;

      sub_21CB854C4();

      v44 += 2;
      --v43;
    }

    while (v43);
  }

  v47 = (v1 + v37[10]);
  if (v47[1])
  {
    v48 = *v47;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v49 = v88;
  v50 = (v1 + v37[11]);
  if (v50[1])
  {
    v51 = *v50;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v53 = v82;
  v52 = v83;
  v54 = v79;
  sub_21C6EDBAC(v1 + v37[12], v79, &unk_27CDED250, &qword_21CBA64C0);
  if (v39(v54, 1, v20) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v55 = v75;
    v56 = v80;
    (*(v75 + 32))(v80, v54, v20);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEC280, MEMORY[0x277CC9578]);
    sub_21CB85494();
    (*(v55 + 8))(v56, v20);
  }

  v57 = v89;
  v58 = v86;
  v59 = *(v1 + v37[13]);
  sub_21CB864A4();
  v60 = *(v1 + v37[14]);
  sub_21CB864A4();
  if (v60)
  {
    v61 = v60;
    sub_21CB85DE4();
  }

  v62 = v85;
  v63 = v81;
  sub_21C6EDBAC(v1 + v37[15], v81, &qword_27CDEAF58, &unk_21CBA0980);
  if ((*(v53 + 48))(v63, 1, v52) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v64 = v49;
    v65 = v76;
    (*(v53 + 32))(v76, v63, v52);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEAF60, MEMORY[0x277D49948]);
    sub_21CB85494();
    v66 = v65;
    v49 = v64;
    v57 = v89;
    (*(v53 + 8))(v66, v52);
  }

  v67 = v84;
  sub_21C6EDBAC(v1 + v37[16], v84, &unk_27CDEC2F0, &unk_21CBA1660);
  if ((*(v62 + 48))(v67, 1, v58) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v68 = v77;
    (*(v62 + 32))(v77, v67, v58);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEB2A0, MEMORY[0x277D49960]);
    sub_21CB85494();
    (*(v62 + 8))(v68, v58);
  }

  v69 = (v1 + v37[17]);
  if (v69[1])
  {
    v70 = *v69;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v71 = v87;
  sub_21C6EDBAC(v1 + v37[18], v87, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v49 + 48))(v71, 1, v57) == 1)
  {
    return sub_21CB864A4();
  }

  v73 = v78;
  (*(v49 + 32))(v78, v71, v57);
  sub_21CB864A4();
  sub_21C7D1210(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  return (*(v49 + 8))(v73, v57);
}

uint64_t PMAccount.MockData.hashValue.getter()
{
  sub_21CB86484();
  PMAccount.MockData.hash(into:)();
  return sub_21CB864D4();
}

uint64_t sub_21C7C833C(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21C7D3210(v3, v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v11, v8, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21C7C6B10(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v12 = *v11;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  return sub_21CB864D4();
}

void sub_21C7C84B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C7D3210(v2, v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v11, v8, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21C7C6B10(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v12 = *v11;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }
}

uint64_t sub_21C7C8618(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for PMAccount.MockData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21C7D3210(v4, v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v12, v9, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21C7C6B10(v9, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v13 = *v12;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  return sub_21CB864D4();
}

uint64_t PMAccount.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21C7C87D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount.UniqueID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAccount(0);
  v17 = (a2 + v16[7]);
  *v17 = 0u;
  v17[1] = 0u;
  sub_21C7D3210(a1, a2 + v16[6], type metadata accessor for PMAccount.Storage);
  v18 = v16[5];
  sub_21C7C8A3C(a2 + v18);
  sub_21C7D3210(a2 + v18, v15, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v15, v7, type metadata accessor for PMAccount.SIWAUniqueID);
    v19 = sub_21C7CE99C();
    v21 = v20;
    sub_21C7C6B10(a1, type metadata accessor for PMAccount.Storage);
    v22 = type metadata accessor for PMAccount.SIWAUniqueID;
    v23 = v7;
  }

  else
  {
    sub_21C7D3278(v15, v11, type metadata accessor for PMAccount.CombinedUniqueID);
    v19 = sub_21C7CE408();
    v21 = v24;
    sub_21C7C6B10(a1, type metadata accessor for PMAccount.Storage);
    v22 = type metadata accessor for PMAccount.CombinedUniqueID;
    v23 = v11;
  }

  result = sub_21C7C6B10(v23, v22);
  *a2 = v19;
  a2[1] = v21;
  return result;
}

char *sub_21C7C8A3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB85B74();
  v5 = *(v4 - 8);
  v133 = v4;
  v134 = v5;
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  *&v136 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v127 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v127 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v127 - v21;
  v23 = type metadata accessor for PMAccount.MockData(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for PMAccount.Storage(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C7D3210(v2, v30, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v137 = v14;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C7D3278(v30, v26, type metadata accessor for PMAccount.MockData);
    v32 = v23[18];
    v33 = (v26 + v23[11]);
    v34 = v33[1];
    v134 = v26[1];
    v35 = *(v26 + v23[9]);
    v36 = v23[16];
    *&v37 = *v26;
    v136 = v37;
    *&v37 = *v33;
    v135 = v37;
    sub_21C6EDBAC(v26 + v36, v22, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C6EDBAC(v26 + v23[15], v18, &qword_27CDEAF58, &unk_21CBA0980);
    sub_21C6EDBAC(v26 + v32, v14, &unk_27CDF20B0, &unk_21CBA0090);

    v38 = v35;

    sub_21C7C6B10(v26, type metadata accessor for PMAccount.MockData);
    v39 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v40 = v39[7];
    v41 = sub_21CB85C04();
    (*(*(v41 - 8) + 56))(a1 + v40, 1, 1, v41);
    v42 = v39[8];
    v43 = sub_21CB85BB4();
    (*(*(v43 - 8) + 56))(a1 + v42, 1, 1, v43);
    v44 = a1 + v39[9];
    v45 = sub_21CB85C44();
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    *&v47 = v135;
    *&v46 = v136;
    *(&v47 + 1) = v34;
    *(&v46 + 1) = v134;
    *a1 = v47;
    *(a1 + 16) = v46;
    *(a1 + 32) = v38;
    sub_21C7D3344(v22, a1 + v40, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C7D3344(v18, a1 + v42, &qword_27CDEAF58, &unk_21CBA0980);
    v48 = v137;
LABEL_45:
    sub_21C7D3344(v48, v44, &unk_27CDF20B0, &unk_21CBA0090);
    type metadata accessor for PMAccount.UniqueID(0);
    return swift_storeEnumTagMultiPayload();
  }

  *&v135 = v22;
  v132 = v18;
  v49 = *v30;
  v50 = [*v30 customTitle];
  if (v50)
  {
    v51 = v50;
    v52 = sub_21CB855C4();
    v54 = v53;

    v55 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v55 = v52 & 0xFFFFFFFFFFFFLL;
    }

    v56 = v135;
    v57 = v136;
    if (!v55)
    {

      v52 = 0;
      v54 = 0;
    }
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v56 = v135;
    v57 = v136;
  }

  sub_21CB85B94();
  v58 = [v49 credentialTypes];
  v130 = v54;
  v131 = a1;
  v129 = v52;
  if (v58 == 4)
  {
    v59 = [v49 signInWithAppleAccount];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 userID];
      *&v136 = sub_21CB855C4();
      *&v135 = v62;

      v63 = v49;
      v64 = [v49 serviceName];
      if (v64)
      {
        v65 = v64;
        v66 = sub_21CB855C4();
        v132 = v67;
      }

      else
      {
        v66 = 0;
        v132 = 0;
      }

      v99 = [v60 clientID];
      sub_21CB855C4();

      sub_21CB85B54();
      v100 = [v60 privateEmail];
      if (v100)
      {
        v101 = v100;
        v102 = sub_21CB855C4();
        v104 = v103;
      }

      else
      {

        v102 = 0;
        v104 = 0;
      }

      v48 = v137;
      sub_21C716934(v57, v137, &unk_27CDF20B0, &unk_21CBA0090);
      v105 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v106 = v131;
      v107 = (v131 + v105[8]);
      v44 = v131 + v105[9];
      v108 = sub_21CB85C44();
      (*(*(v108 - 8) + 56))(v44, 1, 1, v108);
      v109 = v130;
      *v106 = v129;
      v106[1] = v109;
      v111 = v134;
      v110 = v135;
      v106[2] = v136;
      v106[3] = v110;
      v113 = v132;
      v112 = v133;
      v106[4] = v66;
      v106[5] = v113;
      (v111)[4](v106 + v105[7], v8, v112);
      *v107 = v102;
      v107[1] = v104;
      goto LABEL_45;
    }
  }

  v134 = v49;
  v68 = [v49 user];
  if (v68)
  {
    v69 = v68;
    v70 = sub_21CB855C4();
    v72 = v71;

    v73 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v73 = v70 & 0xFFFFFFFFFFFFLL;
    }

    v74 = v132;
    if (v73)
    {
      v128 = v70;
      v133 = v72;
    }

    else
    {

      v128 = 0;
      v133 = 0;
    }
  }

  else
  {
    v128 = 0;
    v133 = 0;
    v74 = v132;
  }

  v75 = [v134 protectionSpaces];
  sub_21C6E8F4C(0, &qword_27CDEAC38, 0x277CCAD08);
  v76 = sub_21CB85824();

  if (!(v76 >> 62))
  {
    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v77)
    {
      goto LABEL_22;
    }

LABEL_43:

    v80 = MEMORY[0x277D84F90];
LABEL_44:
    v114 = v134;
    sub_21CB85C14();
    sub_21CB85BD4();

    v115 = v56;
    v48 = v137;
    sub_21C716934(v57, v137, &unk_27CDF20B0, &unk_21CBA0090);
    v116 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v117 = v116[7];
    v118 = sub_21CB85C04();
    v119 = v131;
    (*(*(v118 - 8) + 56))(v131 + v117, 1, 1, v118);
    v120 = v116[8];
    v121 = sub_21CB85BB4();
    (*(*(v121 - 8) + 56))(v119 + v120, 1, 1, v121);
    v122 = v116[9];
    v123 = v74;
    v44 = v119 + v122;
    v124 = sub_21CB85C44();
    (*(*(v124 - 8) + 56))(v44, 1, 1, v124);
    v125 = v130;
    *v119 = v129;
    v119[1] = v125;
    v126 = v133;
    v119[2] = v128;
    v119[3] = v126;
    v119[4] = v80;
    sub_21C7D3344(v115, v119 + v117, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C7D3344(v123, v119 + v120, &qword_27CDEAF58, &unk_21CBA0980);
    goto LABEL_45;
  }

  v77 = sub_21CB85FA4();
  if (!v77)
  {
    goto LABEL_43;
  }

LABEL_22:
  v141 = MEMORY[0x277D84F90];
  result = sub_21C7B0C0C(0, v77 & ~(v77 >> 63), 0);
  if ((v77 & 0x8000000000000000) == 0)
  {
    v79 = 0;
    v80 = v141;
    v81 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
    do
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x21CF15BD0](v79, v76);
      }

      else
      {
        v82 = *(v76 + 8 * v79 + 32);
      }

      v139 = 0;
      v140 = 0xE000000000000000;
      v83 = v82;
      v84 = [v83 protocol];
      if (v84)
      {
        v85 = v84;
        v86 = sub_21CB855C4();
        v88 = v87;
      }

      else
      {
        v88 = 0xE500000000000000;
        v86 = 0x7370747468;
      }

      MEMORY[0x21CF151F0](v86, v88);

      MEMORY[0x21CF151F0](58, 0xE100000000000000);
      v89 = [v83 host];
      v90 = sub_21CB855C4();
      v92 = v91;

      MEMORY[0x21CF151F0](v90, v92);

      v93 = v139;
      v94 = v140;
      if ([v83 v81[314]])
      {
        v139 = v93;
        v140 = v94;
        MEMORY[0x21CF151F0](58, 0xE100000000000000);
        v138 = [v83 v81[314]];
        v95 = sub_21CB862F4();
        MEMORY[0x21CF151F0](v95);

        v93 = v139;
        v94 = v140;
      }

      else
      {
      }

      v141 = v80;
      v96 = *(v80 + 16);
      v97 = *(v80 + 24) >> 1;
      if (v97 <= v96)
      {
        *(v80 + 24);
        sub_21C7B0C0C((v97 != 0), v96 + 1, 1);
        v80 = v141;
      }

      ++v79;
      *(v80 + 16) = v96 + 1;
      v98 = v80 + 16 * v96;
      *(v98 + 32) = v93;
      *(v98 + 40) = v94;
      v81 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
    }

    while (v77 != v79);

    v74 = v132;
    v56 = v135;
    v57 = v136;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

void PMAccount.passkeyRelyingPartyID.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v10, v6, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v6[*(v3 + 64)], a1, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C7C6B10(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v12 = *v10;
    sub_21CB85C14();
  }
}

uint64_t PMAccount.signInWithAppleAccount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for PMSignInWithAppleAccount();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    return sub_21C7C6B10(v10, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v14 = *v10;
    v15 = [v14 signInWithAppleAccount];
    if (v15)
    {
      sub_21CB2AD68(v15, v6);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = type metadata accessor for PMSignInWithAppleAccount();
    v18 = *(v17 - 1);
    (*(v18 + 56))(v6, v16, 1, v17);
    v19 = *(v18 + 48);
    if (!v19(v6, 1, v17))
    {
      v20 = sub_21C7CC0C8(&selRef_aa_fullName);
      v21 = &v6[v17[13]];
      v22 = *(v21 + 1);
      *v21 = v20;
      *(v21 + 1) = v23;
    }

    if (!v19(v6, 1, v17))
    {
      v24 = sub_21C7CBA64();
      if (v25)
      {
        v26 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v26 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (!v26)
        {

          v24 = 0;
          v25 = 0;
        }
      }

      else
      {
        v24 = sub_21C7CC0C8(&selRef_aa_fullName);
      }

      v27 = &v6[v17[14]];
      v28 = v27[1];
      *v27 = v24;
      v27[1] = v25;
    }

    if (v19(v6, 1, v17))
    {
    }

    else
    {
      v29 = sub_21C7CC0C8(&selRef_aa_primaryEmail);
      v31 = v30;

      v32 = &v6[v17[15]];
      v33 = *(v32 + 1);
      *v32 = v29;
      *(v32 + 1) = v31;
    }

    return sub_21C716934(v6, a1, &qword_27CDEB2A8, &qword_21CBA1670);
  }
}

uint64_t sub_21C7C9AD8()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v17 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v9, v5, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v5[*(v2 + 72)], v14, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v18 = *v9;
    sub_21CB85B94();
  }

  sub_21C716934(v14, v16, &unk_27CDF20B0, &unk_21CBA0090);
  v19 = sub_21CB85C44();
  v20 = (*(*(v19 - 8) + 48))(v16, 1, v19);
  v21 = v20 != 1;
  sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  v22 = v1 + *(v17 + 28);
  if (*(v22 + 8) && (*(v22 + 16) & 1) == 0)
  {
    v23 = [*(v22 + 24) severity];
    v24 = 4;
    if (v20 != 1)
    {
      v24 = 5;
    }

    v25 = 2;
    if (v20 != 1)
    {
      v25 = 3;
    }

    if (v23 != 1)
    {
      v25 = v20 != 1;
    }

    if (v23 == 2)
    {
      return v24;
    }

    else
    {
      return v25;
    }
  }

  return v21;
}

uint64_t PMAccount.password.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = *(v4 + 2);
    v11 = *(v4 + 3);

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v12 = *v8;
    v13 = [*v8 password];
    if (v13)
    {
      v14 = v13;
      v10 = sub_21CB855C4();
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

uint64_t sub_21C7C9F40(SEL *a1)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v10, v6, type metadata accessor for PMAccount.MockData);
    v12 = *&v6[*(v3 + 36)];

    sub_21C7C6B10(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v13 = *v10;
    v14 = [*v10 *a1];
    if (v14)
    {
      v15 = v14;
      v12 = sub_21CB85824();
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v12;
}

uint64_t PMAccount.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_21CB80DD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for PMAccount.MockData(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PMAccount.Storage(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v22 + 24), v21, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v21, v17, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v17[*(v14 + 32)], v13, &unk_27CDED250, &qword_21CBA64C0);
    v23 = *(v3 + 48);
    if (v23(v13, 1, v2) != 1)
    {
      sub_21C7C6B10(v17, type metadata accessor for PMAccount.MockData);
      return (*(v3 + 32))(v31, v13, v2);
    }

    sub_21CB80DA4();
    sub_21C7C6B10(v17, type metadata accessor for PMAccount.MockData);
    result = (v23)(v13, 1, v2);
    if (result == 1)
    {
      return result;
    }

    v25 = v13;
    return sub_21C6EA794(v25, &unk_27CDED250, &qword_21CBA64C0);
  }

  v26 = *v21;
  v27 = [*v21 lastModifiedDate];
  if (v27)
  {
    v28 = v27;
    sub_21CB80D94();

    v29 = *(v3 + 32);
    v29(v11, v6, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    return (v29)(v31, v11, v2);
  }

  (*(v3 + 56))(v11, 1, 1, v2);
  sub_21CB80D14();

  result = (*(v3 + 48))(v11, 1, v2);
  if (result != 1)
  {
    v25 = v11;
    return sub_21C6EA794(v25, &unk_27CDED250, &qword_21CBA64C0);
  }

  return result;
}

uint64_t PMAccount.notesEntry.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = &v4[*(v1 + 40)];
    v11 = *v10;
    v12 = v10[1];

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v13 = *v8;
    v14 = [*v8 notesEntry];
    if (v14)
    {
      v15 = v14;
      v11 = sub_21CB855C4();
    }

    else
    {

      return 0;
    }
  }

  return v11;
}

uint64_t PMAccount.title.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = &v4[*(v1 + 44)];
    if (v10[1])
    {
      v11 = *v10;
      v12 = v10[1];
    }

    else
    {
      v11 = *(v4 + 4);
      v15 = *(v4 + 5);
    }

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v13 = *v8;
    v14 = [*v8 effectiveTitle];
    v11 = sub_21CB855C4();
  }

  return v11;
}

uint64_t PMAccount.websiteForSorting.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v5 + 24), v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v4, type metadata accessor for PMAccount.Storage);
    return PMAccount.titleForSorting.getter();
  }

  v6 = *v4;
  v7 = [v6 hasValidWebsite];

  if (!v7)
  {
    return PMAccount.titleForSorting.getter();
  }

  result = PMAccount.userVisibleDomain.getter();
  if (!v9)
  {
    return PMAccount.effectiveTitle.getter();
  }

  return result;
}

uint64_t PMAccount.userVisibleDomainIfPossibleOrEffectiveTitle.getter()
{
  result = PMAccount.userVisibleDomain.getter();
  if (!v1)
  {
    return PMAccount.effectiveTitle.getter();
  }

  return result;
}

uint64_t sub_21C7CA9A0(SEL *a1)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v10, v6, type metadata accessor for PMAccount.MockData);
    v12 = &v6[*(v3 + 44)];
    if (v12[1])
    {
      v13 = *v12;
      v14 = v12[1];
    }

    else
    {
      v13 = *(v6 + 4);
      v17 = *(v6 + 5);
    }

    sub_21C7C6B10(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v15 = *v10;
    v16 = [*v10 *a1];
    v13 = sub_21CB855C4();
  }

  return v13;
}

uint64_t PMAccount.customTitle.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = &v4[*(v1 + 44)];
    if (v10[1])
    {
      v11 = *v10;
      v12 = v10[1];
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v13 = *v8;
    v14 = [*v8 customTitle];
    if (v14)
    {
      v15 = v14;
      v11 = sub_21CB855C4();
      v12 = v16;
    }

    else
    {

      v11 = 0;
      v12 = 0xE000000000000000;
    }
  }

  v17 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v17 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    return 0;
  }

  return v11;
}

uint64_t PMAccount.creationDateForPasskey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount.Storage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v15 + 24), v14, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v14, v10, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v10[*(v7 + 48)], a1, &unk_27CDED250, &qword_21CBA64C0);
    return sub_21C7C6B10(v10, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v17 = *v14;
    v18 = [*v14 creationDateForPasskey];
    if (v18)
    {
      v19 = v18;
      sub_21CB80D94();

      v20 = 0;
      v17 = v19;
    }

    else
    {
      v20 = 1;
    }

    v21 = sub_21CB80DD4();
    (*(*(v21 - 8) + 56))(v6, v20, 1, v21);
    return sub_21C716934(v6, a1, &unk_27CDED250, &qword_21CBA64C0);
  }
}

uint64_t PMAccount.userVisibleDomain.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = *(v4 + 4);
    v11 = *(v4 + 5);

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
    v12 = v11;
    if ((v11 & 0x2000000000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *v8;
    v14 = [*v8 userVisibleDomain];
    v10 = sub_21CB855C4();
    v16 = v15;

    v12 = v16;
    if ((v16 & 0x2000000000000000) != 0)
    {
LABEL_3:
      if ((v12 & 0xF00000000000000) == 0)
      {
        goto LABEL_7;
      }

      return v10;
    }
  }

  if ((v10 & 0xFFFFFFFFFFFFLL) == 0)
  {
LABEL_7:

    return 0;
  }

  return v10;
}

uint64_t PMAccount.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount.Storage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v15 + 24), v14, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v14, v10, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v10[*(v7 + 32)], a1, &unk_27CDED250, &qword_21CBA64C0);
    return sub_21C7C6B10(v10, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v17 = *v14;
    v18 = [*v14 creationDate];
    if (v18)
    {
      v19 = v18;
      sub_21CB80D94();

      v20 = 0;
      v17 = v19;
    }

    else
    {
      v20 = 1;
    }

    v21 = sub_21CB80DD4();
    (*(*(v21 - 8) + 56))(v6, v20, 1, v21);
    return sub_21C716934(v6, a1, &unk_27CDED250, &qword_21CBA64C0);
  }
}

uint64_t PMAccount.monogramTitle.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = sub_21C7C6DBC(*(v4 + 4), *(v4 + 5));
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 63;
    }

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v13 = *v8;
    v14 = [*v8 monogramCharacter];
    v12 = sub_21CB855C4();
  }

  return v12;
}

unint64_t PMAccount.isOneTimeSharable.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = v4[*(v1 + 52)];
    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v11 = *v8;
    v10 = [*v8 isOneTimeSharable];
  }

  return v10;
}

uint64_t PMAccount.hasPasswordCredential.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v5 + 24), v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v4, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v7 = *v4;
    v8 = [v7 credentialTypes];

    return v8 & 1;
  }
}

id sub_21C7CB7C0(SEL *a1)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v6, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v9 = *v6;
    v10 = [*v6 *a1];

    return v10;
  }
}

uint64_t PMAccount.passkeyUserHandle.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v4, type metadata accessor for PMAccount.MockData);
    v10 = &v4[*(v1 + 68)];
    v11 = *v10;
    v12 = v10[1];

    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v13 = *v8;
    v14 = [*v8 passkeyUserHandle];
    if (v14)
    {
      v15 = v14;
      v11 = sub_21CB855C4();
    }

    else
    {

      return 0;
    }
  }

  return v11;
}

uint64_t sub_21C7CBA64()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v34 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = sub_21CB85C44();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v37 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for PMAccount(0) + 24);
  v36 = v0;
  sub_21C7D3210(v0 + v22, v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v10, v4, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v4[*(v1 + 72)], v15, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7C6B10(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v23 = *v10;
    sub_21CB85B94();
  }

  sub_21C716934(v15, v17, &unk_27CDF20B0, &unk_21CBA0090);
  v24 = v19;
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
    return 0;
  }

  v26 = v37;
  (*(v19 + 32))(v37, v17, v18);
  v27 = [objc_opt_self() sharedManager];
  v28 = v35;
  sub_21C7D3210(v36 + v22, v35, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v28, type metadata accessor for PMAccount.Storage);
LABEL_9:
    v30 = 0;
    goto LABEL_10;
  }

  v29 = *v28;
  v30 = [v29 originalContributorParticipantID];

  if (!v30)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_21CB85B64();
  v31 = sub_21CB85584();

  v32 = [v27 displayNameForOriginalContributorParticipantID:v30 inGroupID:v31];

  v33 = sub_21CB855C4();
  (*(v24 + 8))(v26, v18);
  return v33;
}

uint64_t sub_21C7CBEBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v10, type metadata accessor for PMAccount.Storage);
    v12 = sub_21CB80DD4();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v14 = *v10;
    v15 = [*v10 lastOneTimeShareDateForPasskey];

    if (v15)
    {
      sub_21CB80D94();

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = sub_21CB80DD4();
    (*(*(v17 - 8) + 56))(v6, v16, 1, v17);
    return sub_21C716934(v6, a1, &unk_27CDED250, &qword_21CBA64C0);
  }
}

id sub_21C7CC0C8(SEL *a1)
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v3 = result;
    v4 = [result aa_primaryAppleAccount];

    if (v4)
    {
      v5 = [v4 *a1];
      if (v5)
      {
        v6 = v5;
        v7 = sub_21CB855C4();
        v9 = v8;

        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {
          return v7;
        }
      }

      else
      {
      }
    }

    else
    {
      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v11 = sub_21CB81C84();
      __swift_project_value_buffer(v11, qword_27CE186E0);
      v12 = sub_21CB81C64();
      v13 = sub_21CB85B04();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_21C6E5000, v12, v13, "No primary Apple Account found. We shouldn't be listing Sign in with Apple accounts.", v14, 2u);
        MEMORY[0x21CF16D90](v14, -1, -1);
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PMAccount.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v0;
  v11 = v0[1];
  sub_21CB854C4();
  v12 = type metadata accessor for PMAccount(0);
  v13 = v0 + v12[5];
  sub_21C7CECE4();
  sub_21C7D3210(v1 + v12[6], v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v9, v5, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v14 = *v9;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  v15 = v1 + v12[7];
  if (!*(v15 + 1))
  {
    return sub_21CB864A4();
  }

  v16 = *(v15 + 3);
  v17 = v15[16];
  v18 = *v15;
  sub_21CB864A4();
  sub_21CB854C4();
  sub_21CB864A4();
  return sub_21CB85DE4();
}

uint64_t PMAccount.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  v10 = *v0;
  v11 = v0[1];
  sub_21CB854C4();
  v12 = type metadata accessor for PMAccount(0);
  v13 = v0 + v12[5];
  sub_21C7CECE4();
  sub_21C7D3210(v1 + v12[6], v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v9, v5, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v14 = *v9;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  v15 = v1 + v12[7];
  if (*(v15 + 1))
  {
    v16 = *(v15 + 3);
    v17 = v15[16];
    v18 = *v15;
    sub_21CB864A4();
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }

  return sub_21CB864D4();
}

uint64_t sub_21C7CC678@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_21C7CC688(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = type metadata accessor for PMAccount.MockData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v2;
  v14 = v2[1];
  sub_21CB854C4();
  v15 = v2 + a2[5];
  sub_21C7CECE4();
  sub_21C7D3210(v4 + a2[6], v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v12, v8, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21C7C6B10(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v16 = *v12;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  v17 = v4 + a2[7];
  if (!*(v17 + 1))
  {
    return sub_21CB864A4();
  }

  v18 = *(v17 + 3);
  v19 = v17[16];
  v20 = *v17;
  sub_21CB864A4();
  sub_21CB854C4();
  sub_21CB864A4();
  return sub_21CB85DE4();
}

uint64_t sub_21C7CC884(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = type metadata accessor for PMAccount.MockData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  v13 = *v2;
  v14 = v2[1];
  sub_21CB854C4();
  v15 = v2 + a2[5];
  sub_21C7CECE4();
  sub_21C7D3210(v4 + a2[6], v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v12, v8, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)();
    sub_21C7C6B10(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v16 = *v12;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  v17 = v4 + a2[7];
  if (*(v17 + 1))
  {
    v18 = *(v17 + 3);
    v19 = v17[16];
    v20 = *v17;
    sub_21CB864A4();
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }

  return sub_21CB864D4();
}

BOOL sub_21C7CCA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - v9);
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(a2 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v10;
LABEL_5:
    sub_21C7C6B10(v12, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  v13 = *v10;
  sub_21C7D3210(a1 + *(v11 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = v8;
    goto LABEL_5;
  }

  v15 = *v8;
  v16 = [v13 compare_];

  return v16 != -1;
}

BOOL sub_21C7CCC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - v9);
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(a1 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v10;
LABEL_5:
    sub_21C7C6B10(v12, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  v13 = *v10;
  sub_21C7D3210(a2 + *(v11 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = v8;
    goto LABEL_5;
  }

  v15 = *v8;
  v16 = [v13 compare_];

  return v16 != -1;
}

BOOL sub_21C7CCDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - v9);
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(a2 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v10;
LABEL_5:
    sub_21C7C6B10(v12, type metadata accessor for PMAccount.Storage);
    return 1;
  }

  v13 = *v10;
  sub_21C7D3210(a1 + *(v11 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = v8;
    goto LABEL_5;
  }

  v15 = *v8;
  v16 = [v13 compare_];

  return v16 == -1;
}

uint64_t sub_21C7CCF60(unsigned __int8 a1)
{
  v3 = sub_21CB80DD4();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.MockData(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v71 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v72 = (&v71 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = (&v71 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v71 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = (&v71 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v71 - v29;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v35 = type metadata accessor for PMAccount(0);
      sub_21C7D3210(v1 + *(v35 + 24), v17, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7D3278(v17, v9, type metadata accessor for PMAccount.MockData);
        v36 = *(v9 + 2);
        v37 = *(v9 + 3);

        sub_21C7C6B10(v9, type metadata accessor for PMAccount.MockData);
        if (!v37)
        {
          return 0;
        }
      }

      else
      {
        v51 = *v17;
        v52 = [*v17 password];
        if (!v52)
        {

          return 0;
        }

        v53 = v52;
        v36 = sub_21CB855C4();
      }

      return v36;
    }

    PMAccount.signInWithAppleAccount.getter(v30);
    v31 = type metadata accessor for PMSignInWithAppleAccount();
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
    {
      sub_21C6EA794(v30, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_32:
      v59 = *(type metadata accessor for PMAccount(0) + 24);
      sub_21C7D3210(v1 + v59, v24, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7C6B10(v24, type metadata accessor for PMAccount.Storage);
        goto LABEL_35;
      }

      v60 = *v24;
      v61 = [*v24 credentialTypes];

      if ((v61 & 8) == 0)
      {
LABEL_35:
        v62 = PMAccount.userName.getter();
        if (v63)
        {
          v64 = v62;
          v65 = v73;
          sub_21C7D3210(v1 + v59, v73, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21C7C6B10(v65, type metadata accessor for PMAccount.Storage);
          }

          else
          {
            v66 = *v65;
            v67 = [v66 credentialTypes];

            if (v67 >= 4)
            {
LABEL_45:

              return 0;
            }
          }

          v68 = v72;
          sub_21C7D3210(v1 + v59, v72, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21C7C6B10(v68, type metadata accessor for PMAccount.Storage);
            return v64;
          }

          v69 = *v68;
          v70 = [v69 userIsNeverSaveMarker];

          if (!v70)
          {
            return v64;
          }

          goto LABEL_45;
        }

        return 0;
      }

      return 0;
    }

    v40 = &v30[*(v31 + 36)];
    if (*(v40 + 1))
    {
      v41 = *v40;
      v42 = *(v40 + 1);

      sub_21C7C6B10(v30, type metadata accessor for PMSignInWithAppleAccount);
    }

    else
    {
      v54 = &v30[*(v31 + 60)];
      v41 = *v54;
      v55 = *(v54 + 1);

      sub_21C7C6B10(v30, type metadata accessor for PMSignInWithAppleAccount);
      if (!v55)
      {
        goto LABEL_32;
      }
    }

    v56 = type metadata accessor for PMAccount(0);
    sub_21C7D3210(v1 + *(v56 + 24), v26, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7C6B10(v26, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v57 = *v26;
      v58 = [*v26 credentialTypes];

      if ((v58 & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {

        goto LABEL_32;
      }
    }

    return v41;
  }

  if (a1 != 2)
  {
    result = PMAccount.userVisibleDomain.getter();
    if (!v39)
    {
      return 0;
    }

    return result;
  }

  v32 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v32 + 24), v14, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v14, v9, type metadata accessor for PMAccount.MockData);
    v33 = *&v9[*(v6 + 56)];
    v34 = v33;
    sub_21C7C6B10(v9, type metadata accessor for PMAccount.MockData);
    if (!v33)
    {
      return 0;
    }

LABEL_23:
    v47 = v74;
    sub_21CB80DA4();
    v48 = sub_21CB80D24();
    (*(v75 + 8))(v47, v76);
    v49 = [v34 codeForDate_];

    v50 = sub_21CB855C4();
    return v50;
  }

  v43 = *v14;
  v44 = [*v14 totpGenerators];
  sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
  v45 = sub_21CB85824();

  if (v45 >> 62)
  {
    result = sub_21CB85FA4();
    if (result)
    {
      goto LABEL_19;
    }

LABEL_48:

    return 0;
  }

  result = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_19:
  if ((v45 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x21CF15BD0](0, v45);
    goto LABEL_22;
  }

  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v46 = *(v45 + 32);
LABEL_22:
    v34 = v46;

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_21C7CD7BC(unsigned __int8 a1)
{
  v3 = a1;
  v4 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 == 2)
  {
    v12 = type metadata accessor for PMAccount(0);
    sub_21C7D3210(v1 + *(v12 + 24), v11, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7D3278(v11, v7, type metadata accessor for PMAccount.MockData);
      v13 = *&v7[*(v4 + 56)];
      v14 = v13;
      sub_21C7C6B10(v7, type metadata accessor for PMAccount.MockData);
      if (!v13)
      {
        return;
      }

LABEL_12:

      return;
    }

    v14 = *v11;
    v16 = [*v11 totpGenerators];
    sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
    v17 = sub_21CB85824();

    if (v17 >> 62)
    {
      if (sub_21CB85FA4())
      {
        goto LABEL_9;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v17 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CF15BD0](0, v17);
        swift_unknownObjectRelease();
      }

      else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_21C7CCF60(a1);
    if (v15)
    {
    }
  }
}

uint64_t sub_21C7CDA0C(unsigned __int8 a1)
{
  v3 = sub_21CB81024();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v44 - v8;
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (v44 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v44 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v44 - v25;
  if (a1 > 1u)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    v30 = type metadata accessor for PMAccount(0);
    sub_21C7D3210(v1 + *(v30 + 24), v14, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7C6B10(v14, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v32 = *v14;
      [*v14 credentialTypes];
    }

    goto LABEL_13;
  }

  PMAccount.signInWithAppleAccount.getter(v44 - v25);
  v27 = type metadata accessor for PMSignInWithAppleAccount();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v44[1] = v28 + 48;
  if (v29(v26, 1, v27) == 1)
  {
    goto LABEL_4;
  }

  v44[0] = v29;
  if (*&v26[*(v27 + 36) + 8])
  {
    sub_21C7C6B10(v26, type metadata accessor for PMSignInWithAppleAccount);
  }

  else
  {
    v37 = *&v26[*(v27 + 60) + 8];

    sub_21C7C6B10(v26, type metadata accessor for PMSignInWithAppleAccount);
    if (!v37)
    {
      goto LABEL_13;
    }
  }

  v38 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v38 + 24), v16, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v16, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v39 = *v16;
    v40 = [*v16 credentialTypes];

    if ((v40 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      goto LABEL_13;
    }
  }

  PMAccount.signInWithAppleAccount.getter(v24);
  v41 = v44[0];
  if ((v44[0])(v24, 1, v27) == 1)
  {
    sub_21C6EA794(v24, &qword_27CDEB2A8, &qword_21CBA1670);
  }

  else
  {
    v42 = *&v24[*(v27 + 36) + 8];

    sub_21C7C6B10(v24, type metadata accessor for PMSignInWithAppleAccount);
    if (v42)
    {
LABEL_28:

      goto LABEL_9;
    }
  }

  PMAccount.signInWithAppleAccount.getter(v21);
  if (v41(v21, 1, v27) == 1)
  {
    v26 = v21;
LABEL_4:
    sub_21C6EA794(v26, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_13:
    sub_21CB81014();
    sub_21CB81014();
    v31 = sub_21CB80FF4();
    v33 = *(v45 + 8);
    v34 = v7;
    v35 = v46;
    v33(v34, v46);
    v33(v9, v35);
    return v31;
  }

  if (!*&v21[*(v27 + 36) + 8])
  {
    v43 = *&v21[*(v27 + 60) + 8];

    sub_21C7C6B10(v21, type metadata accessor for PMSignInWithAppleAccount);
    if (!v43)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  sub_21C7C6B10(v21, type metadata accessor for PMSignInWithAppleAccount);
LABEL_9:
  sub_21CB81014();
  v31 = sub_21CB81004();
  (*(v45 + 8))(v9, v46);
  return v31;
}

uint64_t sub_21C7CE0D8(unsigned __int8 *a1)
{
  result = sub_21C7CCF60(*a1);
  if (v2)
  {
    if (qword_27CDEA480 != -1)
    {
      v5 = result;
      v6 = v2;
      v7 = v3;
      swift_once();
      v3 = v7;
      result = v5;
      v2 = v6;
    }

    v4 = *(qword_27CE18710 + 16);
    sub_21CADAA84(result, v2, v3 & 1);
  }

  return result;
}

uint64_t sub_21C7CE19C(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount.UniqueID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7D3278(v1, v14, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v14, v6, type metadata accessor for PMAccount.SIWAUniqueID);
    sub_21C7D3344(a1, &v6[*(v3 + 36)], &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7D3210(v6, v1, type metadata accessor for PMAccount.SIWAUniqueID);
    swift_storeEnumTagMultiPayload();
    v15 = type metadata accessor for PMAccount.SIWAUniqueID;
    v16 = v6;
  }

  else
  {
    sub_21C7D3278(v14, v10, type metadata accessor for PMAccount.CombinedUniqueID);
    sub_21C7D3344(a1, &v10[*(v7 + 36)], &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7D3210(v10, v1, type metadata accessor for PMAccount.CombinedUniqueID);
    swift_storeEnumTagMultiPayload();
    v15 = type metadata accessor for PMAccount.CombinedUniqueID;
    v16 = v10;
  }

  return sub_21C7C6B10(v16, v15);
}

uint64_t sub_21C7CE408()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v41 - v12;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_21CB86094();
  MEMORY[0x21CF151F0](0x69546D6F74737563, 0xEC0000003D656C74);
  if (v0[1])
  {
    v14 = *v0;
    v15 = v0[1];
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x21CF151F0](v14, v15);

  MEMORY[0x21CF151F0](0x3D72657375203BLL, 0xE700000000000000);
  if (v0[3])
  {
    v16 = v0[2];
    v17 = v0[3];
  }

  else
  {
    v17 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x21CF151F0](v16, v17);

  MEMORY[0x21CF151F0](0xD000000000000014, 0x800000021CB8F060);
  v41[1] = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  sub_21C7D32E0();
  v18 = sub_21CB85504();
  v20 = v19;

  MEMORY[0x21CF151F0](v18, v20);

  MEMORY[0x21CF151F0](0xD000000000000010, 0x800000021CB8F080);
  v21 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  sub_21C6EDBAC(v0 + v21[7], v13, &unk_27CDEC2F0, &unk_21CBA1660);
  v22 = sub_21CB85C04();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v13, 1, v22) == 1)
  {
    sub_21C6EA794(v13, &unk_27CDEC2F0, &unk_21CBA1660);
    v24 = 0xE300000000000000;
    v25 = 7104878;
  }

  else
  {
    v26 = sub_21CB85B64();
    v24 = v27;
    (*(v23 + 8))(v13, v22);
    v25 = v26;
  }

  MEMORY[0x21CF151F0](v25, v24);

  MEMORY[0x21CF151F0](0xD000000000000017, 0x800000021CB8F0A0);
  sub_21C6EDBAC(v1 + v21[8], v9, &qword_27CDEAF58, &unk_21CBA0980);
  v28 = sub_21CB85BB4();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v9, 1, v28) == 1)
  {
    sub_21C6EA794(v9, &qword_27CDEAF58, &unk_21CBA0980);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v32 = sub_21CB85B64();
    v30 = v33;
    (*(v29 + 8))(v9, v28);
    v31 = v32;
  }

  MEMORY[0x21CF151F0](v31, v30);

  MEMORY[0x21CF151F0](0x4970756F7267203BLL, 0xEA00000000003D44);
  sub_21C6EDBAC(v1 + v21[9], v5, &unk_27CDF20B0, &unk_21CBA0090);
  v34 = sub_21CB85C44();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v5, 1, v34) == 1)
  {
    sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
    v36 = 0xE300000000000000;
    v37 = 7104878;
  }

  else
  {
    v38 = sub_21CB85B64();
    v36 = v39;
    (*(v35 + 8))(v5, v34);
    v37 = v38;
  }

  MEMORY[0x21CF151F0](v37, v36);

  MEMORY[0x21CF151F0](59, 0xE100000000000000);
  return v42;
}

uint64_t sub_21C7CE99C()
{
  v1 = v0;
  v2 = 7104878;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - v5;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_21CB86094();
  MEMORY[0x21CF151F0](0x69546D6F74737563, 0xEC0000003D656C74);
  if (v0[1])
  {
    v7 = *v0;
    v8 = v0[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x21CF151F0](v7, v8);

  MEMORY[0x21CF151F0](0x444972657375203BLL, 0xE90000000000003DLL);
  MEMORY[0x21CF151F0](v0[2], v0[3]);
  MEMORY[0x21CF151F0](0x636976726573203BLL, 0xEE003D656D614E65);
  if (v0[5])
  {
    v9 = v0[4];
    v10 = v0[5];
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x21CF151F0](v9, v10);

  MEMORY[0x21CF151F0](0x746E65696C63203BLL, 0xEB000000003D4449);
  v11 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v12 = v0 + v11[7];
  v13 = sub_21CB85B64();
  MEMORY[0x21CF151F0](v13);

  MEMORY[0x21CF151F0](0x746176697270203BLL, 0xEF3D6C69616D4565);
  v14 = (v1 + v11[8]);
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x21CF151F0](v15, v16);

  MEMORY[0x21CF151F0](0x4970756F7267203BLL, 0xEA00000000003D44);
  sub_21C6EDBAC(v1 + v11[9], v6, &unk_27CDF20B0, &unk_21CBA0090);
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
    v19 = 0xE300000000000000;
  }

  else
  {
    v2 = sub_21CB85B64();
    v19 = v20;
    (*(v18 + 8))(v6, v17);
  }

  MEMORY[0x21CF151F0](v2, v19);

  MEMORY[0x21CF151F0](59, 0xE100000000000000);
  return v22[0];
}

uint64_t sub_21C7CECE4()
{
  v0 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB85C44();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v52 - v9;
  v10 = sub_21CB85BB4();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v56 = &v52 - v15;
  v16 = sub_21CB85C04();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v52 - v22;
  v24 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for PMAccount.UniqueID(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7D3210(v61, v31, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v31, v3, type metadata accessor for PMAccount.SIWAUniqueID);
    MEMORY[0x21CF15F90](1);
    sub_21C7CFB5C();
    v32 = type metadata accessor for PMAccount.SIWAUniqueID;
    v33 = v3;
  }

  else
  {
    sub_21C7D3278(v31, v27, type metadata accessor for PMAccount.CombinedUniqueID);
    MEMORY[0x21CF15F90](0);
    if (v27[1])
    {
      v34 = *v27;
      sub_21CB864A4();
      sub_21CB854C4();
    }

    else
    {
      sub_21CB864A4();
    }

    v35 = v27[3];
    v52 = v4;
    if (v35)
    {
      v36 = v27[2];
      sub_21CB864A4();
      sub_21CB854C4();
    }

    else
    {
      sub_21CB864A4();
    }

    v37 = v27[4];
    MEMORY[0x21CF15F90](*(v37 + 16));
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = (v37 + 40);
      do
      {
        v40 = *(v39 - 1);
        v41 = *v39;

        sub_21CB854C4();

        v39 += 2;
        --v38;
      }

      while (v38);
    }

    sub_21C6EDBAC(v27 + v24[7], v23, &unk_27CDEC2F0, &unk_21CBA1660);
    v42 = v55;
    if ((*(v55 + 48))(v23, 1, v16) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      (*(v42 + 32))(v19, v23, v16);
      sub_21CB864A4();
      sub_21C7D1210(&qword_27CDEB2A0, MEMORY[0x277D49960]);
      sub_21CB85494();
      (*(v42 + 8))(v19, v16);
    }

    v43 = v52;
    v45 = v59;
    v44 = v60;
    v47 = v57;
    v46 = v58;
    v48 = v56;
    sub_21C6EDBAC(v27 + v24[8], v56, &qword_27CDEAF58, &unk_21CBA0980);
    if ((*(v47 + 48))(v48, 1, v46) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      v49 = v53;
      (*(v47 + 32))(v53, v48, v46);
      sub_21CB864A4();
      sub_21C7D1210(&qword_27CDEAF60, MEMORY[0x277D49948]);
      sub_21CB85494();
      (*(v47 + 8))(v49, v46);
    }

    sub_21C6EDBAC(v27 + v24[9], v45, &unk_27CDF20B0, &unk_21CBA0090);
    if ((*(v44 + 48))(v45, 1, v43) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      v50 = v54;
      (*(v44 + 32))(v54, v45, v43);
      sub_21CB864A4();
      sub_21C7D1210(&qword_27CDF8950, MEMORY[0x277D49978]);
      sub_21CB85494();
      (*(v44 + 8))(v50, v43);
    }

    v32 = type metadata accessor for PMAccount.CombinedUniqueID;
    v33 = v27;
  }

  return sub_21C7C6B10(v33, v32);
}

uint64_t sub_21C7CF4F4()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v41 - v7;
  v8 = sub_21CB85BB4();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v43 = &v41 - v13;
  v14 = sub_21CB85C04();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v41 - v21;
  if (v0[1])
  {
    v23 = *v0;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v24 = v0[3];
  v45 = v8;
  if (v24)
  {
    v25 = v0[2];
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v26 = v0[4];
  MEMORY[0x21CF15F90](*(v26 + 16));
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = (v26 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;

      sub_21CB854C4();

      v28 += 2;
      --v27;
    }

    while (v27);
  }

  v31 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  sub_21C6EDBAC(v1 + v31[7], v22, &unk_27CDEC2F0, &unk_21CBA1660);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEB2A0, MEMORY[0x277D49960]);
    sub_21CB85494();
    (*(v15 + 8))(v18, v14);
  }

  v33 = v47;
  v32 = v48;
  v35 = v45;
  v34 = v46;
  v36 = v43;
  v37 = v44;
  sub_21C6EDBAC(v1 + v31[8], v43, &qword_27CDEAF58, &unk_21CBA0980);
  if ((*(v37 + 48))(v36, 1, v35) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v38 = v41;
    (*(v37 + 32))(v41, v36, v35);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEAF60, MEMORY[0x277D49948]);
    sub_21CB85494();
    (*(v37 + 8))(v38, v35);
  }

  sub_21C6EDBAC(v1 + v31[9], v34, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    return sub_21CB864A4();
  }

  v40 = v42;
  (*(v33 + 32))(v42, v34, v32);
  sub_21CB864A4();
  sub_21C7D1210(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  return (*(v33 + 8))(v40, v32);
}

uint64_t sub_21C7CFB5C()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  if (v0[1])
  {
    v11 = *v0;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v12 = v0[2];
  v13 = v0[3];
  sub_21CB854C4();
  if (v0[5])
  {
    v14 = v0[4];
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v15 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v16 = v15[7];
  sub_21CB85B74();
  sub_21C7D1210(&qword_27CDEB3D8, MEMORY[0x277D49930]);
  sub_21CB85494();
  v17 = (v1 + v15[8]);
  if (v17[1])
  {
    v18 = *v17;
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  sub_21C6EDBAC(v1 + v15[9], v10, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_21CB864A4();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_21CB864A4();
  sub_21C7D1210(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C7CFE84(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_21CB86484();
  a3(v5);
  return sub_21CB864D4();
}

uint64_t sub_21C7CFEE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21CB86484();
  a4(v6);
  return sub_21CB864D4();
}

BOOL _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CB85C44();
  v206 = *(v4 - 8);
  v207 = v4;
  v5 = *(v206 + 64);
  MEMORY[0x28223BE20](v4);
  v204 = &v190[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v205 = &v190[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v208 = &v190[-v12];
  v13 = sub_21CB85C04();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v190[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v190[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3B0, &unk_21CBA1A50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v190[-v24];
  v26 = sub_21CB85BB4();
  v213 = *(v26 - 8);
  v27 = *(v213 + 64);
  MEMORY[0x28223BE20](v26);
  v209 = &v190[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v210 = &v190[-v31];
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A8, &qword_21CBA1A48);
  v32 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v212 = &v190[-v33];
  v34 = sub_21CB80DD4();
  v35 = *(v34 - 8);
  v217 = v34;
  v218 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v215 = &v190[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v214 = &v190[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40);
  v216 = &v190[-v42];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v45);
  v49 = a2;
  v50 = &v190[-v46];
  v51 = a1[1];
  v52 = v49[1];
  if (v51)
  {
    if (!v52)
    {
      return 0;
    }

    if (*a1 != *v49 || v51 != v52)
    {
      v200 = v26;
      v202 = v21;
      v203 = v22;
      v53 = v25;
      v54 = v17;
      v55 = v14;
      v56 = v13;
      v57 = v10;
      v58 = a1;
      v59 = v49;
      v60 = &v190[-v46];
      v61 = v47;
      v62 = v48;
      v63 = sub_21CB86344();
      v48 = v62;
      v47 = v61;
      v50 = v60;
      v49 = v59;
      a1 = v58;
      v10 = v57;
      v13 = v56;
      v14 = v55;
      v17 = v54;
      v25 = v53;
      v21 = v202;
      v22 = v203;
      v26 = v200;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v52)
  {
    return 0;
  }

  v64 = a1[3];
  v65 = v49[3];
  if (v64)
  {
    if (!v65)
    {
      return 0;
    }

    v202 = v48;
    v200 = v47;
    if (a1[2] != v49[2] || v64 != v65)
    {
      v201 = v50;
      v66 = v26;
      v67 = v22;
      v68 = v21;
      v69 = v25;
      v70 = v17;
      v71 = v14;
      v72 = v13;
      v73 = v10;
      v74 = a1;
      v75 = v49;
      v76 = sub_21CB86344();
      v49 = v75;
      a1 = v74;
      v10 = v73;
      v13 = v72;
      v14 = v71;
      v17 = v70;
      v25 = v69;
      v21 = v68;
      v22 = v67;
      v26 = v66;
      v50 = v201;
      if ((v76 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_15:
    if (a1[4] != v49[4] || a1[5] != v49[5])
    {
      v201 = v50;
      v77 = v26;
      v78 = v22;
      v79 = v21;
      v80 = v25;
      v81 = v17;
      v82 = v14;
      v83 = v13;
      v84 = v10;
      v85 = a1;
      v86 = v49;
      v87 = sub_21CB86344();
      v49 = v86;
      a1 = v85;
      v10 = v84;
      v13 = v83;
      v14 = v82;
      v17 = v81;
      v25 = v80;
      v21 = v79;
      v22 = v78;
      v26 = v77;
      v50 = v201;
      if ((v87 & 1) == 0)
      {
        return 0;
      }
    }

    v88 = a1[6];
    v89 = a1[7];
    v90 = v49[6];
    v91 = v49[7];
    v199 = v49;
    if ((v88 != v90 || v89 != v91) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }

    v203 = v22;
    v196 = v25;
    v195 = v17;
    v92 = type metadata accessor for PMAccount.MockData(0);
    v93 = a1;
    v197 = v92;
    v94 = *(v92 + 32);
    v95 = *(v202 + 12);
    v198 = v93;
    sub_21C6EDBAC(v93 + v94, v50, &unk_27CDED250, &qword_21CBA64C0);
    sub_21C6EDBAC(v199 + v94, &v50[v95], &unk_27CDED250, &qword_21CBA64C0);
    v96 = v217;
    v98 = v218 + 48;
    v97 = *(v218 + 48);
    if (v97(v50, 1, v217) == 1)
    {
      if (v97(&v50[v95], 1, v96) == 1)
      {
        v192 = v14;
        sub_21C6EA794(v50, &unk_27CDED250, &qword_21CBA64C0);
        goto LABEL_29;
      }
    }

    else
    {
      sub_21C6EDBAC(v50, v216, &unk_27CDED250, &qword_21CBA64C0);
      v194 = v97;
      v193 = v98;
      if (v97(&v50[v95], 1, v96) != 1)
      {
        v192 = v14;
        v102 = v50;
        v201 = v50;
        v103 = v218;
        v104 = v215;
        v105 = v216;
        (*(v218 + 32))(v215, &v102[v95], v96);
        sub_21C7D1210(&qword_27CDEB3E8, MEMORY[0x277CC9578]);
        v191 = sub_21CB85574();
        v106 = *(v103 + 8);
        v106(v104, v96);
        v106(v105, v96);
        sub_21C6EA794(v201, &unk_27CDED250, &qword_21CBA64C0);
        v97 = v194;
        if ((v191 & 1) == 0)
        {
          return 0;
        }

LABEL_29:
        v107 = v197;
        v109 = v198;
        v108 = v199;
        if ((sub_21C9675F0(*(v198 + v197[9]), *(v199 + v197[9])) & 1) == 0)
        {
          return 0;
        }

        v110 = v97;
        v111 = v107[10];
        v112 = (v109 + v111);
        v113 = *(v109 + v111 + 8);
        v114 = (v108 + v111);
        v115 = v114[1];
        v116 = v108;
        if (v113)
        {
          v117 = v200;
          v118 = v202;
          if (!v115)
          {
            return 0;
          }

          if (*v112 != *v114 || v113 != v115)
          {
            v119 = v202;
            v120 = sub_21CB86344();
            v118 = v119;
            v107 = v197;
            v116 = v199;
            if ((v120 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {
          v117 = v200;
          v118 = v202;
          if (v115)
          {
            return 0;
          }
        }

        v121 = v107[11];
        v122 = v198;
        v123 = (v198 + v121);
        v124 = *(v198 + v121 + 8);
        v125 = (v116 + v121);
        v126 = v125[1];
        if (v124)
        {
          if (!v126)
          {
            return 0;
          }

          if (*v123 != *v125 || v124 != v126)
          {
            v127 = v118;
            v128 = sub_21CB86344();
            v118 = v127;
            v107 = v197;
            if ((v128 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v126)
        {
          return 0;
        }

        v202 = v21;
        v129 = v122;
        v130 = v107[12];
        v131 = *(v118 + 48);
        sub_21C6EDBAC(v129 + v130, v117, &unk_27CDED250, &qword_21CBA64C0);
        sub_21C6EDBAC(v199 + v130, v117 + v131, &unk_27CDED250, &qword_21CBA64C0);
        v132 = v217;
        v133 = v110;
        if (v110(v117, 1, v217) == 1)
        {
          if (v110(v117 + v131, 1, v132) == 1)
          {
            sub_21C6EA794(v117, &unk_27CDED250, &qword_21CBA64C0);
            goto LABEL_51;
          }
        }

        else
        {
          v134 = v214;
          sub_21C6EDBAC(v117, v214, &unk_27CDED250, &qword_21CBA64C0);
          if (v133(v117 + v131, 1, v132) != 1)
          {
            v135 = v218;
            v136 = v117 + v131;
            v137 = v215;
            (*(v218 + 32))(v215, v136, v132);
            sub_21C7D1210(&qword_27CDEB3E8, MEMORY[0x277CC9578]);
            v138 = sub_21CB85574();
            v139 = *(v135 + 8);
            v139(v137, v132);
            v139(v134, v132);
            sub_21C6EA794(v117, &unk_27CDED250, &qword_21CBA64C0);
            if ((v138 & 1) == 0)
            {
              return 0;
            }

LABEL_51:
            v140 = v197;
            v141 = v198;
            if (*(v198 + v197[13]) != *(v199 + v197[13]))
            {
              return 0;
            }

            v143 = v13;
            v144 = v197[14];
            v145 = *(v198 + v144);
            v146 = *(v199 + v144);
            if (v145)
            {
              if (!v146)
              {
                return 0;
              }

              sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
              v147 = v146;
              v148 = v145;
              v149 = sub_21CB85DD4();

              if ((v149 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v146)
            {
              return 0;
            }

            v150 = v10;
            v151 = v140[15];
            v152 = v212;
            v153 = *(v211 + 48);
            sub_21C6EDBAC(v141 + v151, v212, &qword_27CDEAF58, &unk_21CBA0980);
            sub_21C6EDBAC(v199 + v151, &v152[v153], &qword_27CDEAF58, &unk_21CBA0980);
            v154 = v213;
            v155 = *(v213 + 48);
            if (v155(v152, 1, v26) == 1)
            {
              if (v155(&v152[v153], 1, v26) == 1)
              {
                sub_21C6EA794(v152, &qword_27CDEAF58, &unk_21CBA0980);
LABEL_66:
                v161 = v197[16];
                v162 = *(v203 + 48);
                v163 = v196;
                sub_21C6EDBAC(v198 + v161, v196, &unk_27CDEC2F0, &unk_21CBA1660);
                sub_21C6EDBAC(v199 + v161, v163 + v162, &unk_27CDEC2F0, &unk_21CBA1660);
                v164 = *(v192 + 48);
                if (v164(v163, 1, v143) == 1)
                {
                  if (v164(v163 + v162, 1, v143) == 1)
                  {
                    sub_21C6EA794(v196, &unk_27CDEC2F0, &unk_21CBA1660);
LABEL_73:
                    v172 = v197[17];
                    v173 = (v198 + v172);
                    v174 = *(v198 + v172 + 8);
                    v175 = (v199 + v172);
                    v176 = v175[1];
                    if (v174)
                    {
                      if (!v176 || (*v173 != *v175 || v174 != v176) && (sub_21CB86344() & 1) == 0)
                      {
                        return 0;
                      }
                    }

                    else if (v176)
                    {
                      return 0;
                    }

                    v177 = v197[18];
                    v178 = *(v150 + 48);
                    v179 = v208;
                    sub_21C6EDBAC(v198 + v177, v208, &unk_27CDF20B0, &unk_21CBA0090);
                    sub_21C6EDBAC(v199 + v177, &v179[v178], &unk_27CDF20B0, &unk_21CBA0090);
                    v180 = *(v206 + 48);
                    if (v180(v179, 1, v207) == 1)
                    {
                      if (v180(&v208[v178], 1, v207) == 1)
                      {
                        sub_21C6EA794(v208, &unk_27CDF20B0, &unk_21CBA0090);
                        return 1;
                      }
                    }

                    else
                    {
                      v181 = v208;
                      sub_21C6EDBAC(v208, v205, &unk_27CDF20B0, &unk_21CBA0090);
                      if (v180(&v181[v178], 1, v207) != 1)
                      {
                        v182 = v206;
                        v183 = v208;
                        v184 = &v208[v178];
                        v185 = v204;
                        v186 = v207;
                        (*(v206 + 32))(v204, v184, v207);
                        sub_21C7D1210(&qword_27CDEAC48, MEMORY[0x277D49978]);
                        v187 = v205;
                        v188 = sub_21CB85574();
                        v189 = *(v182 + 8);
                        v189(v185, v186);
                        v189(v187, v186);
                        sub_21C6EA794(v183, &unk_27CDF20B0, &unk_21CBA0090);
                        return (v188 & 1) != 0;
                      }

                      (*(v206 + 8))(v205, v207);
                    }

                    v99 = &qword_27CDEAC40;
                    v100 = &qword_21CBA1A40;
                    v101 = v208;
                    goto LABEL_27;
                  }
                }

                else
                {
                  sub_21C6EDBAC(v163, v202, &unk_27CDEC2F0, &unk_21CBA1660);
                  if (v164(v163 + v162, 1, v143) != 1)
                  {
                    v165 = v192;
                    v166 = v196;
                    v167 = &v196[v162];
                    v168 = v195;
                    (*(v192 + 32))(v195, v167, v143);
                    sub_21C7D1210(&qword_27CDEB3B8, MEMORY[0x277D49960]);
                    v169 = v202;
                    v170 = sub_21CB85574();
                    v171 = *(v165 + 8);
                    v171(v168, v143);
                    v171(v169, v143);
                    sub_21C6EA794(v166, &unk_27CDEC2F0, &unk_21CBA1660);
                    if ((v170 & 1) == 0)
                    {
                      return 0;
                    }

                    goto LABEL_73;
                  }

                  (*(v192 + 8))(v202, v143);
                }

                v99 = &qword_27CDEB3B0;
                v100 = &unk_21CBA1A50;
                v101 = v196;
LABEL_27:
                sub_21C6EA794(v101, v99, v100);
                return 0;
              }
            }

            else
            {
              v156 = v210;
              sub_21C6EDBAC(v152, v210, &qword_27CDEAF58, &unk_21CBA0980);
              if (v155(&v152[v153], 1, v26) != 1)
              {
                v157 = &v152[v153];
                v158 = v209;
                (*(v154 + 32))(v209, v157, v26);
                sub_21C7D1210(&qword_27CDEAF68, MEMORY[0x277D49948]);
                v159 = sub_21CB85574();
                v160 = *(v154 + 8);
                v160(v158, v26);
                v160(v156, v26);
                sub_21C6EA794(v152, &qword_27CDEAF58, &unk_21CBA0980);
                if ((v159 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_66;
              }

              (*(v154 + 8))(v156, v26);
            }

            v99 = &qword_27CDEB3A8;
            v100 = &qword_21CBA1A48;
            v101 = v152;
            goto LABEL_27;
          }

          (*(v218 + 8))(v134, v132);
        }

        v99 = &qword_27CDEB3E0;
        v100 = &unk_21CBA1A70;
        v101 = v117;
        goto LABEL_27;
      }

      (*(v218 + 8))(v216, v96);
    }

    v99 = &qword_27CDEB3E0;
    v100 = &unk_21CBA1A70;
    v101 = v50;
    goto LABEL_27;
  }

  v202 = v48;
  v200 = v47;
  if (!v65)
  {
    goto LABEL_15;
  }

  return 0;
}